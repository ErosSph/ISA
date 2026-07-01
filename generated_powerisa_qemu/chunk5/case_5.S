    .text
    .align 2
    .globl run_chunk_5
    .type run_chunk_5, @function
run_chunk_5:
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
    lis 12, 0xE004
    ori 12, 12, 0xC158
    mtlr 12
    li 12, 0
    mtctr 12

    li 0, 0
    lis 1, 0xE001
    ori 1, 1, 0xD8C0
    lis 2, 0x0552
    ori 2, 2, 0x4924
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
    lis 11, 0x0406
    lis 12, 0x773D
    lis 13, 0x0406
    ori 13, 13, 0x0002
    lis 14, 0x0000
    ori 14, 14, 0x0002
    lis 15, 0x6469
    lis 16, 0x2540
    ori 16, 16, 0x0030
    lis 17, 0x7FA2
    lis 18, 0x0000
    ori 18, 18, 0x0047
    lis 19, 0x3646
    ori 19, 19, 0x0002
    lis 20, 0x0000
    ori 20, 20, 0x8CA2
    lis 21, 0x5FF8
    ori 21, 21, 0x5323
    lis 22, 0x2C8C
    lis 23, 0xD832
    lis 24, 0x53B2
    lis 25, 0x6C8A
    lis 26, 0x49B8
    ori 26, 26, 0x5321
    lis 27, 0xE001
    ori 27, 27, 0x4BC0
    lis 28, 0xE004
    ori 28, 28, 0xC158
    lis 29, 0x0000
    ori 29, 29, 0x0007
    lis 30, 0xE001
    ori 30, 30, 0x46D0
    lis 31, 0xE001
    ori 31, 31, 0xD900

