/**
 * EZBL Bootloader Code and RAM Allocation
 *
 * Automatically generated file - not intended for manual editing. If changes 
 * are made here, they will normally be overwritten when you rebuild your 
 * Bootloader. If necessary, maintain a backup copy and manually merge your 
 * customizations back in.
 * 
 * Built for:
 *     PIC32MM0256GPM028
 * From:
 *     dist/uart/production/ex_boot_uart_pic32mm.production.elf
 * Using build configuration:
 *     uart
 * 
 * Tool paths:
 *     /opt/microchip/xc32/v2.10
 *     /opt/microchip/mplabx/v5.50
 */

 # Validate matching target processors between Bootloader and Application projects.
 # If you get this error and wish to force the two dissimilar targets together anyway,
 # you can comment out these .error statements. However, something will likely be
 # broken at run time, so do so only if you are sure of what you are doing.
#if !defined(__32MM0256GPM028__)
    .error "Bootloader's ex_boot_uart_pic32mm.merge.S file was generated for a different target processor."
    .error "Recompile this Application project or the ex_boot_uart_pic32mm Bootloader project for the same hardware."
#endif


#----Target Bootloader ID and this Application Version meta data for .bl2 file header----
    .pushsection    .info.EZBL_metaParameters, info, keep
    .weak   _BOOTID_HASH0
    .weak   _BOOTID_HASH1
    .weak   _BOOTID_HASH2
    .weak   _BOOTID_HASH3
    .weak   _APPID_VER_BUILD
    .weak   _APPID_VER_MINOR
    .weak   _APPID_VER_MAJOR
_BOOTID_HASH0 = 0x7963B2E2
_BOOTID_HASH1 = 0x2DE540ED
_BOOTID_HASH2 = 0xEC4A3773
_BOOTID_HASH3 = 0xC02F3D41
EZBL_metaAppIDVerBuild:
    .long   _APPID_VER_BUILD
EZBL_metaAppIDVerMinor:
    .short  _APPID_VER_MINOR
EZBL_metaAppIDVerMajor:
    .short  _APPID_VER_MAJOR
    .popsection

#if !defined(EZBL_HIDE_BOOT_SYMBOLS)
    # Bootloader RAM block intended for 'kseg0_data_mem' region
    # 0x80000200 to 0x80000348, length 0x0148 (328 bytes)
    .pushsection    EZBL_RAM_AT_0x80000200, address(0x80000200), persist, keep
    .space      0x148
    .popsection
    # Bootloader RAM block intended for 'kseg0_data_mem' region
    # 0x80000350 to 0x80000360, length 0x0010 (16 bytes)
    .pushsection    EZBL_RAM_AT_0x80000350, address(0x80000350), persist, keep
    .space      0x10
    .popsection
#endif

#----Bootloader reserved flash space propagated from the bootloader project----
    .global EZBL_BOOTLOADER_SIZE
EZBL_BOOTLOADER_SIZE = 0x00002800



#----App erasable items that the Bootloader knows about----
    .pushsection    .EZBL_appBootloadState, address(0x9D002800), code, keep
    # EZBL_appBootloadState - Base address of EZBL_INSTALLED_FLAGS structure (24 bytes/6 instruction words)
    .global EZBL_appBootloadState
    .global EZBL_appIDVer
    .type   EZBL_appBootloadState, @object
    .type   EZBL_appIDVer, @object
EZBL_appBootloadState:
EZBL_appIDVer:
    .long   _APPID_VER_BUILD    # EZBL_appIDVer.appIDVerBuild
    .short  _APPID_VER_MINOR    # EZBL_appIDVer.appIDVerMinor
    .short  _APPID_VER_MAJOR    # EZBL_appIDVer.appIDVerMajor
    .size   EZBL_appIDVer, . - EZBL_appIDVer
    .long   0xFFFFFFFF          # hash32 - not defined at compile time, set when run-time programmed
    .long   0xFFFFFFFF          # CRC32  - not defined at compile time, set when run-time programmed
    .long   0xFFFF12CD          # appInstalled == EZBL_APP_INSTALLED (0x12CD)
    .long   0xFFFFFFFF          # padding to fit 3x flash double words
    .size   EZBL_appBootloadState, . - EZBL_appBootloadState
    .popsection



#----Bootloader reserved program memory----

    # Bootloader code block intended for program region 'kseg0_program_mem'
    # 0x9D000000 to 0x9D002800, length 0x002800 (10240 bytes; needs 4 pages)
    .pushsection    EZBL_ROM_AT_0x9D000000, address(0x9D000000), code, keep

    .ent        NOW_CORETMR_ResetConst
    .type       NOW_CORETMR_ResetConst, @function
NOW_CORETMR_ResetConst:         # 0x9D000000
    .set        micromips
    .insn
    .word       0x00FC004D
    .word       0xDECC0040
    .word       0x02FC004D
    .word       0x004BED7F
    .word       0xD68002FC
    .word       0x0C0001DE
    .word       0x00000038
    .size       NOW_CORETMR_ResetConst, . - NOW_CORETMR_ResetConst   # 28
    .end        NOW_CORETMR_ResetConst

    .ent        __vector_dispatch_56
    .type       __vector_dispatch_56, @function
__vector_dispatch_56:           # 0x9D00001C
    .set        micromips
    .insn
    .word       0x09FAD680
    .word       0x0C000C00
    .word       0x00000039
    .size       __vector_dispatch_56, . - __vector_dispatch_56   # 12
    .end        __vector_dispatch_56

    .ent        __vector_dispatch_57
    .type       __vector_dispatch_57, @function
__vector_dispatch_57:           # 0x9D000028
    .set        micromips
    .insn
    .word       0x09FAD680
    .word       0x0C000C00
    .size       __vector_dispatch_57, . - __vector_dispatch_57   # 8
    .end        __vector_dispatch_57

    .ent        strlen
    .type       strlen, @function
strlen:                         # 0x9D000030
    .set        micromips
    .insn
    .word       0x00001544
    .word       0xB40A0C44
    .word       0x0C000003
    .word       0xED00459F
    .word       0x00011544
    .word       0x0003B40A
    .word       0x459F0C00
    .word       0x1544ED01
    .word       0xB40A0002
    .word       0x0C000003
    .word       0xED02459F
    .word       0x00031544
    .word       0x0003B40A
    .word       0x459F2645
    .word       0x6E40ED03
    .word       0xFD442644
    .word       0x41A90000
    .word       0x51290101
    .word       0x01E90101
    .word       0x012A3800
    .word       0x01E841D0
    .word       0x94084250
    .word       0x01480009
    .word       0x950C6250
    .word       0x0C000005
    .word       0x00001544
    .word       0x4C80CC38
    .word       0x0004FD64
    .word       0x41D0012B
    .word       0x425001E8
    .word       0x00099408
    .word       0x62500168
    .word       0x0005950C
    .word       0x15440C00
    .word       0xCC270004
    .word       0xFD446E42
    .word       0x012A0008
    .word       0x01E841D0
    .word       0x94084250
    .word       0x01480009
    .word       0x950C6250
    .word       0x0C000005
    .word       0x00081544
    .word       0x6E44CC16
    .word       0x000CFD64
    .word       0x41D0012B
    .word       0x425001E8
    .word       0x00099408
    .word       0x62500168
    .word       0x0005950C
    .word       0x15440C00
    .word       0xCC05000C
    .word       0xFD446E46
    .word       0xCFBB0010
    .word       0xB40A6E48
    .word       0x0C000004
    .word       0x459F4C80
    .word       0x15440529
    .word       0xB40A0001
    .word       0x0C000004
    .word       0x459F6E40
    .word       0x15440529
    .word       0xB40A0002
    .word       0x0C000004
    .word       0x459F4C84
    .word       0x15440529
    .word       0x4C860003
    .word       0x0529459F
    .word       0x9D0041BA
    .word       0x1E5D335A
    .word       0x0C00459A
    .size       strlen, . - strlen   # 284
    .end        strlen

    .ent        EZBL_FIFOReset
    .type       EZBL_FIFOReset, @function
EZBL_FIFOReset:                 # 0x9D00014C
    .set        micromips
    .insn
    .word       0xEB43E840
    .word       0xEAC1EAC4
    .word       0xEBC5EAC2
    .word       0xE9464844
    .word       0xE847459F
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .size       EZBL_FIFOReset, . - EZBL_FIFOReset   # 28
    .end        EZBL_FIFOReset

    .ent        LEDOff
    .type       LEDOff, @function
LEDOff:                         # 0x9D000168
    .set        micromips
    .insn
    .word       0xCBE54FF5
    .word       0x9D0041A5
    .word       0x03C8F680
    .word       0x206030A5
    .word       0x4BE54412
    .word       0x4C0D459F
    .word       0x9D0041BA
    .word       0x1AF1335A
    .word       0x0C00459A
    .size       LEDOff, . - LEDOff   # 36
    .end        LEDOff

    .ent        InitializeBoard
    .type       InitializeBoard, @function
InitializeBoard:                # 0x9D00018C
    .set        micromips
    .insn
    .word       0x45444FF5
    .word       0x577C0002
    .word       0x016E41A3
    .word       0x36003063
    .word       0x800041A2
    .word       0x0310F862
    .word       0x00B741A3
    .word       0x1B003063
    .word       0x800041A2
    .word       0x0318F862
    .word       0x800041B0
    .word       0xBB805040
    .word       0x0314F850
    .word       0x41A2EDB0
    .word       0xF6808000
    .word       0x38620000
    .word       0x41A2031C
    .word       0xF802BF80
    .word       0x30602BE0
    .word       0x41A24000
    .word       0xF862BF80
    .word       0x41A22CE0
    .word       0xF802BF80
    .word       0xEE892DE0
    .word       0xBF8041A2
    .word       0x2BC0F8A2
    .word       0x2C5F3060
    .word       0xBF8041A2
    .word       0x2CC0F862
    .word       0x02003060
    .word       0xBF8041A2
    .word       0x2DC0F862
    .word       0xBF8041A2
    .word       0x2C10F802
    .word       0xBF8041A2
    .word       0x2D10F802
    .word       0xBF8041A2
    .word       0x2E10F802
    .word       0xBF8041A2
    .word       0x2C00F802
    .word       0xBF8041A2
    .word       0x2D00F802
    .word       0xBF8041A2
    .word       0x2E00F802
    .word       0xBF8041A2
    .word       0x2BF0F802
    .word       0xBF8041A2
    .word       0x2CF0F802
    .word       0xBF8041A2
    .word       0x2DF0F802
    .word       0xBF8041A2
    .word       0x2BB0F802
    .word       0xBF8041A2
    .word       0x2CB0F802
    .word       0xBF8041A2
    .word       0x2B40FC62
    .word       0x0064EE0A
    .word       0xF862E60C
    .word       0x41A22B40
    .word       0xFC62BF80
    .word       0xEE062B30
    .word       0xE60C0064
    .word       0x2B30F862
    .word       0xBF8041A3
    .word       0x2B10FC43
    .word       0x0047EF84
    .word       0xF843A40C
    .word       0x41A22B10
    .word       0xFC82BF80
    .word       0xEF0F2AC0
    .word       0x200C0086
    .word       0x2AC0F882
    .word       0xBF8041A4
    .word       0x2B50FCC4
    .word       0x00083100
    .word       0x200C00C8
    .word       0x2B50F8C4
    .word       0xBF8041A4
    .word       0x2AA0FCC4
    .word       0xA40C00C7
    .word       0x2AA0F8C4
    .word       0xBF8041A4
    .word       0x2A90FCC4
    .word       0x00C7EF92
    .word       0xF8C4E60C
    .word       0xFC832A90
    .word       0x00852B10
    .word       0xF883200C
    .word       0xFC622B10
    .word       0xEE012AC0
    .word       0x620C0064
    .word       0x2AC0F862
    .word       0x0314FC70
    .word       0x25B82534
    .word       0x26260534
    .word       0x0FEA7680
    .word       0xF6800629
    .word       0x30800312
    .word       0x41A2FFE7
    .word       0x30428000
    .word       0xF85C02E0
    .word       0x41A28030
    .word       0x30428000
    .word       0xF85C02B8
    .word       0x41A38034
    .word       0xF8438000
    .word       0x76800200
    .word       0x0C801046
    .word       0xFFFF5080
    .word       0x9D0041A5
    .word       0x206030A5
    .word       0xBF8041A2
    .word       0x2BE03042
    .word       0xBF8041A6
    .word       0x2BC030C6
    .word       0x03C67680
    .word       0x3060072D
    .word       0x41A20200
    .word       0xF862BF80
    .word       0x41A22CB4
    .word       0x3042016E
    .word       0x45043600
    .word       0x4C0D459F
    .word       0x000041A4
    .word       0x30844FF5
    .word       0x8E040000
    .word       0x45C4CBE5
    .word       0x00000000
    .word       0x0000D084
    .word       0x0000D0A5
    .word       0x9D0041A8
    .word       0x1CA13108
    .word       0x000045C8
    .word       0x41A20000
    .word       0x30420000
    .word       0x94020000
    .word       0x0C000004
    .word       0x000045C2
    .word       0xCFF50000
    .word       0x0C000C00
    .size       InitializeBoard, . - InitializeBoard   # 560
    .end        InitializeBoard

    .ent        NOW_EnableInterrupts
    .type       NOW_EnableInterrupts, @function
NOW_EnableInterrupts:           # 0x9D0003BC
    .type       NOW_IntEnable, @function
