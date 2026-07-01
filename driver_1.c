#include <stdio.h>
#include <stdint.h>

uint32_t powerisa_reg_snapshot[32];
uint32_t powerisa_spr_snapshot[4];

/*
 * 给 r31 访存用，避免访问 0xE001xxxx 这种裸机地址。
 * QEMU 里会把 logical bare-metal r31 映射到这个 work_mem。
 */
uint8_t powerisa_work_mem[4096] __attribute__((aligned(32)));

extern void run_case(uint32_t *gpr_snapshot,
                     uint32_t *spr_snapshot,
                     uint8_t *work_mem);

int main(void)
{
    int i;

    /*
     * ASM_CHUNK_1/3_BODY_ENTRY_GPRS
     * 这组值必须来自真实 CPU 的 BODY_ENTRY_GPRS 输出。
     */
    static const uint32_t init_gpr[32] = {
        0x00000000, /* r0  */
        0xE001D8C0, /* r1  */
        0xFFFFA0F0, /* r2  */
        0xE004CCF8, /* r3  */
        0x001C2000, /* r4  */
        0x00000040, /* r5  */
        0x0000000D, /* r6  */
        0xE9608000, /* r7  */
        0x0000000A, /* r8  */
        0x00000000, /* r9  */
        0xE9608005, /* r10 */
        0xE00110BC, /* r11 */
        0x00000000, /* r12 */
        0xE00190D8, /* r13 */
        0x00000000, /* r14 */
        0x00000000, /* r15 */
        0x00000000, /* r16 */
        0x00000000, /* r17 */
        0x00000000, /* r18 */
        0x00000000, /* r19 */
        0x00000000, /* r20 */
        0x00000000, /* r21 */
        0x00000000, /* r22 */
        0x00000000, /* r23 */
        0x00000000, /* r24 */
        0x00000000, /* r25 */
        0x00000000, /* r26 */
        0xE00149C0, /* r27 */
        0xE004A890, /* r28 */
        0x00000007, /* r29 */
        0x00000000, /* r30 */
        0xE001D900  /* r31 */
    };

    /*
     * ASM_CHUNK_1/3_BODY_ENTRY_SPRS
     * 0: CR, 1: XER, 2: LR, 3: CTR
     */
    static const uint32_t init_spr[4] = {
        0x40200002, /* CR  */
        0x00000001, /* XER */
        0xE004A890, /* LR  */
        0x00000000  /* CTR */
    };

    /*
     * ASM_CHUNK_1/3_BODY_ENTRY_MEM_R31
     *
     * 重要：
     * 这里必须替换成真实 CPU 打印出来的 BODY_ENTRY_MEM_R31。
     *
     * 含义：
     *   init_mem_r31[0]  = memory[r31 + 0]
     *   init_mem_r31[1]  = memory[r31 + 4]
     *   ...
     *   init_mem_r31[31] = memory[r31 + 124]
     */
    static const uint32_t init_mem_r31[32] = {
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x00000000, 0x00000000
    };

    for (i = 0; i < 32; i++) {
        powerisa_reg_snapshot[i] = init_gpr[i];
    }

    for (i = 0; i < 4; i++) {
        powerisa_spr_snapshot[i] = init_spr[i];
    }

    for (i = 0; i < 4096; i++) {
        powerisa_work_mem[i] = 0;
    }

    /*
     * 把真实 CPU 的 r31 附近初始内存复制到 QEMU work_mem。
     * QEMU 里 r31 会指向 powerisa_work_mem。
     */
    for (i = 0; i < 32; i++) {
        ((uint32_t *)powerisa_work_mem)[i] = init_mem_r31[i];
    }

    run_case(powerisa_reg_snapshot, powerisa_spr_snapshot, powerisa_work_mem);

    printf("======\nFINAL_GPRS\n");
    for (i = 0; i < 32; i++) {
        printf("r%-2d = 0x%08x\n", i, powerisa_reg_snapshot[i]);
    }

    printf("======\nFINAL_SPRS\n");
    printf("cr  = 0x%08x\n", powerisa_spr_snapshot[0]);
    printf("xer = 0x%08x\n", powerisa_spr_snapshot[1]);
    printf("lr  = 0x%08x\n", powerisa_spr_snapshot[2]);
    printf("ctr = 0x%08x\n", powerisa_spr_snapshot[3]);

    return 0;
}
