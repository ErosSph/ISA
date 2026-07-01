    .text
    .align 2
    .globl run_chunk_7
    .type run_chunk_7, @function
run_chunk_7:
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
    ori 12, 12, 0xCDC0
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x8685
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
    lis 11, 0x8A19
    lis 12, 0x0000
    ori 12, 12, 0x002A
    lis 13, 0xFD9B
    ori 13, 13, 0x1003
    lis 14, 0xCF99
    lis 15, 0x0000
    ori 15, 15, 0x000B
    li 16, 0
    li 17, 0
    lis 18, 0x565B
    lis 19, 0x000F
    lis 20, 0x3038
    lis 21, 0x0000
    ori 21, 21, 0x0070
    li 22, 0
    lis 23, 0x0000
    ori 23, 23, 0x0070
    li 24, 0
    lis 25, 0xD163
    ori 25, 25, 0xBD0F
    lis 26, 0x0000
    ori 26, 26, 0xCE0B
    lis 27, 0xE001
    ori 27, 27, 0x4CC0
    lis 28, 0xE004
    ori 28, 28, 0xCDC0
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x46F0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk7_body_start:
    cmpi cr0, 0, 29, 0
    srawi 4, 8, 21
    addis 9, 0, -2753
    bl 1f
    cmpi cr0, 0, 22, 24338
    nor. 24, 18, 18
    lhzx 3, 31, 0
    1:
    mulli 16, 7, -20184
    lhbrx 23, 31, 0
    subfic 21, 12, -19356
    addic. 21, 17, 5563
    sraw. 24, 24, 6
    divwu. 25, 22, 29
    subfe 16, 9, 15
    lbzux 11, 31, 0
    cmpi cr0, 0, 13, -24622
    cmpi cr0, 0, 9, -18328
    addis 6, 0, -8089
    lbzu 3, 0(31)
    sthux 10, 31, 0
    addi 11, 15, 7369
    sthu 25, 0(31)
    subfo 23, 18, 24
    lwzx 6, 31, 0
    addis 2, 0, -9783
    mulli 25, 18, 23821
    lhzux 20, 31, 0
    stwu 5, 0(31)
    addeo. 3, 14, 8
    addi 6, 11, -31722
    cmpi cr0, 0, 22, 29699
    nego 18, 12
    slw 4, 2, 19
    rlwinm. 13, 4, 3, 28, 0
    cmpi cr0, 0, 17, -5469
    addis 19, 0, -18927
    adde 13, 15, 6
    lhau 19, 0(31)
    xor 15, 16, 6
    lhzx 23, 31, 0
    b 1f
    ori 3, 14, 48413
    stwux 9, 31, 0
    rlwnm. 24, 6, 13, 21, 11
    1:
    addeo 10, 8, 20
    stbx 21, 31, 0
    subfic 10, 23, 25030
    divwuo. 6, 12, 29
    lhzx 10, 31, 0
    blt 1f
    rlwimi. 19, 6, 25, 13, 16
    addc 14, 8, 12
    lhzu 2, 0(31)
    1:
    lhaux 6, 31, 0
    sthx 3, 31, 0
    ble 1f
    cmpi cr0, 0, 22, -17351
    andi. 17, 15, 14838
    1:
    stwu 15, 0(31)
    lbzux 12, 31, 0
    lhau 8, 0(31)
    lha 19, 0(31)
    rlwimi 22, 10, 18, 6, 13
    lbz 9, 0(31)
    addis 6, 0, 9812
    extsh. 7, 4
    lbzx 18, 31, 0
    lwz 10, 0(31)
    lwzx 14, 31, 0
    or. 14, 15, 2
    addis 9, 0, 14133
    ori 12, 14, 62314
    stwbrx 24, 31, 0
    addic 12, 22, -2084
    stwx 22, 31, 0
    lwbrx 2, 31, 0
    ori 24, 9, 2256
    stbux 13, 31, 0
    lhzux 2, 31, 0
    sthx 3, 31, 0
    srw. 3, 7, 4
    addis 3, 0, 10102
    lhbrx 19, 31, 0
    stwu 16, 0(31)
    add. 19, 18, 7
    sthu 10, 0(31)
    lhzx 2, 31, 0
    orc. 11, 20, 11
    sthx 3, 31, 0
    addic. 18, 12, -4908
    srawi 18, 22, 29
    addis 26, 0, 14327
    stwu 21, 0(31)
    b 1f
    addis 10, 0, -24826
    addco 7, 20, 21
    addis 5, 0, -4841
    rlwimi. 2, 23, 16, 1, 24
    1:
    addic. 6, 14, 2617
    mullwo 2, 6, 14
    andi. 20, 26, 43262
    cmpi cr0, 0, 9, -12978
    mulli 13, 3, -16487
    lha 10, 0(31)
    rlwinm. 4, 26, 4, 20, 4
    subfic 10, 16, -6926
    mullw 18, 19, 23
    addis 11, 0, -13166
    stw 26, 0(31)
    cmpl cr0, 0, 26, 18
    lwz 20, 0(31)
    stwux 9, 31, 0
    lwz 25, 0(31)
    stwux 5, 31, 0
    addis 17, 0, -2956
    divwu 9, 20, 29
    subfo. 22, 25, 14
    addis 20, 0, 32693
    or. 15, 23, 18
    stwbrx 2, 31, 0
    addis 3, 0, 10140
    adde. 4, 6, 10
    mullw 13, 22, 6
    addis 8, 0, 6203
    andis. 24, 19, 63798
    mullwo 10, 6, 7
    rlwimi. 21, 10, 11, 1, 19
    lbzux 26, 31, 0
    bne 1f
    addis 17, 0, 31724
    stwbrx 3, 31, 0
    addo 12, 18, 21
    sthx 2, 31, 0
    1:
    addis 20, 0, -13865
    addis 10, 0, 3777
    addis 5, 0, 28987
    stbu 8, 0(31)
    stwbrx 7, 31, 0
    lbzux 5, 31, 0
    addis 23, 0, 30208
    rlwinm 14, 9, 11, 19, 3
    addis 4, 0, -5474
    sthbrx 24, 31, 0
    rlwnm 7, 7, 21, 9, 20
    xori 14, 21, 24254
    addis 25, 0, 23173
    cmpl cr0, 0, 17, 15
    srawi. 19, 3, 21
    srawi. 4, 6, 23
    bl 1f
    subfe 24, 5, 24
    subfe 13, 22, 5
    sthux 15, 31, 0
    1:
    addis 6, 0, -25656
    lbzux 16, 31, 0
    xor. 6, 8, 19
    stbu 3, 0(31)
    addis 2, 0, 23044
    lwzx 2, 31, 0
    addis 6, 0, -25938
    rlwimi 9, 15, 3, 20, 16
    lhzu 16, 0(31)
    addis 5, 0, -5353
    ori 6, 12, 13708
    divwu 21, 19, 29
    stwbrx 26, 31, 0
    rlwinm 14, 3, 30, 18, 4
    rlwinm 6, 8, 4, 26, 24
    stbux 10, 31, 0
    ori 12, 26, 50037
    rlwinm 5, 10, 12, 21, 21
    lhzux 5, 31, 0
    addmeo. 7, 17
    stwux 18, 31, 0
    addis 21, 0, -17635
    nor 13, 13, 16
    sthux 2, 31, 0
    xoris 7, 6, 48289
    srawi. 12, 13, 18
    sthbrx 26, 31, 0
    divwo 8, 6, 29
    lhax 23, 31, 0
    srawi. 18, 26, 20
    lbz 16, 0(31)
    rlwimi. 26, 2, 10, 28, 9
    oris 13, 20, 18480
    srawi. 2, 26, 9
    addis 24, 0, -7185
    stwu 4, 0(31)
    addis 7, 0, -6737
    lbzu 2, 0(31)
    lhau 24, 0(31)
    addis 8, 0, -9967
    lwz 24, 0(31)
    lwbrx 16, 31, 0
    mulli 13, 24, 4872
    stwu 13, 0(31)
    lwzx 16, 31, 0
    adde 25, 7, 13
    lwzu 19, 0(31)
    addme 25, 19
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
    .size run_chunk_7, .-run_chunk_7
    .section .note.GNU-stack,"",@progbits
