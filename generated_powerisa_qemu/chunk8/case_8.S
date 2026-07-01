    .text
    .align 2
    .globl run_chunk_8
    .type run_chunk_8, @function
run_chunk_8:
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
    lis 12, 0xE004
    ori 12, 12, 0xD3F4
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
    lis 11, 0xCC92
    lis 12, 0x0000
    ori 12, 12, 0x025F
    lis 13, 0xFFFE
    ori 13, 13, 0x5D50
    lis 14, 0x0800
    li 15, 0
    lis 16, 0xFFFE
    ori 16, 16, 0x5D50
    lis 17, 0xF474
    li 18, 0
    lis 19, 0xFFFE
    ori 19, 19, 0x5D50
    lis 20, 0xC9D7
    lis 21, 0xBB1D
    lis 22, 0xBE09
    ori 22, 22, 0xBBE0
    lis 23, 0xFFFF
    ori 23, 23, 0xE000
    lis 24, 0xFFFF
    ori 24, 24, 0xFFEA
    lis 25, 0xFFFE
    ori 25, 25, 0x5D50
    lis 26, 0x0000
    ori 26, 26, 0x00E0
    lis 27, 0xE001
    ori 27, 27, 0x4D40
    lis 28, 0xE004
    ori 28, 28, 0xD3F4
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4700
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk8_body_start:
    cmpi cr0, 0, 29, 0
    addi 22, 18, 19218
    addis 13, 0, 2969
    addis 15, 0, -3896
    mullw. 11, 17, 18
    sthu 3, 0(31)
    mulli 22, 26, 27189
    addis 2, 0, -9156
    lbzu 9, 0(31)
    lha 12, 0(31)
    mulli 12, 15, -15274
    addi 12, 24, 26562
    nego. 13, 19
    addis 15, 0, -16147
    addo 17, 20, 15
    addic 8, 16, -18081
    eqv 16, 13, 3
    andc. 7, 16, 25
    stw 22, 0(31)
    sthbrx 24, 31, 0
    lhzux 21, 31, 0
    lhbrx 2, 31, 0
    extsb. 15, 10
    xor. 2, 15, 15
    stbx 8, 31, 0
    stwx 26, 31, 0
    lbzx 11, 31, 0
    andi. 22, 14, 24296
    addis 12, 0, 9847
    addis 12, 0, -9785
    stwux 25, 31, 0
    subfe. 3, 4, 21
    stwux 22, 31, 0
    lha 21, 0(31)
    addis 9, 0, -25972
    subfmeo. 16, 14
    rlwimi 15, 4, 17, 27, 31
    lwzu 13, 0(31)
    lhzx 23, 31, 0
    addze 10, 14
    bl 1f
    sthbrx 26, 31, 0
    lbzx 11, 31, 0
    xoris 15, 24, 63547
    mullwo 11, 15, 6
    1:
    subfmeo. 22, 12
    stwx 12, 31, 0
    addis 14, 0, -22624
    addis 19, 0, -31272
    subfco. 6, 21, 3
    bne 1f
    andis. 9, 24, 44069
    mulhw. 17, 8, 3
    1:
    lhax 22, 31, 0
    subfic 5, 18, -7201
    xoris 21, 25, 23924
    addis 18, 0, 8733
    lbzu 23, 0(31)
    addis 6, 0, 5467
    lhzx 19, 31, 0
    oris 9, 20, 50493
    addis 17, 0, -22794
    rlwimi 11, 22, 21, 18, 18
    stwx 4, 31, 0
    addic 20, 7, -14658
    rlwimi 8, 16, 23, 19, 18
    sthux 26, 31, 0
    addis 21, 0, -30430
    lbzux 20, 31, 0
    addis 19, 0, 5930
    addis 11, 0, 26197
    subfic 2, 19, 21982
    lwz 16, 0(31)
    addic. 2, 16, -4420
    sthbrx 17, 31, 0
    slw 25, 25, 8
    addis 20, 0, -26083
    addis 12, 0, 21645
    lhzux 11, 31, 0
    lhbrx 2, 31, 0
    lhbrx 24, 31, 0
    lhzx 21, 31, 0
    sthu 2, 0(31)
    lhzu 9, 0(31)
    addc 16, 15, 25
    bge 1f
    lhbrx 10, 31, 0
    srawi. 18, 6, 20
    lwzx 19, 31, 0
    1:
    addis 25, 0, 8516
    blt 1f
    andc 19, 3, 20
    lhz 12, 0(31)
    sth 5, 0(31)
    sth 11, 0(31)
    1:
    lhbrx 9, 31, 0
    andis. 18, 23, 11068
    addis 21, 0, -24659
    subfco. 10, 23, 6
    lhzu 9, 0(31)
    andis. 20, 13, 43310
    cmpli cr0, 0, 11, 5771
    addis 8, 0, 24065
    lhaux 25, 31, 0
    lbzu 6, 0(31)
    addic 21, 21, 1098
    srw. 18, 11, 23
    addis 6, 0, -29192
    lbz 5, 0(31)
    addis 11, 0, 2692
    stbux 3, 31, 0
    addic. 17, 6, 25213
    sthu 17, 0(31)
    mulhw. 4, 25, 26
    srawi. 5, 15, 20
    addis 17, 0, -2774
    lbzux 24, 31, 0
    lha 7, 0(31)
    addis 4, 0, 27883
    lhz 12, 0(31)
    addis 12, 0, -32694
    stwu 12, 0(31)
    lha 25, 0(31)
    stw 26, 0(31)
    lwbrx 11, 31, 0
    addis 4, 0, 27584
    subfic 17, 13, 31868
    lbzux 20, 31, 0
    stb 5, 0(31)
    ori 3, 7, 16368
    lwzu 11, 0(31)
    addis 23, 0, 17912
    addis 18, 0, 14574
    rlwimi. 11, 3, 19, 2, 10
    addis 23, 0, -20996
    divwuo 9, 16, 29
    xoris 8, 25, 29441
    addis 6, 0, 6859
    stb 18, 0(31)
    addis 4, 0, -30843
    andi. 18, 12, 48298
    subfic 20, 25, -6290
    sthx 12, 31, 0
    srawi. 2, 23, 9
    addis 6, 0, 6362
    sthu 16, 0(31)
    cmp cr0, 0, 14, 17
    addis 14, 0, -27943
    stbu 17, 0(31)
    lhzx 2, 31, 0
    mullwo. 23, 17, 12
    xoris 12, 13, 6096
    subfme 23, 23
    cmpli cr0, 0, 18, 55334
    addis 15, 0, -4770
    lhaux 5, 31, 0
    divwuo. 19, 2, 29
    stwux 2, 31, 0
    addmeo. 17, 24
    sthbrx 20, 31, 0
    lhau 26, 0(31)
    addis 11, 0, 17390
    sth 22, 0(31)
    addis 19, 0, -7822
    subfzeo. 17, 26
    rlwinm. 17, 9, 12, 15, 21
    lhzx 11, 31, 0
    lhau 7, 0(31)
    addis 18, 0, 12274
    nand 16, 19, 19
    addis 3, 0, -20004
    mullw. 24, 10, 13
    lbz 24, 0(31)
    addis 7, 0, 28967
    addi 25, 3, -11170
    lbzux 26, 31, 0
    nego 24, 24
    cmp cr0, 0, 8, 3
    addis 6, 0, -15550
    xor 23, 17, 4
    addis 3, 0, 13873
    andi. 4, 11, 65141
    sthu 4, 0(31)
    lwzu 12, 0(31)
    addmeo 4, 3
    addis 21, 0, 4617
    stmw 15, 0(31)
    lhz 5, 0(31)
    lhax 21, 31, 0
    addis 13, 0, 22129
    xori 10, 12, 3347
    stb 6, 0(31)
    nor 3, 22, 19
    orc. 4, 4, 14
    subfc. 6, 4, 23
    oris 16, 2, 35145
    subf 2, 4, 15
    slw 26, 26, 22
    lhzux 24, 31, 0
    addis 22, 0, 23328
    ble 1f
    1:
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
    .size run_chunk_8, .-run_chunk_8
    .section .note.GNU-stack,"",@progbits
