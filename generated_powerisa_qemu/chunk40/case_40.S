    .text
    .align 2
    .globl run_chunk_40
    .type run_chunk_40, @function
run_chunk_40:
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
    ori 12, 12, 0x9A60
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xFBBE
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
    lis 11, 0xFBBE
    lis 12, 0x509C
    lis 13, 0x7A5F
    lis 14, 0x169F
    ori 14, 14, 0x8402
    lis 15, 0x96FA
    lis 16, 0x0000
    ori 16, 16, 0x8FD4
    lis 17, 0xFFFF
    ori 17, 17, 0xD603
    lis 18, 0xFBBE
    ori 18, 18, 0x29FE
    lis 19, 0x60F9
    lis 20, 0x0000
    ori 20, 20, 0x00AF
    lis 21, 0x6800
    lis 22, 0xB32F
    lis 23, 0xFFFF
    ori 23, 23, 0x86AB
    lis 24, 0xCE2C
    li 25, 0
    lis 26, 0xCADE
    ori 26, 26, 0x0358
    lis 27, 0xE001
    ori 27, 27, 0x5D40
    lis 28, 0xE005
    ori 28, 28, 0x9A60
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4900
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk40_body_start:
    cmpi cr0, 0, 29, 0
    stwu 2, 0(31)
    lbzux 8, 31, 0
    eqv. 6, 26, 20
    lhzux 23, 31, 0
    or 4, 23, 2
    rlwimi 12, 12, 0, 23, 18
    lbzux 18, 31, 0
    stbu 26, 0(31)
    ori 25, 3, 41954
    rlwinm. 15, 17, 17, 8, 15
    sthbrx 12, 31, 0
    addis 23, 0, 779
    lwzux 16, 31, 0
    subfe 18, 12, 6
    rlwnm 9, 19, 12, 5, 17
    stw 16, 0(31)
    stbux 3, 31, 0
    orc 2, 25, 12
    addis 25, 0, 23218
    stwu 10, 0(31)
    lwzu 10, 0(31)
    lhbrx 19, 31, 0
    sth 23, 0(31)
    andi. 4, 20, 39216
    lwzux 18, 31, 0
    lwzx 17, 31, 0
    addic. 23, 23, 16056
    lhzu 12, 0(31)
    subfic 10, 5, 18821
    rlwinm. 9, 8, 3, 0, 28
    addis 12, 0, -10814
    nego. 4, 5
    addis 7, 0, -15337
    stw 3, 0(31)
    stwx 4, 31, 0
    stbu 12, 0(31)
    addis 19, 0, -1231
    ori 2, 13, 1305
    subfzeo. 17, 26
    srawi 12, 18, 4
    addic. 18, 24, 20100
    addco 12, 26, 4
    sthbrx 22, 31, 0
    addic 12, 4, -13688
    lha 17, 0(31)
    lwzu 18, 0(31)
    adde 26, 21, 13
    eqv. 22, 9, 19
    subf. 23, 4, 3
    bl 1f
    mullw. 9, 10, 19
    1:
    addis 19, 0, 23214
    stwbrx 9, 31, 0
    sthx 21, 31, 0
    lhaux 2, 31, 0
    addi 5, 14, 324
    subfc. 3, 15, 4
    srawi 19, 4, 7
    addis 25, 0, -21021
    lwzu 4, 0(31)
    stbu 4, 0(31)
    addis 17, 0, 19764
    cmpli cr0, 0, 14, 1600
    sthbrx 10, 31, 0
    rlwinm 11, 20, 10, 26, 17
    xoris 24, 18, 14609
    cntlzw 15, 5
    subfc. 4, 17, 14
    sth 13, 0(31)
    stwu 21, 0(31)
    b 1f
    addis 8, 0, -15373
    subfmeo 21, 15
    addis 2, 0, -17441
    stwux 16, 31, 0
    1:
    b 1f
    addis 19, 0, -5865
    lhaux 4, 31, 0
    addis 14, 0, -26376
    addic. 9, 16, -22432
    1:
    addis 20, 0, 30385
    mulli 21, 6, -29430
    lhau 17, 0(31)
    addis 11, 0, 17564
    addi 5, 2, -14729
    subfo 9, 24, 19
    lhzx 20, 31, 0
    lwzu 18, 0(31)
    divwuo 25, 25, 29
    lha 25, 0(31)
    addis 19, 0, 4350
    addis 13, 0, -2708
    subf 11, 12, 23
    lhax 15, 31, 0
    sraw. 11, 16, 26
    stwux 25, 31, 0
    addis 3, 0, -22783
    add. 13, 5, 19
    stw 16, 0(31)
    sthbrx 5, 31, 0
    addis 4, 0, 26378
    b 1f
    cmpi cr0, 0, 7, 2087
    1:
    sthbrx 7, 31, 0
    addis 23, 0, 3946
    nand. 2, 9, 19
    stwu 7, 0(31)
    addmeo 15, 11
    addis 9, 0, -5531
    lhzux 8, 31, 0
    sthx 12, 31, 0
    srw. 9, 15, 9
    cntlzw 4, 18
    stbu 13, 0(31)
    addis 23, 0, -10986
    ori 2, 5, 16668
    lwzx 8, 31, 0
    lwbrx 9, 31, 0
    lbzu 2, 0(31)
    srawi 18, 24, 11
    sthbrx 15, 31, 0
    addis 7, 0, -21961
    cmpli cr0, 0, 18, 1245
    stwux 15, 31, 0
    lbz 6, 0(31)
    lwzu 21, 0(31)
    addis 7, 0, -23349
    sth 22, 0(31)
    rlwinm. 25, 4, 14, 21, 10
    lbzx 20, 31, 0
    addc 8, 9, 23
    addis 4, 0, -9648
    addis 17, 0, 29553
    addis 3, 0, -18384
    stwu 26, 0(31)
    sthux 3, 31, 0
    lhbrx 13, 31, 0
    oris 20, 8, 42799
    addis 3, 0, -17407
    nego. 17, 24
    xor. 21, 12, 23
    addi 12, 18, -9308
    lbzx 22, 31, 0
    addis 19, 0, -26791
    neg 11, 26
    sth 14, 0(31)
    lwz 19, 0(31)
    xori 17, 21, 65054
    lbzux 18, 31, 0
    stbux 10, 31, 0
    mulli 12, 14, -28069
    subfzeo. 6, 17
    rlwinm 9, 13, 3, 24, 5
    sthbrx 4, 31, 0
    subfzeo. 19, 12
    addis 25, 0, -2532
    subfe. 4, 3, 16
    lhz 16, 0(31)
    b 1f
    subfo 26, 4, 7
    xori 13, 10, 2703
    stwux 13, 31, 0
    1:
    cmpi cr0, 0, 4, -3514
    lwzx 8, 31, 0
    orc 5, 6, 20
    sraw. 22, 17, 6
    addis 20, 0, 9597
    addi 25, 10, 25784
    srawi 20, 14, 12
    addis 23, 0, 19748
    mullw 17, 2, 7
    lwbrx 7, 31, 0
    sthbrx 14, 31, 0
    lbzux 12, 31, 0
    lbzux 16, 31, 0
    divwu. 6, 21, 29
    addic 20, 3, -32084
    lbzux 12, 31, 0
    lhau 18, 0(31)
    lhz 4, 0(31)
    lha 4, 0(31)
    addis 7, 0, -29461
    stwx 2, 31, 0
    subf. 24, 22, 2
    mullwo. 20, 16, 22
    sthbrx 18, 31, 0
    stwux 7, 31, 0
    lha 24, 0(31)
    bl 1f
    lbzux 20, 31, 0
    lbzu 21, 0(31)
    xori 7, 10, 55610
    stw 22, 0(31)
    1:
    stwbrx 13, 31, 0
    sthx 13, 31, 0
    andis. 20, 4, 26829
    slw 8, 14, 6
    addi 12, 10, 2221
    addis 24, 0, 6728
    rlwinm 6, 26, 16, 11, 1
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
    .size run_chunk_40, .-run_chunk_40
    .section .note.GNU-stack,"",@progbits