NOW_IntEnable:                  # 0x9D0003BC
    .set        micromips
    .insn
    .word       0x0C40459F
    .word       0x8010FF5C
    .word       0x0C0045BA
    .word       0x8014FF5C
    .word       0x0C0045BA
    .word       0x9D002800
    .word       0x9D040000
    .word       0xBFC01740
    .word       0xBFC017C0
    .word       0xBFC017E8
    .word       0xBFC01800
    .word       0x9D000000
    .word       0x9D002800
    .word       0xBFC00000
    .word       0xBFC01740
    .word       0xBFC017C8
    .word       0xBFC017D0
    .word       0xBFC017E0
    .word       0xBFC017E8
    .word       0x9D000000
    .word       0x9D002818
    .word       0xBFC00000
    .word       0xBFC01740
    .word       0xBFC017C0
    .word       0xBFC017E8
    .word       0x9D002800
    .word       0x9D002818
    .word       0xBFC017C8
    .word       0xBFC017D0
    .word       0xBFC017E0
    .word       0xBFC017E8
    .word       0xBFC017C0
    .word       0x00000020
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFF8
    .word       0xFFFFFFFF
    .word       0xFFFF74F4
    .word       0xFFFF7FF8
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .size       NOW_IntEnable, . - NOW_IntEnable   # 164
    .size       NOW_EnableInterrupts, . - NOW_EnableInterrupts   # 164
    .end        NOW_EnableInterrupts

    .ent        UART2_RXInterruptFunc
    .type       UART2_RXInterruptFunc, @function
UART2_RXInterruptFunc:          # 0x9D000460
    .set        micromips
    .insn
    .word       0x45644FF1
    .word       0x800041A4
    .word       0x0B10F680
    .word       0x02B83084
    .word       0xBF8041A2
    .word       0x1900FC42
    .word       0xAD1F2D20
    .word       0x41A6EC0A
    .word       0x3160BF80
    .word       0x41A90002
    .word       0x31299D00
    .word       0x314020A4
    .word       0x41A70001
    .word       0x30878000
    .word       0x41B802B8
    .word       0x33188000
    .word       0x318002E0
    .word       0x31E00001
    .word       0x3320004B
    .word       0xEC8D004F
    .word       0x000D31A0
    .word       0x31C0CCA4
    .word       0x3060004F
    .word       0x41A20080
    .word       0x3042BF80
    .word       0xE9A11900
    .word       0x800041A2
    .word       0x02B83042
    .word       0x00243462
    .word       0x0064EE01
    .word       0x38627BCC
    .word       0xCC9E0024
    .word       0x6ABC0C00
    .word       0xD10369B4
    .word       0x40A80004
    .word       0xCC040003
    .word       0x00025042
    .word       0x00225042
    .word       0x0008D243
    .word       0x00405102
    .word       0x8D882DB2
    .word       0x10180248
    .word       0x19003066
    .word       0x0014F963
    .word       0x00105042
    .word       0x801C147C
    .word       0x01232DB5
    .word       0x1E484150
    .word       0x01050000
    .word       0xB5122B3C
    .word       0x6DB0000E
    .word       0x801C187C
    .word       0x0008B063
    .word       0x000940A3
    .word       0x00805042
    .word       0x8020F89C
    .word       0xFB1CCC04
    .word       0x195C8024
    .word       0xFD07801C
    .word       0x69C302B8
    .word       0x1B900068
    .word       0xFC7CAD85
    .word       0xCC518028
    .word       0x80105042
    .word       0x001340A3
    .word       0x0004B5A5
    .word       0xCC340C00
    .word       0x8028F99C
    .word       0x0004B5C5
    .word       0xCC2E0C00
    .word       0x8028F97C
    .word       0x310369C1
    .word       0xF9040001
    .word       0xCC260004
    .word       0xB5838AB0
    .word       0x0C000011
    .word       0x001E9605
    .word       0x69C10C00
    .word       0x00013103
    .word       0x0004F904
    .word       0x69C188B0
    .word       0x00013103
    .word       0x0004F904
    .word       0x8AB0CC11
    .word       0x000E95E5
    .word       0x69C10C00
    .word       0x00013103
    .word       0x0004F904
    .word       0x00001B23
    .word       0x310369C1
    .word       0xF9040001
    .word       0x8AB00004
    .word       0x8028F81C
    .word       0x6AC369C4
    .word       0xFD0406D6
    .word       0x00A80004
    .word       0x40A52B90
    .word       0xE9C10001
    .word       0x477C0003
    .word       0x18000000
    .word       0x02B8FC67
    .word       0xF8676DB0
    .word       0x000302B8
    .word       0x3066577C
    .word       0x69B41900
    .word       0xB4032DB1
    .word       0x3066FF6C
    .word       0x41A31900
    .word       0x30638000
    .word       0x6A3902B8
    .word       0xE93944D4
    .word       0x459F4524
    .word       0x0C004C11
    .size       UART2_RXInterruptFunc, . - UART2_RXInterruptFunc   # 452
    .end        UART2_RXInterruptFunc

    .ent        UART2_ResetBRG
    .type       UART2_ResetBRG, @function
UART2_ResetBRG:                 # 0x9D000624
    .set        micromips
    .insn
    .word       0x22BD4FE9
    .word       0x0E64D018
    .word       0xEC88ED01
    .word       0x00019064
    .word       0x294C0223
    .word       0x7BCC0222
    .word       0x840C0222
    .word       0x41A30E00
    .word       0x3063BF80
    .word       0xFC8335C0
    .word       0x00820048
    .word       0xF883084C
    .word       0x41A30048
    .word       0x3063BF80
    .word       0x41A21900
    .word       0x3042BF80
    .word       0x94431900
    .word       0xEEA80007
    .word       0x41A4EE97
    .word       0xCC068000
    .word       0x02D8F8A4
    .word       0x800041A4
    .word       0x02D8F8A4
    .word       0xBF8041A5
    .word       0x190030A5
    .word       0x30802EDF
    .word       0xB4851900
    .word       0x41B20011
    .word       0xB4438000
    .word       0xEDB80006
    .word       0x800041A2
    .word       0xF862CC09
    .word       0xEDB502D8
    .word       0x800041A2
    .word       0x02D8F862
    .word       0x800041B2
    .word       0x02E03252
    .word       0x800041B4
    .word       0x02B83294
    .word       0x0020FC54
    .word       0xF8526D20
    .word       0xC8040020
    .word       0x41A50C92
    .word       0x30A58000
    .word       0xEF200298
    .word       0x9D0041A7
    .word       0x00A6F680
    .word       0x14D130E7
    .word       0x9D0041A2
    .word       0x19E93042
    .word       0x0C94C844
    .word       0x800041A5
    .word       0x023830A5
    .word       0x7680EF60
    .word       0x0CE000A6
    .word       0x9D0041A2
    .word       0x17AD3042
    .word       0x001CF852
    .word       0xBF8041A2
    .word       0x35C03042
    .word       0x0044FC62
    .word       0x0064EE01
    .word       0xF862084C
    .word       0x50400044
    .word       0xF8548000
    .word       0xF8520024
    .word       0x0C530024
    .word       0x99D00260
    .word       0x00009062
    .word       0x10180073
    .word       0xBF8041A4
    .word       0x19003064
    .word       0x0040F843
    .word       0x1900FA24
    .word       0x0202ED01
    .word       0x0202528C
    .word       0x0202630C
    .word       0xFA037BCC
    .word       0x0C940010
    .word       0x0B087680
    .word       0x0C92EE81
    .word       0x0B087680
    .word       0x7680EE81
    .word       0x0C940B22
    .word       0x0B227680
    .word       0x22BD0C92
    .word       0x459F5018
    .word       0x0C004C19
    .size       UART2_ResetBRG, . - UART2_ResetBRG   # 352
    .end        UART2_ResetBRG

    .ent        EZBL_MapWriteEx
    .type       EZBL_MapWriteEx, @function
EZBL_MapWriteEx:                # 0x9D000784
    .set        micromips
    .insn
    .word       0xED80CC0F
    .size       EZBL_MapWriteEx, . - EZBL_MapWriteEx   # 4
    .end        EZBL_MapWriteEx

    .ent        EZBL_MapWrite
    .type       EZBL_MapWrite, @function
EZBL_MapWrite:                  # 0x9D000788
    .set        micromips
    .insn
    .word       0xED80CC0C
    .size       EZBL_MapWrite, . - EZBL_MapWrite   # 4
    .end        EZBL_MapWrite

    .ent        EZBL_MapClrEx
    .type       EZBL_MapClrEx, @function
EZBL_MapClrEx:                  # 0x9D00078C
    .set        micromips
    .insn
    .word       0xED84CC0B
    .size       EZBL_MapClrEx, . - EZBL_MapClrEx   # 4
    .end        EZBL_MapClrEx

    .ent        EZBL_MapClr
    .type       EZBL_MapClr, @function
EZBL_MapClr:                    # 0x9D000790
    .set        micromips
    .insn
    .word       0xED84CC08
    .size       EZBL_MapClr, . - EZBL_MapClr   # 4
    .end        EZBL_MapClr

    .ent        EZBL_MapSetEx
    .type       EZBL_MapSetEx, @function
EZBL_MapSetEx:                  # 0x9D000794
    .set        micromips
    .insn
    .word       0xED88CC07
    .size       EZBL_MapSetEx, . - EZBL_MapSetEx   # 4
    .end        EZBL_MapSetEx

    .ent        EZBL_MapSet
    .type       EZBL_MapSet, @function
EZBL_MapSet:                    # 0x9D000798
    .set        micromips
    .insn
    .word       0xED88CC04
    .size       EZBL_MapSet, . - EZBL_MapSet   # 4
    .end        EZBL_MapSet

    .ent        EZBL_MapInvEx
    .type       EZBL_MapInvEx, @function
EZBL_MapInvEx:                  # 0x9D00079C
    .set        micromips
    .insn
    .word       0xED8CCC03
    .size       EZBL_MapInvEx, . - EZBL_MapInvEx   # 4
    .end        EZBL_MapInvEx

    .ent        EZBL_MapInv
    .type       EZBL_MapInv, @function
EZBL_MapInv:                    # 0x9D0007A0
    .set        micromips
    .insn
    .word       0xEF00ED8C
    .word       0x0D608EA2
    .word       0xFD050DE5
    .word       0x0DA00000
    .word       0x3140CC18
    .word       0x4DA20001
    .word       0x391801AF
    .word       0x246C0047
    .word       0xAC4C00E0
    .word       0x6AF007EE
    .word       0x10100142
    .word       0x8E8444AA
    .word       0x72500184
    .word       0x5950018B
    .word       0x07BE8D8A
    .word       0x105801C0
    .word       0xB50DE970
    .word       0x014DFFE8
    .word       0x459F6010
    .word       0xEE840C4B
    .word       0x285801C0
    .word       0xCFF507DE
    .short      0xE971
    .size       EZBL_MapInv, . - EZBL_MapInv   # 90
    .end        EZBL_MapInv

    .ent        EZBL_FIFORead
    .type       EZBL_FIFORead, @function
EZBL_FIFORead:                  # 0x9D0007FA
    .set        micromips
    .insn
    .short      0xD680
    .word       0x0CE00B84
    .word       0x0404F680
    .word       0x00000000
    .word       0x00FC034C
    .word       0x04EC035A
    .word       0x0007941A
    .word       0x41BA0C00
    .word       0x335A9D00
    .word       0x459A2035
    .word       0x41BD0C00
    .word       0x33BD8000
    .word       0x41BC7FF8
    .word       0x339C8001
    .word       0x012C8310
    .word       0x000910FC
    .word       0x01495910
    .word       0x012A1EAC
    .word       0x012C498C
    .word       0x000012FC
    .word       0x039C1800
    .word       0x016CF17C
    .word       0x000012FC
    .word       0x41A81800
    .word       0x31089D00
    .word       0x45C820B5
    .word       0x00000000
    .word       0x800041A8
    .word       0x03283108
    .word       0x800041A9
    .word       0x03483129
    .word       0x0C00CC0B
    .word       0x0000F808
    .word       0x0004F808
    .word       0x0008F808
    .word       0x000CF808
    .word       0x00103108
    .word       0x0B900128
    .word       0xFFF2B401
    .word       0x41A80C00
    .word       0x31089D00
    .word       0x45C81B71
    .word       0x00000000
    .word       0x000041A9
    .word       0x00003129
    .word       0x00019409
    .word       0x00090C00
    .word       0x314002FC
    .word       0x014BFFFF
    .word       0x41A802FC
    .word       0x014C0040
    .word       0x014800FC
    .word       0x014C5290
    .word       0x41A902FC
    .word       0x31299D00
    .word       0x00000000
    .word       0x012F1800
    .word       0x41A90AFC
    .word       0x31290000
    .word       0x41A80001
    .word       0x3108BF81
    .word       0xFD48F000
    .word       0x31400000
    .word       0x01490000
    .word       0x514AB40C
    .word       0xF9481000
    .word       0x31400000
    .word       0x01490000
    .word       0x014C494C
    .word       0x41A90AFC
    .word       0x012D0080
    .word       0x011002FC
    .word       0x012800FC
    .word       0x012905AC
    .word       0x010C8800
    .word       0x41A100FC
    .word       0x00280058
    .word       0x01094250
    .word       0x010C4290
    .word       0x000002FC
    .word       0x41A81800
    .word       0x31089D00
    .word       0x45C820B9
    .word       0x00000000
    .word       0x00FC010C
    .word       0xFFBF41A1
    .word       0xFFFF5021
    .word       0x42500028
    .word       0x02FC010C
    .word       0x0000D084
    .word       0x0000D0A5
    .word       0x9D0041A8
    .word       0x03793108
    .word       0x0C004588
    .size       EZBL_FIFORead, . - EZBL_FIFORead   # 374
    .end        EZBL_FIFORead

    .ent        EZBL_Install2Flash
    .type       EZBL_Install2Flash, @function
