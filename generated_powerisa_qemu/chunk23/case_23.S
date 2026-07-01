    .text
    .align 2
    .globl run_chunk_23
    .type run_chunk_23, @function
run_chunk_23:
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
    ori 12, 12, 0x3100
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xFAEC
    ori 2, 2, 0x7A91
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
    lis 11, 0x9B12
    li 12, 0
    lis 13, 0x7C56
    lis 14, 0x0000
    ori 14, 14, 0x0003
    lis 15, 0xFFFF
    ori 15, 15, 0xFF00
    lis 16, 0x3653
    lis 17, 0x2AE8
    lis 18, 0x0140
    lis 19, 0x162E
    lis 20, 0xFFFF
    li 21, 0
    lis 22, 0x0000
    ori 22, 22, 0x8A00
    li 23, 0
    lis 24, 0x3FEF
    lis 25, 0xA5FD
    lis 26, 0x192E
    lis 27, 0xE001
    ori 27, 27, 0x54C0
    lis 28, 0xE005
    ori 28, 28, 0x3100
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x47F0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk23_body_start:
    cmpi cr0, 0, 29, 0
    addis 8, 0, -22241
    lwbrx 20, 31, 0
    addis 9, 0, 4855
    sthu 13, 0(31)
    ori 16, 6, 26278
    sthx 12, 31, 0
    addis 8, 0, -9872
    srawi 10, 6, 17
    sth 23, 0(31)
    addis 10, 0, -6672
    addis 7, 0, 16697
    sthx 4, 31, 0
    addmeo 21, 18
    stwux 2, 31, 0
    stwx 8, 31, 0
    stbu 10, 0(31)
    subfmeo. 2, 17
    subfic 22, 18, 1486
    addic. 4, 21, -26113
    lhau 23, 0(31)
    rlwinm. 10, 5, 13, 31, 29
    addc. 10, 11, 7
    addis 2, 0, 26958
    addis 13, 0, 25153
    addic 9, 9, 20075
    addis 25, 0, -17873
    lhaux 6, 31, 0
    subfme 25, 16
    or 13, 14, 17
    lhzux 7, 31, 0
    stbu 26, 0(31)
    lhzu 9, 0(31)
    sraw. 18, 9, 11
    xori 3, 18, 58197
    ori 3, 5, 3388
    sthbrx 12, 31, 0
    addis 17, 0, 8248
    sthx 16, 31, 0
    stb 17, 0(31)
    addis 14, 0, 1635
    addi 26, 16, -418
    lwzx 9, 31, 0
    stwux 20, 31, 0
    addis 24, 0, -20967
    rlwinm. 15, 22, 30, 10, 4
    addi 16, 11, 5095
    lhz 17, 0(31)
    addo 16, 5, 25
    stmw 17, 0(31)
    mulli 5, 8, -10224
    or. 8, 12, 25
    sthux 26, 31, 0
    andis. 2, 5, 13682
    addis 22, 0, -5077
    lbz 25, 0(31)
    addis 15, 0, -17050
    addic 25, 12, -15230
    subfzeo 4, 22
    addo 10, 11, 9
    lbz 20, 0(31)
    divwo 24, 16, 29
    subfzeo. 22, 25
    lhzu 9, 0(31)
    sth 5, 0(31)
    cmpli cr0, 0, 23, 34061
    stbu 18, 0(31)
    sthx 16, 31, 0
    addis 16, 0, -4270
    slw 23, 16, 14
    lhz 16, 0(31)
    cmpi cr0, 0, 18, -22519
    andi. 25, 8, 27768
    addis 8, 0, 11242
    sthbrx 21, 31, 0
    lhbrx 14, 31, 0
    xor. 25, 20, 8
    addis 20, 0, -30764
    stbu 14, 0(31)
    lhax 12, 31, 0
    srawi. 12, 24, 23
    stbux 16, 31, 0
    addis 3, 0, -21977
    addis 14, 0, 13214
    addis 9, 0, 10025
    lhau 6, 0(31)
    bl 1f
    or. 13, 22, 20
    sth 11, 0(31)
    cmpli cr0, 0, 22, 8533
    1:
    cmpli cr0, 0, 3, 2083
    srawi. 22, 20, 25
    stbux 12, 31, 0
    or 13, 23, 22
    lbz 4, 0(31)
    sthu 26, 0(31)
    srawi. 6, 18, 27
    mulli 17, 26, -22697
    addis 18, 0, -8144
    addis 4, 0, -23970
    sthux 7, 31, 0
    subf. 9, 20, 11
    rlwimi 8, 4, 26, 22, 24
    addze 4, 4
    addis 5, 0, 18018
    extsb 12, 26
    sthux 3, 31, 0
    lwbrx 5, 31, 0
    oris 6, 25, 18829
    srawi. 4, 26, 0
    addis 17, 0, 12534
    lwbrx 16, 31, 0
    rlwimi 21, 3, 24, 12, 2
    addis 26, 0, -3419
    stwbrx 7, 31, 0
    subfze. 26, 26
    addis 22, 0, 14067
    addis 8, 0, -31049
    subfic 5, 3, 3484
    lwzx 2, 31, 0
    cmpli cr0, 0, 3, 51955
    stwbrx 11, 31, 0
    mullwo. 3, 12, 19
    addis 8, 0, -32134
    addze. 11, 14
    stwbrx 7, 31, 0
    lhzu 15, 0(31)
    cmpi cr0, 0, 8, 24687
    stbux 24, 31, 0
    addis 26, 0, -4159
    ori 4, 8, 62702
    stwbrx 13, 31, 0
    rlwnm. 23, 10, 9, 17, 6
    addis 23, 0, -6339
    stb 22, 0(31)
    addis 6, 0, -8850
    lhzu 6, 0(31)
    sthux 23, 31, 0
    andi. 25, 25, 2430
    lwzux 16, 31, 0
    lhzu 11, 0(31)
    rlwinm. 3, 6, 21, 31, 19
    cmpi cr0, 0, 8, -26828
    stwu 14, 0(31)
    divw. 7, 22, 29
    xoris 7, 11, 17617
    cmpi cr0, 0, 16, -27308
    mullw. 25, 12, 3
    addis 2, 0, 21716
    lwz 12, 0(31)
    sthx 22, 31, 0
    addi 5, 11, -20183
    subf. 12, 26, 24
    stwu 10, 0(31)
    xoris 4, 18, 5759
    extsb 21, 19
    rlwnm. 18, 7, 23, 9, 11
    stw 23, 0(31)
    addis 14, 0, 27382
    stwux 9, 31, 0
    lhz 18, 0(31)
    subfeo 23, 17, 16
    addmeo. 21, 11
    stw 18, 0(31)
    addc 16, 6, 3
    rlwinm. 19, 22, 1, 24, 22
    lhz 15, 0(31)
    stw 4, 0(31)
    srawi 19, 2, 8
    lbzux 22, 31, 0
    addis 11, 0, 27643
    addis 7, 0, 30279
    lhz 6, 0(31)
    or 8, 11, 25
    addi 14, 19, -2611
    rlwinm 19, 21, 5, 17, 21
    subf. 12, 19, 15
    cmp cr0, 0, 15, 12
    srawi. 2, 7, 13
    xori 3, 17, 20359
    addis 26, 0, 984
    stwbrx 9, 31, 0
    lwbrx 2, 31, 0
    sthu 4, 0(31)
    lhax 6, 31, 0
    andc. 10, 4, 10
    stwu 9, 0(31)
    addis 14, 0, 23814
    or. 9, 22, 19
    mulli 22, 16, 30816
    cmpi cr0, 0, 22, 6554
    srawi 4, 8, 30
    mullwo 2, 14, 11
    addis 4, 0, 28734
    srawi. 19, 21, 30
    and. 22, 26, 22
    nand. 14, 26, 19
    addo. 12, 17, 23
    rlwnm. 13, 17, 3, 0, 27
    stb 26, 0(31)
    subfzeo. 4, 22
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
    .size run_chunk_23, .-run_chunk_23
    .section .note.GNU-stack,"",@progbits
