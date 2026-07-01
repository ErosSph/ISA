    .text
    .align 2
    .globl run_chunk_41
    .type run_chunk_41, @function
run_chunk_41:
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
    ori 12, 12, 0xA094
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x0077
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
    lis 11, 0x1DA0
    ori 11, 11, 0xFFFF
    lis 12, 0x0000
    ori 12, 12, 0x51F2
    li 13, 0
    lis 14, 0x169F
    ori 14, 14, 0x8402
    lis 15, 0xFFFF
    ori 15, 15, 0xFFFF
    lis 16, 0x0000
    ori 16, 16, 0x0002
    lis 17, 0x9A5D
    lis 18, 0x0000
    ori 18, 18, 0x0284
    lis 19, 0x8004
    ori 19, 19, 0xEF49
    li 20, 0
    lis 21, 0x2AE9
    ori 21, 21, 0xCA48
    li 22, 0
    lis 23, 0x4D24
    lis 24, 0x1A48
    lis 25, 0x0000
    ori 25, 25, 0xADFD
    lis 26, 0xE25F
    ori 26, 26, 0x0001
    lis 27, 0xE001
    ori 27, 27, 0x5DC0
    lis 28, 0xE005
    ori 28, 28, 0xA094
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4910
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk41_body_start:
    cmpi cr0, 0, 29, 0
    addis 2, 0, 4487
    addis 10, 0, 19492
    andis. 5, 16, 19213
    lwzu 4, 0(31)
    lwbrx 7, 31, 0
    addis 14, 0, -17227
    lhzx 18, 31, 0
    sthbrx 3, 31, 0
    rlwimi. 13, 5, 4, 14, 2
    addeo. 9, 26, 23
    extsb. 8, 12
    cmpi cr0, 0, 13, 16307
    subfic 24, 14, 13210
    lhax 5, 31, 0
    bl 1f
    rlwnm 25, 3, 15, 18, 19
    addis 8, 0, 8012
    subfeo. 12, 8, 11
    xori 3, 10, 30821
    1:
    rlwinm. 22, 26, 25, 7, 4
    lwzu 16, 0(31)
    srawi 3, 12, 13
    stwux 12, 31, 0
    eqv. 17, 7, 10
    sthux 21, 31, 0
    addi 8, 26, 32188
    rlwimi. 24, 20, 17, 18, 7
    cmpi cr0, 0, 16, -16833
    stmw 12, 0(31)
    addzeo 14, 2
    sthx 13, 31, 0
    subfc. 16, 5, 6
    sthbrx 15, 31, 0
    addis 8, 0, -4705
    bne 1f
    andc 12, 6, 11
    sth 12, 0(31)
    1:
    nor 19, 20, 9
    addi 18, 12, -4332
    lhzu 15, 0(31)
    mulli 9, 24, 24463
    addis 4, 0, 21692
    rlwimi 7, 3, 6, 7, 9
    xori 4, 10, 29814
    stbux 3, 31, 0
    rlwimi. 24, 13, 21, 11, 9
    lhbrx 14, 31, 0
    rlwimi. 6, 7, 5, 7, 27
    rlwinm. 17, 24, 17, 4, 30
    divwo. 20, 16, 29
    lbzx 25, 31, 0
    divwu. 19, 8, 29
    cmpi cr0, 0, 15, 6183
    addis 20, 0, -28208
    sthx 7, 31, 0
    rlwinm. 8, 21, 16, 21, 3
    eqv. 8, 7, 23
    lbzu 24, 0(31)
    addic. 26, 15, -13216
    sthx 25, 31, 0
    mulli 2, 19, -10890
    mullw. 13, 13, 11
    stb 3, 0(31)
    neg. 13, 22
    addis 5, 0, -23296
    nego 23, 12
    andis. 3, 2, 35379
    addis 3, 0, -3472
    srawi. 3, 16, 15
    addis 14, 0, -11639
    addmeo 23, 2
    neg. 20, 15
    cmpl cr0, 0, 15, 9
    sth 17, 0(31)
    stbux 2, 31, 0
    addis 5, 0, 18594
    lbz 11, 0(31)
    stwu 14, 0(31)
    addis 24, 0, -6809
    rlwimi. 25, 9, 31, 4, 23
    sthx 21, 31, 0
    rlwimi 26, 26, 0, 7, 15
    addis 17, 0, 30133
    srw. 8, 7, 26
    lhau 12, 0(31)
    subf 26, 7, 22
    addis 6, 0, -19205
    nor. 14, 5, 11
    rlwimi. 8, 13, 23, 23, 27
    srawi. 25, 3, 25
    addis 2, 0, 13612
    lbzux 22, 31, 0
    lwzu 23, 0(31)
    lhz 12, 0(31)
    divwuo. 19, 19, 29
    lhz 7, 0(31)
    rlwimi. 13, 22, 31, 17, 20
    addis 22, 0, -27119
    lwzx 12, 31, 0
    cmpl cr0, 0, 2, 14
    mullw 16, 14, 25
    addi 13, 15, -28244
    cmpi cr0, 0, 15, 32082
    lwbrx 16, 31, 0
    sthbrx 3, 31, 0
    lwzx 17, 31, 0
    addmeo 22, 6
    or 4, 6, 5
    stbx 3, 31, 0
    cntlzw 17, 9
    lbzu 3, 0(31)
    stwu 12, 0(31)
    stwu 3, 0(31)
    cmpi cr0, 0, 17, 15278
    addis 26, 0, 24441
    addis 20, 0, 15554
    subfic 26, 21, 15830
    divwo 6, 15, 29
    addze 26, 9
    lbzu 7, 0(31)
    lhau 12, 0(31)
    mullw. 20, 23, 19
    sthu 16, 0(31)
    lhaux 8, 31, 0
    stwu 18, 0(31)
    lwzux 26, 31, 0
    bl 1f
    sthu 6, 0(31)
    addis 4, 0, 18756
    1:
    lhax 22, 31, 0
    stw 3, 0(31)
    nego 11, 9
    lhau 14, 0(31)
    addis 3, 0, -32711
    lhbrx 22, 31, 0
    addme. 17, 11
    addis 6, 0, 4981
    lhau 4, 0(31)
    addis 8, 0, 13473
    lhz 12, 0(31)
    neg. 7, 17
    lhbrx 7, 31, 0
    addis 3, 0, 12387
    addis 22, 0, 31075
    addis 4, 0, -25056
    stb 20, 0(31)
    lwzx 10, 31, 0
    rlwinm. 6, 25, 2, 2, 11
    addo. 12, 10, 23
    bge 1f
    lhzx 18, 31, 0
    stwx 8, 31, 0
    lbzu 11, 0(31)
    lwz 9, 0(31)
    1:
    cmpli cr0, 0, 13, 17957
    lha 11, 0(31)
    lwzx 16, 31, 0
    andc 23, 20, 10
    addis 17, 0, 27737
    lwzx 11, 31, 0
    lbzux 23, 31, 0
    addis 25, 0, 11701
    andis. 9, 18, 29314
    lwz 2, 0(31)
    stwux 16, 31, 0
    lhzu 19, 0(31)
    sth 10, 0(31)
    lwzu 2, 0(31)
    addis 2, 0, -31515
    lbzux 23, 31, 0
    bl 1f
    addis 7, 0, 21616
    addis 15, 0, 10757
    srawi 20, 17, 24
    1:
    blt 1f
    stbux 7, 31, 0
    subf 18, 19, 11
    addeo. 16, 7, 2
    orc. 24, 21, 18
    1:
    lbz 14, 0(31)
    rlwimi 16, 22, 10, 28, 6
    andi. 8, 11, 28837
    xoris 23, 19, 44400
    lhzu 6, 0(31)
    lhaux 16, 31, 0
    stwbrx 14, 31, 0
    subf 5, 15, 11
    addis 9, 0, 5051
    orc. 19, 26, 20
    subfze 15, 2
    addis 17, 0, 20040
    addis 12, 0, 31162
    addis 16, 0, -20899
    addic 16, 18, 13727
    addis 26, 0, 24238
    sthux 26, 31, 0
    rlwinm. 13, 12, 2, 16, 0
    stb 26, 0(31)
    ori 6, 9, 44709
    lwz 14, 0(31)
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
    .size run_chunk_41, .-run_chunk_41
    .section .note.GNU-stack,"",@progbits
