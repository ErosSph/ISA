    .text
    .align 2
    .globl run_chunk_43
    .type run_chunk_43, @function
run_chunk_43:
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
    ori 12, 12, 0xACFC
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x058F
    ori 2, 2, 0x0240
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
    lis 11, 0x005F
    ori 11, 11, 0x73BA
    lis 12, 0xED95
    li 13, 0
    lis 14, 0xDB6D
    ori 14, 14, 0xB6F5
    lis 15, 0x112C
    lis 16, 0xDB47
    ori 16, 16, 0xEA72
    li 17, 0
    lis 18, 0x0000
    ori 18, 18, 0x00B7
    lis 19, 0x0000
    ori 19, 19, 0x00B7
    lis 20, 0xAAE3
    lis 21, 0x47FF
    ori 21, 21, 0xFFFF
    lis 22, 0xFFFF
    ori 22, 22, 0xFFE4
    lis 23, 0x0000
    ori 23, 23, 0x2423
    lis 24, 0x00CB
    ori 24, 24, 0x4976
    lis 25, 0x2F4A
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x5EC0
    lis 28, 0xE005
    ori 28, 28, 0xACFC
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4930
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk43_body_start:
    cmpi cr0, 0, 29, 0
    addis 10, 0, -17685
    lbzx 10, 31, 0
    bgt 1f
    subfeo 22, 11, 4
    extsb. 13, 14
    addi 6, 12, -18611
    1:
    blt 1f
    addis 23, 0, -7719
    rlwinm 21, 13, 2, 12, 27
    addis 15, 0, 4706
    addis 15, 0, -17652
    1:
    stwbrx 23, 31, 0
    sthbrx 2, 31, 0
    lha 13, 0(31)
    addis 12, 0, -17222
    sth 13, 0(31)
    stw 5, 0(31)
    subfeo. 3, 10, 4
    addis 12, 0, -1663
    addis 5, 0, 11581
    stwbrx 23, 31, 0
    lhz 9, 0(31)
    addis 4, 0, 26190
    addis 21, 0, 4687
    subfco. 2, 26, 4
    mulli 20, 6, 12973
    stwu 18, 0(31)
    addis 10, 0, 14786
    sthbrx 15, 31, 0
    sraw 9, 24, 3
    addis 21, 0, -19353
    lwbrx 22, 31, 0
    subfc 19, 24, 9
    lwzux 11, 31, 0
    lbz 23, 0(31)
    addis 26, 0, -13972
    stwbrx 21, 31, 0
    addis 4, 0, -24561
    lbzu 6, 0(31)
    lhzux 21, 31, 0
    lhax 26, 31, 0
    lwz 17, 0(31)
    eqv. 22, 14, 15
    stbx 26, 31, 0
    sthx 25, 31, 0
    addis 15, 0, -28122
    add. 19, 16, 9
    stbux 4, 31, 0
    lwzx 21, 31, 0
    sthx 22, 31, 0
    b 1f
    divwuo 15, 26, 29
    1:
    lhz 2, 0(31)
    addco. 16, 3, 21
    srawi 22, 7, 13
    srawi. 5, 6, 11
    subfc 2, 8, 22
    lhbrx 9, 31, 0
    addis 20, 0, 5263
    addis 19, 0, 32555
    orc 14, 11, 5
    addis 11, 0, -26683
    stwbrx 20, 31, 0
    stmw 5, 0(31)
    lhbrx 17, 31, 0
    divwu. 14, 24, 29
    subfe. 7, 8, 24
    slw. 12, 7, 6
    bge 1f
    mulli 16, 5, -4660
    subfme. 3, 23
    stwx 6, 31, 0
    addis 16, 0, 11019
    1:
    subfc. 13, 25, 14
    sthbrx 22, 31, 0
    bl 1f
    lwz 20, 0(31)
    1:
    addis 15, 0, -26292
    stbx 12, 31, 0
    lwz 23, 0(31)
    addis 4, 0, 21789
    addis 6, 0, 25921
    lbz 22, 0(31)
    divwu. 15, 13, 29
    addis 21, 0, -15998
    stwu 19, 0(31)
    xori 3, 21, 20792
    mulli 16, 14, 28033
    addic. 16, 17, -24588
    addis 22, 0, 26466
    srawi. 3, 18, 2
    sraw 16, 17, 16
    addis 11, 0, 1245
    and 3, 19, 21
    extsh 22, 20
    stwx 16, 31, 0
    stwx 24, 31, 0
    subfmeo 17, 4
    cmpli cr0, 0, 13, 9494
    stbx 18, 31, 0
    addc. 4, 7, 3
    rlwnm 3, 3, 19, 14, 28
    addic 21, 24, -11599
    lhau 22, 0(31)
    lwbrx 4, 31, 0
    or. 8, 18, 11
    sth 7, 0(31)
    stwbrx 7, 31, 0
    lwbrx 14, 31, 0
    lwzx 18, 31, 0
    cmpi cr0, 0, 23, -16986
    addis 17, 0, -2518
    mulhwu. 18, 22, 11
    andc 26, 8, 20
    andis. 8, 25, 44800
    addis 24, 0, 4450
    addo 14, 17, 8
    rlwinm 15, 4, 10, 4, 10
    lhbrx 12, 31, 0
    stw 15, 0(31)
    sthx 24, 31, 0
    addi 26, 11, 3971
    stmw 16, 0(31)
    addis 13, 0, 10462
    lhzux 6, 31, 0
    lbz 7, 0(31)
    mullw 9, 4, 9
    addis 19, 0, -19965
    addzeo. 2, 22
    addeo 21, 16, 14
    rlwnm 16, 7, 24, 1, 20
    stwux 14, 31, 0
    addi 2, 18, -19614
    addis 12, 0, 21353
    sthu 5, 0(31)
    cmpi cr0, 0, 20, -3576
    addeo 26, 8, 19
    oris 21, 13, 42205
    cmpli cr0, 0, 16, 14810
    lwzux 26, 31, 0
    addis 12, 0, 28406
    divwu 24, 11, 29
    addis 6, 0, 2390
    stbx 8, 31, 0
    oris 18, 3, 56080
    addis 13, 0, -17468
    addis 19, 0, 20199
    rlwinm 23, 21, 12, 27, 31
    stwu 12, 0(31)
    addzeo. 6, 26
    sth 11, 0(31)
    addis 14, 0, -26825
    andi. 3, 16, 21190
    addis 14, 0, 30977
    addis 13, 0, -14549
    stmw 18, 0(31)
    bge 1f
    and. 13, 3, 18
    1:
    addis 14, 0, -19333
    sthbrx 8, 31, 0
    cmpi cr0, 0, 22, -21321
    addis 23, 0, -30305
    stwx 3, 31, 0
    divwu 17, 3, 29
    lhbrx 21, 31, 0
    stmw 16, 0(31)
    xoris 22, 15, 3389
    oris 2, 20, 6059
    addic 8, 17, -14508
    orc. 6, 22, 26
    stb 26, 0(31)
    sraw. 20, 11, 3
    stb 13, 0(31)
    lhbrx 19, 31, 0
    rlwinm 23, 14, 18, 21, 15
    addi 13, 11, -21989
    extsh. 9, 24
    sthux 21, 31, 0
    stbx 25, 31, 0
    lwzx 22, 31, 0
    xoris 23, 19, 189
    lbzu 14, 0(31)
    lhzu 7, 0(31)
    lhzu 11, 0(31)
    lbz 26, 0(31)
    cmpli cr0, 0, 5, 29034
    cmpi cr0, 0, 19, -25931
    stmw 4, 0(31)
    lhaux 17, 31, 0
    divwu. 23, 18, 29
    bl 1f
    mulli 3, 17, -12993
    1:
    srawi. 5, 14, 18
    addis 18, 0, 27142
    mulhw. 23, 12, 9
    addo. 9, 3, 4
    oris 4, 14, 34200
    lhax 17, 31, 0
    stbx 26, 31, 0
    stbu 14, 0(31)
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
    .size run_chunk_43, .-run_chunk_43
    .section .note.GNU-stack,"",@progbits
