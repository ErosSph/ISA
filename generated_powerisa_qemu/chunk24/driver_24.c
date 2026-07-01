#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 24
#define CHUNK_R27_SNAPSHOT_ADDR 0xE0015540u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_24(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0x003E0000u, 0x00000070u, 0x162E0000u, 0x0000FFFFu,
    0x013FFFFFu, 0xFEC005CEu, 0x00000070u, 0xAE190000u,
    0xFFFF994Fu, 0x0000650Du, 0xE00154C0u, 0xE0053100u,
    0x00000007u, 0xE00147F0u, 0xE001D900u, 0xD6520000u,
    0x0C19EFC4u, 0x01677800u, 0x79C0E98Bu, 0x64A00000u,
    0x00008A00u, 0x26B00000u, 0x3FEF0000u, 0x0000A68Au,
    0x30A6F5A6u, 0xE0015440u, 0xE0052ACCu, 0x00000007u,
    0xE00147E0u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x00000000u, 0xBB4A0000u,
    0x34BB22AEu, 0x00000000u, 0x99D50000u, 0x4080006Bu,
    0x1FE2D2F5u, 0x1C140000u, 0x00000000u, 0x00000260u,
    0x00000470u, 0x000004F4u, 0x0000D2F5u, 0xFFFFFFFFu,
    0x00000000u, 0xD6910000u, 0xBA3D0000u, 0xFE880000u,
    0x00000001u, 0x3B4B0000u, 0x000004F4u, 0xFAB30000u,
    0x00000000u, 0x00001479u, 0x00000000u, 0xE0015540u,
    0xE0053734u, 0x00000007u, 0xE0014800u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x50200003u, 0x80000001u, 0xE0053734u, 0x00000000u,
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
    run_chunk_24();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
