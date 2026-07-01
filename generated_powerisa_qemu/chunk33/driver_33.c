#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 33
#define CHUNK_R27_SNAPSHOT_ADDR 0xE00159C0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_33(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0xB4000000u, 0x000000DAu, 0x000607C8u, 0x53F90000u,
    0x7AA90000u, 0x1F910000u, 0x0000001Cu, 0x0000A8FEu,
    0x1B7C0000u, 0x00000000u, 0x000000DAu, 0x5ED90000u,
    0x952C0000u, 0xE90C0000u, 0xDAB25953u, 0xD0580C31u,
    0x0109EA00u, 0xFFFFDAB2u, 0x00000000u, 0x00000000u,
    0xFFFFDAB2u, 0xA0B00002u, 0x00000000u, 0x0000B2DAu,
    0xE0015940u, 0xE00568C0u, 0x00000007u, 0xE0014880u,
    0xE001D900u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x7640C248u, 0xBDB40000u,
    0x46FF0000u, 0x8B0E0000u, 0xF6800000u, 0x00000000u,
    0x00028660u, 0x00001104u, 0x424C0000u, 0x7EE11FD6u,
    0x00001104u, 0xAD030000u, 0x00001104u, 0x2D720000u,
    0xCCCC0000u, 0xFB97EAD0u, 0x16D29249u, 0xA3870002u,
    0x3F010000u, 0x012B0000u, 0x7640E083u, 0x00001104u,
    0x3F010104u, 0x00021F7Cu, 0x00000000u, 0xE00159C0u,
    0xE0056EF4u, 0x00000007u, 0xE0014890u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x50200003u, 0xA0000001u, 0xE0056EF4u, 0x00000000u,
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
    run_chunk_33();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
