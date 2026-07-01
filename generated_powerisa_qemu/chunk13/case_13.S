    .text
    .align 2
    .globl run_chunk_13
    .type run_chunk_13, @function
run_chunk_13:
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
    ori 12, 12, 0xF2F8
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xBFEE
    ori 2, 2, 0xFFFF
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
    lis 11, 0x5519
    ori 11, 11, 0xB77D
    lis 12, 0x0000
    ori 12, 12, 0xBFEE
    lis 13, 0xBFEE
    ori 13, 13, 0xFFFF
    lis 14, 0xBFEE
    ori 14, 14, 0xFFFF
    lis 15, 0xA41D
    lis 16, 0x0000
    ori 16, 16, 0xC41A
    lis 17, 0x0100
    ori 17, 17, 0xA785
    lis 18, 0xFFFF
    ori 18, 18, 0x85A7
    lis 19, 0xDC5B
    lis 20, 0xBFEE
    ori 20, 20, 0xFFFF
    lis 21, 0x03B0
    lis 22, 0x0000
    ori 22, 22, 0xA785
    lis 23, 0xF539
    lis 24, 0x5519
    ori 24, 24, 0xFFFF
    lis 25, 0x0000
    ori 25, 25, 0x0B4D
    lis 26, 0x0000
    ori 26, 26, 0x434F
    lis 27, 0xE001
    ori 27, 27, 0x4FC0
    lis 28, 0xE004
    ori 28, 28, 0xF2F8
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4750
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk13_body_start:
    cmpi cr0, 0, 29, 0
    xor 24, 7, 16
    ori 13, 19, 25262
    sthux 16, 31, 0
    addeo 2, 8, 16
    addis 8, 0, 5859
    srawi. 19, 20, 31
    stb 15, 0(31)
    mulli 11, 4, -10334
    addis 14, 0, 13974
    andis. 4, 20, 35633
    rlwinm. 23, 11, 16, 7, 5
    cmpli cr0, 0, 2, 35408
    lbzu 11, 0(31)
    sthu 5, 0(31)
    stwu 14, 0(31)
    sthu 3, 0(31)
    lhzx 25, 31, 0
    xori 11, 21, 23488
    lbzx 18, 31, 0
    adde. 16, 8, 20
    addis 4, 0, 9003
    lwzx 8, 31, 0
    lbz 9, 0(31)
    addco 16, 24, 4
    divwu 24, 8, 29
    sthux 21, 31, 0
    cmpi cr0, 0, 19, -32221
    subfic 4, 8, 19732
    andis. 24, 3, 6142
    cmpi cr0, 0, 19, 9719
    addis 26, 0, 8703
    addis 4, 0, 31158
    addco. 8, 26, 13
    addis 2, 0, -6562
    srawi 18, 11, 11
    divwu. 7, 14, 29
    addis 26, 0, -20086
    addis 10, 0, -4510
    lwzux 25, 31, 0
    addis 19, 0, 10328
    sthu 18, 0(31)
    stbux 26, 31, 0
    ori 11, 23, 62905
    addis 23, 0, 31006
    addis 6, 0, 21975
    lbzu 16, 0(31)
    addis 19, 0, -11550
    lbzu 20, 0(31)
    stbx 5, 31, 0
    lhbrx 12, 31, 0
    addis 9, 0, 24653
    adde. 6, 22, 3
    cmpi cr0, 0, 4, -13629
    addme. 23, 20
    addis 6, 0, -31129
    addis 6, 0, 16583
    sthu 7, 0(31)
    sraw 20, 19, 4
    srawi 2, 21, 12
    lhzu 13, 0(31)
    stbu 26, 0(31)
    srawi 6, 9, 7
    addis 10, 0, 24240
    sthbrx 14, 31, 0
    cmpli cr0, 0, 17, 32674
    stw 2, 0(31)
    addis 21, 0, -185
    lwbrx 6, 31, 0
    stwx 2, 31, 0
    lwzux 22, 31, 0
    extsh 7, 13
    stmw 4, 0(31)
    sth 13, 0(31)
    stw 15, 0(31)
    stwu 10, 0(31)
    stb 10, 0(31)
    xoris 20, 4, 31891
    sraw. 22, 11, 7
    lbzux 17, 31, 0
    addo. 22, 7, 18
    addis 7, 0, -6874
    b 1f
    oris 7, 25, 18758
    lwzx 16, 31, 0
    1:
    addmeo 15, 14
    srawi. 6, 18, 5
    addi 14, 5, 16725
    lhbrx 4, 31, 0
    andi. 24, 12, 2245
    addis 4, 0, 3316
    divwo 7, 7, 29
    lhax 21, 31, 0
    lbzu 13, 0(31)
    stwux 12, 31, 0
    addis 25, 0, -31686
    addic. 4, 7, 5643
    addic 5, 13, 23291
    subfic 14, 20, -27446
    addc. 11, 6, 10
    divwuo. 2, 26, 29
    ble 1f
    srawi 4, 16, 0
    subfo. 13, 26, 24
    1:
    extsb. 19, 24
    stwbrx 13, 31, 0
    lbzx 6, 31, 0
    addic. 22, 18, -18683
    rlwinm 21, 14, 3, 23, 8
    bge 1f
    oris 12, 4, 33389
    1:
    subfe. 26, 13, 6
    lhzx 25, 31, 0
    stbu 12, 0(31)
    sthx 6, 31, 0
    stwbrx 3, 31, 0
    sthx 17, 31, 0
    bne 1f
    srawi 12, 2, 2
    1:
    addis 3, 0, 2163
    addis 11, 0, -19388
    srw 15, 10, 25
    srw 10, 22, 25
    addis 4, 0, -7717
    addis 20, 0, 1538
    subfe. 11, 25, 26
    lhzx 9, 31, 0
    lha 13, 0(31)
    lwzu 20, 0(31)
    addis 26, 0, 5287
    lwzu 10, 0(31)
    xor. 10, 5, 14
    lwzu 9, 0(31)
    lhax 22, 31, 0
    addco 23, 19, 4
    lhau 7, 0(31)
    cmpli cr0, 0, 5, 63498
    rlwimi 15, 19, 27, 16, 11
    addis 22, 0, -22392
    eqv. 15, 16, 5
    lhz 24, 0(31)
    b 1f
    subfzeo 23, 19
    1:
    lbz 17, 0(31)
    addeo. 23, 3, 2
    addo 21, 14, 20
    srw. 4, 19, 18
    addco 18, 6, 7
    sth 5, 0(31)
    nand. 18, 22, 20
    cmpli cr0, 0, 13, 27128
    addis 7, 0, -1339
    or. 22, 13, 10
    addis 22, 0, 14005
    addis 15, 0, 8372
    subfo. 17, 19, 12
    addis 23, 0, 7312
    rlwimi. 19, 24, 3, 19, 6
    lwz 18, 0(31)
    lwzux 22, 31, 0
    addis 17, 0, 9087
    stwx 26, 31, 0
    addis 13, 0, 18670
    lbzux 2, 31, 0
    addeo 11, 15, 13
    rlwimi. 12, 13, 22, 2, 0
    subfeo 16, 6, 9
    stb 14, 0(31)
    srw. 22, 3, 6
    stbx 22, 31, 0
    lhbrx 12, 31, 0
    adde. 7, 13, 18
    addis 11, 0, -31975
    lbzu 13, 0(31)
    addic 7, 4, 24401
    rlwinm 24, 17, 6, 25, 3
    addis 11, 0, 16057
    addis 21, 0, 29805
    addis 6, 0, -424
    mulhw 20, 7, 5
    cmp cr0, 0, 11, 7
    rlwimi 8, 22, 18, 19, 0
    lwzux 4, 31, 0
    lbzux 11, 31, 0
    extsb 25, 3
    cmpl cr0, 0, 11, 24
    mulhw 19, 22, 23
    lhau 7, 0(31)
    lhau 20, 0(31)
    lhzu 19, 0(31)
    addze 7, 9
    slw. 26, 10, 25
    addis 10, 0, -18915
    addis 15, 0, -450
    addis 9, 0, -18203
    adde. 23, 13, 12
    lwzux 17, 31, 0
    addis 26, 0, 29348
    addis 25, 0, -20141
    addis 16, 0, 5900
    addis 5, 0, -10835
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
    .size run_chunk_13, .-run_chunk_13
    .section .note.GNU-stack,"",@progbits
