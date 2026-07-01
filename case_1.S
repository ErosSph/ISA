    .section .bss
    .align 2
saved_state:
    .space 128

    .text
    .globl run_case
    .type run_case, @function

run_case:
    # r3 = gpr_snapshot pointer
    # r4 = spr_snapshot pointer
    # r5 = work_mem

    lis     12, saved_state@ha
    addi    12, 12, saved_state@l

    mflr    0
    stw     0, 0(12)
    stw     1, 4(12)
    stw     2, 8(12)
    stw     13, 12(12)
    stmw    14, 16(12)

    stw     3, 88(12)      # gpr_snapshot pointer
    stw     4, 92(12)      # spr_snapshot pointer
    stw     5, 96(12)      # work_mem pointer

    ################################################################
    # Restore initial CR / XER / LR / CTR
    ################################################################

    mr      12, 4

    lwz     0, 0(12)
    mtcrf   0xff, 0

    lwz     0, 4(12)
    mtxer   0

    lwz     0, 8(12)
    mtlr    0

    lwz     0, 12(12)
    mtctr   0

    ################################################################
    # Load initial GPRs
    #
    # IMPORTANT:
    #   Do NOT restore r1 from bare-metal value.
    #   Do NOT restore r31 from bare-metal address.
    #   r31 must use work_mem in qemu-ppc user mode.
    ################################################################

    mr      30, 3

    lwz     0, 0(30)
    # lwz   1, 4(30)       # DO NOT restore bare-metal SP
    lwz     2, 8(30)
    lwz     3, 12(30)
    lwz     4, 16(30)
    lwz     5, 20(30)
    lwz     6, 24(30)
    lwz     7, 28(30)
    lwz     8, 32(30)
    lwz     9, 36(30)
    lwz     10, 40(30)
    lwz     11, 44(30)
    lwz     12, 48(30)
    lwz     13, 52(30)
    lwz     14, 56(30)
    lwz     15, 60(30)
    lwz     16, 64(30)
    lwz     17, 68(30)
    lwz     18, 72(30)
    lwz     19, 76(30)
    lwz     20, 80(30)
    lwz     21, 84(30)
    lwz     22, 88(30)
    lwz     23, 92(30)
    lwz     24, 96(30)
    lwz     25, 100(30)
    lwz     26, 104(30)
    lwz     27, 108(30)
    lwz     28, 112(30)
    lwz     29, 116(30)

    # r31 = work_mem, not snapshot[31]
    lis     31, saved_state@ha
    addi    31, 31, saved_state@l
    lwz     31, 96(31)

    lwz     30, 120(30)

    ################################################################
    # Test instruction sequence starts here
    ################################################################

    cmpi cr0, 0, 29, 0
    sthbrx 24, 31, 0
    sraw. 17, 8, 26
    oris 13, 23, 41073
    andc 10, 19, 13
    subfmeo. 19, 7
    sthux 12, 31, 0
    addme 16, 12
    subfo 19, 22, 11
    lwzx 25, 31, 0
    xor. 13, 26, 22
    stmw 2, 0(31)
    addeo 19, 12, 23
    cntlzw 23, 26
    lbz 25, 0(31)
    extsh 12, 4
    subfic 2, 7, 13426
    lha 14, 0(31)
    addic. 17, 4, 8489
    lhax 13, 31, 0
    lhaux 6, 31, 0
    rlwimi. 3, 13, 16, 18, 9
    subfze 4, 22
    neg 25, 12
    orc. 18, 6, 9
    bl 1f
    addme. 9, 11
