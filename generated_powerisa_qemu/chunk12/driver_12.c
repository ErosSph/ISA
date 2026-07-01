#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define POWERISA_MAP_BASE 0xE0010000u
#define POWERISA_MAP_SIZE 0x00010000u
#define CHUNK_ID 12
#define CHUNK_R27_SNAPSHOT_ADDR 0xE0014F40u
#define CHUNK_R31_MEM_ADDR 0xE001D900u

extern void run_chunk_12(void);

volatile uint32_t powerisa_actual_spr[4];
volatile uint32_t driver_saved_gpr[32];
volatile uint32_t driver_saved_lr;
volatile uint32_t driver_saved_cr;

static const uint32_t chunk_init_mem[32] = {
    0x0B6D0000u, 0xB09F0000u, 0xB6DBFFFFu, 0x14F343D0u,
    0xEB0CBC30u, 0x01960879u, 0x095CB6DBu, 0xE0014EC0u,
    0xE004E690u, 0x00000007u, 0xE0014730u, 0xE001D900u,
    0xB8C80000u, 0xC3CFA304u, 0x0D6B2AA1u, 0xB0A10000u,
    0x60016506u, 0xFFFFFFB0u, 0xE0014E40u, 0xE004E05Cu,
    0x00000007u, 0xE0014720u, 0xE001D900u, 0xE001D900u,
    0xE001D900u, 0x00000007u, 0xE00146C0u, 0xE001D900u,
    0x00000000u, 0xE001D900u, 0x30670202u, 0x00460080u,
};

static const uint32_t chunk_expect_gpr[32] = {
    0x00000000u, 0xE001E1C0u, 0xBFEEFFFFu, 0x00009E42u,
    0x80A80000u, 0xAD70ED43u, 0x00000000u, 0xE7D90B4Eu,
    0x2BF90000u, 0xFFFF85A7u, 0x00400020u, 0x5519B77Du,
    0x0000BFEEu, 0xBFEEFFFFu, 0xBFEEFFFFu, 0xA41D0000u,
    0x0000C41Au, 0x0100A785u, 0xFFFF85A7u, 0xDC5B0000u,
    0xBFEEFFFFu, 0x03B00000u, 0x0000A785u, 0xF5390000u,
    0x5519FFFFu, 0x00000B4Du, 0x0000434Fu, 0xE0014F40u,
    0xE004ECC4u, 0x00000007u, 0xE0014740u, 0xE001D900u,
};

static const uint32_t chunk_expect_spr[4] = {
    0x90200003u, 0xA0000001u, 0xE004ECC4u, 0x00000000u,
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
    run_chunk_12();
    fail = compare_result();

    printf("======\nCHUNK_%d_RESULT: %s\n", CHUNK_ID, fail ? "FAIL" : "PASS");
    return fail ? 1 : 0;
}
