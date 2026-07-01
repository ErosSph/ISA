    .text
    .align 2
    .globl run_chunk_37
    .type run_chunk_37, @function
run_chunk_37:
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
    ori 12, 12, 0x87C4
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x41BF
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
    lis 11, 0xFFF3
    ori 11, 11, 0x927A
    lis 12, 0x0000
    ori 12, 12, 0x00BB
    lis 13, 0x59D4
    lis 14, 0x0048
    ori 14, 14, 0xDB6D
    lis 15, 0x2818
    ori 15, 15, 0xD60A
    lis 16, 0x0000
    ori 16, 16, 0xFFFF
    lis 17, 0xCB1F
    lis 18, 0x05BA
    ori 18, 18, 0x67B8
    lis 19, 0x0000
    ori 19, 19, 0x00AA
    lis 20, 0x0000
    ori 20, 20, 0x00AA
    lis 21, 0x1815
    lis 22, 0x0000
    ori 22, 22, 0x0FFF
    lis 23, 0x41BF
    lis 24, 0xB264
    lis 25, 0xBBFC
    lis 26, 0x3DFA
    lis 27, 0xE001
    ori 27, 27, 0x5BC0
    lis 28, 0xE005
    ori 28, 28, 0x87C4
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x48D0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk37_body_start:
    cmpi cr0, 0, 29, 0
    addis 8, 0, 1134
    stb 17, 0(31)
    lwz 25, 0(31)
    xoris 8, 22, 58652
    addis 6, 0, 22406
    orc. 19, 2, 7
    stbx 7, 31, 0
    bl 1f
    lhzx 9, 31, 0
    1:
    addis 13, 0, 1690
    lhau 4, 0(31)
    addis 21, 0, -9130
    stwbrx 22, 31, 0
    addis 19, 0, -26309
    lha 24, 0(31)
    sthbrx 24, 31, 0
    addis 26, 0, 11749
    mulhwu. 16, 17, 12
    stwx 3, 31, 0
    stbu 16, 0(31)
    subfic 18, 13, -20720
    bge 1f
    subfc. 21, 18, 26
    lwzux 16, 31, 0
    cmpli cr0, 0, 12, 7843
    1:
    addis 23, 0, -17869
    stb 2, 0(31)
    stw 3, 0(31)
    lwbrx 17, 31, 0
    lhau 10, 0(31)
    lwzux 8, 31, 0
    cmpli cr0, 0, 26, 53129
    xoris 12, 6, 52928
    addc 4, 2, 4
    lwzux 4, 31, 0
    lwzx 23, 31, 0
    stwx 13, 31, 0
    bl 1f
    addis 25, 0, -29146
    lhzx 9, 31, 0
    stbu 5, 0(31)
    1:
    mulhwu. 9, 20, 5
    stmw 3, 0(31)
    cmpi cr0, 0, 15, 22313
    sthbrx 13, 31, 0
    rlwinm 2, 23, 31, 25, 15
    subfme 15, 11
    oris 18, 10, 52641
    stw 19, 0(31)
    stb 25, 0(31)
    addis 20, 0, -32428
    lbzx 12, 31, 0
    stbx 18, 31, 0
    stbu 22, 0(31)
    lwzux 17, 31, 0
    sthux 26, 31, 0
    stwbrx 19, 31, 0
    divw 18, 11, 29
    stb 5, 0(31)
    subfmeo. 4, 17
    stbu 9, 0(31)
    lbzu 5, 0(31)
    lbzx 4, 31, 0
    extsh. 6, 13
    nand. 8, 13, 4
    rlwimi 17, 21, 12, 16, 5
    xoris 22, 22, 63570
    lhbrx 10, 31, 0
    stwux 2, 31, 0
    cmpli cr0, 0, 13, 8073
    addmeo 9, 16
    sthbrx 15, 31, 0
    addis 17, 0, -19733
    lhzu 14, 0(31)
    addo 4, 20, 3
    srawi. 17, 25, 31
    stwu 11, 0(31)
    xori 14, 7, 4670
    addis 8, 0, -20327
    lbzux 23, 31, 0
    stmw 13, 0(31)
    lwzux 20, 31, 0
    addis 12, 0, 30199
    xor. 12, 24, 15
    oris 20, 14, 23421
    add 19, 9, 18
    addic. 25, 18, 25907
    addis 20, 0, 32306
    lha 4, 0(31)
    stwbrx 7, 31, 0
    lwz 7, 0(31)
    cmpi cr0, 0, 18, 24539
    lbz 16, 0(31)
    lbzu 13, 0(31)
    cmpi cr0, 0, 16, 11209
    addis 6, 0, 26432
    addis 24, 0, -16052
    stb 14, 0(31)
    lhzx 26, 31, 0
    stmw 7, 0(31)
    subfc. 21, 10, 10
    subfeo. 13, 16, 4
    divwuo 16, 8, 29
    addis 6, 0, -14374
    addic 22, 21, -14616
    stw 17, 0(31)
    stmw 20, 0(31)
    adde 16, 25, 11
    lbz 5, 0(31)
    rlwimi. 26, 12, 13, 7, 18
    addis 6, 0, 17320
    subfic 24, 2, 31306
    lbzu 9, 0(31)
    lbzu 13, 0(31)
    subfmeo 10, 8
    lbzux 15, 31, 0
    add 21, 3, 5
    subfzeo. 18, 13
    xori 24, 14, 30653
    lhzx 6, 31, 0
    sthx 25, 31, 0
    xor 23, 21, 20
    rlwinm. 10, 2, 5, 29, 15
    addis 21, 0, 1792
    xoris 26, 20, 22618
    rlwimi. 24, 19, 12, 20, 0
    lwbrx 8, 31, 0
    andi. 3, 4, 64328
    bge 1f
    lhz 19, 0(31)
    1:
    lbzux 13, 31, 0
    lwzux 4, 31, 0
    sthu 3, 0(31)
    mulli 9, 15, 28080
    lhzux 17, 31, 0
    addis 26, 0, 13588
    eqv. 25, 9, 19
    addis 12, 0, -26607
    mullwo 13, 17, 11
    stbu 5, 0(31)
    addis 10, 0, -3600
    sthx 13, 31, 0
    srawi. 12, 2, 11
    srawi 12, 23, 28
    subfic 14, 17, 11078
    stb 22, 0(31)
    addis 19, 0, -30768
    stwu 24, 0(31)
    addis 17, 0, -22546
    sthu 25, 0(31)
    sthu 7, 0(31)
    andi. 24, 18, 19116
    subf 18, 26, 9
    addis 21, 0, 19026
    oris 10, 14, 57642
    lbzux 3, 31, 0
    lwzx 23, 31, 0
    sthux 11, 31, 0
    addis 21, 0, 17394
    bgt 1f
    rlwinm 3, 9, 12, 15, 8
    sth 17, 0(31)
    sthu 12, 0(31)
    rlwimi 15, 12, 30, 19, 7
    1:
    xoris 13, 9, 9746
    stbx 19, 31, 0
    addis 16, 0, 30773
    stwu 8, 0(31)
    stwbrx 16, 31, 0
    addis 6, 0, -22381
    addic. 21, 2, -21398
    stbx 24, 31, 0
    lbz 15, 0(31)
    stb 7, 0(31)
    stwu 26, 0(31)
    lwzu 20, 0(31)
    addis 21, 0, -4610
    addeo. 24, 16, 24
    lhz 17, 0(31)
    addic 3, 20, 14164
    addis 21, 0, -10501
    cmpi cr0, 0, 24, 30170
    sthux 24, 31, 0
    lhzx 14, 31, 0
    mullwo 19, 4, 4
    addis 18, 0, -23621
    addis 18, 0, -627
    stmw 16, 0(31)
    bne 1f
    addis 21, 0, -8583
    1:
    addic 2, 17, 6685
    lhzu 11, 0(31)
    nand. 14, 17, 21
    ble 1f
    addis 3, 0, -19755
    1:
    nego 3, 12
    lbzux 18, 31, 0
    addis 21, 0, -25142
    addis 16, 0, 23728
    addic 4, 4, -19782
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
    .size run_chunk_37, .-run_chunk_37
    .section .note.GNU-stack,"",@progbits
