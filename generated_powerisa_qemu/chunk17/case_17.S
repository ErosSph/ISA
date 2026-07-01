    .text
    .align 2
    .globl run_chunk_17
    .type run_chunk_17, @function
run_chunk_17:
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
    ori 12, 12, 0x0BC8
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x00CE
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
    lis 11, 0x942F
    lis 12, 0x0000
    ori 12, 12, 0x0077
    lis 13, 0xCEB3
    lis 14, 0x31CE
    lis 15, 0xA8E1
    lis 16, 0x0000
    ori 16, 16, 0x845A
    lis 17, 0xDBC2
    lis 18, 0xE54D
    ori 18, 18, 0x0005
    lis 19, 0x778B
    lis 20, 0x0000
    ori 20, 20, 0x778B
    lis 21, 0xFFFF
    ori 21, 21, 0xD40D
    lis 22, 0xDBC2
    ori 22, 22, 0x68D4
    li 23, 0
    lis 24, 0x0000
    ori 24, 24, 0x1656
    lis 25, 0x1700
    lis 26, 0x8966
    ori 26, 26, 0x0001
    lis 27, 0xE001
    ori 27, 27, 0x51C0
    lis 28, 0xE005
    ori 28, 28, 0x0BC8
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4790
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk17_body_start:
    cmpi cr0, 0, 29, 0
    mullw. 6, 6, 26
    bl 1f
    sthbrx 19, 31, 0
    srawi 13, 7, 25
    1:
    addis 2, 0, 10833
    addis 22, 0, 19103
    lbzx 15, 31, 0
    addis 5, 0, -16140
    addme. 2, 21
    add. 11, 23, 14
    lhzx 9, 31, 0
    stwu 21, 0(31)
    stbux 5, 31, 0
    addo. 9, 8, 26
    addzeo. 22, 18
    rlwimi 11, 2, 23, 9, 25
    nego. 24, 25
    addis 13, 0, -19164
    lhaux 25, 31, 0
    stwbrx 26, 31, 0
    subfze 4, 5
    addis 22, 0, 17025
    addis 4, 0, -26330
    addis 17, 0, -64
    cmpli cr0, 0, 11, 13053
    lha 2, 0(31)
    oris 15, 15, 9620
    addc 15, 21, 20
    ori 7, 3, 9397
    cntlzw. 17, 26
    subfo. 3, 12, 17
    b 1f
    stb 15, 0(31)
    lhbrx 23, 31, 0
    1:
    cmpi cr0, 0, 7, -31849
    sthu 2, 0(31)
    addis 25, 0, -31564
    srw 10, 8, 2
    lhaux 6, 31, 0
    stwux 11, 31, 0
    sthx 3, 31, 0
    stwu 4, 0(31)
    stwx 25, 31, 0
    addis 15, 0, 8176
    lwzu 5, 0(31)
    addze 2, 7
    lha 24, 0(31)
    lhzux 14, 31, 0
    andc. 6, 16, 11
    xori 24, 15, 49683
    xori 11, 19, 5186
    stwbrx 4, 31, 0
    stwu 20, 0(31)
    lwzx 6, 31, 0
    stwux 3, 31, 0
    stwx 12, 31, 0
    cntlzw 15, 26
    subfmeo 14, 25
    lha 11, 0(31)
    stwux 21, 31, 0
    addis 19, 0, 20988
    srw. 2, 6, 5
    addis 8, 0, 29617
    addis 9, 0, -26864
    subf 16, 25, 14
    lhaux 17, 31, 0
    lhaux 8, 31, 0
    subfic 20, 21, -18491
    addo. 3, 18, 25
    addis 13, 0, 31855
    stwux 22, 31, 0
    lhzx 13, 31, 0
    or. 9, 21, 17
    subfic 11, 22, -10401
    lhz 25, 0(31)
    addis 12, 0, 17964
    lbzx 24, 31, 0
    lbzx 24, 31, 0
    lhzx 14, 31, 0
    lbzux 12, 31, 0
    stwx 21, 31, 0
    lhau 15, 0(31)
    andis. 11, 15, 33207
    rlwinm. 4, 18, 17, 26, 26
    or. 15, 22, 9
    lbz 8, 0(31)
    addis 12, 0, 29725
    stbu 3, 0(31)
    addis 7, 0, 30594
    addis 24, 0, 3277
    addis 4, 0, -15950
    sth 6, 0(31)
    addi 11, 14, -29858
    rlwinm. 26, 20, 16, 18, 12
    rlwnm 7, 7, 8, 6, 28
    subfic 16, 11, -23045
    lhaux 2, 31, 0
    stbu 21, 0(31)
    divwuo 18, 20, 29
    addi 18, 18, -32673
    addic 3, 10, 14129
    stwux 16, 31, 0
    nand 3, 24, 11
    sth 9, 0(31)
    sth 6, 0(31)
    stb 13, 0(31)
    addis 24, 0, 15554
    subfeo. 6, 11, 19
    lbzux 4, 31, 0
    divwuo 13, 3, 29
    addis 19, 0, -19323
    subfeo. 7, 11, 19
    addis 18, 0, 2593
    sth 3, 0(31)
    srawi. 11, 15, 28
    lhaux 15, 31, 0
    addis 6, 0, 10147
    ori 9, 23, 64312
    addis 18, 0, 16856
    rlwinm 6, 16, 21, 7, 0
    xoris 5, 26, 26700
    stwbrx 21, 31, 0
    addic. 10, 9, -10593
    subfc 26, 21, 17
    sthu 21, 0(31)
    neg. 25, 20
    addis 7, 0, -29897
    divwo 21, 7, 29
    srw 26, 12, 7
    sthx 4, 31, 0
    divwuo. 16, 18, 29
    addis 18, 0, 11855
    lha 16, 0(31)
    xori 3, 10, 55251
    lbz 14, 0(31)
    stb 12, 0(31)
    divwu 6, 22, 29
    divwu 7, 20, 29
    addzeo 20, 26
    stwbrx 21, 31, 0
    sthx 21, 31, 0
    lhau 5, 0(31)
    bl 1f
    addis 2, 0, -27861
    addis 23, 0, -7076
    mullwo 6, 16, 6
    1:
    subfic 6, 10, -30431
    subfic 10, 7, -30759
    lwzu 10, 0(31)
    sthu 25, 0(31)
    lwz 10, 0(31)
    addis 19, 0, -4224
    addis 24, 0, -30033
    bge 1f
    sthbrx 6, 31, 0
    addic. 24, 6, 26965
    rlwnm 7, 8, 8, 10, 9
    sthu 5, 0(31)
    1:
    stbu 22, 0(31)
    subfeo 10, 22, 4
    sthu 25, 0(31)
    addis 17, 0, 27129
    bl 1f
    addis 6, 0, -11825
    subfe 10, 22, 4
    addis 21, 0, 2548
    1:
    addis 23, 0, 12817
    lhaux 16, 31, 0
    addis 12, 0, 5192
    subf 14, 5, 2
    lhax 12, 31, 0
    subfe. 25, 23, 15
    addic 6, 12, 12013
    nego. 19, 21
    lwbrx 17, 31, 0
    andi. 14, 9, 13095
    b 1f
    addze 25, 5
    lwzu 11, 0(31)
    1:
    addic 26, 12, -29814
    lhzx 13, 31, 0
    lhz 20, 0(31)
    sth 18, 0(31)
    lbz 2, 0(31)
    addic. 8, 16, -7930
    addis 26, 0, -21034
    rlwimi 25, 21, 28, 0, 23
    stwx 26, 31, 0
    stbux 3, 31, 0
    lwbrx 2, 31, 0
    lwbrx 5, 31, 0
    xoris 14, 8, 29221
    stbx 23, 31, 0
    lwzu 11, 0(31)
    stb 15, 0(31)
    lwz 6, 0(31)
    addis 5, 0, -9911
    lhz 22, 0(31)
    addis 3, 0, -30805
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
    .size run_chunk_17, .-run_chunk_17
    .section .note.GNU-stack,"",@progbits
