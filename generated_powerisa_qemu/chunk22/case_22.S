    .text
    .align 2
    .globl run_chunk_22
    .type run_chunk_22, @function
run_chunk_22:
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
    ori 12, 12, 0x2ACC
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x00FF
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
    ori 11, 11, 0x29B6
    lis 12, 0x79B2
    ori 12, 12, 0xFFFF
    lis 13, 0x0400
    lis 14, 0x8E52
    lis 15, 0xEB32
    ori 15, 15, 0x3FB6
    li 16, 0
    lis 17, 0xFFFF
    lis 18, 0x0000
    ori 18, 18, 0x0079
    lis 19, 0xF99A
    lis 20, 0xC196
    lis 21, 0x34FC
    li 22, 0
    lis 23, 0xFFFF
    ori 23, 23, 0x78DE
    lis 24, 0x14CD
    ori 24, 24, 0x9799
    lis 25, 0xA297
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x5440
    lis 28, 0xE005
    ori 28, 28, 0x2ACC
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x47E0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk22_body_start:
    cmpi cr0, 0, 29, 0
    neg 13, 6
    sthbrx 21, 31, 0
    lha 10, 0(31)
    sth 7, 0(31)
    orc. 11, 23, 9
    addis 21, 0, 4470
    addis 17, 0, -29642
    addis 2, 0, 23855
    cmpi cr0, 0, 23, 25745
    addis 7, 0, -28066
    addis 25, 0, -11706
    addis 8, 0, -500
    addic 11, 16, 19061
    lhax 2, 31, 0
    stwx 13, 31, 0
    addis 23, 0, -15651
    stwu 3, 0(31)
    addis 12, 0, 30819
    stbx 2, 31, 0
    lwzu 21, 0(31)
    ori 2, 2, 41672
    addo. 8, 19, 12
    sthux 5, 31, 0
    addo 3, 11, 20
    mulli 5, 25, -28041
    rlwinm 21, 20, 12, 17, 29
    lwzux 19, 31, 0
    xori 15, 9, 32097
    addis 15, 0, -27726
    rlwinm. 4, 20, 28, 31, 30
    addis 23, 0, 12620
    subfc. 11, 9, 19
    stwu 6, 0(31)
    addzeo. 11, 26
    subfic 3, 9, 5748
    lbzu 9, 0(31)
    addis 18, 0, -2650
    subfeo. 24, 26, 23
    srawi. 6, 19, 12
    rlwinm. 8, 14, 2, 31, 19
    xoris 21, 8, 35625
    addis 20, 0, 7296
    lwzu 14, 0(31)
    stwu 18, 0(31)
    lhaux 8, 31, 0
    stbx 9, 31, 0
    addis 10, 0, 12455
    addmeo. 23, 2
    stbx 14, 31, 0
    subfe. 19, 15, 10
    addis 14, 0, -28304
    addis 21, 0, -17828
    srawi 26, 8, 3
    sthbrx 4, 31, 0
    or. 19, 21, 2
    cmpl cr0, 0, 15, 7
    or 17, 18, 2
    nand 9, 21, 19
    srawi 20, 20, 0
    xori 24, 7, 49796
    sthbrx 15, 31, 0
    andis. 16, 9, 60595
    addis 25, 0, 10838
    rlwimi 18, 13, 28, 20, 22
    oris 14, 26, 4345
    lhau 11, 0(31)
    rlwimi 6, 12, 22, 4, 24
    xori 21, 3, 12624
    stw 5, 0(31)
    b 1f
    mullw. 11, 5, 10
    sth 19, 0(31)
    1:
    add 19, 3, 24
    stb 21, 0(31)
    lhaux 9, 31, 0
    stwx 8, 31, 0
    addis 12, 0, -15939
    addis 7, 0, 14472
    bgt 1f
    nego. 12, 12
    stmw 17, 0(31)
    1:
    stb 25, 0(31)
    addis 13, 0, -3634
    rlwinm. 18, 19, 12, 27, 0
    lhz 2, 0(31)
    oris 24, 4, 24411
    addis 7, 0, -31169
    adde. 26, 10, 8
    lhzu 14, 0(31)
    sth 25, 0(31)
    subfze 24, 26
    addis 24, 0, 16367
    addis 21, 0, 25760
    stbx 18, 31, 0
    stwu 18, 0(31)
    rlwimi 14, 17, 3, 7, 25
    subfzeo. 14, 25
    addis 17, 0, -14190
    sthux 19, 31, 0
    addis 11, 0, -6380
    addc. 10, 4, 21
    sthux 8, 31, 0
    eqv. 20, 3, 7
    sth 14, 0(31)
    sth 2, 0(31)
    addis 10, 0, -29390
    cmpli cr0, 0, 15, 23432
    subfe 22, 13, 4
    andis. 17, 8, 54866
    bl 1f
    srawi. 17, 4, 31
    rlwnm 4, 24, 13, 29, 2
    sth 6, 0(31)
    1:
    addis 11, 0, 11644
    addis 23, 0, 9904
    lhax 7, 31, 0
    addis 2, 0, -26152
    lwzux 10, 31, 0
    lha 5, 0(31)
    cmpli cr0, 0, 18, 36958
    stb 22, 0(31)
    addis 18, 0, 7064
    lha 7, 0(31)
    xoris 2, 10, 40205
    addis 18, 0, -13425
    xoris 15, 2, 62272
    subfmeo. 7, 9
    sthu 9, 0(31)
    addis 8, 0, 13447
    addis 13, 0, 31830
    ori 18, 4, 44996
    stb 26, 0(31)
    rlwinm. 19, 2, 22, 27, 20
    lhzx 25, 31, 0
    stbux 11, 31, 0
    xori 5, 10, 32960
    addis 11, 0, 20158
    addis 3, 0, -10794
    addic. 6, 11, 29513
    lhbrx 22, 31, 0
    stmw 2, 0(31)
    addis 26, 0, 6446
    bge 1f
    addis 12, 0, -21830
    1:
    lbzux 23, 31, 0
    stw 21, 0(31)
    lwz 18, 0(31)
    mullwo 20, 7, 3
    addi 23, 9, -24988
    sthu 14, 0(31)
    addis 15, 0, 21405
    rlwinm. 10, 11, 13, 15, 3
    addis 16, 0, -2008
    addis 5, 0, -27496
    subfeo. 2, 3, 26
    lwzux 20, 31, 0
    mulhw 2, 4, 5
    addis 18, 0, 29230
    addis 15, 0, 1162
    addis 12, 0, 17505
    lwz 5, 0(31)
    srawi. 17, 21, 2
    addis 16, 0, 18807
    lbz 16, 0(31)
    sthbrx 11, 31, 0
    addis 11, 0, -25838
    stmw 17, 0(31)
    stw 25, 0(31)
    sthx 2, 31, 0
    stwux 11, 31, 0
    stbx 23, 31, 0
    addis 17, 0, -320
    addis 14, 0, -530
    sthbrx 24, 31, 0
    nego 18, 17
    lbzx 15, 31, 0
    addis 23, 0, 10984
    lha 9, 0(31)
    lhzu 19, 0(31)
    stwu 18, 0(31)
    stwu 20, 0(31)
    addis 25, 0, -23043
    sthux 8, 31, 0
    mulli 9, 2, 11322
    andis. 14, 11, 57499
    subfze 15, 16
    stbx 25, 31, 0
    rlwimi. 6, 9, 19, 20, 8
    andis. 19, 24, 5694
    addzeo 17, 23
    lhz 23, 0(31)
    cntlzw 14, 19
    lhbrx 21, 31, 0
    sthx 23, 31, 0
    andis. 12, 22, 16970
    addis 16, 0, 13907
    mulli 3, 8, 14217
    lbzux 21, 31, 0
    stwu 5, 0(31)
    addis 10, 0, 30878
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
    .size run_chunk_22, .-run_chunk_22
    .section .note.GNU-stack,"",@progbits
