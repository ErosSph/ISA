#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 8
#define CHUNK_R27_SNAPSHOT_ADDR 0xE0014D40u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_8(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0xFFFE5D50u, 0x8A190000u, 0x0000002Au, 0xFFFFD82Bu,
    0x0C386DB6u, 0x0000000Bu, 0x00000000u, 0x00000000u,
    0x0000002Bu, 0xFFFEC366u, 0x00000000u, 0x00000070u,
    0x00000BCEu, 0x1B4D7000u, 0x00000000u, 0xD163BD0Fu,
    0x0000CE0Bu, 0xE0014C40u, 0xE004C78Cu, 0x00000007u,
    0xE00146E0u, 0xE001D900u, 0x00000007u, 0xE00146D0u,
    0xE001D900u, 0x00000007u, 0xE00146C0u, 0xE001D900u,
    0x00000000u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x6E270001u, 0x00002638u,
    0x7F36FFFFu, 0x0000ED5Eu, 0x084E0001u, 0x71270000u,
    0x8CFE804Au, 0x00000000u, 0xD8457113u, 0x0000D9C7u,
    0xD8457C00u, 0x56710000u, 0x92D90000u, 0xED5E0000u,
    0x89497C00u, 0x00000000u, 0x2FF20000u, 0xE1720000u,
    0x00006724u, 0xFFFFED5Eu, 0x5B200000u, 0x87850000u,
    0x0000005Eu, 0xB1DBD45Eu, 0x00006C80u, 0xE0014D40u,
    0xE004D3F4u, 0x00000007u, 0xE0014700u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x50200003u, 0xA0000001u, 0xE004D3F4u, 0x00000000u,
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
    run_chunk_8();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
