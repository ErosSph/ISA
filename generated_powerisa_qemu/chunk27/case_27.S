    .text
    .align 2
    .globl run_chunk_27
    .type run_chunk_27, @function
run_chunk_27:
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
    ori 12, 12, 0x49D0
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x5413
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
    lis 11, 0x100A
    lis 12, 0x381E
    lis 13, 0x0000
    ori 13, 13, 0xFF8B
    lis 14, 0x0000
    ori 14, 14, 0xFF8B
    lis 15, 0x0000
    ori 15, 15, 0xFFFE
    lis 16, 0xF1B2
    lis 17, 0xA0A3
    lis 18, 0x0000
    ori 18, 18, 0xD21A
    lis 19, 0x84E2
    lis 20, 0x18DE
    lis 21, 0x0000
    ori 21, 21, 0xFF8B
    lis 22, 0x3E76
    li 23, 0
    lis 24, 0x7100
    lis 25, 0x61B6
    lis 26, 0x59C5
    ori 26, 26, 0x5413
    lis 27, 0xE001
    ori 27, 27, 0x56C0
    lis 28, 0xE005
    ori 28, 28, 0x49D0
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4830
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk27_body_start:
    cmpi cr0, 0, 29, 0
    bl 1f
    stwu 4, 0(31)
    1:
    addis 8, 0, -7987
    xoris 20, 7, 2669
    sthx 6, 31, 0
    xor. 15, 2, 4
    mullw. 7, 22, 14
    lha 11, 0(31)
    sthux 12, 31, 0
    addis 20, 0, 8688
    bne 1f
    addis 21, 0, 4028
    lhzu 14, 0(31)
    addis 18, 0, -3358
    addme. 25, 21
    1:
    addis 13, 0, -23917
    divwo. 7, 23, 29
    stmw 6, 0(31)
    andis. 5, 6, 52436
    addi 6, 26, -2089
    srawi. 12, 16, 12
    sthux 25, 31, 0
    addc 16, 2, 12
    mulli 4, 11, -24162
    rlwinm 26, 15, 14, 10, 23
    stbu 22, 0(31)
    addo 19, 23, 24
    addis 26, 0, 183
    xori 9, 19, 150
    lhzx 15, 31, 0
    andis. 23, 18, 29456
    sthux 26, 31, 0
    addme. 10, 8
    bl 1f
    rlwimi. 14, 19, 27, 26, 20
    addis 25, 0, -9401
    1:
    stbx 23, 31, 0
    mulhwu 14, 9, 10
    ori 25, 16, 41528
    stw 25, 0(31)
    sthbrx 3, 31, 0
    cmpli cr0, 0, 10, 54506
    stwx 9, 31, 0
    cntlzw 18, 14
    mulli 18, 16, 2833
    cmpli cr0, 0, 5, 31201
    bgt 1f
    stb 22, 0(31)
    1:
    sthx 6, 31, 0
    ori 14, 21, 31415
    subfeo. 22, 24, 6
    sth 8, 0(31)
    lwzux 16, 31, 0
    stmw 10, 0(31)
    addic 26, 16, 27241
    oris 18, 18, 62067
    lbzx 13, 31, 0
    srawi. 16, 20, 16
    mulli 5, 12, -16835
    lwzu 10, 0(31)
    stwbrx 25, 31, 0
    stbx 6, 31, 0
    sthx 26, 31, 0
    sthux 3, 31, 0
    addis 20, 0, -16059
    lbz 18, 0(31)
    lwzux 15, 31, 0
    stwx 25, 31, 0
    srawi 26, 5, 27
    addis 19, 0, 29655
    addis 26, 0, -8905
    stwux 7, 31, 0
    addis 25, 0, 2811
    addis 26, 0, -3749
    addis 21, 0, -21860
    stbux 10, 31, 0
    srawi. 22, 14, 6
    stbu 16, 0(31)
    xoris 26, 23, 14422
    stb 2, 0(31)
    lbzux 18, 31, 0
    subfic 11, 15, 5096
    addis 26, 0, -22755
    addis 16, 0, 24230
    lwzux 19, 31, 0
    sthux 11, 31, 0
    andi. 13, 25, 64227
    sth 15, 0(31)
    addis 2, 0, -19623
    lwzx 8, 31, 0
    lha 9, 0(31)
    addis 21, 0, -31387
    bl 1f
    lbz 5, 0(31)
    srw 4, 3, 17
    lbz 3, 0(31)
    1:
    addis 13, 0, 17178
    rlwimi. 24, 20, 7, 21, 26
    stb 20, 0(31)
    stbux 16, 31, 0
    stwux 26, 31, 0
    nego 4, 22
    addis 14, 0, -18217
    nand. 9, 18, 14
    addis 10, 0, -1041
    addis 25, 0, -24542
    addis 26, 0, 1504
    divwu. 7, 13, 29
    lwzx 5, 31, 0
    oris 20, 10, 18893
    lwbrx 12, 31, 0
    xori 25, 17, 35227
    stb 19, 0(31)
    addis 3, 0, 15453
    addi 8, 7, -20996
    oris 5, 2, 49520
    addme 23, 17
    lbzux 19, 31, 0
    addis 2, 0, 8676
    nand. 2, 6, 20
    andis. 12, 25, 62760
    lha 11, 0(31)
    addis 6, 0, 28818
    addic 3, 7, 18735
    addc 4, 18, 24
    xoris 8, 13, 47900
    nor. 20, 10, 25
    addis 2, 0, 6360
    stwux 18, 31, 0
    sth 12, 0(31)
    sthbrx 12, 31, 0
    addis 13, 0, -16614
    addi 26, 10, -14917
    cmpli cr0, 0, 5, 59707
    sthux 19, 31, 0
    addis 22, 0, -30056
    subfo. 14, 6, 11
    addis 13, 0, -16130
    lbzux 9, 31, 0
    stmw 20, 0(31)
    ble 1f
    cmpi cr0, 0, 13, 18980
    mulhw 24, 15, 20
    subfc 7, 13, 13
    addis 26, 0, -12457
    1:
    stwu 19, 0(31)
    stb 12, 0(31)
    lhax 24, 31, 0
    stwx 20, 31, 0
    rlwinm 22, 16, 27, 15, 27
    lbzux 25, 31, 0
    stbux 25, 31, 0
    subfo 26, 15, 5
    xoris 19, 21, 17892
    addis 8, 0, -9806
    sthbrx 3, 31, 0
    divwu 13, 15, 29
    stbu 19, 0(31)
    sthu 17, 0(31)
    lha 19, 0(31)
    stwu 25, 0(31)
    addis 19, 0, 14325
    rlwinm 5, 14, 26, 28, 14
    addis 3, 0, -31804
    subfc. 14, 19, 2
    addis 15, 0, -11493
    addis 22, 0, 31697
    stwu 24, 0(31)
    addze. 7, 17
    nor 17, 6, 10
    addis 3, 0, 31009
    mulhwu. 23, 25, 20
    addis 13, 0, -7556
    mulli 11, 19, 22682
    lhau 26, 0(31)
    stbu 15, 0(31)
    lwzu 8, 0(31)
    lhz 25, 0(31)
    addis 25, 0, 30313
    addis 7, 0, -29995
    lhbrx 12, 31, 0
    addis 6, 0, -9008
    lhz 3, 0(31)
    sthu 14, 0(31)
    addis 24, 0, 16057
    subfme. 6, 18
    addis 6, 0, 28034
    andi. 8, 10, 33153
    subfo. 18, 2, 23
    lhzx 22, 31, 0
    lwzu 3, 0(31)
    rlwimi. 14, 18, 1, 29, 27
    addis 21, 0, -29090
    stwu 13, 0(31)
    sthux 4, 31, 0
    lwz 7, 0(31)
    lwz 23, 0(31)
    subfme. 21, 19
    stwbrx 20, 31, 0
    sth 6, 0(31)
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
    .size run_chunk_27, .-run_chunk_27
    .section .note.GNU-stack,"",@progbits
