    .text
    .align 2

    .globl enter_case_2
    .globl case_2_body_start
    .globl case_2_done

enter_case_2:
    /*
     * Save C caller state that must survive this assembly test.
     * We will destroy almost all GPRs, then restore ABI-sensitive state
     * before returning to C.
     */

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

    /*
     * Restore BODY_ENTRY_SPRS.
     */

    lis 12, 0x5020
    ori 12, 12, 0x0003
    mtcrf 255, 12

    lis 12, 0xC000
    ori 12, 12, 0x0001
    mtxer 12

    lis 12, 0xE004
    ori 12, 12, 0xAEB0
    mtlr 12

    li 12, 0
    mtctr 12

    /*
     * Restore BODY_ENTRY_GPRS.
     */

    li 0, 0

    lis 1, 0xE001
    ori 1, 1, 0x8C80

    li 2, 0

    lis 3, 0xE001
    ori 3, 3, 0x9518

    li 4, 0

    li 5, 0x40
    li 6, 0x0D

    lis 7, 0xE960
    ori 7, 7, 0x8000

    li 8, 0x0A
    li 9, 0

    lis 10, 0xE960
    ori 10, 10, 0x8005

    lis 11, 0x34B1

    li 12, 0x0104

    lis 13, 0xCF13
    lis 14, 0x86F3

    li 15, 0
    li 16, 0
    li 17, 0

    lis 18, 0x887A
    lis 19, 0x74C8

    li 20, 0x070C

    li 21, 0
    li 22, 0

    lis 23, 0x1901
    lis 24, 0x7CF5

    li 25, 0

    lis 26, 0x554D

    lis 27, 0xE001
    ori 27, 27, 0x1580

    lis 28, 0xE004
    ori 28, 28, 0xAEB0

    li 29, 7

    lis 30, 0xE001
    ori 30, 30, 0x14C0

    lis 31, 0xE001
    ori 31, 31, 0x8CC0

    b case_2_body_start

case_2_body_start:
    cmpi cr0, 0, 29, 0
    beq 1f
    lwzu 8, 0(31)
    stmw 20, 0(31)
    mulli 25, 26, -17214
1:
    addis 10, 0, 3580
    addis 7, 0, 15377
    addis 13, 0, 24315
    lhz 23, 0(31)
    eqv. 10, 12, 25
    lhau 16, 0(31)
    addis 12, 0, 6840
    andi. 2, 16, 35389
    addc. 8, 7, 18
    andi. 11, 16, 47184
    addis 7, 0, -4208
    stw 2, 0(31)
    addis 3, 0, -26368
    nand. 4, 2, 7
    addis 26, 0, 20658
    sthx 17, 31, 0
    blt 1f
    subfco 23, 25, 11
1:
    extsb. 14, 8
    lbzux 6, 31, 0
    rlwinm 17, 25, 17, 24, 17
    addis 18, 0, -31094
    subfze. 16, 10
    sth 15, 0(31)
    subfeo 24, 18, 9
    lhz 4, 0(31)
    addzeo 4, 18
    cmpli cr0, 0, 16, 43458
    ble 1f
    subfo. 7, 2, 15
    andis. 6, 4, 5529
    sthx 13, 31, 0
1:
    andis. 2, 21, 65485
    rlwimi. 22, 2, 28, 19, 13
    adde 4, 21, 18
    sthu 12, 0(31)
    subfic 19, 7, 18143
    addis 22, 0, 7236
    addis 4, 0, -5791
    lwzx 8, 31, 0
    sthx 12, 31, 0
    addis 14, 0, -26686
    addis 5, 0, -9146
    stwbrx 18, 31, 0
    addis 7, 0, 10766
    addc 25, 11, 8
    divwu. 14, 4, 29
    sthu 7, 0(31)
    addis 10, 0, 31315
    subfo. 17, 8, 8
    lhz 15, 0(31)
    divw 6, 16, 29
    xori 10, 22, 16731
    addic 5, 6, 15045
    srawi 12, 6, 15
    stbu 17, 0(31)
    srawi 25, 22, 29
    lhzu 23, 0(31)
    stw 7, 0(31)
    sth 20, 0(31)
    lhzx 19, 31, 0
    srawi 7, 4, 8
    stwx 19, 31, 0
    subfo. 26, 19, 19
    sthux 25, 31, 0
    cmpli cr0, 0, 22, 15374
    addic 2, 11, -7202
    b 1f
    addc. 22, 10, 2
    lwzu 21, 0(31)
