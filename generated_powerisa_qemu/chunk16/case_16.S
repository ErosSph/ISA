    .text
    .align 2
    .globl run_chunk_16
    .type run_chunk_16, @function
run_chunk_16:
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
    ori 12, 12, 0x0594
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x860B
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
    lis 13, 0x0B80
    ori 13, 13, 0xD7C0
    lis 14, 0xCCE6
    lis 15, 0xFFFF
    ori 15, 15, 0xD497
    lis 16, 0x000F
    ori 16, 16, 0xF100
    lis 17, 0x0000
    ori 17, 17, 0x0024
    li 18, 0
    lis 19, 0x0000
    ori 19, 19, 0x2B68
    li 20, 0
    lis 21, 0x999E
    ori 21, 21, 0xFFFF
    lis 22, 0x0B81
    ori 22, 22, 0x108D
    li 23, 0
    lis 24, 0x8BBF
    ori 24, 24, 0x1D52
    li 25, 0
    lis 26, 0x0000
    ori 26, 26, 0x6661
    lis 27, 0xE001
    ori 27, 27, 0x5140
    lis 28, 0xE005
    ori 28, 28, 0x0594
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4780
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk16_body_start:
    cmpi cr0, 0, 29, 0
    rlwimi. 14, 4, 31, 23, 3
    addis 6, 0, 3253
    sthx 7, 31, 0
    sthx 14, 31, 0
    lhzux 5, 31, 0
    stwx 18, 31, 0
    mulhw 18, 8, 5
    ori 3, 17, 63939
    sthbrx 3, 31, 0
    addis 8, 0, -26213
    addze 21, 7
    lbzx 19, 31, 0
    srw 15, 17, 17
    lwzux 7, 31, 0
    addis 17, 0, -5887
    lbzx 22, 31, 0
    divw. 21, 15, 29
    lwzux 20, 31, 0
    lhaux 20, 31, 0
    lwzx 7, 31, 0
    bl 1f
    addis 4, 0, -15624
    1:
    rlwimi. 21, 26, 12, 12, 24
    sthu 3, 0(31)
    subf 25, 6, 11
    bl 1f
    stbx 5, 31, 0
    addis 6, 0, -26529
    andis. 7, 6, 45814
    cntlzw. 2, 23
    1:
    lhbrx 21, 31, 0
    stwu 10, 0(31)
    lwzux 24, 31, 0
    or 24, 6, 9
    lhau 14, 0(31)
    addis 2, 0, 30285
    mulli 14, 26, -1323
    rlwimi. 11, 3, 9, 30, 4
    andc. 21, 16, 9
    addis 11, 0, 8122
    addis 23, 0, -31441
    lwz 21, 0(31)
    stw 2, 0(31)
    stmw 17, 0(31)
    addis 13, 0, 12240
    rlwinm 9, 12, 8, 22, 24
    lhax 5, 31, 0
    xoris 26, 16, 36201
    lhzu 5, 0(31)
    srawi. 9, 3, 12
    lbzu 10, 0(31)
    addis 2, 0, -22429
    sraw. 2, 11, 26
    mulli 16, 20, 18188
    cmpl cr0, 0, 17, 24
    stwu 10, 0(31)
    addis 13, 0, 8444
    divwu 10, 22, 29
    lbzux 2, 31, 0
    lhau 18, 0(31)
    oris 2, 7, 20520
    addi 8, 2, 24418
    subfmeo 20, 14
    andi. 13, 14, 61364
    lwbrx 2, 31, 0
    and. 6, 21, 9
    subfme 23, 23
    subfo 21, 9, 9
    subfic 15, 2, -12552
    bl 1f
    rlwimi 4, 23, 23, 26, 27
    eqv 10, 25, 17
    1:
    stb 4, 0(31)
    sraw 12, 18, 16
    addis 6, 0, 18088
    bge 1f
    lwzx 5, 31, 0
    addis 19, 0, 29481
    1:
    addis 3, 0, 1675
    addis 21, 0, 17022
    lwzu 5, 0(31)
    cmpli cr0, 0, 14, 53241
    lhzu 4, 0(31)
    neg. 25, 2
    addis 13, 0, -7497
    sthu 16, 0(31)
    stbu 20, 0(31)
    lbz 5, 0(31)
    stbx 17, 31, 0
    lwzu 17, 0(31)
    addis 24, 0, -71
    addis 17, 0, 22739
    rlwimi. 3, 16, 18, 17, 2
    nego. 17, 8
    slw. 22, 24, 26
    lwzx 13, 31, 0
    lhbrx 22, 31, 0
    addo. 9, 11, 15
    addis 4, 0, -9928
    bl 1f
    lbzx 2, 31, 0
    sth 12, 0(31)
    1:
    addis 13, 0, -12621
    or 7, 12, 24
    srawi 6, 8, 18
    sthbrx 4, 31, 0
    stwu 21, 0(31)
    addis 9, 0, 18442
    divwuo. 7, 10, 29
    lhaux 10, 31, 0
    addis 20, 0, -6835
    lhz 22, 0(31)
    addis 9, 0, -18501
    addis 3, 0, -27601
    and 11, 6, 3
    cmpi cr0, 0, 18, -19602
    addis 24, 0, -3957
    addi 3, 8, -10837
    adde. 18, 20, 7
    sthu 15, 0(31)
    subfic 23, 13, -4229
    addis 16, 0, -1480
    bl 1f
    addis 22, 0, 591
    1:
    addis 6, 0, 25883
    add. 23, 3, 10
    ori 4, 13, 27048
    addis 15, 0, -15561
    addis 15, 0, 29875
    lbzux 2, 31, 0
    stwu 24, 0(31)
    andi. 7, 16, 4514
    subfc. 26, 18, 13
    sth 4, 0(31)
    divwu. 17, 22, 29
    stbux 13, 31, 0
    subfe 9, 13, 20
    addis 6, 0, -12346
    sth 18, 0(31)
    stw 7, 0(31)
    oris 14, 16, 53499
    addis 3, 0, -29314
    bl 1f
    addis 9, 0, 5400
    1:
    stwbrx 4, 31, 0
    lhax 22, 31, 0
    stwux 24, 31, 0
    rlwnm 24, 25, 19, 25, 18
    srawi. 15, 20, 30
    nor 15, 16, 12
    addis 17, 0, -9278
    lhzux 16, 31, 0
    eqv. 16, 13, 11
    stmw 13, 0(31)
    addis 14, 0, 12750
    lwzu 7, 0(31)
    andi. 12, 11, 34242
    stw 14, 0(31)
    addic. 12, 19, -16667
    lhzux 12, 31, 0
    subfzeo. 21, 16
    stwux 10, 31, 0
    sthux 2, 31, 0
    oris 16, 9, 11266
    stwu 21, 0(31)
    addco 3, 20, 19
    xori 8, 14, 48960
    mulhw. 9, 26, 17
    addis 15, 0, -22303
    addic 20, 4, -30299
    extsh 4, 24
    and. 9, 23, 26
    lhbrx 3, 31, 0
    addic 20, 20, 6729
    addis 22, 0, -23575
    addis 16, 0, -7954
    divwo 24, 3, 29
    addi 22, 17, 26836
    cmpi cr0, 0, 19, -29514
    andi. 16, 3, 58875
    andi. 23, 25, 20160
    rlwinm 5, 17, 21, 19, 25
    addis 19, 0, -3689
    cmpli cr0, 0, 22, 36778
    sthux 9, 31, 0
    addis 21, 0, -9983
    lwz 19, 0(31)
    divw. 12, 10, 29
    divwo 3, 13, 29
    lbzux 10, 31, 0
    b 1f
    lwzx 13, 31, 0
    srawi 19, 5, 6
    1:
    lbzu 12, 0(31)
    rlwimi 26, 7, 1, 9, 2
    lbzu 8, 0(31)
    cmpi cr0, 0, 23, 24713
    addic. 21, 23, -11251
    lhau 20, 0(31)
    slw. 8, 23, 13
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
    .size run_chunk_16, .-run_chunk_16
    .section .note.GNU-stack,"",@progbits
