#!/usr/bin/env python3
import pathlib
import re
import shutil

ROOT = pathlib.Path(__file__).resolve().parent
POWERISA = ROOT / "ISA" / "powerisa"
OUT = ROOT / "generated_powerisa_qemu"
CHUNKS = range(3, 51)


def parse_output(chunk):
    text = (POWERISA / f"chunk{chunk}" / f"chunk{chunk}_output.txt.txt").read_text()
    sections = {}
    current = None

    for raw in text.splitlines():
        line = raw.strip()
        if not line or line == "======":
            continue
        if line.startswith("ASM_CHUNK_"):
            current = line
            sections[current] = []
            continue
        m = re.match(r"(r\d+|cr|xer|lr|ctr)=0x([0-9a-fA-F]{8})$", line)
        if m and current:
            sections[current].append(int(m.group(2), 16))

    def by_suffix(suffix):
        for name, values in sections.items():
            if name.endswith(suffix):
                return values
        raise RuntimeError(f"chunk {chunk}: missing section {suffix}")

    return {
        "init_gpr": by_suffix("BODY_ENTRY_GPRS"),
        "init_spr": by_suffix("BODY_ENTRY_SPRS"),
        "init_mem": by_suffix("BODY_ENTRY_MEM_R31"),
        "final_gpr": by_suffix("FINAL_GPRS"),
        "final_spr": by_suffix("FINAL_SPRS"),
    }


def parse_asm_body(chunk):
    text = (POWERISA / f"chunk{chunk}" / f"chunk{chunk}_ISA.txt.txt").read_text()
    asm_lines = []
    for raw in text.splitlines():
        m = re.search(r'"(.*)\\n\\t"', raw)
        if not m:
            continue
        line = m.group(1).strip()
        if line:
            asm_lines.append(line)

    start = asm_lines.index(f"chunk{chunk}_body_start:") + 1
    end = None
    for i in range(start, len(asm_lines) - 1):
        if asm_lines[i].startswith("mtlr ") and asm_lines[i + 1].startswith("addi 1, 1, 2304"):
            end = i + 2
            break
    if end is None:
        raise RuntimeError(f"chunk {chunk}: cannot find body epilogue")
    return asm_lines[start:end]


def u32(value):
    return f"0x{value & 0xffffffff:08X}u"


def asm_load(reg, value):
    value &= 0xffffffff
    if value == 0:
        return [f"    li {reg}, 0"]
    hi = (value >> 16) & 0xffff
    lo = value & 0xffff
    lines = [f"    lis {reg}, 0x{hi:04X}"]
    if lo:
        lines.append(f"    ori {reg}, {reg}, 0x{lo:04X}")
    return lines


def c_array(name, values):
    lines = [f"static const uint32_t {name}[{len(values)}] = {{"]
    for i in range(0, len(values), 4):
        lines.append("    " + ", ".join(u32(v) for v in values[i:i + 4]) + ",")
    lines.append("};")
    return lines


