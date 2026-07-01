    .text
    .align 2
    .globl run_chunk_32
    .type run_chunk_32, @function
run_chunk_32:
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
    ori 12, 12, 0x68C0
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xFAD5
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
    lis 11, 0x4702
    ori 11, 11, 0x6A01
    lis 12, 0x0001
    ori 12, 12, 0x2EDC
    lis 13, 0x0D42
    ori 13, 13, 0xC8FA
    lis 14, 0x68AD
    lis 15, 0x4702
    ori 15, 15, 0x6A01
    li 16, 0
    lis 17, 0x522D
    lis 18, 0x2531
    ori 18, 18, 0x6C9B
    lis 19, 0x0000
    ori 19, 19, 0x008E
    lis 20, 0x22DB
    lis 21, 0x0000
    ori 21, 21, 0x2EDC
    lis 22, 0x5CD3
    ori 22, 22, 0x7ED7
    lis 23, 0xCEB1
    lis 24, 0x36DF
    lis 25, 0xAA86
    lis 26, 0x4702
    lis 27, 0xE001
    ori 27, 27, 0x5940
    lis 28, 0xE005
    ori 28, 28, 0x68C0
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4880
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk32_body_start:
    cmpi cr0, 0, 29, 0
    sth 9, 0(31)
    lwzux 4, 31, 0
    lbz 17, 0(31)
    lhax 11, 31, 0
    lhzux 20, 31, 0
    lbz 9, 0(31)
    sthbrx 13, 31, 0
    sthbrx 15, 31, 0
    stwbrx 9, 31, 0
    stwbrx 17, 31, 0
    stw 18, 0(31)
    lbzu 13, 0(31)
    subfic 23, 25, 10063
    b 1f
    sthux 14, 31, 0
    stbu 26, 0(31)
    1:
    addis 2, 0, -12200
    subfc. 7, 16, 25
    stb 17, 0(31)
    stwu 22, 0(31)
    bl 1f
    srawi. 19, 17, 4
    addis 7, 0, 19051
    rlwimi. 18, 13, 6, 25, 9
    addis 7, 0, -823
    1:
    addis 14, 0, 19775
    stmw 23, 0(31)
    sthx 7, 31, 0
    stwbrx 11, 31, 0
    addis 17, 0, -15190
    mulhwu. 10, 25, 11
    lhaux 14, 31, 0
    addis 8, 0, -25108
    lbzux 10, 31, 0
    addis 5, 0, -2477
    sthbrx 22, 31, 0
    addis 23, 0, -19476
    subfc. 10, 26, 13
    sthux 6, 31, 0
    lhzux 4, 31, 0
    srawi. 13, 7, 0
    addis 6, 0, -12749
    lbzux 6, 31, 0
    subfic 26, 11, -10396
    lwzx 10, 31, 0
    lhzu 25, 0(31)
    addis 9, 0, 935
    mulli 21, 2, -12013
    cmpli cr0, 0, 24, 27788
    addis 21, 0, 9415
    addis 5, 0, 11078
    mullw 21, 9, 25
    stbux 24, 31, 0
    addis 14, 0, 24281
    addis 25, 0, -28584
    mulhwu. 8, 8, 26
    subfc 6, 13, 21
    subfic 21, 4, 5845
    lhaux 23, 31, 0
    addis 4, 0, -6636
    stbux 5, 31, 0
    extsb 18, 2
    slw. 24, 23, 3
    lhau 9, 0(31)
    lwzu 21, 0(31)
    sthx 9, 31, 0
    stbu 14, 0(31)
    addis 26, 0, -21338
    rlwinm. 19, 6, 25, 2, 1
    addi 6, 20, 29103
    stwbrx 21, 31, 0
    srw. 7, 16, 20
    stwu 12, 0(31)
    addi 18, 16, 27300
    addis 8, 0, 4395
    addic. 21, 14, 5066
    cntlzw 12, 3
    srawi 16, 20, 2
    lbz 16, 0(31)
    addco 18, 23, 4
    add. 17, 14, 4
    stbu 13, 0(31)
    addis 3, 0, -1113
    addis 22, 0, -32125
    sth 17, 0(31)
    cmpli cr0, 0, 15, 25713
    addis 18, 0, -28133
    xori 6, 12, 2160
    addis 21, 0, 21354
    sthx 25, 31, 0
    lha 25, 0(31)
    addi 18, 2, 3121
    nego. 17, 16
    oris 6, 17, 35690
    rlwimi. 11, 23, 11, 2, 9
    subfic 4, 26, -19750
    mullwo. 24, 16, 5
    lha 22, 0(31)
    xoris 11, 20, 33333
    divw 8, 12, 29
    addeo. 13, 8, 2
    addis 10, 0, 13911
    addzeo 20, 3
    addis 6, 0, 21497
    subfeo. 17, 8, 6
    addis 16, 0, -5876
    lhzux 21, 31, 0
    rlwimi. 5, 6, 19, 21, 10
    addis 11, 0, 7036
    blt 1f
    addis 8, 0, 8081
    1:
    stwbrx 4, 31, 0
    xori 10, 25, 43262
    cmpli cr0, 0, 11, 12172
    addis 7, 0, 31401
    cntlzw. 9, 23
    orc. 23, 20, 4
    lwzx 17, 31, 0
    lhbrx 26, 31, 0
    lha 20, 0(31)
    addeo 24, 13, 2
    lha 23, 0(31)
    mulli 15, 7, -19636
    lbz 4, 0(31)
    lbzux 13, 31, 0
    stmw 3, 0(31)
    addis 19, 0, 11265
    addis 17, 0, 21695
    srawi. 17, 5, 19
    addo 4, 23, 24
    stwbrx 10, 31, 0
    cntlzw. 2, 22
    addi 24, 18, 5992
    andi. 24, 8, 63113
    stwux 23, 31, 0
    addis 15, 0, 10421
    addo 18, 25, 13
    bge 1f
    addis 20, 0, -21431
    addis 18, 0, -14153
    addis 13, 0, 23707
    addi 23, 16, -21094
    1:
    rlwimi. 19, 7, 5, 27, 19
    sthbrx 13, 31, 0
    lbz 10, 0(31)
    addmeo. 11, 12
    lhau 7, 0(31)
    andi. 10, 8, 2831
    addis 23, 0, -31603
    subfze 24, 7
    mulhwu 20, 4, 2
    addis 23, 0, 27348
    addic. 8, 6, -27037
    addis 25, 0, 4178
    rlwinm. 13, 10, 5, 21, 23
    subfze 3, 17
    addeo 12, 10, 26
    mulli 12, 26, 10965
    oris 9, 21, 656
    subfo. 25, 8, 18
    addis 10, 0, -14671
    addis 2, 0, 6346
    rlwinm 9, 26, 9, 13, 27
    cmpi cr0, 0, 20, -20179
    lhzu 7, 0(31)
    addis 15, 0, 28536
    sthux 3, 31, 0
    xor. 2, 16, 5
    oris 16, 2, 31064
    stwu 17, 0(31)
    lhaux 20, 31, 0
    or 2, 18, 17
    cmpi cr0, 0, 12, -22747
    lbzx 2, 31, 0
    lhzx 16, 31, 0
    lhax 7, 31, 0
    lwzu 13, 0(31)
    oris 26, 20, 8626
    addic 19, 10, -148
    srawi 8, 10, 25
    adde. 6, 23, 8
    andis. 25, 16, 18496
    lhz 17, 0(31)
    stb 4, 0(31)
    extsh. 22, 18
    addmeo. 14, 25
    addi 26, 25, 10807
    lhaux 15, 31, 0
    lbz 10, 0(31)
    lwz 2, 0(31)
    rlwimi 17, 10, 26, 3, 12
    lbz 7, 0(31)
    extsh. 20, 25
    addis 2, 0, 8840
    addis 13, 0, 25454
    lwbrx 26, 31, 0
    lwbrx 4, 31, 0
    addis 16, 0, 21169
    andi. 16, 16, 29306
    lhbrx 24, 31, 0
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
    .size run_chunk_32, .-run_chunk_32
    .section .note.GNU-stack,"",@progbits