1:
    lhzu 24, 0(31)
    srawi. 25, 18, 10
    sthx 16, 31, 0
    stb 9, 0(31)
    stwbrx 12, 31, 0
    cmpli cr0, 0, 17, 36349
    xoris 23, 4, 21801
    subfeo 15, 4, 18
    addis 6, 0, 30424
    addco 5, 3, 7
    sthbrx 7, 31, 0
    addis 16, 0, 32346
    sth 13, 0(31)
    neg. 2, 3
    addis 21, 0, 32595
    addic 14, 21, -25429
    stw 17, 0(31)
    lwz 7, 0(31)
    subfic 12, 2, -11275
    stwx 6, 31, 0
    lwz 23, 0(31)
    stwx 5, 31, 0
    sth 3, 0(31)
    stbux 25, 31, 0
    rlwinm 20, 14, 29, 30, 4
    rlwimi. 24, 19, 16, 18, 14
    divwu. 11, 18, 29
    lhzu 10, 0(31)
    addis 24, 0, -32615
    lbzux 19, 31, 0
    addis 10, 0, 20994
    srawi 8, 3, 10
    addme. 23, 10
    and. 20, 17, 5
    cmpli cr0, 0, 20, 31667
    oris 7, 20, 34787
    lbzx 11, 31, 0
    stbx 25, 31, 0
    lwzu 15, 0(31)
    lbzx 21, 31, 0
    subfzeo. 2, 8
    lhaux 16, 31, 0
    oris 2, 23, 64847
    lhaux 24, 31, 0
    lha 18, 0(31)
    subfc. 23, 15, 10
    addis 2, 0, -18635
    subfco. 24, 10, 24
    cmpi cr0, 0, 9, 8414
    blt 1f
    addze 18, 25
    lhzx 16, 31, 0
    lhau 19, 0(31)
1:
    lwzux 11, 31, 0
    sraw 6, 6, 3
    lwz 14, 0(31)
    lwzux 13, 31, 0
    subfzeo. 10, 8
    rlwimi 3, 7, 24, 14, 2
    andi. 13, 12, 44492
    addic. 16, 5, -11314
    rlwinm 17, 5, 15, 8, 17
    addic. 5, 17, 27410
    sthbrx 7, 31, 0
    addis 12, 0, 24881
    rlwinm 13, 5, 5, 24, 28
    addic. 5, 9, 16795
    cmpli cr0, 0, 11, 43673
    sthx 17, 31, 0
    lhau 2, 0(31)
    addis 8, 0, 2810
    subfe 15, 10, 18
    nor. 21, 7, 22
    lwzu 9, 0(31)
    lhzx 17, 31, 0
    stw 23, 0(31)
    rlwimi. 24, 7, 30, 14, 24
    bl 1f
    rlwnm. 9, 15, 14, 17, 31
    srawi. 23, 10, 30
1:
    lwbrx 9, 31, 0
    xoris 7, 26, 29984
    subfo. 15, 21, 14
    rlwimi. 21, 8, 2, 11, 2
    lhz 15, 0(31)
    xori 11, 22, 38657
    addis 17, 0, 6849
    ori 6, 8, 40546
    addis 11, 0, 8826
    lha 13, 0(31)
    lhaux 11, 31, 0
    addis 6, 0, -7311
    stwbrx 19, 31, 0
    addis 13, 0, 8733
    stb 12, 0(31)
    lhzux 10, 31, 0
    srawi. 18, 23, 1
    addic 24, 24, 20215
    addi 23, 8, 7803
    addis 24, 0, 23436
    subfic 13, 15, -16540
    sth 17, 0(31)
    lwzu 17, 0(31)
    stbux 10, 31, 0
    stbu 2, 0(31)
    eqv. 15, 19, 2
    addis 17, 0, -22032
    addze. 18, 10
    divwuo. 25, 2, 29
    andis. 2, 5, 20832
    addic. 24, 10, 7442
    b 1f
    xori 24, 18, 31257
1:
    srawi. 8, 9, 7
    addis 19, 0, 25986
    sthu 20, 0(31)
    addis 4, 0, -19101
    sth 18, 0(31)
    addis 2, 0, -3430
    addic 14, 13, 28212
    stmw 6, 0(31)
    addis 12, 0, -28725
    addis 3, 0, -1183
    stbx 3, 31, 0
    stbx 18, 31, 0
    divwo. 17, 24, 29

    /*
     * Match CPU snapshot timing:
     * CPU saves FINAL_GPRS after these two instructions.
     */
    mtlr 28
    addi 1, 1, 2304

    /*
     * Save FINAL_GPRS to address held in r27:
     *     r27 = 0xE0011580
     */
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

    /*
     * Save FINAL_SPRS after FINAL_GPRS.
     * Stores do not modify CR/XER/LR/CTR.
     */
    lis 30, qemu_final_spr@ha
    addi 30, 30, qemu_final_spr@l

    mfcr 0
    stw 0, 0(30)

    mfxer 0
    stw 0, 4(30)

    mflr 0
    stw 0, 8(30)

    mfctr 0
    stw 0, 12(30)

case_2_done:
    /*
     * Restore C caller state and return to driver_2.c.
     */

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

    .section .note.GNU-stack,"",@progbits
