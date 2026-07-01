#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 29
#define CHUNK_R27_SNAPSHOT_ADDR 0xE00157C0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_29(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0xDB6D0001u, 0xFFFFFFFEu, 0x00000DA6u, 0x00005EA6u,
    0xC80AFFFFu, 0x5A5B260Du, 0x00000DA6u, 0x17A9EDB6u,
    0xA5A58000u, 0x002083B0u, 0xE0015740u, 0xE0054FFCu,
    0x00000007u, 0xE0014840u, 0xE001D900u, 0xFFFFEF3Bu,
    0x00B70000u, 0xE00156C0u, 0xE00549D0u, 0x00000007u,
    0xE0014830u, 0xE001D900u, 0xE00549D0u, 0x00000007u,
    0xE0014830u, 0xE001D900u, 0xE0014810u, 0xE001D900u,
    0xE00147E0u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x00000000u, 0x01EACE2Cu,
    0x00000000u, 0xFE150000u, 0xC9226000u, 0x00000000u,
    0x00000000u, 0xFE155633u, 0xC0404052u, 0x00000000u,
    0xC9222B7Fu, 0xFE000000u, 0xE457E801u, 0x00000000u,
    0x13AC0000u, 0x1A42E800u, 0x00000000u, 0x41740000u,
    0x36811F01u, 0xC9222B7Fu, 0xB55D0000u, 0xC9222B7Eu,
    0x4B5FFE00u, 0x00000000u, 0x007A0000u, 0xE00157C0u,
    0xE0055624u, 0x00000007u, 0xE0014850u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x90200003u, 0xA0000001u, 0xE0055624u, 0x00000000u,
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
    run_chunk_29();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