EZBL_Install2Flash:             # 0x9D000970
    .set        micromips
    .insn
    .word       0x231D4FA5
    .word       0x0E04D094
    .word       0x8020FC5C
    .word       0x0E20AD04
    .word       0x039A9400
    .word       0x41B2E840
    .word       0x32529D00
    .word       0x02520971
    .word       0x41B4E02C
    .word       0x3294BF81
    .word       0x41B3F0C4
    .word       0x3273BF81
    .word       0x0274F140
    .word       0xFCBCAB90
    .word       0xFEC58020
    .word       0x69000000
    .word       0x0009B042
    .word       0x03099402
    .word       0x9D0041A2
    .word       0x30426980
    .word       0x006209C8
    .word       0x45A21118
    .word       0x9D0009ED
    .word       0x9D000A59
    .word       0x9D000C5D
    .word       0x9D000CC9
    .word       0x9D000D4F
    .word       0x9D000E2B
    .word       0x9D000E91
    .word       0x9D000F19
    .word       0x9D000F95
    .word       0x0030B2D6
    .word       0x0344B416
    .word       0x76806E0D
    .word       0xEF301056
    .word       0xEE426D0D
    .word       0x09A0EEAC
    .word       0x001AB483
    .word       0x0B220C00
    .word       0x003270C6
    .word       0x706309A1
    .word       0x44DE004C
    .word       0x70C60B23
    .word       0x44DE0042
    .word       0x40A32DBD
    .word       0xFCBC000B
    .word       0x6B508024
    .word       0x03FD7680
    .word       0xED010C80
    .word       0xCC07E900
    .word       0x000132E0
    .word       0xB4B64EC2
    .word       0x6D20FFE0
    .word       0x0C800EE0
    .word       0x8020FCBC
    .word       0x03FD7680
    .word       0x94000CD6
    .word       0x0C00031D
    .word       0x0030B2D6
    .word       0x0327B416
    .word       0x76806E0D
    .word       0xEF3003FD
    .word       0x6E8D0C80
    .word       0x0F627680
    .word       0xE907EF30
    .word       0x30424847
    .word       0xE906FFD8
    .word       0x3850ED01
    .word       0x41A4002C
    .word       0x30849D00
    .word       0x6E912070
    .word       0x100B7680
    .word       0x8D0AEF10
    .word       0x304048AC
    .word       0x3850FFEA
    .word       0xED08002C
    .word       0x9400E900
    .word       0x0EE002F5
    .word       0xEA82488D
    .word       0x3040EA03
    .word       0x8D1E0000
    .word       0x41A26D0D
    .word       0x30429D00
    .word       0x29A82800
    .word       0x30402DBF
    .word       0xB44312CD
    .word       0x6D0D0013
    .word       0x9D0041A2
    .word       0x2804FC62
    .word       0x2800FC42
    .word       0x33900064
    .word       0x000A40A6
    .word       0x0005B483
    .word       0x00450C00
    .word       0x40A21390
    .word       0x6D0D0003
    .word       0x6E93CC0B
    .word       0xFFE93040
    .word       0x002C3850
    .word       0xE900ED07
    .word       0x02C69400
    .word       0x000132E0
    .word       0x486E6A29
    .word       0x6D2244DC
    .word       0xFFFAB4A2
    .word       0x8DA1C86E
    .word       0x9D0041A2
    .word       0xFFEB3040
    .word       0x002C3850
    .word       0xE900ED07
    .word       0x9D0041A2
    .word       0x2080FC82
    .word       0x20803042
    .word       0xC89C69A1
    .word       0x2924C87D
    .word       0x0078385D
    .word       0x00187680
    .word       0xFC9C6E39
    .word       0x6EB98024
    .word       0x0D367680
    .word       0x94000CC2
    .word       0x32E0029D
    .word       0x30420001
    .word       0x8D161E29
    .word       0x8020FC9C
    .word       0xFCBC6B06
    .word       0x30C68024
    .word       0x76800040
    .word       0x6F840F14
    .word       0x000A40C2
    .word       0xFFE53040
    .word       0x002C3850
    .word       0xE900ED07
    .word       0x02849400
    .word       0x000132E0
    .word       0x08FC022F
    .word       0x9D0041A2
    .word       0x00003042
    .word       0x40F104A3
    .word       0x00030020
    .word       0x0000477C
    .word       0x004F1800
    .word       0x94150AFC
    .word       0x0C540008
    .word       0xEA20EE7F
    .word       0x02626D28
    .word       0x40A31B90
    .word       0x7680FFFA
    .word       0x0C800E94
    .word       0x577C0002
    .word       0x01DE7680
    .word       0xF6800C00
    .word       0xFC9C0B22
    .word       0xF6808020
    .word       0xFC9C0B22
    .word       0x41A28024
    .word       0xF802BF80
    .word       0x41A32940
    .word       0xFCA39D00
    .word       0x48872070
    .word       0x41A54465
    .word       0x30A5AA99
    .word       0x44656655
    .word       0x2940F882
    .word       0x20703063
    .word       0x48886B31
    .word       0x41A44474
    .word       0x50845566
    .word       0x447499AA
    .word       0x2940F8C2
    .word       0x800041A7
    .word       0x3A9000F2
    .word       0xBF8041A6
    .word       0x2990F8E6
    .word       0x2940F802
    .word       0x48C96BB2
    .word       0x446E4477
    .word       0x2940F8A2
    .word       0x486A6AB3
    .word       0x4463445D
    .word       0x2940F882
    .word       0x84005060
    .word       0xBF8041A2
    .word       0x29A0F862
    .word       0xE809E808
    .word       0xE901ED08
    .word       0xE900ED02
    .word       0x8024FC9C
    .word       0xAD086940
    .word       0xFF135040
    .word       0x0088F85D
    .word       0x76806EC5
    .word       0xEF020D36
    .word       0x30608C87
    .word       0x41A25743
    .word       0x3042BF80
    .word       0xA9A33990
    .word       0x802CFC7C
    .word       0x69086A01
    .word       0x50800528
    .word       0x0544FC19
    .word       0xF85C0534
    .word       0xF680802C
    .word       0x30900C24
    .word       0xB4020024
    .word       0x0EE001F5
    .word       0xFF115040
    .word       0x0084F85D
    .word       0x8024FC9C
    .word       0x76806EC3
    .word       0xEF020D36
    .word       0x8020FC5C
    .word       0x0000FEC2
    .word       0x00283810
    .word       0xE900ED04
    .word       0xB0426906
    .word       0x8D080025
    .word       0x3850ED24
    .word       0xED06002A
    .word       0xCC38E901
    .word       0x000132E0
    .word       0xAD086908
    .word       0x000132E0
    .word       0x3850ED08
    .word       0xED03002A
    .word       0xE901CC2D
    .word       0x802CFC7C
    .word       0x03DF3063
    .word       0x802CF87C
    .word       0x0011B076
    .word       0xD0768D86
    .word       0xED90FFFF
    .word       0x3870CC0A
    .word       0x3870002A
    .word       0xB063002A
    .word       0xAD830031
    .word       0x3870EDB0
    .word       0x3470002A
    .word       0x0043002A
    .word       0x40A21390
    .word       0x34500005
    .word       0xCC060020
    .word       0x002A3850
    .word       0x100C0060
    .word       0x002A3870
    .word       0xE901ED05
    .word       0x32E0CC03
    .word       0x0EE00001
    .word       0x00203040
    .word       0x0C628D35
    .word       0x8024FC9C
    .word       0x6B436AC0
    .word       0xB0A506DD
    .word       0xAEAC0006
    .word       0x8020FCBC
    .word       0x00456AD3
    .word       0x00451390
    .word       0x34D01818
    .word       0x056B0028
    .word       0x1B900062
    .word       0x2EAD8D87
    .word       0x002A3470
    .word       0x1B900066
    .word       0x001840E3
    .word       0x70A56DAE
    .word       0x00A30013
    .word       0x00A21058
    .word       0x30623A2C
    .word       0x70A5FF00
    .word       0x00A30013
    .word       0x072C1058
    .word       0x002838D0
    .word       0x0080F85D
    .word       0x76806EC1
    .word       0xEF020D36
    .word       0x000132E0
    .word       0x002A34D0
    .word       0xB39000D6
    .word       0x0105B416
    .word       0x34506E0D
    .word       0x05650028
    .word       0x00283850
    .word       0x0018FED0
    .word       0x03FDF680
    .word       0x8020FCBC
    .word       0x11D00056
    .word       0x6A07E906
    .word       0xF6806E8D
    .word       0x34D00F62
    .word       0xE907002A
    .word       0xED836901
    .word       0x0140B462
    .word       0x3090E900
    .word       0x6E8D0020
    .word       0x0E72F680
    .word       0x002A34D0
    .word       0x00231450
    .word       0x01379402
    .word       0xFFEB3040
    .word       0x002C3850
    .word       0xE900ED07
    .word       0x32E0CD35
    .word       0x8C870001
    .word       0x57433060
    .word       0xBF8041A2
    .word       0x39903042
    .word       0x6A09A9A3
    .word       0x002A34D0
    .word       0xC805C804
    .word       0x76806E8D
    .word       0x0CE0104C
    .word       0x6A090EC2
    .word       0x34D06E8D
    .word       0x7680002A
    .word       0x6FA50CB1
    .word       0x0024FAD0
    .word       0x002A3470
    .word       0x05B96A08
    .word       0xED83E988
    .word       0x00074042
    .word       0x3060E980
    .word       0x3870FFE8
    .word       0xED87002C
    .word       0x4082E980
    .word       0x30400105
    .word       0x3850FFE7
    .word       0xCD02002C
    .word       0x000132E0
    .word       0x802CFC5C
    .word       0x03DF3042
    .word       0x802CF85C
    .word       0x41A26987
    .word       0x50422144
    .word       0xB443DF1C
    .word       0x30400033
    .word       0x3040FFE6
    .word       0x385D12CD
    .word       0x69020068
    .word       0xC8566983
    .word       0x484DC877
    .word       0x484EC858
    .word       0x5040C859
    .word       0xC844DEAD
    .word       0x41A4C805
    .word       0x30849D00
    .word       0x6EAD2800
    .word       0x7680EF18
    .word       0x0CE0104C
    .word       0xBF8041A3
    .word       0x2930FC43
    .word       0xAD7C2D2E
    .word       0xBF8041A2
    .word       0x40003060
    .word       0x29303042
    .word       0x41A3E9A1
    .word       0x30635555
    .word       0x41A25555
    .word       0xF862BF80
    .word       0xCC062950
    .word       0x8020F81C
    .word       0x002C3850
    .word       0x8020F81C
    .word       0x802CF81C
    .word       0xBF8041A2
    .word       0x2940F802
    .word       0xAA9941A4
    .word       0x66553084
    .word       0x2940F882
    .word       0x556641A3
    .word       0x99AA5063
    .word       0x2940F862
    .word       0x870050C0
    .word       0xBF8041A5
    .word       0x29A0F8C5
    .word       0x2940F802
    .word       0x2940F882
    .word       0x2940F862
    .word       0x800041A3
    .word       0x1A900072
    .word       0xBF8041A2
    .word       0x2990F862
    .word       0xE900ED08
    .word       0x002C3C50
    .word       0x80000042
    .word       0xFC9CC85F
    .word       0x6EBF8024
    .word       0x0D367680
    .word       0xFC9CEF04
    .word       0x41A28024
    .word       0xF6808000
    .word       0xFCA20E24
    .word       0xCC800314
    .word       0x000132E0
    .word       0x008B40F6
    .word       0x0018FEF0
    .word       0x139002F6
    .word       0x0C80AD08
    .word       0x03FD7680
    .word       0xF81C0CD7
    .word       0x0ED78020
    .word       0xFCBC0C80
    .word       0x76808020
    .word       0x0CD603FD
    .word       0x02C26906
    .word       0xFAD0B1D0
    .word       0xCC640018
    .word       0x41A20EE0
    .word       0x30429D00
    .word       0x45E21D69
    .word       0x76800C00
    .word       0x0C000FFB
    .word       0x00059417
    .word       0x0EE00EC2
    .word       0xFAD0CC31
    .word       0x69050014
    .word       0x11D00056
    .word       0x00436984
    .word       0x8D271390
    .word       0xFFEC3040
    .word       0x002C3850
    .word       0x4C5C6900
    .word       0x0004B042
    .word       0x41A28D18
    .word       0xC85CFFEC
    .word       0x8024FC9C
    .word       0x76806EB9
    .word       0xEF040D36
    .word       0x8024FC9C
    .word       0x800041A2
    .word       0x0E24F680
    .word       0x0314FCA2
    .word       0xFCBC0C80
    .word       0xF6808020
    .word       0x50C003FD
    .word       0xFAD0FFFF
    .word       0xE8000014
    .word       0xF81CCC2C
    .word       0x0EE08020
    .word       0x8020FC5C
    .word       0x02F18D26
    .word       0xB4021290
    .word       0xFCBCFCAA
    .word       0xCC248020
    .word       0x76800C00
    .word       0x6A840E24
    .word       0x9D0041A2
    .word       0x1D693042
    .word       0x0C0045E2
    .word       0xFC5CE800
    .word       0xCC208020
    .word       0x0001B042
    .word       0x0C40CC1D
    .word       0x32E0CC07
    .word       0xCC040001
    .word       0x000132E0
    .word       0x000132E0
    .word       0x0FFB7680
    .word       0xCFA60C00
    .word       0x8CEA0EC2
    .word       0x8024FC9C
    .word       0x0C00CFDE
    .word       0xFC9C8CE6
    .word       0xCFD98024
    .word       0x76800C00
    .word       0x0C000FFB
    .word       0x0EC2CF9A
    .word       0x5094231D
    .word       0x4C5D459F
    .size       EZBL_Install2Flash, . - EZBL_Install2Flash   # 1872
    .end        EZBL_Install2Flash

    .ent        EZBL_BootloaderTask
    .type       EZBL_BootloaderTask, @function
