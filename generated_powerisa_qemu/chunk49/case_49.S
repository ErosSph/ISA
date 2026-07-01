    .text
    .align 2
    .globl run_chunk_49
    .type run_chunk_49, @function
run_chunk_49:
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
    lis 12, 0xE005
    ori 12, 12, 0xD234
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0000
    ori 2, 2, 0x0024
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
    lis 11, 0x0802
    li 12, 0
    lis 13, 0xF69F
    lis 14, 0x2400
    lis 15, 0xFFFF
    ori 15, 15, 0x99F4
    lis 16, 0x0893
    lis 17, 0xAD63
    lis 18, 0x9BA3
    lis 19, 0x644B
    ori 19, 19, 0x68C9
    lis 20, 0x838F
    lis 21, 0x5688
    lis 22, 0x0000
    ori 22, 22, 0xBD00
    lis 23, 0x26C0
    ori 23, 23, 0x40BC
    lis 24, 0x6426
    ori 24, 24, 0x809A
    lis 25, 0x9800
    lis 26, 0x000F
    lis 27, 0xE001
    ori 27, 27, 0x61C0
    lis 28, 0xE005
    ori 28, 28, 0xD234
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4990
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk49_body_start:
    cmpi cr0, 0, 29, 0
    addis 22, 0, -15157
    addic 15, 2, 14626
    lwz 17, 0(31)
    rlwimi 7, 17, 26, 30, 22
    rlwnm. 26, 5, 5, 1, 14
    addic 6, 24, 23631
    divw. 10, 3, 29
    stw 26, 0(31)
    orc. 6, 16, 7
    rlwinm 5, 10, 4, 31, 1
    stwx 4, 31, 0
    lwz 2, 0(31)
    sthu 13, 0(31)
    subfeo 11, 8, 9
    lwzux 25, 31, 0
    stbx 3, 31, 0
    orc 10, 22, 13
    srw. 20, 3, 8
    sthx 7, 31, 0
    lwzu 16, 0(31)
    addis 25, 0, -26248
    addis 7, 0, -313
    addis 5, 0, -14286
    addis 13, 0, 8820
    lhzx 2, 31, 0
    andi. 12, 25, 24550
    b 1f
    mulhwu. 25, 23, 18
    andis. 23, 24, 12753
    lhzu 5, 0(31)
    1:
    oris 22, 12, 24534
    addis 4, 0, -12404
    addis 7, 0, 16118
    sth 16, 0(31)
    lbzu 7, 0(31)
    srawi 14, 25, 0
    add. 6, 26, 10
    xoris 18, 12, 15811
    rlwimi 25, 19, 4, 16, 15
    addis 24, 0, -23078
    sth 13, 0(31)
    mullw 18, 19, 12
    srawi. 13, 4, 6
    divw. 22, 21, 29
    sthux 25, 31, 0
    addis 6, 0, 15407
    eqv. 13, 7, 13
    lwzux 16, 31, 0
    stwu 26, 0(31)
    addis 18, 0, 5302
    stw 4, 0(31)
    mulli 25, 25, 18260
    xoris 20, 11, 53024
    lwzu 18, 0(31)
    sthx 15, 31, 0
    stbux 18, 31, 0
    addis 11, 0, -7742
    addis 26, 0, 1436
    cmpli cr0, 0, 12, 25227
    lwzu 11, 0(31)
    andis. 12, 26, 26804
    addco. 19, 23, 2
    stmw 12, 0(31)
    sthx 14, 31, 0
    addis 13, 0, 27101
    addis 4, 0, -16859
    lwz 22, 0(31)
    extsb 25, 6
    oris 16, 4, 23370
    nor. 24, 19, 14
    addis 2, 0, 10819
    sthbrx 6, 31, 0
    addis 2, 0, -21756
    rlwimi. 8, 21, 9, 18, 8
    addic. 7, 20, 26344
    sthux 17, 31, 0
    sth 16, 0(31)
    ble 1f
    addco 9, 23, 26
    sthu 17, 0(31)
    1:
    stbu 10, 0(31)
    addic 9, 15, 26671
    subfeo. 25, 13, 11
    lhzu 17, 0(31)
    addis 19, 0, -13985
    divwu. 25, 16, 29
    ori 16, 25, 15593
    lhau 25, 0(31)
    cmpi cr0, 0, 22, 25486
    sth 19, 0(31)
    lhau 6, 0(31)
    addis 25, 0, -25248
    sthx 13, 31, 0
    cmpli cr0, 0, 10, 36931
    stb 6, 0(31)
    stmw 25, 0(31)
    addco. 9, 11, 20
    addis 9, 0, -8201
    stbux 13, 31, 0
    lbz 3, 0(31)
    stmw 16, 0(31)
    subfze. 7, 9
    stwbrx 19, 31, 0
    sth 16, 0(31)
    addis 2, 0, -20092
    addis 7, 0, 26515
    sthx 15, 31, 0
    addis 6, 0, 78
    rlwimi. 25, 9, 7, 15, 19
    or 11, 10, 6
    or 6, 3, 24
    addis 19, 0, -11128
    stmw 3, 0(31)
    sthu 24, 0(31)
    stwbrx 21, 31, 0
    lhax 9, 31, 0
    addis 12, 0, 28432
    lbz 13, 0(31)
    stwbrx 24, 31, 0
    addis 25, 0, -20851
    addis 24, 0, 19458
    addis 15, 0, 1148
    lhzu 21, 0(31)
    subfo. 26, 13, 4
    sthu 13, 0(31)
    lbzu 18, 0(31)
    andis. 4, 24, 40210
    slw 17, 14, 18
    lbzx 23, 31, 0
    lwbrx 14, 31, 0
    lwzux 22, 31, 0
    sthux 25, 31, 0
    sthux 14, 31, 0
    addo 17, 12, 20
    lwzux 25, 31, 0
    beq 1f
    sthu 2, 0(31)
    rlwinm. 22, 2, 0, 7, 31
    1:
    addis 12, 0, -27154
    cmpi cr0, 0, 3, 26028
    lha 21, 0(31)
    subfic 18, 3, -28488
    mullwo. 23, 4, 20
    subfze. 15, 6
    addis 24, 0, -24204
    sthx 15, 31, 0
    cntlzw. 10, 24
    addic 21, 10, -17561
    addis 6, 0, 26663
    or. 20, 5, 10
    srawi 20, 3, 21
    lhzu 16, 0(31)
    srawi 7, 15, 28
    stmw 10, 0(31)
    stbu 13, 0(31)
    addis 17, 0, -7438
    addis 22, 0, 10938
    srawi 16, 14, 7
    lwzu 19, 0(31)
    subfco. 13, 4, 21
    sth 8, 0(31)
    lwzux 7, 31, 0
    extsh 12, 23
    bl 1f
    lhax 11, 31, 0
    lbzx 9, 31, 0
    rlwinm 23, 15, 23, 12, 23
    1:
    lwzu 25, 0(31)
    addis 16, 0, -19077
    lhzux 11, 31, 0
    addo 15, 20, 23
    addis 5, 0, 17034
    addis 4, 0, 7586
    lwbrx 8, 31, 0
    srawi 2, 11, 18
    addis 5, 0, -22098
    addis 2, 0, 29093
    lhz 2, 0(31)
    stwux 12, 31, 0
    addic. 7, 26, -4525
    addis 18, 0, -17682
    stmw 20, 0(31)
    orc. 5, 17, 23
    addis 2, 0, -29562
    addeo. 17, 16, 12
    oris 25, 21, 31438
    sth 13, 0(31)
    lbz 10, 0(31)
    stb 7, 0(31)
    divw. 7, 25, 29
    stbu 4, 0(31)
    lhzu 3, 0(31)
    sthu 20, 0(31)
    oris 20, 26, 14432
    addis 14, 0, 198
    addis 23, 0, 3394
    subf 3, 3, 12
    sthu 6, 0(31)
    addis 13, 0, 15918
    b 1f
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
    .size run_chunk_49, .-run_chunk_49
    .section .note.GNU-stack,"",@progbits