chunk5_body_start:
    cmpi cr0, 0, 29, 0
    lha 26, 0(31)
    stwbrx 25, 31, 0
    andc 23, 9, 24
    lbzux 24, 31, 0
    oris 17, 19, 23727
    sth 21, 0(31)
    divwu. 10, 21, 29
    lhau 18, 0(31)
    rlwinm. 16, 20, 17, 7, 1
    stwux 5, 31, 0
    ble 1f
    sthux 22, 31, 0
    lhzux 14, 31, 0
    1:
    stw 17, 0(31)
    addco. 23, 15, 4
    subfic 11, 20, 25411
    stwx 21, 31, 0
    addis 21, 0, 9808
    divwuo 25, 25, 29
    addis 21, 0, 4999
    stwbrx 10, 31, 0
    cntlzw. 20, 21
    addis 11, 0, -3494
    addis 21, 0, -30864
    stb 15, 0(31)
    ble 1f
    sthu 3, 0(31)
    lhax 12, 31, 0
    addis 8, 0, 26965
    mullwo 26, 16, 10
    1:
    addis 18, 0, -10897
    stw 12, 0(31)
    rlwimi. 24, 11, 26, 17, 23
    lhz 13, 0(31)
    subfic 14, 7, 13033
    cmpli cr0, 0, 21, 31971
    lwzx 9, 31, 0
    subfic 15, 25, 14232
    rlwimi 18, 22, 26, 29, 23
    blt 1f
    lbzu 14, 0(31)
    addis 18, 0, 30694
    lhzux 11, 31, 0
    lhzx 17, 31, 0
    1:
    stw 8, 0(31)
    subfe 16, 26, 25
    srawi 23, 16, 15
    sthx 10, 31, 0
    mullw 19, 10, 16
    stbux 11, 31, 0
    lha 25, 0(31)
    lwbrx 25, 31, 0
    rlwimi 21, 4, 30, 29, 15
    addis 8, 0, -13063
    stbu 6, 0(31)
    stmw 15, 0(31)
    adde. 14, 21, 2
    addis 7, 0, -4149
    rlwinm 24, 26, 1, 18, 1
    addic 5, 12, 29837
    addis 7, 0, -31090
    andi. 18, 24, 43077
    lwbrx 7, 31, 0
    lhzu 25, 0(31)
    addis 13, 0, -7868
    lbzux 13, 31, 0
    divwo. 23, 25, 29
    addis 5, 0, -3072
    addis 11, 0, 27100
    addis 18, 0, 10145
    addis 2, 0, 5217
    stw 5, 0(31)
    addis 2, 0, -2082
    xoris 10, 8, 31868
    bl 1f
    subfic 21, 24, -26213
    oris 13, 24, 7180
    lbzux 24, 31, 0
    1:
    addzeo. 14, 25
    oris 21, 23, 7441
    addis 14, 0, 15832
    lhax 11, 31, 0
    addis 13, 0, 17949
    lbz 24, 0(31)
    or 17, 16, 6
    subfmeo 17, 3
    andc. 13, 26, 14
    lwzux 16, 31, 0
    stwbrx 4, 31, 0
    andi. 13, 19, 5548
    stwu 7, 0(31)
    lwbrx 2, 31, 0
    lhz 17, 0(31)
    addis 3, 0, 8608
    lwbrx 22, 31, 0
    sthu 22, 0(31)
    sthux 22, 31, 0
    addis 4, 0, 18166
    stwbrx 17, 31, 0
    stwx 6, 31, 0
    or. 2, 26, 19
    rlwinm. 11, 21, 12, 12, 2
    lwzx 12, 31, 0
    stwu 26, 0(31)
    stwbrx 19, 31, 0
    extsh 2, 2
    lbzx 16, 31, 0
    adde. 15, 21, 5
    lwzx 21, 31, 0
    xori 22, 6, 36420
    subfic 26, 26, 28716
    lbzu 21, 0(31)
    addis 9, 0, 31064
    xoris 4, 21, 13278
    stwx 10, 31, 0
    addic 18, 9, -19703
    addis 26, 0, 11718
    addis 25, 0, 3135
    addi 20, 3, -3223
    addis 12, 0, 28888
    extsb. 25, 2
    cntlzw 23, 16
    lwzx 4, 31, 0
    addis 19, 0, -12993
    b 1f
    addis 16, 0, -24117
    1:
    addis 7, 0, 30419
    divwuo. 3, 2, 29
    addi 12, 3, 519
    neg 7, 24
    lhau 19, 0(31)
    stwux 17, 31, 0
    sthbrx 2, 31, 0
    addic 23, 8, 31462
    srawi. 10, 2, 26
    sth 22, 0(31)
    lwz 3, 0(31)
    stwux 23, 31, 0
    addis 26, 0, 23276
    lwbrx 20, 31, 0
    lbzux 10, 31, 0
    addze 12, 13
    extsb 8, 16
    lha 17, 0(31)
    subfeo. 10, 2, 16
    lhbrx 4, 31, 0
    lwz 10, 0(31)
    addis 6, 0, 16667
    addis 10, 0, 28915
    andc 5, 15, 18
    lhzux 26, 31, 0
    addis 18, 0, -25136
    srawi. 23, 8, 29
    lbzux 13, 31, 0
    cmpi cr0, 0, 13, 24343
    sthbrx 10, 31, 0
    subfic 19, 7, -29821
    addis 23, 0, -20808
    stwbrx 24, 31, 0
    stwu 11, 0(31)
    subfze 13, 23
    lwbrx 23, 31, 0
    lhzu 14, 0(31)
    addis 5, 0, -17137
    addis 9, 0, -22337
    addis 23, 0, 23515
    lwzux 13, 31, 0
    addis 20, 0, -8105
    addeo 8, 11, 9
    stbux 6, 31, 0
    addis 24, 0, -4356
    bne 1f
    lhax 22, 31, 0
    1:
    xoris 18, 10, 29685
    addis 16, 0, -2803
    lbzux 9, 31, 0
    lbzux 19, 31, 0
    addis 26, 0, 17969
    lbzx 23, 31, 0
    stwu 17, 0(31)
    sthbrx 8, 31, 0
    lhau 17, 0(31)
    rlwimi 26, 13, 31, 28, 22
    addis 7, 0, -8887
    addis 14, 0, -1725
    stmw 19, 0(31)
    addis 11, 0, 3148
    ori 16, 18, 34775
    add 24, 8, 4
    stmw 7, 0(31)
    lhzux 19, 31, 0
    lwz 5, 0(31)
    stmw 19, 0(31)
    addic. 7, 17, 2685
    sthux 21, 31, 0
    stwbrx 23, 31, 0
    lha 6, 0(31)
    addmeo 3, 24
    divwu 19, 5, 29
    lhaux 7, 31, 0
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
    .size run_chunk_5, .-run_chunk_5
    .section .note.GNU-stack,"",@progbits
