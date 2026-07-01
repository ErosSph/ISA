    .text
    .align 2
    .globl run_chunk_10
    .type run_chunk_10, @function
run_chunk_10:
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
    ori 12, 12, 0xE05C
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x3646
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
    lis 12, 0x7A23
    lis 13, 0xB882
    li 14, 0
    lis 15, 0xCA50
    lis 16, 0x2B85
    ori 16, 16, 0x4703
    lis 17, 0x3F27
    lis 18, 0xD47B
    lis 19, 0x0C01
    ori 19, 19, 0x6DB6
    lis 20, 0x0000
    ori 20, 20, 0x8C51
    lis 21, 0x8C50
    ori 21, 21, 0xB14D
    li 22, 0
    lis 23, 0x29F9
    lis 24, 0xEF66
    lis 25, 0x6BB5
    lis 26, 0xE70D
    ori 26, 26, 0xB14C
    lis 27, 0xE001
    ori 27, 27, 0x4E40
    lis 28, 0xE004
    ori 28, 28, 0xE05C
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4720
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk10_body_start:
    cmpi cr0, 0, 29, 0
    addis 9, 0, 29379
    addic 13, 9, -19131
    bl 1f
    or. 24, 11, 11
    andis. 15, 4, 11772
    neg 3, 18
    addis 22, 0, -23617
    1:
    addic. 14, 10, 27635
    xoris 26, 13, 27440
    bl 1f
    sraw 21, 13, 2
    1:
    lbzx 17, 31, 0
    cntlzw. 17, 16
    cmpli cr0, 0, 11, 56003
    rlwinm 9, 24, 13, 4, 2
    addis 7, 0, -16929
    stwux 3, 31, 0
    beq 1f
    lha 4, 0(31)
    mulli 17, 11, -21425
    1:
    divwu. 5, 21, 29
    addc. 5, 16, 16
    addis 8, 0, 16516
    stwux 24, 31, 0
    mulhw. 22, 9, 11
    stw 11, 0(31)
    xor 13, 15, 24
    lha 26, 0(31)
    subfeo 23, 20, 21
    mullwo. 17, 16, 6
    addis 13, 0, 25402
    addis 2, 0, 16065
    addis 19, 0, -1343
    lbzu 22, 0(31)
    lhaux 13, 31, 0
    addis 16, 0, -12459
    cmpli cr0, 0, 14, 19027
    stmw 9, 0(31)
    ori 21, 3, 40548
    subfic 7, 11, 28934
    addis 24, 0, 2066
    stwx 21, 31, 0
    addis 11, 0, 30387
    stbx 2, 31, 0
    xori 9, 19, 20681
    sthx 21, 31, 0
    subf 22, 8, 23
    lhaux 20, 31, 0
    addzeo 6, 12
    lhz 25, 0(31)
    stwbrx 19, 31, 0
    stbux 21, 31, 0
    sth 7, 0(31)
    lhz 12, 0(31)
    addo 26, 25, 4
    addis 9, 0, -12535
    stbux 4, 31, 0
    lbzu 16, 0(31)
    orc 23, 17, 15
    cmpli cr0, 0, 13, 7668
    addis 13, 0, -12456
    addis 10, 0, -25916
    sthux 8, 31, 0
    rlwimi 21, 18, 31, 28, 1
    sth 13, 0(31)
    addmeo. 19, 3
    addis 11, 0, -20769
    stwx 14, 31, 0
    stwux 25, 31, 0
    bl 1f
    addo 20, 25, 20
    1:
    addis 15, 0, -25138
    addis 9, 0, 15098
    srawi 5, 26, 15
    sthu 23, 0(31)
    lwzux 4, 31, 0
    xori 15, 21, 12211
    stmw 8, 0(31)
    addis 8, 0, 3435
    nand 20, 17, 6
    rlwnm. 6, 17, 18, 13, 13
    stbx 22, 31, 0
    addis 16, 0, -23274
    lbzux 16, 31, 0
    addis 18, 0, -11268
    stwu 10, 0(31)
    b 1f
    stbu 13, 0(31)
    sth 25, 0(31)
    1:
    bne 1f
    srawi. 12, 3, 23
    1:
    lbzx 24, 31, 0
    addco. 7, 22, 10
    sthu 13, 0(31)
    addis 19, 0, -26570
    sthux 20, 31, 0
    addis 3, 0, -25757
    addis 11, 0, -29137
    sthbrx 21, 31, 0
    addic 18, 4, 7476
    neg 9, 8
    stbu 3, 0(31)
    divw. 19, 14, 29
    lhzx 24, 31, 0
    sthux 19, 31, 0
    add. 4, 20, 14
    lbzu 7, 0(31)
    lha 4, 0(31)
    stbx 8, 31, 0
    addic. 8, 8, 18577
    stwbrx 19, 31, 0
    addic. 25, 15, -27581
    extsb. 26, 18
    subfic 10, 25, -24188
    sth 25, 0(31)
    lhzx 20, 31, 0
    srawi. 10, 16, 23
    lha 6, 0(31)
    and 5, 16, 20
    sthx 8, 31, 0
    oris 6, 10, 32214
    lhaux 17, 31, 0
    stwu 4, 0(31)
    mullwo. 4, 5, 9
    lwz 9, 0(31)
    srawi. 9, 21, 12
    stmw 14, 0(31)
    addis 14, 0, -11328
    stwbrx 15, 31, 0
    addis 3, 0, -1588
    cmpli cr0, 0, 15, 9005
    lha 6, 0(31)
    lwz 20, 0(31)
    lhbrx 21, 31, 0
    srawi 3, 17, 10
    addis 23, 0, -28886
    addis 24, 0, -95
    addi 22, 20, -24156
    sthu 13, 0(31)
    addis 14, 0, 8033
    stwu 24, 0(31)
    divw 6, 12, 29
    addis 21, 0, -18232
    stb 18, 0(31)
    lwz 20, 0(31)
    subfic 13, 11, 7863
    andc. 18, 11, 20
    addic 6, 2, -2565
    mulhwu 13, 16, 14
    lwzx 24, 31, 0
    srawi. 13, 24, 24
    stbx 5, 31, 0
    addis 17, 0, 20884
    stwu 14, 0(31)
    xori 23, 8, 25136
    lbzux 9, 31, 0
    srawi 17, 23, 19
    stmw 9, 0(31)
    stbx 26, 31, 0
    addi 11, 21, -14205
    addis 15, 0, 553
    addis 8, 0, -11988
    stb 22, 0(31)
    sthbrx 18, 31, 0
    lbz 7, 0(31)
    sthux 3, 31, 0
    stwbrx 13, 31, 0
    stwx 20, 31, 0
    addis 16, 0, 7183
    xoris 17, 18, 3497
    lbzu 12, 0(31)
    srawi 12, 2, 29
    addis 3, 0, -17268
    subfe. 11, 3, 25
    lhzx 25, 31, 0
    srawi. 4, 16, 0
    subfc. 3, 8, 16
    addis 26, 0, -12476
    lhzu 25, 0(31)
    lwzu 24, 0(31)
    mulhwu 25, 15, 13
    addeo 20, 2, 25
    lbzu 20, 0(31)
    stb 26, 0(31)
    addis 26, 0, 11160
    lbzx 20, 31, 0
    addis 24, 0, 12969
    rlwimi 3, 23, 24, 9, 29
    stbx 10, 31, 0
    extsb. 7, 5
    lhzu 6, 0(31)
    lha 14, 0(31)
    slw 11, 20, 2
    stbux 15, 31, 0
    subfeo 23, 8, 21
    lwbrx 24, 31, 0
    andis. 11, 21, 63821
    rlwnm. 10, 7, 20, 31, 2
    addis 22, 0, 27377
    lhzux 19, 31, 0
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
    .size run_chunk_10, .-run_chunk_10
    .section .note.GNU-stack,"",@progbits
