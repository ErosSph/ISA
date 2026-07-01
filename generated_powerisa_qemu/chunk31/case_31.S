    .text
    .align 2
    .globl run_chunk_31
    .type run_chunk_31, @function
run_chunk_31:
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
    lis 12, 0xE005
    ori 12, 12, 0x628C
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x4210
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
    lis 11, 0x7D17
    lis 12, 0x876B
    lis 13, 0x31D3
    lis 14, 0xAFAD
    ori 14, 14, 0xFFFF
    lis 15, 0x4804
    ori 15, 15, 0x9206
    lis 16, 0x5C5A
    ori 16, 16, 0x5DC5
    lis 17, 0x0000
    ori 17, 17, 0x0017
    lis 18, 0xEBF3
    lis 19, 0x0000
    ori 19, 19, 0x14F2
    lis 20, 0xFFFF
    ori 20, 20, 0xFC5D
    lis 21, 0x78E7
    li 22, 0
    lis 23, 0x5C5A
    ori 23, 23, 0x1D84
    lis 24, 0x0000
    ori 24, 24, 0x1E00
    lis 25, 0xAB73
    lis 26, 0x617D
    lis 27, 0xE001
    ori 27, 27, 0x58C0
    lis 28, 0xE005
    ori 28, 28, 0x628C
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4870
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk31_body_start:
    cmpi cr0, 0, 29, 0
    subfe. 9, 15, 4
    stwx 6, 31, 0
    srawi. 9, 25, 27
    subfme. 4, 18
    stbux 21, 31, 0
    addis 22, 0, 16123
    addis 8, 0, -1918
    lha 17, 0(31)
    lha 14, 0(31)
    subfeo. 6, 14, 10
    rlwimi. 3, 15, 16, 1, 7
    bl 1f
    addic 5, 3, 15082
    lhbrx 20, 31, 0
    1:
    b 1f
    addis 26, 0, -14315
    1:
    addo. 21, 9, 21
    stwu 10, 0(31)
    sthux 19, 31, 0
    lwzx 18, 31, 0
    lwzx 23, 31, 0
    addis 2, 0, 3016
    cntlzw 22, 10
    addis 9, 0, -7125
    xor 22, 10, 18
    stb 3, 0(31)
    cmp cr0, 0, 5, 16
    sthux 10, 31, 0
    lhax 3, 31, 0
    extsh. 15, 13
    lbzx 4, 31, 0
    addis 12, 0, -11998
    cmpi cr0, 0, 10, 198
    addis 11, 0, 9652
    sth 2, 0(31)
    addis 9, 0, 13999
    addis 25, 0, -27239
    addis 22, 0, -8498
    lhbrx 16, 31, 0
    subfc 19, 25, 14
    extsb 21, 12
    mulhwu. 17, 20, 21
    addic. 24, 6, -9024
    sthu 20, 0(31)
    addis 20, 0, 12094
    andi. 26, 5, 22308
    lha 21, 0(31)
    addis 16, 0, 20672
    addis 2, 0, -25706
    addic. 20, 11, -11017
    rlwimi. 16, 2, 9, 1, 29
    srawi. 15, 11, 13
    stbux 25, 31, 0
    lhzu 25, 0(31)
    subfze 23, 2
    mullwo. 20, 16, 18
    lhzux 22, 31, 0
    addis 4, 0, 19735
    addis 9, 0, 32310
    ble 1f
    addis 6, 0, -15375
    1:
    addze 3, 19
    addis 20, 0, 18014
    addis 9, 0, 27128
    addis 7, 0, -27571
    stwux 8, 31, 0
    subfco. 19, 5, 26
    stbu 12, 0(31)
    subfco 16, 16, 6
    cntlzw. 15, 3
    addis 26, 0, -7840
    lhau 17, 0(31)
    sraw. 17, 7, 4
    stbux 7, 31, 0
    sth 23, 0(31)
    neg. 17, 18
    sthux 13, 31, 0
    lhax 26, 31, 0
    nor. 17, 8, 9
    sthux 22, 31, 0
    stwbrx 15, 31, 0
    addis 22, 0, 30561
    addis 8, 0, -17501
    addis 6, 0, -16101
    lha 17, 0(31)
    mulli 20, 5, -23482
    stbx 26, 31, 0
    sth 22, 0(31)
    blt 1f
    rlwinm 9, 4, 8, 12, 22
    rlwnm 4, 19, 8, 3, 31
    mullw. 11, 10, 4
    1:
    cmpi cr0, 0, 8, 26668
    mullwo 11, 17, 8
    addis 6, 0, 27415
    addis 13, 0, 26797
    cmpi cr0, 0, 20, -3515
    addis 10, 0, 1369
    sthu 2, 0(31)
    addis 22, 0, 1739
    ori 5, 15, 47168
    lhzux 23, 31, 0
    addis 7, 0, 6133
    addis 15, 0, 10313
    addeo 17, 11, 5
    srawi. 4, 25, 5
    addis 18, 0, -11002
    addis 26, 0, 18178
    addis 18, 0, 13983
    rlwimi. 25, 23, 6, 3, 30
    lbzu 16, 0(31)
    lwbrx 6, 31, 0
    addis 11, 0, -18209
    addi 17, 26, 31723
    subfic 19, 11, -21255
    subfze. 3, 15
    stw 20, 0(31)
    stbux 13, 31, 0
    cmpli cr0, 0, 4, 31429
    addic 12, 5, 30363
    addc. 9, 22, 2
    lbz 15, 0(31)
    srawi 4, 7, 22
    bgt 1f
    addis 21, 0, -26595
    lhau 7, 0(31)
    1:
    subfeo. 6, 6, 5
    srawi. 23, 23, 25
    lhz 24, 0(31)
    oris 15, 26, 55164
    addo 21, 7, 2
    rlwimi. 7, 20, 19, 10, 16
    stbx 13, 31, 0
    addis 7, 0, -23180
    rlwimi 17, 26, 31, 19, 7
    addzeo 23, 11
    addic 4, 24, 27570
    mulli 19, 14, -30980
    and. 6, 26, 26
    beq 1f
    stbux 26, 31, 0
    1:
    srawi 2, 19, 3
    addis 22, 0, 5900
    subfze 21, 5
    addis 3, 0, 9781
    addis 2, 0, 24246
    stw 13, 0(31)
    rlwimi 14, 26, 29, 15, 4
    xoris 6, 12, 19198
    lwz 3, 0(31)
    addeo. 20, 11, 21
    addis 13, 0, 2403
    addis 23, 0, -9521
    rlwinm. 19, 14, 11, 25, 19
    addis 3, 0, 18041
    subfo 20, 16, 3
    lwz 14, 0(31)
    subfco 20, 23, 19
    sthx 6, 31, 0
    lhzu 3, 0(31)
    lha 21, 0(31)
    oris 24, 18, 5722
    addc 25, 4, 9
    lwzu 9, 0(31)
    addis 11, 0, -23728
    rlwnm. 25, 7, 3, 1, 4
    subf 18, 23, 4
    srw. 10, 18, 21
    cmpli cr0, 0, 24, 48189
    addis 25, 0, -21882
    addis 2, 0, -1323
    stmw 11, 0(31)
    addis 20, 0, 8923
    lhaux 8, 31, 0
    andis. 13, 3, 6121
    ori 6, 13, 22892
    sthx 21, 31, 0
    b 1f
    stwx 20, 31, 0
    addis 15, 0, -14609
    xoris 6, 8, 39340
    addis 10, 0, 9687
    1:
    stwux 17, 31, 0
    stwbrx 15, 31, 0
    addis 17, 0, -15937
    stbux 9, 31, 0
    addis 17, 0, 21037
    addic 11, 26, 27137
    stbx 6, 31, 0
    mulhwu. 15, 23, 4
    stb 2, 0(31)
    addi 5, 2, -15990
    addis 8, 0, -24356
    srawi 19, 26, 23
    sth 15, 0(31)
    lwzux 22, 31, 0
    divw 13, 22, 29
    stwx 11, 31, 0
    addis 23, 0, -12623
    lwzx 15, 31, 0
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
    .size run_chunk_31, .-run_chunk_31
    .section .note.GNU-stack,"",@progbits