1:
    divw. 25, 17, 29
    subfe 17, 12, 11
    lhzux 4, 31, 0
    stwbrx 8, 31, 0
    stwux 24, 31, 0
    xori 10, 9, 15863
    ori 23, 12, 309
    subfze. 19, 23
    sthx 12, 31, 0
    addeo. 16, 7, 20
    or 12, 22, 15
    lhz 2, 0(31)
    addo 17, 10, 6
    stwx 9, 31, 0
    addo. 22, 6, 10
    add 15, 20, 17
    lhzu 11, 0(31)
    lwzu 10, 0(31)
    subfco. 20, 10, 11
    andc. 25, 9, 4
    lbzux 18, 31, 0
    mullwo. 14, 4, 11
    lwzux 11, 31, 0
    subfc 23, 12, 3
    stbu 19, 0(31)
    orc 12, 5, 18
    and 14, 22, 16
    subfeo 17, 20, 13
    cntlzw. 15, 2
    nego 15, 26
    or. 24, 7, 14
    xor 11, 22, 22
    lbzx 23, 31, 0
    lhzx 17, 31, 0
    subfeo. 5, 6, 24
    mulhw 5, 8, 23
    divwu 10, 22, 29
    adde 25, 6, 6
    addc. 24, 14, 23
    mulhwu. 23, 12, 15
    subfco 22, 12, 22
    stbux 20, 31, 0
    lhau 8, 0(31)
    extsh. 5, 24
    subf 22, 3, 9
    rlwnm 21, 26, 23, 26, 29
    lwz 23, 0(31)
    addzeo. 15, 2
    nor 18, 4, 17
    neg. 6, 13
    divwo 15, 21, 29
    sth 13, 0(31)
    addc 13, 14, 15
    subfc. 23, 6, 16
    and. 17, 17, 8
    divwuo 23, 5, 29
    rlwinm. 25, 2, 14, 27, 17
    mullw 5, 16, 24
    nand. 7, 18, 4
    addis 13, 0, 6605
    slw 17, 4, 25
    cmpl cr0, 0, 25, 25
    add. 7, 15, 15
    adde. 17, 15, 22
    addco 17, 15, 2
    mullw. 14, 12, 18
    nego. 18, 10
    divwu. 22, 12, 29
    subfmeo 9, 20
    srw. 5, 23, 12
    sraw 26, 3, 8
    subfme 19, 5
    cmpi cr0, 0, 14, 17674
    subf. 22, 2, 22
    sthu 21, 0(31)
    addmeo. 18, 2
    subfzeo 19, 5
    mulli 22, 3, 31766
    addco. 20, 26, 7
    subfe. 23, 16, 24
    srw 5, 14, 26
    mulhw. 15, 2, 23
    slw. 4, 7, 21
    andi. 8, 16, 40093
    mullwo 24, 16, 6
    stw 3, 0(31)
    divwuo. 20, 16, 29
    mulhwu 19, 14, 11
    ble 1f
    srawi 10, 21, 24
    subfme. 22, 23
1:
    addze. 25, 10
    addze 26, 16
    stwu 25, 0(31)
    xoris 24, 25, 53972
    stbx 21, 31, 0
    cmp cr0, 0, 17, 6
    lbzu 2, 0(31)
    cmpli cr0, 0, 5, 54553
    stb 20, 0(31)
    lhbrx 21, 31, 0
    addzeo 20, 19
    divw 16, 4, 29
    rlwinm 24, 17, 24, 2, 17
    extsb 22, 4
    addmeo 9, 2
    extsb. 12, 18
    lwbrx 17, 31, 0
    eqv 25, 14, 17
    addi 17, 4, 14433
    nand 9, 15, 2
    addic 26, 25, 29356
    subfzeo. 3, 26
    eqv. 18, 12, 17
    nor. 5, 4, 26
    rlwimi 3, 3, 16, 10, 12
    srawi. 13, 17, 3
    andis. 20, 2, 41556
    divwo. 7, 25, 29
    rlwnm. 9, 2, 25, 25, 30
    subfo. 24, 10, 10
    addic. 14, 4, -19485
    addis 18, 0, -30598
    bge 1f
    addis 9, 0, -21527
1:
    stwu 20, 0(31)
    addi 26, 18, -26856
    addis 14, 0, -30989
    rlwnm. 25, 15, 9, 8, 20
    lhzu 17, 0(31)
    addis 15, 0, 26931
    mulhwu. 10, 3, 2
    addis 26, 0, 30869
    bne 1f
    andis. 4, 22, 35402
    subf. 4, 9, 26
    stbx 13, 31, 0
    divwo 23, 22, 29
1:
    bgt 1f
    addic 21, 4, 16259
