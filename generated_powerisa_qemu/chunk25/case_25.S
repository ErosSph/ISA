    .text
    .align 2
    .globl run_chunk_25
    .type run_chunk_25, @function
run_chunk_25:
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
    ori 12, 12, 0x3D68
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    li 2, 0
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
    ori 11, 11, 0x0260
    lis 12, 0x0000
    ori 12, 12, 0x0470
    lis 13, 0x0000
    ori 13, 13, 0x04F4
    lis 14, 0x0000
    ori 14, 14, 0xD2F5
    lis 15, 0xFFFF
    ori 15, 15, 0xFFFF
    li 16, 0
    lis 17, 0xD691
    lis 18, 0xBA3D
    lis 19, 0xFE88
    lis 20, 0x0000
    ori 20, 20, 0x0001
    lis 21, 0x3B4B
    lis 22, 0x0000
    ori 22, 22, 0x04F4
    lis 23, 0xFAB3
    li 24, 0
    lis 25, 0x0000
    ori 25, 25, 0x1479
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x55C0
    lis 28, 0xE005
    ori 28, 28, 0x3D68
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4810
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk25_body_start:
    cmpi cr0, 0, 29, 0
    addis 4, 0, 8423
    b 1f
    stbux 21, 31, 0
    1:
    subfco. 11, 9, 26
    addis 14, 0, 28966
    stmw 11, 0(31)
    sthx 7, 31, 0
    lwzu 22, 0(31)
    rlwimi 15, 25, 27, 22, 24
    add. 5, 20, 14
    rlwimi 5, 4, 26, 22, 0
    sthx 9, 31, 0
    addis 12, 0, 4820
    addis 14, 0, 30000
    orc. 9, 14, 3
    divwo 6, 7, 29
    addis 2, 0, 12796
    rlwimi. 21, 12, 23, 16, 26
    extsh. 9, 8
    andis. 5, 12, 42079
    oris 26, 23, 50042
    rlwinm. 12, 14, 26, 13, 17
    lwbrx 6, 31, 0
    cmp cr0, 0, 4, 9
    addis 21, 0, -7205
    lhau 4, 0(31)
    stmw 4, 0(31)
    addis 23, 0, -23737
    lbzux 24, 31, 0
    stwu 26, 0(31)
    stbu 11, 0(31)
    andi. 9, 18, 22265
    addze 17, 21
    addis 14, 0, -2722
    addic. 26, 6, 5944
    sthx 21, 31, 0
    stbux 17, 31, 0
    addis 3, 0, -18297
    cmpi cr0, 0, 2, -801
    addis 11, 0, 13269
    addis 26, 0, 25101
    addis 3, 0, 26260
    addis 12, 0, 22650
    cmpli cr0, 0, 14, 36043
    lwzux 21, 31, 0
    extsh. 5, 14
    addis 4, 0, -513
    stw 18, 0(31)
    addis 21, 0, 25009
    addis 20, 0, -19861
    mullwo. 10, 22, 24
    addis 24, 0, 16349
    addis 15, 0, 9965
    beq 1f
    addc. 9, 8, 9
    lbz 24, 0(31)
    addi 6, 18, -7759
    1:
    addis 7, 0, -6949
    addeo 19, 24, 24
    stbux 18, 31, 0
    stbu 22, 0(31)
    stwux 26, 31, 0
    cmpl cr0, 0, 5, 2
    xoris 4, 26, 27452
    subfze 22, 21
    stwx 22, 31, 0
    cmpl cr0, 0, 3, 23
    oris 17, 20, 30708
    addis 2, 0, -29768
    xori 26, 14, 24033
    addis 22, 0, 12564
    rlwimi 6, 25, 29, 25, 24
    srawi. 4, 21, 19
    addic 9, 9, 22947
    lhax 21, 31, 0
    lhzux 17, 31, 0
    lhbrx 6, 31, 0
    sthux 6, 31, 0
    cntlzw 4, 2
    mulli 14, 15, 13880
    subfco 22, 8, 21
    sthbrx 19, 31, 0
    mullwo 22, 21, 16
    lhaux 14, 31, 0
    sthu 19, 0(31)
    cmpli cr0, 0, 11, 18311
    addc 26, 24, 17
    lwbrx 23, 31, 0
    subfco 18, 19, 6
    subfme. 19, 15
    stwu 10, 0(31)
    lhaux 8, 31, 0
    stb 6, 0(31)
    sthux 16, 31, 0
    lbzx 9, 31, 0
    bl 1f
    stmw 25, 0(31)
    1:
    addis 22, 0, 1020
    addis 16, 0, -16511
    extsb 18, 8
    lwzu 19, 0(31)
    addis 15, 0, 2630
    addis 8, 0, -7284
    srawi 7, 21, 28
    lwz 9, 0(31)
    lhzux 4, 31, 0
    lwzux 19, 31, 0
    lhz 26, 0(31)
    addis 16, 0, -17083
    subfeo. 3, 14, 5
    addis 19, 0, 6669
    stbu 6, 0(31)
    stwbrx 9, 31, 0
    andi. 2, 22, 58097
    bl 1f
    stmw 4, 0(31)
    or 11, 6, 5
    1:
    addis 11, 0, 11079
    stbux 10, 31, 0
    rlwinm 10, 21, 15, 0, 20
    rlwinm 23, 15, 7, 31, 16
    lhzux 6, 31, 0
    addzeo. 4, 17
    mulhwu 17, 18, 9
    stwux 11, 31, 0
    rlwinm 26, 9, 25, 3, 10
    rlwinm 4, 7, 15, 25, 8
    rlwinm 7, 8, 10, 19, 22
    stw 3, 0(31)
    addis 20, 0, -4862
    addis 2, 0, 28268
    addis 21, 0, -17688
    srw 14, 23, 4
    addeo. 24, 17, 18
    addis 3, 0, -31738
    andc 10, 14, 13
    cmpli cr0, 0, 6, 52376
    lwzux 4, 31, 0
    cmpli cr0, 0, 16, 4597
    srawi. 20, 7, 10
    stwx 25, 31, 0
    mullw. 15, 10, 16
    sthu 13, 0(31)
    rlwinm. 3, 23, 21, 3, 31
    lhzx 18, 31, 0
    lhbrx 2, 31, 0
    lhzux 7, 31, 0
    stwux 9, 31, 0
    sthbrx 21, 31, 0
    subfzeo. 10, 19
    stmw 14, 0(31)
    addis 13, 0, 12521
    addis 12, 0, -5141
    mulli 13, 10, 24656
    stwbrx 21, 31, 0
    addme. 4, 8
    stwux 6, 31, 0
    addis 21, 0, 9123
    subfic 19, 26, 20530
    addis 2, 0, 14686
    lhaux 4, 31, 0
    addis 26, 0, -31424
    lwbrx 23, 31, 0
    addis 18, 0, -26825
    stwbrx 14, 31, 0
    addis 6, 0, -9881
    addeo. 7, 19, 19
    subfmeo 9, 4
    subfeo. 6, 12, 18
    addis 3, 0, 8339
    lwbrx 6, 31, 0
    addis 3, 0, -9562
    addis 18, 0, 22603
    sthbrx 26, 31, 0
    addic 16, 26, -1634
    addis 8, 0, 3245
    subfme 5, 24
    subfmeo 9, 13
    ori 11, 23, 41516
    neg. 18, 21
    ble 1f
    orc 21, 2, 8
    lwzu 4, 0(31)
    addis 9, 0, 30210
    1:
    stwx 3, 31, 0
    lbzux 4, 31, 0
    subfmeo. 13, 9
    mullwo. 22, 26, 24
    xori 6, 14, 44121
    stw 8, 0(31)
    stmw 26, 0(31)
    addze 7, 23
    lbzx 11, 31, 0
    sthux 24, 31, 0
    subfe 15, 2, 18
    addis 11, 0, -30230
    lhzu 2, 0(31)
    srw 15, 15, 13
    stb 8, 0(31)
    stb 8, 0(31)
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
    .size run_chunk_25, .-run_chunk_25
    .section .note.GNU-stack,"",@progbits
