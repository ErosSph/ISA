    .text
    .align 2
    .globl run_chunk_3
    .type run_chunk_3, @function
run_chunk_3:
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
    lis 12, 0xE004
    ori 12, 12, 0xB4F0
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xF29A
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
    lis 11, 0xFFFF
    ori 11, 11, 0xD201
    lis 12, 0x8FCB
    lis 13, 0xFFFE
    ori 13, 13, 0xED63
    lis 14, 0xFFFF
    ori 14, 14, 0x5B97
    lis 15, 0xFFFF
    ori 15, 15, 0xBF7F
    lis 16, 0x98E9
    ori 16, 16, 0x34CE
    lis 17, 0x0000
    ori 17, 17, 0x0427
    lis 18, 0x0000
    ori 18, 18, 0x0001
    lis 19, 0x6582
    li 20, 0
    lis 21, 0x2008
    lis 22, 0x1C44
    lis 23, 0x0AFA
    ori 23, 23, 0x1E7B
    lis 24, 0x0000
    ori 24, 24, 0x1D12
    lis 25, 0x0000
    ori 25, 25, 0x0924
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x4AC0
    lis 28, 0xE004
    ori 28, 28, 0xB4F0
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x46B0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk3_body_start:
    cmpi cr0, 0, 29, 0
    mulhw 6, 8, 14
    sthux 5, 31, 0
    andc. 18, 26, 9
    lhaux 3, 31, 0
    addze 16, 25
    lhzu 11, 0(31)
    stb 15, 0(31)
    lwzx 26, 31, 0
    andi. 17, 25, 33407
    adde. 4, 5, 25
    lbz 10, 0(31)
    stwux 16, 31, 0
    stwu 20, 0(31)
    addeo. 7, 24, 7
    subfe. 6, 25, 6
    rlwimi 9, 20, 6, 12, 16
    subfc 9, 4, 9
    stmw 11, 0(31)
    addic 17, 10, 17040
    or 22, 13, 5
    orc. 18, 3, 26
    divwuo. 22, 13, 29
    lhax 23, 31, 0
    addco 17, 11, 10
    subfmeo. 15, 7
    subfmeo 4, 11
    addzeo. 9, 16
    addo. 22, 18, 19
    divwu 2, 21, 29
    xor 6, 7, 4
    eqv 3, 6, 7
    subfic 19, 17, -32002
    xoris 7, 19, 25435
    addic. 5, 5, -18091
    or. 8, 14, 11
    oris 7, 10, 3831
    subfo. 18, 3, 25
    lwzux 6, 31, 0
    cmpl cr0, 0, 9, 20
    lhz 13, 0(31)
    divwuo 25, 6, 29
    subfco. 24, 19, 10
    addc 19, 22, 12
    add 9, 20, 12
    rlwinm. 6, 19, 7, 27, 17
    mullw 10, 17, 7
    adde 26, 26, 21
    neg. 17, 10
    rlwinm 18, 4, 15, 0, 28
    stwx 25, 31, 0
    subfo 11, 7, 8
    addco. 25, 16, 14
    nego 6, 5
    cntlzw. 17, 24
    slw. 16, 11, 24
    xor. 20, 10, 13
    divwu. 21, 18, 29
    addzeo 2, 10
    divwo 4, 25, 29
    addme 7, 20
    lwz 9, 0(31)
    sthu 8, 0(31)
    srw. 22, 21, 9
    divwo. 10, 13, 29
    rlwimi. 11, 22, 29, 11, 13
    mullwo 13, 15, 15
    mullw. 18, 25, 5
    lbzx 15, 31, 0
    subfme. 25, 26
    and. 14, 15, 15
    lhzx 6, 31, 0
    sraw 17, 11, 14
    lwzu 22, 0(31)
    addmeo. 21, 15
    orc 14, 16, 14
    lbzu 14, 0(31)
    sthbrx 11, 31, 0
    mulli 3, 13, 2609
    rlwnm. 25, 11, 17, 13, 20
    nor 18, 21, 23
    extsb. 5, 9
    subfzeo 21, 19
    addme. 18, 4
    nor. 17, 25, 22
    sth 5, 0(31)
    subfc. 24, 21, 15
    lwbrx 12, 31, 0
    ori 17, 10, 2560
    eqv. 18, 3, 19
    extsb 3, 23
    divw. 24, 21, 29
    add. 20, 15, 16
    xori 20, 24, 26702
    andc 23, 12, 18
    subf. 6, 13, 3
    stbx 15, 31, 0
    cntlzw 23, 17
    rlwnm 7, 17, 12, 19, 31
    mulhwu. 13, 15, 25
    cmpi cr0, 0, 20, 12607
    addc. 17, 19, 25
    addo 9, 10, 23
    sraw. 22, 10, 23
    and 23, 15, 24
    andis. 7, 14, 52818
    subfe 22, 11, 5
    extsh 12, 16
    stbux 7, 31, 0
    lhzux 18, 31, 0
    subfze 10, 2
    subfco 25, 2, 14
    sthx 3, 31, 0
    subfzeo. 22, 11
    addis 3, 0, -7723
    nand. 21, 3, 18
    lhbrx 18, 31, 0
    cmp cr0, 0, 14, 6
    subfeo. 21, 8, 2
    cmpli cr0, 0, 26, 47038
    mulhwu 4, 17, 19
    srawi. 10, 12, 6
    addze. 10, 18
    extsh. 21, 3
    srawi 25, 22, 18
    stw 19, 0(31)
    nego. 17, 19
    neg 10, 2
    stwbrx 15, 31, 0
    addeo 11, 10, 18
    mullwo. 14, 23, 4
    slw 26, 4, 18
    subfze. 6, 25
    lhau 10, 0(31)
    subfme 26, 12
    mulhw. 15, 25, 21
    nand 8, 18, 26
    stbu 14, 0(31)
    lbzux 13, 31, 0
    addmeo 16, 10
    divw 21, 8, 29
    lha 16, 0(31)
    srw 18, 26, 5
    addi 26, 24, -15770
    subfeo 15, 6, 5
    subf 2, 2, 15
    andc 3, 2, 2
    lhaux 5, 31, 0
    lhau 23, 0(31)
    stw 24, 0(31)
    oris 17, 16, 20334
    addis 3, 0, 19460
    bl 1f
    stbux 16, 31, 0
    and 4, 6, 8
    addis 25, 0, 19086
    subfmeo 4, 7
    1:
    lhaux 2, 31, 0
    lhzu 23, 0(31)
    stb 2, 0(31)
    addis 25, 0, -22249
    addis 20, 0, 21356
    cmpi cr0, 0, 6, -29827
    addis 12, 0, -15651
    lhzx 18, 31, 0
    xor. 3, 22, 7
    lhz 13, 0(31)
    addis 5, 0, -21103
    rlwimi 22, 7, 5, 30, 25
    addis 16, 0, -2981
    stbux 23, 31, 0
    subfzeo. 19, 10
    andis. 23, 23, 4540
    lhau 5, 0(31)
    addis 5, 0, 12856
    stwx 7, 31, 0
    divw. 18, 14, 29
    sthx 14, 31, 0
    addis 18, 0, -11058
    addis 19, 0, 8440
    addis 14, 0, 3884
    sthux 22, 31, 0
    stwbrx 6, 31, 0
    stbux 19, 31, 0
    ble 1f
    addi 24, 15, -681
    sthbrx 3, 31, 0
    lwzx 2, 31, 0
    1:
    sthu 24, 0(31)
    subfo. 12, 6, 9
    subfic 2, 18, -15717
    andi. 4, 7, 33428
    stb 9, 0(31)
    stbu 17, 0(31)
    stbx 19, 31, 0
    addis 8, 0, 15561
    stwux 9, 31, 0
    addis 10, 0, 20707
    addis 19, 0, 5128
    rlwinm. 13, 17, 6, 12, 13
    lhzu 19, 0(31)
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
    .size run_chunk_3, .-run_chunk_3
    .section .note.GNU-stack,"",@progbits
