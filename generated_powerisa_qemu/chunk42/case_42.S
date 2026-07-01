    .text
    .align 2
    .globl run_chunk_42
    .type run_chunk_42, @function
run_chunk_42:
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
    ori 12, 12, 0xA6C8
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x84E5
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
    lis 11, 0x34A1
    lis 12, 0x79BA
    lis 13, 0x8000
    ori 13, 13, 0x0001
    li 14, 0
    lis 15, 0x7B1A
    ori 15, 15, 0xFFFF
    lis 16, 0x34A1
    ori 16, 16, 0x00FE
    lis 17, 0x4E48
    lis 18, 0x34A0
    ori 18, 18, 0xCB5F
    lis 19, 0x4C7F
    ori 19, 19, 0xFFFF
    lis 20, 0xB380
    lis 21, 0x2AE9
    ori 21, 21, 0xCA48
    lis 22, 0x7963
    lis 23, 0xAD70
    ori 23, 23, 0x34A1
    lis 24, 0xEBFF
    ori 24, 24, 0xFEE8
    lis 25, 0x2DB5
    lis 26, 0x5EAE
    lis 27, 0xE001
    ori 27, 27, 0x5E40
    lis 28, 0xE005
    ori 28, 28, 0xA6C8
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4920
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk42_body_start:
    cmpi cr0, 0, 29, 0
    addi 7, 10, 14418
    lwz 16, 0(31)
    divwo 24, 23, 29
    eqv. 5, 16, 13
    rlwimi 11, 22, 21, 17, 26
    cmpli cr0, 0, 4, 12590
    lhax 5, 31, 0
    addis 4, 0, -10613
    srawi. 24, 2, 4
    mullwo 3, 23, 17
    lwzu 9, 0(31)
    lhbrx 24, 31, 0
    stbx 5, 31, 0
    lbzux 25, 31, 0
    addis 10, 0, 16197
    addic 19, 4, -23509
    subfzeo 4, 5
    subfic 5, 11, 20037
    divw. 23, 20, 29
    bl 1f
    addo 18, 13, 8
    rlwinm. 4, 25, 21, 22, 24
    1:
    ble 1f
    cmpl cr0, 0, 11, 9
    addco. 25, 11, 5
    addis 25, 0, -27250
    1:
    stwbrx 3, 31, 0
    lwzx 14, 31, 0
    stw 13, 0(31)
    addis 16, 0, 3314
    addis 6, 0, -9228
    cmp cr0, 0, 20, 14
    addis 6, 0, -15096
    lwzux 18, 31, 0
    cmpi cr0, 0, 22, 29665
    addis 16, 0, -20004
    stbx 3, 31, 0
    mullwo 12, 20, 2
    stwux 22, 31, 0
    sthbrx 23, 31, 0
    addis 14, 0, -27726
    addis 12, 0, 404
    addis 2, 0, -11357
    oris 19, 7, 26115
    stwux 14, 31, 0
    srawi. 10, 6, 28
    addic 15, 15, -25780
    lwz 15, 0(31)
    lwzu 15, 0(31)
    srawi 22, 15, 26
    addis 11, 0, 436
    lwzx 18, 31, 0
    beq 1f
    lhaux 2, 31, 0
    stwbrx 18, 31, 0
    lbz 23, 0(31)
    addis 19, 0, -7021
    1:
    andis. 23, 23, 58305
    lha 26, 0(31)
    addi 13, 11, 7879
    divwuo 8, 2, 29
    addo. 8, 8, 12
    srawi. 19, 10, 30
    rlwinm 23, 4, 15, 29, 31
    sthx 17, 31, 0
    lhax 17, 31, 0
    ori 11, 14, 22080
    addis 7, 0, 9987
    addi 16, 3, -5518
    bne 1f
    lhau 8, 0(31)
    lhzx 25, 31, 0
    orc 24, 15, 22
    1:
    stwux 18, 31, 0
    subfze 4, 12
    addis 4, 0, -26932
    lha 15, 0(31)
    addis 17, 0, 17698
    addo. 6, 25, 18
    subfze 18, 13
    rlwinm. 14, 12, 30, 12, 26
    addis 15, 0, 7933
    stw 13, 0(31)
    mulli 24, 24, 15540
    lwz 24, 0(31)
    addis 14, 0, -31417
    stwx 21, 31, 0
    stwu 7, 0(31)
    subfic 12, 2, 13297
    mulli 2, 2, 15999
    subfic 25, 3, 9227
    cmpli cr0, 0, 4, 15200
    lwzx 3, 31, 0
    stmw 25, 0(31)
    lwbrx 11, 31, 0
    lwzu 21, 0(31)
    lhzu 11, 0(31)
    rlwinm. 4, 22, 6, 15, 19
    sthx 20, 31, 0
    lwbrx 9, 31, 0
    srawi 24, 9, 25
    lha 26, 0(31)
    stw 25, 0(31)
    lwz 18, 0(31)
    sthbrx 8, 31, 0
    sth 6, 0(31)
    oris 4, 7, 51176
    stwux 22, 31, 0
    addis 9, 0, -11078
    add. 12, 14, 15
    mulhw 19, 20, 20
    andis. 13, 7, 57350
    extsh. 14, 10
    addis 4, 0, 20433
    sthx 11, 31, 0
    slw 26, 11, 23
    addic. 19, 4, 16307
    oris 7, 22, 10391
    subfe. 17, 13, 24
    addic 25, 3, 25966
    addis 25, 0, -30292
    stbux 2, 31, 0
    stb 11, 0(31)
    rlwinm 6, 11, 12, 27, 11
    lbz 24, 0(31)
    lbzu 21, 0(31)
    stbx 6, 31, 0
    addis 7, 0, -1314
    addis 7, 0, 7663
    rlwimi 2, 6, 16, 17, 4
    bgt 1f
    addis 17, 0, -23529
    1:
    lhzx 5, 31, 0
    addic 12, 23, 8794
    addis 13, 0, 2823
    lhz 9, 0(31)
    andis. 3, 3, 15961
    lbzux 20, 31, 0
    lhzu 6, 0(31)
    addis 7, 0, -13734
    sthx 17, 31, 0
    blt 1f
    lbzx 23, 31, 0
    lhax 17, 31, 0
    cmp cr0, 0, 25, 9
    addis 15, 0, 4396
    1:
    addis 7, 0, -26586
    addis 19, 0, -9328
    lbzx 10, 31, 0
    addmeo. 18, 24
    addis 12, 0, 19666
    lbzu 23, 0(31)
    nand 20, 6, 6
    oris 12, 20, 984
    stwux 17, 31, 0
    lhaux 6, 31, 0
    lhau 17, 0(31)
    divwuo. 9, 20, 29
    lwzu 4, 0(31)
    cntlzw. 19, 20
    addis 13, 0, 15168
    lha 8, 0(31)
    lhz 20, 0(31)
    addmeo. 4, 24
    addic 25, 11, 34
    lha 4, 0(31)
    mulhw. 3, 19, 17
    stwu 22, 0(31)
    stwu 26, 0(31)
    sth 20, 0(31)
    stbu 13, 0(31)
    stwu 17, 0(31)
    addi 10, 22, 16514
    stwu 12, 0(31)
    srawi 21, 6, 19
    lwbrx 21, 31, 0
    addis 8, 0, 22619
    lwzux 19, 31, 0
    stmw 18, 0(31)
    divw. 4, 15, 29
    lhaux 26, 31, 0
    divw 24, 2, 29
    rlwimi 5, 19, 25, 27, 31
    eqv. 14, 9, 20
    lhzux 23, 31, 0
    lwzux 19, 31, 0
    subf. 23, 19, 25
    mulhw. 11, 2, 15
    rlwnm. 9, 4, 16, 27, 16
    cmpli cr0, 0, 8, 53191
    addis 25, 0, -4715
    addis 12, 0, -26798
    andc 12, 25, 5
    divwo 13, 6, 29
    addis 25, 0, 12106
    bl 1f
    addis 21, 0, -25201
    sthbrx 12, 31, 0
    lwbrx 14, 31, 0
    1:
    addis 20, 0, -21789
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
    .size run_chunk_42, .-run_chunk_42
    .section .note.GNU-stack,"",@progbits
