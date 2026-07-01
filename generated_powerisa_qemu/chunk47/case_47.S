    .text
    .align 2
    .globl run_chunk_47
    .type run_chunk_47, @function
run_chunk_47:
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
    ori 12, 12, 0xC5CC
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    li 2, 0
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
    lis 11, 0x2011
    lis 12, 0x0000
    ori 12, 12, 0x0020
    li 13, 0
    li 14, 0
    lis 15, 0xA0C8
    lis 16, 0xB5FE
    li 17, 0
    li 18, 0
    lis 19, 0x9F06
    lis 20, 0xCEE1
    ori 20, 20, 0xC71A
    lis 21, 0x9750
    lis 22, 0x5079
    lis 23, 0xF0CB
    lis 24, 0xFFFF
    ori 24, 24, 0xFFFF
    li 25, 0
    lis 26, 0x0B78
    lis 27, 0xE001
    ori 27, 27, 0x60C0
    lis 28, 0xE005
    ori 28, 28, 0xC5CC
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4970
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk47_body_start:
    cmpi cr0, 0, 29, 0
    lwzux 15, 31, 0
    stwux 4, 31, 0
    stw 7, 0(31)
    stbu 2, 0(31)
    stwbrx 26, 31, 0
    rlwinm 26, 3, 7, 31, 10
    addis 6, 0, 24772
    sraw. 5, 19, 9
    cmpl cr0, 0, 18, 19
    cmpli cr0, 0, 22, 52710
    cmpli cr0, 0, 5, 52064
    addis 13, 0, -16126
    oris 8, 13, 55251
    stwu 5, 0(31)
    b 1f
    rlwinm. 8, 8, 18, 20, 28
    andi. 24, 14, 58023
    sthx 23, 31, 0
    stmw 8, 0(31)
    1:
    cmpli cr0, 0, 3, 59342
    stbux 13, 31, 0
    lwzx 20, 31, 0
    addis 8, 0, -31189
    lhau 8, 0(31)
    addze 19, 9
    addis 25, 0, -4662
    lhzu 11, 0(31)
    mulli 20, 19, -11412
    rlwnm. 26, 15, 18, 25, 4
    subfo. 10, 4, 15
    mulli 9, 15, 1221
    sth 3, 0(31)
    subfic 25, 6, -13890
    lha 14, 0(31)
    and. 15, 20, 11
    stw 11, 0(31)
    divwu 18, 26, 29
    addis 12, 0, -27532
    cmp cr0, 0, 6, 26
    stbx 26, 31, 0
    adde 3, 15, 23
    sthx 16, 31, 0
    mulhwu 4, 4, 2
    stwu 20, 0(31)
    lbzu 21, 0(31)
    lhaux 15, 31, 0
    stbu 18, 0(31)
    bgt 1f
    subf. 4, 20, 21
    1:
    addis 12, 0, -31366
    stbx 26, 31, 0
    subfze. 12, 10
    xori 16, 22, 48788
    lbz 13, 0(31)
    divwo. 2, 15, 29
    lhzux 9, 31, 0
    lbz 11, 0(31)
    cmpi cr0, 0, 3, -6423
    rlwinm. 23, 22, 26, 7, 21
    srawi. 23, 22, 10
    subfze. 19, 4
    addis 6, 0, 23486
    oris 14, 15, 13371
    subfmeo. 10, 18
    cmpi cr0, 0, 20, 17555
    stwx 3, 31, 0
    addis 4, 0, -8482
    stbx 22, 31, 0
    addis 3, 0, -11616
    rlwinm 24, 22, 25, 2, 9
    lhau 15, 0(31)
    lhax 21, 31, 0
    bge 1f
    addis 7, 0, 19702
    eqv 10, 15, 25
    xoris 3, 17, 19098
    1:
    stmw 5, 0(31)
    addis 19, 0, -12571
    addco 23, 18, 14
    addis 22, 0, 8057
    bl 1f
    addis 9, 0, -15968
    or 25, 8, 5
    1:
    cmpi cr0, 0, 13, 10952
    addis 3, 0, -10076
    srw. 23, 16, 25
    cmpl cr0, 0, 23, 3
    sthu 23, 0(31)
    stbux 25, 31, 0
    sth 2, 0(31)
    stwux 23, 31, 0
    stbu 6, 0(31)
    rlwimi. 9, 9, 7, 9, 20
    sthbrx 9, 31, 0
    sthx 21, 31, 0
    stmw 10, 0(31)
    addco. 17, 7, 19
    addis 9, 0, -11303
    addis 26, 0, -30329
    bl 1f
    subfzeo. 23, 20
    lbzx 12, 31, 0
    1:
    nand 25, 4, 18
    mullw 3, 19, 21
    srw 24, 6, 17
    bl 1f
    lwzux 2, 31, 0
    addzeo 8, 4
    stw 14, 0(31)
    stbux 26, 31, 0
    1:
    divwuo. 17, 25, 29
    stwux 11, 31, 0
    cmpi cr0, 0, 26, 26149
    lha 21, 0(31)
    stbx 9, 31, 0
    orc. 17, 5, 2
    addis 17, 0, -6733
    rlwinm 18, 21, 4, 13, 9
    andi. 18, 14, 30027
    stb 6, 0(31)
    lhzx 5, 31, 0
    stw 19, 0(31)
    srawi 24, 14, 7
    lwbrx 11, 31, 0
    addmeo 5, 25
    stwbrx 20, 31, 0
    addco 2, 17, 11
    subfc. 22, 14, 25
    ori 12, 7, 3860
    subf. 16, 5, 13
    addis 18, 0, 4285
    lhau 7, 0(31)
    lhaux 26, 31, 0
    srawi. 4, 2, 19
    stwx 3, 31, 0
    add 26, 22, 24
    and 24, 16, 6
    stwux 17, 31, 0
    lbz 13, 0(31)
    stbu 19, 0(31)
    lwbrx 26, 31, 0
    divwu 9, 23, 29
    addis 3, 0, 11424
    cmpli cr0, 0, 25, 31032
    addzeo. 14, 2
    stbx 18, 31, 0
    rlwimi 8, 17, 2, 20, 8
    stwu 11, 0(31)
    stwx 15, 31, 0
    lhau 25, 0(31)
    subfic 4, 21, 9724
    addzeo 13, 24
    slw 3, 15, 16
    lhzux 20, 31, 0
    rlwimi. 18, 16, 21, 9, 0
    sraw. 3, 5, 24
    rlwimi. 4, 4, 16, 30, 17
    lhbrx 16, 31, 0
    stwbrx 9, 31, 0
    addis 23, 0, -10132
    lhax 11, 31, 0
    sthux 15, 31, 0
    andc. 10, 10, 19
    stbux 17, 31, 0
    stwu 7, 0(31)
    oris 15, 7, 36431
    extsh 14, 2
    lbzu 5, 0(31)
    b 1f
    addis 10, 0, 22829
    1:
    sthbrx 24, 31, 0
    divwu 18, 6, 29
    stbux 19, 31, 0
    andis. 16, 8, 15059
    lhz 4, 0(31)
    sthu 9, 0(31)
    addis 23, 0, -22983
    stbux 17, 31, 0
    sthbrx 20, 31, 0
    stwu 20, 0(31)
    divwo. 7, 14, 29
    subfo. 2, 13, 21
    ori 26, 12, 16947
    addis 12, 0, 23613
    lwzux 8, 31, 0
    cmpi cr0, 0, 21, -28109
    stwu 9, 0(31)
    lbzux 16, 31, 0
    subfo 11, 12, 13
    addis 2, 0, 25030
    xoris 12, 20, 61535
    adde. 6, 24, 6
    stwu 4, 0(31)
    addis 6, 0, 8577
    andi. 2, 14, 29913
    cmpli cr0, 0, 17, 25512
    lhz 2, 0(31)
    stwux 2, 31, 0
    stbu 13, 0(31)
    addis 7, 0, -4262
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
    .size run_chunk_47, .-run_chunk_47
    .section .note.GNU-stack,"",@progbits
