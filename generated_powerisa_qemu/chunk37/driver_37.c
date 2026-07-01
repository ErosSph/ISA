#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 37
#define CHUNK_R27_SNAPSHOT_ADDR 0xE0015BC0u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_37(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0x927AD60Au, 0x0000FFFFu, 0xCB1F0000u, 0x05BA67B8u,
    0x000000AAu, 0x000000AAu, 0x18150000u, 0x00000FFFu,
    0x41BF0000u, 0xB2640000u, 0xBBFC0000u, 0x3DFA0000u,
    0xE0015B40u, 0xE0058190u, 0x00000007u, 0xE00148C0u,
    0xE001D900u, 0xE0058190u, 0x00000007u, 0xE00148C0u,
    0xE001D900u, 0x2400AAAEu, 0x957A0000u, 0xE2FF0000u,
    0x1A76B6DBu, 0xE0015AC0u, 0xE0057B5Cu, 0x00000007u,
    0xE00148B0u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0x00004F31u, 0x00000007u,
    0x9EB2B2BAu, 0x0000007Eu, 0xA8930000u, 0x008060E9u,
    0x0000B39Eu, 0x0035FCA0u, 0xE12A293Eu, 0x00007835u,
    0xFFFFFFF9u, 0x2627FCA0u, 0xFFFFFFFFu, 0x00000080u,
    0x5CB00000u, 0x00003514u, 0x00000078u, 0x00000000u,
    0x35140000u, 0x9DCA0000u, 0xFFFFC6E8u, 0x60E9EFFFu,
    0x78354A81u, 0x0034394Bu, 0x35140000u, 0xE0015BC0u,
    0xE00587C4u, 0x00000007u, 0xE00148D0u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x90200003u, 0xA0000001u, 0xE00587C4u, 0x00000000u,
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
    run_chunk_37();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
