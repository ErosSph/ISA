    .text
    .align 2
    .globl run_chunk_33
    .type run_chunk_33, @function
run_chunk_33:
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
    lis 12, 0xA000
    ori 12, 12, 0x0001
    mtxer 12
    lis 12, 0xE005
    ori 12, 12, 0x6EF4
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x2288
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
    lis 11, 0xFFFF
    ori 11, 11, 0xFFFF
    lis 12, 0x1DEC
    ori 12, 12, 0x9362
    lis 13, 0x636E
    li 14, 0
    lis 15, 0xFFFF
    ori 15, 15, 0xB400
    li 16, 0
    lis 17, 0x1000
    lis 18, 0x0000
    ori 18, 18, 0x00DA
    lis 19, 0xC6B0
    ori 19, 19, 0xFF6C
    li 20, 0
    li 21, 0
    lis 22, 0x0000
    ori 22, 22, 0x00DA
    lis 23, 0x6AD4
    lis 24, 0x0000
    ori 24, 24, 0x00B4
    li 25, 0
    lis 26, 0x0000
    ori 26, 26, 0x00B4
    lis 27, 0xE001
    ori 27, 27, 0x59C0
    lis 28, 0xE005
    ori 28, 28, 0x6EF4
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4890
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk33_body_start:
    cmpi cr0, 0, 29, 0
    stbu 9, 0(31)
    addis 25, 0, 5969
    mulhwu 25, 13, 7
    xor. 14, 13, 24
    addis 7, 0, 18271
    slw 20, 24, 9
    addis 4, 0, -6792
    sthux 23, 31, 0
    sthx 12, 31, 0
    addco 8, 24, 17
    adde 14, 5, 9
    addis 7, 0, -21811
    sth 18, 0(31)
    subfmeo. 7, 15
    stbx 4, 31, 0
    lhzux 6, 31, 0
    addze 3, 22
    stbx 8, 31, 0
    stw 18, 0(31)
    lbz 8, 0(31)
    lwbrx 13, 31, 0
    stw 6, 0(31)
    lbzux 3, 31, 0
    addis 5, 0, 14852
    addis 15, 0, -14544
    addis 14, 0, -23267
    addis 26, 0, 22577
    bl 1f
    rlwinm 9, 22, 15, 27, 4
    orc 14, 13, 6
    stmw 16, 0(31)
    1:
    andi. 22, 14, 10811
    rlwnm. 18, 21, 26, 0, 2
    andi. 24, 20, 54591
    lhzx 26, 31, 0
    addis 4, 0, 13610
    slw. 19, 18, 9
    addis 24, 0, 25022
    lhaux 5, 31, 0
    addis 21, 0, 15076
    bne 1f
    lha 13, 0(31)
    andis. 3, 11, 37271
    xori 23, 11, 32356
    lhz 25, 0(31)
    1:
    addis 26, 0, -20218
    lwzux 26, 31, 0
    sthx 14, 31, 0
    stmw 10, 0(31)
    addi 3, 12, -23954
    stbu 18, 0(31)
    addis 26, 0, 20684
    addis 7, 0, -14743
    lbzx 21, 31, 0
    addic 17, 13, 2716
    lbzu 19, 0(31)
    eqv 4, 2, 4
    stbu 24, 0(31)
    rlwinm 8, 26, 19, 6, 5
    subfco 5, 23, 7
    addis 9, 0, 5895
    lhz 20, 0(31)
    stbx 25, 31, 0
    addis 24, 0, -2533
    andc 23, 24, 5
    lhbrx 16, 31, 0
    lhau 24, 0(31)
    stbx 16, 31, 0
    addi 2, 8, -25632
    mullwo 7, 22, 15
    andc 4, 9, 14
    addis 4, 0, 21847
    nego 26, 13
    lbzux 4, 31, 0
    addis 21, 0, 20011
    lwbrx 16, 31, 0
    xor. 13, 25, 3
    stmw 22, 0(31)
    srawi 4, 12, 28
    stbx 6, 31, 0
    addis 7, 0, -12742
    lbzx 9, 31, 0
    addis 23, 0, -24638
    lwbrx 5, 31, 0
    ble 1f
    addis 7, 0, 26114
    stbx 9, 31, 0
    addis 10, 0, -28539
    1:
    stw 10, 0(31)
    lbz 17, 0(31)
    lhzu 18, 0(31)
    divwo. 7, 19, 29
    divwu. 2, 25, 29
    stwu 20, 0(31)
    ori 15, 18, 57293
    rlwimi. 11, 12, 20, 12, 12
    stbx 8, 31, 0
    cmp cr0, 0, 16, 22
    orc. 5, 19, 7
    addis 9, 0, 24492
    addis 16, 0, 8068
    addis 19, 0, -18081
    lhax 9, 31, 0
    lhau 12, 0(31)
    lhzux 3, 31, 0
    lbzux 22, 31, 0
    stbu 21, 0(31)
    lbzu 26, 0(31)
    subfco 10, 6, 22
    stwbrx 26, 31, 0
    lhax 11, 31, 0
    mulli 21, 23, -26584
    addic. 15, 16, 15084
    sthu 5, 0(31)
    lbzx 3, 31, 0
    xoris 18, 21, 61519
    lwzu 11, 0(31)
    subfic 6, 7, -16375
    addis 4, 0, -24
    stwux 23, 31, 0
    stwu 7, 0(31)
    srawi 16, 13, 28
    subfo. 12, 17, 4
    stb 16, 0(31)
    stb 18, 0(31)
    addis 21, 0, 31572
    mulli 21, 10, -14544
    bne 1f
    stw 13, 0(31)
    addis 26, 0, 27724
    lwzx 6, 31, 0
    rlwinm. 11, 10, 27, 8, 19
    1:
    addis 10, 0, 5404
    addis 16, 0, 11474
    addis 9, 0, -1902
    cmpi cr0, 0, 14, -6164
    addis 13, 0, 16334
    stwx 14, 31, 0
    andi. 15, 22, 6412
    addis 15, 0, -19432
    addis 2, 0, -16972
    mulli 4, 14, -22656
    stbx 14, 31, 0
    lhzu 21, 0(31)
    subfco. 17, 19, 5
    subfmeo 6, 22
    mullw. 6, 6, 4
    stwx 12, 31, 0
    srawi 9, 7, 31
    rlwimi. 4, 25, 28, 5, 6
    stwu 18, 0(31)
    andis. 26, 26, 6714
    lhbrx 4, 31, 0
    cmp cr0, 0, 11, 6
    addic 25, 8, -26340
    subfze 17, 2
    lwzx 19, 31, 0
    addis 16, 0, -13108
    stwu 24, 0(31)
    stmw 18, 0(31)
    lbzu 20, 0(31)
    addi 3, 7, 8852
    andis. 14, 10, 63876
    subfe 18, 16, 20
    mulhw 17, 2, 14
    rlwimi 19, 10, 5, 29, 12
    lwzx 20, 31, 0
    addis 15, 0, 32481
    adde. 24, 15, 17
    addco 3, 26, 2
    addis 13, 0, -21245
    addo. 11, 15, 4
    stwx 9, 31, 0
    xor. 14, 21, 14
    addis 20, 0, 16129
    addis 18, 0, -17766
    addis 5, 0, -29938
    addis 9, 0, -30273
    stwux 5, 31, 0
    ble 1f
    nor 22, 9, 25
    addis 15, 0, 11634
    1:
    ori 24, 20, 260
    divwu. 18, 23, 29
    stbu 16, 0(31)
    subfc 10, 2, 26
    addic 9, 8, -16833
    addis 12, 0, 22950
    addic. 2, 22, -7739
    addis 21, 0, 299
    lhzx 4, 31, 0
    stwx 14, 31, 0
    lhzux 23, 31, 0
    bge 1f
    xor 20, 11, 21
    stw 8, 0(31)
    1:
    lha 9, 0(31)
    lhzu 14, 0(31)
    addis 4, 0, 18175
    lhaux 12, 31, 0
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
    .size run_chunk_33, .-run_chunk_33
    .section .note.GNU-stack,"",@progbits
