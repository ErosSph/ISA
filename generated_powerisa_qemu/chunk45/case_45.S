    .text
    .align 2
    .globl run_chunk_45
    .type run_chunk_45, @function
run_chunk_45:
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
    ori 12, 12, 0xB964
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0xFEDF
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
    lis 11, 0x3801
    ori 11, 11, 0xE1CE
    lis 12, 0xE15C
    lis 13, 0xEE67
    ori 13, 13, 0xC000
    lis 14, 0x17FB
    lis 15, 0x226E
    ori 15, 15, 0x67D0
    lis 16, 0xD6A6
    lis 17, 0x3801
    lis 18, 0x5068
    ori 18, 18, 0x02DD
    lis 19, 0x5068
    lis 20, 0x3801
    ori 20, 20, 0xE1CE
    lis 21, 0x0000
    ori 21, 21, 0x02DD
    li 22, 0
    lis 23, 0x1376
    ori 23, 23, 0x1376
    lis 24, 0x226E
    li 25, 0
    lis 26, 0xEB0E
    lis 27, 0xE001
    ori 27, 27, 0x5FC0
    lis 28, 0xE005
    ori 28, 28, 0xB964
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x4950
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk45_body_start:
    cmpi cr0, 0, 29, 0
    rlwnm 10, 6, 10, 11, 15
    lbzux 26, 31, 0
    stbx 17, 31, 0
    stbx 12, 31, 0
    rlwnm. 4, 16, 22, 13, 9
    extsh 13, 11
    cmpli cr0, 0, 2, 38403
    addi 15, 24, -3362
    addis 22, 0, -3519
    addis 5, 0, -1002
    rlwnm. 18, 4, 10, 12, 0
    add. 7, 6, 12
    stwux 23, 31, 0
    addis 10, 0, 81
    cmpi cr0, 0, 3, 2253
    addis 3, 0, -5159
    rlwimi. 11, 3, 9, 15, 16
    lhaux 23, 31, 0
    lhzu 6, 0(31)
    stbx 22, 31, 0
    andi. 2, 2, 44646
    addis 20, 0, 28900
    lhzux 6, 31, 0
    stbux 5, 31, 0
    andis. 6, 26, 19898
    stwux 23, 31, 0
    stwu 3, 0(31)
    addc 11, 25, 16
    rlwnm. 8, 15, 5, 1, 25
    sraw 23, 20, 19
    andi. 2, 2, 9546
    rlwinm. 21, 2, 15, 11, 24
    addis 24, 0, -25244
    stb 9, 0(31)
    lha 4, 0(31)
    addmeo 14, 14
    cmpi cr0, 0, 10, -27240
    lhax 12, 31, 0
    subfzeo 5, 19
    eqv 10, 16, 5
    rlwinm 17, 25, 29, 25, 3
    stw 22, 0(31)
    mulhwu. 7, 9, 8
    andc 6, 19, 20
    xori 6, 22, 64415
    andis. 19, 25, 30675
    subf 5, 19, 20
    lbzx 6, 31, 0
    addis 18, 0, -31901
    lwz 3, 0(31)
    stwu 13, 0(31)
    addis 15, 0, 10839
    lwzx 20, 31, 0
    lwzx 19, 31, 0
    mulli 11, 5, 24129
    lhzx 10, 31, 0
    addco. 6, 4, 14
    lhaux 9, 31, 0
    lwzux 15, 31, 0
    andi. 25, 12, 60854
    addis 12, 0, -14397
    addis 15, 0, 19633
    addis 12, 0, 6002
    addis 17, 0, -5891
    andis. 9, 9, 28447
    srawi. 12, 3, 19
    addis 18, 0, 32323
    addi 21, 6, -25844
    subfe. 6, 3, 19
    addis 19, 0, -1946
    addis 2, 0, 16599
    srw 18, 16, 6
    andi. 9, 11, 7218
    or 26, 20, 20
    xoris 4, 26, 46305
    stw 13, 0(31)
    addis 2, 0, -9313
    mulhwu. 20, 16, 10
    sraw 3, 21, 18
    srawi 24, 5, 11
    addis 8, 0, -11516
    srw. 7, 23, 5
    stwux 8, 31, 0
    sthbrx 14, 31, 0
    xor 6, 13, 15
    bl 1f
    addme. 18, 23
    oris 12, 6, 5156
    addis 26, 0, 15433
    rlwimi 17, 11, 23, 25, 21
    1:
    nego 6, 11
    stbu 22, 0(31)
    cmpi cr0, 0, 4, 25405
    lhzu 25, 0(31)
    addis 12, 0, 24955
    stbu 18, 0(31)
    xori 25, 21, 59565
    addic 24, 3, 15393
    bl 1f
    addis 4, 0, 3640
    lhax 5, 31, 0
    cmpli cr0, 0, 15, 3816
    1:
    addis 14, 0, 8130
    addis 5, 0, 14409
    sraw 7, 16, 26
    adde. 23, 9, 12
    lhzu 6, 0(31)
    mullwo 14, 13, 11
    addi 19, 12, 574
    stbx 3, 31, 0
    lhzu 14, 0(31)
    subfic 6, 23, -31860
    addis 15, 0, -31350
    andi. 19, 6, 9150
    or 16, 18, 16
    addic. 11, 21, -1418
    addis 7, 0, 28476
    lwzx 4, 31, 0
    addis 6, 0, 30371
    stwu 13, 0(31)
    oris 20, 16, 15249
    rlwimi. 11, 10, 9, 23, 6
    lhzx 15, 31, 0
    sthbrx 17, 31, 0
    addis 24, 0, 15768
    divwu. 26, 13, 29
    srawi. 7, 14, 24
    sthx 21, 31, 0
    subfze. 11, 18
    sthu 18, 0(31)
    lwzu 23, 0(31)
    sthbrx 4, 31, 0
    addis 14, 0, -27141
    stb 21, 0(31)
    andc. 7, 9, 12
    stwux 23, 31, 0
    sthux 2, 31, 0
    lwbrx 10, 31, 0
    lhbrx 17, 31, 0
    stbu 15, 0(31)
    and. 26, 19, 25
    nand 26, 6, 23
    stb 10, 0(31)
    extsh. 14, 10
    andis. 24, 7, 7434
    srw. 9, 26, 24
    addis 5, 0, 6205
    addmeo 23, 17
    cmp cr0, 0, 2, 4
    ori 12, 11, 11636
    rlwinm 20, 19, 13, 22, 9
    lhbrx 15, 31, 0
    xori 17, 13, 61858
    rlwinm 15, 14, 24, 23, 26
    lhaux 10, 31, 0
    addis 18, 0, -20704
    lbzx 23, 31, 0
    subfme. 3, 15
    sthux 19, 31, 0
    rlwinm 5, 9, 2, 28, 14
    andis. 10, 9, 17019
    stbx 16, 31, 0
    lhau 3, 0(31)
    subfme 15, 15
    b 1f
    lwzux 22, 31, 0
    rlwinm. 13, 13, 21, 30, 10
    andi. 7, 15, 7873
    sthu 12, 0(31)
    1:
    stbx 18, 31, 0
    extsb 26, 22
    rlwnm. 3, 11, 13, 17, 13
    stbux 21, 31, 0
    subfco. 15, 8, 14
    subfic 5, 4, 31955
    lwz 4, 0(31)
    lwzu 14, 0(31)
    ble 1f
    divw 15, 11, 29
    mulhw 20, 25, 15
    1:
    sthu 15, 0(31)
    subfc. 7, 20, 18
    addis 16, 0, -12400
    sthbrx 21, 31, 0
    mulhwu 25, 25, 9
    andis. 11, 22, 38914
    sthbrx 9, 31, 0
    addis 15, 0, -30548
    addis 12, 0, -5572
    mulhw. 15, 16, 4
    lwzx 22, 31, 0
    sth 16, 0(31)
    sthbrx 17, 31, 0
    divw. 7, 3, 29
    stbx 8, 31, 0
    sthu 25, 0(31)
    stbux 6, 31, 0
    stmw 13, 0(31)
    rlwimi. 18, 16, 12, 17, 20
    addis 6, 0, -24450
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
    .size run_chunk_45, .-run_chunk_45
    .section .note.GNU-stack,"",@progbits