EZBL_BootloaderTask:            # 0x9D0010C0
    .set        micromips
    .insn
    .word       0x45444FF5
    .word       0x9D0041A2
    .word       0x2068FE02
    .word       0x001140D0
    .word       0x8020FC5C
    .word       0x800041A2
    .word       0x0200FC82
    .word       0xD0426949
    .word       0x8D070060
    .word       0x8020FC5C
    .word       0x098B7680
    .word       0xFC5C0CB0
    .word       0x8D088020
    .word       0x800041A4
    .word       0x04B8F680
    .word       0x02083084
    .word       0x0C40CC7F
    .word       0x08FC006F
    .word       0x9D0041A2
    .word       0x00003042
    .word       0x0076B443
    .word       0x41A20C40
    .word       0xFC428000
    .word       0x69290200
    .word       0x000C40E2
    .word       0x0FFB7680
    .word       0x41A30C00
    .word       0xF8438000
    .word       0x41A2021C
    .word       0xFC428000
    .word       0xE8290200
    .word       0x0FFB7680
    .word       0x41A30C00
    .word       0x30638000
    .word       0x6A350208
    .word       0x69B40545
    .word       0x23900043
    .word       0x00549404
    .word       0x40D00C40
    .word       0x41A2000B
    .word       0x41A29D00
    .word       0xFC828000
    .word       0x76800200
    .word       0x0CB0098B
    .word       0x9D0041A2
    .word       0x28003042
    .word       0x2D2F2928
    .word       0x12CD3060
    .word       0x001E9462
    .word       0xB2CD5060
    .word       0x003AB462
    .word       0x41A20C40
    .word       0x30429D00
    .word       0x69A03800
    .word       0xB443ED7F
    .word       0x0C400011
    .word       0x0C00CC2F
    .word       0x002CB462
    .word       0x41A20C40
    .word       0x30429D00
    .word       0x69A03800
    .word       0xB443ED7F
    .word       0x0C000013
    .word       0x0C40CC21
    .word       0x00B4F680
    .word       0x00FF3080
    .word       0x9D0041A2
    .word       0x28003042
    .word       0x2D2F2928
    .word       0x12CD3060
    .word       0xFFE4B462
    .word       0xB2CD5060
    .word       0x477C0002
    .word       0x18000000
    .word       0x9D0041A2
    .word       0x30003042
    .word       0x0AFC004F
    .word       0x9D0041A2
    .word       0x38013042
    .word       0x0C0045E2
    .word       0x459F4504
    .word       0x0C004C0D
    .size       EZBL_BootloaderTask, . - EZBL_BootloaderTask   # 328
    .end        EZBL_BootloaderTask

    .ent        EZBL_ErasePage
    .type       EZBL_ErasePage, @function
EZBL_ErasePage:                 # 0x9D001208
    .set        micromips
    .insn
    .word       0xF80833BD
    .word       0xD7D0233D
    .word       0x0E844FD5
    .word       0x1FFF41B2
    .word       0xF8005252
    .word       0x92500244
    .word       0xA00041B6
    .word       0xB29002D2
    .word       0x802CFC5C
    .word       0x12343042
    .word       0x802CF85C
    .word       0x305D6C8D
    .word       0xF85D0818
    .word       0x0E110818
    .word       0x08003260
    .word       0x41BE0EA0
    .word       0x33DE9D00
    .word       0x41B703E8
    .word       0x32F70000
    .word       0x02360020
    .word       0x41A839D0
    .word       0x31209D00
    .word       0x0511FFFF
    .word       0x115002C2
    .word       0xE9006920
    .word       0x0CB70C9E
    .word       0x3048070E
    .word       0xF8FD1EF7
    .word       0xF91D081C
    .word       0x45C20820
    .word       0x0824F93D
    .word       0x081CFCFD
    .word       0x0820FD1D
    .word       0xFD3DAD07
    .word       0x4E780824
    .word       0x0000F930
    .word       0x123432A0
    .word       0xFC5D6C02
    .word       0xB4500818
    .word       0x0511FFDF
    .word       0x12343040
    .word       0x002AB455
    .word       0xFC5C0C00
    .word       0x3042802C
    .word       0xF85CEDCC
    .word       0x869A802C
    .word       0x0C6B7680
    .word       0x0E020C00
    .word       0x802CFCDC
    .word       0x0C92C804
    .word       0x41A2EE84
    .word       0x3042BFC0
    .word       0x45E20031
    .word       0x02700CE0
    .word       0x94139A90
    .word       0x30C0000A
    .word       0x50400800
    .word       0xC844DEAD
    .word       0x869AC805
    .word       0x104C7680
    .word       0xF81C0CE0
    .word       0xCC05802C
    .word       0x08003054
    .word       0x802CF81C
    .word       0x4C2DED7F
    .word       0x57D0233D
    .word       0x33BD459F
    .short      0x07F8
    .size       EZBL_ErasePage, . - EZBL_ErasePage   # 270
    .end        EZBL_ErasePage

    .ent        EZBL_FIFOSetBaud
    .type       EZBL_FIFOSetBaud, @function
EZBL_FIFOSetBaud:               # 0x9D001316
    .set        micromips
    .insn
    .short      0x4FF1
    .word       0x94044555
    .word       0x0E240067
    .word       0x25A16948
    .word       0x0062B403
    .word       0x0038B062
    .word       0x000840A3
    .word       0x003BB042
    .word       0x41B0AD0D
    .word       0xCC0EBF80
    .word       0x19F03210
    .word       0x0028B042
    .word       0x41B08D05
    .word       0xCC06BF80
    .word       0x18003210
    .word       0xBF8041B0
    .word       0x19003210
    .word       0x800041A2
    .word       0x0FC2F680
    .word       0x0310FC82
    .word       0x0040FCB0
    .word       0x00224082
    .word       0xF8500C00
    .word       0x69000040
    .word       0x40E22D2A
    .word       0x69800024
    .word       0x294C0060
    .word       0x6900E980
    .word       0x40E22D2E
    .word       0x6980001C
    .word       0x7BCC0060
    .word       0x6980E980
    .word       0x294C0060
    .word       0x6980E980
    .word       0x0064EE01
    .word       0xE9807BCC
    .word       0x00642988
    .word       0xA988528C
    .word       0x0C00CC0A
    .word       0x11D00040
    .word       0x0040F850
    .word       0xED016980
    .word       0x294C0062
    .word       0x3471E980
    .word       0xED010024
    .word       0x7BCC0062
    .word       0x00243871
    .word       0x00243471
    .word       0x294C0060
    .word       0x00243871
    .word       0x00243471
    .word       0x318C0060
    .word       0x00243871
    .word       0x0C45CC02
    .word       0x4515ED7F
    .word       0x4C11459F
    .size       EZBL_FIFOSetBaud, . - EZBL_FIFOSetBaud   # 222
    .end        EZBL_FIFOSetBaud

    .ent        UART2_RXTXInterrupt
    .type       UART2_RXTXInterrupt, @function
UART2_RXTXInterrupt:            # 0x9D0013F4
    .set        micromips
    .insn
    .word       0xE17C03BD
    .word       0x00FC034E
    .word       0x00FC036C
    .word       0xCB5D4FC5
    .word       0x10FC034C
    .word       0xCB5BCB7C
    .word       0x784C0360
    .word       0x0400537B
    .word       0x02FC036C
    .word       0xCB36CBF7
    .word       0xCA14CB15
    .word       0xC9D2C9F3
    .word       0xC990C9B1
    .word       0xC94EC96F
    .word       0xC90CC92D
    .word       0xC8CAC8EB
    .word       0xC888C8A9
    .word       0xC846C867
    .word       0x4642C825
    .word       0x4603C859
    .word       0x41A2C878
    .word       0xFE02BF81
    .word       0x2C0DF020
    .word       0x800041A2
    .word       0x02D8FC42
    .word       0x0007B450
    .word       0x800041A2
    .word       0x02307680
    .word       0x41A20C00
    .word       0xFC428000
    .word       0xB4500300
    .word       0x0C000004
    .word       0x0B287680
    .word       0x48590C00
    .word       0x3D7C0002
    .word       0x00034878
    .word       0x4BF72D7C
    .word       0x4B154B36
    .word       0x49F34A14
    .word       0x49B149D2
    .word       0x496F4990
    .word       0x492D494E
    .word       0x48EB490C
    .word       0x48A948CA
    .word       0x48674888
    .word       0x48254846
    .word       0x477C0000
    .word       0x18000000
    .word       0x4B7C4B5D
    .word       0x02FC034E
    .word       0x4C3D4B5B
    .word       0x12FC034C
    .word       0xF17C03BD
    .word       0x02FC036C
    .word       0xF37C0000
    .size       UART2_RXTXInterrupt, . - UART2_RXTXInterrupt   # 220
    .end        UART2_RXTXInterrupt

    .ent        UART2_TX_FIFO_OnWrite
    .type       UART2_TX_FIFO_OnWrite, @function
UART2_TX_FIFO_OnWrite:          # 0x9D0014D0
    .set        micromips
    .insn
    .word       0x231D4FE5
    .word       0x0E04D014
    .word       0x0E460E65
    .word       0x41A20E27
    .word       0x3042BF80
    .word       0x69241900
    .word       0x0200D042
    .word       0x000640A2
    .word       0x0B137680
    .word       0x76800C87
    .word       0x0C910B22
    .word       0x003C9650
    .word       0x800041A2
    .word       0x0FFBF680
    .word       0xBF8041B4
    .word       0xFEF10EC2
    .word       0xE8150014
    .word       0x800041B5
    .word       0x02130C91
    .word       0xF6802950
    .word       0x02120D36
    .word       0x042031D0
    .word       0x19003054
    .word       0xD06369A4
    .word       0x40A30200
    .word       0x7680000E
    .word       0x0C910B22
    .word       0x0B137680
    .word       0x76800C91
    .word       0x0C910B0E
    .word       0x000340E2
    .word       0x0B287680
    .word       0x96500C00
    .word       0x0C00000D
    .word       0x0FFB7680
    .word       0x02C20C00
    .word       0xFC7511D0
    .word       0x25B50318
    .word       0x13900062
    .word       0x0C91AD56
    .word       0x0014FAF1
    .word       0x800041A2
    .word       0x02E03042
    .word       0x00243462
    .word       0x0064EE01
    .word       0x3862108C
    .word       0x0C500024
    .word       0x5014231D
    .word       0x4C1D459F
    .size       UART2_TX_FIFO_OnWrite, . - UART2_TX_FIFO_OnWrite   # 196
    .end        UART2_TX_FIFO_OnWrite

    .ent        EZBL_RdIntFlag
    .type       EZBL_RdIntFlag, @function
EZBL_RdIntFlag:                 # 0x9D001594
    .set        micromips
    .insn
    .word       0xED80CC07
    .size       EZBL_RdIntFlag, . - EZBL_RdIntFlag   # 4
    .end        EZBL_RdIntFlag

    .ent        EZBL_InvIntFlag
    .type       EZBL_InvIntFlag, @function
EZBL_InvIntFlag:                # 0x9D001598
    .set        micromips
    .insn
    .word       0xED8CCC05
    .size       EZBL_InvIntFlag, . - EZBL_InvIntFlag   # 4
    .end        EZBL_InvIntFlag

    .ent        EZBL_ClrIntFlag
    .type       EZBL_ClrIntFlag, @function
EZBL_ClrIntFlag:                # 0x9D00159C
    .set        micromips
    .insn
    .short      0xEE80
    .size       EZBL_ClrIntFlag, . - EZBL_ClrIntFlag   # 2
    .end        EZBL_ClrIntFlag

    .ent        EZBL_WrIntFlag
    .type       EZBL_WrIntFlag, @function
EZBL_WrIntFlag:                 # 0x9D00159E
    .set        micromips
    .insn
    .short      0x8E82
    .short      0xED84
    .size       EZBL_WrIntFlag, . - EZBL_WrIntFlag   # 4
    .end        EZBL_WrIntFlag

    .ent        EZBL_SetIntFlag
    .type       EZBL_SetIntFlag, @function
EZBL_SetIntFlag:                # 0x9D0015A2
    .set        micromips
    .insn
    .short      0xED88
    .word       0xBF8141A2
    .word       0xF0403042
    .word       0x116C00C4
    .word       0x07642768
    .word       0x8D876960
    .word       0x10500044
    .word       0xEF81073C
    .word       0x381000E4
    .word       0x459FEBE0
    .short      0x2D21
    .size       EZBL_SetIntFlag, . - EZBL_SetIntFlag   # 40
    .end        EZBL_SetIntFlag

    .ent        EZBL_RdIntEn
    .type       EZBL_RdIntEn, @function
EZBL_RdIntEn:                   # 0x9D0015CA
    .set        micromips
    .insn
    .short      0xCC07
    .short      0xED80
    .size       EZBL_RdIntEn, . - EZBL_RdIntEn   # 4
    .end        EZBL_RdIntEn

    .ent        EZBL_InvIntEn
    .type       EZBL_InvIntEn, @function
