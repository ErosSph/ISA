    .text
    .align 2
    .globl run_chunk_29
    .type run_chunk_29, @function
run_chunk_29:
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
    ori 12, 12, 0x5624
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0FB2
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
    lis 11, 0xFFFF
    ori 11, 11, 0xDB6D
    lis 12, 0x1C3E
    ori 12, 12, 0x5572
    lis 13, 0x500C
    lis 14, 0xFD3E
    ori 14, 14, 0x5572
    lis 15, 0x0000
    ori 15, 15, 0x0001
    lis 16, 0x0000
    ori 16, 16, 0x00DB
    lis 17, 0x741E
    ori 17, 17, 0xFFFF
    lis 18, 0x43F0
    li 19, 0
    lis 20, 0xD493
    lis 21, 0x7AFF
    ori 21, 21, 0xAE8E
    lis 22, 0xA143
    lis 23, 0xFD49
    ori 23, 23, 0x2493
    lis 24, 0xFFFF
    ori 24, 24, 0xFF01
    lis 25, 0xD6C6
    lis 26, 0x8CA5
    lis 27, 0xE001
    ori 27, 27, 0x57C0
    lis 28, 0xE005
    ori 28, 28, 0x5624
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4850
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk29_body_start:
    cmpi cr0, 0, 29, 0
    bl 1f
    lwzu 4, 0(31)
    stbx 8, 31, 0
    1:
    rlwinm. 7, 25, 8, 22, 21
    stb 8, 0(31)
    addis 26, 0, 5604
    addis 6, 0, 21420
    lwzux 12, 31, 0
    addic. 17, 14, 15297
    addis 2, 0, 22137
    addeo. 10, 3, 10
    rlwinm. 23, 8, 3, 28, 12
    nor. 22, 20, 9
    lwbrx 16, 31, 0
    stwbrx 18, 31, 0
    lhz 6, 0(31)
    subfeo. 15, 6, 4
    lha 14, 0(31)
    lwzux 5, 31, 0
    addis 7, 0, 22795
    stb 10, 0(31)
    lhax 16, 31, 0
    sth 26, 0(31)
    addmeo. 3, 10
    stwux 26, 31, 0
    stw 18, 0(31)
    lhzux 10, 31, 0
    rlwinm 26, 15, 13, 23, 11
    ori 12, 11, 5220
    subfe. 20, 21, 6
    stb 10, 0(31)
    sth 14, 0(31)
    bne 1f
    lwbrx 16, 31, 0
    lhax 23, 31, 0
    addis 8, 0, 1364
    1:
    addis 6, 0, 18928
    xoris 11, 24, 9026
    sthx 9, 31, 0
    andc 11, 6, 25
    stbu 21, 0(31)
    lwz 11, 0(31)
    addis 23, 0, -21577
    subf. 23, 25, 4
    stmw 20, 0(31)
    ori 20, 23, 36528
    addzeo. 8, 13
    stb 10, 0(31)
    lhzu 17, 0(31)
    stw 15, 0(31)
    addis 4, 0, -11916
    addis 26, 0, -10259
    sth 24, 0(31)
    addis 10, 0, 2718
    srawi 17, 26, 20
    extsh 26, 21
    lbzux 19, 31, 0
    cmpl cr0, 0, 5, 3
    lhaux 6, 31, 0
    subfic 14, 10, 12759
    lhau 21, 0(31)
    rlwinm. 7, 12, 9, 8, 26
    stbux 10, 31, 0
    stbux 25, 31, 0
    sraw. 22, 12, 13
    cmpli cr0, 0, 6, 6979
    or. 10, 12, 20
    lha 22, 0(31)
    lhbrx 15, 31, 0
    sthbrx 21, 31, 0
    mulli 17, 14, -1898
    cmpl cr0, 0, 4, 4
    lhau 5, 0(31)
    lhaux 2, 31, 0
    stwbrx 6, 31, 0
    lhzu 3, 0(31)
    addis 11, 0, 28275
    addic 12, 11, 1551
    stbu 21, 0(31)
    oris 24, 5, 39424
    stbux 7, 31, 0
    lwzu 15, 0(31)
    lhzx 8, 31, 0
    subf. 16, 6, 19
    addc. 13, 20, 25
    sth 8, 0(31)
    addis 17, 0, -1714
    addic 22, 2, 26708
    addis 18, 0, 28454
    addis 12, 0, 16578
    addis 15, 0, 24679
    lbz 13, 0(31)
    lbzu 21, 0(31)
    slw. 21, 21, 20
    lwzu 19, 0(31)
    stwx 18, 31, 0
    stbux 12, 31, 0
    sthux 8, 31, 0
    rlwinm. 15, 21, 25, 19, 19
    lhax 16, 31, 0
    xoris 16, 3, 16535
    divw. 5, 22, 29
    subfzeo. 2, 23
    addis 2, 0, -6816
    subfic 6, 14, 29449
    mulli 7, 10, -14621
    lbzx 17, 31, 0
    sth 10, 0(31)
    addo 10, 6, 22
    lwbrx 14, 31, 0
    addis 14, 0, 30850
    andc 12, 5, 11
    addic 6, 7, -14126
    subfze. 19, 2
    subfeo. 3, 14, 21
    lbz 26, 0(31)
    addis 14, 0, 24707
    nor. 5, 10, 6
    andis. 17, 11, 31380
    cmpl cr0, 0, 7, 9
    sthu 4, 0(31)
    srawi. 13, 17, 26
    sthx 3, 31, 0
    orc. 18, 2, 4
    lhzux 16, 31, 0
    sth 2, 0(31)
    stwu 14, 0(31)
    addi 16, 13, -16444
    bgt 1f
    sthx 2, 31, 0
    addis 21, 0, -4489
    subfzeo. 20, 3
    1:
    addis 7, 0, 5750
    subfc. 22, 2, 17
    stbx 18, 31, 0
    lhzx 23, 31, 0
    subfzeo 6, 12
    stwu 4, 0(31)
    lwzux 23, 31, 0
    subfze. 6, 20
    subfeo. 24, 24, 2
    addis 21, 0, -28421
    mullw. 20, 8, 6
    stbux 7, 31, 0
    srawi. 13, 23, 7
    sthux 23, 31, 0
    andc. 10, 5, 20
    lbzx 12, 31, 0
    xoris 22, 17, 57165
    subfic 6, 20, -27858
    and 6, 6, 13
    cntlzw. 18, 23
    lbzu 11, 0(31)
    lwzu 8, 0(31)
    lhzu 4, 0(31)
    mulhwu. 8, 25, 5
    sthux 26, 31, 0
    lhzx 15, 31, 0
    eqv 9, 2, 19
    stwbrx 20, 31, 0
    stb 6, 0(31)
    lwzx 7, 31, 0
    subfe. 21, 14, 12
    subfzeo. 12, 21
    addis 5, 0, -491
    addis 4, 0, -12228
    addis 26, 0, 122
    addis 8, 0, 8503
    b 1f
    addis 13, 0, -18083
    1:
    srawi 25, 20, 1
    rlwinm. 23, 2, 17, 2, 31
    addic. 3, 5, 32709
    addo. 17, 19, 13
    sthu 26, 0(31)
    stbu 17, 0(31)
    addic. 12, 6, -13441
    sthbrx 24, 31, 0
    xor 7, 17, 5
    lbzux 15, 31, 0
    addic 9, 3, -10642
    ori 25, 16, 48759
    lha 21, 0(31)
    addis 14, 0, -29247
    addis 16, 0, 5036
    rlwimi. 14, 7, 4, 1, 31
    divw 4, 18, 29
    addze. 14, 7
    stwbrx 5, 31, 0
    lhaux 8, 31, 0
    lbzx 18, 31, 0
    lhz 7, 0(31)
    rlwimi. 13, 7, 11, 7, 20
    addis 19, 0, 16756
    lhzx 2, 31, 0
    subfic 3, 3, 19953
    addmeo 23, 12
    lhaux 25, 31, 0
    subfc. 21, 4, 12
    lbzu 15, 0(31)
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
    .size run_chunk_29, .-run_chunk_29
    .section .note.GNU-stack,"",@progbits
