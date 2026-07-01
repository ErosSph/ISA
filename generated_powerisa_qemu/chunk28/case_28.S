    .text
    .align 2
    .globl run_chunk_28
    .type run_chunk_28, @function
run_chunk_28:
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
    ori 12, 12, 0x4FFC
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x18D8
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
    lis 11, 0xE162
    li 12, 0
    lis 13, 0xE27C
    lis 14, 0xCE50
    ori 14, 14, 0x0001
    lis 15, 0xD31B
    lis 16, 0x5EA6
    lis 17, 0x0400
    ori 17, 17, 0xFFFF
    lis 18, 0xE728
    lis 19, 0x37F5
    lis 20, 0x0410
    ori 20, 20, 0x7664
    lis 21, 0xC80A
    ori 21, 21, 0xFFFF
    li 22, 0
    lis 23, 0x0073
    lis 24, 0x3EB9
    lis 25, 0x7669
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x5740
    lis 28, 0xE005
    ori 28, 28, 0x4FFC
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4840
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk28_body_start:
    cmpi cr0, 0, 29, 0
    divwu. 25, 23, 29
    srawi 14, 23, 24
    addme. 18, 2
    addis 14, 0, -21764
    rlwinm 26, 20, 27, 6, 28
    xoris 25, 7, 19653
    divwu 24, 25, 29
    lhzu 17, 0(31)
    stw 16, 0(31)
    addco. 7, 13, 15
    lhzx 20, 31, 0
    addis 8, 0, 25255
    addis 10, 0, 4476
    divwo. 14, 13, 29
    addis 19, 0, 7785
    stbx 6, 31, 0
    lhaux 23, 31, 0
    slw 18, 15, 19
    addis 18, 0, -4171
    srawi 18, 13, 28
    srawi 13, 12, 19
    rlwinm. 12, 7, 4, 23, 6
    addis 17, 0, -30505
    subf 6, 15, 22
    lwbrx 12, 31, 0
    lhau 19, 0(31)
    subfo 22, 25, 12
    addis 6, 0, -8676
    stmw 17, 0(31)
    sth 24, 0(31)
    lhbrx 13, 31, 0
    rlwinm. 16, 9, 15, 10, 21
    bl 1f
    cmpli cr0, 0, 5, 22317
    divwuo. 15, 4, 29
    sthx 13, 31, 0
    lhbrx 6, 31, 0
    1:
    oris 2, 19, 33246
    lha 9, 0(31)
    mulhw 12, 17, 7
    lbz 12, 0(31)
    lbz 22, 0(31)
    addis 17, 0, -21771
    sthx 10, 31, 0
    lhzu 16, 0(31)
    addis 20, 0, -11117
    rlwimi 13, 4, 15, 2, 20
    lwzux 5, 31, 0
    addis 22, 0, 21678
    subf 19, 13, 4
    subfic 26, 18, 12493
    addis 7, 0, -10782
    subfic 2, 15, 24301
    sthu 16, 0(31)
    addis 16, 0, 7230
    lhau 15, 0(31)
    srawi. 26, 21, 31
    stbu 18, 0(31)
    sthbrx 16, 31, 0
    and 5, 13, 6
    rlwimi. 15, 9, 12, 16, 1
    addi 4, 20, -23300
    addis 12, 0, 3447
    bl 1f
    stbux 11, 31, 0
    addi 13, 24, -12731
    1:
    b 1f
    cntlzw 14, 7
    addis 15, 0, 13649
    1:
    addic 12, 26, -9064
    lhzu 12, 0(31)
    addis 9, 0, 5876
    addis 23, 0, 1801
    xoris 10, 12, 14884
    stbx 13, 31, 0
    lwzx 18, 31, 0
    adde. 2, 16, 6
    andis. 9, 18, 1883
    lhax 6, 31, 0
    ori 25, 21, 25843
    stwx 20, 31, 0
    addeo 19, 19, 17
    andi. 5, 21, 23034
    adde 12, 3, 24
    lbzu 10, 0(31)
    lwzux 19, 31, 0
    addis 3, 0, -18596
    sth 12, 0(31)
    addis 7, 0, -6893
    ori 23, 5, 36306
    sthbrx 3, 31, 0
    cntlzw. 2, 21
    addis 4, 0, -23633
    stwux 18, 31, 0
    divwuo. 5, 15, 29
    xoris 14, 3, 4620
    stwbrx 5, 31, 0
    lwzux 6, 31, 0
    or. 19, 7, 4
    cntlzw. 12, 24
    sthu 19, 0(31)
    addc 15, 11, 16
    stbx 8, 31, 0
    addis 21, 0, 15962
    stbux 4, 31, 0
    addis 12, 0, -22401
    addis 14, 0, 21692
    addis 25, 0, -10554
    addis 12, 0, 24789
    addis 11, 0, 5623
    stbux 13, 31, 0
    rlwimi. 2, 21, 27, 27, 10
    sth 18, 0(31)
    lwzx 12, 31, 0
    extsb 26, 18
    addis 3, 0, -10126
    subfeo. 17, 8, 25
    rlwimi. 9, 15, 15, 30, 26
    addo. 12, 2, 12
    cmpi cr0, 0, 9, 10806
    addzeo 3, 25
    stbx 3, 31, 0
    lwbrx 13, 31, 0
    xoris 13, 25, 56515
    subfe 23, 21, 24
    rlwimi. 3, 5, 26, 4, 17
    lbzux 5, 31, 0
    oris 19, 13, 35250
    nand. 9, 2, 7
    extsb 7, 25
    cmpli cr0, 0, 12, 12350
    sthbrx 10, 31, 0
    lhzu 11, 0(31)
    andc 14, 9, 6
    divw 23, 18, 29
    stbu 7, 0(31)
    andi. 6, 6, 19820
    subfo. 10, 19, 5
    subf. 7, 17, 25
    addic. 12, 16, 21874
    rlwinm 14, 16, 19, 3, 12
    lhzx 8, 31, 0
    addis 24, 0, -23892
    lhau 24, 0(31)
    addis 16, 0, -14625
    sth 25, 0(31)
    srawi. 18, 2, 19
    stwux 3, 31, 0
    extsh 22, 22
    lhzu 22, 0(31)
    lwbrx 3, 31, 0
    sthbrx 24, 31, 0
    andc. 26, 7, 10
    mulli 6, 7, 10770
    cntlzw 22, 21
    sthu 7, 0(31)
    oris 14, 20, 39392
    subf 7, 6, 6
    ori 9, 21, 44432
    addis 18, 0, 17392
    addic 15, 17, -27045
    stbx 17, 31, 0
    xoris 4, 18, 32939
    lhax 24, 31, 0
    addis 13, 0, 11559
    subfco 26, 4, 9
    addis 16, 0, -32255
    stbu 19, 0(31)
    rlwinm 16, 3, 15, 22, 24
    mullw 9, 5, 15
    xor. 6, 13, 18
    stwu 17, 0(31)
    subfeo 21, 24, 26
    nor 3, 14, 17
    stbux 9, 31, 0
    subfc. 10, 23, 2
    andis. 13, 17, 20941
    blt 1f
    cntlzw 15, 6
    and. 8, 15, 17
    1:
    addis 26, 0, -12563
    sthbrx 8, 31, 0
    sthbrx 13, 31, 0
    lbzx 19, 31, 0
    stbux 2, 31, 0
    cmpli cr0, 0, 17, 39815
    addis 22, 0, -24253
    addic. 16, 7, -1737
    stwu 5, 0(31)
    addis 26, 0, -29531
    sthx 10, 31, 0
    addis 2, 0, 4018
    cntlzw. 5, 15
    lbz 11, 0(31)
    subfme 5, 3
    oris 14, 12, 58630
    subfze 4, 20
    lhau 11, 0(31)
    lhbrx 8, 31, 0
    lbzx 16, 31, 0
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
    .size run_chunk_28, .-run_chunk_28
    .section .note.GNU-stack,"",@progbits
