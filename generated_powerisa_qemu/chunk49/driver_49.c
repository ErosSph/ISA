#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 49
#define CHUNK_R27_SNAPSHOT_ADDR 0xE00161C0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_49(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0x89D30000u, 0x00000000u, 0xFFFFFFFFu, 0x00000000u,
    0x343B0000u, 0x000000CBu, 0x5079BE94u, 0x00000000u,
    0x00000000u, 0xCEE50000u, 0x00000000u, 0x000000CBu,
    0x1F790000u, 0x00000000u, 0x00800000u, 0x9F3BC9BEu,
    0x00000000u, 0xE00160C0u, 0xE005C5CCu, 0x00000007u,
    0xE0014970u, 0xE001D900u, 0xE00160C0u, 0xE005C5CCu,
    0x00000007u, 0xE0014970u, 0xE001D900u, 0xE0014940u,
    0xE001D900u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x8C860000u, 0xFFFFFF99u,
    0x1DA20000u, 0xE6F7FFFFu, 0x68270000u, 0xFFFFF634u,
    0x0000AD00u, 0x00000000u, 0x000000BBu, 0x000000ADu,
    0x00000000u, 0x3E2E0000u, 0x00C60000u, 0x7BEA0000u,
    0xB57B0000u, 0xB57B0001u, 0xBAEE0000u, 0x00000000u,
    0xBE650000u, 0xFFFFBB67u, 0x2ABA0000u, 0x0D420000u,
    0xA1740000u, 0xFFFFBB67u, 0xBE250000u, 0xE00161C0u,
    0xE005D234u, 0x00000007u, 0xE0014990u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x90200003u, 0x80000001u, 0xE005D234u, 0x00000000u,
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
    run_chunk_49();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
