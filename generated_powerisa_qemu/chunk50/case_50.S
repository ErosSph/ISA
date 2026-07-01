    .text
    .align 2
    .globl run_chunk_50
    .type run_chunk_50, @function
run_chunk_50:
    lis 12, driver_saved_gpr@ha
    addi 12, 12, driver_saved_gpr@l
    stw 1, 4(12)
    stw 2, 8(12)
    stw 13, 52(12)
    stw 14, 56(12)
    stw 15, 60(12)
    stw 16, 64(12)
    stw 17, 68(12)
    stw 18, 72(12)
    stw 19, 76(12)
    stw 20, 80(12)
    stw 21, 84(12)
    stw 22, 88(12)
    stw 23, 92(12)
    stw 24, 96(12)
    stw 25, 100(12)
    stw 26, 104(12)
    stw 27, 108(12)
    stw 28, 112(12)
    stw 29, 116(12)
    stw 30, 120(12)
    stw 31, 124(12)
    mflr 0
    lis 12, driver_saved_lr@ha
    addi 12, 12, driver_saved_lr@l
    stw 0, 0(12)
    mfcr 0
    lis 12, driver_saved_cr@ha
    addi 12, 12, driver_saved_cr@l
    stw 0, 0(12)

    lis 12, 0x5020
    ori 12, 12, 0x0003
    mtcrf 255, 12
    lis 12, 0x8000
    ori 12, 12, 0x0001
    mtxer 12
    lis 12, 0xE005
    ori 12, 12, 0xD868
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x8C86
    lis 3, 0xE001
    ori 3, 3, 0xE158
    li 4, 0
    lis 5, 0x0000
    ori 5, 5, 0x0040
    lis 6, 0x0000
    ori 6, 6, 0x000D
    lis 7, 0xE960
    ori 7, 7, 0x8000
    lis 8, 0x0000
    ori 8, 8, 0x000A
    li 9, 0
    lis 10, 0xE960
    ori 10, 10, 0x8005
    lis 11, 0x0000
    ori 11, 11, 0x00AD
    li 12, 0
    lis 13, 0x3E2E
    lis 14, 0x00C6
    lis 15, 0x7BEA
    lis 16, 0xB57B
    lis 17, 0xB57B
    ori 17, 17, 0x0001
    lis 18, 0xBAEE
    li 19, 0
    lis 20, 0xBE65
    lis 21, 0xFFFF
    ori 21, 21, 0xBB67
    lis 22, 0x2ABA
    lis 23, 0x0D42
    lis 24, 0xA174
    lis 25, 0xFFFF
    ori 25, 25, 0xBB67
    lis 26, 0xBE25
    lis 27, 0xE001
    ori 27, 27, 0x6240
    lis 28, 0xE005
    ori 28, 28, 0xD868
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x49A0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk50_body_start:
    cmpi cr0, 0, 29, 0
    addis 6, 0, 1054
    addis 2, 0, 21196
    stwx 10, 31, 0
    sthu 6, 0(31)
    srawi. 2, 12, 31
    lwzu 13, 0(31)
    lwzux 24, 31, 0
    stbx 17, 31, 0
    addeo. 7, 15, 18
    lwzux 4, 31, 0
    addis 26, 0, -23693
    addis 26, 0, 23542
    rlwinm. 8, 3, 17, 11, 15
    bl 1f
    stw 16, 0(31)
    addis 16, 0, 5840
    rlwinm. 16, 17, 0, 12, 8
    lbzx 3, 31, 0
    1:
    addis 9, 0, 22950
    lwzx 2, 31, 0
    sthx 23, 31, 0
    srawi. 17, 9, 7
    lhzux 6, 31, 0
    addis 6, 0, -5874
    stb 18, 0(31)
    stmw 10, 0(31)
    addis 24, 0, 12763
    lhax 18, 31, 0
    lhau 12, 0(31)
    stb 12, 0(31)
    addis 19, 0, 24731
    stwu 11, 0(31)
    mulli 13, 6, -19349
    lhzu 19, 0(31)
    rlwinm 23, 2, 7, 27, 5
    subfco. 14, 16, 13
    addis 13, 0, 14727
    stbx 9, 31, 0
    sthu 14, 0(31)
    addis 7, 0, -12080
    addis 21, 0, 8813
    ori 18, 9, 20143
    stbx 20, 31, 0
    stwux 4, 31, 0
    subf 22, 12, 3
    addis 12, 0, 20637
    stmw 22, 0(31)
    cmpli cr0, 0, 4, 14305
    addis 16, 0, 13262
    subfzeo. 2, 20
    addis 4, 0, -12296
    lhax 18, 31, 0
    lha 3, 0(31)
    srawi 24, 12, 24
    addis 21, 0, 11273
    neg 25, 12
    cmpli cr0, 0, 23, 30435
    mulli 7, 15, 7476
    mulhw 19, 18, 13
    stwux 12, 31, 0
    addis 11, 0, -30307
    stwu 5, 0(31)
    addis 19, 0, -31314
    addis 12, 0, 14064
    lhz 20, 0(31)
    stb 22, 0(31)
    lbzu 14, 0(31)
    addis 14, 0, -11536
    b 1f
    lbzux 13, 31, 0
    addis 6, 0, 25391
    1:
    addis 19, 0, -13606
    addic 19, 22, 19231
    stwbrx 2, 31, 0
    sthu 8, 0(31)
    sthu 17, 0(31)
    stwu 15, 0(31)
    addi 13, 9, -24288
    lbzu 23, 0(31)
    stwbrx 21, 31, 0
    divw 7, 8, 29
    stwbrx 15, 31, 0
    lwzux 21, 31, 0
    stmw 18, 0(31)
    addic 9, 2, -21577
    lhaux 16, 31, 0
    lhbrx 22, 31, 0
    rlwimi. 3, 8, 5, 4, 17
    addis 5, 0, -764
    add 24, 6, 24
    stbu 21, 0(31)
    xori 12, 17, 18227
    addo. 12, 11, 8
    or. 13, 25, 17
    subfeo. 10, 15, 25
    addis 18, 0, -29802
    stwux 16, 31, 0
    stbux 6, 31, 0
    sth 21, 0(31)
    divw 5, 20, 29
    lha 21, 0(31)
    rlwinm 20, 11, 28, 17, 18
    addis 4, 0, -12029
    lhaux 14, 31, 0
    extsh 14, 19
    addis 26, 0, -28471
    addis 20, 0, -29138
    sthx 7, 31, 0
    cmpli cr0, 0, 7, 7454
    lhzu 24, 0(31)
    b 1f
    mulhwu. 17, 20, 8
    sthbrx 23, 31, 0
    1:
    addis 2, 0, 2545
    andi. 15, 20, 17114
    addis 24, 0, -8444
    addis 13, 0, -15434
    addis 12, 0, -16454
    addic 24, 13, -4029
    subfme 21, 11
    lbzx 20, 31, 0
    subfze. 11, 4
    cmpi cr0, 0, 20, 20888
    stbx 6, 31, 0
    stwu 8, 0(31)
    cmpi cr0, 0, 24, 26201
    addis 10, 0, 17270
    lbzux 23, 31, 0
    lhzux 17, 31, 0
    lbzux 19, 31, 0
    srawi 16, 9, 3
    stw 10, 0(31)
    addis 9, 0, 31721
    bne 1f
    cntlzw 21, 9
    1:
    addis 24, 0, 30699
    srawi. 17, 7, 13
    addis 10, 0, 11051
    stwux 17, 31, 0
    addis 10, 0, 24888
    srawi. 12, 13, 20
    stwux 24, 31, 0
    addc. 10, 9, 6
    addi 19, 6, 2899
    addic 10, 24, 24050
    lwzx 9, 31, 0
    sthu 22, 0(31)
    adde. 19, 8, 22
    lbzu 7, 0(31)
    stbx 13, 31, 0
    sthux 25, 31, 0
    lhzux 9, 31, 0
    stbu 4, 0(31)
    lhzx 15, 31, 0
    subfze 14, 22
    lhzux 14, 31, 0
    stw 12, 0(31)
    addis 13, 0, 379
    srawi 10, 26, 8
    addis 15, 0, 6806
    oris 22, 18, 19013
    addis 17, 0, 27594
    stbx 3, 31, 0
    lbz 4, 0(31)
    addis 18, 0, 17598
    sthbrx 18, 31, 0
    lbzux 26, 31, 0
    or. 16, 18, 12
    cmpli cr0, 0, 13, 856
    lhaux 2, 31, 0
    stwu 7, 0(31)
    bge 1f
    addis 25, 0, 15420
    or. 10, 14, 4
    1:
    addis 19, 0, 30206
    andis. 14, 2, 25668
    lhz 17, 0(31)
    sthu 16, 0(31)
    addis 20, 0, -22629
    srawi. 18, 14, 21
    addis 7, 0, -8373
    mullw 26, 6, 7
    sthbrx 15, 31, 0
    andi. 24, 13, 4717
    extsh 19, 10
    lwzx 2, 31, 0
    rlwinm 11, 10, 8, 5, 11
    lwzu 19, 0(31)
    nand 20, 15, 4
    addis 17, 0, -707
    lhzx 24, 31, 0
    xoris 5, 23, 55582
    subfc 18, 8, 18
    sth 20, 0(31)
    lwbrx 18, 31, 0
    addis 24, 0, 32530
    lwbrx 4, 31, 0
    bne 1f
    addis 20, 0, 1391
    lhzx 12, 31, 0
    1:
    mtlr 28
    addi 1, 1, 2304

    stw 0, 0(27)
    stw 1, 4(27)
    stw 2, 8(27)
    stw 3, 12(27)
    stw 4, 16(27)
    stw 5, 20(27)
    stw 6, 24(27)
    stw 7, 28(27)
    stw 8, 32(27)
    stw 9, 36(27)
    stw 10, 40(27)
    stw 11, 44(27)
    stw 12, 48(27)
    stw 13, 52(27)
    stw 14, 56(27)
    stw 15, 60(27)
    stw 16, 64(27)
    stw 17, 68(27)
    stw 18, 72(27)
    stw 19, 76(27)
    stw 20, 80(27)
    stw 21, 84(27)
    stw 22, 88(27)
    stw 23, 92(27)
    stw 24, 96(27)
    stw 25, 100(27)
    stw 26, 104(27)
    stw 27, 108(27)
    stw 28, 112(27)
    stw 29, 116(27)
    stw 30, 120(27)
    stw 31, 124(27)
    lis 30, powerisa_actual_spr@ha
    addi 30, 30, powerisa_actual_spr@l
    mfcr 0
    stw 0, 0(30)
    mfxer 0
    stw 0, 4(30)
    mflr 0
    stw 0, 8(30)
    mfctr 0
    stw 0, 12(30)

    lis 12, driver_saved_lr@ha
    addi 12, 12, driver_saved_lr@l
    lwz 0, 0(12)
    mtlr 0
    lis 12, driver_saved_cr@ha
    addi 12, 12, driver_saved_cr@l
    lwz 0, 0(12)
    mtcrf 255, 0
    lis 12, driver_saved_gpr@ha
    addi 12, 12, driver_saved_gpr@l
    lwz 1, 4(12)
    lwz 2, 8(12)
    lwz 13, 52(12)
    lwz 14, 56(12)
    lwz 15, 60(12)
    lwz 16, 64(12)
    lwz 17, 68(12)
    lwz 18, 72(12)
    lwz 19, 76(12)
    lwz 20, 80(12)
    lwz 21, 84(12)
    lwz 22, 88(12)
    lwz 23, 92(12)
    lwz 24, 96(12)
    lwz 25, 100(12)
    lwz 26, 104(12)
    lwz 27, 108(12)
    lwz 28, 112(12)
    lwz 29, 116(12)
    lwz 30, 120(12)
    lwz 31, 124(12)
    blr
    .size run_chunk_50, .-run_chunk_50
    .section .note.GNU-stack,"",@progbits