1:
    extsb. 5, 14
    or 21, 12, 17
    xoris 12, 25, 12258
    rlwimi. 23, 24, 25, 3, 25
    addis 9, 0, 7617
    rlwinm 10, 18, 16, 9, 12
    addis 26, 0, 21837
    andi. 19, 11, 10050
    stbux 15, 31, 0
    lhau 2, 0(31)
    subfc 20, 16, 13
    addis 24, 0, 31989
    stwx 6, 31, 0
    lhzu 15, 0(31)
    stbux 7, 31, 0
    subfco 5, 7, 10
    subfic 7, 12, -27509
    sth 21, 0(31)
    addis 8, 0, 4675
    addis 13, 0, -12525
    cmpli cr0, 0, 3, 29519
    sthx 15, 31, 0
    sthu 19, 0(31)
    addis 10, 0, -28537
    srawi 22, 23, 0
    addeo. 23, 18, 10
    eqv. 4, 19, 3
    addis 19, 0, 29896
    addis 11, 0, 13489
    srawi 3, 26, 13
    andi. 12, 20, 33108
    b 1f
    mulhwu. 12, 19, 15
    subfzeo. 4, 14
1:
    mtlr 28
    # DO NOT execute: addi 1, 1, 2304

    ################################################################
    # Save final r0-r31 to gpr_snapshot
    #
    # Note:
    #   QEMU live r1  is user-mode stack, not bare-metal r1.
    #   QEMU live r31 is work_mem, not bare-metal r31.
    #
    # Therefore:
    #   final logical r1  = BODY_ENTRY_GPRS.r1 + 2304
    #   final logical r31 = BODY_ENTRY_GPRS.r31
    ################################################################

    # Save real final r12 temporarily on QEMU stack.
    stw     12, 8(1)

    # r12 = gpr_snapshot pointer
    lis     12, saved_state@ha
    addi    12, 12, saved_state@l
    lwz     12, 88(12)

    # Save final r0 before using r0 as a temporary.
    stw     0, 0(12)

    # Save logical bare-metal final r1.
    # CPU epilogue does: addi 1, 1, 2304
    # QEMU cannot really do that because r1 is user stack.
    lwz     31, 4(12)
    addi    31, 31, 2304
    stw     31, 4(12)

    stw     2, 8(12)
    stw     3, 12(12)
    stw     4, 16(12)
    stw     5, 20(12)
    stw     6, 24(12)
    stw     7, 28(12)
    stw     8, 32(12)
    stw     9, 36(12)
    stw     10, 40(12)
    stw     11, 44(12)

    # Restore real final r12 and save it.
    lwz     0, 8(1)
    stw     0, 48(12)

    stw     13, 52(12)
    stw     14, 56(12)
    stw     15, 60(12)
    stw     16, 64(12)
    stw     17, 68(12)
    stw     18, 72(12)
    stw     19, 76(12)
    stw     20, 80(12)
    stw     21, 84(12)
    stw     22, 88(12)
    stw     23, 92(12)
    stw     24, 96(12)
    stw     25, 100(12)
    stw     26, 104(12)
    stw     27, 108(12)
    stw     28, 112(12)
    stw     29, 116(12)
    stw     30, 120(12)

    # Save logical bare-metal final r31.
    # Do NOT save QEMU live r31, because live r31 is work_mem.
    # In the current generator, r31 is reserved and update offsets are 0,
    # so logical r31 remains equal to BODY_ENTRY_GPRS.r31.
    lwz     0, 124(12)
    stw     0, 124(12)

    ################################################################
    # Save final CR / XER / LR / CTR to spr_snapshot
    ################################################################

    lis     12, saved_state@ha
    addi    12, 12, saved_state@l
    lwz     12, 92(12)

    mfcr    0
    stw     0, 0(12)

    mfxer   0
    stw     0, 4(12)

    mflr    0
    stw     0, 8(12)

    mfctr   0
    stw     0, 12(12)

    ################################################################
    # Restore C caller state and return
    ################################################################

    lis     12, saved_state@ha
    addi    12, 12, saved_state@l

    lmw     14, 16(12)
    lwz     13, 12(12)
    lwz     2, 8(12)
    lwz     1, 4(12)
    lwz     0, 0(12)
    mtlr    0
    blr

    .section .note.GNU-stack,"",@progbits
