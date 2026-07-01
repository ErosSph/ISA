    .text
    .align 2
    .globl run_chunk_15
    .type run_chunk_15, @function
run_chunk_15:
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
    lis 12, 0xE000
    ori 12, 12, 0x0001
    mtxer 12
    lis 12, 0xE004
    ori 12, 12, 0xFF60
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x90FF
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
    lis 11, 0xFFFF
    ori 11, 11, 0xFF4C
    lis 12, 0xF54B
    lis 13, 0xFFCC
    ori 13, 13, 0x0FFF
    li 14, 0
    lis 15, 0xFD75
    ori 15, 15, 0x8E53
    lis 16, 0xC93D
    lis 17, 0x36C3
    lis 18, 0x0779
    ori 18, 18, 0x9249
    lis 19, 0x401D
    lis 20, 0xFFFF
    ori 20, 20, 0xFFFF
    lis 21, 0x8000
    ori 21, 21, 0x200E
    lis 22, 0xBFE3
    lis 23, 0xE982
    lis 24, 0xFFFF
    ori 24, 24, 0xFFFF
    lis 25, 0xA57E
    lis 26, 0x0000
    ori 26, 26, 0x0001
    lis 27, 0xE001
    ori 27, 27, 0x50C0
    lis 28, 0xE004
    ori 28, 28, 0xFF60
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4770
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk15_body_start:
    cmpi cr0, 0, 29, 0
    or. 13, 19, 23
    sthu 5, 0(31)
    mullwo. 21, 7, 12
    addis 18, 0, -30164
    addme. 12, 18
    stw 13, 0(31)
    sth 10, 0(31)
    addi 7, 15, 7289
    addis 26, 0, 2385
    stbux 2, 31, 0
    xor 18, 17, 15
    sthx 25, 31, 0
    addis 20, 0, 27704
    srawi 11, 19, 24
    orc. 23, 25, 13
    lbzx 12, 31, 0
    sthux 14, 31, 0
    addis 16, 0, -10376
    addis 24, 0, 26586
    lwzu 23, 0(31)
    addis 8, 0, -7533
    lhzux 2, 31, 0
    lhaux 15, 31, 0
    lbzux 25, 31, 0
    stmw 10, 0(31)
    addis 3, 0, -11522
    divwu. 7, 26, 29
    rlwimi 16, 23, 27, 9, 14
    addis 21, 0, -5882
    stmw 25, 0(31)
    xoris 26, 7, 17977
    addic. 19, 25, 11112
    extsb. 22, 17
    srw 5, 17, 22
    and. 26, 19, 26
    stbu 6, 0(31)
    srawi 26, 17, 6
    stbux 19, 31, 0
    bgt 1f
    addis 21, 0, -30242
    xor. 4, 3, 19
    lbzx 6, 31, 0
    xori 22, 18, 19707
    1:
    ori 9, 24, 1958
    ori 7, 23, 30577
    add 15, 4, 20
    sthbrx 5, 31, 0
    xoris 14, 16, 12091
    divw 16, 17, 29
    cmpi cr0, 0, 5, 11532
    stw 24, 0(31)
    stwux 3, 31, 0
    sthx 15, 31, 0
    subfic 15, 10, 18206
    sthbrx 24, 31, 0
    addis 8, 0, 30192
    xori 21, 25, 60278
    lha 6, 0(31)
    subfic 2, 24, 1988
    andc 14, 19, 6
    addis 14, 0, 27798
    cmpl cr0, 0, 19, 4
    mulhw. 13, 8, 4
    sthux 6, 31, 0
    cmpl cr0, 0, 14, 7
    stbx 7, 31, 0
    subfme. 17, 20
    mullwo 16, 6, 13
    addis 4, 0, 16514
    addis 11, 0, -29584
    addis 22, 0, -28038
    lhzux 16, 31, 0
    cmpli cr0, 0, 11, 20488
    addis 2, 0, 7347
    addis 26, 0, 18419
    sth 11, 0(31)
    cmpi cr0, 0, 9, -23345
    addco 18, 23, 3
    or 9, 23, 25
    stb 11, 0(31)
    lwzux 7, 31, 0
    cmpli cr0, 0, 6, 16082
    lhzux 25, 31, 0
    rlwimi 9, 21, 28, 5, 24
    addis 3, 0, 8242
    addis 22, 0, 26209
    lhzx 12, 31, 0
    addco. 17, 5, 6
    xoris 25, 8, 18907
    sth 15, 0(31)
    rlwimi 16, 15, 0, 12, 16
    addic. 26, 19, -8846
    stwbrx 23, 31, 0
    bl 1f
    addi 5, 17, 21286
    xori 24, 23, 63707
    stw 9, 0(31)
    1:
    addis 5, 0, -29209
    stwbrx 10, 31, 0
    subf 24, 21, 5
    extsh 7, 20
    cmpli cr0, 0, 23, 15071
    stwux 16, 31, 0
    bl 1f
    addco. 24, 6, 19
    divwo. 20, 6, 29
    1:
    addis 4, 0, -25265
    ori 12, 11, 63873
    sthux 21, 31, 0
    addis 15, 0, -32260
    addis 17, 0, -27881
    oris 24, 19, 55614
    addis 2, 0, 29475
    lhbrx 15, 31, 0
    lhzux 12, 31, 0
    divw 25, 14, 29
    addis 7, 0, -29761
    lwbrx 23, 31, 0
    sthux 25, 31, 0
    addis 8, 0, -27796
    subf. 23, 13, 22
    addis 10, 0, 28520
    neg. 4, 10
    lbzx 11, 31, 0
    lha 20, 0(31)
    addic. 6, 6, 28143
    lbzux 17, 31, 0
    rlwimi. 12, 18, 15, 28, 23
    addis 18, 0, -3745
    addic. 10, 16, -9908
    andi. 4, 4, 17090
    rlwimi 10, 26, 21, 26, 11
    stwux 16, 31, 0
    lbzux 10, 31, 0
    sthbrx 12, 31, 0
    and 21, 4, 3
    sthu 13, 0(31)
    stwux 22, 31, 0
    andi. 20, 17, 15258
    divwuo 23, 6, 29
    lha 26, 0(31)
    addis 21, 0, 25257
    lwzu 4, 0(31)
    and 12, 4, 12
    sthu 3, 0(31)
    ble 1f
    subfmeo 2, 15
    lhzux 12, 31, 0
    addis 22, 0, 28674
    1:
    bgt 1f
    xori 24, 7, 7506
    sthbrx 22, 31, 0
    1:
    extsh. 2, 6
    sthu 21, 0(31)
    addis 23, 0, -22177
    stbu 20, 0(31)
    sth 18, 0(31)
    and 21, 5, 8
    lwzx 25, 31, 0
    addeo. 15, 13, 2
    lhzux 18, 31, 0
    cmpi cr0, 0, 9, -26755
    lhzx 13, 31, 0
    addis 11, 0, 23686
    eqv. 3, 18, 7
    rlwinm 9, 2, 10, 19, 28
    subfzeo. 15, 19
    nor 21, 4, 12
    addis 23, 0, 8489
    b 1f
    addic 12, 13, -32269
    lwzx 18, 31, 0
    addzeo. 20, 5
    1:
    mulli 13, 19, 17368
    addis 5, 0, -24561
    srawi. 23, 25, 4
    addis 11, 0, 3304
    stbu 18, 0(31)
    cntlzw 10, 17
    lbzx 9, 31, 0
    cmpli cr0, 0, 19, 22820
    lbzx 11, 31, 0
    addic 22, 13, 14541
    lhzu 14, 0(31)
    sth 12, 0(31)
    addis 6, 0, 22441
    divwuo. 5, 9, 29
    stwu 5, 0(31)
    sth 11, 0(31)
    addis 8, 0, 4217
    lwzu 14, 0(31)
    rlwimi 23, 10, 24, 21, 22
    addis 3, 0, 28669
    addis 2, 0, -31221
    divw. 25, 11, 29
    stw 2, 0(31)
    subfme 7, 16
    addis 14, 0, -13082
    stwbrx 7, 31, 0
    lhzu 7, 0(31)
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
    .size run_chunk_15, .-run_chunk_15
    .section .note.GNU-stack,"",@progbits
