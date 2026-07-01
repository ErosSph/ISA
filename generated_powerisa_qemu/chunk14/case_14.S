    .text
    .align 2
    .globl run_chunk_14
    .type run_chunk_14, @function
run_chunk_14:
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
    ori 12, 12, 0xF92C
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x0014
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
    lis 12, 0x0000
    ori 12, 12, 0xA700
    li 13, 0
    lis 14, 0xFADA
    ori 14, 14, 0x94CA
    lis 15, 0xFE3E
    lis 16, 0x170C
    lis 17, 0x00A7
    lis 18, 0x5AFB
    ori 18, 18, 0x01E0
    lis 19, 0x0000
    ori 19, 19, 0x00A7
    lis 20, 0x0000
    ori 20, 20, 0x00A7
    lis 21, 0x746D
    lis 22, 0x0873
    lis 23, 0x0000
    ori 23, 23, 0xA700
    lis 24, 0xD000
    ori 24, 24, 0x0008
    lis 25, 0xB153
    lis 26, 0x72A4
    lis 27, 0xE001
    ori 27, 27, 0x5040
    lis 28, 0xE004
    ori 28, 28, 0xF92C
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4760
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk14_body_start:
    cmpi cr0, 0, 29, 0
    srawi 21, 22, 13
    lbzx 4, 31, 0
    stw 19, 0(31)
    lbzu 9, 0(31)
    mulli 22, 25, -1537
    addco 23, 15, 18
    mulhw 3, 10, 18
    stwbrx 11, 31, 0
    srawi. 12, 14, 30
    sthbrx 26, 31, 0
    lhzx 18, 31, 0
    nand 6, 24, 21
    mulhw 11, 23, 3
    rlwinm. 8, 9, 16, 17, 3
    stmw 14, 0(31)
    addis 10, 0, -26159
    lbzux 2, 31, 0
    addis 4, 0, 31346
    srawi 19, 19, 26
    addis 23, 0, 21111
    subfzeo 21, 17
    addic 10, 7, 1328
    or 12, 4, 12
    stwx 17, 31, 0
    lhzx 18, 31, 0
    divwo 16, 25, 29
    stbu 3, 0(31)
    lwzux 6, 31, 0
    stmw 8, 0(31)
    lhaux 5, 31, 0
    addis 16, 0, 3685
    lwbrx 22, 31, 0
    ble 1f
    stb 9, 0(31)
    addis 5, 0, 22570
    addis 14, 0, 26968
    lbzux 24, 31, 0
    1:
    sraw. 20, 19, 10
    lwzu 4, 0(31)
    stmw 6, 0(31)
    addis 23, 0, -8077
    addis 9, 0, -25507
    nego. 25, 18
    lhz 5, 0(31)
    addis 25, 0, -15019
    stwbrx 5, 31, 0
    sthx 16, 31, 0
    addis 3, 0, 29101
    andi. 2, 15, 52470
    lhz 15, 0(31)
    blt 1f
    lbzx 16, 31, 0
    lbzu 15, 0(31)
    stw 3, 0(31)
    1:
    lwzx 7, 31, 0
    addis 10, 0, 32701
    addc 19, 22, 18
    addis 14, 0, -161
    addis 8, 0, -97
    subfeo 6, 12, 10
    subfo 14, 21, 25
    rlwimi. 8, 14, 16, 25, 20
    blt 1f
    lhax 6, 31, 0
    sthx 2, 31, 0
    1:
    addis 17, 0, -9393
    sthu 3, 0(31)
    sth 24, 0(31)
    lhax 8, 31, 0
    lbzux 4, 31, 0
    stwux 19, 31, 0
    orc 23, 24, 9
    lhau 7, 0(31)
    cntlzw 17, 25
    mullwo 16, 12, 9
    addis 20, 0, -15529
    sth 15, 0(31)
    addis 14, 0, -11199
    lbzux 10, 31, 0
    lwz 5, 0(31)
    addis 17, 0, 12091
    blt 1f
    xor. 25, 14, 9
    1:
    subfo 26, 23, 2
    extsb 17, 25
    stwx 3, 31, 0
    addic 4, 13, 22189
    rlwimi. 2, 13, 10, 27, 2
    addis 25, 0, -14708
    lbzux 15, 31, 0
    lha 3, 0(31)
    addis 17, 0, -1049
    addic 3, 23, 9609
    eqv. 20, 13, 22
    addic 13, 21, -19616
    lbzu 9, 0(31)
    rlwinm. 2, 21, 15, 30, 13
    addis 22, 0, -26982
    addic. 13, 7, -22944
    stb 12, 0(31)
    bl 1f
    addc. 26, 8, 26
    stbu 20, 0(31)
    stbx 13, 31, 0
    lha 6, 0(31)
    1:
    stwx 13, 31, 0
    stwx 22, 31, 0
    addis 22, 0, -2743
    nand. 13, 4, 2
    addi 5, 14, 5440
    adde 16, 14, 18
    addic. 24, 22, -10508
    andc 25, 18, 21
    bl 1f
    eqv 10, 21, 13
    addis 10, 0, 32400
    cmpli cr0, 0, 24, 2891
    lhzu 4, 0(31)
    1:
    addis 18, 0, 31013
    lbzx 7, 31, 0
    xoris 17, 25, 20061
    addc. 17, 11, 8
    lhax 26, 31, 0
    divwu. 9, 18, 29
    subfic 16, 14, 2194
    lbzu 18, 0(31)
    addmeo 12, 17
    stwx 6, 31, 0
    addis 16, 0, -14019
    addis 5, 0, 29926
    addic. 8, 26, 16064
    addis 12, 0, -2741
    srawi 14, 17, 27
    lwz 22, 0(31)
    ori 8, 2, 63390
    nand. 26, 19, 8
    stb 12, 0(31)
    addis 8, 0, -650
    stmw 23, 0(31)
    stbux 16, 31, 0
    sth 19, 0(31)
    cmpli cr0, 0, 8, 49998
    lhaux 7, 31, 0
    addis 4, 0, 24743
    sth 13, 0(31)
    cmpi cr0, 0, 23, 17717
    lbzux 15, 31, 0
    addis 22, 0, -16413
    lhzu 10, 0(31)
    addis 2, 0, -1709
    lwbrx 19, 31, 0
    sraw 13, 11, 6
    addis 17, 0, 32763
    orc. 26, 4, 6
    srawi 18, 11, 20
    sthbrx 14, 31, 0
    sthux 26, 31, 0
    addis 21, 0, 20013
    stbu 10, 0(31)
    bge 1f
    addis 15, 0, -9119
    1:
    cmpi cr0, 0, 5, -24356
    stbu 10, 0(31)
    addis 17, 0, -11714
    addze 17, 20
    stbux 6, 31, 0
    sthux 8, 31, 0
    stwu 11, 0(31)
    rlwimi. 13, 5, 1, 8, 19
    cmpi cr0, 0, 22, 26950
    b 1f
    andi. 19, 9, 48749
    addis 7, 0, -29881
    1:
    addmeo. 26, 17
    stwu 15, 0(31)
    srawi 24, 19, 0
    cmpi cr0, 0, 22, -7907
    neg 19, 22
    subfco 15, 6, 8
    rlwinm 3, 21, 2, 18, 11
    subfco 17, 16, 25
    lhzux 9, 31, 0
    sth 3, 0(31)
    addis 18, 0, 13395
    rlwinm 21, 19, 15, 7, 1
    addis 3, 0, -5362
    cmpi cr0, 0, 13, 5715
    addis 23, 0, -5758
    lhaux 26, 31, 0
    srawi. 11, 11, 18
    xoris 25, 2, 23597
    lwz 7, 0(31)
    divwu 18, 18, 29
    sth 16, 0(31)
    addis 8, 0, 31042
    addis 2, 0, -28417
    mullwo. 14, 5, 8
    b 1f
    lbzux 8, 31, 0
    sthbrx 8, 31, 0
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
    .size run_chunk_14, .-run_chunk_14
    .section .note.GNU-stack,"",@progbits
