    .text
    .align 2
    .globl run_chunk_12
    .type run_chunk_12, @function
run_chunk_12:
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
    lis 12, 0xE004
    ori 12, 12, 0xECC4
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xB006
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
    li 11, 0
    li 12, 0
    lis 13, 0xD8D8
    li 14, 0
    lis 15, 0x524B
    ori 15, 15, 0xE598
    lis 16, 0x010A
    lis 17, 0xDF42
    li 18, 0
    lis 19, 0xF3FF
    lis 20, 0xC88C
    li 21, 0
    lis 22, 0x98BC
    lis 23, 0x14F3
    ori 23, 23, 0x43D0
    lis 24, 0xFFFF
    ori 24, 24, 0xF625
    lis 25, 0xFFFF
    ori 25, 25, 0x98BC
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x4F40
    lis 28, 0xE004
    ori 28, 28, 0xECC4
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4740
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk12_body_start:
    cmpi cr0, 0, 29, 0
    subfic 12, 22, 17943
    ble 1f
    addi 20, 5, 18232
    stbux 6, 31, 0
    addzeo 18, 20
    lhzu 16, 0(31)
    1:
    cntlzw 14, 4
    blt 1f
    lwz 8, 0(31)
    neg. 21, 25
    sthu 13, 0(31)
    subfo. 16, 19, 2
    1:
    addis 7, 0, -21786
    and. 4, 25, 2
    stw 4, 0(31)
    oris 17, 16, 38957
    addis 2, 0, -4669
    addmeo 18, 3
    lhau 18, 0(31)
    extsb. 14, 25
    addic. 23, 21, 30406
    bl 1f
    lwbrx 10, 31, 0
    1:
    addis 17, 0, -2619
    bl 1f
    addis 9, 0, 6902
    1:
    stwx 6, 31, 0
    lhax 20, 31, 0
    lhax 22, 31, 0
    stbux 2, 31, 0
    stbu 24, 0(31)
    sthux 4, 31, 0
    stmw 17, 0(31)
    subfe. 21, 14, 16
    stwx 7, 31, 0
    addis 24, 0, -7056
    andis. 19, 8, 25062
    addis 19, 0, -30477
    subfic 11, 14, 5386
    addzeo 23, 16
    addis 2, 0, -28745
    addco 6, 3, 19
    lbzu 8, 0(31)
    addic. 17, 25, -23306
    lhaux 12, 31, 0
    stwu 13, 0(31)
    addo. 21, 3, 19
    addis 26, 0, -23221
    addis 8, 0, -15759
    lhzu 17, 0(31)
    addis 10, 0, 25545
    addeo 14, 13, 21
    rlwinm. 2, 15, 20, 9, 29
    subfe 17, 22, 21
    cmpli cr0, 0, 19, 21659
    mulli 8, 25, -14687
    addis 9, 0, 23606
    rlwimi 14, 21, 18, 28, 15
    nor 20, 19, 3
    rlwimi. 8, 16, 19, 27, 10
    lhzx 15, 31, 0
    addc. 25, 19, 15
    addze. 9, 5
    slw. 2, 9, 26
    sthu 25, 0(31)
    cmpi cr0, 0, 21, 3221
    stmw 19, 0(31)
    cmp cr0, 0, 11, 7
    lhbrx 15, 31, 0
    addis 18, 0, 15326
    addic. 12, 16, -23546
    mulli 3, 22, -8977
    sthux 10, 31, 0
    lbzu 4, 0(31)
    stwbrx 11, 31, 0
    nand 19, 8, 2
    oris 14, 10, 59392
    sthux 11, 31, 0
    cmpi cr0, 0, 11, 17961
    stbx 14, 31, 0
    stbu 12, 0(31)
    cntlzw 18, 9
    stb 16, 0(31)
    lhzux 21, 31, 0
    addis 15, 0, -11957
    stmw 22, 0(31)
    addme. 18, 7
    divwu. 3, 6, 29
    sthu 26, 0(31)
    subfic 18, 5, -22401
    cmpli cr0, 0, 19, 2354
    lhaux 20, 31, 0
    lhbrx 20, 31, 0
    rlwimi 16, 11, 6, 4, 26
    lwzu 14, 0(31)
    rlwimi. 24, 2, 13, 25, 5
    sthx 22, 31, 0
    subfme. 24, 7
    lbz 26, 0(31)
    lhz 7, 0(31)
    addzeo 10, 19
    stwx 25, 31, 0
    lhzux 17, 31, 0
    adde 3, 17, 11
    neg 22, 5
    lwzx 25, 31, 0
    stwux 16, 31, 0
    sth 9, 0(31)
    divwo. 18, 22, 29
    rlwinm. 7, 2, 30, 19, 22
    eqv. 8, 11, 16
    xoris 26, 12, 15446
    stw 9, 0(31)
    stwu 21, 0(31)
    andc 26, 13, 11
    subfo. 6, 19, 10
    sraw. 23, 13, 6
    lhbrx 6, 31, 0
    cmpi cr0, 0, 19, -29185
    stbux 26, 31, 0
    stwu 19, 0(31)
    addis 2, 0, 17970
    stwx 22, 31, 0
    lhaux 15, 31, 0
    lhaux 19, 31, 0
    addis 17, 0, -28162
    andis. 7, 7, 49889
    stbux 23, 31, 0
    stw 17, 0(31)
    stmw 6, 0(31)
    addic. 13, 24, -18563
    addic. 16, 22, -15835
    srawi 11, 20, 4
    addi 26, 19, 2895
    stmw 2, 0(31)
    srawi 25, 19, 21
    sthbrx 20, 31, 0
    stwx 6, 31, 0
    lwzx 19, 31, 0
    sthbrx 3, 31, 0
    divwuo 6, 26, 29
    oris 25, 24, 36885
    lwzu 4, 0(31)
    addis 2, 0, -12011
    cmp cr0, 0, 16, 17
    lhax 4, 31, 0
    addeo 11, 11, 13
    xori 16, 2, 60739
    addis 7, 0, -28478
    sthu 4, 0(31)
    subfic 22, 7, 5788
    addis 13, 0, 14496
    sth 19, 0(31)
    addis 13, 0, 12324
    lbzu 19, 0(31)
    orc. 23, 9, 12
    stwx 23, 31, 0
    ori 17, 10, 34892
    mulli 21, 17, 11534
    stbux 26, 31, 0
    lwz 18, 0(31)
    rlwinm. 19, 22, 14, 31, 18
    stwx 14, 31, 0
    nand. 13, 18, 2
    sthbrx 8, 31, 0
    bne 1f
    subfe 3, 20, 9
    addis 9, 0, 9560
    sth 9, 0(31)
    orc. 6, 19, 7
    1:
    stwx 19, 31, 0
    addme 25, 26
    srawi. 6, 17, 16
    addis 15, 0, 9659
    addis 20, 0, -24681
    lwbrx 17, 31, 0
    addis 19, 0, -9125
    lhau 18, 0(31)
    eqv 7, 24, 14
    lhax 9, 31, 0
    lhbrx 22, 31, 0
    addis 21, 0, 944
    stwux 13, 31, 0
    cmpi cr0, 0, 16, 9130
    addis 15, 0, -23523
    addis 23, 0, -2759
    lwzux 14, 31, 0
    lwzu 20, 0(31)
    lwzux 2, 31, 0
    xoris 7, 26, 59353
    addis 8, 0, 22943
    andis. 4, 20, 32953
    lwzux 12, 31, 0
    lhz 12, 0(31)
    adde. 5, 19, 16
    sthx 8, 31, 0
    addis 8, 0, 11257
    rlwimi 10, 23, 6, 9, 26
    xori 26, 26, 18433
    xori 16, 3, 23128
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
    .size run_chunk_12, .-run_chunk_12
    .section .note.GNU-stack,"",@progbits
