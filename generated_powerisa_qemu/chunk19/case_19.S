    .text
    .align 2
    .globl run_chunk_19
    .type run_chunk_19, @function
run_chunk_19:
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
    ori 12, 12, 0x1830
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xFFFF
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
    lis 11, 0x00FF
    ori 11, 11, 0xFFFE
    lis 12, 0x0000
    ori 12, 12, 0x0EB9
    lis 13, 0xFFFF
    ori 13, 13, 0xC73F
    lis 14, 0xC9DF
    li 15, 0
    lis 16, 0x5E70
    lis 17, 0xE539
    ori 17, 17, 0x6CB6
    li 18, 0
    lis 19, 0xB018
    lis 20, 0x0919
    lis 21, 0x0049
    ori 21, 21, 0x1C49
    lis 22, 0xFFFF
    ori 22, 22, 0xFFFE
    lis 23, 0x00FF
    ori 23, 23, 0xFFFE
    lis 24, 0xC000
    ori 24, 24, 0x0001
    lis 25, 0xC029
    ori 25, 25, 0xCFB8
    lis 26, 0xFFFF
    ori 26, 26, 0xFFFE
    lis 27, 0xE001
    ori 27, 27, 0x52C0
    lis 28, 0xE005
    ori 28, 28, 0x1830
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x47B0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk19_body_start:
    cmpi cr0, 0, 29, 0
    divwo. 26, 20, 29
    srawi 12, 13, 22
    rlwimi 20, 8, 31, 10, 30
    srawi 11, 9, 26
    stwx 4, 31, 0
    lwbrx 10, 31, 0
    bl 1f
    lbzux 15, 31, 0
    cmpi cr0, 0, 3, -28585
    1:
    lbzx 6, 31, 0
    addeo. 15, 18, 10
    addis 13, 0, 2673
    lbzux 20, 31, 0
    addis 14, 0, -13521
    subfe. 7, 25, 18
    subfco 25, 7, 4
    andi. 22, 6, 3308
    addic. 26, 13, 20134
    sraw. 13, 5, 16
    lbzux 3, 31, 0
    addis 25, 0, -15456
    addis 12, 0, 22535
    rlwimi. 24, 13, 26, 14, 2
    add. 5, 14, 22
    lhaux 12, 31, 0
    mullwo. 3, 8, 18
    addis 25, 0, 18427
    sthux 2, 31, 0
    addic 21, 14, 3799
    andc 5, 2, 5
    srawi 7, 22, 25
    sthu 17, 0(31)
    or 22, 6, 20
    extsh 19, 19
    subfze 24, 4
    sthux 2, 31, 0
    addis 22, 0, -25051
    bgt 1f
    stwbrx 19, 31, 0
    sthux 4, 31, 0
    addis 9, 0, 12006
    lhz 4, 0(31)
    1:
    lwzu 19, 0(31)
    lhzu 12, 0(31)
    subfco 2, 17, 14
    addis 16, 0, 31882
    lhzu 26, 0(31)
    cmpli cr0, 0, 15, 8504
    addco 26, 23, 16
    stb 9, 0(31)
    lhzx 26, 31, 0
    lhzx 25, 31, 0
    addis 12, 0, -16420
    lhzu 5, 0(31)
    lwzux 11, 31, 0
    addco 20, 12, 11
    cmpli cr0, 0, 10, 17028
    and. 10, 4, 15
    stbu 22, 0(31)
    stbx 17, 31, 0
    addeo. 17, 18, 10
    rlwimi. 2, 13, 14, 0, 12
    lhbrx 9, 31, 0
    sthx 4, 31, 0
    xor 9, 7, 23
    stw 11, 0(31)
    addis 26, 0, -26350
    addis 21, 0, -31308
    stwbrx 10, 31, 0
    bne 1f
    rlwnm. 2, 6, 16, 30, 8
    addis 4, 0, -351
    addis 4, 0, -27767
    1:
    addis 6, 0, 12589
    lhax 15, 31, 0
    b 1f
    divwu 25, 8, 29
    lhbrx 20, 31, 0
    lwbrx 20, 31, 0
    stbx 23, 31, 0
    1:
    addeo. 11, 18, 5
    sthu 4, 0(31)
    rlwimi. 12, 26, 4, 16, 15
    bl 1f
    lhzx 15, 31, 0
    srw 17, 12, 4
    srw 12, 21, 14
    1:
    addis 7, 0, -8051
    oris 9, 18, 3350
    addis 15, 0, -26040
    sthbrx 18, 31, 0
    extsh 5, 7
    srawi. 8, 18, 24
    divwuo. 20, 8, 29
    srw. 18, 25, 3
    addeo 22, 5, 4
    stwux 21, 31, 0
    subfic 18, 5, 27159
    lbz 12, 0(31)
    cmpl cr0, 0, 4, 12
    nand 18, 3, 10
    and 14, 18, 4
    addis 26, 0, -31434
    mulhw 22, 24, 13
    rlwinm. 23, 13, 22, 17, 30
    lbzux 25, 31, 0
    bgt 1f
    lhau 10, 0(31)
    stw 26, 0(31)
    addic 21, 25, -15228
    stw 7, 0(31)
    1:
    stw 22, 0(31)
    lwzu 22, 0(31)
    stbu 2, 0(31)
    addis 14, 0, 17918
    lwzx 4, 31, 0
    srawi 4, 12, 12
    stwbrx 11, 31, 0
    srawi 11, 12, 12
    b 1f
    lhax 26, 31, 0
    stbux 9, 31, 0
    1:
    nor 6, 24, 16
    ori 17, 11, 46640
    nor. 19, 2, 13
    sth 20, 0(31)
    lha 3, 0(31)
    addis 13, 0, -30601
    addis 6, 0, -15285
    addis 26, 0, -23574
    b 1f
    stw 24, 0(31)
    mulhwu. 5, 15, 17
    sthbrx 14, 31, 0
    1:
    addis 26, 0, -9836
    xor 4, 15, 10
    addme. 13, 25
    lbz 24, 0(31)
    sthx 13, 31, 0
    sthx 19, 31, 0
    sthux 9, 31, 0
    stwbrx 10, 31, 0
    stwbrx 25, 31, 0
    andi. 5, 8, 11428
    stwu 23, 0(31)
    stw 2, 0(31)
    xor 7, 18, 12
    addis 26, 0, -16666
    lwzu 7, 0(31)
    orc 11, 3, 9
    addis 13, 0, 31368
    srawi. 21, 13, 10
    bgt 1f
    addme 2, 7
    srawi. 11, 4, 13
    rlwinm. 25, 23, 25, 28, 28
    1:
    stwu 18, 0(31)
    lwzx 6, 31, 0
    addis 15, 0, 13577
    sthu 3, 0(31)
    cmpi cr0, 0, 11, 22240
    sthu 6, 0(31)
    subfco. 19, 21, 9
    addis 22, 0, 19355
    addis 3, 0, 14271
    adde. 19, 18, 3
    addis 11, 0, -1980
    addis 21, 0, -24254
    stb 15, 0(31)
    stbx 11, 31, 0
    sthx 18, 31, 0
    eqv. 10, 7, 23
    nand 8, 4, 5
    lwbrx 14, 31, 0
    addic. 20, 25, -4630
    ori 7, 23, 53321
    addi 19, 26, -16642
    xori 17, 21, 18651
    subfic 14, 3, 9154
    mullwo. 17, 14, 22
    addis 20, 0, -6102
    addis 15, 0, 32678
    stmw 26, 0(31)
    neg. 25, 15
    b 1f
    sthx 7, 31, 0
    divw 11, 2, 29
    sthu 8, 0(31)
    1:
    stbx 9, 31, 0
    rlwimi 13, 7, 16, 24, 7
    addis 12, 0, -20445
    sthx 21, 31, 0
    stw 8, 0(31)
    lbzu 4, 0(31)
    addis 23, 0, 22981
    sth 7, 0(31)
    addic. 20, 13, -24599
    lhax 24, 31, 0
    srawi 24, 12, 21
    sthu 7, 0(31)
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
    .size run_chunk_19, .-run_chunk_19
    .section .note.GNU-stack,"",@progbits
