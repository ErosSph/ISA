    .text
    .align 2
    .globl run_chunk_26
    .type run_chunk_26, @function
run_chunk_26:
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
    ori 12, 12, 0x439C
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
    lis 11, 0x89EA
    lis 12, 0xEBEB
    lis 13, 0xFBEF
    ori 13, 13, 0x9FB0
    li 14, 0
    li 15, 0
    lis 16, 0x853F
    ori 16, 16, 0xF99E
    li 17, 0
    lis 18, 0xDC5D
    lis 19, 0x0000
    ori 19, 19, 0x5032
    li 20, 0
    lis 21, 0x23A3
    li 22, 0
    li 23, 0
    li 24, 0
    lis 25, 0x0000
    ori 25, 25, 0x1479
    lis 26, 0x8540
    lis 27, 0xE001
    ori 27, 27, 0x5640
    lis 28, 0xE005
    ori 28, 28, 0x439C
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4820
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk26_body_start:
    cmpi cr0, 0, 29, 0
    addis 13, 0, 24016
    stbx 11, 31, 0
    cmpli cr0, 0, 23, 16864
    stwu 6, 0(31)
    stbux 22, 31, 0
    cmpli cr0, 0, 10, 62228
    xori 2, 5, 54242
    stwbrx 10, 31, 0
    srawi 12, 17, 30
    stbx 4, 31, 0
    stb 2, 0(31)
    srawi. 2, 5, 0
    sth 16, 0(31)
    sthbrx 6, 31, 0
    lwzux 14, 31, 0
    lhzu 5, 0(31)
    addis 19, 0, -32189
    addis 23, 0, -11749
    lwbrx 13, 31, 0
    ble 1f
    addco 3, 15, 23
    addis 16, 0, 28370
    stbu 24, 0(31)
    divwuo 9, 26, 29
    1:
    stwbrx 25, 31, 0
    stwux 4, 31, 0
    lbzux 6, 31, 0
    stbx 26, 31, 0
    addis 15, 0, 27749
    andi. 22, 17, 48970
    lhzu 16, 0(31)
    lha 11, 0(31)
    stbu 24, 0(31)
    lhax 23, 31, 0
    andis. 19, 5, 14066
    rlwimi 7, 17, 11, 1, 0
    addmeo 16, 10
    lhbrx 17, 31, 0
    lbzx 4, 31, 0
    stb 3, 0(31)
    mulli 26, 18, 22525
    subfzeo 16, 11
    stw 10, 0(31)
    addic. 13, 15, -25143
    addis 2, 0, -26507
    neg. 13, 15
    stwu 6, 0(31)
    sthu 14, 0(31)
    sthux 17, 31, 0
    addis 14, 0, 1398
    oris 26, 4, 8588
    cmpli cr0, 0, 2, 25018
    addis 11, 0, -1958
    rlwimi. 18, 25, 3, 3, 11
    lbzux 4, 31, 0
    addis 16, 0, -32186
    addis 11, 0, 13600
    cmp cr0, 0, 26, 13
    addis 11, 0, -32748
    sthux 6, 31, 0
    subfic 18, 24, 2025
    stmw 10, 0(31)
    mullwo. 22, 4, 2
    sth 11, 0(31)
    stmw 25, 0(31)
    subfmeo. 21, 15
    lwzx 21, 31, 0
    nor. 22, 5, 19
    addme. 2, 16
    stmw 8, 0(31)
    addis 24, 0, 17751
    sth 17, 0(31)
    addis 16, 0, 6075
    addis 7, 0, 21523
    rlwinm 8, 4, 22, 26, 26
    subfeo. 6, 7, 19
    stbux 22, 31, 0
    stw 5, 0(31)
    addis 18, 0, -27787
    stbx 20, 31, 0
    lhbrx 13, 31, 0
    lwzx 16, 31, 0
    addco. 25, 7, 19
    stwx 22, 31, 0
    addi 12, 26, -16365
    cmpli cr0, 0, 22, 14520
    eqv. 23, 23, 4
    addis 23, 0, -6975
    lha 26, 0(31)
    cmpli cr0, 0, 22, 59363
    lhax 24, 31, 0
    addis 21, 0, 6870
    subfze. 8, 23
    lbzux 16, 31, 0
    b 1f
    nand. 25, 15, 7
    cmpli cr0, 0, 2, 63763
    stbx 10, 31, 0
    1:
    rlwinm 7, 11, 26, 8, 27
    sth 3, 0(31)
    addis 18, 0, -29904
    subfzeo 2, 16
    and. 23, 20, 12
    stmw 25, 0(31)
    lhz 11, 0(31)
    lwbrx 2, 31, 0
    addis 17, 0, 28267
    lhaux 2, 31, 0
    extsb 21, 24
    addis 22, 0, -26630
    lhz 10, 0(31)
    lhaux 22, 31, 0
    stwux 26, 31, 0
    xori 21, 11, 43928
    or 18, 15, 19
    lhaux 16, 31, 0
    cmpl cr0, 0, 6, 3
    stw 20, 0(31)
    addic 12, 24, -6160
    srawi. 25, 20, 14
    stbu 24, 0(31)
    stbux 23, 31, 0
    addis 20, 0, -72
    stb 16, 0(31)
    nego. 4, 2
    addis 22, 0, 13614
    lwz 11, 0(31)
    addis 4, 0, -13060
    lwz 11, 0(31)
    adde. 10, 3, 17
    stwu 19, 0(31)
    rlwinm 26, 17, 8, 4, 15
    addis 4, 0, -21068
    addis 6, 0, 9413
    stwbrx 25, 31, 0
    stbux 3, 31, 0
    lhaux 15, 31, 0
    lwz 25, 0(31)
    xori 8, 15, 40394
    subfme 13, 8
    rlwinm 16, 10, 13, 6, 26
    addic. 13, 4, -24839
    subfe. 17, 8, 4
    addco. 10, 4, 16
    sthu 26, 0(31)
    addis 14, 0, -10119
    stmw 17, 0(31)
    stb 2, 0(31)
    stbux 5, 31, 0
    stbux 24, 31, 0
    addis 12, 0, 14366
    addic. 22, 21, 12423
    stwu 3, 0(31)
    lhax 19, 31, 0
    lhzu 11, 0(31)
    rlwinm. 26, 20, 14, 5, 0
    subfze. 18, 25
    addis 24, 0, -29789
    rlwinm 5, 22, 19, 26, 9
    stbu 12, 0(31)
    subfzeo 3, 12
    eqv. 16, 10, 17
    addis 26, 0, 30143
    subfic 6, 16, 21587
    neg. 8, 22
    addis 24, 0, 28928
    lhau 15, 0(31)
    ori 16, 23, 57130
    stmw 8, 0(31)
    lwzux 26, 31, 0
    cmp cr0, 0, 26, 22
    addis 7, 0, 8903
    addmeo. 18, 11
    adde. 26, 17, 5
    addco. 16, 13, 2
    orc. 4, 14, 10
    cmpi cr0, 0, 14, 25312
    lhzu 15, 0(31)
    lwzux 17, 31, 0
    oris 9, 23, 16062
    addis 7, 0, -32121
    sthbrx 8, 31, 0
    beq 1f
    xoris 26, 2, 22981
    lbzx 7, 31, 0
    1:
    addc. 22, 9, 20
    addic 5, 9, 16432
    sthx 23, 31, 0
    sthux 13, 31, 0
    xoris 6, 9, 30930
    addis 20, 0, 6366
    subfc 16, 6, 12
    sthx 21, 31, 0
    add 19, 22, 6
    lhz 14, 0(31)
    addis 25, 0, 25014
    andis. 11, 12, 37323
    lhzux 13, 31, 0
    xoris 4, 20, 64668
    addis 17, 0, -24413
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
    .size run_chunk_26, .-run_chunk_26
    .section .note.GNU-stack,"",@progbits