def emit_driver(chunk, data):
    lines = [
        "#include <errno.h>",
        "#include <stdint.h>",
        "#include <stdio.h>",
        "#include <stdlib.h>",
        "#include <string.h>",
        "#include <sys/mman.h>",
        "",
        "#define POWERISA_MAP_BASE 0xE0010000u",
        "#define POWERISA_MAP_SIZE 0x00010000u",
        f"#define CHUNK_ID {chunk}",
        f"#define CHUNK_R27_SNAPSHOT_ADDR {u32(data['init_gpr'][27])}",
        f"#define CHUNK_R31_MEM_ADDR {u32(data['init_gpr'][31])}",
        "",
        f"extern void run_chunk_{chunk}(void);",
        "",
        "volatile uint32_t powerisa_actual_spr[4];",
        "volatile uint32_t driver_saved_gpr[32];",
        "volatile uint32_t driver_saved_lr;",
        "volatile uint32_t driver_saved_cr;",
        "",
    ]
    lines.extend(c_array("chunk_init_mem", data["init_mem"]))
    lines.append("")
    lines.extend(c_array("chunk_expect_gpr", data["final_gpr"]))
    lines.append("")
    lines.extend(c_array("chunk_expect_spr", data["final_spr"]))
    lines.extend([
        "",
        "static void map_powerisa_region(void)",
        "{",
        "    void *ret = mmap((void *)POWERISA_MAP_BASE, POWERISA_MAP_SIZE,",
        "                     PROT_READ | PROT_WRITE,",
        "                     MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);",
        "    if (ret == MAP_FAILED) {",
        "        fprintf(stderr, \"mmap 0x%08X size 0x%08X failed: %s\\n\",",
        "                POWERISA_MAP_BASE, POWERISA_MAP_SIZE, strerror(errno));",
        "        exit(1);",
        "    }",
        "}",
        "",
        "static void prepare_memory(void)",
        "{",
        "    int i;",
        "    volatile uint32_t *mem = (volatile uint32_t *)(uintptr_t)CHUNK_R31_MEM_ADDR;",
        "    volatile uint32_t *snap = (volatile uint32_t *)(uintptr_t)CHUNK_R27_SNAPSHOT_ADDR;",
        "",
        "    memset((void *)(uintptr_t)POWERISA_MAP_BASE, 0, POWERISA_MAP_SIZE);",
        "    for (i = 0; i < 32; i++) {",
        "        mem[i] = chunk_init_mem[i];",
        "        snap[i] = 0;",
        "    }",
        "    for (i = 0; i < 4; i++) {",
        "        powerisa_actual_spr[i] = 0;",
        "    }",
        "}",
        "",
        "static int compare_result(void)",
        "{",
        "    int i;",
        "    int fail = 0;",
        "    volatile uint32_t *actual_gpr =",
        "        (volatile uint32_t *)(uintptr_t)CHUNK_R27_SNAPSHOT_ADDR;",
        "",
        "    for (i = 0; i < 32; i++) {",
        "        if ((uint32_t)actual_gpr[i] != chunk_expect_gpr[i]) {",
        "            printf(\"chunk%d GPR r%d mismatch: actual=0x%08X expected=0x%08X\\n\",",
        "                   CHUNK_ID, i, (unsigned int)actual_gpr[i],",
        "                   (unsigned int)chunk_expect_gpr[i]);",
        "            fail = 1;",
        "        }",
        "    }",
        "    for (i = 0; i < 4; i++) {",
        "        if ((uint32_t)powerisa_actual_spr[i] != chunk_expect_spr[i]) {",
        "            static const char *names[4] = { \"cr\", \"xer\", \"lr\", \"ctr\" };",
        "            printf(\"chunk%d SPR %s mismatch: actual=0x%08X expected=0x%08X\\n\",",
        "                   CHUNK_ID, names[i], (unsigned int)powerisa_actual_spr[i],",
        "                   (unsigned int)chunk_expect_spr[i]);",
        "            fail = 1;",
        "        }",
        "    }",
        "    return fail;",
        "}",
        "",
        "int main(void)",
        "{",
        "    int fail;",
        "",
        "    map_powerisa_region();",
        "    prepare_memory();",
        f"    run_chunk_{chunk}();",
        "    fail = compare_result();",
        "",
        "    printf(\"======\\nCHUNK_%d_RESULT: %s\\n\", CHUNK_ID, fail ? \"FAIL\" : \"PASS\");",
        "    return fail ? 1 : 0;",
        "}",
        "",
    ])
    return "\n".join(lines)


