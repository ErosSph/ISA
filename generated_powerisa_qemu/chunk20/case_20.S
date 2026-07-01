    .text
    .align 2
    .globl run_chunk_20
    .type run_chunk_20, @function
run_chunk_20:
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
    ori 12, 12, 0x1E64
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0015
    ori 2, 2, 0x934A
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
    lis 11, 0xF844
    lis 12, 0xB023
    lis 13, 0xD088
    lis 14, 0xC841
    ori 14, 14, 0x23C2
    lis 15, 0x7FA6
    lis 16, 0x7C8A
    lis 17, 0x7C76
    lis 18, 0xFFFF
    ori 18, 18, 0xFFFF
    lis 19, 0xBEE5
    ori 19, 19, 0xBEFE
    lis 20, 0xD087
    ori 20, 20, 0x9FE9
    lis 21, 0xA142
    lis 22, 0x4B9B
    lis 23, 0x59C5
    lis 24, 0xFFFF
    ori 24, 24, 0xFD81
    lis 25, 0x805A
    lis 26, 0xBEE6
    lis 27, 0xE001
    ori 27, 27, 0x5340
    lis 28, 0xE005
    ori 28, 28, 0x1E64
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x47C0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk20_body_start:
    cmpi cr0, 0, 29, 0
    addic. 16, 15, -12697
    lhax 18, 31, 0
    addis 13, 0, 11809
    addis 18, 0, 12731
    subfic 19, 20, -2091
    sth 22, 0(31)
    addco 17, 18, 3
    subfic 17, 24, 15543
    lwbrx 23, 31, 0
    addis 7, 0, -16053
    lwzx 8, 31, 0
    lhaux 10, 31, 0
    addis 3, 0, 9116
    addis 14, 0, 386
    divwo. 10, 10, 29
    lhzx 13, 31, 0
    cmpi cr0, 0, 6, 814
    bne 1f
    addis 17, 0, 12306
    oris 25, 24, 56926
    1:
    addis 6, 0, 5381
    stmw 5, 0(31)
    rlwimi 23, 8, 9, 8, 13
    addis 26, 0, -25274
    cmpi cr0, 0, 4, 15329
    addis 3, 0, 7717
    sth 19, 0(31)
    stw 9, 0(31)
    xoris 18, 5, 13733
    subfme. 9, 13
    addis 19, 0, -32760
    cmpli cr0, 0, 17, 28662
    addis 14, 0, 27939
    b 1f
    xori 5, 13, 24660
    andi. 3, 5, 36269
    xoris 6, 23, 59059
    stbu 10, 0(31)
    1:
    sthbrx 11, 31, 0
    sthx 19, 31, 0
    addis 16, 0, -14053
    lhax 10, 31, 0
    divwu. 23, 17, 29
    addis 21, 0, -24977
    add. 3, 25, 5
    sthux 24, 31, 0
    addic. 11, 17, -32335
    and 22, 18, 13
    bne 1f
    lhz 19, 0(31)
    lhz 2, 0(31)
    1:
    rlwnm. 22, 19, 12, 27, 5
    add 10, 20, 17
    bl 1f
    lhau 25, 0(31)
    rlwnm 18, 24, 13, 22, 5
    lhau 15, 0(31)
    1:
    addmeo 13, 24
    addis 21, 0, -1403
    lhzx 23, 31, 0
    lbz 8, 0(31)
    nor. 25, 10, 26
    lwz 9, 0(31)
    sthu 9, 0(31)
    addis 6, 0, -19845
    sthu 26, 0(31)
    slw 26, 9, 23
    stbx 21, 31, 0
    rlwimi. 2, 10, 12, 11, 27
    addic 18, 13, -19732
    rlwinm 19, 2, 3, 20, 1
    oris 18, 18, 64741
    subf 26, 8, 15
    sthx 26, 31, 0
    andi. 2, 5, 55797
    stwu 13, 0(31)
    xoris 13, 8, 1763
    mullw 23, 26, 25
    subfe 13, 22, 13
    b 1f
    divwuo. 11, 10, 29
    1:
    stbu 20, 0(31)
    addis 5, 0, -4305
    sth 23, 0(31)
    lhzux 18, 31, 0
    addis 6, 0, -23627
    addis 13, 0, 31250
    lha 23, 0(31)
    lhax 9, 31, 0
    addis 6, 0, -29726
    stwux 5, 31, 0
    divwu. 23, 12, 29
    addis 18, 0, -17568
    lhzx 13, 31, 0
    subfze. 4, 16
    oris 20, 23, 2451
    subfze. 9, 7
    sthx 10, 31, 0
    lwzux 12, 31, 0
    lwzux 5, 31, 0
    addis 10, 0, -21419
    nor 23, 24, 5
    stwux 23, 31, 0
    stb 15, 0(31)
    lbzux 19, 31, 0
    lbzx 12, 31, 0
    xori 26, 13, 57210
    xori 6, 21, 24019
    lbz 5, 0(31)
    slw. 20, 25, 12
    extsb 5, 9
    lhbrx 11, 31, 0
    xori 23, 8, 231
    lhaux 4, 31, 0
    lbzx 22, 31, 0
    addis 17, 0, 3979
    rlwinm 24, 21, 27, 18, 8
    stbux 13, 31, 0
    lwzu 11, 0(31)
    lbzux 6, 31, 0
    stbx 11, 31, 0
    lhzux 11, 31, 0
    add 6, 21, 10
    rlwinm 24, 16, 26, 15, 19
    rlwimi 23, 26, 26, 9, 0
    lbzu 4, 0(31)
    subfc 20, 7, 24
    stwu 23, 0(31)
    sthu 2, 0(31)
    addis 10, 0, 137
    lbzux 10, 31, 0
    sthu 9, 0(31)
    rlwimi. 21, 25, 21, 6, 27
    sthux 10, 31, 0
    addis 3, 0, -14406
    addic 26, 7, 18323
    lha 6, 0(31)
    lhzu 19, 0(31)
    addc 22, 25, 24
    sthbrx 12, 31, 0
    lbzux 24, 31, 0
    lha 20, 0(31)
    blt 1f
    sth 12, 0(31)
    addis 5, 0, 20500
    1:
    addo. 18, 8, 22
    rlwimi 23, 20, 26, 0, 25
    xori 6, 20, 33488
    subfzeo 13, 16
    addis 11, 0, 7997
    lhzux 24, 31, 0
    oris 2, 26, 49858
    neg. 16, 13
    sth 11, 0(31)
    oris 21, 15, 43124
    stb 9, 0(31)
    lbz 3, 0(31)
    addi 12, 22, -32700
    lbzx 25, 31, 0
    lbz 17, 0(31)
    stwux 22, 31, 0
    addis 17, 0, -20362
    rlwimi 13, 24, 30, 20, 17
    sthx 24, 31, 0
    lhzux 25, 31, 0
    addis 13, 0, 2039
    addis 5, 0, 10285
    rlwimi 17, 26, 25, 4, 8
    stwu 7, 0(31)
    neg. 4, 5
    lhzu 5, 0(31)
    rlwimi 22, 26, 24, 4, 9
    stbu 21, 0(31)
    addis 11, 0, 25926
    oris 9, 21, 406
    subfe. 14, 9, 8
    rlwinm. 17, 11, 30, 19, 2
    addis 9, 0, 4622
    rlwinm 21, 2, 5, 27, 15
    sthux 23, 31, 0
    addmeo. 15, 9
    lwzux 12, 31, 0
    addis 7, 0, 29026
    addis 2, 0, 28483
    andis. 16, 19, 58194
    addis 12, 0, 20003
    lhbrx 17, 31, 0
    cmpl cr0, 0, 14, 19
    addis 26, 0, 604
    stbux 11, 31, 0
    subfic 19, 24, -29064
    b 1f
    cmpli cr0, 0, 9, 29313
    1:
    oris 5, 8, 43999
    lwzux 13, 31, 0
    addis 6, 0, -6015
    sthux 3, 31, 0
    lwzx 13, 31, 0
    lhau 22, 0(31)
    addic. 15, 3, -20535
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
    .size run_chunk_20, .-run_chunk_20
    .section .note.GNU-stack,"",@progbits
