    .text
    .align 2
    .globl run_chunk_6
    .type run_chunk_6, @function
run_chunk_6:
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
    ori 12, 12, 0xC78C
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xFFFF
    ori 2, 2, 0xDABF
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
    lis 11, 0x0C4C
    lis 12, 0x0000
    ori 12, 12, 0x108D
    lis 13, 0x0005
    ori 13, 13, 0xB1D1
    lis 14, 0xF943
    lis 15, 0x1111
    ori 15, 15, 0x225C
    lis 16, 0x0306
    ori 16, 16, 0x87D7
    lis 17, 0xFFFF
    ori 17, 17, 0xD1B1
    lis 18, 0x0306
    lis 19, 0x1F9C
    ori 19, 19, 0xB6DB
    lis 20, 0xE057
    lis 21, 0x0000
    ori 21, 21, 0x009E
    lis 22, 0x0000
    ori 22, 22, 0x8E49
    li 23, 0
    lis 24, 0xA8C5
    ori 24, 24, 0xAB9D
    lis 25, 0xFFFF
    ori 25, 25, 0xFFBF
    lis 26, 0x8002
    ori 26, 26, 0xD808
    lis 27, 0xE001
    ori 27, 27, 0x4C40
    lis 28, 0xE004
    ori 28, 28, 0xC78C
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x46E0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk6_body_start:
    cmpi cr0, 0, 29, 0
    sthx 10, 31, 0
    bl 1f
    addis 23, 0, -6836
    lhzu 20, 0(31)
    subfic 11, 13, 8510
    1:
    sthu 9, 0(31)
    srawi 19, 2, 13
    xori 3, 8, 36349
    sthux 8, 31, 0
    cmpli cr0, 0, 20, 12649
    lha 2, 0(31)
    addis 23, 0, 1038
    nego 21, 14
    lwzu 5, 0(31)
    oris 11, 19, 11493
    mulhw 19, 5, 20
    addzeo 7, 6
    lwzux 3, 31, 0
    stmw 24, 0(31)
    addis 15, 0, -27595
    ori 13, 12, 22771
    adde 20, 3, 24
    addmeo 16, 5
    sthu 5, 0(31)
    addic 7, 9, -31915
    lbz 4, 0(31)
    srawi 22, 4, 21
    extsb 18, 13
    addc. 9, 21, 7
    addis 8, 0, 4940
    lwzux 18, 31, 0
    stwux 5, 31, 0
    rlwimi 2, 4, 2, 25, 19
    extsb 23, 13
    lbz 18, 0(31)
    addis 7, 0, -23810
    cmp cr0, 0, 11, 6
    rlwimi 18, 20, 14, 27, 17
    cmpli cr0, 0, 14, 9267
    eqv 23, 11, 11
    xoris 5, 20, 5053
    mulhwu. 6, 25, 15
    xoris 21, 14, 44109
    cmpli cr0, 0, 24, 46808
    subfmeo. 24, 12
    addis 25, 0, 26946
    mulli 8, 13, -78
    subfic 4, 12, -3385
    b 1f
    cmpi cr0, 0, 20, -650
    lhzu 8, 0(31)
    sthux 7, 31, 0
    subfo 10, 20, 14
    1:
    stbux 11, 31, 0
    blt 1f
    lhax 6, 31, 0
    addis 25, 0, -4456
    stwbrx 8, 31, 0
    1:
    stbx 18, 31, 0
    lwz 12, 0(31)
    stbux 7, 31, 0
    extsh 23, 24
    srawi. 5, 12, 6
    rlwimi 22, 4, 4, 12, 4
    stwbrx 19, 31, 0
    divwu. 18, 18, 29
    addis 23, 0, 13365
    subfeo 18, 7, 4
    stb 18, 0(31)
    addis 7, 0, -28967
    addis 6, 0, 12563
    addis 8, 0, -28352
    rlwimi. 23, 14, 4, 5, 4
    subfzeo 2, 25
    addis 2, 0, 24595
    stwx 3, 31, 0
    addis 16, 0, 21145
    addmeo 15, 25
    subfco. 11, 19, 9
    rlwinm. 23, 17, 5, 8, 4
    addis 20, 0, 3717
    stbx 16, 31, 0
    addis 22, 0, -25840
    lwzux 14, 31, 0
    srawi. 13, 10, 24
    addis 12, 0, 28768
    lbzu 12, 0(31)
    sthbrx 6, 31, 0
    lwbrx 2, 31, 0
    lwzux 20, 31, 0
    addis 13, 0, -401
    lwzu 20, 0(31)
    stw 16, 0(31)
    addis 23, 0, -25916
    extsb 17, 16
    stwu 17, 0(31)
    srawi 9, 19, 12
    lbz 12, 0(31)
    xori 21, 7, 62927
    addis 22, 0, -21889
    lwzx 18, 31, 0
    addis 6, 0, 21702
    lhau 7, 0(31)
    addis 2, 0, -31099
    subfeo. 15, 22, 3
    addis 9, 0, 26961
    sthx 2, 31, 0
    addis 26, 0, -14218
    addis 5, 0, -22492
    sth 23, 0(31)
    lhbrx 13, 31, 0
    xoris 10, 5, 60022
    addo. 3, 7, 17
    divwu 14, 15, 29
    lhau 8, 0(31)
    subfic 17, 9, 14901
    lhz 16, 0(31)
    addis 24, 0, 25868
    mulli 9, 25, -23161
    rlwnm 15, 11, 26, 3, 7
    bl 1f
    lhau 3, 0(31)
    rlwimi. 13, 10, 15, 25, 7
    1:
    lbzx 16, 31, 0
    subfc 13, 4, 11
    srawi. 8, 20, 1
    lwzx 16, 31, 0
    addic. 7, 3, -22299
    divwu. 6, 8, 29
    stwu 13, 0(31)
    stwux 9, 31, 0
    cmpi cr0, 0, 11, 10019
    lbzu 23, 0(31)
    lhaux 22, 31, 0
    andi. 25, 9, 53875
    addis 17, 0, 13693
    lhax 5, 31, 0
    addic. 5, 24, 12730
    addze. 26, 15
    lbz 15, 0(31)
    lhbrx 26, 31, 0
    orc 21, 24, 17
    ori 4, 21, 29526
    addi 11, 4, 3367
    stbux 10, 31, 0
    divw. 4, 11, 29
    rlwimi. 24, 8, 17, 25, 21
    addis 23, 0, -15758
    lbzx 13, 31, 0
    lha 13, 0(31)
    subfic 13, 13, -9991
    addis 9, 0, 18267
    divwo. 24, 26, 29
    stbux 20, 31, 0
    divw. 24, 25, 29
    slw. 25, 26, 3
    stwx 16, 31, 0
    rlwinm 25, 4, 1, 3, 22
    lhz 9, 0(31)
    lhax 7, 31, 0
    stwbrx 2, 31, 0
    lbz 10, 0(31)
    sraw 17, 3, 24
    stwbrx 25, 31, 0
    lwbrx 23, 31, 0
    extsb. 18, 13
    srawi 3, 13, 21
    addis 21, 0, -21992
    lhax 5, 31, 0
    addic 9, 15, 5273
    addis 25, 0, -11932
    lhaux 21, 31, 0
    addis 11, 0, -30183
    blt 1f
    mulhwu 12, 18, 3
    1:
    addic. 25, 25, -17137
    rlwimi. 6, 23, 4, 2, 27
    stmw 10, 0(31)
    lwbrx 9, 31, 0
    andis. 16, 26, 5757
    addis 7, 0, -19614
    adde 3, 13, 2
    rlwimi 13, 7, 27, 5, 29
    addis 20, 0, 12344
    addis 18, 0, 22107
    mulhw. 22, 26, 24
    stwbrx 18, 31, 0
    sthu 5, 0(31)
    rlwinm. 14, 20, 5, 11, 12
    subfme 3, 6
    addis 21, 0, -1606
    rlwinm 23, 15, 9, 0, 5
    addic 10, 24, -15711
    addic 19, 15, 24659
    lhax 21, 31, 0
    rlwinm. 19, 10, 2, 12, 18
    addis 3, 0, -22531
    lha 23, 0(31)
    sthu 6, 0(31)
    addis 14, 0, -12391
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
    .size run_chunk_6, .-run_chunk_6
    .section .note.GNU-stack,"",@progbits