EZBL_InvIntEn:                  # 0x9D0015CE
    .set        micromips
    .insn
    .short      0xCC05
    .short      0xED8C
    .size       EZBL_InvIntEn, . - EZBL_InvIntEn   # 4
    .end        EZBL_InvIntEn

    .ent        EZBL_ClrIntEn
    .type       EZBL_ClrIntEn, @function
EZBL_ClrIntEn:                  # 0x9D0015D2
    .set        micromips
    .insn
    .short      0xEE80
    .size       EZBL_ClrIntEn, . - EZBL_ClrIntEn   # 2
    .end        EZBL_ClrIntEn

    .ent        EZBL_WrIntEn
    .type       EZBL_WrIntEn, @function
EZBL_WrIntEn:                   # 0x9D0015D4
    .set        micromips
    .insn
    .word       0xED848E82
    .size       EZBL_WrIntEn, . - EZBL_WrIntEn   # 4
    .end        EZBL_WrIntEn

    .ent        EZBL_SetIntEn
    .type       EZBL_SetIntEn, @function
EZBL_SetIntEn:                  # 0x9D0015D8
    .set        micromips
    .insn
    .word       0x41A2ED88
    .word       0xCFE6BF81
    .word       0xF0C03042
    .size       EZBL_SetIntEn, . - EZBL_SetIntEn   # 12
    .end        EZBL_SetIntEn

    .ent        EZBL_RdIntPri
    .type       EZBL_RdIntPri, @function
EZBL_RdIntPri:                  # 0x9D0015E4
    .set        micromips
    .insn
    .word       0xED81CC02
    .size       EZBL_RdIntPri, . - EZBL_RdIntPri   # 4
    .end        EZBL_RdIntPri

    .ent        EZBL_WrIntPri
    .type       EZBL_WrIntPri, @function
EZBL_WrIntPri:                  # 0x9D0015E8
    .set        micromips
    .insn
    .word       0x41A6ED80
    .word       0x2545BF81
    .word       0x2E432528
    .word       0x074C0644
    .word       0x14668D84
    .word       0x459FF140
    .word       0x00652535
    .word       0xCFFB208C
    .word       0xF1401866
    .size       EZBL_WrIntPri, . - EZBL_WrIntPri   # 36
    .end        EZBL_WrIntPri

    .ent        EZBL_FIFOGetIntPri
    .type       EZBL_FIFOGetIntPri, @function
EZBL_FIFOGetIntPri:             # 0x9D00160C
    .set        micromips
    .insn
    .word       0xED81CC02
    .size       EZBL_FIFOGetIntPri, . - EZBL_FIFOGetIntPri   # 4
    .end        EZBL_FIFOGetIntPri

    .ent        EZBL_FIFOSetIntPri
    .type       EZBL_FIFOSetIntPri, @function
EZBL_FIFOSetIntPri:             # 0x9D001610
    .set        micromips
    .insn
    .word       0x41A7ED80
    .word       0xCC0C9D00
    .word       0x15EB30E7
    .size       EZBL_FIFOSetIntPri, . - EZBL_FIFOSetIntPri   # 12
    .end        EZBL_FIFOSetIntPri

    .ent        EZBL_FIFOGetInt
    .type       EZBL_FIFOGetInt, @function
EZBL_FIFOGetInt:                # 0x9D00161C
    .set        micromips
    .insn
    .word       0xED80CC05
    .size       EZBL_FIFOGetInt, . - EZBL_FIFOGetInt   # 4
    .end        EZBL_FIFOGetInt

    .ent        EZBL_FIFOIntClear
    .type       EZBL_FIFOIntClear, @function
EZBL_FIFOIntClear:              # 0x9D001620
    .set        micromips
    .insn
    .short      0xEE80
    .size       EZBL_FIFOIntClear, . - EZBL_FIFOIntClear   # 2
    .end        EZBL_FIFOIntClear

    .ent        EZBL_FIFOIntFlagSet
    .type       EZBL_FIFOIntFlagSet, @function
EZBL_FIFOIntFlagSet:            # 0x9D001622
    .set        micromips
    .insn
    .short      0x8E82
    .short      0xED84
    .size       EZBL_FIFOIntFlagSet, . - EZBL_FIFOIntFlagSet   # 4
    .end        EZBL_FIFOIntFlagSet

    .ent        EZBL_FIFOIntRaise
    .type       EZBL_FIFOIntRaise, @function
EZBL_FIFOIntRaise:              # 0x9D001626
    .set        micromips
    .insn
    .short      0xED88
    .word       0x9D0041A7
    .word       0x15A530E7
    .word       0xED008E4A
    .word       0x14844587
    .short      0x0020
    .size       EZBL_FIFOIntRaise, . - EZBL_FIFOIntRaise   # 20
    .end        EZBL_FIFOIntRaise

    .ent        EZBL_FIFOGetIntEn
    .type       EZBL_FIFOGetIntEn, @function
EZBL_FIFOGetIntEn:              # 0x9D00163A
    .set        micromips
    .insn
    .short      0xCC05
    .short      0xED80
    .size       EZBL_FIFOGetIntEn, . - EZBL_FIFOGetIntEn   # 4
    .end        EZBL_FIFOGetIntEn

    .ent        EZBL_FIFOIntDisable
    .type       EZBL_FIFOIntDisable, @function
EZBL_FIFOIntDisable:            # 0x9D00163E
    .set        micromips
    .insn
    .short      0xEE80
    .size       EZBL_FIFOIntDisable, . - EZBL_FIFOIntDisable   # 2
    .end        EZBL_FIFOIntDisable

    .ent        EZBL_FIFOIntEnableSet
    .type       EZBL_FIFOIntEnableSet, @function
EZBL_FIFOIntEnableSet:          # 0x9D001640
    .set        micromips
    .insn
    .word       0xED848E82
    .size       EZBL_FIFOIntEnableSet, . - EZBL_FIFOIntEnableSet   # 4
    .end        EZBL_FIFOIntEnableSet

    .ent        EZBL_FIFOIntEnable
    .type       EZBL_FIFOIntEnable, @function
EZBL_FIFOIntEnable:             # 0x9D001644
    .set        micromips
    .insn
    .word       0x41A7ED88
    .word       0xCFF29D00
    .word       0x15DB30E7
    .size       EZBL_FIFOIntEnable, . - EZBL_FIFOIntEnable   # 12
    .end        EZBL_FIFOIntEnable

    .ent        UART2_TXInterruptFunc
    .type       UART2_TXInterruptFunc, @function
UART2_TXInterruptFunc:          # 0x9D001650
    .set        micromips
    .insn
    .word       0xCBE54FF5
    .word       0x800041A4
    .word       0x0B10F680
    .word       0x02E03084
    .word       0xBF8041A2
    .word       0x19003042
    .word       0xD0426924
    .word       0xB4020200
    .word       0x4BE50049
    .word       0x800041A2
    .word       0x02E0FC42
    .word       0x41A4AD11
    .word       0xCC088000
    .word       0xFC620C00
    .word       0xAD9202E0
    .word       0x02E03062
    .word       0x800041A4
    .word       0x0B1FF680
    .word       0x02E03084
    .word       0x4BE5CC33
    .word       0x800041A2
    .word       0xBF8041A6
    .word       0x00013100
    .word       0x02E03062
    .word       0x6E506AB2
    .word       0x0BD0EA32
    .word       0x190030A6
    .word       0x6AB4EBD8
    .word       0x05BA69B3
    .word       0x23900064
    .word       0x3062AE03
    .word       0xEAB202E0
    .word       0x477C0003
    .word       0x18000000
    .word       0x02E0FC62
    .word       0xF8626DBE
    .word       0x000302E0
    .word       0x3062577C
    .word       0x348302E0
    .word       0x00880024
    .word       0x3883000C
    .word       0x30660024
    .word       0x69B41900
    .word       0x0200D063
    .word       0x4BE58DC2
    .word       0x4C0D459F
    .word       0x22FD4FE9
    .word       0x9405D010
    .word       0x0E050045
    .word       0x0E660E84
    .word       0x69500EC7
    .word       0x8B9000C2
    .word       0x10580226
    .word       0xFE450E22
    .word       0xFEA50008
    .word       0x69530010
    .word       0xA9500055
    .word       0xA9D00255
    .word       0x139002B1
    .word       0x0C44AD0F
    .word       0x0CB28E07
    .word       0x10267680
    .word       0xCC050CD5
    .word       0xA9D002B1
    .word       0x02B10C40
    .word       0xCC03A9D0
    .word       0x0010FE50
    .word       0x40E20EB1
    .word       0x86D40004
    .word       0x10267680
    .word       0xB4160CD5
    .word       0x02B2000D
    .word       0xFA509150
    .word       0x00020008
    .word       0x0000477C
    .word       0x69001800
    .word       0xE9000515
    .word       0x577C0002
    .word       0x0018FF30
    .word       0x000840F9
    .word       0x854C86F2
    .word       0x501022FD
    .word       0x4C194599
    .word       0x0C40CC02
    .word       0x22FD0C51
    .word       0x459F5010
    .word       0xFFFF4C19
    .size       UART2_TXInterruptFunc, . - UART2_TXInterruptFunc   # 348
    .end        UART2_TXInterruptFunc

    .ent        UART2_TX_FIFO_Flush
    .type       UART2_TX_FIFO_Flush, @function
UART2_TX_FIFO_Flush:            # 0x9D0017AC
    .set        micromips
    .insn
    .word       0x45754FED
    .word       0x0E450E04
    .word       0xCC270E66
    .word       0xBF8041B1
    .word       0xD0426924
    .word       0x8D0A0100
    .word       0x19003051
    .word       0x0B227680
    .word       0x76800C90
    .word       0x0C900B13
    .word       0x19003051
    .word       0xD0426924
    .word       0x40E20100
    .word       0x69000006
    .word       0x000340E2
    .word       0x0B287680
    .word       0x76800C00
    .word       0x0C000FFB
    .word       0x0000FC72
    .word       0xFC930535
    .word       0x00440000
    .word       0x40A31B90
    .word       0x6900001C
    .word       0x3051AD59
    .word       0xCC0E1900
    .word       0xBF8041B1
    .word       0x0FFB7680
    .word       0xFC720C00
    .word       0x05350000
    .word       0x0000FC93
    .word       0x1B900044
    .word       0x0C50AD8C
    .word       0x19003051
    .word       0xD2106824
    .word       0x40F00100
    .word       0xCC02FFED
    .word       0x0E00EC01
    .word       0x45350C50
    .word       0x4C15459F
    .size       UART2_TX_FIFO_Flush, . - UART2_TX_FIFO_Flush   # 156
    .end        UART2_TX_FIFO_Flush

    .ent        EZBL_EraseAppSpace
    .type       EZBL_EraseAppSpace, @function
EZBL_EraseAppSpace:             # 0x9D001848
    .set        micromips
    .insn
    .word       0x45444FF5
    .word       0x9D0041A2
    .word       0x03D03042
    .word       0x0C606820
    .word       0x9D0041A7
    .word       0x03E830E7
    .word       0x00A36AC0
    .word       0x8F1F3390
    .word       0x6AA16ED0
    .word       0x07FFD0C5
    .word       0x000340E6
    .word       0x07FF50A5
    .word       0x32106ED0
    .word       0x00B00800
    .word       0xAF0E3390
    .word       0x6F240CC2
    .word       0x439000E6
    .word       0x000440A8
    .word       0x802CF81C
    .word       0x0C40CC1D
    .word       0x00B06822
    .word       0x05D72B90
    .word       0xCFDE6DB0
    .word       0xEAC00C46
    .word       0x0EF47680
    .word       0x40A20C90
    .word       0xFC7C000C
    .word       0x41A2802C
    .word       0x3042FFFF
    .word       0x052607BE
    .word       0x802CF85C
    .word       0x09047680
    .word       0xF81C0C90
    .word       0xED01802C
    .word       0x459F4504
    .short      0x4C0D
    .size       EZBL_EraseAppSpace, . - EZBL_EraseAppSpace   # 142
    .end        EZBL_EraseAppSpace

    .ent        EZBL_RestoreAppErasableInRAMPage
    .type       EZBL_RestoreAppErasableInRAMPage, @function
EZBL_RestoreAppErasableInRAMPage: # 0x9D0018D6
    .set        micromips
    .insn
    .short      0x4FE5
    .word       0xD010233D
    .word       0x41B10EC5
    .word       0x52311FFF
    .word       0x448CF800
    .word       0x9D0041A3
    .word       0x04383063
    .word       0x9D0041B5
    .word       0x046032B5
    .word       0x41B70E00
    .word       0x52F71FFF
    .word       0x33D1F800
    .word       0x02A30800
    .word       0x8D261390
    .word       0x00083243
    .word       0xFE636A30
    .word       0x02E40004
    .word       0xB6221250
    .word       0x32930016
    .word       0x00440003
    .word       0x0233E02C
    .word       0x05A619D0
    .word       0x0801B063
    .word       0x000240A3
    .word       0x99D0005E
    .word       0x07FFD084
    .word       0xF680846A
    .word       0x00961026
    .word       0x02702150
    .word       0x30408150
    .word       0x0054FFFC
    .word       0xCFD91A50
    .word       0x19500072
    .word       0x233D0C50
    .word       0x459F5010
    .short      0x4C1D
    .size       EZBL_RestoreAppErasableInRAMPage, . - EZBL_RestoreAppErasableInRAMPage   # 140
    .end        EZBL_RestoreAppErasableInRAMPage

    .ent        EZBL_VerifyROM
    .type       EZBL_VerifyROM, @function
