#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 21
#define CHUNK_R27_SNAPSHOT_ADDR 0xE00153C0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_21(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0x00FF0000u, 0x15050000u, 0xC14B0000u, 0x0000FFFFu,
    0x00000000u, 0x00000000u, 0xF8440000u, 0xB0230000u,
    0x00000000u, 0x01820000u, 0x7FA60000u, 0x7FA5CE67u,
    0x00003F36u, 0x31BB0000u, 0x2F7857ECu, 0xD0879FE9u,
    0xA1420000u, 0x4B9B0000u, 0xFFFF0000u, 0xFFFFFD81u,
    0x805A0000u, 0xBEE60000u, 0xE0015340u, 0xE0051E64u,
    0x00000007u, 0xE00147C0u, 0xE001D900u, 0xE001D900u,
    0xE0014740u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x000000FFu, 0x7499B749u,
    0x7F6DD664u, 0xEB32A061u, 0xFF0000FFu, 0x00000000u,
    0x82980000u, 0x79CB0000u, 0x23730000u, 0x000029B6u,
    0x79B2FFFFu, 0x04000000u, 0x8E520000u, 0xEB323FB6u,
    0x00000000u, 0xFFFF0000u, 0x00000079u, 0xF99A0000u,
    0xC1960000u, 0x34FC0000u, 0x00000000u, 0xFFFF78DEu,
    0x14CD9799u, 0xA2970000u, 0x00000000u, 0xE00153C0u,
    0xE0052498u, 0x00000007u, 0xE00147D0u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x30200003u, 0xA0000001u, 0xE0052498u, 0x00000000u,
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
    run_chunk_21();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
