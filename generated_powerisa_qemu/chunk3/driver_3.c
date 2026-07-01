#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 3
#define CHUNK_R27_SNAPSHOT_ADDR 0xE0014AC0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_3(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0x01710000u, 0x75200000u, 0x00013E03u, 0x009F01D2u,
    0x00000000u, 0xFFFFD201u, 0x61310000u, 0xFFFEED63u,
    0xFFFF5B97u, 0xFFFFBF7Fu, 0x98E934CEu, 0xA9F00000u,
    0x00000001u, 0x65820000u, 0x00000000u, 0x20080000u,
    0x1C440000u, 0x0AFA1E7Bu, 0x00001D12u, 0x00000924u,
    0x00000000u, 0xE0014A40u, 0xE004AEA8u, 0x00000007u,
    0xE00146A0u, 0xE001D900u, 0xE004A888u, 0x00000007u,
    0x00000000u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x2B31C29Bu, 0x0EFFA4A7u,
    0x00000000u, 0x32380000u, 0xFFFFFC40u, 0x00000000u,
    0x3CC90000u, 0x00000014u, 0x50E30000u, 0xD5B6A13Fu,
    0x000003D4u, 0x00000000u, 0x0F2C0000u, 0x000003C9u,
    0xF45B0000u, 0xFFFFC000u, 0xD4CE0000u, 0x00000000u,
    0x536C0000u, 0x00000000u, 0x00000024u, 0x00000000u,
    0xEF22B6DCu, 0xA9170000u, 0xEF227942u, 0xE0014AC0u,
    0xE004B4F0u, 0x00000007u, 0xE00146B0u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x30200003u, 0xA0000001u, 0xE004B4F0u, 0x00000000u,
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
    run_chunk_3();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