EZBL_VerifyROM:                 # 0x9D001962
    .set        micromips
    .insn
    .short      0x4FED
    .word       0x0E254575
    .word       0x0E470E66
    .word       0x800041B0
    .word       0x869844C4
    .word       0x100B7680
    .word       0x8D260C00
    .word       0x99500270
    .word       0x9D0041A6
    .word       0x042030C6
    .word       0x41A7CC1C
    .word       0x30E79D00
    .word       0x0A3F0438
    .word       0x94A40A90
    .word       0x0C000012
    .word       0x94E20C46
    .word       0x0C000015
    .word       0x0000FD22
    .word       0x00696D24
    .word       0x94094B90
    .word       0xFD02FFF6
    .word       0x0068FFFC
    .word       0x40A84390
    .word       0x6C90FFF0
    .word       0xB6700E03
    .word       0x6D80FFE6
    .word       0x0C40CC0C
    .word       0x00099412
    .word       0xFA12ED7F
    .word       0xF8920000
    .word       0xFA320008
    .word       0xF8B20004
    .word       0x4535000C
    .word       0x4C15459F
    .size       EZBL_VerifyROM, . - EZBL_VerifyROM   # 134
    .end        EZBL_VerifyROM

    .ent        UART2_RX_FIFO_OnRead
    .type       UART2_RX_FIFO_OnRead, @function
UART2_RX_FIFO_OnRead:           # 0x9D0019E8
    .set        micromips
    .insn
    .word       0x22FD4FE9
    .word       0x0E04D010
    .word       0x002C94C4
    .word       0x0E650E46
    .word       0x0FFB7680
    .word       0x0EA20E27
    .word       0x0018FED1
    .word       0x41B4E816
    .word       0x02138000
    .word       0x0CB12150
    .word       0x03FDF680
    .word       0x31D00212
    .word       0x76800420
    .word       0x0C910B0E
    .word       0x000340E2
    .word       0x02307680
    .word       0x96120C00
    .word       0x0C00000D
    .word       0x0FFB7680
    .word       0x02A20C00
    .word       0xFC7411D0
    .word       0x00620318
    .word       0xADE51B90
    .word       0x21500213
    .word       0x0018FAD1
    .word       0x800041A2
    .word       0x02B83042
    .word       0x00243462
    .word       0x0064EE01
    .word       0x386218CC
    .word       0x0C500024
    .word       0x501022FD
    .word       0x4C19459F
    .size       UART2_RX_FIFO_OnRead, . - UART2_RX_FIFO_OnRead   # 132
    .end        UART2_RX_FIFO_OnRead

    .ent        EZBL_FIFOWrite
    .type       EZBL_FIFOWrite, @function
EZBL_FIFOWrite:                 # 0x9D001A6C
    .set        micromips
    .insn
    .word       0x22BD4FED
    .word       0x0E04D010
    .word       0x0E468E36
    .word       0x69430E85
    .word       0x049568C0
    .word       0x1B9000D1
    .word       0x88580066
    .word       0xFE706A41
    .word       0x00530010
    .word       0x00939950
    .word       0x027199D0
    .word       0x40A21390
    .word       0x7680000A
    .word       0x0CD31026
    .word       0x29500274
    .word       0x31D00271
    .word       0xCC026904
    .word       0x841EE901
    .word       0x10267680
    .word       0xE9016A01
    .word       0x477C0002
    .word       0x18000000
    .word       0x05226900
    .word       0x0002E900
    .word       0xFF30577C
    .word       0x40F90014
    .word       0x86F20008
    .word       0x22BD854A
    .word       0x45995010
    .word       0xCC024C15
    .word       0x0C510C46
    .word       0x501022BD
    .word       0x4C15459F
    .size       EZBL_FIFOWrite, . - EZBL_FIFOWrite   # 132
    .end        EZBL_FIFOWrite

    .ent        _general_exception_context
    .type       _general_exception_context, @function
_general_exception_context:     # 0x9D001AF0
    .set        micromips
    .insn
    .word       0xC8214FD5
    .word       0xC863C842
    .word       0xC8A5C884
    .word       0xC8E7C8C6
    .word       0xC929C908
    .word       0xC96BC94A
    .word       0xC9ADC98C
    .word       0xC9EFC9CE
    .word       0xCB31CB10
    .word       0x4648CBF2
    .word       0x4608C913
    .word       0x41BAC914
    .word       0x335A9D00
    .word       0x0C001E91
    .word       0x00FC008D
    .word       0x00FC00AC
    .word       0x000045DA
    .word       0x49140000
    .word       0x2D7C0008
    .word       0x00084913
    .word       0x48213D7C
    .word       0x48634842
    .word       0x48A54884
    .word       0x48E748C6
    .word       0x49294908
    .word       0x496B494A
    .word       0x49AD498C
    .word       0x49EF49CE
    .word       0x4B314B10
    .word       0x4C2D4BF2
    .word       0x18000000
    .word       0xF37C0000
    .word       0x41A80C7F
    .word       0x31089D00
    .word       0xFD281DA8
    .word       0x94090000
    .word       0x3108002D
    .word       0xFD480004
    .word       0x31080000
    .word       0xFD680004
    .word       0x940B0000
    .word       0x31080010
    .word       0x15880004
    .word       0x314A0000
    .word       0x3108FFFF
    .word       0x19890001
    .word       0xB40A0000
    .word       0x3129FFF6
    .word       0xCC090001
    .word       0x18090C00
    .word       0x314A0000
    .word       0xB40AFFFF
    .word       0x3129FFFA
    .word       0x31080001
    .word       0x31400003
    .word       0x010AFFFC
    .word       0xFD284250
    .word       0xB4090000
    .word       0x0C00FFD0
    .word       0x459F0FE3
    .word       0x0C000C00
    .size       _general_exception_context, . - _general_exception_context   # 244
    .end        _general_exception_context

    .ent        EZBL_ForwardIRQ
    .type       EZBL_ForwardIRQ, @function
EZBL_ForwardIRQ:                # 0x9D001BE4
    .set        micromips
    .insn
    .word       0x800041A6
    .word       0x032830C6
    .word       0x000130E0
    .word       0x41A227F2
    .word       0x30429D00
    .word       0x40E40018
    .word       0x41A40006
    .word       0x30849D00
    .word       0xCC033018
    .word       0x0C8227F4
    .word       0x41A327F4
    .word       0x30638000
    .word       0x6FF20320
    .word       0x94A26940
    .word       0x0C000008
    .word       0x00C36DB2
    .word       0xAD781390
    .word       0x459F0678
    .word       0x69300C40
    .word       0x00846A41
    .word       0x008480C0
    .word       0x2642C82C
    .word       0x9D0041A5
    .word       0x44E56ED0
    .word       0x45BFEA30
    .size       EZBL_ForwardIRQ, . - EZBL_ForwardIRQ   # 100
    .end        EZBL_ForwardIRQ

    .ent        EZBL_FIFOFlush
    .type       EZBL_FIFOFlush, @function
EZBL_FIFOFlush:                 # 0x9D001C48
    .set        micromips
    .insn
    .word       0x45464FF1
    .word       0x8E240E04
    .word       0x7680C8A9
    .word       0x0C000FFB
    .word       0x6907C844
    .word       0x0C90AD06
    .word       0x40A26900
    .word       0xCC140007
    .word       0x6E890C00
    .word       0x6F1345E2
    .word       0x0C00CC14
    .word       0x0FEAF680
    .word       0x0026349D
    .word       0x0FFB7680
    .word       0x48640C00
    .word       0x48890535
    .word       0x1B900044
    .word       0xFFE840E3
    .word       0xCC036900
    .word       0x0001B042
    .word       0x4506ED01
    .word       0x4C11459F
    .size       EZBL_FIFOFlush, . - EZBL_FIFOFlush   # 88
    .end        EZBL_FIFOFlush

    .ent        main
    .type       main, @function
main:                           # 0x9D001CA0
    .set        micromips
    .insn
    .word       0x45554FF1
    .word       0x0E947680
    .word       0xF6800C80
    .word       0x41B000C6
    .word       0xF8108000
    .word       0x32100208
    .word       0x41A20208
    .word       0xFC428000
    .word       0x76800318
    .word       0xE9040FFB
    .word       0x41B1E905
    .word       0x3231BF80
    .word       0x32003990
    .word       0x3A115743
    .word       0x76800006
    .word       0x0C000860
    .word       0x0C00CFFA
    .size       main, . - main   # 68
    .end        main

    .ent        EZBL_RAMCopy
    .type       EZBL_RAMCopy, @function
EZBL_RAMCopy:                   # 0x9D001CE4
    .set        micromips
    .insn
    .word       0x1A900085
    .word       0xAD912DB3
    .word       0x0C640C44
    .word       0x073F07E8
    .word       0xFFFC3100
    .word       0x22500106
    .word       0x0C808E0A
    .word       0x6ED26DB2
    .word       0xFFFCFC85
    .word       0xF883CFF4
    .word       0x0C64FFFC
    .word       0x94C40C80
    .word       0x07CA0008
    .word       0x00001507
    .word       0x190707C6
    .word       0xCFF70000
    .word       0x45BF6E40
    .size       EZBL_RAMCopy, . - EZBL_RAMCopy   # 68
    .end        EZBL_RAMCopy

    .ent        EZBL_ForwardAllIRQ
    .type       EZBL_ForwardAllIRQ, @function
EZBL_ForwardAllIRQ:             # 0x9D001D28
    .set        micromips
    .insn
    .word       0xCBE54FF5
    .word       0x41A20D24
    .word       0x30429D00
    .word       0x41A80018
    .word       0x31080000
    .word       0x01080008
    .word       0x31401040
    .word       0x014A0001
    .word       0x94081800
    .word       0x3162000A
    .word       0x0C890004
    .word       0x0DF27680
    .word       0x014B6AA0
    .word       0xCFF51150
    .word       0x4BE54D1E
    .word       0x4C0D459F
    .size       EZBL_ForwardAllIRQ, . - EZBL_ForwardAllIRQ   # 64
    .end        EZBL_ForwardAllIRQ

    .ent        __pic32_software_reset
    .type       __pic32_software_reset, @function
__pic32_software_reset:         # 0x9D001D68
    .set        micromips
    .insn
    .word       0x477C0000
    .word       0x18000000
    .word       0xAA9941A3
    .word       0xBF8041A2
    .word       0x66553063
    .word       0x3670F802
    .word       0x3670F862
    .word       0x556641A3
    .word       0x99AA5063
    .word       0x3670F862
    .word       0xBF8041A2
    .word       0xF862ED81
    .word       0x41A226F8
    .word       0xFC42BF80
    .word       0xD68026F0
    .word       0x0C000EB8
    .word       0x80000328
    .word       0x00000004
    .word       0x00000000
    .word       0x8000032C
    .word       0x00000001
    .word       0x00000000
    .word       0x80000330
    .word       0x00000004
    .word       0x00000000
    .word       0x80000334
    .word       0x00000004
    .word       0x00000000
    .word       0x00000000
    .word       0x22222222
    .word       0x22222222
    .word       0x22222222
    .size       __pic32_software_reset, . - __pic32_software_reset   # 128
    .end        __pic32_software_reset

    .ent        EZBL_IsPageErased
    .type       EZBL_IsPageErased, @function
EZBL_IsPageErased:              # 0x9D001DE8
    .set        micromips
    .insn
    .word       0x5FFF41A2
    .word       0xF8005042
    .word       0x41A344A2
    .word       0x44E3A000
    .word       0x08003044
    .word       0x00FC006D
    .word       0x007CD063
    .word       0xEF7FEE9C
    .word       0x94A36E42
    .word       0xFCE4000A
    .word       0xB4C7FFFC
    .word       0x0C000006
    .word       0xFFF7B444
    .word       0x459F6E42
    .word       0x459FED01
    .word       0xFFFF0C40
    .size       EZBL_IsPageErased, . - EZBL_IsPageErased   # 64
    .end        EZBL_IsPageErased

    .ent        EZBL_PreInstall
    .type       EZBL_PreInstall, @function
EZBL_PreInstall:                # 0x9D001E28
    .set        micromips
    .insn
    .word       0x08FC006F
    .word       0x9D0041A2
    .word       0x00003042
    .word       0x000B9443
    .word       0x4FF50C00
    .word       0xFC5CCBE5
    .word       0x40E28018
    .word       0x45E20006
    .word       0xCC050C00
    .word       0x459F4BE5
    .word       0xED01ED01
    .word       0x459F4BE5
    .word       0x0C004C0D
    .size       EZBL_PreInstall, . - EZBL_PreInstall   # 52
    .end        EZBL_PreInstall

    .ent        _bootstrap_exception_handler
    .type       _bootstrap_exception_handler, @function
_bootstrap_exception_handler:   # 0x9D001E5C
    .set        micromips
    .insn
    .word       0x000041A2
    .word       0x00003042
    .word       0x41A28D08
    .word       0x30420000
    .word       0x8D050000
    .word       0x9D0041A2
    .word       0x41A246C0
    .word       0x30429D00
    .word       0x40E21D69
    .word       0x4FF50005
    .word       0x45C2CBE5
    .word       0x00000000
    .word       0x0C00CFFF
    .size       _bootstrap_exception_handler, . - _bootstrap_exception_handler   # 52
    .end        _bootstrap_exception_handler

    .ent        _general_exception_handler
    .type       _general_exception_handler, @function
