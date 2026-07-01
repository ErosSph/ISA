    .text
    .align 2
    .globl run_chunk_39
    .type run_chunk_39, @function
run_chunk_39:
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
    ori 12, 12, 0x942C
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x0001
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
    lis 11, 0x31D4
    lis 12, 0x0000
    ori 12, 12, 0x2003
    li 13, 0
    lis 14, 0xFFFF
    ori 14, 14, 0xFDFF
    li 15, 0
    lis 16, 0x016F
    ori 16, 16, 0x10FF
    lis 17, 0x4B00
    lis 18, 0x0000
    ori 18, 18, 0x2627
    lis 19, 0xDFFB
    lis 20, 0x0000
    ori 20, 20, 0x005F
    li 21, 0
    lis 22, 0x0000
    ori 22, 22, 0x2627
    lis 23, 0x688A
    ori 23, 23, 0x394B
    lis 24, 0x9C92
    lis 25, 0x5F7F
    ori 25, 25, 0x9F86
    lis 26, 0x0000
    ori 26, 26, 0x2627
    lis 27, 0xE001
    ori 27, 27, 0x5CC0
    lis 28, 0xE005
    ori 28, 28, 0x942C
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x48F0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk39_body_start:
    cmpi cr0, 0, 29, 0
    srw. 16, 21, 11
    lhzux 23, 31, 0
    lhbrx 17, 31, 0
    stbx 4, 31, 0
    stmw 14, 0(31)
    cmpli cr0, 0, 14, 2907
    addis 16, 0, 1571
    addis 21, 0, -895
    sthbrx 13, 31, 0
    subfic 20, 12, 24919
    sthu 3, 0(31)
    subfzeo 9, 2
    subfmeo 7, 18
    addze 24, 12
    neg 3, 11
    mulhwu. 23, 24, 2
    stmw 14, 0(31)
    stbux 10, 31, 0
    addc. 20, 21, 11
    lha 21, 0(31)
    sthbrx 10, 31, 0
    stwu 13, 0(31)
    addis 2, 0, 6089
    b 1f
    subfco 14, 21, 26
    sthu 8, 0(31)
    1:
    srawi 6, 6, 22
    addis 16, 0, 14651
    b 1f
    lwzu 7, 0(31)
    addis 4, 0, -25471
    stw 15, 0(31)
    1:
    subfmeo 24, 3
    sraw. 4, 19, 26
    sthx 13, 31, 0
    srawi 14, 2, 12
    addis 7, 0, -2345
    cmpi cr0, 0, 17, 2724
    sthx 11, 31, 0
    nego 19, 10
    extsb. 2, 10
    addis 15, 0, 24028
    srawi. 13, 13, 2
    addis 20, 0, -16824
    stwx 26, 31, 0
    stw 2, 0(31)
    addis 17, 0, 29117
    addis 11, 0, 2845
    lbzux 7, 31, 0
    srawi 2, 13, 29
    addis 24, 0, 1949
    ori 15, 11, 5780
    lwbrx 18, 31, 0
    lhbrx 24, 31, 0
    rlwimi 17, 8, 3, 9, 23
    cmpli cr0, 0, 25, 20962
    sth 23, 0(31)
    subf. 8, 6, 26
    stwu 16, 0(31)
    addis 25, 0, -29369
    addis 5, 0, 30410
    mulli 11, 6, 23779
    cmpli cr0, 0, 21, 61882
    stwbrx 9, 31, 0
    stw 11, 0(31)
    oris 15, 11, 8918
    addeo. 15, 21, 24
    lhz 2, 0(31)
    addo. 21, 19, 21
    stb 24, 0(31)
    sthu 9, 0(31)
    add. 2, 11, 2
    addis 6, 0, 3390
    stbx 22, 31, 0
    rlwimi. 14, 7, 15, 23, 17
    mullw. 7, 8, 2
    addi 16, 23, -10750
    stw 21, 0(31)
    addis 14, 0, 30357
    addis 10, 0, 12380
    cmpli cr0, 0, 4, 6024
    lwz 2, 0(31)
    mulhwu. 21, 14, 3
    mulli 26, 21, -22086
    lwzu 22, 0(31)
    addmeo. 10, 9
    stbux 7, 31, 0
    rlwimi 15, 11, 24, 5, 25
    divw 8, 26, 29
    lbzu 7, 0(31)
    addzeo 4, 8
    extsb 25, 5
    stbux 9, 31, 0
    addis 20, 0, -5614
    lwzu 17, 0(31)
    addis 24, 0, -19164
    lhz 20, 0(31)
    lwz 5, 0(31)
    stb 25, 0(31)
    stwbrx 8, 31, 0
    addc 10, 23, 16
    and 14, 2, 16
    lhzx 19, 31, 0
    ori 15, 22, 24762
    mulli 22, 13, 30400
    stw 22, 0(31)
    beq 1f
    addic 18, 10, 16256
    lhaux 9, 31, 0
    1:
    rlwimi. 15, 5, 18, 20, 9
    lhzx 7, 31, 0
    cmpi cr0, 0, 19, 6117
    lwbrx 22, 31, 0
    lwzu 25, 0(31)
    lhzux 7, 31, 0
    lhax 20, 31, 0
    stbu 12, 0(31)
    and 5, 23, 20
    srw 11, 10, 20
    ori 16, 5, 175
    addis 4, 0, -6118
    addis 12, 0, -8442
    lhzu 6, 0(31)
    sthu 16, 0(31)
    addis 5, 0, -29531
    lwzu 15, 0(31)
    lbzux 22, 31, 0
    stwux 23, 31, 0
    addi 24, 4, 28342
    rlwinm 21, 4, 10, 29, 16
    addic 8, 12, -16878
    lhz 25, 0(31)
    mulhwu 2, 8, 3
    lwbrx 5, 31, 0
    rlwinm. 24, 24, 24, 3, 29
    addis 23, 0, 3273
    stbu 10, 0(31)
    addis 22, 0, -19665
    stbx 26, 31, 0
    stbu 18, 0(31)
    stwbrx 9, 31, 0
    subfic 6, 4, -10942
    mulli 23, 2, 29862
    sthbrx 15, 31, 0
    b 1f
    srawi. 7, 6, 10
    lwz 15, 0(31)
    sth 7, 0(31)
    sthx 5, 31, 0
    1:
    xoris 20, 17, 18045
    addis 25, 0, 21087
    or 13, 21, 25
    addis 23, 0, -28143
    addic. 23, 10, -20311
    addis 6, 0, 28455
    lwzx 7, 31, 0
    andc 12, 25, 19
    extsh. 4, 4
    lbzx 25, 31, 0
    xoris 5, 5, 63938
    sthbrx 4, 31, 0
    lhaux 8, 31, 0
    addis 5, 0, -19880
    addis 18, 0, 29896
    addis 17, 0, 26688
    rlwnm. 2, 15, 16, 17, 20
    lha 2, 0(31)
    addis 6, 0, 23057
    rlwimi 8, 4, 4, 23, 5
    subfco 6, 24, 10
    lwzux 17, 31, 0
    add. 24, 3, 8
    srawi 17, 12, 5
    lwzu 18, 0(31)
    xoris 12, 12, 735
    sthux 22, 31, 0
    stbx 3, 31, 0
    lhzx 15, 31, 0
    sth 16, 0(31)
    subfc. 17, 4, 16
    mullwo 8, 20, 16
    lhzux 20, 31, 0
    addze 17, 11
    oris 2, 21, 64446
    addic. 19, 12, -297
    slw 11, 2, 15
    stw 19, 0(31)
    addis 19, 0, 24825
    sthu 8, 0(31)
    oris 9, 9, 27651
    lwzx 8, 31, 0
    add 15, 16, 26
    subfco. 18, 10, 2
    addze. 8, 10
    addis 15, 0, -26886
    sthu 16, 0(31)
    rlwimi 12, 22, 2, 11, 27
    xori 16, 25, 36820
    stb 7, 0(31)
    stw 6, 0(31)
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
    .size run_chunk_39, .-run_chunk_39
    .section .note.GNU-stack,"",@progbits
