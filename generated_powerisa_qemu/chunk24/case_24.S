    .text
    .align 2
    .globl run_chunk_24
    .type run_chunk_24, @function
run_chunk_24:
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
    ori 12, 12, 0x3734
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
    lis 11, 0x6BFB
    lis 12, 0x0000
    ori 12, 12, 0xFFFE
    lis 13, 0x7B00
    ori 13, 13, 0x0010
    lis 14, 0xFC27
    ori 14, 14, 0xFFFF
    li 15, 0
    lis 16, 0x1FE0
    ori 16, 16, 0x00FF
    lis 17, 0x30F6
    lis 18, 0x0000
    ori 18, 18, 0x133E
    lis 19, 0xFFFF
    ori 19, 19, 0xFFFF
    lis 20, 0x87D4
    lis 21, 0xFFFF
    ori 21, 21, 0xFFFF
    lis 22, 0x0050
    lis 23, 0xCF0A
    ori 23, 23, 0xFFFE
    lis 24, 0xFFFF
    ori 24, 24, 0xF15E
    lis 25, 0x9E60
    lis 26, 0x03D8
    lis 27, 0xE001
    ori 27, 27, 0x5540
    lis 28, 0xE005
    ori 28, 28, 0x3734
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4800
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk24_body_start:
    cmpi cr0, 0, 29, 0
    sthbrx 9, 31, 0
    xor 18, 5, 10
    sthux 17, 31, 0
    divwuo 22, 5, 29
    subfze 25, 11
    subfmeo. 11, 8
    sth 9, 0(31)
    sthu 21, 0(31)
    subfic 24, 13, -737
    addc. 10, 12, 11
    addic 9, 17, -7474
    stw 20, 0(31)
    sth 4, 0(31)
    lbzx 6, 31, 0
    rlwinm. 18, 20, 8, 15, 26
    addis 8, 0, 15038
    eqv 10, 10, 16
    ori 10, 24, 33888
    slw 20, 25, 3
    addis 22, 0, -6548
    xoris 9, 10, 16043
    stmw 12, 0(31)
    lhax 5, 31, 0
    sthu 18, 0(31)
    stbx 4, 31, 0
    rlwimi. 8, 6, 30, 4, 2
    extsh. 6, 4
    addis 9, 0, 24689
    addic. 23, 9, -25733
    lwbrx 17, 31, 0
    bl 1f
    addi 11, 9, -9641
    srawi 6, 2, 31
    addis 16, 0, 9361
    andc 10, 14, 2
    1:
    nego. 19, 14
    mulhw. 15, 23, 10
    divw 16, 10, 29
    addis 9, 0, 4253
    rlwimi. 17, 22, 15, 30, 26
    lwz 6, 0(31)
    stwu 11, 0(31)
    b 1f
    lbzu 13, 0(31)
    1:
    addis 21, 0, 18224
    bne 1f
    lhzux 2, 31, 0
    1:
    sthbrx 5, 31, 0
    subfic 20, 23, -29642
    lwzx 10, 31, 0
    rlwinm. 20, 9, 9, 4, 20
    addi 26, 12, 610
    divwo. 11, 2, 29
    stwbrx 16, 31, 0
    cntlzw 10, 15
    bne 1f
    ori 19, 16, 52512
    rlwinm 19, 22, 0, 14, 20
    1:
    divwuo 20, 24, 29
    addis 3, 0, -15983
    stwu 21, 0(31)
    rlwimi. 19, 2, 6, 17, 16
    sthbrx 5, 31, 0
    addi 13, 2, 20888
    addis 2, 0, 21694
    rlwimi. 20, 15, 8, 25, 25
    lbzu 13, 0(31)
    addis 16, 0, -179
    rlwinm. 13, 21, 27, 25, 7
    addis 5, 0, -22211
    addis 25, 0, -22617
    stb 22, 0(31)
    lhz 25, 0(31)
    nor. 4, 8, 8
    addis 19, 0, -638
    lwbrx 24, 31, 0
    cmpl cr0, 0, 26, 21
    sthu 10, 0(31)
    lwbrx 16, 31, 0
    addis 14, 0, -4579
    rlwinm. 19, 19, 22, 3, 7
    addis 7, 0, -31363
    addzeo 11, 5
    add. 23, 11, 22
    stmw 20, 0(31)
    addis 11, 0, 16126
    lhz 8, 0(31)
    addis 13, 0, -18094
    addis 3, 0, 589
    stwbrx 4, 31, 0
    cmpi cr0, 0, 3, 23073
    mulli 15, 6, 5809
    addis 8, 0, 19264
    stbu 14, 0(31)
    sthux 19, 31, 0
    lwzu 3, 0(31)
    lhz 8, 0(31)
    lha 2, 0(31)
    andi. 11, 26, 21219
    divwo 17, 15, 29
    stbx 7, 31, 0
    sthu 14, 0(31)
    beq 1f
    stbx 7, 31, 0
    1:
    lhzx 6, 31, 0
    subfmeo 8, 4
    addis 14, 0, 26364
    stbux 5, 31, 0
    stwx 4, 31, 0
    ori 14, 25, 54005
    sthu 5, 0(31)
    mulli 10, 12, 24584
    srawi 7, 8, 24
    andis. 20, 26, 55579
    stwux 14, 31, 0
    addis 10, 0, -31426
    lbzx 13, 31, 0
    addis 8, 0, -3461
    lwzu 9, 0(31)
    addis 19, 0, 8878
    stbu 21, 0(31)
    rlwimi. 24, 4, 18, 25, 26
    addis 3, 0, -10983
    andi. 13, 10, 24746
    lhzx 10, 31, 0
    cmpli cr0, 0, 2, 55126
    addi 3, 13, -6703
    lwzu 18, 0(31)
    addis 26, 0, 1968
    addis 23, 0, -741
    stwux 20, 31, 0
    addis 15, 0, 4542
    addis 10, 0, -26884
    addis 15, 0, 5839
    addi 25, 16, -15786
    addic. 13, 6, 12820
    andis. 26, 23, 44799
    addis 21, 0, -31705
    lbz 6, 0(31)
    addco. 25, 11, 16
    rlwinm 21, 14, 7, 30, 29
    addis 9, 0, -10989
    addis 3, 0, -17590
    addis 6, 0, -6943
    ori 18, 3, 27553
    lha 18, 0(31)
    andi. 9, 5, 62854
    stbx 13, 31, 0
    addis 6, 0, 9188
    lbzux 7, 31, 0
    ori 25, 24, 5145
    rlwimi. 4, 22, 1, 7, 17
    stmw 19, 0(31)
    lhax 21, 31, 0
    sthbrx 26, 31, 0
    xoris 4, 21, 13499
    addis 10, 0, 14894
    rlwimi 12, 19, 4, 13, 28
    addis 18, 0, -17182
    divwuo. 8, 21, 29
    lhzux 10, 31, 0
    andc. 13, 8, 10
    sthx 25, 31, 0
    rlwimi. 24, 16, 27, 24, 19
    andis. 26, 20, 43510
    lhau 5, 0(31)
    mulhwu. 16, 26, 7
    addis 17, 0, -10607
    stwu 8, 0(31)
    stbux 10, 31, 0
    addis 2, 0, -4873
    stwu 12, 0(31)
    stbx 9, 31, 0
    stwx 2, 31, 0
    addis 21, 0, 15319
    stwu 8, 0(31)
    lwzux 22, 31, 0
    nand 15, 21, 8
    rlwimi. 7, 17, 7, 5, 2
    srawi 9, 12, 25
    lwzux 12, 31, 0
    subfmeo 9, 16
    addis 2, 0, 10112
    and. 12, 25, 8
    addis 21, 0, 2099
    lbz 2, 0(31)
    stb 18, 0(31)
    addis 21, 0, 15179
    addzeo 20, 10
    addis 19, 0, 10244
    addis 18, 0, -17859
    or. 16, 6, 16
    addis 23, 0, -1357
    lhax 5, 31, 0
    lbzu 16, 0(31)
    addis 6, 0, -26155
    xoris 8, 14, 8162
    stbu 15, 0(31)
    addis 19, 0, -376
    addis 9, 0, 7188
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
    .size run_chunk_24, .-run_chunk_24
    .section .note.GNU-stack,"",@progbits
