#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 45
#define CHUNK_R27_SNAPSHOT_ADDR 0xE0015FC0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_45(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0x00001376u, 0xFFFFFFFFu, 0x9EC90000u, 0x14EB0000u,
    0x14EB0000u, 0xEE570000u, 0xFFFFFFFFu, 0xE15C0000u,
    0xEE67C000u, 0x17FB0000u, 0x63180000u, 0xDD680000u,
    0x38010000u, 0xFFFFFFFFu, 0x50680000u, 0x3801E1CEu,
    0x000002DDu, 0x00000000u, 0xFFFFFE80u, 0x226E0000u,
    0x00000000u, 0xEB0E0000u, 0xE0015F40u, 0xE005B330u,
    0x00000007u, 0xE0014940u, 0xE001D900u, 0xE0014940u,
    0xE001D900u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0xDB9F0000u, 0x29587FFFu,
    0xE48CE1CEu, 0xE8017CD3u, 0xA07E0000u, 0x05E81249u,
    0xD3040000u, 0xAD7FFFFFu, 0x007B0000u, 0x90000000u,
    0xEA3C0000u, 0xFFFFE1CEu, 0xE48CE1CEu, 0x05319806u,
    0xCF900000u, 0xFFFF106Cu, 0xAF200800u, 0x0000038Cu,
    0xFFFFF482u, 0x17FA9BE4u, 0xFFFFE1CEu, 0x00000000u,
    0x00000000u, 0x10403D21u, 0x00000000u, 0xE0015FC0u,
    0xE005B964u, 0x00000007u, 0xE0014950u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x90200003u, 0x80000001u, 0xE005B964u, 0x00000000u,
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
    run_chunk_45();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
