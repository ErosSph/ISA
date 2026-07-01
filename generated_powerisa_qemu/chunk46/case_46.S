    .text
    .align 2
    .globl run_chunk_46
    .type run_chunk_46, @function
run_chunk_46:
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
    ori 12, 12, 0xBF98
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xDB9F
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
    lis 11, 0x9000
    lis 12, 0xEA3C
    lis 13, 0xFFFF
    ori 13, 13, 0xE1CE
    lis 14, 0xE48C
    ori 14, 14, 0xE1CE
    lis 15, 0x0531
    ori 15, 15, 0x9806
    lis 16, 0xCF90
    lis 17, 0xFFFF
    ori 17, 17, 0x106C
    lis 18, 0xAF20
    ori 18, 18, 0x0800
    lis 19, 0x0000
    ori 19, 19, 0x038C
    lis 20, 0xFFFF
    ori 20, 20, 0xF482
    lis 21, 0x17FA
    ori 21, 21, 0x9BE4
    lis 22, 0xFFFF
    ori 22, 22, 0xE1CE
    li 23, 0
    li 24, 0
    lis 25, 0x1040
    ori 25, 25, 0x3D21
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x6040
    lis 28, 0xE005
    ori 28, 28, 0xBF98
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4960
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk46_body_start:
    cmpi cr0, 0, 29, 0
    ori 17, 13, 30415
    addis 24, 0, -22298
    addis 5, 0, -23544
    eqv 10, 10, 9
    addo. 25, 2, 12
    stbu 7, 0(31)
    mulhwu. 2, 21, 18
    lwzx 6, 31, 0
    addis 10, 0, -17454
    lwbrx 10, 31, 0
    rlwinm. 16, 24, 11, 31, 2
    addi 25, 16, 31911
    rlwimi 17, 11, 31, 7, 26
    addis 13, 0, 12592
    lwzu 16, 0(31)
    subfic 20, 17, 27608
    subfzeo 13, 7
    addis 22, 0, 9423
    subfic 13, 23, -19179
    addis 17, 0, 20405
    cmpli cr0, 0, 19, 64578
    subfic 2, 10, 24267
    subfze 15, 9
    addis 12, 0, 5915
    addi 21, 10, -13641
    subfic 14, 3, -7566
    addis 12, 0, -9893
    addi 14, 7, 20928
    subfe. 22, 10, 14
    ori 4, 23, 35950
    addis 6, 0, 15980
    and. 19, 10, 21
    divwo. 22, 5, 29
    lwzu 23, 0(31)
    addis 14, 0, -3412
    mullwo 23, 24, 23
    addis 10, 0, -24180
    addco. 13, 17, 16
    addis 10, 0, -30616
    addeo. 12, 25, 8
    addic. 19, 3, 362
    stwx 4, 31, 0
    lbzux 9, 31, 0
    subfic 17, 6, -31387
    stwu 14, 0(31)
    addic. 17, 26, -8603
    addis 12, 0, -680
    subfe 20, 20, 14
    lbzu 9, 0(31)
    stwux 10, 31, 0
    orc. 3, 9, 18
    sthu 26, 0(31)
    stbu 8, 0(31)
    andi. 9, 26, 56407
    stbux 13, 31, 0
    addis 7, 0, 3615
    ori 5, 10, 60023
    lwbrx 8, 31, 0
    subfco 10, 24, 4
    subfe. 24, 22, 7
    stbx 11, 31, 0
    divwo 2, 23, 29
    lwzux 22, 31, 0
    lhaux 20, 31, 0
    lha 18, 0(31)
    mulhwu 15, 12, 16
    addis 19, 0, -3074
    oris 4, 26, 42784
    srawi 23, 21, 20
    lhaux 2, 31, 0
    lhzx 22, 31, 0
    stbu 11, 0(31)
    rlwinm 25, 24, 31, 7, 7
    lha 8, 0(31)
    stwbrx 17, 31, 0
    rlwinm. 25, 8, 6, 29, 24
    addme 9, 12
    cmpi cr0, 0, 19, -28592
    subfme. 8, 21
    add. 6, 4, 20
    addis 11, 0, 27303
    extsb 24, 4
    srawi 21, 5, 22
    mulli 23, 9, -2370
    subfc 26, 2, 23
    subfc. 21, 22, 26
    subfzeo 26, 8
    addme 13, 5
    stb 9, 0(31)
    subfic 20, 8, -670
    lhaux 10, 31, 0
    subfco 26, 6, 17
    cmpi cr0, 0, 8, -13072
    xor 25, 23, 7
    addis 25, 0, -16176
    stbx 22, 31, 0
    addis 7, 0, -7219
    lhzu 17, 0(31)
    divwuo. 10, 19, 29
    mulhw. 14, 9, 6
    mulli 23, 8, 8712
    subfeo. 23, 18, 13
    addis 22, 0, 7066
    addic 18, 17, -13092
    subf. 10, 6, 4
    sthux 10, 31, 0
    lbzu 5, 0(31)
    rlwimi 22, 6, 29, 8, 17
    blt 1f
    rlwinm 13, 10, 21, 18, 13
    ori 3, 5, 10376
    mulhwu 19, 17, 15
    sthbrx 7, 31, 0
    1:
    subfze 5, 3
    slw 5, 6, 7
    mulli 25, 2, -8607
    addis 4, 0, 20194
    addis 15, 0, 11796
    rlwimi. 13, 25, 24, 7, 25
    rlwinm. 5, 9, 6, 5, 31
    lhbrx 18, 31, 0
    addis 23, 0, -30059
    lwbrx 11, 31, 0
    sthbrx 20, 31, 0
    addze 2, 26
    addmeo 3, 24
    ori 8, 19, 56066
    xoris 19, 8, 13864
    mulhw 26, 4, 20
    mulhwu 24, 13, 15
    cmpli cr0, 0, 16, 64601
    neg 12, 12
    stbux 2, 31, 0
    rlwimi. 24, 22, 25, 16, 16
    slw 5, 10, 21
    nego. 6, 22
    mullwo. 19, 18, 16
    cntlzw. 12, 19
    rlwimi. 19, 14, 4, 26, 18
    xor. 25, 23, 9
    sth 5, 0(31)
    lhau 7, 0(31)
    rlwinm 26, 9, 0, 20, 4
    divwu 17, 17, 29
    andi. 13, 7, 65399
    xor 23, 12, 17
    lha 24, 0(31)
    sthu 24, 0(31)
    addo. 24, 11, 12
    addis 11, 0, 8209
    divw 16, 26, 29
    addis 17, 0, 4604
    xoris 25, 10, 62741
    addzeo 16, 7
    addis 3, 0, 20601
    addis 7, 0, 884
    lhau 23, 0(31)
    lbz 14, 0(31)
    stb 24, 0(31)
    subfeo 25, 9, 11
    lwbrx 23, 31, 0
    subfme 2, 4
    divwu 26, 3, 29
    nand. 24, 5, 10
    neg 5, 4
    andc 8, 7, 4
    addis 8, 0, -5469
    addis 9, 0, -20243
    addis 25, 0, -7730
    lhbrx 22, 31, 0
    stwx 15, 31, 0
    addis 18, 0, -6564
    stbux 2, 31, 0
    addis 19, 0, -24826
    lhbrx 6, 31, 0
    stwu 7, 0(31)
    stmw 26, 0(31)
    extsh 2, 10
    xoris 15, 18, 18068
    rlwinm 17, 5, 31, 11, 24
    subfic 9, 13, 10404
    stwbrx 16, 31, 0
    stwx 6, 31, 0
    sthx 16, 31, 0
    mulhwu. 23, 6, 23
    stwux 2, 31, 0
    add 13, 3, 11
    addis 5, 0, -18393
    srawi 9, 5, 24
    rlwimi. 26, 22, 31, 13, 20
    addmeo 23, 18
    lbzu 18, 0(31)
    andi. 18, 8, 42411
    addis 16, 0, -18946
    addis 23, 0, -3893
    mulhw. 25, 9, 24
    stbux 13, 31, 0
    lbzux 13, 31, 0
    or 22, 14, 3
    lhzu 17, 0(31)
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
    .size run_chunk_46, .-run_chunk_46
    .section .note.GNU-stack,"",@progbits
