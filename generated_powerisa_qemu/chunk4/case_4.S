    .text
    .align 2
    .globl run_chunk_4
    .type run_chunk_4, @function
run_chunk_4:
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
    lis 12, 0xE004
    ori 12, 12, 0xBB24
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x2B31
    ori 2, 2, 0xC29B
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
    lis 11, 0xD5B6
    ori 11, 11, 0xA13F
    lis 12, 0x0000
    ori 12, 12, 0x03D4
    li 13, 0
    lis 14, 0x0F2C
    lis 15, 0x0000
    ori 15, 15, 0x03C9
    lis 16, 0xF45B
    lis 17, 0xFFFF
    ori 17, 17, 0xC000
    lis 18, 0xD4CE
    li 19, 0
    lis 20, 0x536C
    li 21, 0
    lis 22, 0x0000
    ori 22, 22, 0x0024
    li 23, 0
    lis 24, 0xEF22
    ori 24, 24, 0xB6DC
    lis 25, 0xA917
    lis 26, 0xEF22
    ori 26, 26, 0x7942
    lis 27, 0xE001
    ori 27, 27, 0x4B40
    lis 28, 0xE004
    ori 28, 28, 0xBB24
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x46C0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk4_body_start:
    cmpi cr0, 0, 29, 0
    rlwinm. 14, 26, 3, 13, 29
    neg 13, 26
    subfme 6, 20
    addis 22, 0, -28010
    lhzx 14, 31, 0
    addis 13, 0, 30508
    subfco. 3, 26, 17
    oris 26, 21, 13880
    blt 1f
    lbzx 13, 31, 0
    addis 21, 0, -20859
    cmpl cr0, 0, 18, 19
    1:
    stb 12, 0(31)
    divwu 26, 20, 29
    addis 10, 0, 13099
    bge 1f
    srw 26, 11, 18
    lhau 13, 0(31)
    addis 2, 0, -30072
    addis 20, 0, 498
    1:
    b 1f
    addeo 26, 7, 2
    lhzu 17, 0(31)
    1:
    xoris 14, 4, 6479
    stbu 26, 0(31)
    cmpi cr0, 0, 16, -119
    subfme 13, 18
    divwuo 3, 24, 29
    lwzux 18, 31, 0
    stb 13, 0(31)
    stmw 4, 0(31)
    bgt 1f
    xori 25, 9, 52334
    1:
    srawi 23, 6, 30
    subfic 21, 15, -21006
    lhz 2, 0(31)
    bne 1f
    srawi. 7, 11, 13
    cntlzw. 10, 11
    1:
    xor 5, 2, 12
    beq 1f
    cmp cr0, 0, 5, 16
    srawi 18, 22, 3
    subfeo. 14, 24, 22
    lwzx 25, 31, 0
    1:
    lwzux 13, 31, 0
    addis 6, 0, -12866
    sthux 2, 31, 0
    lhax 23, 31, 0
    sthbrx 23, 31, 0
    addis 21, 0, -14785
    lwbrx 10, 31, 0
    addis 4, 0, -12445
    stbu 16, 0(31)
    addis 16, 0, -5999
    and 12, 2, 7
    stbux 18, 31, 0
    sthu 17, 0(31)
    lhaux 19, 31, 0
    sthu 5, 0(31)
    lhzux 11, 31, 0
    subfic 24, 25, -23911
    andi. 10, 4, 15438
    rlwinm 26, 22, 27, 25, 18
    addis 17, 0, -10411
    lwzx 18, 31, 0
    lhau 11, 0(31)
    addic 19, 3, 7904
    lbzu 26, 0(31)
    sth 23, 0(31)
    stbu 9, 0(31)
    lwzux 21, 31, 0
    lbzu 7, 0(31)
    rlwimi 5, 17, 6, 27, 22
    rlwimi 4, 15, 10, 5, 8
    lhzx 16, 31, 0
    addze 12, 10
    stwux 8, 31, 0
    stbu 12, 0(31)
    addco 21, 16, 19
    stbu 9, 0(31)
    add 9, 25, 22
    addi 15, 7, -30224
    cmpli cr0, 0, 4, 49760
    addis 20, 0, 4313
    addmeo 17, 6
    lbzx 20, 31, 0
    subfco. 26, 23, 18
    cmpi cr0, 0, 15, 26136
    addic 9, 23, -14708
    rlwimi. 19, 19, 26, 15, 5
    addco. 3, 9, 3
    oris 17, 21, 5254
    lhzux 23, 31, 0
    addis 13, 0, -12142
    addis 12, 0, 16685
    sth 5, 0(31)
    cmpl cr0, 0, 14, 26
    addis 13, 0, 6784
    mullwo 12, 2, 15
    ori 10, 6, 31218
    addis 19, 0, -2274
    srawi 7, 26, 28
    lwzx 6, 31, 0
    b 1f
    mulli 16, 3, -31537
    lhaux 24, 31, 0
    addis 13, 0, 28646
    sthux 20, 31, 0
    1:
    addc. 25, 25, 23
    addis 23, 0, -10190
    lhz 24, 0(31)
    addis 14, 0, -30792
    cmpli cr0, 0, 18, 30502
    sthu 18, 0(31)
    stb 11, 0(31)
    nor 3, 21, 21
    stbu 23, 0(31)
    cmp cr0, 0, 10, 18
    addic. 12, 4, -26847
    subfzeo 5, 12
    or. 6, 18, 17
    ori 26, 12, 2611
    sth 10, 0(31)
    sthx 4, 31, 0
    stwbrx 2, 31, 0
    lhzx 8, 31, 0
    addeo 25, 15, 15
    addis 8, 0, -16180
    addis 18, 0, 20464
    sthux 21, 31, 0
    sth 2, 0(31)
    addzeo 3, 15
    lhzu 26, 0(31)
    stmw 19, 0(31)
    lhau 8, 0(31)
    addis 24, 0, -6090
    mulli 2, 9, 10512
    stwbrx 2, 31, 0
    lwzu 17, 0(31)
    stbux 22, 31, 0
    addmeo. 19, 8
    addis 2, 0, 29481
    xoris 12, 5, 62637
    stbux 25, 31, 0
    addo. 16, 17, 8
    stwu 4, 0(31)
    srawi 16, 17, 6
    lbz 8, 0(31)
    sraw. 17, 15, 21
    rlwimi. 17, 6, 0, 29, 3
    srawi 8, 17, 2
    rlwinm 6, 10, 2, 25, 28
    stwbrx 24, 31, 0
    addi 3, 4, 24689
    stwu 10, 0(31)
    lwzu 22, 0(31)
    stwbrx 20, 31, 0
    sthu 25, 0(31)
    adde 8, 6, 8
    andis. 5, 15, 9536
    divwuo. 26, 3, 29
    addis 12, 0, 30525
    divwu 7, 10, 29
    addis 19, 0, -18874
    addis 13, 0, 14379
    rlwinm. 22, 19, 1, 2, 28
    subfeo. 13, 23, 16
    addis 17, 0, 32674
    cmpi cr0, 0, 6, -14355
    addis 25, 0, 27786
    stwx 7, 31, 0
    rlwimi 19, 6, 27, 22, 0
    and. 13, 10, 19
    lha 11, 0(31)
    sthux 26, 31, 0
    add 9, 23, 16
    divwuo. 7, 9, 29
    stwbrx 5, 31, 0
    addis 15, 0, 25705
    stb 16, 0(31)
    subfco 21, 12, 9
    lhz 26, 0(31)
    lhbrx 11, 31, 0
    cmpi cr0, 0, 12, 16333
    sthbrx 8, 31, 0
    xori 20, 26, 44962
    subfme. 16, 17
    addic. 8, 8, 18064
    subfic 14, 24, 10032
    lhbrx 18, 31, 0
    addis 24, 0, 21426
    divwuo 2, 5, 29
    stbux 14, 31, 0
    lwbrx 16, 31, 0
    andis. 11, 13, 21838
    sth 13, 0(31)
    lwzu 3, 0(31)
    andc 26, 21, 19
    lhzu 14, 0(31)
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
    .size run_chunk_4, .-run_chunk_4
    .section .note.GNU-stack,"",@progbits
