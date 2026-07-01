#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 23
#define CHUNK_R27_SNAPSHOT_ADDR 0xE00154C0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_23(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0xFFFF0000u, 0x722E0000u, 0x01677800u, 0xFFFF0000u,
    0x64A00000u, 0x00008A00u, 0xFFFFC2EEu, 0x3FEF0000u,
    0x0000A68Au, 0x192E0000u, 0xE0015440u, 0xE0052ACCu,
    0x00000007u, 0xE00147E0u, 0xE001D900u, 0xD6520000u,
    0x0C19EFC4u, 0x01677800u, 0x79C0E98Bu, 0x64A00000u,
    0x00008A00u, 0x26B00000u, 0x3FEF0000u, 0x0000A68Au,
    0x30A6F5A6u, 0xE0015440u, 0xE0052ACCu, 0x00000007u,
    0xE00147E0u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x00000000u, 0x30F64F87u,
    0xFFB00000u, 0xFFFFB129u, 0x00000000u, 0x76470000u,
    0xFFFB0000u, 0x00007CF6u, 0x640E0000u, 0x6BFB0000u,
    0x0000FFFEu, 0x7B000010u, 0xFC27FFFFu, 0x00000000u,
    0x1FE000FFu, 0x30F60000u, 0x0000133Eu, 0xFFFFFFFFu,
    0x87D40000u, 0xFFFFFFFFu, 0x00500000u, 0xCF0AFFFEu,
    0xFFFFF15Eu, 0x9E600000u, 0x03D80000u, 0xE00154C0u,
    0xE0053100u, 0x00000007u, 0xE00147F0u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x90200003u, 0x80000001u, 0xE0053100u, 0x00000000u,
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
    run_chunk_23();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
