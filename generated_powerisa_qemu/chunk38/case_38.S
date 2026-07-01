    .text
    .align 2
    .globl run_chunk_38
    .type run_chunk_38, @function
run_chunk_38:
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
    ori 12, 12, 0x8DF8
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x4F31
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
    ori 11, 11, 0x7835
    lis 12, 0xFFFF
    ori 12, 12, 0xFFF9
    lis 13, 0x2627
    ori 13, 13, 0xFCA0
    lis 14, 0xFFFF
    ori 14, 14, 0xFFFF
    lis 15, 0x0000
    ori 15, 15, 0x0080
    lis 16, 0x5CB0
    lis 17, 0x0000
    ori 17, 17, 0x3514
    lis 18, 0x0000
    ori 18, 18, 0x0078
    li 19, 0
    lis 20, 0x3514
    lis 21, 0x9DCA
    lis 22, 0xFFFF
    ori 22, 22, 0xC6E8
    lis 23, 0x60E9
    ori 23, 23, 0xEFFF
    lis 24, 0x7835
    ori 24, 24, 0x4A81
    lis 25, 0x0034
    ori 25, 25, 0x394B
    lis 26, 0x3514
    lis 27, 0xE001
    ori 27, 27, 0x5C40
    lis 28, 0xE005
    ori 28, 28, 0x8DF8
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x48E0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk38_body_start:
    cmpi cr0, 0, 29, 0
    rlwinm. 14, 13, 29, 24, 19
    lhzx 12, 31, 0
    lhzu 10, 0(31)
    stmw 20, 0(31)
    b 1f
    stb 10, 0(31)
    1:
    lwzx 19, 31, 0
    srw 15, 23, 7
    addmeo. 17, 5
    cmpi cr0, 0, 18, 8037
    addis 14, 0, 22509
    xori 5, 25, 37399
    stbux 21, 31, 0
    addis 9, 0, 23060
    srawi 21, 14, 24
    stw 18, 0(31)
    cmpli cr0, 0, 9, 55818
    addis 19, 0, 2410
    sthx 19, 31, 0
    addis 10, 0, -14686
    mulli 7, 17, 19535
    addis 10, 0, -27328
    addis 16, 0, -3280
    add. 9, 16, 25
    subfo. 20, 12, 9
    addis 19, 0, -12888
    addis 9, 0, 13856
    subfic 4, 12, -23906
    lhbrx 9, 31, 0
    divwu 14, 2, 29
    addis 6, 0, -28482
    addis 19, 0, -8064
    adde. 18, 11, 7
    lbzux 17, 31, 0
    sthux 14, 31, 0
    sthu 21, 0(31)
    addic. 16, 17, 16561
    lbzu 2, 0(31)
    oris 26, 10, 60957
    ori 26, 14, 9965
    stwx 19, 31, 0
    rlwnm 2, 15, 22, 8, 22
    stwu 13, 0(31)
    lhzux 7, 31, 0
    rlwinm 3, 3, 5, 12, 23
    lhzx 20, 31, 0
    sthx 24, 31, 0
    addis 10, 0, -15210
    addic. 3, 15, 18163
    addis 14, 0, 3041
    orc 19, 2, 24
    subfeo. 17, 18, 15
    andis. 11, 6, 60832
    subfic 21, 3, -7010
    stwux 8, 31, 0
    addis 15, 0, 7995
    addis 15, 0, -24584
    subf 3, 2, 13
    addze 10, 12
    cmpli cr0, 0, 12, 4835
    addis 6, 0, 5692
    stwu 21, 0(31)
    andc. 17, 12, 12
    addic 26, 9, 8893
    mullwo 21, 5, 13
    lhbrx 23, 31, 0
    addeo. 15, 26, 24
    nor 19, 6, 13
    stw 20, 0(31)
    lwzu 10, 0(31)
    rlwinm. 13, 19, 14, 14, 10
    sth 22, 0(31)
    andi. 23, 11, 29990
    lwz 20, 0(31)
    lha 9, 0(31)
    stwux 4, 31, 0
    stmw 13, 0(31)
    addis 4, 0, 10714
    subfic 10, 17, 25040
    addis 20, 0, -21967
    lhzx 10, 31, 0
    lbzu 24, 0(31)
    addis 10, 0, -18647
    sthu 13, 0(31)
    sthbrx 12, 31, 0
    addo. 23, 24, 22
    sthx 5, 31, 0
    oris 17, 26, 46949
    addis 18, 0, -26303
    lwbrx 13, 31, 0
    lhzu 24, 0(31)
    and. 24, 14, 8
    bl 1f
    stbu 24, 0(31)
    1:
    srw. 2, 3, 23
    rlwnm 3, 23, 19, 3, 24
    mullwo. 22, 3, 13
    rlwimi. 22, 5, 7, 25, 21
    stwux 20, 31, 0
    stbux 8, 31, 0
    orc. 23, 16, 15
    addic 22, 24, -24698
    addeo 16, 12, 11
    srawi 9, 9, 7
    addic 17, 3, 19170
    addis 4, 0, 12472
    lhz 20, 0(31)
    lhz 11, 0(31)
    addme. 15, 7
    sthu 21, 0(31)
    andi. 19, 9, 29672
    addis 18, 0, 25776
    nand 14, 3, 11
    rlwinm. 23, 17, 11, 0, 27
    addis 16, 0, 29750
    nand. 24, 3, 22
    subfme. 9, 23
    addis 16, 0, 12036
    mulli 19, 25, 17505
    stwx 7, 31, 0
    cmpli cr0, 0, 10, 12100
    mullwo. 16, 18, 15
    lbzux 16, 31, 0
    addis 16, 0, 22227
    oris 24, 25, 41318
    lwz 11, 0(31)
    lbz 24, 0(31)
    stmw 11, 0(31)
    addic 19, 2, -7638
    lwzu 3, 0(31)
    addis 21, 0, 21416
    subfme 16, 9
    addis 2, 0, 26710
    andis. 17, 9, 41091
    lbz 3, 0(31)
    addc 23, 2, 25
    lwz 26, 0(31)
    addze 21, 24
    lhz 13, 0(31)
    addis 10, 0, 12532
    addis 21, 0, 3808
    addis 18, 0, 27594
    lbzux 21, 31, 0
    addis 8, 0, 27683
    lwzux 18, 31, 0
    subfc 25, 17, 22
    subf. 19, 26, 17
    b 1f
    addis 9, 0, 21186
    srawi. 12, 17, 9
    1:
    andis. 22, 5, 8261
    lhbrx 8, 31, 0
    nor 2, 17, 2
    stwbrx 13, 31, 0
    lwzx 15, 31, 0
    lbzx 15, 31, 0
    lhzx 2, 31, 0
    nego 13, 4
    srawi. 13, 21, 20
    sthux 10, 31, 0
    lhzux 22, 31, 0
    sthu 18, 0(31)
    addis 13, 0, 11611
    addis 11, 0, 12756
    add. 12, 7, 17
    srawi 5, 9, 26
    lhzx 22, 31, 0
    andi. 12, 22, 31051
    addis 5, 0, 16410
    xoris 9, 5, 28973
    stwbrx 13, 31, 0
    stbux 13, 31, 0
    addis 10, 0, 28784
    stmw 19, 0(31)
    sthux 8, 31, 0
    addis 24, 0, 23126
    rlwinm 5, 5, 7, 27, 24
    rlwinm 19, 18, 12, 16, 16
    lhbrx 20, 31, 0
    stwu 26, 0(31)
    subfeo. 13, 21, 10
    subfic 20, 11, -19538
    stmw 25, 0(31)
    lbzx 20, 31, 0
    andi. 19, 13, 16241
    sthbrx 8, 31, 0
    lhzx 13, 31, 0
    addis 19, 0, -8197
    lhaux 3, 31, 0
    addis 24, 0, -25454
    stwbrx 3, 31, 0
    or. 8, 17, 19
    stbx 23, 31, 0
    lhzux 6, 31, 0
    lwzux 17, 31, 0
    b 1f
    lbzux 25, 31, 0
    1:
    cntlzw. 2, 10
    andc. 17, 17, 3
    stbx 23, 31, 0
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
    .size run_chunk_38, .-run_chunk_38
    .section .note.GNU-stack,"",@progbits
