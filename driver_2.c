#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <errno.h>
#include <string.h>

extern void enter_case_2(void);

#define CASE2_R31_ADDR          0xE0018CC0u
#define CASE2_GPR_SNAPSHOT_ADDR 0xE0011580u

#define CASE2_MAP1_BASE         0xE0011000u
#define CASE2_MAP1_SIZE         0x00001000u

#define CASE2_MAP2_BASE         0xE0018000u
#define CASE2_MAP2_SIZE         0x00002000u

#define CASE2_EXPECT_CR         0x50200003u
#define CASE2_EXPECT_XER        0x80000001u
#define CASE2_EXPECT_LR         0xE004AEB0u
#define CASE2_EXPECT_CTR        0x00000000u

volatile uint32_t qemu_final_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const char *gpr_name[32] = {
    "r0=",  "r1=",  "r2=",  "r3=",
    "r4=",  "r5=",  "r6=",  "r7=",
    "r8=",  "r9=",  "r10=", "r11=",
    "r12=", "r13=", "r14=", "r15=",
    "r16=", "r17=", "r18=", "r19=",
    "r20=", "r21=", "r22=", "r23=",
    "r24=", "r25=", "r26=", "r27=",
    "r28=", "r29=", "r30=", "r31="
};

static const char *spr_name[4] = {
    "cr=", "xer=", "lr=", "ctr="
};

static const uint32_t case2_init_mem_r31[32] = {
    0x00000001u, 0xE004CCF8u, 0x001C2000u, 0x00000040u,
    0x0000000Du, 0xE9608000u, 0x0000000Au, 0x00000000u,
    0x00000000u, 0xE00110BCu, 0x00000000u, 0x00000000u,
    0x00000000u, 0x00000000u, 0x00000000u, 0x0000000Au,
    0x00000000u, 0xE00110BCu, 0x00000000u, 0x00000000u,
    0x00000000u, 0x00000000u, 0x00000000u, 0x00000001u,
    0x00000000u, 0xE0011500u, 0xE004A890u, 0x00000007u,
    0x00000000u, 0xE0018CC0u, 0xC3A02540u, 0x0000D582u
};

static const uint32_t case2_expect_gpr[32] = {
    0x00000000u, 0xE0019580u, 0xF29A0000u, 0xFB610000u,
    0xB5630000u, 0x0000419Bu, 0xE3710000u, 0x75200000u,
    0x00013E03u, 0x009F01D2u, 0x00000000u, 0xFFFFD201u,
    0x8FCB0000u, 0xFFFEED63u, 0xFFFF5B97u, 0xFFFFBF7Fu,
    0x98E934CEu, 0x00000427u, 0x00000001u, 0x65820000u,
    0x00000000u, 0x20080000u, 0x1C440000u, 0x0AFA1E7Bu,
    0x00001D12u, 0x00000924u, 0x00000000u, 0xE0011580u,
    0xE004AEB0u, 0x00000007u, 0xE00114C0u, 0xE0018CC0u
};

static const uint32_t case2_expect_spr[4] = {
    CASE2_EXPECT_CR,
    CASE2_EXPECT_XER,
    CASE2_EXPECT_LR,
    CASE2_EXPECT_CTR
};

static void map_fixed_region(uint32_t base, uint32_t size)
{
    void *ret;

    ret = mmap((void *)base,
               size,
               PROT_READ | PROT_WRITE,
               MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED,
               -1,
               0);

    if (ret == MAP_FAILED) {
        fprintf(stderr,
                "mmap 0x%08x size 0x%08x failed: %s\n",
                base,
                size,
                strerror(errno));
        exit(1);
    }

    if ((uintptr_t)ret != (uintptr_t)base) {
        fprintf(stderr,
                "mmap returned unexpected address %p, expected 0x%08x\n",
                ret,
                base);
        exit(1);
    }
}

static void init_case2_memory(void)
{
    int i;
    volatile uint32_t *p;
    volatile uint32_t *snapshot;

    p = (volatile uint32_t *)CASE2_R31_ADDR;

    for (i = 0; i < 32; i++) {
        p[i] = case2_init_mem_r31[i];
    }

    snapshot = (volatile uint32_t *)CASE2_GPR_SNAPSHOT_ADDR;

    for (i = 0; i < 32; i++) {
        snapshot[i] = 0;
    }

    for (i = 0; i < 4; i++) {
        qemu_final_spr[i] = 0;
    }
}

static void dump_gprs(const char *title, volatile uint32_t *snap)
{
    int i;

    printf("======\n");
    printf("%s\n\n", title);

    for (i = 0; i < 32; i++) {
        printf("%s0x%08X\n\n", gpr_name[i], (unsigned int)snap[i]);
    }
}

static void dump_sprs(const char *title, volatile uint32_t *snap)
{
    int i;

    printf("======\n");
    printf("%s\n\n", title);

    for (i = 0; i < 4; i++) {
        printf("%s0x%08X\n\n", spr_name[i], (unsigned int)snap[i]);
    }
}

static int compare_gprs(volatile uint32_t *actual)
{
    int i;
    int fail;

    fail = 0;

    for (i = 0; i < 32; i++) {
        if ((uint32_t)actual[i] != case2_expect_gpr[i]) {
            printf("GPR mismatch %s actual=0x%08X expected=0x%08X\n",
                   gpr_name[i],
                   (unsigned int)actual[i],
                   (unsigned int)case2_expect_gpr[i]);
            fail = 1;
        }
    }

    return fail;
}

static int compare_sprs(volatile uint32_t *actual)
{
    int i;
    int fail;

    fail = 0;

    for (i = 0; i < 4; i++) {
        if ((uint32_t)actual[i] != case2_expect_spr[i]) {
            printf("SPR mismatch %s actual=0x%08X expected=0x%08X\n",
                   spr_name[i],
                   (unsigned int)actual[i],
                   (unsigned int)case2_expect_spr[i]);
            fail = 1;
        }
    }

    return fail;
}

int main(void)
{
    volatile uint32_t *final_gpr;
    int fail;

    map_fixed_region(CASE2_MAP1_BASE, CASE2_MAP1_SIZE);
    map_fixed_region(CASE2_MAP2_BASE, CASE2_MAP2_SIZE);

    init_case2_memory();

    enter_case_2();

    final_gpr = (volatile uint32_t *)CASE2_GPR_SNAPSHOT_ADDR;

    dump_gprs("QEMU_CHUNK_2/3_FINAL_GPRS", final_gpr);
    dump_sprs("QEMU_CHUNK_2/3_FINAL_SPRS", qemu_final_spr);

    fail = 0;
    fail |= compare_gprs(final_gpr);
    fail |= compare_sprs(qemu_final_spr);

    printf("======\n");
    if (fail) {
        printf("CASE_2_RESULT: FAIL\n");
        return 1;
    }

    printf("CASE_2_RESULT: PASS\n");
    return 0;
}