_general_exception_handler:     # 0x9D001E90
    .set        micromips
    .insn
    .word       0x000041A2
    .word       0x00003042
    .word       0x41A28D08
    .word       0x30420000
    .word       0x8D050000
    .word       0x9D0041A2
    .word       0x41A246C0
    .word       0x30429D00
    .word       0x40E21D69
    .word       0x4FF50005
    .word       0x45C2CBE5
    .word       0x00000000
    .word       0x0C00CFFF
    .size       _general_exception_handler, . - _general_exception_handler   # 52
    .end        _general_exception_handler

    .ent        EZBL_CRC32
    .type       EZBL_CRC32, @function
EZBL_CRC32:                     # 0x9D001EC4
    .set        micromips
    .insn
    .word       0x076A4414
    .word       0xEDB841A4
    .word       0x83205084
    .word       0x000F94C5
    .word       0x09DF6ED0
    .word       0xED884453
    .word       0x0001D102
    .word       0x00822523
    .word       0x6DBE3B10
    .word       0x0107ADF9
    .word       0xCFF01018
    .word       0x459F0C00
    .short      0x4412
    .size       EZBL_CRC32, . - EZBL_CRC32   # 50
    .end        EZBL_CRC32

    .ent        EZBL_AddrInTable
    .type       EZBL_AddrInTable, @function
EZBL_AddrInTable:               # 0x9D001EF6
    .set        micromips
    .insn
    .short      0xAE04
    .word       0xE02C00C6
    .word       0x0C40459F
    .word       0x948506CA
    .word       0x0C00FFFB
    .word       0x006369C0
    .word       0x6941E02C
    .word       0xE02C0042
    .word       0x1B900066
    .word       0x6E44ADF4
    .word       0x13900046
    .word       0xED018D70
    .word       0xFFFF45BF
    .size       EZBL_AddrInTable, . - EZBL_AddrInTable   # 50
    .end        EZBL_AddrInTable

    .ent        _DefaultInterrupt
    .type       _DefaultInterrupt, @function
_DefaultInterrupt:              # 0x9D001F28
    .set        micromips
    .insn
    .word       0x000041A2
    .word       0x00003042
    .word       0x41A28D08
    .word       0x30420000
    .word       0x40E20000
    .word       0x46C00002
    .word       0x41A245BF
    .word       0x30429D00
    .word       0x40E21D69
    .word       0x45C20003
    .word       0x00000000
    .word       0x0C0045BF
    .size       _DefaultInterrupt, . - _DefaultInterrupt   # 48
    .end        _DefaultInterrupt

    .ent        EZBL_mon_putc
    .type       EZBL_mon_putc, @function
EZBL_mon_putc:                  # 0x9D001F58
    .type       _mon_putc, @function
_mon_putc:                      # 0x9D001F58
    .set        micromips
    .insn
    .word       0x45464FF1
    .word       0x000041A2
    .word       0x00003042
    .word       0x0E048D04
    .word       0x00007400
    .word       0x1A1D0C00
    .word       0xFC9C0010
    .word       0x6E898030
    .word       0x0D367680
    .word       0x4506EF01
    .word       0x4C11459F
    .size       _mon_putc, . - _mon_putc   # 44
    .size       EZBL_mon_putc, . - EZBL_mon_putc   # 44
    .end        EZBL_mon_putc

    .ent        EZBL_CalcUxBRGH
    .type       EZBL_CalcUxBRGH, @function
EZBL_CalcUxBRGH:                # 0x9D001F84
    .set        micromips
    .insn
    .word       0x0C408E93
    .word       0x00044045
    .word       0xCC03ED81
    .word       0x29D000A0
    .word       0x054A0C60
    .word       0x00A226D4
    .word       0x0005BB3C
    .word       0x4642703C
    .word       0x6D2E8D83
    .word       0x11D00040
    .short      0x45BF
    .size       EZBL_CalcUxBRGH, . - EZBL_CalcUxBRGH   # 42
    .end        EZBL_CalcUxBRGH

    .ent        EZBL_mon_getc
    .type       EZBL_mon_getc, @function
EZBL_mon_getc:                  # 0x9D001FAE
    .type       _mon_getc, @function
_mon_getc:                      # 0x9D001FAE
    .set        micromips
    .insn
    .short      0x4FF1
    .word       0xAE05CBE7
    .word       0x8034FCBC
    .word       0x40E26950
    .word       0x6E090007
    .word       0x03FD7680
    .word       0xCC03EF01
    .word       0x0010145D
    .word       0x4BE7ED7F
    .word       0x4C11459F
    .size       _mon_getc, . - _mon_getc   # 38
    .size       EZBL_mon_getc, . - EZBL_mon_getc   # 38
    .end        EZBL_mon_getc

    .ent        NOW_Wait
    .type       NOW_Wait, @function
NOW_Wait:                       # 0x9D001FD4
    .set        micromips
    .insn
    .word       0x45554FF1
    .word       0x0FFB7680
    .word       0x0E220E04
    .word       0x0FFB7680
    .word       0x05950C00
    .word       0x1B900203
    .word       0xFFF840A3
    .word       0x459F4515
    .short      0x4C11
    .size       NOW_Wait, . - NOW_Wait   # 34
    .end        NOW_Wait

    .ent        NOW_32
    .type       NOW_32, @function
NOW_32:                         # 0x9D001FF6
    .type       NOW_64, @function
NOW_64:                         # 0x9D001FF6
    .set        micromips
    .insn
    .short      0x0049
    .word       0x41A400FC
    .word       0xFCA48000
    .word       0xFC64030C
    .word       0x00620308
    .word       0x05D61B90
    .word       0x0308F844
    .word       0x030CF864
    .short      0x45BF
    .size       NOW_64, . - NOW_64   # 32
    .size       NOW_32, . - NOW_32   # 32
    .end        NOW_32

    .ent        EZBL_RAMCompare
    .type       EZBL_RAMCompare, @function
EZBL_RAMCompare:                # 0x9D002016
    .set        micromips
    .insn
    .short      0x0C60
    .word       0x000A94C3
    .word       0x05380C00
    .word       0x6DB00BA0
    .word       0x092F053A
    .word       0xFFF69447
    .word       0x45BF052F
    .word       0x0C40459F
    .word       0x00FC034C
    .word       0xFFBF41BB
    .word       0xFFFF537B
    .word       0xD250037A
    .word       0x02FC034C
    .word       0xF37C0000
    .size       EZBL_RAMCompare, . - EZBL_RAMCompare   # 54
    .end        EZBL_RAMCompare

    .ent        EZBL_RAMCopyEx
    .type       EZBL_RAMCopyEx, @function
EZBL_RAMCopyEx:                 # 0x9D00204C
    .set        micromips
    .insn
    .word       0xCBE54FF5
    .word       0x0E727680
    .word       0x01220D26
    .word       0x4BE51150
    .word       0x4C0D459F
    .word       0x00000001
    .word       0xBF922CE0
    .word       0xFFFC7C00
    .word       0x00000000
    .word       0x7963B2E2
    .word       0x2DE540ED
    .word       0xEC4A3773
    .word       0xC02F3D41
    .word       0x43414D48
    .word       0x52524520
    .word       0x0C000000
    .size       EZBL_RAMCopyEx, . - EZBL_RAMCopyEx   # 64
    .end        EZBL_RAMCopyEx

    .ent        LEDSet
    .type       LEDSet, @function
LEDSet:                         # 0x9D00208C
    .set        micromips
    .insn
    .word       0x9D0041A5
    .word       0x03C4D680
    .word       0x206030A5
    .size       LEDSet, . - LEDSet   # 12
    .end        LEDSet

    .ent        EZBL_WriteROMEx
    .type       EZBL_WriteROMEx, @function
EZBL_WriteROMEx:                # 0x9D002098
    .set        micromips
    .insn
    .word       0xBFC041B9
    .word       0x015B3339
    .word       0xFFFF45B9
    .word       0x5055434D
    .word       0x454D4348
    .size       EZBL_WriteROMEx, . - EZBL_WriteROMEx   # 20
    .end        EZBL_WriteROMEx

    .ent        EZBL_FIFOPeek
    .type       EZBL_FIFOPeek, @function
EZBL_FIFOPeek:                  # 0x9D0020AC
    .set        micromips
    .insn
    .word       0x0B84D680
    .word       0xFFFFEF81
    .word       0x0C0045BF
    .word       0x0C0045BF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .size       EZBL_FIFOPeek, . - EZBL_FIFOPeek   # 1876
    .end        EZBL_FIFOPeek
    .popsection

    # Bootloader code block intended for program region 'kseg1_boot_mem'
    # 0xBFC00000 to 0xBFC01700, length 0x001700 (5888 bytes; needs 2 pages)
    .pushsection    EZBL_ROM_AT_0xBFC00000, address(0xBFC00000), code, keep

    .ent        EZBL_VectorDispatch0000
    .type       EZBL_VectorDispatch0000, @function
EZBL_VectorDispatch0000:        # 0xBFC00000
    .set        micromips
    .insn
    .word       0x00FC034C
    .word       0x04EC035A
    .word       0x000540BA
    .word       0x9D0041BA
    .word       0x0801535A
    .word       0x034F45BA
    .word       0x335A08FC
    .word       0x035A0801
    .word       0x459ACE4C
    .word       0x034C0C00
    .word       0xFFFF00FC
    .word       0xFFFFFFFF
    .word       0x22DD4FE5
    .word       0x0E25D01C
    .word       0x0E470E66
    .word       0xE02C0284
    .word       0x1FFF41B5
    .word       0xFFFC52B5
    .word       0xAA5002A7
    .word       0xBF8041A3
    .word       0x2930FC43
    .word       0xAD7C2D2E
    .word       0xBF8041B0
    .word       0x2930FC50
    .word       0x2000D042
    .word       0x3060AD24
    .word       0x41A24000
    .word       0xF862BF80
    .word       0x41A22934
    .word       0xFA82BF80
    .word       0x41A22950
    .word       0xFAA2BF80
    .word       0x41A22980
    .word       0xFA42BF80
    .word       0x41A22960
    .word       0x4872BF80
    .word       0x2970F862
    .word       0x40005231
    .word       0x2930FA30
    .word       0x000041A2
    .word       0x00003062
    .word       0x41A4AD99
    .word       0xCC310F80
    .word       0x40F10C00
    .word       0xC804FFDC
    .word       0x30C08680
    .word       0x41A203DF
    .word       0x3042BFC0
    .word       0x45E20031
    .word       0xFC500CE0
    .word       0x2D2E2930
    .word       0x3060AD7C
    .word       0xCFCD4000
    .word       0xBF8041A2
    .word       0x0000FC42
    .word       0x41A344A2
    .word       0x8E080000
    .word       0x00003063
    .word       0x0083EE01
    .word       0xEA222010
    .word       0xEE01CC08
    .word       0xEE016AA0
    .word       0x20100083
    .word       0xEA2044E5
    .word       0x0083EE01
    .word       0x6A201810
    .word       0x40A444A3
    .word       0x0002FFFC
    .word       0x0000477C
    .word       0x41A21800
    .word       0xF802BF80
    .word       0x41A32940
    .word       0x3063AA99
    .word       0x00736276
    .word       0xFA629950
    .word       0xFC9C2940
    .word       0x41A3802C
    .word       0x50635566
    .word       0x05C79D89
    .word       0x2940F862
    .word       0x80005060
    .word       0xBF8041A2
    .word       0x2938F862
    .word       0x577C0002
    .word       0x22DDED01
    .word       0x459F501C
    .short      0x4C1D
    .size       EZBL_VectorDispatch0000, . - EZBL_VectorDispatch0000   # 346
    .end        EZBL_VectorDispatch0000

    .ent        __EZBL_WriteROMEx
    .type       __EZBL_WriteROMEx, @function
__EZBL_WriteROMEx:              # 0xBFC0015A
    .set        micromips
    .insn
    .short      0x4FD5
    .word       0xD030233D
    .word       0x0E040FDD
    .word       0x0E260EA5
    .word       0x0064F8FE
    .word       0x1068209E
    .word       0x802CFE5C
    .word       0xFA5E4E42
    .word       0xF81C0020
    .word       0x2F4F802C
    .word       0xDEAD5040
    .word       0x00329446
    .word       0x41AC2546
    .word       0x318C0000
    .word       0x004C0018
    .word       0x30529150
    .word       0x0040000E
    .word       0x005D100C
    .word       0x327DE9D0
    .word       0x0CD30018
    .word       0x41A80C40
    .word       0x31080000
    .word       0x01080018
    .word       0x41AA1040
    .word       0x314A9D00
    .word       0x01020408
    .word       0x40E73B90
    .word       0x6F620007
    .word       0x3918004A
    .word       0xFFFCF8E6
    .word       0x6D20CFF6
    .word       0x0C402642
    .word       0x000A9482
    .word       0x004527A4
    .word       0x07FC4118
    .word       0x0000F907
    .word       0x6D20CFF7
    .word       0x0E600E40
    .word       0x008E9411
    .word       0x07FFD050
    .word       0x08003100
    .word       0x41D00048
    .word       0x13900111
    .word       0x00480E91
    .word       0x41A2A058
    .word       0x50427FFF
    .word       0x0050FFF8
    .word       0x41A25250
    .word       0x004A8000
    .word       0x0291BA90
    .word       0xED7F89D0
    .word       0x205EEDFF
    .word       0x2E059018
    .word       0x00083160
    .word       0x59D0008B
    .word       0x13900174
    .word       0x00540ECB
    .word       0x0C40B018
    .word       0x0018307E
    .word       0x06A80646
    .word       0x31500055
    .word       0x8B500B60
    .word       0x02C26D20
    .word       0xAEF72B50
    .word       0x0018FCFE
    .word       0xB447ED7F
    .word       0xFDFE0005
    .word       0x94EF001C
    .word       0x0C000045
    .word       0x0CD786DC
    .word       0x9D0041A3
    .word       0x1EF73043
    .word       0x0024F8FE
    .word       0xF9FE45C2
    .word       0xFCFE0028
    .word       0xAD360024
    .word       0x0028FDFE
    .word       0xA00041A4
    .word       0x22900097
    .word       0xB4E26940
    .word       0x6A410004
    .word       0x002A95E4
    .word       0xEEFF0C00
    .word       0x0026B4A2
    .word       0xB4440C00
    .word       0x0C000023
    .word       0x802CFC5C
    .word       0x0018FCFE
    .word       0xFC7E6D2E
    .word       0x05340020
    .word       0x802CF85C
    .word       0x0064FC7E
    .word       0x0400D043
    .word       0x41A38D07
    .word       0x3043BF80
    .word       0x30803990
    .word       0xAA235743
    .word       0x802CFCDC
    .word       0x001CFC5E
    .word       0x0C97C844
    .word       0xBFC041A3
    .word       0x00313043
    .word       0xEE8245E2
    .word       0x802CF81C
    .word       0x000832F7
    .word       0xA1D002D4
    .word       0xA95002D5
    .word       0xFF8DB414
    .word       0x815002D0
    .word       0x0C00CF71
    .word       0x0FBE0C50
    .word       0x5030233D
    .word       0x4C2D459F
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .size       __EZBL_WriteROMEx, . - __EZBL_WriteROMEx   # 550
    .end        __EZBL_WriteROMEx

    .ent        EZBL_VectorDispatch0380
    .type       EZBL_VectorDispatch0380, @function