def emit_case(chunk, data, body):
    lines = [
        "    .text",
        "    .align 2",
        f"    .globl run_chunk_{chunk}",
        f"    .type run_chunk_{chunk}, @function",
        f"run_chunk_{chunk}:",
        "    lis 12, driver_saved_gpr@ha",
        "    addi 12, 12, driver_saved_gpr@l",
        "    stw 1, 4(12)",
        "    stw 2, 8(12)",
        "    stw 13, 52(12)",
        "    stw 14, 56(12)",
        "    stw 15, 60(12)",
        "    stw 16, 64(12)",
        "    stw 17, 68(12)",
        "    stw 18, 72(12)",
        "    stw 19, 76(12)",
        "    stw 20, 80(12)",
        "    stw 21, 84(12)",
        "    stw 22, 88(12)",
        "    stw 23, 92(12)",
        "    stw 24, 96(12)",
        "    stw 25, 100(12)",
        "    stw 26, 104(12)",
        "    stw 27, 108(12)",
        "    stw 28, 112(12)",
        "    stw 29, 116(12)",
        "    stw 30, 120(12)",
        "    stw 31, 124(12)",
        "    mflr 0",
        "    lis 12, driver_saved_lr@ha",
        "    addi 12, 12, driver_saved_lr@l",
        "    stw 0, 0(12)",
        "    mfcr 0",
        "    lis 12, driver_saved_cr@ha",
        "    addi 12, 12, driver_saved_cr@l",
        "    stw 0, 0(12)",
        "",
    ]
    for spr_value, op in zip(data["init_spr"], ("mtcrf 255, 12", "mtxer 12", "mtlr 12", "mtctr 12")):
        lines.extend(asm_load(12, spr_value))
        lines.append(f"    {op}")
    lines.append("")
    for reg, value in enumerate(data["init_gpr"]):
        lines.extend(asm_load(reg, value))
    lines.extend(["", f"chunk{chunk}_body_start:"])
    for body_line in body:
        lines.append(f"    {body_line}")
    lines.extend([
        "",
        "    stw 0, 0(27)",
        "    stw 1, 4(27)",
        "    stw 2, 8(27)",
        "    stw 3, 12(27)",
        "    stw 4, 16(27)",
        "    stw 5, 20(27)",
        "    stw 6, 24(27)",
        "    stw 7, 28(27)",
        "    stw 8, 32(27)",
        "    stw 9, 36(27)",
        "    stw 10, 40(27)",
        "    stw 11, 44(27)",
        "    stw 12, 48(27)",
        "    stw 13, 52(27)",
        "    stw 14, 56(27)",
        "    stw 15, 60(27)",
        "    stw 16, 64(27)",
        "    stw 17, 68(27)",
        "    stw 18, 72(27)",
        "    stw 19, 76(27)",
        "    stw 20, 80(27)",
        "    stw 21, 84(27)",
        "    stw 22, 88(27)",
        "    stw 23, 92(27)",
        "    stw 24, 96(27)",
        "    stw 25, 100(27)",
        "    stw 26, 104(27)",
        "    stw 27, 108(27)",
        "    stw 28, 112(27)",
        "    stw 29, 116(27)",
        "    stw 30, 120(27)",
        "    stw 31, 124(27)",
        "    lis 30, powerisa_actual_spr@ha",
        "    addi 30, 30, powerisa_actual_spr@l",
        "    mfcr 0",
        "    stw 0, 0(30)",
        "    mfxer 0",
        "    stw 0, 4(30)",
        "    mflr 0",
        "    stw 0, 8(30)",
        "    mfctr 0",
        "    stw 0, 12(30)",
        "",
        "    lis 12, driver_saved_lr@ha",
        "    addi 12, 12, driver_saved_lr@l",
        "    lwz 0, 0(12)",
        "    mtlr 0",
        "    lis 12, driver_saved_cr@ha",
        "    addi 12, 12, driver_saved_cr@l",
        "    lwz 0, 0(12)",
        "    mtcrf 255, 0",
        "    lis 12, driver_saved_gpr@ha",
        "    addi 12, 12, driver_saved_gpr@l",
        "    lwz 1, 4(12)",
        "    lwz 2, 8(12)",
        "    lwz 13, 52(12)",
        "    lwz 14, 56(12)",
        "    lwz 15, 60(12)",
        "    lwz 16, 64(12)",
        "    lwz 17, 68(12)",
        "    lwz 18, 72(12)",
        "    lwz 19, 76(12)",
        "    lwz 20, 80(12)",
        "    lwz 21, 84(12)",
        "    lwz 22, 88(12)",
        "    lwz 23, 92(12)",
        "    lwz 24, 96(12)",
        "    lwz 25, 100(12)",
        "    lwz 26, 104(12)",
        "    lwz 27, 108(12)",
        "    lwz 28, 112(12)",
        "    lwz 29, 116(12)",
        "    lwz 30, 120(12)",
        "    lwz 31, 124(12)",
        "    blr",
        f"    .size run_chunk_{chunk}, .-run_chunk_{chunk}",
        "    .section .note.GNU-stack,\"\",@progbits",
        "",
    ])
    return "\n".join(lines)


def main():
    if OUT.exists():
        shutil.rmtree(OUT)
    OUT.mkdir()

    runner = [
        "#!/usr/bin/env bash",
        "set -euo pipefail",
        "ROOT=$(cd \"$(dirname \"$0\")/..\" && pwd)",
        "fail=0",
        "for n in $(seq 3 50); do",
        "  dir=\"$ROOT/generated_powerisa_qemu/chunk$n\"",
        "  elf=\"$dir/ppc_chunk_$n.elf\"",
        "  powerpc-linux-gnu-gcc -O0 -static -fno-pic -no-pie -o \"$elf\" \"$dir/driver_$n.c\" \"$dir/case_$n.S\"",
        "  if qemu-ppc \"$elf\"; then",
        "    :",
        "  else",
        "    fail=1",
        "  fi",
        "done",
        "exit $fail",
        "",
    ]

    for chunk in CHUNKS:
        data = parse_output(chunk)
        body = parse_asm_body(chunk)
        chunk_dir = OUT / f"chunk{chunk}"
        chunk_dir.mkdir()
        (chunk_dir / f"driver_{chunk}.c").write_text(emit_driver(chunk, data))
        (chunk_dir / f"case_{chunk}.S").write_text(emit_case(chunk, data, body))

    run_all = OUT / "run_all.sh"
    run_all.write_text("\n".join(runner))
    run_all.chmod(0o755)


if __name__ == "__main__":
    main()
