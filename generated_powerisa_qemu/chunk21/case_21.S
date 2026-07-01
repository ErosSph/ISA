    .text
    .align 2
    .globl run_chunk_21
    .type run_chunk_21, @function
run_chunk_21:
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
    ori 12, 12, 0x2498
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x6F43
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
    lis 11, 0x6546
    lis 12, 0x4E23
    lis 13, 0x00FF
    lis 14, 0x000A
    ori 14, 14, 0x00FC
    lis 15, 0xFFFF
    ori 15, 15, 0xB0C8
    li 16, 0
    lis 17, 0x0000
    ori 17, 17, 0x0100
    lis 18, 0x2238
    ori 18, 18, 0x81DD
    lis 19, 0xFFFF
    ori 19, 19, 0x8E78
    li 20, 0
    lis 21, 0x7968
    ori 21, 21, 0x0018
    lis 22, 0x0000
    ori 22, 22, 0x00FF
    lis 23, 0x0000
    ori 23, 23, 0x0001
    li 24, 0
    li 25, 0
    lis 26, 0x025C
    lis 27, 0xE001
    ori 27, 27, 0x53C0
    lis 28, 0xE005
    ori 28, 28, 0x2498
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x47D0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk21_body_start:
    cmpi cr0, 0, 29, 0
    addis 11, 0, 1657
    stb 12, 0(31)
    andis. 18, 19, 37945
    lhz 11, 0(31)
    stwx 15, 31, 0
    addis 2, 0, 20676
    addis 9, 0, 772
    stbux 16, 31, 0
    lhax 24, 31, 0
    mulhwu. 21, 9, 10
    lhzx 21, 31, 0
    neg. 12, 21
    addis 12, 0, -3436
    stbx 25, 31, 0
    addis 19, 0, 32149
    addic. 22, 10, 23523
    sth 17, 0(31)
    slw. 17, 4, 24
    srawi 4, 20, 7
    sthx 7, 31, 0
    lhbrx 25, 31, 0
    cmpl cr0, 0, 22, 6
    addo. 8, 13, 26
    lhzux 14, 31, 0
    addis 15, 0, -4903
    neg 5, 9
    addmeo. 23, 21
    nor 26, 16, 21
    mulhw. 16, 26, 21
    divwuo 22, 12, 29
    addis 12, 0, 1114
    lhbrx 16, 31, 0
    nand 20, 4, 5
    eqv 25, 13, 10
    rlwinm. 25, 23, 14, 9, 31
    lwzux 25, 31, 0
    lhau 8, 0(31)
    lwbrx 2, 31, 0
    rlwinm 22, 13, 15, 13, 25
    sthbrx 23, 31, 0
    addis 7, 0, 31160
    lhzux 6, 31, 0
    lhzx 16, 31, 0
    or 18, 6, 9
    stbux 14, 31, 0
    rlwinm 21, 18, 2, 7, 0
    addis 11, 0, 173
    cmpli cr0, 0, 21, 62591
    addis 24, 0, 27324
    bgt 1f
    addis 21, 0, 28460
    cntlzw 8, 13
    adde. 7, 17, 4
    addis 7, 0, 1963
    1:
    sthx 12, 31, 0
    lhzux 12, 31, 0
    srawi 5, 7, 8
    stbux 11, 31, 0
    addis 20, 0, -25369
    bgt 1f
    lwbrx 8, 31, 0
    srawi. 20, 16, 4
    lhbrx 11, 31, 0
    stbu 19, 0(31)
    1:
    srawi 22, 14, 21
    lhzx 25, 31, 0
    lwzu 4, 0(31)
    mulli 14, 3, -28176
    lwzx 3, 31, 0
    stbu 24, 0(31)
    stwbrx 13, 31, 0
    srw 9, 19, 19
    andis. 17, 24, 52989
    xori 15, 26, 15705
    addis 18, 0, -18726
    addis 14, 0, 26590
    sthux 3, 31, 0
    bl 1f
    lwbrx 2, 31, 0
    lhax 2, 31, 0
    stw 13, 0(31)
    andi. 16, 18, 1524
    1:
    sthx 17, 31, 0
    addis 25, 0, -2065
    stwu 25, 0(31)
    subfic 24, 12, 10416
    addis 13, 0, -27969
    lbzx 19, 31, 0
    lbzu 15, 0(31)
    lhzu 8, 0(31)
    stbu 16, 0(31)
    lwzux 6, 31, 0
    lwzx 21, 31, 0
    addis 8, 0, -11332
    lhau 26, 0(31)
    rlwinm. 16, 13, 19, 12, 11
    addeo 15, 16, 7
    rlwimi 16, 5, 14, 1, 30
    sthu 21, 0(31)
    sthu 11, 0(31)
    srawi. 10, 23, 24
    rlwimi 20, 8, 7, 3, 23
    sthu 12, 0(31)
    addis 2, 0, 13550
    mulli 24, 11, -21562
    rlwimi 19, 20, 23, 11, 8
    lbzu 14, 0(31)
    stw 8, 0(31)
    slw 15, 24, 20
    lhzu 11, 0(31)
    subfco 10, 18, 3
    stwux 20, 31, 0
    mulli 8, 6, 28681
    andc 8, 19, 18
    lwbrx 26, 31, 0
    addis 3, 0, 25479
    b 1f
    stwbrx 15, 31, 0
    rlwinm 24, 11, 12, 1, 1
    stwux 8, 31, 0
    divwu. 7, 3, 29
    1:
    sthux 17, 31, 0
    b 1f
    addis 16, 0, 17279
    stwu 25, 0(31)
    lhax 7, 31, 0
    ori 13, 19, 7264
    1:
    addis 21, 0, 13564
    lbzux 14, 31, 0
    cmpli cr0, 0, 9, 37026
    rlwinm 4, 24, 22, 27, 20
    cntlzw 13, 9
    stmw 5, 0(31)
    srawi. 23, 11, 29
    subfme. 15, 15
    stbu 12, 0(31)
    addis 22, 0, -17702
    addis 25, 0, 14074
    lhzu 18, 0(31)
    lhbrx 3, 31, 0
    stbux 14, 31, 0
    subfc. 3, 14, 6
    lbz 12, 0(31)
    lhzu 13, 0(31)
    subfeo 23, 24, 21
    addis 10, 0, 9075
    addi 2, 11, -5476
    addi 17, 24, -26727
    mullwo. 2, 24, 12
    lhbrx 19, 31, 0
    sthux 15, 31, 0
    addis 12, 0, -22928
    lhbrx 25, 31, 0
    stwux 14, 31, 0
    sthx 21, 31, 0
    addis 26, 0, 29081
    addis 5, 0, 32490
    subfic 15, 24, 16310
    rlwinm 20, 4, 26, 23, 30
    addis 25, 0, -23913
    stbu 24, 0(31)
    subfco 14, 11, 24
    lbz 26, 0(31)
    lbzux 22, 31, 0
    xoris 9, 7, 54191
    addis 12, 0, 15878
    addis 4, 0, 12313
    lbzx 13, 31, 0
    rlwinm. 13, 14, 20, 4, 5
    addmeo. 24, 17
    sraw 2, 13, 24
    andis. 20, 17, 6154
    lwz 6, 0(31)
    addis 19, 0, -1638
    sthux 6, 31, 0
    oris 9, 4, 19346
    mulhwu. 3, 5, 15
    addis 14, 0, -29102
    subfic 5, 24, 14330
    lhzx 16, 31, 0
    beq 1f
    subfe. 12, 8, 7
    sthux 12, 31, 0
    1:
    divwu. 11, 18, 29
    lbzu 2, 0(31)
    lhzx 9, 31, 0
    subfic 22, 12, -30393
    rlwinm 6, 9, 24, 23, 8
    rlwinm. 22, 26, 20, 19, 6
    lhzux 4, 31, 0
    addis 8, 0, -32104
    rlwimi 4, 15, 17, 26, 24
    xori 11, 18, 10703
    oris 20, 16, 49558
    addis 9, 0, 31179
    andi. 7, 16, 1216
    lwz 17, 0(31)
    cntlzw. 7, 19
    bne 1f
    subfic 23, 11, -23916
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
    .size run_chunk_21, .-run_chunk_21
    .section .note.GNU-stack,"",@progbits