EZBL_VectorDispatch0380:        # 0xBFC00380
    .set        micromips
    .insn
    .word       0x08FC034F
    .word       0x0141335A
    .word       0xCE4C035A
    .word       0x0C00459A
    .word       0x00FC034D
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .size       EZBL_VectorDispatch0380, . - EZBL_VectorDispatch0380   # 128
    .end        EZBL_VectorDispatch0380

    .ent        EZBL_VectorDispatch0400
    .type       EZBL_VectorDispatch0400, @function
EZBL_VectorDispatch0400:        # 0xBFC00400
    .set        micromips
    .insn
    .word       0x08FC034F
    .word       0x0201335A
    .word       0xCE4C035A
    .word       0x0C00459A
    .word       0x00FC034D
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .size       EZBL_VectorDispatch0400, . - EZBL_VectorDispatch0400   # 128
    .end        EZBL_VectorDispatch0400

    .ent        EZBL_VectorDispatch0480
    .type       EZBL_VectorDispatch0480, @function
EZBL_VectorDispatch0480:        # 0xBFC00480
    .set        micromips
    .insn
    .word       0x02FC037F
    .word       0x08FC036F
    .word       0x0161337B
    .word       0x0C00459B
    .word       0x00FC037F
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .size       EZBL_VectorDispatch0480, . - EZBL_VectorDispatch0480   # 4736
    .end        EZBL_VectorDispatch0480
    .popsection

    # Bootloader code block intended for program region 'configsfrs'
    # 0xBFC017C0 to 0xBFC017E0, length 0x000020 (32 bytes; needs 0 pages)
    .pushsection    EZBL_BTLDR_CONFIG_WORD_configsfrs, address(0xBFC017C0), code, keep
    .word       0xFFFFFFFF
    .word       0xFFFF3FFF
    .word       0xFFFFFFFB
    .word       0xFFFFFFFF
    .word       0xFFFF74F4
    .word       0xFFFF7FF8
    .word       0xFFFFFFFF
    .word       0xFFFFFFFF
    .popsection


#if !defined(EZBL_HIDE_BOOT_SYMBOLS)

#----Bootloader symbol export table----
    .weak       EZBL_AppPreInstall
    .type       EZBL_AppPreInstall, @object
    .weak       EZBL_bootCtx
    .type       EZBL_bootCtx, @object
    .weak       EZBL_COM_RX
    .type       EZBL_COM_RX, @object
    .weak       EZBL_COM_TX
    .type       EZBL_COM_TX, @object
    .weak       EZBL_COMBootIF
    .type       EZBL_COMBootIF, @object
    .weak       EZBL_NVMKey
    .type       EZBL_NVMKey, @object
    .weak       EZBL_STDIN
    .type       EZBL_STDIN, @object
    .weak       EZBL_STDOUT
    .type       EZBL_STDOUT, @object
    .weak       EZBL_Vector56ISRPtr
    .weak       EZBL_Vector56ISRPtr
    .weak       EZBL_Vector57ISRPtr
    .weak       EZBL_Vector57ISRPtr
    .weak       foundRO
    .type       foundRO, @object
    .weak       NOW_Fcy
    .type       NOW_Fcy, @object
    .weak       NOW_microsecond
    .type       NOW_microsecond, @object
    .weak       NOW_millisecond
    .type       NOW_millisecond, @object
    .weak       NOW_ms
    .type       NOW_ms, @object
    .weak       NOW_sec
    .type       NOW_sec, @object
    .weak       NOW_second
    .type       NOW_second, @object
    .weak       NOW_systemFrequency
    .type       NOW_systemFrequency, @object
    .weak       NOW_us
    .type       NOW_us, @object
    .weak       UART2_RxFifo
    .type       UART2_RxFifo, @object
    .weak       UART2_RxFifoBuffer
    .type       UART2_RxFifoBuffer, @object
    .weak       UART2_TxFifo
    .type       UART2_TxFifo, @object
    .weak       UART2_TxFifoBuffer
    .type       UART2_TxFifoBuffer, @object
    .weak       EZBL_AddrInTable
    .weak       EZBL_BootloaderTask
    .type       EZBL_COMBaud, @object
    .weak       EZBL_COMBaud
    .weak       EZBL_CRC32
    .weak       EZBL_CalcUxBRGH
    .weak       EZBL_ClrIntEn
    .weak       EZBL_ClrIntFlag
    .weak       EZBL_EraseAppSpace
    .weak       EZBL_ErasePage
    .weak       EZBL_FIFOFlush
    .weak       EZBL_FIFOGetInt
    .weak       EZBL_FIFOGetIntEn
    .weak       EZBL_FIFOGetIntPri
    .weak       EZBL_FIFOIntClear
    .weak       EZBL_FIFOIntDisable
    .weak       EZBL_FIFOIntEnable
    .weak       EZBL_FIFOIntEnableSet
    .weak       EZBL_FIFOIntFlagSet
    .weak       EZBL_FIFOIntRaise
    .weak       EZBL_FIFOPeek
    .weak       EZBL_FIFORead
    .weak       EZBL_FIFOReset
    .weak       EZBL_FIFOSetBaud
    .weak       EZBL_FIFOSetIntPri
    .weak       EZBL_FIFOWrite
    .weak       EZBL_ForwardAllIRQ
    .weak       EZBL_ForwardIRQ
    .weak       EZBL_Install2Flash
    .weak       EZBL_InvIntEn
    .weak       EZBL_InvIntFlag
    .weak       EZBL_IsPageErased
    .type       EZBL_LEDMap, @object
    .weak       EZBL_LEDMap
    .weak       EZBL_MapClr
    .weak       EZBL_MapClrEx
    .weak       EZBL_MapInv
    .weak       EZBL_MapInvEx
    .weak       EZBL_MapSet
    .weak       EZBL_MapSetEx
    .weak       EZBL_MapWrite
    .weak       EZBL_MapWriteEx
    .weak       EZBL_PreInstall
    .weak       EZBL_RAMCompare
    .weak       EZBL_RAMCopy
    .weak       EZBL_RAMCopyEx
    .weak       EZBL_RdIntEn
    .weak       EZBL_RdIntFlag
    .weak       EZBL_RdIntPri
    .weak       EZBL_RestoreAppErasableInRAMPage
    .weak       EZBL_SetIntEn
    .weak       EZBL_SetIntFlag
    .weak       EZBL_VerifyROM
    .weak       EZBL_WrIntEn
    .weak       EZBL_WrIntFlag
    .weak       EZBL_WrIntPri
    .weak       EZBL_WriteROMEx
    .type       EZBL_bootIDHash, @object
    .weak       EZBL_bootIDHash
    .type       EZBL_bootIDHash0, @object
    .weak       EZBL_bootIDHash0
    .type       EZBL_bootIDHash1, @object
    .weak       EZBL_bootIDHash1
    .type       EZBL_bootIDHash2, @object
    .weak       EZBL_bootIDHash2
    .type       EZBL_bootIDHash3, @object
    .weak       EZBL_bootIDHash3
    .type       EZBL_bootloaderWakeKey, @object
    .weak       EZBL_bootloaderWakeKey
    .weak       EZBL_mon_getc
    .weak       EZBL_mon_putc
    .weak       InitializeBoard
    .weak       LEDOff
    .weak       LEDSet
    .weak       NOW_32
    .weak       NOW_64
    .weak       NOW_CORETMR_ResetConst
    .weak       NOW_EnableInterrupts
    .weak       NOW_IntEnable
    .weak       NOW_Wait
    .weak       UART2_RXInterruptFunc
    .weak       UART2_RXTXInterrupt
    .weak       UART2_RX_FIFO_OnRead
    .weak       UART2_ResetBRG
    .weak       UART2_TXInterruptFunc
    .weak       UART2_TX_FIFO_Flush
    .weak       UART2_TX_FIFO_OnWrite
    .weak       _DefaultInterrupt
    .type       __crt0_exit, @object
    .weak       __crt0_exit
    .weak       __pic32_software_reset
    .weak       __vector_dispatch_56
    .weak       __vector_dispatch_57
    .weak       _bootstrap_exception_handler
    .weak       _general_exception_context
    .weak       _general_exception_handler
    .weak       _mon_getc
    .weak       _mon_putc
    .weak       main
    .weak       strlen
    .weak       EZBL_VectorDispatch0000
    .weak       EZBL_VectorDispatch0380
    .weak       EZBL_VectorDispatch0400
    .weak       EZBL_VectorDispatch0480
    .weak       __EZBL_WriteROMEx
    .weak       _gp
    .weak       EZBL_APP_ebase_address
    .weak       EZBL_AppEntry
    .weak       EZBL_BEV_EXCPT_EBASE_OFFSET
    .weak       EZBL_BOOT_ebase_address
    .weak       EZBL_BOOTLOADER_END
    .weak       EZBL_DBG_EXCPT_EBASE_OFFSET
    .weak       EZBL_FLOW_THRESHOLD
    .weak       EZBL_ISRPointers
    .weak       EZBL_LEDMapLen
    .type       EZBL_LEDMapLen, @object
    .weak       EZBL_RESET_EBASE_OFFSET
    .weak       EZBL_Vector56Original
    .weak       EZBL_Vector57Original



#----Bootloader symbol addresses----
    .equ        EZBL_AppPreInstall, 0x80000328
    .equ        EZBL_bootCtx, 0x80000208
    .equ        EZBL_COM_RX, 0x80000330
    .equ        EZBL_COM_TX, 0x80000334
    .equ        EZBL_COMBootIF, 0x80000200
    .equ        EZBL_NVMKey, 0x8000033C
    .equ        EZBL_STDIN, 0x80000344
    .equ        EZBL_STDOUT, 0x80000340
    .equ        EZBL_Vector56ISRPtr, 0x80000320
    .equ        EZBL_Vector56ISRPtr, 0x80000320
    .equ        EZBL_Vector57ISRPtr, 0x80000324
    .equ        EZBL_Vector57ISRPtr, 0x80000324
    .equ        foundRO, 0x80000338
    .equ        NOW_Fcy, 0x80000310
    .equ        NOW_microsecond, 0x8000031C
    .equ        NOW_millisecond, 0x80000314
    .equ        NOW_ms, 0x80000314
    .equ        NOW_sec, 0x80000318
    .equ        NOW_second, 0x80000318
    .equ        NOW_systemFrequency, 0x80000310
    .equ        NOW_us, 0x8000031C
    .equ        UART2_RxFifo, 0x800002B8
    .equ        UART2_RxFifoBuffer, 0x80000238
    .equ        UART2_TxFifo, 0x800002E0
    .equ        UART2_TxFifoBuffer, 0x80000298
    .equ        EZBL_COMBaud, 0x9D002068
    .equ        EZBL_LEDMap, 0x9D002060
    .equ        EZBL_bootIDHash, 0x9D002070
    .equ        EZBL_bootIDHash0, 0x9D002070
    .equ        EZBL_bootIDHash1, 0x9D002074
    .equ        EZBL_bootIDHash2, 0x9D002078
    .equ        EZBL_bootIDHash3, 0x9D00207C
    .equ        EZBL_bootloaderWakeKey, 0x9D0020A4
    .equ        __crt0_exit, 0x9D0003A2
    .equ        _gp, 0x80008310
    .equ        EZBL_APP_ebase_address, 0x9D003000
    .equ        EZBL_AppEntry, 0x9D003801
    .equ        EZBL_BEV_EXCPT_EBASE_OFFSET, 0x000140
    .equ        EZBL_BOOT_ebase_address, 0x9D000000
    .equ        EZBL_BOOTLOADER_END, 0x9D002800
    .equ        EZBL_DBG_EXCPT_EBASE_OFFSET, 0x000160
    .equ        EZBL_FLOW_THRESHOLD, 0x000020
    .equ        EZBL_ISRPointers, 0x80000320
    .equ        EZBL_LEDMapLen, 0x000001
    .equ        EZBL_RESET_EBASE_OFFSET, 0x000800
    .equ        EZBL_Vector56Original, 0x9D00001C
    .equ        EZBL_Vector57Original, 0x9D000028

#endif
