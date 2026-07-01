    .text
    .align 2
    .globl run_chunk_18
    .type run_chunk_18, @function
run_chunk_18:
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
    ori 12, 12, 0x11FC
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0xD604
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
    lis 11, 0x00D6
    lis 12, 0x0000
    ori 12, 12, 0x1C48
    lis 13, 0x0000
    ori 13, 13, 0x1C48
    lis 14, 0x8DDA
    ori 14, 14, 0xFD4E
    lis 15, 0xFFFF
    ori 15, 15, 0xFFFF
    lis 16, 0x0000
    ori 16, 16, 0x1C48
    lis 17, 0xEF51
    ori 17, 17, 0x481C
    lis 18, 0x2E4F
    lis 19, 0x10AF
    lis 20, 0x0000
    ori 20, 20, 0x1C48
    lis 21, 0xEF51
    lis 22, 0x0000
    ori 22, 22, 0xFFD6
    lis 23, 0x3211
    lis 24, 0x8AAF
    lis 25, 0x0EF5
    ori 25, 25, 0x10FE
    lis 26, 0xADD6
    lis 27, 0xE001
    ori 27, 27, 0x5240
    lis 28, 0xE005
    ori 28, 28, 0x11FC
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x47A0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk18_body_start:
    cmpi cr0, 0, 29, 0
    stb 10, 0(31)
    stwux 5, 31, 0
    addis 8, 0, -29748
    xor 17, 8, 17
    lhzux 5, 31, 0
    lwz 17, 0(31)
    addis 7, 0, -14528
    addzeo. 21, 17
    addis 23, 0, -9541
    bl 1f
    neg. 8, 14
    subfco 21, 24, 23
    1:
    addis 18, 0, -19392
    xoris 18, 5, 35032
    stwux 18, 31, 0
    rlwimi 14, 8, 31, 21, 11
    extsb 15, 14
    sraw. 25, 25, 8
    rlwinm. 2, 21, 1, 31, 25
    addze 25, 13
    lhzux 11, 31, 0
    mulli 8, 5, 28045
    addis 23, 0, 25279
    stw 4, 0(31)
    srawi 12, 12, 1
    mulli 21, 21, 29272
    lbz 14, 0(31)
    ori 6, 5, 54709
    addis 12, 0, 9430
    addis 17, 0, -29052
    addic. 11, 15, 1243
    rlwimi 11, 13, 17, 4, 12
    addis 5, 0, 9976
    rlwinm. 4, 16, 13, 28, 6
    sthu 24, 0(31)
    srawi. 20, 3, 28
    addis 16, 0, -11511
    lhzux 9, 31, 0
    bl 1f
    addis 18, 0, 1699
    subfe. 20, 18, 19
    subfme 12, 15
    neg 17, 10
    1:
    addis 6, 0, 22716
    rlwimi 21, 12, 21, 26, 17
    addis 24, 0, 3853
    lbzu 26, 0(31)
    lha 11, 0(31)
    addic 24, 10, 18900
    addmeo 14, 7
    stwux 11, 31, 0
    rlwimi 17, 25, 5, 28, 4
    stw 22, 0(31)
    subfze 26, 12
    subfo 23, 12, 13
    addc 6, 12, 8
    addis 3, 0, -12000
    andi. 13, 19, 44653
    addis 11, 0, -26374
    sth 12, 0(31)
    oris 19, 17, 41090
    andis. 9, 23, 12198
    extsb. 17, 7
    addic 8, 10, 24261
    addis 23, 0, -1077
    stbux 8, 31, 0
    andi. 22, 6, 48538
    subfco. 22, 14, 25
    lhau 2, 0(31)
    stwux 22, 31, 0
    rlwinm 12, 15, 16, 4, 14
    stmw 25, 0(31)
    stwx 18, 31, 0
    nand. 13, 11, 10
    neg. 18, 22
    addis 19, 0, 12524
    extsb 11, 8
    mulli 10, 24, 31840
    andis. 11, 7, 23630
    lhzx 16, 31, 0
    addis 24, 0, -374
    lhz 2, 0(31)
    lhbrx 16, 31, 0
    addis 26, 0, 31721
    sthx 6, 31, 0
    lhzx 21, 31, 0
    subfme 4, 6
    subfe. 7, 4, 17
    sthx 12, 31, 0
    stbu 19, 0(31)
    b 1f
    sthbrx 19, 31, 0
    divwuo 9, 21, 29
    addis 8, 0, -1363
    lwbrx 25, 31, 0
    1:
    addis 5, 0, 20644
    addi 4, 10, -12968
    addis 25, 0, 20501
    lwzux 15, 31, 0
    rlwinm. 12, 13, 22, 14, 13
    addis 26, 0, -11483
    addis 15, 0, -19557
    stw 14, 0(31)
    add. 3, 18, 25
    stbu 19, 0(31)
    subfo. 5, 20, 8
    xoris 6, 6, 23050
    oris 2, 26, 53044
    addis 26, 0, 12600
    ori 6, 17, 46555
    or. 6, 2, 15
    stwu 21, 0(31)
    lhax 2, 31, 0
    lhzu 24, 0(31)
    stb 8, 0(31)
    sthbrx 13, 31, 0
    stwbrx 19, 31, 0
    lha 5, 0(31)
    stwx 8, 31, 0
    stwu 9, 0(31)
    lhzx 24, 31, 0
    addis 22, 0, 2612
    subfeo 2, 19, 8
    lbzu 7, 0(31)
    divwo. 14, 9, 29
    addis 5, 0, 8374
    lwzx 25, 31, 0
    andi. 9, 2, 12173
    lhz 21, 0(31)
    bne 1f
    sthbrx 11, 31, 0
    lbzux 12, 31, 0
    neg. 26, 6
    1:
    addis 12, 0, -32681
    addis 19, 0, -15826
    subfo. 26, 14, 4
    oris 22, 20, 12571
    subf 13, 15, 5
    addc. 8, 19, 15
    sthux 5, 31, 0
    divwu. 15, 16, 29
    subfze 26, 18
    addis 19, 0, -6419
    lbzux 23, 31, 0
    rlwimi 13, 8, 23, 19, 20
    subfic 17, 24, -16639
    sthu 9, 0(31)
    mulli 17, 17, 23050
    stwux 26, 31, 0
    mulli 25, 16, -19321
    cmpli cr0, 0, 3, 19399
    addis 16, 0, -3187
    addis 10, 0, 17172
    addis 3, 0, 32697
    neg. 23, 23
    subfmeo. 15, 5
    nor. 5, 21, 8
    rlwinm 14, 6, 28, 31, 12
    sthux 26, 31, 0
    or 2, 6, 8
    rlwimi 24, 3, 2, 14, 1
    stbx 20, 31, 0
    rlwinm 23, 2, 24, 30, 18
    cmpli cr0, 0, 18, 23459
    xoris 23, 11, 60120
    stbx 19, 31, 0
    nand 9, 10, 7
    lhzux 21, 31, 0
    lwz 21, 0(31)
    sthx 15, 31, 0
    addis 13, 0, -20
    sthux 26, 31, 0
    addme 7, 11
    lbzux 15, 31, 0
    sthu 18, 0(31)
    sthx 12, 31, 0
    mulhw 13, 26, 2
    lbzux 26, 31, 0
    lhaux 15, 31, 0
    addis 23, 0, 18292
    addis 26, 0, 18648
    lhaux 18, 31, 0
    lhzx 23, 31, 0
    sth 22, 0(31)
    lhau 26, 0(31)
    stmw 22, 0(31)
    lbzux 10, 31, 0
    stbu 6, 0(31)
    lwzx 11, 31, 0
    subfc. 6, 21, 15
    lwzx 23, 31, 0
    stbu 2, 0(31)
    addme. 7, 3
    sthux 15, 31, 0
    sthux 25, 31, 0
    addis 16, 0, 24176
    addis 19, 0, -20456
    addis 14, 0, -13857
    addis 20, 0, 2329
    srawi 12, 8, 19
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
    .size run_chunk_18, .-run_chunk_18
    .section .note.GNU-stack,"",@progbits
