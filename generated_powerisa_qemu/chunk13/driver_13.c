#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 13
#define CHUNK_R27_SNAPSHOT_ADDR 0xE0014FC0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_13(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0x0000FFFFu, 0x00009E42u, 0x00000000u, 0x00000040u,
    0x00000000u, 0x00000000u, 0x4FFAB931u, 0x00000040u,
    0x00000000u, 0x00000000u, 0xBC06A406u, 0x5519B77Cu,
    0x00000000u, 0xFFFFFFFFu, 0xFFFFC1E5u, 0x91FE0000u,
    0xFFFFFFF7u, 0xFFFFFFFFu, 0x00000000u, 0x0000004Eu,
    0xFFFFFFC0u, 0xEC6C0000u, 0x5519FFFFu, 0x88F3D8D8u,
    0x00000B4Eu, 0xE0014F40u, 0xE004ECC4u, 0x00000007u,
    0xE0014740u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x00000014u, 0x08730000u,
    0x00A70000u, 0xD5AD0000u, 0xFE580000u, 0x000001E0u,
    0x7E5A61CCu, 0xB8E50000u, 0xB61D0000u, 0x00000000u,
    0x0000A700u, 0x00000000u, 0xFADA94CAu, 0xFE3E0000u,
    0x170C0000u, 0x00A70000u, 0x5AFB01E0u, 0x000000A7u,
    0x000000A7u, 0x746D0000u, 0x08730000u, 0x0000A700u,
    0xD0000008u, 0xB1530000u, 0x72A40000u, 0xE0014FC0u,
    0xE004F2F8u, 0x00000007u, 0xE0014750u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x50200003u, 0x80000001u, 0xE004F2F8u, 0x00000000u,
};

static void map_powerisa_region(void)
{
    void *ret = mmap((void *)POWERISA_MAP_BASE, POWERISA_MAP_SIZE,
                     PROT_READ | PROT_WRITE,
                     MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
    if (ret == MAP_FAILED) {
        fprintf(stderr, "mmap 0x%08X size 0x%08X failed: %s\n",
                POWERISA_MAP_BASE, POWERISA_MAP_SIZE, strerror(errno));
        exit(1);
    }
}

static void prepare_memory(void)
{
    int i;
    volatile uint32_t *mem = (volatile uint32_t *)(uintptr_t)CHUNK_R31_MEM_ADDR;
    volatile uint32_t *snap = (volatile uint32_t *)(uintptr_t)CHUNK_R27_SNAPSHOT_ADDR;

    memset((void *)(uintptr_t)POWERISA_MAP_BASE, 0, POWERISA_MAP_SIZE);
    for (i = 0; i < 32; i++) {
        mem[i] = chunk_init_mem[i];
        snap[i] = 0;
    }
    for (i = 0; i < 4; i++) {
        powerisa_actual_spr[i] = 0;
    }
}

static int compare_result(void)
{
    int i;
    int fail = 0;
    volatile uint32_t *actual_gpr =
        (volatile uint32_t *)(uintptr_t)CHUNK_R27_SNAPSHOT_ADDR;

    for (i = 0; i < 32; i++) {
        if ((uint32_t)actual_gpr[i] != chunk_expect_gpr[i]) {
            printf("chunk%d GPR r%d mismatch: actual=0x%08X expected=0x%08X\n",
                   CHUNK_ID, i, (unsigned int)actual_gpr[i],
                   (unsigned int)chunk_expect_gpr[i]);
            fail = 1;
        }
    }
    for (i = 0; i < 4; i++) {
        if ((uint32_t)powerisa_actual_spr[i] != chunk_expect_spr[i]) {
            static const char *names[4] = { "cr", "xer", "lr", "ctr" };
            printf("chunk%d SPR %s mismatch: actual=0x%08X expected=0x%08X\n",
                   CHUNK_ID, names[i], (unsigned int)powerisa_actual_spr[i],
                   (unsigned int)chunk_expect_spr[i]);
            fail = 1;
        }
    }
    return fail;
}

int main(void)
{
    int fail;

    map_powerisa_region();
    prepare_memory();
    run_chunk_13();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
