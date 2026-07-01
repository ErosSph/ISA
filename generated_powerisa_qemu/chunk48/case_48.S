    .text
    .align 2
    .globl run_chunk_48
    .type run_chunk_48, @function
run_chunk_48:
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
    ori 12, 12, 0xCC00
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
    lis 11, 0xA3C3
    ori 11, 11, 0x0001
    lis 12, 0xF05F
    lis 13, 0x0000
    ori 13, 13, 0x0001
    lis 14, 0xFFFF
    ori 14, 14, 0xE5CE
    lis 15, 0x8E4F
    li 16, 0
    lis 17, 0xE5B3
    lis 18, 0x0D1B
    ori 18, 18, 0x2492
    lis 19, 0xCEE5
    li 20, 0
    li 21, 0
    lis 22, 0xCBC4
    ori 22, 22, 0xFFFF
    lis 23, 0xA639
    li 24, 0
    li 25, 0
    lis 26, 0x4CF6
    ori 26, 26, 0x4F37
    lis 27, 0xE001
    ori 27, 27, 0x6140
    lis 28, 0xE005
    ori 28, 28, 0xCC00
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4980
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk48_body_start:
    cmpi cr0, 0, 29, 0
    lbzu 8, 0(31)
    sthx 11, 31, 0
    addis 14, 0, -11430
    addis 11, 0, -5787
    addis 3, 0, -21739
    addis 13, 0, -24193
    subfco. 19, 3, 3
    addis 7, 0, 32043
    sth 3, 0(31)
    addis 4, 0, -2842
    addis 12, 0, 3567
    sth 25, 0(31)
    stbu 16, 0(31)
    addis 16, 0, -10008
    sthx 11, 31, 0
    stbx 6, 31, 0
    andis. 26, 15, 45629
    addis 13, 0, 9352
    sthbrx 18, 31, 0
    addis 4, 0, -22598
    lwzux 12, 31, 0
    rlwinm. 5, 14, 13, 13, 28
    andi. 21, 22, 50754
    addis 18, 0, 19583
    addi 2, 3, -21582
    ori 19, 4, 6453
    sthbrx 15, 31, 0
    stb 2, 0(31)
    sthu 15, 0(31)
    addis 21, 0, -26561
    lbzx 12, 31, 0
    addic 5, 15, -25943
    addis 26, 0, 18262
    nego 5, 9
    lhau 25, 0(31)
    lwbrx 12, 31, 0
    subfe 25, 9, 9
    bl 1f
    mulhw. 19, 6, 7
    sthx 23, 31, 0
    rlwinm 22, 11, 28, 15, 30
    1:
    adde. 26, 8, 7
    addme 22, 21
    stbx 7, 31, 0
    stbx 16, 31, 0
    xor 10, 11, 8
    addis 22, 0, -31866
    rlwimi. 4, 23, 30, 3, 0
    bl 1f
    rlwimi. 3, 3, 22, 13, 17
    lhzux 21, 31, 0
    1:
    addis 13, 0, -23333
    lbz 8, 0(31)
    subfco 15, 26, 19
    addis 7, 0, -26527
    sthux 18, 31, 0
    addis 7, 0, 1084
    addis 7, 0, 25675
    lhzux 18, 31, 0
    subfo. 21, 14, 11
    xori 9, 7, 52933
    addme. 24, 20
    lhbrx 10, 31, 0
    b 1f
    lbzux 19, 31, 0
    mullw. 23, 18, 22
    stwu 2, 0(31)
    cmpi cr0, 0, 24, -12502
    1:
    addis 15, 0, -7684
    rlwinm. 2, 20, 5, 20, 12
    addis 5, 0, 21011
    addis 20, 0, 7933
    addo. 10, 3, 22
    lbzx 8, 31, 0
    lwz 24, 0(31)
    sthu 11, 0(31)
    stwbrx 21, 31, 0
    sthx 25, 31, 0
    lbz 2, 0(31)
    sthu 10, 0(31)
    rlwinm. 15, 8, 21, 26, 20
    stwu 2, 0(31)
    addis 19, 0, -30330
    addme. 7, 9
    subfme. 24, 16
    addis 17, 0, 18982
    lhzu 13, 0(31)
    addis 8, 0, -8365
    lhau 2, 0(31)
    lhz 22, 0(31)
    addis 17, 0, -30751
    andi. 8, 9, 55708
    sthux 19, 31, 0
    rlwimi. 16, 18, 10, 23, 7
    add. 15, 11, 24
    sth 17, 0(31)
    addis 23, 0, 9920
    divwo. 26, 10, 29
    ori 5, 5, 5830
    oris 9, 12, 53184
    addic. 11, 19, -32614
    sthux 14, 31, 0
    lwz 22, 0(31)
    mullwo 15, 8, 17
    addis 26, 0, -28025
    lhzx 22, 31, 0
    stwu 11, 0(31)
    lhzx 5, 31, 0
    lwzx 17, 31, 0
    lwz 8, 0(31)
    addis 17, 0, 18019
    cmpli cr0, 0, 17, 21432
    extsb 4, 14
    lwz 8, 0(31)
    lbz 16, 0(31)
    subfc 8, 19, 14
    andi. 5, 19, 55132
    sthbrx 12, 31, 0
    xori 19, 7, 42508
    lwzux 25, 31, 0
    nego 26, 20
    rlwimi 26, 11, 21, 7, 21
    lwzux 2, 31, 0
    addis 9, 0, -31135
    stwux 4, 31, 0
    lbzu 11, 0(31)
    rlwimi. 14, 16, 26, 0, 14
    andi. 25, 25, 60890
    rlwinm. 22, 21, 23, 18, 29
    lwbrx 6, 31, 0
    oris 3, 2, 25638
    lha 8, 0(31)
    xoris 6, 17, 11422
    addis 22, 0, -18991
    addis 25, 0, -16280
    andc. 17, 5, 22
    addis 4, 0, -27553
    addis 26, 0, 16724
    addi 21, 24, -4107
    addis 15, 0, 12810
    addis 25, 0, -26124
    rlwinm. 9, 15, 22, 1, 12
    addic 23, 23, 16572
    sthu 20, 0(31)
    bl 1f
    addis 24, 0, -4880
    lwz 3, 0(31)
    addis 18, 0, -15937
    1:
    addis 5, 0, -30253
    lwzux 13, 31, 0
    rlwinm 6, 19, 11, 22, 4
    addis 20, 0, -31857
    addis 15, 0, 16178
    xor. 10, 26, 19
    addis 24, 0, 15
    stwbrx 8, 31, 0
    lhzu 10, 0(31)
    lwzux 10, 31, 0
    stb 23, 0(31)
    addc 17, 22, 13
    sthu 16, 0(31)
    sthx 8, 31, 0
    lha 6, 0(31)
    lha 7, 0(31)
    addis 10, 0, 29450
    addis 18, 0, 25839
    addis 22, 0, -19418
    addeo. 22, 16, 2
    stbx 16, 31, 0
    cmpi cr0, 0, 17, -6052
    stw 14, 0(31)
    cmp cr0, 0, 16, 5
    lhbrx 2, 31, 0
    addis 18, 0, -25693
    rlwnm 21, 19, 26, 22, 17
    addis 7, 0, -18243
    subfco. 4, 3, 17
    bne 1f
    sthbrx 15, 31, 0
    1:
    mulhw. 21, 6, 12
    addme 26, 24
    sth 19, 0(31)
    stbux 7, 31, 0
    stwux 25, 31, 0
    lha 15, 0(31)
    stwux 3, 31, 0
    rlwinm 22, 7, 24, 15, 6
    blt 1f
    addis 13, 0, -2401
    rlwimi 25, 24, 12, 7, 23
    lhau 3, 0(31)
    1:
    addis 16, 0, 2195
    addis 21, 0, 22152
    lwzux 24, 31, 0
    andc. 4, 8, 2
    addis 17, 0, -21149
    addic 11, 18, -20748
    stwx 24, 31, 0
    andis. 11, 16, 32526
    stwux 5, 31, 0
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
    .size run_chunk_48, .-run_chunk_48
    .section .note.GNU-stack,"",@progbits
