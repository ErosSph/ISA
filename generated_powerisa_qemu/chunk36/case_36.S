    .text
    .align 2
    .globl run_chunk_36
    .type run_chunk_36, @function
run_chunk_36:
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
    ori 12, 12, 0x8190
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xB8BF
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
    li 11, 0
    li 12, 0
    li 13, 0
    li 14, 0
    lis 15, 0x162A
    lis 16, 0xF491
    ori 16, 16, 0xFFFF
    lis 17, 0x8582
    ori 17, 17, 0x3243
    lis 18, 0x1662
    ori 18, 18, 0x8005
    lis 19, 0xEDD1
    lis 20, 0x0000
    ori 20, 20, 0x00FE
    lis 21, 0x0000
    ori 21, 21, 0x07F0
    lis 22, 0xFF19
    lis 23, 0xEF39
    lis 24, 0x037F
    lis 25, 0x0000
    ori 25, 25, 0x0049
    lis 26, 0xDFA4
    lis 27, 0xE001
    ori 27, 27, 0x5B40
    lis 28, 0xE005
    ori 28, 28, 0x8190
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x48C0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk36_body_start:
    cmpi cr0, 0, 29, 0
    xoris 16, 2, 32206
    lhzx 2, 31, 0
    lbzx 21, 31, 0
    addic. 13, 4, 25060
    addis 24, 0, -18862
    subfme 16, 20
    addis 18, 0, -22774
    sthu 16, 0(31)
    lhax 10, 31, 0
    addis 10, 0, 24072
    addis 4, 0, 26282
    lhax 25, 31, 0
    addis 16, 0, 18071
    addo 17, 12, 23
    adde. 25, 5, 15
    sraw 21, 26, 14
    cmp cr0, 0, 22, 14
    addis 25, 0, -2077
    stwux 26, 31, 0
    lwzx 14, 31, 0
    oris 17, 16, 53371
    stwbrx 24, 31, 0
    lhzux 13, 31, 0
    addis 14, 0, -1900
    divw 4, 8, 29
    srawi. 4, 11, 14
    srawi. 24, 2, 30
    addis 5, 0, 9592
    lwz 12, 0(31)
    lhax 20, 31, 0
    andis. 2, 7, 28525
    subfic 19, 11, -5041
    addic. 16, 3, 5880
    addic. 17, 7, -19997
    cmpi cr0, 0, 6, 28204
    addis 9, 0, -21475
    ori 23, 15, 46485
    or. 10, 19, 18
    lbz 24, 0(31)
    lhzu 13, 0(31)
    or. 15, 11, 18
    stwx 12, 31, 0
    addis 20, 0, -3222
    rlwinm 12, 22, 25, 26, 15
    lhax 15, 31, 0
    addis 17, 0, -22172
    addic 20, 11, -10684
    add. 2, 25, 9
    srawi. 19, 13, 21
    subfo. 2, 13, 12
    subfco. 25, 7, 6
    lwz 14, 0(31)
    lwz 7, 0(31)
    addis 24, 0, 20354
    lwzx 17, 31, 0
    sthu 12, 0(31)
    addis 24, 0, -14168
    srawi 16, 5, 6
    lbzx 20, 31, 0
    addis 8, 0, -24969
    stw 20, 0(31)
    srawi 9, 4, 11
    subf. 19, 7, 2
    subfe 6, 20, 10
    lhz 3, 0(31)
    sthx 21, 31, 0
    lhz 24, 0(31)
    addis 9, 0, 18642
    stmw 21, 0(31)
    lbzux 21, 31, 0
    addis 6, 0, 11923
    addis 22, 0, 1358
    sthux 17, 31, 0
    cmpi cr0, 0, 22, 26602
    subfic 19, 23, -1775
    subf. 2, 23, 20
    and. 25, 11, 17
    stbx 11, 31, 0
    lbzu 5, 0(31)
    addis 3, 0, 4455
    lhau 22, 0(31)
    addis 4, 0, 15446
    addic. 11, 15, -15401
    addis 3, 0, 3544
    addis 24, 0, 3753
    sthbrx 13, 31, 0
    addis 24, 0, -19780
    andi. 2, 25, 15822
    addis 26, 0, -28087
    addis 26, 0, -8462
    addis 2, 0, -24665
    lhzu 22, 0(31)
    stmw 14, 0(31)
    sthbrx 26, 31, 0
    lbzux 23, 31, 0
    rlwinm. 26, 16, 4, 4, 24
    nor 19, 15, 6
    lhbrx 2, 31, 0
    addic. 18, 2, -13563
    divw. 8, 3, 29
    subfme 2, 7
    lbzu 7, 0(31)
    addis 13, 0, 208
    divwo 2, 7, 29
    sthx 22, 31, 0
    lbzux 20, 31, 0
    addic 19, 22, -15692
    andis. 7, 19, 45668
    sthu 25, 0(31)
    addis 5, 0, 20169
    sraw 17, 3, 23
    stw 6, 0(31)
    addis 18, 0, 24277
    addmeo. 8, 13
    stwu 9, 0(31)
    lwzux 22, 31, 0
    addis 26, 0, 20125
    sthux 8, 31, 0
    lbzx 25, 31, 0
    lwbrx 6, 31, 0
    lhzux 4, 31, 0
    lhzx 16, 31, 0
    lhau 19, 0(31)
    addi 19, 19, 32174
    subfmeo. 15, 20
    lbzu 5, 0(31)
    addis 21, 0, -25535
    or. 26, 15, 15
    stbu 11, 0(31)
    addis 20, 0, 11282
    addis 23, 0, 4878
    divwu. 14, 12, 29
    stwux 18, 31, 0
    lwzu 11, 0(31)
    addic. 9, 11, -28981
    lwbrx 22, 31, 0
    stb 21, 0(31)
    srawi 22, 6, 4
    addis 9, 0, 10265
    nor. 11, 26, 5
    srawi. 8, 12, 31
    addis 12, 0, -12018
    addis 12, 0, -12401
    addic. 17, 9, 13516
    lhz 6, 0(31)
    stmw 11, 0(31)
    oris 25, 24, 7148
    subfzeo 23, 5
    sthu 13, 0(31)
    addze. 20, 16
    rlwinm. 24, 18, 3, 8, 3
    lwbrx 3, 31, 0
    addic. 15, 17, -24258
    subfco 19, 16, 23
    subfe 10, 3, 16
    andi. 24, 26, 24538
    lbz 4, 0(31)
    stbx 23, 31, 0
    addis 2, 0, 16831
    addis 10, 0, 8971
    addis 21, 0, 31860
    lbzu 10, 0(31)
    addis 11, 0, -8305
    divw. 11, 3, 29
    stmw 25, 0(31)
    lhzx 21, 31, 0
    addis 12, 0, 16272
    lbz 12, 0(31)
    lwzux 19, 31, 0
    stbx 6, 31, 0
    andi. 19, 13, 15303
    cmpli cr0, 0, 26, 41231
    addis 3, 0, 16744
    sthu 4, 0(31)
    stbux 11, 31, 0
    subfme 18, 3
    addis 26, 0, 15866
    sthux 4, 31, 0
    stw 6, 0(31)
    divwu. 18, 15, 29
    oris 19, 25, 23671
    addzeo 8, 10
    stwux 22, 31, 0
    addc 23, 11, 2
    addis 10, 0, -3087
    addis 21, 0, 6165
    sthbrx 10, 31, 0
    stwux 24, 31, 0
    addco 13, 23, 21
    andi. 20, 12, 44270
    addis 17, 0, -13537
    stbu 20, 0(31)
    srw. 24, 7, 23
    cmpi cr0, 0, 7, 13716
    addo 3, 14, 21
    andc 19, 20, 10
    stmw 15, 0(31)
    mulli 11, 20, -4791
    addis 10, 0, 10745
    sthu 11, 0(31)
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
    .size run_chunk_36, .-run_chunk_36
    .section .note.GNU-stack,"",@progbits
