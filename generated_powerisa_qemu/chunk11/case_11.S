    .text
    .align 2
    .globl run_chunk_11
    .type run_chunk_11, @function
run_chunk_11:
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
    ori 12, 12, 0xE690
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x3EC1
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
    lis 11, 0xB848
    lis 12, 0x0000
    ori 12, 12, 0x0001
    lis 13, 0xFFFF
    ori 13, 13, 0xFFB0
    lis 14, 0x0000
    ori 14, 14, 0x00A1
    lis 15, 0x0229
    lis 16, 0x1C0F
    lis 17, 0x03A7
    lis 18, 0x0E0E
    lis 19, 0x0000
    ori 19, 19, 0x00A1
    li 20, 0
    lis 21, 0xB8C8
    lis 22, 0x6AF1
    lis 23, 0xE79B
    ori 23, 23, 0xFFFF
    lis 24, 0x0000
    ori 24, 24, 0xA100
    lis 25, 0x0228
    ori 25, 25, 0xFFFF
    lis 26, 0x2B98
    lis 27, 0xE001
    ori 27, 27, 0x4EC0
    lis 28, 0xE004
    ori 28, 28, 0xE690
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4730
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk11_body_start:
    cmpi cr0, 0, 29, 0
    stwu 15, 0(31)
    stwbrx 23, 31, 0
    stmw 22, 0(31)
    lwz 3, 0(31)
    andis. 18, 19, 23725
    stwbrx 19, 31, 0
    addis 19, 0, -20916
    bgt 1f
    addis 8, 0, 21067
    addis 19, 0, 10948
    1:
    divwo 9, 13, 29
    addis 7, 0, 31218
    addis 26, 0, -7420
    ori 24, 2, 36365
    sthx 4, 31, 0
    lbzux 23, 31, 0
    divwu 19, 26, 29
    divwu 7, 9, 29
    cmpli cr0, 0, 6, 16308
    subfco. 18, 14, 3
    addis 17, 0, 18190
    lhax 22, 31, 0
    stbux 5, 31, 0
    bl 1f
    stwbrx 5, 31, 0
    stb 22, 0(31)
    cmpi cr0, 0, 24, 26832
    mulli 22, 19, 24390
    1:
    addis 20, 0, -16495
    sthu 19, 0(31)
    lbzu 25, 0(31)
    stmw 20, 0(31)
    lbzux 15, 31, 0
    cntlzw. 14, 26
    divw 20, 24, 29
    andi. 15, 2, 45782
    sthux 12, 31, 0
    addco. 25, 8, 24
    add 7, 12, 25
    nego. 24, 7
    addo 25, 17, 3
    srw 20, 5, 19
    addis 11, 0, -23889
    lbzu 11, 0(31)
    addis 24, 0, -23664
    stb 7, 0(31)
    lwzx 6, 31, 0
    extsh. 21, 23
    addme 2, 5
    addi 10, 20, -25958
    lhax 14, 31, 0
    rlwimi. 6, 24, 13, 1, 2
    addco. 23, 6, 11
    adde 4, 24, 13
    sth 6, 0(31)
    lwzx 4, 31, 0
    lwbrx 18, 31, 0
    subfc. 4, 20, 2
    lhax 20, 31, 0
    subfzeo. 26, 9
    mulhw. 20, 10, 25
    sth 9, 0(31)
    xori 11, 12, 58630
    stwx 14, 31, 0
    sthbrx 8, 31, 0
    addic 4, 25, 28610
    addis 7, 0, -17965
    ori 9, 17, 60884
    addzeo. 12, 12
    addic 15, 14, -31338
    lbz 16, 0(31)
    lbzu 5, 0(31)
    stbux 15, 31, 0
    addme 9, 25
    addis 2, 0, -3864
    stbu 21, 0(31)
    addis 10, 0, -7270
    addis 17, 0, 29992
    mullwo 22, 6, 9
    srw 3, 16, 26
    divwuo 10, 24, 29
    subfe 21, 23, 10
    stbu 9, 0(31)
    mulhw. 19, 9, 13
    stwbrx 13, 31, 0
    lhau 11, 0(31)
    lbz 16, 0(31)
    stbu 14, 0(31)
    lhz 7, 0(31)
    andis. 25, 14, 36480
    mulli 18, 10, 25521
    addis 26, 0, 14841
    mullw. 4, 7, 23
    sthu 8, 0(31)
    lha 5, 0(31)
    srawi. 25, 18, 6
    sthx 17, 31, 0
    or 26, 21, 5
    lhaux 6, 31, 0
    stbx 2, 31, 0
    stb 6, 0(31)
    addis 2, 0, -20474
    bgt 1f
    lhau 6, 0(31)
    addme 2, 11
    1:
    addis 12, 0, -28519
    addis 12, 0, 30308
    addi 24, 14, 31117
    lhz 7, 0(31)
    addis 16, 0, -7184
    sth 26, 0(31)
    srw. 14, 4, 12
    addis 5, 0, -31573
    rlwimi. 19, 16, 25, 1, 26
    lhz 24, 0(31)
    ori 11, 20, 18340
    adde. 13, 17, 8
    divwuo 10, 5, 29
    addic 20, 8, -17143
    eqv 5, 26, 15
    lwz 3, 0(31)
    subfe 16, 14, 19
    lwzux 22, 31, 0
    lwzu 10, 0(31)
    bge 1f
    cmpi cr0, 0, 11, 8221
    add 23, 16, 19
    rlwnm 17, 19, 23, 25, 29
    addic. 16, 23, 7127
    1:
    sthux 23, 31, 0
    addis 6, 0, -18772
    stwx 10, 31, 0
    stbux 25, 31, 0
    rlwinm. 7, 3, 12, 20, 6
    oris 19, 14, 33633
    lhax 11, 31, 0
    stwx 20, 31, 0
    stb 4, 0(31)
    addic. 3, 21, -23480
    lhax 20, 31, 0
    sthx 5, 31, 0
    cntlzw. 15, 12
    cmpli cr0, 0, 6, 1147
    mulhw. 23, 10, 6
    addze 9, 23
    addi 24, 16, 6057
    addis 16, 0, 266
    stw 15, 0(31)
    addmeo 17, 22
    sthux 6, 31, 0
    nego 24, 23
    stwx 24, 31, 0
    lha 15, 0(31)
    addis 21, 0, -20321
    extsb 18, 21
    cmpi cr0, 0, 5, 27806
    sthu 14, 0(31)
    sthx 13, 31, 0
    subfzeo 13, 5
    addis 10, 0, 22642
    sraw. 18, 18, 5
    mullwo 12, 10, 10
    lwbrx 20, 31, 0
    lwz 15, 0(31)
    cmpi cr0, 0, 19, 19987
    sthux 6, 31, 0
    addis 3, 0, -8186
    subfic 15, 3, 11952
    addis 13, 0, -10024
    oris 15, 15, 7626
    ori 15, 8, 58776
    mullwo. 17, 7, 16
    stmw 20, 0(31)
    stbux 15, 31, 0
    lwz 3, 0(31)
    lha 25, 0(31)
    add. 22, 20, 23
    lbzux 11, 31, 0
    lwz 22, 0(31)
    mulli 8, 15, -6584
    sthux 2, 31, 0
    addis 20, 0, -14196
    cmpli cr0, 0, 13, 40764
    lwbrx 5, 31, 0
    mullwo. 26, 25, 5
    lhzux 11, 31, 0
    srw. 4, 8, 3
    rlwinm 21, 2, 25, 2, 6
    lhbrx 9, 31, 0
    lhzux 14, 31, 0
    lbzx 5, 31, 0
    subfzeo 9, 23
    sthbrx 17, 31, 0
    lbzux 21, 31, 0
    lbzu 14, 0(31)
    subfic 24, 25, -28959
    addis 4, 0, 23287
    srawi. 6, 23, 3
    stbu 19, 0(31)
    sthx 7, 31, 0
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
    .size run_chunk_11, .-run_chunk_11
    .section .note.GNU-stack,"",@progbits
