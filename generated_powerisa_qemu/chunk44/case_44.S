    .text
    .align 2
    .globl run_chunk_44
    .type run_chunk_44, @function
run_chunk_44:
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
    ori 12, 12, 0xB330
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x17AF
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
    li 11, 0
    lis 12, 0x6EF6
    lis 13, 0x04DC
    ori 13, 13, 0xAA1B
    li 14, 0
    lis 15, 0x0720
    li 16, 0
    lis 17, 0x0000
    ori 17, 17, 0x7649
    lis 18, 0x6A06
    li 19, 0
    lis 20, 0x04DD
    li 21, 0
    li 22, 0
    lis 23, 0xFFFF
    ori 23, 23, 0xF025
    lis 24, 0x00B1
    ori 24, 24, 0xDB6D
    lis 25, 0x2F4A
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x5F40
    lis 28, 0xE005
    ori 28, 28, 0xB330
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4940
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk44_body_start:
    cmpi cr0, 0, 29, 0
    addis 16, 0, -14811
    rlwimi. 10, 19, 4, 9, 0
    addis 21, 0, -25449
    nand 22, 6, 11
    divw. 7, 11, 29
    addis 8, 0, 31044
    stwx 21, 31, 0
    addis 19, 0, -1564
    sthx 25, 31, 0
    stwbrx 15, 31, 0
    subfc 7, 16, 24
    subfe. 2, 18, 25
    lha 4, 0(31)
    lhzux 8, 31, 0
    cmpi cr0, 0, 25, 22172
    stwx 20, 31, 0
    sthu 14, 0(31)
    stwx 26, 31, 0
    addis 20, 0, 32009
    addis 18, 0, -9682
    stb 18, 0(31)
    stwbrx 6, 31, 0
    xori 22, 14, 10354
    divwu 26, 17, 29
    stbu 21, 0(31)
    lhz 8, 0(31)
    cmpli cr0, 0, 21, 54639
    addis 13, 0, -10922
    mulli 17, 25, -14533
    addi 12, 25, -24082
    andis. 23, 2, 21268
    subfo. 24, 20, 18
    lbzux 13, 31, 0
    addis 14, 0, 12256
    sthbrx 7, 31, 0
    addis 6, 0, -11713
    addis 3, 0, -17427
    subf 24, 10, 17
    addis 6, 0, 28164
    lbz 5, 0(31)
    stw 26, 0(31)
    lwzu 8, 0(31)
    addis 20, 0, 22183
    andi. 10, 13, 49611
    addmeo 18, 19
    lhzx 25, 31, 0
    addis 16, 0, 20678
    addis 8, 0, -17298
    bl 1f
    lwzu 6, 0(31)
    or 14, 11, 25
    subfic 7, 2, 10256
    addi 5, 23, -31042
    1:
    addic. 2, 17, 22313
    stmw 3, 0(31)
    stwu 2, 0(31)
    addi 8, 4, -8336
    addis 18, 0, 4523
    andi. 18, 21, 38709
    addis 21, 0, 8984
    lwzx 3, 31, 0
    lhax 8, 31, 0
    lhzu 7, 0(31)
    orc. 25, 6, 9
    addc 26, 18, 9
    addis 10, 0, 3492
    subfeo 14, 21, 5
    lhz 9, 0(31)
    lhax 19, 31, 0
    addis 26, 0, -15518
    addis 4, 0, -433
    addmeo 2, 26
    stbx 19, 31, 0
    addco. 14, 6, 12
    srawi 18, 11, 0
    lhzu 8, 0(31)
    srw 5, 16, 19
    stbx 2, 31, 0
    adde. 2, 21, 12
    lhzx 25, 31, 0
    lhzx 22, 31, 0
    stwx 2, 31, 0
    addic. 5, 25, 18679
    sthbrx 22, 31, 0
    addis 23, 0, -11469
    stwu 23, 0(31)
    addis 16, 0, -8856
    addis 25, 0, 25368
    stwu 18, 0(31)
    addis 20, 0, 15171
    oris 12, 25, 10719
    xori 8, 26, 32372
    divwuo 15, 10, 29
    lwz 21, 0(31)
    addic 7, 11, -27179
    subfze 17, 13
    ori 10, 19, 53796
    addis 8, 0, 11011
    mullwo 15, 17, 16
    addis 6, 0, 10764
    sth 26, 0(31)
    andc. 17, 20, 26
    rlwinm 3, 20, 23, 21, 9
    stwbrx 4, 31, 0
    addc. 23, 10, 6
    subfc 6, 2, 12
    stb 20, 0(31)
    divwuo 10, 25, 29
    divw 14, 25, 29
    lha 6, 0(31)
    lhax 26, 31, 0
    addic. 23, 24, -20144
    lbzu 18, 0(31)
    stb 2, 0(31)
    divwuo. 8, 25, 29
    addis 5, 0, -7211
    lwzux 24, 31, 0
    xor 15, 24, 13
    nego 14, 2
    lhzu 13, 0(31)
    lwzux 18, 31, 0
    lbzu 20, 0(31)
    sraw 22, 26, 3
    stwbrx 11, 31, 0
    addis 23, 0, 30011
    stb 12, 0(31)
    addic. 23, 17, 13155
    lhaux 22, 31, 0
    addis 9, 0, -4657
    addic. 5, 17, 4982
    addis 14, 0, 12249
    lhzu 2, 0(31)
    addmeo. 14, 3
    andis. 20, 25, 5882
    subfme 23, 14
    addis 14, 0, 235
    stwx 5, 31, 0
    rlwinm. 9, 15, 25, 21, 27
    rlwimi 14, 22, 0, 11, 10
    stbux 18, 31, 0
    sthu 4, 0(31)
    rlwinm 4, 9, 29, 27, 4
    ori 3, 6, 21744
    stwx 5, 31, 0
    lha 2, 0(31)
    lwzx 26, 31, 0
    addis 9, 0, 15904
    addis 9, 0, 5355
    bl 1f
    xoris 21, 3, 13115
    cmpli cr0, 0, 12, 19237
    neg. 9, 15
    addis 13, 0, -15479
    1:
    and 15, 25, 7
    sthux 8, 31, 0
    mulhw. 7, 15, 12
    lbzu 25, 0(31)
    addis 13, 0, -21112
    addis 13, 0, 1247
    lhzx 22, 31, 0
    sthu 9, 0(31)
    rlwinm 4, 20, 27, 3, 19
    addis 10, 0, -4521
    orc. 18, 16, 6
    stwbrx 7, 31, 0
    addis 7, 0, -24887
    xori 20, 26, 62136
    stwbrx 22, 31, 0
    cmpi cr0, 0, 18, 14127
    orc. 24, 7, 7
    or 8, 11, 9
    addic. 21, 11, 733
    addis 14, 0, 23849
    addis 26, 0, -5362
    sraw 3, 12, 7
    rlwinm. 24, 5, 13, 26, 14
    addo 13, 10, 4
    stwbrx 18, 31, 0
    addis 12, 0, -7844
    andis. 19, 16, 28927
    addis 2, 0, -25184
    oris 14, 8, 5978
    lwzux 6, 31, 0
    lhaux 11, 31, 0
    addis 3, 0, 6802
    stmw 5, 0(31)
    add. 18, 21, 19
    sthu 26, 0(31)
    addi 15, 24, 26576
    sth 5, 0(31)
    lwzu 23, 0(31)
    addis 16, 0, -10586
    lhzux 3, 31, 0
    sth 10, 0(31)
    lhzx 9, 31, 0
    lhz 25, 0(31)
    or 11, 20, 22
    orc 2, 7, 2
    bge 1f
    rlwinm 18, 22, 11, 8, 1
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
    .size run_chunk_44, .-run_chunk_44
    .section .note.GNU-stack,"",@progbits
