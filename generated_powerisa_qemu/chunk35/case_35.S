    .text
    .align 2
    .globl run_chunk_35
    .type run_chunk_35, @function
run_chunk_35:
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
    ori 12, 12, 0x7B5C
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x4000
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
    lis 11, 0x0000
    ori 11, 11, 0x708D
    lis 12, 0xE24F
    li 13, 0
    lis 14, 0x254A
    li 15, 0
    lis 16, 0x0000
    ori 16, 16, 0x2400
    lis 17, 0x630D
    ori 17, 17, 0x2400
    li 18, 0
    li 19, 0
    lis 20, 0x2363
    ori 20, 20, 0x3629
    lis 21, 0x54D8
    lis 22, 0xDEDB
    lis 23, 0x70DD
    lis 24, 0x0000
    ori 24, 24, 0x0093
    lis 25, 0x9A99
    lis 26, 0xFFFF
    ori 26, 26, 0x5E00
    lis 27, 0xE001
    ori 27, 27, 0x5AC0
    lis 28, 0xE005
    ori 28, 28, 0x7B5C
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x48B0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk35_body_start:
    cmpi cr0, 0, 29, 0
    lwzu 14, 0(31)
    lhax 12, 31, 0
    bl 1f
    stbx 18, 31, 0
    1:
    stb 4, 0(31)
    sthux 16, 31, 0
    addis 19, 0, -25581
    lbzu 23, 0(31)
    addis 21, 0, 24430
    addze 19, 15
    addis 16, 0, 29397
    cmpi cr0, 0, 12, 15168
    addis 17, 0, -18113
    nor 21, 4, 26
    andi. 16, 19, 63509
    stmw 23, 0(31)
    stb 17, 0(31)
    lhz 13, 0(31)
    lbzux 4, 31, 0
    lwbrx 19, 31, 0
    addis 15, 0, 30444
    subfo 7, 13, 10
    cmpl cr0, 0, 26, 9
    stbx 24, 31, 0
    addis 20, 0, -7425
    sthu 12, 0(31)
    lhz 15, 0(31)
    lha 14, 0(31)
    cmpi cr0, 0, 8, -2923
    lhbrx 25, 31, 0
    adde 25, 20, 18
    sthx 17, 31, 0
    addis 20, 0, 13763
    addis 2, 0, -5130
    bgt 1f
    addis 5, 0, 16233
    1:
    ori 23, 19, 43694
    addis 5, 0, 3096
    lhau 5, 0(31)
    addeo 16, 6, 16
    addis 9, 0, -23453
    rlwinm 22, 5, 22, 0, 12
    andis. 3, 19, 4014
    xoris 2, 23, 18950
    rlwimi. 10, 20, 8, 30, 30
    orc 15, 13, 15
    subfzeo 21, 4
    stmw 12, 0(31)
    lbzx 19, 31, 0
    oris 24, 9, 4605
    addis 8, 0, -9179
    addis 10, 0, 5294
    srawi. 18, 2, 24
    addis 24, 0, -10798
    andi. 4, 19, 44949
    sthux 8, 31, 0
    sthu 26, 0(31)
    addis 10, 0, 7794
    stmw 20, 0(31)
    addis 2, 0, 23738
    sthx 16, 31, 0
    and 24, 4, 3
    addis 3, 0, -30925
    lwzux 20, 31, 0
    lbzu 18, 0(31)
    addis 24, 0, 22083
    addis 10, 0, 27019
    lbzu 3, 0(31)
    addic. 24, 2, -13803
    b 1f
    orc 17, 17, 24
    addis 12, 0, 24213
    1:
    addc 5, 22, 22
    divwuo. 26, 17, 29
    lwz 2, 0(31)
    xoris 17, 20, 55783
    cmpli cr0, 0, 21, 4826
    srawi 5, 2, 12
    addis 24, 0, -27270
    stmw 2, 0(31)
    addis 15, 0, 20335
    addis 18, 0, -32028
    stwux 15, 31, 0
    addis 24, 0, -16190
    sthu 6, 0(31)
    addis 11, 0, 11772
    sthbrx 26, 31, 0
    blt 1f
    addis 22, 0, -3087
    1:
    lbzu 9, 0(31)
    lhzu 22, 0(31)
    nor. 24, 2, 3
    and 2, 20, 6
    addzeo 13, 26
    rlwinm 9, 4, 2, 17, 20
    addis 23, 0, -4295
    addis 20, 0, -15548
    cmpi cr0, 0, 22, -16330
    nego. 4, 22
    andis. 6, 6, 34821
    lwz 15, 0(31)
    addis 5, 0, -12669
    stw 7, 0(31)
    rlwinm 24, 11, 30, 6, 22
    addis 22, 0, 16584
    addc 6, 12, 7
    lhzx 17, 31, 0
    andi. 22, 2, 33194
    addis 11, 0, -1700
    srawi 7, 15, 29
    sthux 16, 31, 0
    addis 14, 0, 4068
    addis 4, 0, -30224
    cmp cr0, 0, 7, 13
    bl 1f
    addco 11, 23, 2
    subfc 2, 2, 25
    stmw 8, 0(31)
    stwu 10, 0(31)
    1:
    stb 13, 0(31)
    stb 9, 0(31)
    srawi. 26, 15, 23
    addis 18, 0, 2843
    mulli 11, 3, 31043
    oris 14, 4, 63414
    mulli 12, 20, -2494
    addis 3, 0, 28154
    rlwinm. 11, 14, 14, 27, 14
    lhbrx 17, 31, 0
    stb 22, 0(31)
    subfeo 21, 16, 18
    addis 16, 0, 11522
    lbz 18, 0(31)
    addis 2, 0, -10033
    mulhw. 2, 8, 7
    stbu 7, 0(31)
    addis 25, 0, -31398
    addi 4, 11, 28321
    addis 2, 0, -17809
    subfmeo. 19, 24
    lhau 11, 0(31)
    lwzx 9, 31, 0
    addis 12, 0, -6854
    addis 14, 0, 16173
    addis 19, 0, 2926
    lwzu 20, 0(31)
    addis 3, 0, -24756
    lbz 20, 0(31)
    cmpli cr0, 0, 9, 19613
    stbu 7, 0(31)
    cmp cr0, 0, 23, 4
    stmw 13, 0(31)
    stwx 24, 31, 0
    lbzux 5, 31, 0
    lhaux 9, 31, 0
    mulli 2, 21, -10
    rlwimi 21, 18, 15, 29, 20
    sth 9, 0(31)
    stbux 17, 31, 0
    subfe 3, 25, 12
    lwzux 22, 31, 0
    bl 1f
    rlwimi 6, 9, 7, 25, 19
    cntlzw. 21, 14
    or 3, 19, 12
    lwz 12, 0(31)
    1:
    lhaux 9, 31, 0
    stb 22, 0(31)
    andis. 15, 26, 5674
    xoris 17, 17, 34223
    sthx 12, 31, 0
    lwzux 4, 31, 0
    nego 25, 26
    lwzx 11, 31, 0
    lha 14, 0(31)
    addis 13, 0, 11638
    addic. 8, 12, 30109
    lbzx 3, 31, 0
    rlwimi. 17, 2, 10, 10, 31
    subfe. 7, 17, 26
    lhaux 7, 31, 0
    rlwimi 13, 2, 27, 22, 19
    cmp cr0, 0, 3, 25
    lwzu 22, 0(31)
    stwux 20, 31, 0
    addis 26, 0, -8284
    lwz 12, 0(31)
    stbu 4, 0(31)
    stbu 16, 0(31)
    addc. 18, 6, 16
    lwz 10, 0(31)
    stbx 15, 31, 0
    orc 16, 7, 19
    lhz 13, 0(31)
    neg 9, 2
    lbzux 12, 31, 0
    addis 2, 0, -18241
    stwbrx 6, 31, 0
    addis 22, 0, -231
    addis 19, 0, -4655
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
    .size run_chunk_35, .-run_chunk_35
    .section .note.GNU-stack,"",@progbits
