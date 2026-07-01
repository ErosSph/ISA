    .text
    .align 2
    .globl run_chunk_30
    .type run_chunk_30, @function
run_chunk_30:
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
    ori 12, 12, 0x5C58
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
    li 11, 0
    lis 12, 0xC922
    ori 12, 12, 0x2B7F
    lis 13, 0xFE00
    lis 14, 0xE457
    ori 14, 14, 0xE801
    li 15, 0
    lis 16, 0x13AC
    lis 17, 0x1A42
    ori 17, 17, 0xE800
    li 18, 0
    lis 19, 0x4174
    lis 20, 0x3681
    ori 20, 20, 0x1F01
    lis 21, 0xC922
    ori 21, 21, 0x2B7F
    lis 22, 0xB55D
    lis 23, 0xC922
    ori 23, 23, 0x2B7E
    lis 24, 0x4B5F
    ori 24, 24, 0xFE00
    li 25, 0
    lis 26, 0x007A
    lis 27, 0xE001
    ori 27, 27, 0x5840
    lis 28, 0xE005
    ori 28, 28, 0x5C58
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4860
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk30_body_start:
    cmpi cr0, 0, 29, 0
    subfc 16, 17, 18
    addis 9, 0, 7923
    sthbrx 12, 31, 0
    subfc 15, 11, 4
    addis 8, 0, -32166
    slw. 4, 23, 17
    addis 16, 0, 15663
    andi. 18, 3, 33641
    addis 5, 0, 3537
    lwzux 8, 31, 0
    xori 6, 11, 61245
    divwuo 21, 14, 29
    lbzux 7, 31, 0
    addis 24, 0, 15257
    addis 23, 0, -17871
    xori 25, 5, 35412
    xori 18, 8, 46317
    srawi. 10, 2, 16
    rlwinm 4, 4, 27, 20, 28
    addis 25, 0, -20172
    addis 2, 0, 2755
    addi 16, 9, -31672
    extsh. 16, 4
    subfic 16, 13, -29950
    sthux 10, 31, 0
    lhz 13, 0(31)
    lhzx 19, 31, 0
    ble 1f
    lwzu 16, 0(31)
    rlwimi. 7, 5, 19, 16, 0
    stbux 10, 31, 0
    cmpli cr0, 0, 12, 30321
    1:
    stw 9, 0(31)
    lbzx 5, 31, 0
    addis 8, 0, 5639
    addis 17, 0, 27054
    b 1f
    lwbrx 6, 31, 0
    lwzu 16, 0(31)
    addis 14, 0, -21558
    addis 24, 0, -188
    1:
    lhax 20, 31, 0
    xori 22, 8, 2387
    orc. 13, 8, 20
    addis 10, 0, 30334
    divwu. 3, 7, 29
    addis 17, 0, -3028
    lbzu 22, 0(31)
    lha 12, 0(31)
    rlwinm. 2, 21, 30, 28, 3
    addis 14, 0, 20936
    lbzu 17, 0(31)
    addic. 15, 19, -9108
    subfc. 11, 17, 13
    andi. 13, 18, 10894
    lhz 24, 0(31)
    sthux 8, 31, 0
    lhax 14, 31, 0
    srw. 10, 22, 26
    nego. 16, 11
    stwux 8, 31, 0
    extsh. 21, 13
    addi 26, 4, -29751
    stwux 8, 31, 0
    addis 26, 0, 17201
    rlwimi. 18, 19, 12, 24, 29
    ori 13, 12, 13742
    stwbrx 14, 31, 0
    stwux 18, 31, 0
    lhzx 5, 31, 0
    divw. 8, 8, 29
    addic 2, 14, 21803
    bl 1f
    lhaux 25, 31, 0
    addis 16, 0, 24313
    addeo. 20, 26, 8
    lhau 15, 0(31)
    1:
    ori 9, 16, 41824
    lwbrx 2, 31, 0
    subfmeo 14, 7
    andis. 12, 22, 56011
    lhaux 12, 31, 0
    lhzu 25, 0(31)
    or. 9, 17, 11
    lwzux 10, 31, 0
    stw 24, 0(31)
    lha 14, 0(31)
    lbzu 13, 0(31)
    subf. 3, 15, 19
    sthux 12, 31, 0
    addis 14, 0, -4505
    nor 13, 3, 6
    ori 24, 22, 20855
    addo 21, 20, 16
    orc 14, 3, 20
    bgt 1f
    addi 13, 12, -19860
    addis 12, 0, 2874
    1:
    rlwinm 19, 6, 13, 29, 13
    rlwinm. 16, 3, 27, 13, 25
    addis 21, 0, -8659
    addic. 12, 24, -21794
    addis 22, 0, -7129
    addis 10, 0, -14352
    lhzx 7, 31, 0
    subfe 22, 18, 15
    lwz 26, 0(31)
    addis 9, 0, -15346
    neg. 11, 25
    mulli 4, 3, 17797
    stwux 22, 31, 0
    addis 20, 0, 19843
    lhbrx 24, 31, 0
    stmw 22, 0(31)
    andis. 18, 12, 41893
    lwzu 25, 0(31)
    eqv. 10, 2, 4
    addmeo 19, 17
    cmp cr0, 0, 10, 19
    stbux 6, 31, 0
    ori 10, 18, 57978
    stwx 5, 31, 0
    extsh. 20, 12
    xoris 17, 18, 54437
    andc 9, 22, 16
    sth 19, 0(31)
    lhbrx 24, 31, 0
    lhax 21, 31, 0
    rlwinm. 15, 8, 9, 13, 5
    lhzu 19, 0(31)
    subfze 8, 25
    addis 17, 0, 14107
    lhzx 5, 31, 0
    lhzux 2, 31, 0
    cmpi cr0, 0, 25, 25095
    stwux 25, 31, 0
    lbz 22, 0(31)
    sthux 13, 31, 0
    lhbrx 2, 31, 0
    rlwimi. 23, 25, 7, 10, 16
    cmpi cr0, 0, 14, 8843
    lhau 19, 0(31)
    lhax 8, 31, 0
    addis 3, 0, -24521
    lbz 22, 0(31)
    addis 17, 0, -23226
    addis 17, 0, 20266
    subfme 23, 10
    addis 25, 0, -21645
    lwz 13, 0(31)
    addi 17, 16, -26699
    addis 17, 0, 18075
    addis 12, 0, 23710
    addis 6, 0, 19303
    addis 11, 0, 32023
    subfo. 22, 21, 23
    addis 3, 0, -25736
    addis 17, 0, -13696
    addis 6, 0, -3598
    andi. 21, 11, 34940
    stbx 15, 31, 0
    sthux 14, 31, 0
    nand. 14, 6, 22
    lhzux 5, 31, 0
    lhaux 22, 31, 0
    stw 26, 0(31)
    oris 18, 25, 60064
    srw. 12, 2, 20
    rlwinm 9, 12, 26, 3, 17
    addis 19, 0, -24957
    sthbrx 11, 31, 0
    cmpi cr0, 0, 21, -301
    addeo. 10, 21, 13
    rlwimi 9, 16, 16, 5, 0
    addis 13, 0, 12755
    stwx 5, 31, 0
    addis 21, 0, 30951
    srawi 12, 9, 8
    addis 6, 0, 31456
    blt 1f
    sthx 9, 31, 0
    stw 6, 0(31)
    1:
    cntlzw 17, 16
    addeo 12, 3, 18
    bge 1f
    lwbrx 15, 31, 0
    1:
    ori 16, 23, 20549
    stbu 2, 0(31)
    sth 17, 0(31)
    blt 1f
    subfzeo 26, 19
    sthx 3, 31, 0
    sth 26, 0(31)
    1:
    addis 10, 0, -18989
    lwz 8, 0(31)
    oris 5, 3, 40792
    subf. 3, 26, 9
    lhzu 5, 0(31)
    lbz 22, 0(31)
    subfic 19, 8, 5362
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
    .size run_chunk_30, .-run_chunk_30
    .section .note.GNU-stack,"",@progbits
