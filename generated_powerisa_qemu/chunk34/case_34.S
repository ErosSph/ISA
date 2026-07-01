    .text
    .align 2
    .globl run_chunk_34
    .type run_chunk_34, @function
run_chunk_34:
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
    ori 12, 12, 0x7528
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x7640
    ori 2, 2, 0xC248
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
    lis 11, 0x7EE1
    ori 11, 11, 0x1FD6
    lis 12, 0x0000
    ori 12, 12, 0x1104
    lis 13, 0xAD03
    lis 14, 0x0000
    ori 14, 14, 0x1104
    lis 15, 0x2D72
    lis 16, 0xCCCC
    lis 17, 0xFB97
    ori 17, 17, 0xEAD0
    lis 18, 0x16D2
    ori 18, 18, 0x9249
    lis 19, 0xA387
    ori 19, 19, 0x0002
    lis 20, 0x3F01
    lis 21, 0x012B
    lis 22, 0x7640
    ori 22, 22, 0xE083
    lis 23, 0x0000
    ori 23, 23, 0x1104
    lis 24, 0x3F01
    ori 24, 24, 0x0104
    lis 25, 0x0002
    ori 25, 25, 0x1F7C
    li 26, 0
    lis 27, 0xE001
    ori 27, 27, 0x5A40
    lis 28, 0xE005
    ori 28, 28, 0x7528
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x48A0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk34_body_start:
    cmpi cr0, 0, 29, 0
    srawi 23, 11, 24
    stb 5, 0(31)
    orc. 9, 7, 3
    addis 9, 0, 26351
    stwx 25, 31, 0
    cmpli cr0, 0, 5, 7082
    addi 14, 12, -23475
    addis 14, 0, -20412
    ori 10, 16, 62600
    mulhwu. 23, 4, 25
    stwux 23, 31, 0
    stb 11, 0(31)
    lhzx 14, 31, 0
    addis 18, 0, -23693
    srawi 2, 25, 31
    divwu. 8, 13, 29
    subfmeo 12, 22
    lhaux 23, 31, 0
    subfze 9, 20
    subfze 11, 4
    addis 14, 0, 9546
    stmw 23, 0(31)
    addis 5, 0, 19204
    subfc. 7, 11, 4
    addis 12, 0, -3807
    nego 18, 7
    andi. 9, 17, 62226
    mullw 17, 13, 13
    xori 6, 5, 55017
    mulhwu. 21, 10, 18
    lhzu 5, 0(31)
    addis 11, 0, 30486
    ori 19, 2, 8002
    addmeo. 3, 22
    nand 5, 26, 25
    addis 3, 0, -21920
    rlwnm 3, 22, 24, 0, 8
    lwzux 19, 31, 0
    stwux 20, 31, 0
    rlwimi 22, 13, 5, 11, 26
    subfzeo. 16, 20
    cmpi cr0, 0, 22, 13405
    addis 19, 0, -18282
    addis 5, 0, -17468
    lwz 12, 0(31)
    lhz 6, 0(31)
    extsb. 24, 14
    ori 5, 5, 29502
    sth 3, 0(31)
    rlwinm. 4, 25, 23, 18, 7
    addis 2, 0, 30922
    addis 6, 0, -23871
    stw 11, 0(31)
    srawi. 8, 16, 29
    stbx 15, 31, 0
    srawi. 18, 2, 13
    andi. 19, 6, 11461
    cmpi cr0, 0, 6, -7315
    subfic 25, 20, 26900
    rlwinm. 25, 13, 24, 13, 23
    lhbrx 2, 31, 0
    stwx 26, 31, 0
    sraw. 17, 16, 23
    addis 2, 0, 27298
    subfic 4, 12, 12168
    addis 4, 0, 10976
    lhbrx 16, 31, 0
    addis 6, 0, -29815
    sthx 11, 31, 0
    stmw 18, 0(31)
    addis 26, 0, 703
    rlwimi. 18, 23, 22, 3, 26
    stwu 19, 0(31)
    lwbrx 6, 31, 0
    addic 23, 2, 27615
    sraw 7, 15, 21
    lhzux 15, 31, 0
    subfmeo 26, 25
    cmpli cr0, 0, 4, 22724
    ori 24, 15, 37794
    addis 18, 0, -16
    addis 4, 0, -32396
    subfco 22, 22, 8
    lha 3, 0(31)
    ble 1f
    rlwinm 10, 17, 6, 6, 18
    1:
    addis 20, 0, -24719
    lwzu 2, 0(31)
    stbux 20, 31, 0
    lhau 15, 0(31)
    stbux 24, 31, 0
    addis 15, 0, -28839
    lwz 10, 0(31)
    lhzu 9, 0(31)
    subf 16, 17, 9
    stw 16, 0(31)
    srawi. 10, 19, 3
    divw 23, 10, 29
    addis 3, 0, 12658
    lha 16, 0(31)
    srawi. 11, 14, 13
    lbzu 13, 0(31)
    stb 21, 0(31)
    lhzux 4, 31, 0
    lwz 6, 0(31)
    cmpli cr0, 0, 21, 39351
    lhzux 17, 31, 0
    addis 17, 0, 27056
    lhzu 15, 0(31)
    sraw. 8, 18, 8
    lhbrx 16, 31, 0
    sthu 26, 0(31)
    stwx 14, 31, 0
    addis 6, 0, -5326
    rlwinm 22, 25, 7, 23, 17
    stw 18, 0(31)
    addis 22, 0, -4480
    rlwinm 13, 5, 28, 20, 19
    lhbrx 23, 31, 0
    addis 6, 0, 24685
    nor 18, 3, 11
    rlwinm 2, 17, 28, 16, 5
    addis 20, 0, -19206
    lbz 25, 0(31)
    sraw. 15, 10, 24
    stwu 14, 0(31)
    subfmeo 25, 12
    subfme. 5, 22
    sthbrx 12, 31, 0
    mulli 18, 24, -15709
    subfic 20, 18, -1457
    addis 2, 0, 5578
    and. 18, 6, 15
    subfco. 4, 6, 13
    addis 3, 0, 19508
    addis 15, 0, 15563
    sthu 10, 0(31)
    sthux 16, 31, 0
    stwx 20, 31, 0
    rlwinm 16, 20, 14, 31, 1
    srawi 13, 12, 15
    stb 14, 0(31)
    srawi. 19, 23, 23
    stbu 13, 0(31)
    addmeo 22, 9
    lwzux 13, 31, 0
    srawi. 6, 7, 30
    extsh 17, 20
    andis. 11, 21, 28613
    srawi 12, 19, 30
    srawi 2, 13, 13
    addis 6, 0, 9617
    stwux 22, 31, 0
    addis 25, 0, -25959
    sth 6, 0(31)
    stwu 10, 0(31)
    andi. 16, 7, 13900
    sth 2, 0(31)
    lhzu 6, 0(31)
    subfzeo. 26, 22
    addis 22, 0, -17367
    sthx 24, 31, 0
    bge 1f
    lbzux 24, 31, 0
    1:
    stbu 12, 0(31)
    stwux 19, 31, 0
    addis 6, 0, -28924
    stbx 4, 31, 0
    addic. 3, 15, -9107
    rlwimi 7, 22, 12, 15, 4
    addis 21, 0, 21720
    addis 22, 0, 14981
    addis 12, 0, -7601
    lwbrx 22, 31, 0
    stwx 18, 31, 0
    lhax 18, 31, 0
    adde 11, 11, 16
    lwzux 8, 31, 0
    oris 22, 25, 20034
    addis 17, 0, 6224
    lwz 13, 0(31)
    lhz 23, 0(31)
    addic 2, 2, 24720
    oris 23, 23, 28893
    stwu 20, 0(31)
    addis 5, 0, 14218
    or. 5, 12, 12
    ori 2, 26, 50109
    andis. 9, 19, 13744
    subfic 7, 21, -9029
    addis 11, 0, 5466
    andi. 3, 17, 48846
    stbux 12, 31, 0
    addic. 10, 6, -17227
    ori 11, 18, 28813
    oris 17, 16, 25357
    stbu 3, 0(31)
    rlwinm 15, 9, 2, 17, 9
    rlwinm 2, 21, 11, 1, 16
    sth 13, 0(31)
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
    .size run_chunk_34, .-run_chunk_34
    .section .note.GNU-stack,"",@progbits
