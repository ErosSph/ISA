    .text
    .align 2
    .globl run_chunk_9
    .type run_chunk_9, @function
run_chunk_9:
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
    ori 12, 12, 0xDA28
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x6E27
    ori 2, 2, 0x0001
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
    ori 11, 11, 0xD9C7
    lis 12, 0xD845
    ori 12, 12, 0x7C00
    lis 13, 0x5671
    lis 14, 0x92D9
    lis 15, 0xED5E
    lis 16, 0x8949
    ori 16, 16, 0x7C00
    li 17, 0
    lis 18, 0x2FF2
    lis 19, 0xE172
    lis 20, 0x0000
    ori 20, 20, 0x6724
    lis 21, 0xFFFF
    ori 21, 21, 0xED5E
    lis 22, 0x5B20
    lis 23, 0x8785
    lis 24, 0x0000
    ori 24, 24, 0x005E
    lis 25, 0xB1DB
    ori 25, 25, 0xD45E
    lis 26, 0x0000
    ori 26, 26, 0x6C80
    lis 27, 0xE001
    ori 27, 27, 0x4DC0
    lis 28, 0xE004
    ori 28, 28, 0xDA28
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4710
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk9_body_start:
    cmpi cr0, 0, 29, 0
    andis. 25, 17, 49406
    addze. 9, 12
    lwzu 23, 0(31)
    andc. 9, 11, 25
    sraw. 18, 19, 22
    addeo. 10, 8, 20
    stwu 26, 0(31)
    addic 20, 23, 22714
    addis 6, 0, 989
    mulhw. 17, 21, 25
    lwz 10, 0(31)
    cmpli cr0, 0, 10, 38885
    lhau 11, 0(31)
    subfme. 5, 13
    oris 19, 13, 19780
    addis 18, 0, -8773
    lha 16, 0(31)
    lwzux 19, 31, 0
    stbu 26, 0(31)
    addic. 25, 23, -29596
    adde 21, 12, 3
    addic 5, 26, 17567
    stbux 6, 31, 0
    oris 22, 13, 31255
    addze 13, 6
    addo 9, 18, 18
    subfo. 6, 13, 5
    addic. 22, 22, 26505
    bge 1f
    rlwimi 16, 18, 27, 20, 12
    1:
    extsb. 13, 5
    cmpi cr0, 0, 8, 30878
    addic. 20, 26, 12555
    stwx 22, 31, 0
    ble 1f
    lbzu 20, 0(31)
    lhaux 12, 31, 0
    1:
    addis 11, 0, -15408
    lhz 8, 0(31)
    sthbrx 16, 31, 0
    lbz 7, 0(31)
    extsb 24, 4
    lwz 6, 0(31)
    cmpli cr0, 0, 23, 40008
    lhzux 12, 31, 0
    lhzx 7, 31, 0
    lbzu 11, 0(31)
    stbux 11, 31, 0
    lhzx 6, 31, 0
    divwu 22, 5, 29
    srawi. 16, 16, 26
    nego. 20, 5
    divwo. 7, 10, 29
    sthx 8, 31, 0
    addis 12, 0, -10702
    lwbrx 14, 31, 0
    xor. 10, 9, 20
    lbzx 20, 31, 0
    stw 23, 0(31)
    addis 3, 0, 12971
    mullw. 21, 16, 17
    stw 3, 0(31)
    eqv 10, 3, 5
    stwux 20, 31, 0
    subfco. 12, 25, 14
    subfc. 6, 22, 16
    sthbrx 19, 31, 0
    srawi 20, 26, 1
    eqv 23, 6, 5
    subfic 24, 18, -21957
    b 1f
    eqv. 18, 21, 2
    addi 5, 18, -20583
    orc 9, 15, 10
    1:
    addis 25, 0, -3093
    addis 17, 0, -29615
    lbzu 24, 0(31)
    subfic 5, 20, -6259
    lhzx 9, 31, 0
    stbux 13, 31, 0
    xoris 25, 19, 44323
    stwu 6, 0(31)
    extsh. 22, 14
    sthx 14, 31, 0
    addis 9, 0, -5922
    xoris 26, 26, 61063
    rlwimi. 18, 19, 28, 19, 6
    srawi. 14, 12, 23
    blt 1f
    addis 4, 0, 10715
    1:
    subfe 7, 3, 22
    lhzx 3, 31, 0
    addis 12, 0, -4015
    b 1f
    stwx 16, 31, 0
    xor. 13, 3, 4
    addis 12, 0, -2275
    stw 13, 0(31)
    1:
    ori 23, 18, 11463
    lhz 22, 0(31)
    mulhw. 4, 14, 2
    srawi. 18, 11, 17
    xoris 7, 11, 46593
    extsb. 3, 4
    rlwnm. 9, 15, 22, 0, 9
    addis 15, 0, -25745
    lhzx 3, 31, 0
    addis 21, 0, 31964
    mulhw. 8, 7, 18
    addo 8, 21, 22
    lhbrx 24, 31, 0
    lbzu 20, 0(31)
    addis 3, 0, -21321
    lwzx 12, 31, 0
    mulhwu. 3, 5, 16
    addco 23, 25, 12
    lhax 13, 31, 0
    addis 26, 0, 15974
    lhzux 23, 31, 0
    lbzu 23, 0(31)
    sthux 15, 31, 0
    beq 1f
    srawi. 11, 18, 16
    mulli 24, 26, 6538
    1:
    bgt 1f
    or. 6, 11, 14
    lhzux 21, 31, 0
    xoris 12, 25, 25388
    lhzu 23, 0(31)
    1:
    stbu 19, 0(31)
    stw 16, 0(31)
    oris 15, 18, 21514
    stwux 3, 31, 0
    xori 4, 20, 31668
    lhzux 18, 31, 0
    or 22, 26, 11
    addis 7, 0, -5274
    addis 21, 0, 28373
    addis 22, 0, -22253
    cmpi cr0, 0, 8, -11496
    lbzu 13, 0(31)
    stw 21, 0(31)
    subfze 6, 16
    stbx 18, 31, 0
    cmpi cr0, 0, 17, 31122
    sthx 25, 31, 0
    stmw 17, 0(31)
    lhz 10, 0(31)
    addis 25, 0, 27573
    lwzx 2, 31, 0
    add. 20, 10, 18
    addis 9, 0, -13744
    sthu 5, 0(31)
    adde. 7, 19, 13
    mulli 14, 23, 19816
    srawi 22, 23, 24
    sthu 11, 0(31)
    addis 24, 0, -4250
    addis 14, 0, -27011
    addis 2, 0, 13894
    addme 14, 17
    lwbrx 23, 31, 0
    stbux 24, 31, 0
    sthux 22, 31, 0
    bge 1f
    lha 2, 0(31)
    addis 10, 0, 1477
    mulli 4, 12, -24221
    extsb 7, 9
    1:
    addis 26, 0, -29528
    divwuo 11, 23, 29
    stw 7, 0(31)
    subfic 21, 3, 15709
    divwu 19, 15, 29
    addc 15, 22, 9
    adde. 21, 17, 5
    rlwinm. 14, 18, 5, 19, 0
    addis 16, 0, -16744
    addis 18, 0, -11141
    rlwnm. 9, 3, 10, 25, 10
    addis 12, 0, 31267
    addis 17, 0, 16167
    subfic 16, 18, 18179
    cmpi cr0, 0, 13, 124
    sthbrx 6, 31, 0
    xoris 23, 9, 10745
    rlwinm 8, 7, 31, 18, 4
    b 1f
    addis 15, 0, -7274
    1:
    addis 3, 0, 27703
    mulhwu 9, 16, 26
    or. 26, 22, 10
    sthx 22, 31, 0
    addis 7, 0, -23229
    subfeo. 26, 7, 21
    addis 13, 0, -18302
    addis 8, 0, -25210
    srawi. 5, 14, 23
    b 1f
    stbu 9, 0(31)
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
    .size run_chunk_9, .-run_chunk_9
    .section .note.GNU-stack,"",@progbits
