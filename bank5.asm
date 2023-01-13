; DISASSEMBLY ORIGINALLY WROTE BY TRAX (99.9% of his work)
; * = $8000                                                                      ;
; da65 V2.18 
; Created     2021-04-12 11 24 36                                              ;
; Input file  bank5_and_7.nes                                                  ;
; Page        1                                                                ;
                                                                               ;
                                                                               ;
;.setcpu  "6502"                                                               ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L0000 = $0000
L000E = $000E
L02AD = $02AD
L0302 = $0302
L0363 = $0363
L03A4 = $03A4
L05C9 = $05C9
L0600 = $0600
L0620 = $0620
L0640 = $0640
L0660 = $0660
L0680 = $0680
L06A0 = $06A0
L06C0 = $06C0
L07AD = $07AD
L6002 = $6002
L6034 = $6034
L6060 = $6060
L6066 = $6066
L6098 = $6098
L6178 = $6178
L6258 = $6258
L6261 = $6261
L696C = $696C
L7000 = $7000
L7001 = $7001
L7004 = $7004
L700B = $700B
L700E = $700E
L7013 = $7013
L7018 = $7018
L701D = $701D
L702A = $702A
L7033 = $7033
L7038 = $7038
L703D = $703D
L7042 = $7042
L7045 = $7045
L7048 = $7048
L7051 = $7051
L7054 = $7054
L705F = $705F
L7064 = $7064
L706F = $706F
L7072 = $7072
L7079 = $7079
L7084 = $7084
L708B = $708B
L7090 = $7090
L7097 = $7097
L70A0 = $70A0
L70A5 = $70A5
L70AA = $70AA
L70AD = $70AD
L70BA = $70BA
L70BF = $70BF
L70C2 = $70C2
L70C5 = $70C5
L70CE = $70CE
L70D9 = $70D9
L70E0 = $70E0
L70ED = $70ED
L70F4 = $70F4
L70F9 = $70F9
L70FE = $70FE
L7103 = $7103
L7106 = $7106
L710F = $710F
L7114 = $7114
L711B = $711B
L7120 = $7120
L7123 = $7123
L7126 = $7126
L7129 = $7129
L712C = $712C
L712F = $712F
L7132 = $7132
L7135 = $7135
L7400 = $7400
L7402 = $7402
L7434 = $7434
L7466 = $7466
L7498 = $7498
L749A = $749A
L757A = $757A
L765A = $765A
L773A = $773A
LC032 = $C032
LC2A6 = $C2A6
LC722 = $C722
LC72D = $C72D
LCF05 = $CF05
LD168 = $D168
LD174 = $D174
LD293 = $D293
LD2EC = $D2EC
LDAC7 = $DAC7
LDD3D = $DD3D
LDE3D = $DE3D
LDE40 = $DE40
LDE6C = $DE6C
LDED4 = $DED4
LDF4C = $DF4C
LDF56 = $DF56
LE000 = $E000
LE3B9 = $E3B9
LE48A = $E48A
LE48B = $E48B
LE4D9 = $E4D9
LE563 = $E563
LE5B2 = $E5B2
LE617 = $E617
LE726 = $E726
LE942 = $E942
LEA18 = $EA18
LEA1C = $EA1C
LEA32 = $EA32
LEC02 = $EC02
LEF08 = $EF08
LF0C6 = $F0C6
LF0CC = $F0CC
LF0D7 = $F0D7
LF1F4 = $F1F4
LF2D3 = $F2D3
LFCA5 = $FCA5

.import bank7_Change_Enemy_Facing_Direction_and_X_Velocity
.import bank7_code37
.import bank7_code43
.import bank7_code44
.import bank7_code45
.import bank7_code49
.import bank7_code51
.import bank7_Controllers_Input
.import bank7_Desert_Rocks_initialization_routine
.import bank7_Determine_Enemy_Facing_Direction_relative_to_Link
.import bank7_Display
.import bank7_Enemy_Routines1_Ache_and_Acheman
.import bank7_Enemy_Routines1_Bago_Bago_Generator
.import bank7_Enemy_Routines1_Bago_Bago0
.import bank7_Enemy_Routines1_Bago_Bago1
.import bank7_Enemy_Routines1_Bot
.import bank7_Enemy_Routines1_Deeler
.import bank7_Enemy_Routines1_Elevator
.import bank7_Enemy_Routines1_Fairy
.import bank7_Enemy_Routines1_Locked_Door
.import bank7_Enemy_Routines1_Moa
.import bank7_Enemy_Routines1_Myu
.import bank7_Enemy_Routines1_Octorok
.import bank7_Enemy_Routines1_Raising_Bubbles
.import bank7_Enemy_Routines1_Red_Jar
.import bank7_Enemy_Routines2_Ache_and_Acheman
.import bank7_Enemy_Routines2_BagoBago
.import bank7_Enemy_Routines2_Bot_and_Bit
.import bank7_Enemy_Routines2_Deeler
.import bank7_Enemy_Routines2_Elevator
.import bank7_Enemy_Routines2_Fairy
.import bank7_Enemy_Routines2_LockedDoor
.import bank7_Enemy_Routines2_Moa
.import bank7_Enemy_Routines2_Myu
.import bank7_Enemy_Routines2_RedJar
.import bank7_Enemy_Routines2_unknown
.import bank7_Enemy_Stops_when_Hit
.import bank7_Erase_Name_Tables_0and1__set_scroll_to_0_0
.import bank7_Floor_Y_Position
.import bank7_Gravity
.import bank7_idem__maybe
.import bank7_Link_Collision_Detection
.import bank7_Link_Hit_Routine
.import bank7_PowerON_code
.import bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP
.import bank7_Remove_All_Sprites
.import bank7_Remove_All_Sprites_except_Sprite0
.import bank7_Reset_Memory_Ranges
.import bank7_Set_Memory_200_4FF_and_00_DF_to_Zero
.import bank7_Set_RAM_Address_for_Object0E0F
.import bank7_Set_tile_and_move_right_1_column
.import bank7_Simple_Horizontal_Movement
.import bank7_Simple_Vertical_Movement
.import bank7_Spawn_New_Projectile
.import bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least

.segment "BANK5"

; ---------------------------------------------------------------------------- ;
bank5_nothing:                                                                  ;
.byt    $00                            ; 0x14010 $8000 00                      ;
L8001:                                                                          ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x14011 $8001 00 00 00 00 00 00 00 00 ;
.byt    $00,$00,$00,$00,$00            ; 0x14019 $8009 00 00 00 00 00          ;
bank5_Palettes_for_Great_Palace0:                                               ;
.byt    $0F,$30,$12,$16,$0F,$07,$27,$37; 0x1401e $800E 0F 30 12 16 0F 07 27 37 ;
.byt    $0F,$27,$16,$0F,$0F,$30,$10,$00; 0x14026 $8016 0F 27 16 0F 0F 30 10 00 ;
.byt    $0F,$30,$12,$16,$0F,$07,$27,$37; 0x1402e $801E 0F 30 12 16 0F 07 27 37 ;
.byt    $0F,$07,$16,$30,$0F,$3C,$1C,$0C; 0x14036 $8026 0F 07 16 30 0F 3C 1C 0C ;
.byt    $0F,$30,$12,$16,$0F,$00,$10,$30; 0x1403e $802E 0F 30 12 16 0F 00 10 30 ;
.byt    $0F,$36,$16,$07,$0F,$23,$03,$0F; 0x14046 $8036 0F 36 16 07 0F 23 03 0F ;
.byt    $0F,$30,$12,$16,$0F,$07,$27,$37; 0x1404e $803E 0F 30 12 16 0F 07 27 37 ;
.byt    $0F,$07,$16,$30,$0F,$23,$13,$03; 0x14056 $8046 0F 07 16 30 0F 23 13 03 ;
.byt    $0F,$30,$12,$16,$0F,$17,$07,$08; 0x1405e $804E 0F 30 12 16 0F 17 07 08 ;
.byt    $0F,$29,$19,$09,$0F,$30,$1C,$0C; 0x14066 $8056 0F 29 19 09 0F 30 1C 0C ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x1406e $805E 21 30 12 16 21 37 18 0F ;
.byt    $21,$29,$1C,$0C,$21,$30,$1C,$0C; 0x14076 $8066 21 29 1C 0C 21 30 1C 0C ;
.byt    $03,$30,$12,$16,$03,$19,$09,$0F; 0x1407e $806E 03 30 12 16 03 19 09 0F ;
.byt    $03,$27,$16,$0F,$03,$30,$00,$0F; 0x14086 $8076 03 27 16 0F 03 30 00 0F ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x1408e $807E 21 30 12 16 21 37 18 0F ;
.byt    $21,$30,$11,$01,$21,$30,$1C,$0C; 0x14096 $8086 21 30 11 01 21 30 1C 0C ;
.byt    $0F,$30,$12,$16,$0F,$12,$01,$0F; 0x1409e $808E 0F 30 12 16 0F 12 01 0F ;
.byt    $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F; 0x140a6 $8096 0F 0F 0F 0F 0F 0F 0F 0F ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x140ae $809E FF 18 36 2A FF 16 27 30 ;
.byt    $FF,$06,$16,$30,$FF,$02,$21,$30; 0x140b6 $80A6 FF 06 16 30 FF 02 21 30 ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x140be $80AE FF 18 36 2A FF 16 27 30 ;
.byt    $FF,$07,$16,$36,$FF,$00,$26,$30; 0x140c6 $80B6 FF 07 16 36 FF 00 26 30 ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x140ce $80BE FF 18 36 2A FF 16 27 30 ;
.byt    $FF,$04,$14                    ; 0x140d6 $80C6 FF 04 14                ;
L80C9:                                                                          ;
.byt    $30,$FF,$28,$08,$30,$FF,$18,$36; 0x140d9 $80C9 30 FF 28 08 30 FF 18 36 ;
.byt    $2A,$FF,$16,$27,$30,$FF,$0F,$0F; 0x140e1 $80D1 2A FF 16 27 30 FF 0F 0F ;
.byt    $0F,$FF,$0F,$0F,$0F,$FF,$01,$21; 0x140e9 $80D9 0F FF 0F 0F 0F FF 01 21 ;
.byt    $11,$FF,$16,$27                ; 0x140f1 $80E1 11 FF 16 27             ;
L80E5:                                                                          ;
.byt    $30,$FF,$0F,$0F,$0F,$FF,$0F,$0F; 0x140f5 $80E5 30 FF 0F 0F 0F FF 0F 0F ;
.byt    $0F                            ; 0x140fd $80ED 0F                      ;
; ---------------------------------------------------------------------------- ;
bank5_code0:                                                                    ;
    TXA                                ; 0x140fe $80EE 8A                      ;
    LSR                                ; 0x140ff $80EF 4A                      ;
    LSR                                ; 0x14100 $80F0 4A                      ;
    LSR                                ; 0x14101 $80F1 4A                      ;
    LSR                                ; 0x14102 $80F2 4A                      ;
    TAX                                ; 0x14103 $80F3 AA                      ;
    DEX                                ; 0x14104 $80F4 CA                      ;
    LDA      $0730                     ; 0x14105 $80F5 AD 30 07                ;; Position of Object Placement
    AND      #$F0                      ; 0x14108 $80F8 29 F0                   ; keep bits xxxx ....
    CMP      #$F0                      ; 0x1410a $80FA C9 F0                   ;
    BNE      L8103                     ; 0x1410c $80FC D0 05                   ;
    TXA                                ; 0x1410e $80FE 8A                      ;
    CLC                                ; 0x1410f $80FF 18                      ;
    ADC      #$0F                      ; 0x14110 $8100 69 0F                   ;
    TAX                                ; 0x14112 $8102 AA                      ;
L8103:                                                                          ;
    TXA                                ; 0x14113 $8103 8A                      ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x14114 $8104 20 85 D3;
bank5_Pointer_table_for_Objects_Construction_Routines:                          ;
.word    bank5_Objects_Construction_Routines_Object_1_high__X_wide; 0x14117 $8107 AD 81;Object 1 high, X wide	(1x)
.word    bank5_Objects_Construction_Routines_Object_1_high__X_wide; 0x14119 $8109 AD 81;Object 1 high, X wide	(2x)
.word    bank5_Objects_Construction_Routines_Object_1_high__X_wide; 0x1411b $810B AD 81;Object 1 high, X wide	(3x)
.word    bank5_Objects_Construction_Routines_Object_1_high__X_wide; 0x1411d $810D AD 81;Object 1 high, X wide	(4x)
.word    bank5_Objects_Construction_Routines_Object_1_high__X_wide; 0x1411f $810F AD 81;Object 1 high, X wide	(5x)
.word    bank5_Objects_Construction_Routines_Object_1_high__X_wide; 0x14121 $8111 AD 81;Object 1 high, X wide	(6x)
.word    bank5_Objects_Construction_Routines_Object_1_high__X_wide; 0x14123 $8113 AD 81;Object 1 high, X wide	(7x)
.word    bank5_Objects_Construction_Routines_2_high__X_wide; 0x14125 $8115 B3 81;Object 2 high, X wide	(8x)
.word    bank5_Objects_Construction_Routines_2_high__X_wide; 0x14127 $8117 B3 81;Object 2 high, X wide	(9x)
.word    bank5_Objects_Construction_Routines_2_high__X_wide; 0x14129 $8119 B3 81;Object 2 high, X wide	(Ax)
.word    bank5_Objects_Construction_Routines_2_high__X_wide; 0x1412b $811B B3 81;Object 2 high, X wide	(Bx)
.word    bank5_Objects_Construction_Routines_2_high__X_wide; 0x1412d $811D B3 81;Object 2 high, X wide	(Cx)
.word    bank5_Objects_Construction_Routines_X_high__1_wide_single_tile_type; 0x1412f $811F D1 81;Object X high, 1 wide, single tile type	(Dx)			
.word    bank5_Objects_Construction_Routines_X_high__1_wide_single_tile_type; 0x14131 $8121 D1 81;Object X high, 1 wide, single tile type	(Ex)
.word    bank5_Objects_Construction_Routines_Object_X_high__1_wide; 0x14133 $8123 D7 81;Object X high, 1 wide	(Fx)					;USE X REGISTER variable as object type
bank5_Special_Objects_Y_Position_F:                                             ;
.word    bank5_Objects_Construction_Routines_Object_Lava_Pit__3_high_bottom_of_screen; 0x14135 $8125 1F 82;Lava Pit, 3 high, bottom of screen	(1x)
.word    bank5_Objects_Construction_Routines_Object_Lava_Pit__3_high_bottom_of_screen; 0x14137 $8127 1F 82;Lava Pit, 3 high, bottom of screen	(2x)
.word    bank5_Objects_Construction_Routines_Object_Lava_Pit__3_high_bottom_of_screen; 0x14139 $8129 1F 82;Lava Pit, 3 high, bottom of screen	(3x)
.word    bank5_Objects_Construction_Routines_Object_Lava_Pit__3_high_bottom_of_screen; 0x1413b $812B 1F 82;Lava Pit, 3 high, bottom of screen	(4x)
.word    bank5_Objects_Construction_Routines_Object_Elevator; 0x1413d $812D 4F 82;Elevator				(5x)
; ---------------------------------------------------------------------------- ;
bank5_code1:                                                                    ;
    TXA                                ; 0x1413f $812F 8A                      ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x14140 $8130 20 85 D3;
bank5_Pointer_table_for_Small_Objects_Construction_Routines:                    ;
.word    bank5_Small_Objects_Construction_Routines_Window_2_high; 0x14143 $8133 6A 82;Window, 2 high
.word    bank5_Small_Objects_Construction_Routines_Ra_Statue_facing_right_2_high; 0x14145 $8135 6E 82;Ra Statue, facing right, 2 high
.word    bank5_Small_Objects_Construction_Routines_Mau_Statue_facing_right_2_high; 0x14147 $8137 72 82;Mau Statue, facing right, 2 high
.word    bank5_Small_Objects_Construction_Routines_Mau_Statue_facing_right_2_high; 0x14149 $8139 72 82;Mau Statue, facing right, 2 high
.word    bank5_Small_Objects_Construction_Routines_Mau_Statue_facing_right_2_high; 0x1414b $813B 72 82;Mau Statue, facing right, 2 high
.word    bank5_Small_Objects_Construction_Routines_Locked_Door; 0x1414d $813D 56 82;Locked Door
L8140     = * + $0001                                                          ;
.word    bank5_Small_Objects_Construction_Routines_Pit_extending_to_bottom_1_wide; 0x1414f $813F 8F 82;Pit, extending to bottom, 1 wide
.word    bank5_Small_Objects_Construction_Routines_Cloud__Long; 0x14151 $8141 B1 82;Cloud - Long
.word    bank5_Small_Objects_Construction_Routines_Cloud__Short; 0x14153 $8143 B7 82;Cloud - Short
.word    bank5_Small_Objects_Construction_Routines_Zelda; 0x14155 $8145 9E 82  ;Zelda
.word    bank5_Small_Objects_Construction_Routines_Fokka_Statue; 0x14157 $8147 7E 82;Fokka Statue
L8149:                                                                          ;
.word    bank5_Small_Objects_Construction_Routines_Cloud__Short; 0x14159 $8149 B7 82;Cloud - Short
.word    bank5_Small_Objects_Construction_Routines_Cloud__Short; 0x1415b $814B B7 82;Cloud - Short
.word    bank5_Small_Objects_Construction_Routines_Cloud__Short; 0x1415d $814D B7 82;Cloud - Short
.word    bank5_Small_Objects_Construction_Routines_Cloud__Short; 0x1415f $814F B7 82;Cloud - Short
.word    bank5_Small_Objects_Construction_Routines_Cloud__Short; 0x14161 $8151 B7 82;Cloud - Short
; ---------------------------------------------------------------------------- ;
bank5_Tables_for_Level_Layers_Data:                                             ;
.byt    $42,$42,$4C,$4C,$42,$42,$4C,$4C; 0x14163 $8153 42 42 4C 4C 42 42 4C 4C ;
.byt    $4C,$40,$40,$4C,$88,$40,$40,$4C; 0x1416b $815B 4C 40 40 4C 88 40 40 4C ;
.byt    $4C,$88,$40,$40                ; 0x14173 $8163 4C 88 40 40             ;
L8167:                                                                          ;
.byt    $48,$C5,$40,$40,$48,$48,$C5,$40; 0x14177 $8167 48 C5 40 40 48 48 C5 40 ;
.byt    $40,$4C,$4C,$40,$40,$4C,$4C,$4C; 0x1417f $816F 40 4C 4C 40 40 4C 4C 4C ;
bank5_Table_for_Level_Layers_Data_pointers:                                     ;
.byt    $53,$5C,$65,$6E                ; 0x14187 $8177 53 5C 65 6E             ;Pointer created from 81 (14184) and a value from this table
; ---------------------------------------------------------------------------- ;
bank5_Build_a_pointer_with_81_and_a_value_from_14177:                           ;
    LDX      $010C                     ; 0x1418b $817B AE 0C 01                ;; Area Palette Group (Type of Area)	; Area Ground Type (0-7)
    LDA      bank5_Table_for_Level_Layers_Data_pointers,x; 0x1418e $817E BD 77 81  ;
    STA      $0C                       ; 0x14191 $8181 85 0C                   ;
    LDA      #$81                      ; 0x14193 $8183 A9 81                   ; A = 81
    STA      $0D                       ; 0x14195 $8185 85 0D                   ;
    LDY      #$08                      ; 0x14197 $8187 A0 08                   ; Y = 08
    LDA      ($0C),y                   ; 0x14199 $8189 B1 0C                   ;
    STA      $010D                     ; 0x1419b $818B 8D 0D 01                ;; Area Bottom Row Tile Code
    RTS                                ; 0x1419e $818E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Tile_Codes_for_Objects_Set_0_Canopy_00:                                   ;
.byt    $4D                            ; 0x1419f $818F 4D                      ;Canopy           X REGISTER =  00
L8190:                                                                          ;
.byt    $4D                            ; 0x141a0 $8190 4D                      ;
bank5_Tile_Codes_for_Objects_Set_0_Bricks____01:                                ;
.byt    $4C,$4C                        ; 0x141a1 $8191 4C 4C                   ;Bricks                         01
bank5_Tile_Codes_for_Objects_Set_0_Breakable_Blocks__02:                        ;
.byt    $4E,$4E                        ; 0x141a3 $8193 4E 4E                   ;Breakable Blocks               02
bank5_Tile_Codes_for_Objects_Set_0_Pedestal_Blocks___03:                        ;
.byt    $C6,$C6                        ; 0x141a5 $8195 C6 C6                   ;Pedestal Blocks                03
bank5_Tile_Codes_for_Objects_Set_0_North_Castle_Bricks__04:                     ;
.byt    $48,$48                        ; 0x141a7 $8197 48 48                   ;North Castle Bricks            04
bank5_Tile_Codes_for_Objects_Set_0_North_Castle_Carpet__05:                     ;
.byt    $85,$85                        ; 0x141a9 $8199 85 85                   ;North Castle Carpet            05
bank5_Tile_Codes_for_Objects_Set_0_Breaking_Bridge___06:                        ;
.byt    $50,$50                        ; 0x141ab $819B 50 50                   ;Breaking Bridge                06
bank5_Tile_Codes_for_Objects_Set_0_Bridge____07:                                ;
.byt    $45,$4F                        ; 0x141ad $819D 45 4F                   ;Bridge                         07
bank5_Tile_Codes_for_Objects_Set_0_Bricks____08:                                ;
.byt    $4C,$4C                        ; 0x141af $819F 4C 4C                   ;Bricks                         08
bank5_Tile_Codes_for_Objects_Set_0_Curtains___09:                               ;
.byt    $C0,$C1                        ; 0x141b1 $81A1 C0 C1                   ;Curtains                       09
bank5_Tile_Codes_for_Objects_Set_0_False_Bricks_pass_through_0A:                ;
.byt    $49,$49                        ; 0x141b3 $81A3 49 49                   ;False Bricks (pass through)    0A
bank5_Tile_Codes_for_Objects_Set_0_Breakable_Blocks__0B:                        ;
.byt    $4E,$4E                        ; 0x141b5 $81A5 4E 4E                   ;Breakable Blocks               0B
bank5_Tile_Codes_for_Objects_Set_0_Breakable_Blocks__0C:                        ;
.byt    $4E,$4E                        ; 0x141b7 $81A7 4E 4E                   ;Breakable Blocks               0C
bank5_Tile_Codes_for_Objects_Set_0_Electric_Barrier_Background_0D:              ;
.byt    $82,$82                        ; 0x141b9 $81A9 82 82                   ;Electric Barrier Background    0D
bank5_Tile_Codes_for_Objects_Set_0_Column____0E:                                ;
.byt    $46,$47                        ; 0x141bb $81AB 46 47                   ;Column                         0E
; ---------------------------------------------------------------------------- ;
bank5_Objects_Construction_Routines_Object_1_high__X_wide:                      ;
L81AE     = * + $0001                                                          ;
    JSR      L8201                     ; 0x141bd $81AD 20 01 82                ;
L81B1     = * + $0001                                                          ;
    JMP      L81BE                     ; 0x141c0 $81B0 4C BE 81                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Objects_Construction_Routines_2_high__X_wide:                             ;
    JSR      bank5_Objects_Construction_Routines_Object_1_high__X_wide; 0x141c3 $81B3 20 AD 81;
    LDA      L0000                     ; 0x141c6 $81B6 A5 00                   ;
    STA      $0112                     ; 0x141c8 $81B8 8D 12 01                ;; Tile Code 0 for Object
    JSR      LDF4C                     ; 0x141cb $81BB 20 4C DF                ;
L81BE:                                                                          ;
    LDA      $0731                     ; 0x141ce $81BE AD 31 07                ;; Level Object Type and Size
    AND      #$0F                      ; 0x141d1 $81C1 29 0F                   ; keep bits .... xxxx
    TAX                                ; 0x141d3 $81C3 AA                      ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x141d4 $81C4 20 44 C9          ;
L81C7:                                                                          ;
    LDA      $0112                     ; 0x141d7 $81C7 AD 12 01                ;; Tile Code 0 for Object
    JSR      bank7_Set_tile_and_move_right_1_column; 0x141da $81CA 20 E7 DE        ;
    DEX                                ; 0x141dd $81CD CA                      ;
    BPL      L81C7                     ; 0x141de $81CE 10 F7                   ;
    RTS                                ; 0x141e0 $81D0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Objects_Construction_Routines_X_high__1_wide_single_tile_type:            ;
    JSR      L8201                     ; 0x141e1 $81D1 20 01 82                ;
    JMP      L81EE                     ; 0x141e4 $81D4 4C EE 81                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Objects_Construction_Routines_Object_X_high__1_wide:                      ;
    JSR      L8201                     ; 0x141e7 $81D7 20 01 82                ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x141ea $81DA 20 44 C9          ;
    LDA      $0112                     ; 0x141ed $81DD AD 12 01                ;; Tile Code 0 for Object
    JSR      LDF56                     ; 0x141f0 $81E0 20 56 DF                ;
    STA      $0730                     ; 0x141f3 $81E3 8D 30 07                ;; Position of Object Placement
    DEC      $0731                     ; 0x141f6 $81E6 CE 31 07                ;; Level Object Type and Size
    LDA      L0000                     ; 0x141f9 $81E9 A5 00                   ;
    STA      $0112                     ; 0x141fb $81EB 8D 12 01                ;; Tile Code 0 for Object
L81EE:                                                                          ;
    LDA      $0731                     ; 0x141fe $81EE AD 31 07                ;; Level Object Type and Size
    AND      #$0F                      ; 0x14201 $81F1 29 0F                   ; keep bits .... xxxx
    TAX                                ; 0x14203 $81F3 AA                      ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x14204 $81F4 20 44 C9          ;
L81F7:                                                                          ;
    LDA      $0112                     ; 0x14207 $81F7 AD 12 01                ;; Tile Code 0 for Object
    JSR      LDF56                     ; 0x1420a $81FA 20 56 DF                ;
    DEX                                ; 0x1420d $81FD CA                      ;
    BPL      L81F7                     ; 0x1420e $81FE 10 F7                   ;
    RTS                                ; 0x14210 $8200 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8201:                                                                          ;
    TXA                                ; 0x14211 $8201 8A                      ;
    ASL                                ; 0x14212 $8202 0A                      ;
    TAX                                ; 0x14213 $8203 AA                      ;
    LDY      #$01                      ; 0x14214 $8204 A0 01                   ; Y = 01
L8207     = * + $0001                                                          ;
    LDA      ($D4),y                   ; 0x14216 $8206 B1 D4                   ;
    ASL                                ; 0x14218 $8208 0A                      ;
    LDA      bank5_Objects_Construction_Routines_Object_1_high__X_wide,x; 0x14219 $8209 BD AD 81; ???
    BCS      L8211                     ; 0x1421c $820C B0 03                   ;
    LDA      bank5_Tile_Codes_for_Objects_Set_0_Canopy_00,x; 0x1421e $820E BD 8F 81;
L8211:                                                                          ;
    STA      $0112                     ; 0x14221 $8211 8D 12 01                ;; Tile Code 0 for Object
    LDA      L81AE,x                   ; 0x14224 $8214 BD AE 81                ; ???
    BCS      L821C                     ; 0x14227 $8217 B0 03                   ;
    LDA      L8190,x                   ; 0x14229 $8219 BD 90 81                ;
L821C:                                                                          ;
    STA      L0000                     ; 0x1422c $821C 85 00                   ;
    RTS                                ; 0x1422e $821E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Objects_Construction_Routines_Object_Lava_Pit__3_high_bottom_of_screen:   ;
    LDA      $0730                     ; 0x1422f $821F AD 30 07                ;; Position of Object Placement
    AND      #$0F                      ; 0x14232 $8222 29 0F                   ; keep bits .... xxxx
    ORA      #$A0                      ; 0x14234 $8224 09 A0                   ; set  bits x.x. ....
    STA      $0730                     ; 0x14236 $8226 8D 30 07                ;; Position of Object Placement
    LDA      #$83                      ; 0x14239 $8229 A9 83                   ; A = 83
    STA      $0112                     ; 0x1423b $822B 8D 12 01                ;; Tile Code 0 for Object
L822E:                                                                          ;
    LDA      $0731                     ; 0x1423e $822E AD 31 07                ;; Level Object Type and Size
    AND      #$0F                      ; 0x14241 $8231 29 0F                   ; keep bits .... xxxx
    TAX                                ; 0x14243 $8233 AA                      ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x14244 $8234 20 44 C9          ;
L8237:                                                                          ;
    LDA      $0112                     ; 0x14247 $8237 AD 12 01                ;; Tile Code 0 for Object
    JSR      bank7_Set_tile_and_move_right_1_column; 0x1424a $823A 20 E7 DE        ;
    DEX                                ; 0x1424d $823D CA                      ;
    BPL      L8237                     ; 0x1424e $823E 10 F7                   ;
    LDA      #$84                      ; 0x14250 $8240 A9 84                   ; A = 84
    STA      $0112                     ; 0x14252 $8242 8D 12 01                ;; Tile Code 0 for Object
    JSR      LDF4C                     ; 0x14255 $8245 20 4C DF                ;
    AND      #$F0                      ; 0x14258 $8248 29 F0                   ; keep bits xxxx ....
    CMP      #$D0                      ; 0x1425a $824A C9 D0                   ;
    BCC      L822E                     ; 0x1425c $824C 90 E0                   ;
    RTS                                ; 0x1425e $824E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Objects_Construction_Routines_Object_Elevator:                            ;
    LDA      $010A                     ; 0x1425f $824F AD 0A 01                ;
    STA      $0757                     ; 0x14262 $8252 8D 57 07                ;; Position of Elevator in Map
    RTS                                ; 0x14265 $8255 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Small_Objects_Construction_Routines_Locked_Door:                          ;
    LDA      $010A                     ; 0x14266 $8256 AD 0A 01                ;
    STA      $0758                     ; 0x14269 $8259 8D 58 07                ;; Position of Locked Door in Map
    RTS                                ; 0x1426c $825C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x1426d $825D 20 44 C9          ;
    LDA      #$40                      ; 0x14270 $8260 A9 40                   ; A = 40
    JSR      LDF56                     ; 0x14272 $8262 20 56 DF                ;
    LDA      #$40                      ; 0x14275 $8265 A9 40                   ; A = 40
    STA      (L000E),y                 ; 0x14277 $8267 91 0E                   ;
    RTS                                ; 0x14279 $8269 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Small_Objects_Construction_Routines_Window_2_high:                        ;
    LDX      #$00                      ; 0x1427a $826A A2 00                   ; X = 00
    BEQ      L8280                     ; 0x1427c $826C F0 12                   ;
bank5_Small_Objects_Construction_Routines_Ra_Statue_facing_right_2_high:        ;
    LDX      #$01                      ; 0x1427e $826E A2 01                   ; X = 01
    BNE      L8280                     ; 0x14280 $8270 D0 0E                   ;
bank5_Small_Objects_Construction_Routines_Mau_Statue_facing_right_2_high:       ;
    LDX      #$02                      ; 0x14282 $8272 A2 02                   ; X = 02
    BNE      L8280                     ; 0x14284 $8274 D0 0A                   ;
bank5_Tile_Codes_for_Window__Ra_Statue__Mau_Statue__Fokka_Statue:               ;
.byt    $80,$44,$43,$4A                ; 0x14286 $8276 80 44 43 4A             ;
L827A:                                                                          ;
.byt    $81,$42,$42,$4B                ; 0x1428a $827A 81 42 42 4B             ;
; ---------------------------------------------------------------------------- ;
bank5_Small_Objects_Construction_Routines_Fokka_Statue:                         ;
    LDX      #$03                      ; 0x1428e $827E A2 03                   ; X = 03
L8280:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x14290 $8280 20 44 C9          ;
    LDA      bank5_Tile_Codes_for_Window__Ra_Statue__Mau_Statue__Fokka_Statue,x; 0x14293 $8283 BD 76 82;
    JSR      LDF56                     ; 0x14296 $8286 20 56 DF                ;
    LDA      L827A,x                   ; 0x14299 $8289 BD 7A 82                ;
    STA      (L000E),y                 ; 0x1429c $828C 91 0E                   ;
    RTS                                ; 0x1429e $828E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Small_Objects_Construction_Routines_Pit_extending_to_bottom_1_wide:       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x1429f $828F 20 44 C9          ;
L8292:                                                                          ;
    LDA      #$40                      ; 0x142a2 $8292 A9 40                   ; A = 40
    JSR      LDF56                     ; 0x142a4 $8294 20 56 DF                ;
    AND      #$F0                      ; 0x142a7 $8297 29 F0                   ; keep bits xxxx ....
    CMP      #$D0                      ; 0x142a9 $8299 C9 D0                   ;
    BCC      L8292                     ; 0x142ab $829B 90 F5                   ;
    RTS                                ; 0x142ad $829D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Small_Objects_Construction_Routines_Zelda:                                ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x142ae $829E 20 44 C9          ;
    LDX      #$01                      ; 0x142b1 $82A1 A2 01                   ; X = 01
    LDA      #$86                      ; 0x142b3 $82A3 A9 86                   ; A = 86
    JMP      L82AA                     ; 0x142b5 $82A5 4C AA 82                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L82A8:                                                                          ;
    LDA      #$87                      ; 0x142b8 $82A8 A9 87                   ; A = 87
L82AA:                                                                          ;
    STA      (L000E),y                 ; 0x142ba $82AA 91 0E                   ;
    INY                                ; 0x142bc $82AC C8                      ;
    DEX                                ; 0x142bd $82AD CA                      ;
    BPL      L82A8                     ; 0x142be $82AE 10 F8                   ;
    RTS                                ; 0x142c0 $82B0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Small_Objects_Construction_Routines_Cloud__Long:                          ;
    LDX      #$00                      ; 0x142c1 $82B1 A2 00                   ; X = 00
    BEQ      L82B9                     ; 0x142c3 $82B3 F0 04                   ;
bank5_Tile_Codes_for_Clouds:                                                    ;
.byt    $C3,$C4                        ; 0x142c5 $82B5 C3 C4                   ;
; ---------------------------------------------------------------------------- ;
bank5_Small_Objects_Construction_Routines_Cloud__Short:                         ;
    LDX      #$01                      ; 0x142c7 $82B7 A2 01                   ; X = 01
L82B9:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x142c9 $82B9 20 44 C9          ;
    LDA      #$C2                      ; 0x142cc $82BC A9 C2                   ; A = C2
    STA      (L000E),y                 ; 0x142ce $82BE 91 0E                   ;
    INY                                ; 0x142d0 $82C0 C8                      ;
    LDA      bank5_Tile_Codes_for_Clouds,x; 0x142d1 $82C1 BD B5 82                ;
    STA      (L000E),y                 ; 0x142d4 $82C4 91 0E                   ;
    RTS                                ; 0x142d6 $82C6 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Table_0_1_for_Area_Objects_Tile_Mappings:                                 ;
.byt    $F4,$F4,$F4,$F4,$F0,$F0,$F1,$F1; 0x142d7 $82C7 F4 F4 F4 F4 F0 F0 F1 F1 ;
.byt    $68,$69,$69,$68,$38,$39,$3A,$3B; 0x142df $82CF 68 69 69 68 38 39 3A 3B ;
.byt    $34,$35,$36,$37,$68,$7C,$69,$7C; 0x142e7 $82D7 34 35 36 37 68 7C 69 7C ;
.byt    $8E,$8F,$90,$91,$A5,$A5,$A6,$A6; 0x142ef $82DF 8E 8F 90 91 A5 A5 A6 A6 ;
.byt    $9A,$9B,$9A,$9B,$64,$65,$65,$64; 0x142f7 $82E7 9A 9B 9A 9B 64 65 65 64 ;
.byt    $40,$41,$42,$43,$48,$49,$4A,$4B; 0x142ff $82EF 40 41 42 43 48 49 4A 4B ;
.byt    $64,$65,$65,$64,$78,$79,$78,$79; 0x14307 $82F7 64 65 65 64 78 79 78 79 ;
.byt    $BA,$BB,$BC,$BD,$7D,$69,$7D,$68; 0x1430f $82FF BA BB BC BD 7D 69 7D 68 ;
.byt    $92,$93,$92,$93                ; 0x14317 $8307 92 93 92 93             ;
bank5_Table_2_for_Area_Objects_Tile_Mappings:                                   ;
.byt    $6A,$6C,$6B,$6D,$6C,$6E,$6D,$6F; 0x1431b $830B 6A 6C 6B 6D 6C 6E 6D 6F ;
.byt    $9E,$9F,$9E,$9F,$98,$99,$98,$99; 0x14323 $8313 9E 9F 9E 9F 98 99 98 99 ;
.byt    $FE,$FE,$FE,$FE,$7F,$FE,$7F,$FE; 0x1432b $831B FE FE FE FE 7F FE 7F FE ;
.byt    $02,$06,$03,$06,$04,$06,$05,$06; 0x14333 $8323 02 06 03 06 04 06 05 06 ;
.byt    $63,$63,$63,$63                ; 0x1433b $832B 63 63 63 63             ;
bank5_Table_3_for_Area_Objects_Tile_Mappings:                                   ;
.byt    $84,$84,$86,$86,$84,$85,$86,$87; 0x1433f $832F 84 84 86 86 84 85 86 87 ;
.byt    $B3,$B4,$B5,$B6,$B5,$B6,$B7,$B8; 0x14347 $8337 B3 B4 B5 B6 B5 B6 B7 B8 ;
.byt    $B7,$B8,$F4,$F4,$7E,$7E,$7E,$7E; 0x1434f $833F B7 B8 F4 F4 7E 7E 7E 7E ;
.byt    $5C,$5D,$5E,$5F                ; 0x14357 $8347 5C 5D 5E 5F             ;
bank5_table_false_wall_maybe:                                                   ;
.byt    $4C,$88,$C5                    ; 0x1435b $834B 4C 88 C5                ;Table for False Wall parameters ? (3 bytes)	;Bank 4 has a similar table, but this one may be used for something else
bank5_Area_Data_Great_Palace0:                                                  ;
.byt    $40,$60,$0E,$08,$D6,$08,$50,$01; 0x1435e $834E 40 60 0E 08 D6 08 50 01 ;
.byt    $55,$02,$D1,$0E,$D2,$08,$50,$01; 0x14366 $8356 55 02 D1 0E D2 08 50 01 ;
.byt    $55,$02,$D1,$0E,$D2,$08,$50,$01; 0x1436e $835E 55 02 D1 0E D2 08 50 01 ;
.byt    $55,$02                        ; 0x14376 $8366 55 02                   ;
L8368:                                                                          ;
.byt    $D1,$0E,$D2,$08,$50,$01,$55,$02; 0x14378 $8368 D1 0E D2 08 50 01 55 02 ;
.byt    $D1,$0E,$A1,$25,$82,$06,$F0,$50; 0x14380 $8370 D1 0E A1 25 82 06 F0 50 ;
.byt    $81,$06,$D6,$08,$50,$01,$55,$02; 0x14388 $8378 81 06 D6 08 50 01 55 02 ;
.byt    $D1,$0E,$80,$D2,$81,$D2,$D1,$08; 0x14390 $8380 D1 0E 80 D2 81 D2 D1 08 ;
.byt    $50,$01,$55,$02,$D1,$0E        ; 0x14398 $8388 50 01 55 02 D1 0E       ;
L838E:                                                                          ;
.byt    $1A,$60,$3E,$C8,$DC,$0C,$D2,$0A; 0x1439e $838E 1A 60 3E C8 DC 0C D2 0A ;
.byt    $D2,$00,$10,$AF,$A0,$4F,$4D,$14; 0x143a6 $8396 D2 00 10 AF A0 4F 4D 14 ;
.byt    $51,$F4,$12                    ; 0x143ae $839E 51 F4 12                ;
L83A1:                                                                          ;
.byt    $A2,$A0,$41,$D2,$07,$D1,$0F    ; 0x143b1 $83A1 A2 A0 41 D2 07 D1 0F    ;
L83A8:                                                                          ;
.byt    $30,$60,$04,$08,$10,$2F,$24,$F4; 0x143b8 $83A8 30 60 04 08 10 2F 24 F4 ;
.byt    $D4,$03,$24,$F5,$D4,$02,$10,$2F; 0x143c0 $83B0 D4 03 24 F5 D4 02 10 2F ;
.byt    $24,$F6,$D4,$01,$24,$F7,$D4,$08; 0x143c8 $83B8 24 F6 D4 01 24 F7 D4 08 ;
.byt    $D4,$0E,$03,$06,$F0,$50,$B0,$90; 0x143d0 $83C0 D4 0E 03 06 F0 50 B0 90 ;
.byt    $01,$06,$B0,$90,$D4,$08,$D4    ; 0x143d8 $83C8 01 06 B0 90 D4 08 D4    ;
L83CF:                                                                          ;
.byt    $01,$10,$2F,$24,$F7,$D4,$02,$24; 0x143df $83CF 01 10 2F 24 F7 D4 02 24 ;
.byt    $F6                            ; 0x143e7 $83D7 F6                      ;
L83D8:                                                                          ;
.byt    $2E,$60,$0E,$08,$84,$23,$D4,$08; 0x143e8 $83D8 2E 60 0E 08 84 23 D4 08 ;
.byt    $20,$30,$30,$30,$80,$70,$11,$29; 0x143f0 $83E0 20 30 30 30 80 70 11 29 ;
.byt    $61,$70,$D1,$07,$D8,$08,$F0,$1F; 0x143f8 $83E8 61 70 D1 07 D8 08 F0 1F ;
.byt    $D3,$0E,$D9,$08,$D1,$0E,$F3,$1F; 0x14400 $83F0 D3 0E D9 08 D1 0E F3 1F ;
.byt    $D7,$08,$D1,$0E,$F8,$14,$D1,$08; 0x14408 $83F8 D7 08 D1 0E F8 14 D1 08 ;
.byt    $D4,$07,$10,$27,$D2,$06        ; 0x14410 $8400 D4 07 10 27 D2 06       ;
L8406:                                                                          ;
.byt    $2A,$60,$0E                    ; 0x14416 $8406 2A 60 0E                ;
L8409:                                                                          ;
.byt    $08,$D2,$00,$74,$31,$44,$31,$90; 0x14419 $8409 08 D2 00 74 31 44 31 90 ;
.byt    $31,$74,$31,$44,$31,$90,$31,$74; 0x14421 $8411 31 74 31 44 31 90 31 74 ;
.byt    $31,$44,$31,$90,$31,$74,$31,$44; 0x14429 $8419 31 44 31 90 31 74 31 44 ;
.byt    $31,$90,$31,$74,$31,$44,$31,$90; 0x14431 $8421 31 90 31 74 31 44 31 90 ;
.byt    $31,$D4,$07,$E3,$00,$DE,$0F    ; 0x14439 $8429 31 D4 07 E3 00 DE 0F    ;
L8430:                                                                          ;
.byt    $42,$60,$0D,$08,$D2,$00,$50,$9F; 0x14440 $8430 42 60 0D 08 D2 00 50 9F ;
.byt    $E1,$00,$52,$B3,$D4,$0D,$D6,$0C; 0x14448 $8438 E1 00 52 B3 D4 0D D6 0C ;
.byt    $D2,$0A,$90,$33,$A0,$33,$72,$3F; 0x14450 $8440 D2 0A 90 33 A0 33 72 3F ;
.byt    $80,$31,$D2,$08,$B0,$06,$B1,$06; 0x14458 $8448 80 31 D2 08 B0 06 B1 06 ;
.byt    $B1,$06,$B1,$06,$B1,$06,$B1,$06; 0x14460 $8450 B1 06 B1 06 B1 06 B1 06 ;
.byt    $B1,$06,$B1,$06,$B1,$06,$B1,$06; 0x14468 $8458 B1 06 B1 06 B1 06 B1 06 ;
.byt    $B1,$06,$B1,$06,$D1,$0A,$80,$31; 0x14470 $8460 B1 06 B1 06 D1 0A 80 31 ;
.byt    $90,$33,$A0,$33,$D4,$0C,$D2,$0E; 0x14478 $8468 90 33 A0 33 D4 0C D2 0E ;
L8470:                                                                          ;
.byt    $D8,$0F                        ; 0x14480 $8470 D8 0F                   ;
L8472:                                                                          ;
.byt    $28,$60,$0E,$08,$E1,$00,$D0,$08; 0x14482 $8472 28 60 0E 08 E1 00 D0 08 ;
.byt    $E2,$00,$D0,$0E,$D2,$0C,$D2,$0A; 0x1448a $847A E2 00 D0 0E D2 0C D2 0A ;
.byt    $90,$99,$D2,$08,$70,$97,$52,$95; 0x14492 $8482 90 99 D2 08 70 97 52 95 ;
.byt    $26,$D8,$21,$D8,$D1,$0E,$A5,$21; 0x1449a $848A 26 D8 21 D8 D1 0E A5 21 ;
.byt    $82,$06,$F0,$50,$81,$06,$D1,$0F; 0x144a2 $8492 82 06 F0 50 81 06 D1 0F ;
L849A:                                                                          ;
.byt    $1C,$60,$0F,$08,$E1,$00,$D0,$08; 0x144aa $849A 1C 60 0F 08 E1 00 D0 08 ;
.byt    $7F,$21,$50,$0A,$E2,$00,$D0,$0E; 0x144b2 $84A2 7F 21 50 0A E2 00 D0 0E ;
.byt    $DA,$0F,$70,$BC,$90,$BB,$0D,$06; 0x144ba $84AA DA 0F 70 BC 90 BB 0D 06 ;
.byt    $F0,$50,$01,$06                ; 0x144c2 $84B2 F0 50 01 06             ;
L84B6:                                                                          ;
.byt    $0C,$60,$80,$08,$E1,$00,$82,$F2; 0x144c6 $84B6 0C 60 80 08 E1 00 82 F2 ;
.byt    $E2,$00,$7D,$F3                ; 0x144ce $84BE E2 00 7D F3             ;
bank5_UNUSED_84C2:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x144d2 $84C2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0x144da $84CA FF FF FF FF FF FF       ;
bank5_Palettes_for_Great_Palace1:                                               ;
.byt    $02,$30,$12,$16,$02,$0F,$28,$38; 0x144e0 $84D0 02 30 12 16 02 0F 28 38 ;
L84D8:                                                                          ;
.byt    $02,$27,$17,$0F,$02,$30,$10,$00; 0x144e8 $84D8 02 27 17 0F 02 30 10 00 ;
bank5_UNUSED_84E0:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x144f0 $84E0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x144f8 $84E8 FF FF FF FF FF FF FF FF ;
bank5_table0:                                                                   ;
.byt    $FF,$00,$10,$30                ; 0x14500 $84F0 FF 00 10 30             ;
bank5_UNUSED_84F4:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x14504 $84F4 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF                ; 0x1450c $84FC FF FF FF FF             ;
; ---------------------------------------------------------------------------- ;
bank5_Pointer_table_for_Objects_Tile_Mappings:                                  ;
.word    bank5_Table_0_1_for_Area_Objects_Tile_Mappings; 0x14510 $8500 C7 82   ;
.word    bank5_Table_0_1_for_Area_Objects_Tile_Mappings; 0x14512 $8502 C7 82   ;
.word    bank5_Table_2_for_Area_Objects_Tile_Mappings; 0x14514 $8504 0B 83     ;
.word    bank5_Table_3_for_Area_Objects_Tile_Mappings; 0x14516 $8506 2F 83     ;
; ---------------------------------------------------------------------------- ;
bank5_table_unused:                                                             ;
.byt    $FF                            ; 0x14518 $8508 FF                      ;
L8509:                                                                          ;
.byt    $FF,$FF,$FF                    ; 0x14519 $8509 FF FF FF                ;
; ---------------------------------------------------------------------------- ;
bank5_code3:                                                                    ;
    PHA                                ; 0x1451c $850C 48                      ;
    AND      #$C0                      ; 0x1451d $850D 29 C0                   ; keep bits xx.. ....
    CLC                                ; 0x1451f $850F 18                      ;
    ROL                                ; 0x14520 $8510 2A                      ;
    ROL                                ; 0x14521 $8511 2A                      ;
    ROL                                ; 0x14522 $8512 2A                      ;
    TAY                                ; 0x14523 $8513 A8                      ;
    DEY                                ; 0x14524 $8514 88                      ;
    PLA                                ; 0x14525 $8515 68                      ;
    CMP      bank5_table_false_wall_maybe,y; 0x14526 $8516 D9 4B 83                ;
    RTS                                ; 0x14529 $8519 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table1:                                                                   ;
.byt    $00                            ; 0x1452a $851A 00                      ;
L851B:                                                                          ;
.byt    $00                            ; 0x1452b $851B 00                      ;
L851C:                                                                          ;
.byt    $00,$00                        ; 0x1452c $851C 00 00                   ;
L851E:                                                                          ;
.byt    $4E                            ; 0x1452e $851E 4E                      ;
L851F:                                                                          ;
.byt    $50                            ; 0x1452f $851F 50                      ;
L8520:                                                                          ;
.byt    $83                            ; 0x14530 $8520 83                      ;
L8521:                                                                          ;
.byt    $00                            ; 0x14531 $8521 00                      ;
L8522:                                                                          ;
.byt    $00                            ; 0x14532 $8522 00                      ;
; ---------------------------------------------------------------------------- ;
bank5_Area_Pointers_Great_Palace:                                               ;
.word    bank5_Area_Data_Great_Palace1 ; 0x14533 $8523 1F 86                   ;
.word    L8681                         ; 0x14535 $8525 81 86                   ;
.word    L83A8                         ; 0x14537 $8527 A8 83                   ;
.word    L86A9                         ; 0x14539 $8529 A9 86                   ;
.word    L8406                         ; 0x1453b $852B 06 84                   ;
.word    L8681                         ; 0x1453d $852D 81 86                   ;
.word    L83A8                         ; 0x1453f $852F A8 83                   ;
.word    L86A9                         ; 0x14541 $8531 A9 86                   ;
.word    L8AFB                         ; 0x14543 $8533 FB 8A                   ;
.word    L8A0A                         ; 0x14545 $8535 0A 8A                   ;
.word    bank5_Area_Data_Great_Palace0 ; 0x14547 $8537 4E 83                   ;
.word    L8430                         ; 0x14549 $8539 30 84                   ;
.word    L8A0A                         ; 0x1454b $853B 0A 8A                   ;
.word    L8472                         ; 0x1454d $853D 72 84                   ;
.word    L8681                         ; 0x1454f $853F 81 86                   ;
.word    L86DB                         ; 0x14551 $8541 DB 86                   ;
.word    L849A                         ; 0x14553 $8543 9A 84                   ;
.word    L849A                         ; 0x14555 $8545 9A 84                   ;
.word    L849A                         ; 0x14557 $8547 9A 84                   ;
.word    L8B15                         ; 0x14559 $8549 15 8B                   ;
.word    L8AFB                         ; 0x1455b $854B FB 8A                   ;
.word    L8681                         ; 0x1455d $854D 81 86                   ;
.word    L83A8                         ; 0x1455f $854F A8 83                   ;
.word    L8AFB                         ; 0x14561 $8551 FB 8A                   ;
.word    L849A                         ; 0x14563 $8553 9A 84                   ;
.word    L8A0A                         ; 0x14565 $8555 0A 8A                   ;
L8558     = * + $0001                                                          ;
.word    bank5_Area_Data_Great_Palace3 ; 0x14567 $8557 D8 89                   ;
.word    L8A0A                         ; 0x14569 $8559 0A 8A                   ;
.word    bank5_Area_Data_Great_Palace3 ; 0x1456b $855B D8 89                   ;
.word    L8B15                         ; 0x1456d $855D 15 8B                   ;
.word    bank5_Area_Data_Great_Palace3 ; 0x1456f $855F D8 89                   ;
.word    L8B15                         ; 0x14571 $8561 15 8B                   ;
.word    L8472                         ; 0x14573 $8563 72 84                   ;
.word    L849A                         ; 0x14575 $8565 9A 84                   ;
.word    L849A                         ; 0x14577 $8567 9A 84                   ;
.word    L8A0A                         ; 0x14579 $8569 0A 8A                   ;
.word    L84B6                         ; 0x1457b $856B B6 84                   ;
.word    L86A9                         ; 0x1457d $856D A9 86                   ;
.word    L86A9                         ; 0x1457f $856F A9 86                   ;
.word    bank5_Area_Data_Great_Palace3 ; 0x14581 $8571 D8 89                   ;
.word    L8B15                         ; 0x14583 $8573 15 8B                   ;
.word    L8A94                         ; 0x14585 $8575 94 8A                   ;
.word    bank5_Area_Data_Great_Palace2 ; 0x14587 $8577 17 88                   ;
.word    L8A0A                         ; 0x14589 $8579 0A 8A                   ;
.word    L83D8                         ; 0x1458b $857B D8 83                   ;
.word    L8A7E                         ; 0x1458d $857D 7E 8A                   ;
.word    L83A8                         ; 0x1458f $857F A8 83                   ;
.word    L8406                         ; 0x14591 $8581 06 84                   ;
.word    L886F                         ; 0x14593 $8583 6F 88                   ;
.word    L8ADF                         ; 0x14595 $8585 DF 8A                   ;
.word    L86A9                         ; 0x14597 $8587 A9 86                   ;
.word    L8406                         ; 0x14599 $8589 06 84                   ;
.word    L886F                         ; 0x1459b $858B 6F 88                   ;
.word    L8665                         ; 0x1459d $858D 65 86                   ;
.word    L838E                         ; 0x1459f $858F 8E 83                   ;
.word    bank5_Area_Data_Great_Palace1 ; 0x145a1 $8591 1F 86                   ;
.word    bank5_Area_Data_Great_Palace1 ; 0x145a3 $8593 1F 86                   ;
.word    bank5_Area_Data_Great_Palace1 ; 0x145a5 $8595 1F 86                   ;
.word    bank5_Area_Data_Great_Palace1 ; 0x145a7 $8597 1F 86                   ;
.word    bank5_Area_Data_Great_Palace1 ; 0x145a9 $8599 1F 86                   ;
.word    bank5_Area_Data_Great_Palace1 ; 0x145ab $859B 1F 86                   ;
.word    L8A5C                         ; 0x145ad $859D 5C 8A                   ;
.word    L8A78                         ; 0x145af $859F 78 8A                   ;
bank5_Enemy_Pointers_Great_Palace:                                              ;
.word    L7001                         ; 0x145b1 $85A1 01 70                   ;Base Offset is 148A0
.word    L7004                         ; 0x145b3 $85A3 04 70                   ;
.word    L700B                         ; 0x145b5 $85A5 0B 70                   ;
.word    L700E                         ; 0x145b7 $85A7 0E 70                   ;
.word    L7013                         ; 0x145b9 $85A9 13 70                   ;
.word    L7018                         ; 0x145bb $85AB 18 70                   ;
.word    L7000                         ; 0x145bd $85AD 00 70                   ;; Enemy Data
.word    L7000                         ; 0x145bf $85AF 00 70                   ;; Enemy Data
.word    L7126                         ; 0x145c1 $85B1 26 71                   ;
.word    L701D                         ; 0x145c3 $85B3 1D 70                   ;
.word    L702A                         ; 0x145c5 $85B5 2A 70                   ;
.word    L7033                         ; 0x145c7 $85B7 33 70                   ;
.word    L7038                         ; 0x145c9 $85B9 38 70                   ;
.word    L703D                         ; 0x145cb $85BB 3D 70                   ;
.word    L7042                         ; 0x145cd $85BD 42 70                   ;
.word    L7129                         ; 0x145cf $85BF 29 71                   ;
.word    L712C                         ; 0x145d1 $85C1 2C 71                   ;
.word    L712F                         ; 0x145d3 $85C3 2F 71                   ;
.word    L7045                         ; 0x145d5 $85C5 45 70                   ;
.word    L7048                         ; 0x145d7 $85C7 48 70                   ;
.word    L7051                         ; 0x145d9 $85C9 51 70                   ;
.word    L7054                         ; 0x145db $85CB 54 70                   ;
.word    L705F                         ; 0x145dd $85CD 5F 70                   ;
.word    L7064                         ; 0x145df $85CF 64 70                   ;
.word    L706F                         ; 0x145e1 $85D1 6F 70                   ;
.word    L7072                         ; 0x145e3 $85D3 72 70                   ;
.word    L7079                         ; 0x145e5 $85D5 79 70                   ;
.word    L7084                         ; 0x145e7 $85D7 84 70                   ;
.word    L708B                         ; 0x145e9 $85D9 8B 70                   ;
.word    L7090                         ; 0x145eb $85DB 90 70                   ;
.word    L7097                         ; 0x145ed $85DD 97 70                   ;
.word    L70A0                         ; 0x145ef $85DF A0 70                   ;
.word    L70A5                         ; 0x145f1 $85E1 A5 70                   ;
.word    L7135                         ; 0x145f3 $85E3 35 71                   ;
.word    L70AA                         ; 0x145f5 $85E5 AA 70                   ;
.word    L70AD                         ; 0x145f7 $85E7 AD 70                   ;
.word    L70BA                         ; 0x145f9 $85E9 BA 70                   ;
.word    L70BF                         ; 0x145fb $85EB BF 70                   ;
.word    L70C2                         ; 0x145fd $85ED C2 70                   ;
.word    L70C5                         ; 0x145ff $85EF C5 70                   ;
.word    L70CE                         ; 0x14601 $85F1 CE 70                   ;
.word    L70D9                         ; 0x14603 $85F3 D9 70                   ;
.word    L70E0                         ; 0x14605 $85F5 E0 70                   ;
.word    L70ED                         ; 0x14607 $85F7 ED 70                   ;
.word    L7132                         ; 0x14609 $85F9 32 71                   ;
.word    L70F4                         ; 0x1460b $85FB F4 70                   ;
.word    L70F9                         ; 0x1460d $85FD F9 70                   ;
.word    L70FE                         ; 0x1460f $85FF FE 70                   ;
.word    L7103                         ; 0x14611 $8601 03 71                   ;
.word    L7106                         ; 0x14613 $8603 06 71                   ;
.word    L710F                         ; 0x14615 $8605 0F 71                   ;
.word    L7114                         ; 0x14617 $8607 14 71                   ;
.word    L711B                         ; 0x14619 $8609 1B 71                   ;
.word    L7120                         ; 0x1461b $860B 20 71                   ;
.word    L7123                         ; 0x1461d $860D 23 71                   ;
.word    L7000                         ; 0x1461f $860F 00 70                   ;; Enemy Data
.word    L7000                         ; 0x14621 $8611 00 70                   ;; Enemy Data
.word    L7000                         ; 0x14623 $8613 00 70                   ;; Enemy Data
.word    L7000                         ; 0x14625 $8615 00 70                   ;; Enemy Data
.word    L7000                         ; 0x14627 $8617 00 70                   ;; Enemy Data
.word    L7000                         ; 0x14629 $8619 00 70                   ;; Enemy Data
.word    L7000                         ; 0x1462b $861B 00 70                   ;; Enemy Data
.word    L7000                         ; 0x1462d $861D 00 70                   ;; Enemy Data
; ---------------------------------------------------------------------------- ;
bank5_Area_Data_Great_Palace1:                                                  ;
.byt    $46,$60,$90,$40,$32,$07,$A4,$21; 0x1462f $861F 46 60 90 40 32 07 A4 21 ;
.byt    $50,$08,$92,$9F,$82,$40,$82,$40; 0x14637 $8627 50 08 92 9F 82 40 82 40 ;
.byt    $82,$40,$D2,$00,$D1,$08,$20,$E6; 0x1463f $862F 82 40 D2 00 D1 08 20 E6 ;
.byt    $21,$E6,$21,$E6,$21,$E6,$21,$E6; 0x14647 $8637 21 E6 21 E6 21 E6 21 E6 ;
.byt    $21,$E6,$22,$F6,$90,$9F,$23,$F6; 0x1464f $863F 21 E6 22 F6 90 9F 23 F6 ;
L8647:                                                                          ;
.byt    $23,$F6,$23,$F6,$23,$F6,$23,$F6; 0x14657 $8647 23 F6 23 F6 23 F6 23 F6 ;
.byt    $91,$9C,$22,$F6,$23,$F6,$23,$F6; 0x1465f $864F 91 9C 22 F6 23 F6 23 F6 ;
.byt    $D5,$0D,$A0,$2A,$D2,$0E,$80,$06; 0x14667 $8657 D5 0D A0 2A D2 0E 80 06 ;
.byt    $F0,$50,$81,$06,$81,$96        ; 0x1466f $865F F0 50 81 06 81 96       ;
L8665:                                                                          ;
.byt    $1C,$60,$0E,$08,$D8,$80,$63,$F4; 0x14675 $8665 1C 60 0E 08 D8 80 63 F4 ;
.byt    $62,$F4,$62,$F4,$62,$F4,$A3,$47; 0x1467d $866D 62 F4 62 F4 62 F4 A3 47 ;
.byt    $92,$43,$68,$F4,$62,$F4,$62,$F4; 0x14685 $8675 92 43 68 F4 62 F4 62 F4 ;
.byt    $62,$F4,$D4,$0E                ; 0x1468d $867D 62 F4 D4 0E             ;
L8681:                                                                          ;
.byt    $28,$60,$0F,$08,$D2,$08,$80,$92; 0x14691 $8681 28 60 0F 08 D2 08 80 92 ;
.byt    $A0,$28,$65,$9F,$80,$06,$F0,$50; 0x14699 $8689 A0 28 65 9F 80 06 F0 50 ;
.byt    $81,$06,$81,$91,$6E,$96,$67,$B1; 0x146a1 $8691 81 06 81 91 6E 96 67 B1 ;
.byt    $62,$9F,$80,$F2,$E3,$00,$70,$31; 0x146a9 $8699 62 9F 80 F2 E3 00 70 31 ;
.byt    $80,$33,$90,$35,$A0,$37,$DE,$0E; 0x146b1 $86A1 80 33 90 35 A0 37 DE 0E ;
L86A9:                                                                          ;
.byt    $32,$60,$0A,$08,$80,$23,$90,$93; 0x146b9 $86A9 32 60 0A 08 80 23 90 93 ;
.byt    $D4,$00,$70,$8F,$F0,$1F,$16,$2B; 0x146c1 $86B1 D4 00 70 8F F0 1F 16 2B ;
.byt    $22,$97,$42,$93,$76,$8F,$F0,$1F; 0x146c9 $86B9 22 97 42 93 76 8F F0 1F ;
.byt    $16,$2B,$22,$97,$42,$93,$86,$27; 0x146d1 $86C1 16 2B 22 97 42 93 86 27 ;
.byt    $90,$97,$16,$2B,$22,$97,$70,$8F; 0x146d9 $86C9 90 97 16 2B 22 97 70 8F ;
.byt    $F0,$1F,$42,$93,$DE,$0A,$80,$23; 0x146e1 $86D1 F0 1F 42 93 DE 0A 80 23 ;
.byt    $90,$93                        ; 0x146e9 $86D9 90 93                   ;
L86DB:                                                                          ;
.byt    $2A,$60,$07,$08,$D4,$00,$30,$7B; 0x146eb $86DB 2A 60 07 08 D4 00 30 7B ;
.byt    $F0,$1F,$5C,$77,$F4,$1F,$74,$77; 0x146f3 $86E3 F0 1F 5C 77 F4 1F 74 77 ;
.byt    $98,$77,$F4,$15,$D6,$03,$D2,$05; 0x146fb $86EB 98 77 F4 15 D6 03 D2 05 ;
.byt    $D2,$07,$D2,$00,$D2,$0E,$05,$06; 0x14703 $86F3 D2 07 D2 00 D2 0E 05 06 ;
.byt    $B0,$90,$F0,$50,$01,$06,$B0,$90; 0x1470b $86FB B0 90 F0 50 01 06 B0 90 ;
.byt    $D1,$0F                        ; 0x14713 $8703 D1 0F                   ;
bank5_UNUSED_8705:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x14715 $8705 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1471d $870D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0x14725 $8715 FF FF FF FF FF FF       ;
bank5_Room_Connectivity_Data:                                                   ;
.byt    $FC,$0A,$00,$FC,$FC,$1A,$00,$08; 0x1472b $871B FC 0A 00 FC FC 1A 00 08 ;
.byt    $07,$00,$03,$0C,$0B,$00,$00,$10; 0x14733 $8723 07 00 03 0C 0B 00 00 10 ;
.byt    $0F,$00,$00,$FC,$FC,$24,$00,$18; 0x1473b $872B 0F 00 00 FC FC 24 00 18 ;
.byt    $17,$00,$04,$1C,$1B,$00,$00,$20; 0x14743 $8733 17 00 04 1C 1B 00 00 20 ;
.byt    $1F,$30,$00,$FC,$FC,$00,$14,$28; 0x1474b $873B 1F 30 00 FC FC 00 14 28 ;
.byt    $27,$3F,$00,$2C,$2B,$00,$92,$FC; 0x14753 $8743 27 3F 00 2C 2B 00 92 FC ;
.byt    $FC,$00,$23,$34,$33,$43,$00,$FC; 0x1475b $874B FC 00 23 34 33 43 00 FC ;
.byt    $FC,$47,$00,$3C,$3B,$00,$2A,$FC; 0x14763 $8753 FC 47 00 3C 3B 00 2A FC ;
.byt    $FC,$4B,$37,$FC,$FC,$4C,$38,$FC; 0x1476b $875B FC 4B 37 FC FC 4C 38 FC ;
.byt    $FC,$5A,$43,$FC,$FC,$00,$47,$50; 0x14773 $8763 FC 5A 43 FC FC 00 47 50 ;
.byt    $4F,$63,$12,$FC,$FC,$64,$00,$58; 0x1477b $876B 4F 63 12 FC FC 64 00 58 ;
.byt    $57,$00,$4B,$5C,$5B,$6C,$00,$FC; 0x14783 $8773 57 00 4B 5C 5B 6C 00 FC ;
.byt    $FC,$8C,$53,$FC,$FC,$00,$54,$68; 0x1478b $877B FC 8C 53 FC FC 00 54 68 ;
.byt    $67,$74,$00,$FC,$FC,$00,$5F,$70; 0x14793 $8783 67 74 00 FC FC 00 5F 70 ;
.byt    $6F,$7C,$00,$FC,$FC,$00,$6B,$78; 0x1479b $878B 6F 7C 00 FC FC 00 6B 78 ;
.byt    $77,$87,$00,$FC,$FC,$00,$73,$80; 0x147a3 $8793 77 87 00 FC FC 00 73 80 ;
L879B:                                                                          ;
.byt    $7F,$8B,$00,$FC,$FC,$A0,$7B,$FC; 0x147ab $879B 7F 8B 00 FC FC A0 7B FC ;
.byt    $FC,$AA,$83,$FC,$FC,$00,$63,$90; 0x147b3 $87A3 FC AA 83 FC FC 00 63 90 ;
.byt    $8F,$00,$00,$94,$93,$00,$00,$98; 0x147bb $87AB 8F 00 00 94 93 00 00 98 ;
.byt    $97,$00,$00,$9C,$9B,$AC,$00,$FC; 0x147c3 $87B3 97 00 00 9C 9B AC 00 FC ;
.byt    $FC,$00,$87,$A4,$A3,$00,$B6,$A8; 0x147cb $87BB FC 00 87 A4 A3 00 B6 A8 ;
.byt    $A7,$BA,$8B,$FC,$FC,$00,$9F,$B0; 0x147d3 $87C3 A7 BA 8B FC FC 00 9F B0 ;
.byt    $AF,$00,$00,$B4,$B3,$00,$C2,$B8; 0x147db $87CB AF 00 00 B4 B3 00 C2 B8 ;
.byt    $B7,$00,$AA,$BC,$BB,$00,$00,$FC; 0x147e3 $87D3 B7 00 AA BC BB 00 00 FC ;
.byt    $FC,$00,$00,$C4,$C3,$00,$D2,$C8; 0x147eb $87DB FC 00 00 C4 C3 00 D2 C8 ;
.byt    $C7,$00,$00,$CC,$CB,$00,$00,$FC; 0x147f3 $87E3 C7 00 00 CC CB 00 00 FC ;
.byt    $FC,$00,$00,$D4,$D3,$00,$00,$D8; 0x147fb $87EB FC 00 00 D4 D3 00 00 D8 ;
L87F3:                                                                          ;
.byt    $D7,$00,$00,$FC,$FC,$00,$00,$FC; 0x14803 $87F3 D7 00 00 FC FC 00 00 FC ;
.byt    $FC,$00,$00,$FC,$FC,$00,$00,$FC; 0x1480b $87FB FC 00 00 FC FC 00 00 FC ;
.byt    $FC,$00,$00,$FC,$FC,$00,$00,$FC; 0x14813 $8803 FC 00 00 FC FC 00 00 FC ;
.byt    $FC,$00,$00,$FC,$FC,$00,$00,$FC; 0x1481b $880B FC 00 00 FC FC 00 00 FC ;
.byt    $FC,$00,$00,$FC                ; 0x14823 $8813 FC 00 00 FC             ;
bank5_Area_Data_Great_Palace2:                                                  ;
.byt    $58,$60,$0A,$08,$70,$93,$90,$93; 0x14827 $8817 58 60 0A 08 70 93 90 93 ;
.byt    $D2,$08,$F2,$11,$72,$91,$90,$91; 0x1482f $881F D2 08 F2 11 72 91 90 91 ;
.byt    $F2,$11,$72,$91,$90,$91,$F2,$11; 0x14837 $8827 F2 11 72 91 90 91 F2 11 ;
.byt    $72,$91,$90,$91,$F2,$11,$72,$91; 0x1483f $882F 72 91 90 91 F2 11 72 91 ;
.byt    $90,$91,$F2,$11,$82,$21,$90,$91; 0x14847 $8837 90 91 F2 11 82 21 90 91 ;
.byt    $F2,$11,$82,$21,$90,$91,$F2,$11; 0x1484f $883F F2 11 82 21 90 91 F2 11 ;
.byt    $92,$91,$F2,$11,$A2,$2B,$D2,$0E; 0x14857 $8847 92 91 F2 11 A2 2B D2 0E ;
.byt    $03,$06,$F0,$50,$01,$06,$D4,$08; 0x1485f $884F 03 06 F0 50 01 06 D4 08 ;
.byt    $82,$31,$90,$31,$F0,$1F,$62,$31; 0x14867 $8857 82 31 90 31 F0 1F 62 31 ;
.byt    $70,$31,$42,$3B,$50,$3B,$68,$33; 0x1486f $885F 70 31 42 3B 50 3B 68 33 ;
.byt    $70,$31,$80,$31,$90,$33,$D4,$0F; 0x14877 $8867 70 31 80 31 90 33 D4 0F ;
L886F:                                                                          ;
.byt    $22,$60,$0F,$08,$D2,$08,$82,$37; 0x1487f $886F 22 60 0F 08 D2 08 82 37 ;
.byt    $93,$D1,$91,$D1,$64,$37,$73,$D3; 0x14887 $8877 93 D1 91 D1 64 37 73 D3 ;
.byt    $71,$D3,$44,$37,$53,$D5,$51,$D5; 0x1488f $887F 71 D3 44 37 53 D5 51 D5 ;
.byt    $D4,$0E,$D6,$88,$DC,$0E,$D6,$08; 0x14897 $8887 D4 0E D6 88 DC 0E D6 08 ;
.byt    $D8,$0E                        ; 0x1489f $888F D8 0E                   ;
bank5_UNUSED_8891:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x148a1 $8891 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0x148a9 $8899 FF FF FF FF FF FF FF    ;
bank5_Enemy_Data_Great_Palace:                                                  ;
.byt    $01,$03,$01,$60,$07,$7A,$44,$7D; 0x148b0 $88A0 01 03 01 60 07 7A 44 7D ;
.byt    $44,$7F,$44,$03,$4D,$1D,$05,$0F; 0x148b8 $88A8 44 7F 44 03 4D 1D 05 0F ;
.byt    $0F,$00,$CF,$05,$5B,$5D,$1B,$D5; 0x148c0 $88B0 0F 00 CF 05 5B 5D 1B D5 ;
.byt    $05,$0B,$56,$04,$96,$0D,$65,$51; 0x148c8 $88B8 05 0B 56 04 96 0D 65 51 ;
.byt    $77,$51,$79,$51,$70,$D1,$72,$D1; 0x148d0 $88C0 77 51 79 51 70 D1 72 D1 ;
.byt    $64,$D1,$09,$20,$54,$28,$54,$3E; 0x148d8 $88C8 64 D1 09 20 54 28 54 3E ;
.byt    $45,$22,$D4,$05,$21,$5D,$38,$9D; 0x148e0 $88D0 45 22 D4 05 21 5D 38 9D ;
.byt    $05,$0B,$56,$04,$96,$05,$78,$59; 0x148e8 $88D8 05 0B 56 04 96 05 78 59 ;
.byt    $47,$84,$03,$19,$5D,$03,$12,$57; 0x148f0 $88E0 47 84 03 19 5D 03 12 57 ;
.byt    $09,$0B,$56,$71,$83,$74,$83,$04; 0x148f8 $88E8 09 0B 56 71 83 74 83 04 ;
.byt    $96,$03,$35,$D9,$0B,$77,$51,$38; 0x14900 $88F0 96 03 35 D9 0B 77 51 38 ;
.byt    $51,$73,$91,$52,$D1,$76,$D1,$05; 0x14908 $88F8 51 73 91 52 D1 76 D1 05 ;
.byt    $4D,$1D,$5A,$DD,$0B,$7E,$11,$7A; 0x14910 $8900 4D 1D 5A DD 0B 7E 11 7A ;
.byt    $51,$0B,$56,$04,$96,$35,$C5,$03; 0x14918 $8908 51 0B 56 04 96 35 C5 03 ;
.byt    $47,$40,$07,$65,$44,$79,$44,$75; 0x14920 $8910 47 40 07 65 44 79 44 75 ;
.byt    $9A,$0B,$5D,$03,$51,$43,$55,$43; 0x14928 $8918 9A 0B 5D 03 51 43 55 43 ;
.byt    $5A,$84,$5D,$84,$07,$65,$44,$79; 0x14930 $8920 5A 84 5D 84 07 65 44 79 ;
.byt    $44,$75,$9A,$05,$5E,$11,$79,$95; 0x14938 $8928 44 75 9A 05 5E 11 79 95 ;
.byt    $07,$18,$54,$74,$9D,$10,$D4,$09; 0x14940 $8930 07 18 54 74 9D 10 D4 09 ;
.byt    $7C,$15,$77,$55,$52,$84,$5A,$84; 0x14948 $8938 7C 15 77 55 52 84 5A 84 ;
.byt    $05,$14,$97,$7C,$9D,$05,$78,$5A; 0x14950 $8940 05 14 97 7C 9D 05 78 5A ;
.byt    $18,$97,$03,$3F,$45,$0D,$72,$11; 0x14958 $8948 18 97 03 3F 45 0D 72 11 ;
.byt    $7D,$11,$65,$54,$32,$C5,$64,$D4; 0x14960 $8950 7D 11 65 54 32 C5 64 D4 ;
.byt    $19,$D1,$05,$0B,$56,$04,$96,$03; 0x14968 $8958 19 D1 05 0B 56 04 96 03 ;
.byt    $07,$5E,$03,$4C,$59,$09,$0B,$56; 0x14970 $8960 07 5E 03 4C 59 09 0B 56 ;
.byt    $52,$84,$04,$96,$5A,$84,$0B,$7A; 0x14978 $8968 52 84 04 96 5A 84 0B 7A ;
.byt    $43,$0B,$56,$7E,$43,$72,$83,$04; 0x14980 $8970 43 0B 56 7E 43 72 83 04 ;
.byt    $96,$07,$28,$19,$3D,$04,$36,$44; 0x14988 $8978 96 07 28 19 3D 04 36 44 ;
.byt    $0D,$47,$04,$4B,$04,$42,$44,$57; 0x14990 $8980 0D 47 04 4B 04 42 44 57 ;
.byt    $44,$6F,$44,$6C,$C0,$07,$65,$43; 0x14998 $8988 44 6F 44 6C C0 07 65 43 ;
.byt    $70,$9A,$64,$C3,$05,$0B,$56,$04; 0x149a0 $8990 70 9A 64 C3 05 0B 56 04 ;
.byt    $96,$05,$4A,$1D,$61,$44,$05,$5B; 0x149a8 $8998 96 05 4A 1D 61 44 05 5B ;
L89A0:                                                                          ;
.byt    $5A,$1A,$D5,$03,$17,$DE,$09,$6C; 0x149b0 $89A0 5A 1A D5 03 17 DE 09 6C ;
.byt    $15,$2C,$43,$21,$83,$63,$D5,$05; 0x149b8 $89A8 15 2C 43 21 83 63 D5 05 ;
.byt    $0F,$0F,$00,$CF,$07,$2F,$57,$43; 0x149c0 $89B0 0F 0F 00 CF 07 2F 57 43 ;
.byt    $97,$0C,$C0,$05,$77,$05,$77,$45; 0x149c8 $89B8 97 0C C0 05 77 05 77 45 ;
.byt    $03,$21,$A2,$03,$1D,$63,$03,$71; 0x149d0 $89C0 03 21 A2 03 1D 63 03 71 ;
.byt    $DD,$03,$70,$D1,$03,$3F,$45,$03; 0x149d8 $89C8 DD 03 70 D1 03 3F 45 03 ;
.byt    $3F,$45,$03,$18,$05,$03,$3F,$45; 0x149e0 $89D0 3F 45 03 18 05 03 3F 45 ;
bank5_Area_Data_Great_Palace3:                                                  ;
.byt    $32,$60,$0B,$08,$80,$27,$90,$97; 0x149e8 $89D8 32 60 0B 08 80 27 90 97 ;
.byt    $D4,$09,$D4,$08,$80,$7E,$F0,$1F; 0x149f0 $89E0 D4 09 D4 08 80 7E F0 1F ;
.byt    $8F,$72,$F1,$11,$22,$2B,$80,$2B; 0x149f8 $89E8 8F 72 F1 11 22 2B 80 2B ;
.byt    $90,$9B,$34,$23,$F8,$19,$82,$29; 0x14a00 $89F0 90 9B 34 23 F8 19 82 29 ;
.byt    $D8,$09,$90,$91,$D2,$0B,$A0,$24; 0x14a08 $89F8 D8 09 90 91 D2 0B A0 24 ;
.byt    $D2,$0E,$83,$06,$F0,$50,$81,$06; 0x14a10 $8A00 D2 0E 83 06 F0 50 81 06 ;
.byt    $D1,$0F                        ; 0x14a18 $8A08 D1 0F                   ;
L8A0A:                                                                          ;
.byt    $52,$60,$0F,$08,$D2,$0E,$05,$06; 0x14a1a $8A0A 52 60 0F 08 D2 0E 05 06 ;
.byt    $B0,$90,$F0,$50,$01,$06,$B0,$90; 0x14a22 $8A12 B0 90 F0 50 01 06 B0 90 ;
.byt    $D4,$08,$43,$00,$25,$D8,$31,$30; 0x14a2a $8A1A D4 08 43 00 25 D8 31 30 ;
.byt    $60,$30,$90,$30,$21,$D8,$21,$30; 0x14a32 $8A22 60 30 90 30 21 D8 21 30 ;
.byt    $50,$30,$80,$30,$21,$D8,$41,$30; 0x14a3a $8A2A 50 30 80 30 21 D8 41 30 ;
.byt    $70,$30,$A0,$30,$21,$D8,$46,$00; 0x14a42 $8A32 70 30 A0 30 21 D8 46 00 ;
.byt    $44,$00,$44,$00,$27,$D8,$41,$30; 0x14a4a $8A3A 44 00 44 00 27 D8 41 30 ;
.byt    $70,$30,$A0,$30,$21,$D8,$21,$30; 0x14a52 $8A42 70 30 A0 30 21 D8 21 30 ;
.byt    $50,$30,$80,$30,$21,$D8,$31,$30; 0x14a5a $8A4A 50 30 80 30 21 D8 31 30 ;
.byt    $60,$30,$90,$30,$21,$D8,$45,$00; 0x14a62 $8A52 60 30 90 30 21 D8 45 00 ;
.byt    $D4,$0E                        ; 0x14a6a $8A5A D4 0E                   ;
L8A5C:                                                                          ;
.byt    $1C,$00,$28,$50,$20,$AF,$A0,$5F; 0x14a6c $8A5C 1C 00 28 50 20 AF A0 5F ;
.byt    $21,$F7,$91,$5B,$81,$59,$A0,$69; 0x14a74 $8A64 21 F7 91 5B 81 59 A0 69 ;
.byt    $21,$F5,$90,$67,$81,$65,$72,$09; 0x14a7c $8A6C 21 F5 90 67 81 65 72 09 ;
.byt    $24,$F5,$23,$F7                ; 0x14a84 $8A74 24 F5 23 F7             ;
L8A78:                                                                          ;
.byt    $06,$00,$28,$50,$20,$AF        ; 0x14a88 $8A78 06 00 28 50 20 AF       ;
L8A7E:                                                                          ;
.byt    $16,$60,$05,$08,$10,$23,$D4,$08; 0x14a8e $8A7E 16 60 05 08 10 23 D4 08 ;
.byt    $60,$9E,$6F,$9F,$DD,$80,$A0,$3F; 0x14a96 $8A86 60 9E 6F 9F DD 80 A0 3F ;
.byt    $63,$9C,$B1,$B1,$DC,$0E        ; 0x14a9e $8A8E 63 9C B1 B1 DC 0E       ;
L8A94:                                                                          ;
.byt    $4B,$60,$0E,$08,$D4,$08,$60,$9B; 0x14aa4 $8A94 4B 60 0E 08 D4 08 60 9B ;
.byt    $42,$00,$44,$00                ; 0x14aac $8A9C 42 00 44 00             ;
L8AA0:                                                                          ;
.byt    $44,$00,$62,$B3,$42,$00,$62,$C9; 0x14ab0 $8AA0 44 00 62 B3 42 00 62 C9 ;
.byt    $42,$00,$44,$00,$92,$95,$42,$00; 0x14ab8 $8AA8 42 00 44 00 92 95 42 00 ;
.byt    $60,$93,$80,$23,$64,$B3,$40,$00; 0x14ac0 $8AB0 60 93 80 23 64 B3 40 00 ;
.byt    $B0,$06,$B1,$06,$B1,$06,$B1,$06; 0x14ac8 $8AB8 B0 06 B1 06 B1 06 B1 06 ;
.byt    $41,$00,$60,$C7,$B0,$06,$B1,$06; 0x14ad0 $8AC0 41 00 60 C7 B0 06 B1 06 ;
.byt    $B1,$06,$B1,$06,$41,$00,$B0,$06; 0x14ad8 $8AC8 B1 06 B1 06 41 00 B0 06 ;
.byt    $B1,$06,$B1,$06,$B1,$06,$D1,$0F; 0x14ae0 $8AD0 B1 06 B1 06 B1 06 D1 0F ;
.byt    $D4,$08,$92,$0F,$12,$D8,$0E    ; 0x14ae8 $8AD8 D4 08 92 0F 12 D8 0E    ;
L8ADF:                                                                          ;
.byt    $1C,$60,$86,$08,$D6,$80,$50,$7E; 0x14aef $8ADF 1C 60 86 08 D6 80 50 7E ;
.byt    $F0,$1F,$5F,$7F,$F1,$1E,$5F,$7F; 0x14af7 $8AE7 F0 1F 5F 7F F1 1E 5F 7F ;
.byt    $90,$92,$91,$06,$F2,$1F,$5D,$74; 0x14aff $8AEF 90 92 91 06 F2 1F 5D 74 ;
.byt    $F3,$11,$D2,$86                ; 0x14b07 $8AF7 F3 11 D2 86             ;
L8AFB:                                                                          ;
.byt    $1A,$60,$80,$08,$7B,$F3,$7C,$F3; 0x14b0b $8AFB 1A 60 80 08 7B F3 7C F3 ;
.byt    $E3,$00,$A4,$22,$51,$0A,$70,$20; 0x14b13 $8B03 E3 00 A4 22 51 0A 70 20 ;
.byt    $D1,$0E,$81,$06,$F0,$50,$81,$06; 0x14b1b $8B0B D1 0E 81 06 F0 50 81 06 ;
.byt    $D1,$0F                        ; 0x14b23 $8B13 D1 0F                   ;
L8B15:                                                                          ;
.byt    $1C,$60,$0F,$08,$D2,$0E,$05,$06; 0x14b25 $8B15 1C 60 0F 08 D2 0E 05 06 ;
.byt    $B0,$90,$F0,$50,$01,$06,$B0,$90; 0x14b2d $8B1D B0 90 F0 50 01 06 B0 90 ;
.byt    $D8,$00,$10,$AF,$E2,$00,$10,$AF; 0x14b35 $8B25 D8 00 10 AF E2 00 10 AF ;
.byt    $E3,$00,$10,$AF                ; 0x14b3d $8B2D E3 00 10 AF             ;
bank5_UNUSED_8B31:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x14b41 $8B31 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x14b49 $8B39 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x14b51 $8B41 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0x14b59 $8B49 FF FF FF FF FF FF FF    ;
; ---------------------------------------------------------------------------- ;
bank5_routines_related_to_Ending_sequence:                                      ;
    LDA      #$05                      ; 0x14b60 $8B50 A9 05                   ; A = 05
    STA      $0769                     ; 0x14b62 $8B52 8D 69 07                ; Bank to switch to
    LDA      #$05                      ; 0x14b65 $8B55 A9 05                   ; A = 05
    STA      $0707                     ; 0x14b67 $8B57 8D 07 07                ; Current World
    LDA      #$3E                      ; 0x14b6a $8B5A A9 3E                   ; A = 3E
    LDY      $0761                     ; 0x14b6c $8B5C AC 61 07                ;
    BNE      L8B63                     ; 0x14b6f $8B5F D0 02                   ;
    LDA      #$3D                      ; 0x14b71 $8B61 A9 3D                   ; A = 3D
L8B63:                                                                          ;
    STA      $0561                     ; 0x14b73 $8B63 8D 61 05                ; Area Code
    JMP      LC722                     ; 0x14b76 $8B66 4C 22 C7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8B69:                                                                          ;
    LDY      $0761                     ; 0x14b79 $8B69 AC 61 07                ;
    BNE      L8B77                     ; 0x14b7c $8B6C D0 09                   ;
    LDX      #$04                      ; 0x14b7e $8B6E A2 04                   ; X = 04
    STX      $EB                       ; 0x14b80 $8B70 86 EB                   ; Music
    LDA      #$06                      ; 0x14b82 $8B72 A9 06                   ; A = 06
    STA      $0707                     ; 0x14b84 $8B74 8D 07 07                ; Current World
L8B77:                                                                          ;
    LDA      $2002                     ; 0x14b87 $8B77 AD 02 20                ;
    LDA      $FF                       ; 0x14b8a $8B7A A5 FF                   ;; Sprite Bank ?
    AND      #$FB                      ; 0x14b8c $8B7C 29 FB                   ; keep bits xxxx x.xx
    STA      $2000                     ; 0x14b8e $8B7E 8D 00 20                ;
    LDA      #$20                      ; 0x14b91 $8B81 A9 20                   ; A = 20
    STA      $2006                     ; 0x14b93 $8B83 8D 06 20                ;
    LDA      #$00                      ; 0x14b96 $8B86 A9 00                   ; A = 00
    STA      $2006                     ; 0x14b98 $8B88 8D 06 20                ;
    LDY      #$03                      ; 0x14b9b $8B8B A0 03                   ; Y = 03
    LDA      #$9A                      ; 0x14b9d $8B8D A9 9A                   ; A = 9A
L8B8F:                                                                          ;
    LDX      #$20                      ; 0x14b9f $8B8F A2 20                   ; X = 20
L8B91:                                                                          ;
    STA      $2007                     ; 0x14ba1 $8B91 8D 07 20                ;
    DEX                                ; 0x14ba4 $8B94 CA                      ;
    BNE      L8B91                     ; 0x14ba5 $8B95 D0 FA                   ;
    EOR      #$01                      ; 0x14ba7 $8B97 49 01                   ; flip bits .... ...x
    DEY                                ; 0x14ba9 $8B99 88                      ;
    BPL      L8B8F                     ; 0x14baa $8B9A 10 F3                   ;
    LDA      #$23                      ; 0x14bac $8B9C A9 23                   ; A = 23
L8BA0     = * + $0002                                                          ;
    STA      $2006                     ; 0x14bae $8B9E 8D 06 20                ;
    LDA      #$C0                      ; 0x14bb1 $8BA1 A9 C0                   ; A = C0
    STA      $2006                     ; 0x14bb3 $8BA3 8D 06 20                ;
    LDY      #$08                      ; 0x14bb6 $8BA6 A0 08                   ; Y = 08
L8BA8:                                                                          ;
    LDA      #$55                      ; 0x14bb8 $8BA8 A9 55                   ; A = 55
    STA      $2007                     ; 0x14bba $8BAA 8D 07 20                ;
    DEY                                ; 0x14bbd $8BAD 88                      ;
    BNE      L8BA8                     ; 0x14bbe $8BAE D0 F8                   ;
    JMP      L9255                     ; 0x14bc0 $8BB0 4C 55 92                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_ppu_command:                                                              ;
.byt    $3F,$1C,$04,$0F,$30,$30,$30,$FF; 0x14bc3 $8BB3 3F 1C 04 0F 30 30 30 FF ;
bank5_table2:                                                                   ;
.byt    $17,$27,$37,$37                ; 0x14bcb $8BBB 17 27 37 37             ;
; ---------------------------------------------------------------------------- ;
bank5_code4:                                                                    ;
    LDX      $0301                     ; 0x14bcf $8BBF AE 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDY      #$00                      ; 0x14bd2 $8BC2 A0 00                   ; Y = 00
L8BC4:                                                                          ;
    LDA      bank5_ppu_command,y       ; 0x14bd4 $8BC4 B9 B3 8B                ;
    STA      L0302,x                   ; 0x14bd7 $8BC7 9D 02 03                ;
    INX                                ; 0x14bda $8BCA E8                      ;
    INY                                ; 0x14bdb $8BCB C8                      ;
    CPY      #$08                      ; 0x14bdc $8BCC C0 08                   ;
    BNE      L8BC4                     ; 0x14bde $8BCE D0 F4                   ;
    LDA      $12                       ; 0x14be0 $8BD0 A5 12                   ; Permanent Frame Counter (ascending)
    LSR                                ; 0x14be2 $8BD2 4A                      ;
    LSR                                ; 0x14be3 $8BD3 4A                      ;
    AND      #$03                      ; 0x14be4 $8BD4 29 03                   ; keep bits .... ..xx
    TAY                                ; 0x14be6 $8BD6 A8                      ;
    LDA      bank5_table2,y            ; 0x14be7 $8BD7 B9 BB 8B                ;
    STA      $02FF,x                   ; 0x14bea $8BDA 9D FF 02                ;
    DEX                                ; 0x14bed $8BDD CA                      ;
    STX      $0301                     ; 0x14bee $8BDE 8E 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDA      $0761                     ; 0x14bf1 $8BE1 AD 61 07                ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x14bf4 $8BE4 20 85 D3;
bank5_pointer_table_Related_to_Ending:                                          ;
.word    bank5_code5                   ; 0x14bf7 $8BE7 1D 8C                   ;
.word    L8C5F                         ; 0x14bf9 $8BE9 5F 8C                   ;
.word    L8CBB                         ; 0x14bfb $8BEB BB 8C                   ;
.word    bank5_change_tile_of_zelda_to_wake_her_up; 0x14bfd $8BED 64 8D        ;
.word    bank5_code7                   ; 0x14bff $8BEF BA 8D                   ;
.word    bank5_code8                   ; 0x14c01 $8BF1 0A 8E                   ;
.word    L8E6F                         ; 0x14c03 $8BF3 6F 8E                   ;
.word    L8F68                         ; 0x14c05 $8BF5 68 8F                   ;
.word    bank5_code12                  ; 0x14c07 $8BF7 9E 8F                   ;
.word    L8E6F                         ; 0x14c09 $8BF9 6F 8E                   ;
.word    L8FB4                         ; 0x14c0b $8BFB B4 8F                   ;
.word    L9042                         ; 0x14c0d $8BFD 42 90                   ;
.word    L9248                         ; 0x14c0f $8BFF 48 92                   ;
.word    L8E6F                         ; 0x14c11 $8C01 6F 8E                   ;
.word    L921C                         ; 0x14c13 $8C03 1C 92                   ;
; ---------------------------------------------------------------------------- ;
bank5_table3:                                                                   ;
.byt    $A0,$D6,$01,$78,$A0,$D6,$41,$80; 0x14c15 $8C05 A0 D6 01 78 A0 D6 41 80 ;
L8C0D:                                                                          ;
.byt    $B0,$E0,$00,$78,$B0,$E0,$40,$80; 0x14c1d $8C0D B0 E0 00 78 B0 E0 40 80 ;
.byt    $C0,$E2,$00,$78,$C0,$E2,$40,$80; 0x14c25 $8C15 C0 E2 00 78 C0 E2 40 80 ;
; ---------------------------------------------------------------------------- ;
bank5_code5:                                                                    ;
    LDY      #$07                      ; 0x14c2d $8C1D A0 07                   ; Y = 07
L8C1F:                                                                          ;
    LDA      bank5_table3,y            ; 0x14c2f $8C1F B9 05 8C                ;
    STA      $0230,y                   ; 0x14c32 $8C22 99 30 02                ;
    DEY                                ; 0x14c35 $8C25 88                      ;
    BPL      L8C1F                     ; 0x14c36 $8C26 10 F7                   ;
    LDA      #$03                      ; 0x14c38 $8C28 A9 03                   ; A = 03
    STA      $0232                     ; 0x14c3a $8C2A 8D 32 02                ;
    ORA      #$40                      ; 0x14c3d $8C2D 09 40                   ; set  bits .x.. ....
    STA      $0236                     ; 0x14c3f $8C2F 8D 36 02                ;
    JSR      L8C38                     ; 0x14c42 $8C32 20 38 8C                ;
    JMP      L8C44                     ; 0x14c45 $8C35 4C 44 8C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8C38:                                                                          ;
    LDY      #$0F                      ; 0x14c48 $8C38 A0 0F                   ; Y = 0F
L8C3A:                                                                          ;
    LDA      L8C0D,y                   ; 0x14c4a $8C3A B9 0D 8C                ;
    STA      $0210,y                   ; 0x14c4d $8C3D 99 10 02                ;
    DEY                                ; 0x14c50 $8C40 88                      ;
    BPL      L8C3A                     ; 0x14c51 $8C41 10 F7                   ;
    RTS                                ; 0x14c53 $8C43 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8C44:                                                                          ;
    LDA      $37                       ; 0x14c54 $8C44 A5 37                   ;
    BNE      L8C4C                     ; 0x14c56 $8C46 D0 04                   ;
    LDA      #$60                      ; 0x14c58 $8C48 A9 60                   ; A = 60
    STA      $37                       ; 0x14c5a $8C4A 85 37                   ;
L8C4C:                                                                          ;
    DEC      $37                       ; 0x14c5c $8C4C C6 37                   ;
    BNE      L8C5E                     ; 0x14c5e $8C4E D0 0E                   ;
    INC      $0761                     ; 0x14c60 $8C50 EE 61 07                ;
    LDA      $0761                     ; 0x14c63 $8C53 AD 61 07                ;
    CMP      #$0A                      ; 0x14c66 $8C56 C9 0A                   ;
    BNE      L8C5E                     ; 0x14c68 $8C58 D0 04                   ;
    LDA      #$08                      ; 0x14c6a $8C5A A9 08                   ; A = 08
    STA      $EB                       ; 0x14c6c $8C5C 85 EB                   ; Music
L8C5E:                                                                          ;
    RTS                                ; 0x14c6e $8C5E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8C5F:                                                                          ;
    JSR      L8C38                     ; 0x14c6f $8C5F 20 38 8C                ;
    LDA      $38                       ; 0x14c72 $8C62 A5 38                   ;
    CMP      #$60                      ; 0x14c74 $8C64 C9 60                   ;
    BNE      L8C6E                     ; 0x14c76 $8C66 D0 06                   ;
    JSR      L8C8B                     ; 0x14c78 $8C68 20 8B 8C                ;
    JMP      L8C44                     ; 0x14c7b $8C6B 4C 44 8C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8C6E:                                                                          ;
    LDA      $38                       ; 0x14c7e $8C6E A5 38                   ;
    BNE      L8C7F                     ; 0x14c80 $8C70 D0 0D                   ;
    LDX      #$02                      ; 0x14c82 $8C72 A2 02                   ; X = 02
L8C74:                                                                          ;
    LDA      #$A0                      ; 0x14c84 $8C74 A9 A0                   ; A = A0
    STA      $38,x                     ; 0x14c86 $8C76 95 38                   ;
    LDA      #$78                      ; 0x14c88 $8C78 A9 78                   ; A = 78
    STA      $3B,x                     ; 0x14c8a $8C7A 95 3B                   ;
    DEX                                ; 0x14c8c $8C7C CA                      ;
    BPL      L8C74                     ; 0x14c8d $8C7D 10 F5                   ;
L8C7F:                                                                          ;
    LDA      $12                       ; 0x14c8f $8C7F A5 12                   ; Permanent Frame Counter
    AND      #$07                      ; 0x14c91 $8C81 29 07                   ; keep bits .... .xxx
    BNE      L8C8B                     ; 0x14c93 $8C83 D0 06                   ;
    DEC      $38                       ; 0x14c95 $8C85 C6 38                   ;
    INC      $3C                       ; 0x14c97 $8C87 E6 3C                   ;;monster x*255	3c,3d,3e,3f,40,41
    DEC      $3D                       ; 0x14c99 $8C89 C6 3D                   ;
L8C8B:                                                                          ;
    LDX      #$02                      ; 0x14c9b $8C8B A2 02                   ; X = 02
L8C8D:                                                                          ;
    TXA                                ; 0x14c9d $8C8D 8A                      ;
    ASL                                ; 0x14c9e $8C8E 0A                      ;
    ASL                                ; 0x14c9f $8C8F 0A                      ;
    ASL                                ; 0x14ca0 $8C90 0A                      ;
    TAY                                ; 0x14ca1 $8C91 A8                      ;
    LDA      $38,x                     ; 0x14ca2 $8C92 B5 38                   ;
    STA      $0230,y                   ; 0x14ca4 $8C94 99 30 02                ;
    STA      $0234,y                   ; 0x14ca7 $8C97 99 34 02                ;
    LDA      #$D6                      ; 0x14caa $8C9A A9 D6                   ; A = D6
    STA      $0231,y                   ; 0x14cac $8C9C 99 31 02                ;
    STA      $0235,y                   ; 0x14caf $8C9F 99 35 02                ;
    LDA      #$03                      ; 0x14cb2 $8CA2 A9 03                   ; A = 03
    STA      $0232,y                   ; 0x14cb4 $8CA4 99 32 02                ;
    ORA      #$40                      ; 0x14cb7 $8CA7 09 40                   ; set  bits .x.. ....
    STA      $0236,y                   ; 0x14cb9 $8CA9 99 36 02                ;
    LDA      $3B,x                     ; 0x14cbc $8CAC B5 3B                   ;
    STA      $0233,y                   ; 0x14cbe $8CAE 99 33 02                ;
    CLC                                ; 0x14cc1 $8CB1 18                      ;
    ADC      #$08                      ; 0x14cc2 $8CB2 69 08                   ;
    STA      $0237,y                   ; 0x14cc4 $8CB4 99 37 02                ;
    DEX                                ; 0x14cc7 $8CB7 CA                      ;
    BPL      L8C8D                     ; 0x14cc8 $8CB8 10 D3                   ;
    RTS                                ; 0x14cca $8CBA 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8CBB:                                                                          ;
    JSR      L8C8B                     ; 0x14ccb $8CBB 20 8B 8C                ;
    JSR      L8C38                     ; 0x14cce $8CBE 20 38 8C                ;
    LDA      $33                       ; 0x14cd1 $8CC1 A5 33                   ;
    BNE      L8CD0                     ; 0x14cd3 $8CC3 D0 0B                   ;
    LDA      #$04                      ; 0x14cd5 $8CC5 A9 04                   ; A = 04
    STA      $EC                       ; 0x14cd7 $8CC7 85 EC                   ; Sound Effects Type 1
    LDA      #$E0                      ; 0x14cd9 $8CC9 A9 E0                   ; A = E0
    STA      $074B                     ; 0x14cdb $8CCB 8D 4B 07                ; Spell Flash Counter
    INC      $33                       ; 0x14cde $8CCE E6 33                   ;
L8CD0:                                                                          ;
    LDA      $0751                     ; 0x14ce0 $8CD0 AD 51 07                ;
    STA      $69CC                     ; 0x14ce3 $8CD3 8D CC 69                ;
    LDA      $074B                     ; 0x14ce6 $8CD6 AD 4B 07                ;; Spell Flash Counter (bit 7 set = decor flash)
    ASL                                ; 0x14ce9 $8CD9 0A                      ;
    BNE      L8CE3                     ; 0x14cea $8CDA D0 07                   ;
    STA      $074B                     ; 0x14cec $8CDC 8D 4B 07                ; Spell Flash Counter
L8CE1     = * + $0002                                                          ;
    JMP      L8C44                     ; 0x14cef $8CDF 4C 44 8C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8CE2:                                                                          ;
    RTS                                ; 0x14cf2 $8CE2 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8CE3:                                                                          ;
    LDX      $0301                     ; 0x14cf3 $8CE3 AE 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    CPX      #$19                      ; 0x14cf6 $8CE6 E0 19                   ;
    BCS      L8CE2                     ; 0x14cf8 $8CE8 B0 F8                   ;
    DEC      $074B                     ; 0x14cfa $8CEA CE 4B 07                ; Spell Flash Counter
    LDA      #$3F                      ; 0x14cfd $8CED A9 3F                   ; A = 3F
    STA      L0302,x                   ; 0x14cff $8CEF 9D 02 03                ;
    LDA      #$10                      ; 0x14d02 $8CF2 A9 10                   ; A = 10
    STA      $0303,x                   ; 0x14d04 $8CF4 9D 03 03                ;
    LDA      #$04                      ; 0x14d07 $8CF7 A9 04                   ; A = 04
    STA      $0304,x                   ; 0x14d09 $8CF9 9D 04 03                ;
    LDY      #$03                      ; 0x14d0c $8CFC A0 03                   ; Y = 03
    LDA      ($D4),y                   ; 0x14d0e $8CFE B1 D4                   ;
    INY                                ; 0x14d10 $8D00 C8                      ;
    AND      #$38                      ; 0x14d11 $8D01 29 38                   ; keep bits ..xx x...
    CMP      #$08                      ; 0x14d13 $8D03 C9 08                   ;
    BNE      L8D10                     ; 0x14d15 $8D05 D0 09                   ;
    LDA      $0707                     ; 0x14d17 $8D07 AD 07 07                ; Current World
    ORA      $0785                     ; 0x14d1a $8D0A 0D 85 07                ; Have Candle
    BNE      L8D10                     ; 0x14d1d $8D0D D0 01                   ;
    INY                                ; 0x14d1f $8D0F C8                      ;
L8D10:                                                                          ;
    LDA      $074B                     ; 0x14d20 $8D10 AD 4B 07                ; Spell Flash Counter
    AND      #$7F                      ; 0x14d23 $8D13 29 7F                   ; keep bits .xxx xxxx
    BEQ      L8D1A                     ; 0x14d25 $8D15 F0 03                   ;
    AND      #$03                      ; 0x14d27 $8D17 29 03                   ; keep bits .... ..xx
    TAY                                ; 0x14d29 $8D19 A8                      ;
L8D1A:                                                                          ;
    LDA      $69CE,y                   ; 0x14d2a $8D1A B9 CE 69                ;
    STA      $0306,x                   ; 0x14d2d $8D1D 9D 06 03                ;
    LDA      $69D4,y                   ; 0x14d30 $8D20 B9 D4 69                ;
    STA      $0307,x                   ; 0x14d33 $8D23 9D 07 03                ;
    LDA      $69DA,y                   ; 0x14d36 $8D26 B9 DA 69                ;
    STA      $0308,x                   ; 0x14d39 $8D29 9D 08 03                ;
    LDA      $074B                     ; 0x14d3c $8D2C AD 4B 07                ; Spell Flash Counter
    ASL                                ; 0x14d3f $8D2F 0A                      ;
    BCS      L8D34                     ; 0x14d40 $8D30 B0 02                   ;
    LDY      #$04                      ; 0x14d42 $8D32 A0 04                   ; Y = 04
L8D34:                                                                          ;
    LDA      $69C8,y                   ; 0x14d44 $8D34 B9 C8 69                ;
    STA      $0305,x                   ; 0x14d47 $8D37 9D 05 03                ;
    LDA      #$FF                      ; 0x14d4a $8D3A A9 FF                   ; A = FF
    STA      $0309,x                   ; 0x14d4c $8D3C 9D 09 03                ;
    TXA                                ; 0x14d4f $8D3F 8A                      ;
    CLC                                ; 0x14d50 $8D40 18                      ;
    ADC      #$07                      ; 0x14d51 $8D41 69 07                   ;
    STA      $0301                     ; 0x14d53 $8D43 8D 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDA      $074B                     ; 0x14d56 $8D46 AD 4B 07                ; Spell Flash Counter
    BNE      L8D8C                     ; 0x14d59 $8D49 D0 41                   ;
    JMP      L8C44                     ; 0x14d5b $8D4B 4C 44 8C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_ppu_macro0:                                                               ;
.byt    $22,$0F,$02,$00,$0A,$22,$2F,$02; 0x14d5e $8D4E 22 0F 02 00 0A 22 2F 02 ;
.byt    $01,$0B,$22,$4E,$03,$F4,$0C,$0D; 0x14d66 $8D56 01 0B 22 4E 03 F4 0C 0D ;
.byt    $23,$E3,$02,$AA,$AA,$FF        ; 0x14d6e $8D5E 23 E3 02 AA AA FF       ;
; ---------------------------------------------------------------------------- ;
bank5_change_tile_of_zelda_to_wake_her_up:                                      ;
    LDY      #$00                      ; 0x14d74 $8D64 A0 00                   ; Y = 00
    LDX      $0301                     ; 0x14d76 $8D66 AE 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
L8D69:                                                                          ;
    LDA      bank5_ppu_macro0,y        ; 0x14d79 $8D69 B9 4E 8D                ;
    STA      L0302,x                   ; 0x14d7c $8D6C 9D 02 03                ;
    INX                                ; 0x14d7f $8D6F E8                      ;
    INY                                ; 0x14d80 $8D70 C8                      ;
    CPY      #$16                      ; 0x14d81 $8D71 C0 16                   ;
    BNE      L8D69                     ; 0x14d83 $8D73 D0 F4                   ;
    DEX                                ; 0x14d85 $8D75 CA                      ;
    STX      $0301                     ; 0x14d86 $8D76 8E 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    JSR      L8C8B                     ; 0x14d89 $8D79 20 8B 8C                ;
    JSR      L8C38                     ; 0x14d8c $8D7C 20 38 8C                ;
    JSR      L8C44                     ; 0x14d8f $8D7F 20 44 8C                ;
    LDA      $37                       ; 0x14d92 $8D82 A5 37                   ;
    BNE      L8D8C                     ; 0x14d94 $8D84 D0 06                   ;
    STA      $2001                     ; 0x14d96 $8D86 8D 01 20                ;
    STA      $0736                     ; 0x14d99 $8D89 8D 36 07                ; Game Mode
L8D8C:                                                                          ;
    RTS                                ; 0x14d9c $8D8C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table4:                                                                   ;
.byt    $B0,$02,$60,$70,$B0,$E4,$20,$78; 0x14d9d $8D8D B0 02 60 70 B0 E4 20 78 ;
.byt    $B0,$D8,$22,$80,$B0,$DA,$22,$88; 0x14da5 $8D95 B0 D8 22 80 B0 DA 22 88 ;
.byt    $C0,$06,$60,$70,$C0,$E6,$20,$78; 0x14dad $8D9D C0 06 60 70 C0 E6 20 78 ;
.byt    $C0,$DC,$22,$80,$C0,$DE,$22,$88; 0x14db5 $8DA5 C0 DC 22 80 C0 DE 22 88 ;
bank5_ppu_macro1:                                                               ;
.byt    $23,$D8,$48,$0F,$23,$E0,$50,$00; 0x14dbd $8DAD 23 D8 48 0F 23 E0 50 00 ;
.byt    $23,$F0,$48,$F0,$FF            ; 0x14dc5 $8DB5 23 F0 48 F0 FF          ;
; ---------------------------------------------------------------------------- ;
bank5_code7:                                                                    ;
    LDX      $0301                     ; 0x14dca $8DBA AE 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDY      #$00                      ; 0x14dcd $8DBD A0 00                   ; Y = 00
L8DBF:                                                                          ;
    LDA      bank5_ppu_macro1,y        ; 0x14dcf $8DBF B9 AD 8D                ;
L8DC3     = * + $0001                                                          ;
    STA      L0302,x                   ; 0x14dd2 $8DC2 9D 02 03                ;
    INX                                ; 0x14dd5 $8DC5 E8                      ;
    INY                                ; 0x14dd6 $8DC6 C8                      ;
    CPY      #$0D                      ; 0x14dd7 $8DC7 C0 0D                   ;
    BNE      L8DBF                     ; 0x14dd9 $8DC9 D0 F4                   ;
    DEX                                ; 0x14ddb $8DCB CA                      ;
    STX      $0301                     ; 0x14ddc $8DCC 8E 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    JSR      L8DD5                     ; 0x14ddf $8DCF 20 D5 8D                ;
    JMP      L8C44                     ; 0x14de2 $8DD2 4C 44 8C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8DD5:                                                                          ;
    LDY      #$1F                      ; 0x14de5 $8DD5 A0 1F                   ; Y = 1F
L8DD7:                                                                          ;
    LDA      bank5_table4,y            ; 0x14de7 $8DD7 B9 8D 8D                ;
    STA      $0210,y                   ; 0x14dea $8DDA 99 10 02                ;
    DEY                                ; 0x14ded $8DDD 88                      ;
    BPL      L8DD7                     ; 0x14dee $8DDE 10 F7                   ;
    RTS                                ; 0x14df0 $8DE0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Ending_Text_Zelda_:                                                       ;
.byt    $F2,$E8,$EE,$00,$EC,$DA,$EF,$DE; 0x14df1 $8DE1 F2 E8 EE 00 EC DA EF DE ;
.byt    $DD,$00,$E1,$F2,$EB,$EE,$E5,$DE; 0x14df9 $8DE9 DD 00 E1 F2 EB EE E5 DE ;
.byt    $00,$DA,$E7,$DD,$F2,$E8,$EE,$00; 0x14e01 $8DF1 00 DA E7 DD F2 E8 EE 00 ;
.byt    $DA,$EB,$DE,$00,$DA,$00,$EB,$DE; 0x14e09 $8DF9 DA EB DE 00 DA 00 EB DE ;
.byt    $DA,$E5,$00,$E1,$DE,$EB,$E8,$07; 0x14e11 $8E01 DA E5 00 E1 DE EB E8 07 ;
.byt    $FF                            ; 0x14e19 $8E09 FF                      ;
; ---------------------------------------------------------------------------- ;
bank5_code8:                                                                    ;
    JSR      L8DD5                     ; 0x14e1a $8E0A 20 D5 8D                ;
    LDX      $3E                       ; 0x14e1d $8E0D A6 3E                   ;
    LDA      bank5_Ending_Text_Zelda_,x; 0x14e1f $8E0F BD E1 8D                ;
    CMP      #$FF                      ; 0x14e22 $8E12 C9 FF                   ;
    BNE      L8E1D                     ; 0x14e24 $8E14 D0 07                   ;
    LDA      #$00                      ; 0x14e26 $8E16 A9 00                   ; A = 00
    STA      $33                       ; 0x14e28 $8E18 85 33                   ;
    JMP      L8C44                     ; 0x14e2a $8E1A 4C 44 8C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8E1D:                                                                          ;
    CMP      #$00                      ; 0x14e2d $8E1D C9 00                   ;
    BNE      L8E26                     ; 0x14e2f $8E1F D0 05                   ;
    INC      $3E                       ; 0x14e31 $8E21 E6 3E                   ;
    JMP      bank5_code8               ; 0x14e33 $8E23 4C 0A 8E                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8E26:                                                                          ;
    LDA      $12                       ; 0x14e36 $8E26 A5 12                   ; Permanent Frame Counter
    AND      #$0F                      ; 0x14e38 $8E28 29 0F                   ; keep bits .... xxxx
    BNE      L8E6E                     ; 0x14e3a $8E2A D0 42                   ;
    LDA      #$21                      ; 0x14e3c $8E2C A9 21                   ; A = 21
    STA      L0000                     ; 0x14e3e $8E2E 85 00                   ;
    LDA      #$CB                      ; 0x14e40 $8E30 A9 CB                   ; A = CB
    STA      $01                       ; 0x14e42 $8E32 85 01                   ;
    LDA      $3E                       ; 0x14e44 $8E34 A5 3E                   ;
L8E36:                                                                          ;
    CMP      #$0A                      ; 0x14e46 $8E36 C9 0A                   ;
    BMI      L8E4D                     ; 0x14e48 $8E38 30 13                   ;
    SEC                                ; 0x14e4a $8E3A 38                      ;
    SBC      #$0A                      ; 0x14e4b $8E3B E9 0A                   ;
    PHA                                ; 0x14e4d $8E3D 48                      ;
    LDA      $01                       ; 0x14e4e $8E3E A5 01                   ;
    CLC                                ; 0x14e50 $8E40 18                      ;
    ADC      #$40                      ; 0x14e51 $8E41 69 40                   ;
    STA      $01                       ; 0x14e53 $8E43 85 01                   ;
    BCC      L8E49                     ; 0x14e55 $8E45 90 02                   ;
    INC      L0000                     ; 0x14e57 $8E47 E6 00                   ;
L8E49:                                                                          ;
    PLA                                ; 0x14e59 $8E49 68                      ;
    JMP      L8E36                     ; 0x14e5a $8E4A 4C 36 8E                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8E4D:                                                                          ;
    INC      $3E                       ; 0x14e5d $8E4D E6 3E                   ;
    CLC                                ; 0x14e5f $8E4F 18                      ;
    ADC      $01                       ; 0x14e60 $8E50 65 01                   ;
    STA      $0303                     ; 0x14e62 $8E52 8D 03 03                ;; Letter position when writing to screen
    LDA      L0000                     ; 0x14e65 $8E55 A5 00                   ;
    STA      L0302                     ; 0x14e67 $8E57 8D 02 03                ;; Used when writing text to screen
    LDA      #$01                      ; 0x14e6a $8E5A A9 01                   ; A = 01
    STA      $0304                     ; 0x14e6c $8E5C 8D 04 03                ;; Text memory offset?
    LDA      bank5_Ending_Text_Zelda_,x; 0x14e6f $8E5F BD E1 8D                ;
    STA      $0305                     ; 0x14e72 $8E62 8D 05 03                ;; Empty Row Space Character
    LDA      #$FF                      ; 0x14e75 $8E65 A9 FF                   ; A = FF
    STA      $0306                     ; 0x14e77 $8E67 8D 06 03                ;; Letter Written to Screen
    LDA      #$02                      ; 0x14e7a $8E6A A9 02                   ; A = 02
    STA      $EF                       ; 0x14e7c $8E6C 85 EF                   ; Sound Effects Type 4
L8E6E:                                                                          ;
    RTS                                ; 0x14e7e $8E6E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8E6F:                                                                          ;
    LDA      $0761                     ; 0x14e7f $8E6F AD 61 07                ;
    CMP      #$0D                      ; 0x14e82 $8E72 C9 0D                   ;
    BEQ      L8E83                     ; 0x14e84 $8E74 F0 0D                   ;
    CMP      #$09                      ; 0x14e86 $8E76 C9 09                   ;
    BEQ      L8E80                     ; 0x14e88 $8E78 F0 06                   ;
    JSR      L8DD5                     ; 0x14e8a $8E7A 20 D5 8D                ;
    JMP      L8E83                     ; 0x14e8d $8E7D 4C 83 8E                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8E80:                                                                          ;
    JSR      L8F6B                     ; 0x14e90 $8E80 20 6B 8F                ;
L8E83:                                                                          ;
    LDA      $33                       ; 0x14e93 $8E83 A5 33                   ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x14e95 $8E85 20 85 D3;
bank5_pointer_table0:                                                           ;
.word    bank5_code9                   ; 0x14e98 $8E88 8E 8E                   ;
.word    bank5_code10                  ; 0x14e9a $8E8A AE 8E                   ;
.word    bank5_code11                  ; 0x14e9c $8E8C 1B 8F                   ;
; ---------------------------------------------------------------------------- ;
bank5_code9:                                                                    ;
    LDA      #$21                      ; 0x14e9e $8E8E A9 21                   ; A = 21
    STA      $27                       ; 0x14ea0 $8E90 85 27                   ;
    LDA      #$60                      ; 0x14ea2 $8E92 A9 60                   ; A = 60
    STA      $28                       ; 0x14ea4 $8E94 85 28                   ;
    LDA      #$D8                      ; 0x14ea6 $8E96 A9 D8                   ; A = D8
    STA      $2E                       ; 0x14ea8 $8E98 85 2E                   ;
    LDA      #$00                      ; 0x14eaa $8E9A A9 00                   ; A = 00
    STA      $3F                       ; 0x14eac $8E9C 85 3F                   ;
    INC      $33                       ; 0x14eae $8E9E E6 33                   ;
    RTS                                ; 0x14eb0 $8EA0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table5:                                                                   ;
.byt    $60,$F4,$23,$00,$48,$00,$FF    ; 0x14eb1 $8EA1 60 F4 23 00 48 00 FF    ;
L8EA8:                                                                          ;
.byt    $0F,$FF,$0F,$FF,$5F,$FF        ; 0x14eb8 $8EA8 0F FF 0F FF 5F FF       ;
; ---------------------------------------------------------------------------- ;
bank5_code10:                                                                   ;
    LDA      $12                       ; 0x14ebe $8EAE A5 12                   ; Permanent Frame Counter
    AND      #$07                      ; 0x14ec0 $8EB0 29 07                   ; keep bits .... .xxx
    BNE      L8EFA                     ; 0x14ec2 $8EB2 D0 46                   ;
    LDA      $3F                       ; 0x14ec4 $8EB4 A5 3F                   ;
    BNE      L8EF8                     ; 0x14ec6 $8EB6 D0 40                   ;
    LDA      $28                       ; 0x14ec8 $8EB8 A5 28                   ;
    CLC                                ; 0x14eca $8EBA 18                      ;
    ADC      #$20                      ; 0x14ecb $8EBB 69 20                   ;
    STA      $0303                     ; 0x14ecd $8EBD 8D 03 03                ;; Letter position when writing to screen
    LDA      $27                       ; 0x14ed0 $8EC0 A5 27                   ;
    ADC      #$00                      ; 0x14ed2 $8EC2 69 00                   ;
    STA      L0302                     ; 0x14ed4 $8EC4 8D 02 03                ;; Used when writing text to screen
    LDX      #$06                      ; 0x14ed7 $8EC7 A2 06                   ; X = 06
L8EC9:                                                                          ;
    LDA      bank5_table5,x            ; 0x14ed9 $8EC9 BD A1 8E                ;
    STA      $0304,x                   ; 0x14edc $8ECC 9D 04 03                ;
    DEX                                ; 0x14edf $8ECF CA                      ;
    BPL      L8EC9                     ; 0x14ee0 $8ED0 10 F7                   ;
    LDA      $32                       ; 0x14ee2 $8ED2 A5 32                   ;
    AND      #$0E                      ; 0x14ee4 $8ED4 29 0E                   ; keep bits .... xxx.
    LSR                                ; 0x14ee6 $8ED6 4A                      ;
    TAX                                ; 0x14ee7 $8ED7 AA                      ;
    LDA      $2E                       ; 0x14ee8 $8ED8 A5 2E                   ;
    STA      $0307                     ; 0x14eea $8EDA 8D 07 03                ;; Text memory offset?
    CMP      #$F0                      ; 0x14eed $8EDD C9 F0                   ;
    BNE      L8EE3                     ; 0x14eef $8EDF D0 02                   ;
    LDX      #$01                      ; 0x14ef1 $8EE1 A2 01                   ; X = 01
L8EE3:                                                                          ;
    LDA      L8EA8,x                   ; 0x14ef3 $8EE3 BD A8 8E                ;
    STA      $0309                     ; 0x14ef6 $8EE6 8D 09 03                ;
    INC      $32                       ; 0x14ef9 $8EE9 E6 32                   ;
    LDA      $32                       ; 0x14efb $8EEB A5 32                   ;
    AND      #$03                      ; 0x14efd $8EED 29 03                   ; keep bits .... ..xx
    BNE      L8EF8                     ; 0x14eff $8EEF D0 07                   ;
    LDA      $2E                       ; 0x14f01 $8EF1 A5 2E                   ;
    CLC                                ; 0x14f03 $8EF3 18                      ;
    ADC      #$08                      ; 0x14f04 $8EF4 69 08                   ;
    STA      $2E                       ; 0x14f06 $8EF6 85 2E                   ;
L8EF8:                                                                          ;
    INC      $33                       ; 0x14f08 $8EF8 E6 33                   ;
L8EFA:                                                                          ;
    RTS                                ; 0x14f0a $8EFA 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table6:                                                                   ;
.byt    $70                            ; 0x14f0b $8EFB 70                      ;
L8EFC:                                                                          ;
.byt    $71                            ; 0x14f0c $8EFC 71                      ;
L8EFD:                                                                          ;
.byt    $72                            ; 0x14f0d $8EFD 72                      ;
L8EFE:                                                                          ;
.byt    $73,$70,$71,$74,$75,$70,$71,$76; 0x14f0e $8EFE 73 70 71 74 75 70 71 76 ;
.byt    $77,$84,$86,$85,$87,$70,$71,$76; 0x14f16 $8F06 77 84 86 85 87 70 71 76 ;
.byt    $77,$70,$71,$74,$75,$70,$71,$72; 0x14f1e $8F0E 77 70 71 74 75 70 71 72 ;
.byt    $73,$84,$86,$F4,$F4            ; 0x14f26 $8F16 73 84 86 F4 F4          ;
; ---------------------------------------------------------------------------- ;
bank5_code11:                                                                   ;
    LDA      $37                       ; 0x14f2b $8F1B A5 37                   ;
    BNE      L8F62                     ; 0x14f2d $8F1D D0 43                   ;
    LDA      #$00                      ; 0x14f2f $8F1F A9 00                   ; A = 00
    STA      L0000                     ; 0x14f31 $8F21 85 00                   ;
    JSR      L8FF6                     ; 0x14f33 $8F23 20 F6 8F                ;
    INC      $3F                       ; 0x14f36 $8F26 E6 3F                   ;
    LDA      $3F                       ; 0x14f38 $8F28 A5 3F                   ;
    CMP      #$04                      ; 0x14f3a $8F2A C9 04                   ;
    BNE      L8F65                     ; 0x14f3c $8F2C D0 37                   ;
    LDA      #$00                      ; 0x14f3e $8F2E A9 00                   ; A = 00
    STA      $3F                       ; 0x14f40 $8F30 85 3F                   ;
    LDA      $28                       ; 0x14f42 $8F32 A5 28                   ;
    CLC                                ; 0x14f44 $8F34 18                      ;
    ADC      #$20                      ; 0x14f45 $8F35 69 20                   ;
    STA      $28                       ; 0x14f47 $8F37 85 28                   ;
    LDA      $27                       ; 0x14f49 $8F39 A5 27                   ;
    ADC      #$00                      ; 0x14f4b $8F3B 69 00                   ;
    STA      $27                       ; 0x14f4d $8F3D 85 27                   ;
    LDA      $0761                     ; 0x14f4f $8F3F AD 61 07                ;
    CMP      #$0D                      ; 0x14f52 $8F42 C9 0D                   ;
    BEQ      L8F52                     ; 0x14f54 $8F44 F0 0C                   ;
    LDA      $27                       ; 0x14f56 $8F46 A5 27                   ;
    CMP      #$22                      ; 0x14f58 $8F48 C9 22                   ;
    BNE      L8F52                     ; 0x14f5a $8F4A D0 06                   ;
    LDA      $28                       ; 0x14f5c $8F4C A5 28                   ;
    CMP      #$E0                      ; 0x14f5e $8F4E C9 E0                   ;
    BEQ      L8F62                     ; 0x14f60 $8F50 F0 10                   ;
L8F52:                                                                          ;
    LDA      $27                       ; 0x14f62 $8F52 A5 27                   ;
    CMP      #$23                      ; 0x14f64 $8F54 C9 23                   ;
    BNE      L8F65                     ; 0x14f66 $8F56 D0 0D                   ;
    LDA      $28                       ; 0x14f68 $8F58 A5 28                   ;
    BEQ      L8F65                     ; 0x14f6a $8F5A F0 09                   ;
    LDA      #$00                      ; 0x14f6c $8F5C A9 00                   ; A = 00
    STA      $3F                       ; 0x14f6e $8F5E 85 3F                   ;
    STA      $28                       ; 0x14f70 $8F60 85 28                   ;
L8F62:                                                                          ;
    JMP      L8C44                     ; 0x14f72 $8F62 4C 44 8C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8F65:                                                                          ;
    DEC      $33                       ; 0x14f75 $8F65 C6 33                   ;
    RTS                                ; 0x14f77 $8F67 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8F68:                                                                          ;
    JSR      L8C44                     ; 0x14f78 $8F68 20 44 8C                ;
L8F6B:                                                                          ;
    JSR      L8DD5                     ; 0x14f7b $8F6B 20 D5 8D                ;
    LDA      #$75                      ; 0x14f7e $8F6E A9 75                   ; A = 75
    STA      $0213                     ; 0x14f80 $8F70 8D 13 02                ;
    STA      $0223                     ; 0x14f83 $8F73 8D 23 02                ;
    LDA      #$7D                      ; 0x14f86 $8F76 A9 7D                   ; A = 7D
    STA      $0217                     ; 0x14f88 $8F78 8D 17 02                ;
    STA      $0227                     ; 0x14f8b $8F7B 8D 27 02                ;
    LDA      #$7B                      ; 0x14f8e $8F7E A9 7B                   ; A = 7B
    STA      $021B                     ; 0x14f90 $8F80 8D 1B 02                ;
    STA      $022B                     ; 0x14f93 $8F83 8D 2B 02                ;
    LDA      #$83                      ; 0x14f96 $8F86 A9 83                   ; A = 83
    STA      $021F                     ; 0x14f98 $8F88 8D 1F 02                ;
    STA      $022F                     ; 0x14f9b $8F8B 8D 2F 02                ;
    RTS                                ; 0x14f9e $8F8E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_ppu_macro2:                                                               ;
.byt    $23,$18,$07,$ED,$E1,$DE,$F4,$DE; 0x14f9f $8F8F 23 18 07 ED E1 DE F4 DE ;
.byt    $E7,$DD,$23,$F6,$42,$F0,$FF    ; 0x14fa7 $8F97 E7 DD 23 F6 42 F0 FF    ;
; ---------------------------------------------------------------------------- ;
bank5_code12:                                                                   ;
    LDA      $37                       ; 0x14fae $8F9E A5 37                   ;
    BNE      L8FB1                     ; 0x14fb0 $8FA0 D0 0F                   ;
    LDY      #$0E                      ; 0x14fb2 $8FA2 A0 0E                   ; Y = 0E
L8FA4:                                                                          ;
    LDA      bank5_ppu_macro2,y        ; 0x14fb4 $8FA4 B9 8F 8F                ;
    STA      L0302,y                   ; 0x14fb7 $8FA7 99 02 03                ;
    DEY                                ; 0x14fba $8FAA 88                      ;
    BPL      L8FA4                     ; 0x14fbb $8FAB 10 F7                   ;
    LDA      #$01                      ; 0x14fbd $8FAD A9 01                   ; A = 01
    STA      $33                       ; 0x14fbf $8FAF 85 33                   ;
L8FB1:                                                                          ;
    JMP      L8F68                     ; 0x14fc1 $8FB1 4C 68 8F                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8FB4:                                                                          ;
    LDA      $37                       ; 0x14fc4 $8FB4 A5 37                   ;
L8FB7     = * + $0001                                                          ;
    BNE      L8FF2                     ; 0x14fc6 $8FB6 D0 3A                   ;
    LDA      $12                       ; 0x14fc8 $8FB8 A5 12                   ;; Frame Counter (ascending)
    AND      #$07                      ; 0x14fca $8FBA 29 07                   ; keep bits .... .xxx
    BNE      L8FF5                     ; 0x14fcc $8FBC D0 37                   ;
    LDA      #$10                      ; 0x14fce $8FBE A9 10                   ; A = 10
    STA      L0000                     ; 0x14fd0 $8FC0 85 00                   ;
    JSR      L8FF6                     ; 0x14fd2 $8FC2 20 F6 8F                ;
    INC      $3F                       ; 0x14fd5 $8FC5 E6 3F                   ;
    LDA      $3F                       ; 0x14fd7 $8FC7 A5 3F                   ;
    CMP      #$04                      ; 0x14fd9 $8FC9 C9 04                   ;
    BNE      L8FF5                     ; 0x14fdb $8FCB D0 28                   ;
    LDA      #$00                      ; 0x14fdd $8FCD A9 00                   ; A = 00
    STA      $3F                       ; 0x14fdf $8FCF 85 3F                   ;
    LDA      $28                       ; 0x14fe1 $8FD1 A5 28                   ;
    SEC                                ; 0x14fe3 $8FD3 38                      ;
    SBC      #$20                      ; 0x14fe4 $8FD4 E9 20                   ;
    STA      $28                       ; 0x14fe6 $8FD6 85 28                   ;
    LDA      $27                       ; 0x14fe8 $8FD8 A5 27                   ;
    SBC      #$00                      ; 0x14fea $8FDA E9 00                   ;
    STA      $27                       ; 0x14fec $8FDC 85 27                   ;
    CMP      #$21                      ; 0x14fee $8FDE C9 21                   ;
    BNE      L8FF5                     ; 0x14ff0 $8FE0 D0 13                   ;
    LDA      $28                       ; 0x14ff2 $8FE2 A5 28                   ;
    CMP      #$40                      ; 0x14ff4 $8FE4 C9 40                   ;
    BNE      L8FF5                     ; 0x14ff6 $8FE6 D0 0D                   ;
    LDA      #$11                      ; 0x14ff8 $8FE8 A9 11                   ; A = 11
    STA      $2B                       ; 0x14ffa $8FEA 85 2B                   ;
    LDA      #$00                      ; 0x14ffc $8FEC A9 00                   ; A = 00
    STA      $2C                       ; 0x14ffe $8FEE 85 2C                   ;
    STA      $33                       ; 0x15000 $8FF0 85 33                   ;
L8FF2:                                                                          ;
    JMP      L8C44                     ; 0x15002 $8FF2 4C 44 8C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8FF5:                                                                          ;
    RTS                                ; 0x15005 $8FF5 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8FF6:                                                                          ;
    LDX      #$00                      ; 0x15006 $8FF6 A2 00                   ; X = 00
    LDA      $3F                       ; 0x15008 $8FF8 A5 3F                   ;
    ASL                                ; 0x1500a $8FFA 0A                      ;
    ASL                                ; 0x1500b $8FFB 0A                      ;
    ORA      L0000                     ; 0x1500c $8FFC 05 00                   ;
    TAY                                ; 0x1500e $8FFE A8                      ;
L9000     = * + $0001                                                          ;
    LDA      $27                       ; 0x1500f $8FFF A5 27                   ;
    STA      L0302                     ; 0x15011 $9001 8D 02 03                ;; Used when writing text to screen
    LDA      $28                       ; 0x15014 $9004 A5 28                   ;
    STA      $0303                     ; 0x15016 $9006 8D 03 03                ;; Letter position when writing to screen
    CLC                                ; 0x15019 $9009 18                      ;
    ADC      #$20                      ; 0x1501a $900A 69 20                   ;
    STA      $0326                     ; 0x1501c $900C 8D 26 03                ;
    LDA      $27                       ; 0x1501f $900F A5 27                   ;
    ADC      #$00                      ; 0x15021 $9011 69 00                   ;
    STA      $0325                     ; 0x15023 $9013 8D 25 03                ;
    LDA      #$20                      ; 0x15026 $9016 A9 20                   ; A = 20
    STA      $0304                     ; 0x15028 $9018 8D 04 03                ;; Text memory offset?
    STA      $0327                     ; 0x1502b $901B 8D 27 03                ;
L901E:                                                                          ;
    LDA      bank5_table6,y            ; 0x1502e $901E B9 FB 8E                ;
    STA      $0305,x                   ; 0x15031 $9021 9D 05 03                ;
    LDA      L8EFC,y                   ; 0x15034 $9024 B9 FC 8E                ;
    STA      $0306,x                   ; 0x15037 $9027 9D 06 03                ;
    LDA      L8EFD,y                   ; 0x1503a $902A B9 FD 8E                ;
    STA      $0328,x                   ; 0x1503d $902D 9D 28 03                ;
    LDA      L8EFE,y                   ; 0x15040 $9030 B9 FE 8E                ;
    STA      $0329,x                   ; 0x15043 $9033 9D 29 03                ;
    INX                                ; 0x15046 $9036 E8                      ;
    INX                                ; 0x15047 $9037 E8                      ;
    CPX      #$20                      ; 0x15048 $9038 E0 20                   ;
L903A:                                                                          ;
    BNE      L901E                     ; 0x1504a $903A D0 E2                   ;
    LDA      #$FF                      ; 0x1504c $903C A9 FF                   ; A = FF
    STA      $0348                     ; 0x1504e $903E 8D 48 03                ;
    RTS                                ; 0x15051 $9041 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9042:                                                                          ;
    LDA      #$00                      ; 0x15052 $9042 A9 00                   ; A = 00
    STA      $0765                     ; 0x15054 $9044 8D 65 07                ;
    LDA      $33                       ; 0x15057 $9047 A5 33                   ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x15059 $9049 20 85 D3;
bank5_pointer_table_Probably_related_to_End_Credits:                            ;
.word    bank5_code13                  ; 0x1505c $904C 75 90                   ;
.word    L908D                         ; 0x1505e $904E 8D 90                   ;
.word    bank5_code14                  ; 0x15060 $9050 FE 90                   ;
.word    bank5_code15                  ; 0x15062 $9052 73 91                   ;
.word    L91A8                         ; 0x15064 $9054 A8 91                   ;
; ---------------------------------------------------------------------------- ;
bank5_table7:                                                                   ;
.byt    $03                            ; 0x15066 $9056 03                      ;
L9057:                                                                          ;
.byt    $01                            ; 0x15067 $9057 01                      ;
bank5_ppu_macro3:                                                               ;
.byt    $21,$CB,$05,$60,$61,$62,$63,$63; 0x15068 $9058 21 CB 05 60 61 62 63 63 ;
.byt    $23,$D8,$48,$55,$23,$E0,$48,$00; 0x15070 $9060 23 D8 48 55 23 E0 48 00 ;
.byt    $23,$E8,$48,$AA,$3F,$00,$44,$0F; 0x15078 $9068 23 E8 48 AA 3F 00 44 0F ;
.byt    $3F,$08,$44,$0F,$FF            ; 0x15080 $9070 3F 08 44 0F FF          ;
; ---------------------------------------------------------------------------- ;
bank5_code13:                                                                   ;
    LDY      #$1C                      ; 0x15085 $9075 A0 1C                   ; Y = 1C
L9077:                                                                          ;
    LDA      bank5_ppu_macro3,y        ; 0x15087 $9077 B9 58 90                ;
    STA      L0302,y                   ; 0x1508a $907A 99 02 03                ;
    DEY                                ; 0x1508d $907D 88                      ;
    BPL      L9077                     ; 0x1508e $907E 10 F7                   ;
    LDA      #$11                      ; 0x15090 $9080 A9 11                   ; A = 11
    STA      $29                       ; 0x15092 $9082 85 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    LDA      #$00                      ; 0x15094 $9084 A9 00                   ; A = 00
    STA      $2A                       ; 0x15096 $9086 85 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    STA      $3F                       ; 0x15098 $9088 85 3F                   ;
    INC      $33                       ; 0x1509a $908A E6 33                   ;
    RTS                                ; 0x1509c $908C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L908D:                                                                          ;
    LDA      #$00                      ; 0x1509d $908D A9 00                   ; A = 00
    STA      $02                       ; 0x1509f $908F 85 02                   ;
    LDA      $54                       ; 0x150a1 $9091 A5 54                   ;;projectile x		54,55,56,57,58,59	54,y	? only 56,59confirmed
    ASL                                ; 0x150a3 $9093 0A                      ;
    TAY                                ; 0x150a4 $9094 A8                      ;
    LDA      bank5_Pointer_table_for_End_Credits,y; 0x150a5 $9095 B9 59 92         ;
    STA      L0000                     ; 0x150a8 $9098 85 00                   ;
    LDA      bank5_Pointer_table_for_End_Credits+$01,y; 0x150aa $909A B9 5A 92     ;
    STA      $01                       ; 0x150ad $909D 85 01                   ;
    LDY      #$00                      ; 0x150af $909F A0 00                   ; Y = 00
L90A1:                                                                          ;
    LDA      (L0000),y                 ; 0x150b1 $90A1 B1 00                   ;
    STA      L0302,y                   ; 0x150b3 $90A3 99 02 03                ;
    INY                                ; 0x150b6 $90A6 C8                      ;
    CMP      #$FF                      ; 0x150b7 $90A7 C9 FF                   ;
    BNE      L90A1                     ; 0x150b9 $90A9 D0 F6                   ;
    INC      $33                       ; 0x150bb $90AB E6 33                   ;
    RTS                                ; 0x150bd $90AD 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table8:                                                                   ;
.byt    $08,$08,$08,$08,$C0,$08,$08,$08; 0x150be $90AE 08 08 08 08 C0 08 08 08 ;
; ---------------------------------------------------------------------------- ;
bank5_pointer_table1:                                                           ;
.word    bank5_Probably_related_to_Palette_fading; 0x150c6 $90B6 BA 90         ;
.word    L90DA                         ; 0x150c8 $90B8 DA 90                   ;
; ---------------------------------------------------------------------------- ;
bank5_Probably_related_to_Palette_fading:                                       ;
.byt    $0F,$05,$05,$16,$0F,$15,$05,$16; 0x150ca $90BA 0F 05 05 16 0F 15 05 16 ;
.byt    $0F,$25,$05,$16,$0F,$30,$15,$16; 0x150d2 $90C2 0F 25 05 16 0F 30 15 16 ;
.byt    $0F,$25,$05,$16,$0F,$15,$05,$16; 0x150da $90CA 0F 25 05 16 0F 15 05 16 ;
.byt    $0F,$05,$05,$16,$0F,$0F,$0F,$0F; 0x150e2 $90D2 0F 05 05 16 0F 0F 0F 0F ;
L90DA:                                                                          ;
.byt    $0F,$02,$02,$16,$0F,$12,$02,$16; 0x150ea $90DA 0F 02 02 16 0F 12 02 16 ;
.byt    $0F,$22,$02,$16,$0F,$30,$12,$16; 0x150f2 $90E2 0F 22 02 16 0F 30 12 16 ;
.byt    $0F,$22,$02,$16,$0F,$12,$02,$16; 0x150fa $90EA 0F 22 02 16 0F 12 02 16 ;
.byt    $0F,$02,$02,$16,$0F,$0F,$0F,$0F; 0x15102 $90F2 0F 02 02 16 0F 0F 0F 0F ;
L90FA:                                                                          ;
.byt    $00,$08                        ; 0x1510a $90FA 00 08                   ;
L90FC:                                                                          ;
.byt    $04,$00                        ; 0x1510c $90FC 04 00                   ;
; ---------------------------------------------------------------------------- ;
bank5_code14:                                                                   ;
    LDA      $37                       ; 0x1510e $90FE A5 37                   ;
    BNE      L9109                     ; 0x15110 $9100 D0 07                   ;
    LDY      $55                       ; 0x15112 $9102 A4 55                   ;
    LDA      bank5_table8,y            ; 0x15114 $9104 B9 AE 90                ;
    STA      $37                       ; 0x15117 $9107 85 37                   ;
L9109:                                                                          ;
    DEC      $37                       ; 0x15119 $9109 C6 37                   ;
    BNE      L9167                     ; 0x1511b $910B D0 5A                   ;
    LDA      $54                       ; 0x1511d $910D A5 54                   ;;projectile x		54,55,56,57,58,59	54,y	? only 56,59confirmed
    AND      #$01                      ; 0x1511f $910F 29 01                   ; keep bits .... ...x
    ASL                                ; 0x15121 $9111 0A                      ;
    TAX                                ; 0x15122 $9112 AA                      ;
    LDA      bank5_pointer_table1,x    ; 0x15123 $9113 BD B6 90                ;
    STA      L0000                     ; 0x15126 $9116 85 00                   ;
    LDA      bank5_pointer_table1+$01,x; 0x15128 $9118 BD B7 90                ;
    STA      $01                       ; 0x1512b $911B 85 01                   ;
    LDA      #$3F                      ; 0x1512d $911D A9 3F                   ; A = 3F
    STA      L0302                     ; 0x1512f $911F 8D 02 03                ;; Used when writing text to screen
    LDA      $54                       ; 0x15132 $9122 A5 54                   ;;projectile x		54,55,56,57,58,59	54,y	? only 56,59confirmed
    AND      #$01                      ; 0x15134 $9124 29 01                   ; keep bits .... ...x
    TAX                                ; 0x15136 $9126 AA                      ;
    LDA      L90FA,x                   ; 0x15137 $9127 BD FA 90                ;
    STA      $0303                     ; 0x1513a $912A 8D 03 03                ;; Letter position when writing to screen
    LDA      #$04                      ; 0x1513d $912D A9 04                   ; A = 04
    STA      $0304                     ; 0x1513f $912F 8D 04 03                ;; Text memory offset?
    LDA      $55                       ; 0x15142 $9132 A5 55                   ;
    ASL                                ; 0x15144 $9134 0A                      ;
    ASL                                ; 0x15145 $9135 0A                      ;
    TAY                                ; 0x15146 $9136 A8                      ;
    LDX      #$00                      ; 0x15147 $9137 A2 00                   ; X = 00
L9139:                                                                          ;
    LDA      (L0000),y                 ; 0x15149 $9139 B1 00                   ;
    STA      $0305,x                   ; 0x1514b $913B 9D 05 03                ;
    INY                                ; 0x1514e $913E C8                      ;
    INX                                ; 0x1514f $913F E8                      ;
    CPX      #$04                      ; 0x15150 $9140 E0 04                   ;
    BNE      L9139                     ; 0x15152 $9142 D0 F5                   ;
    LDA      #$FF                      ; 0x15154 $9144 A9 FF                   ; A = FF
    STA      $0309                     ; 0x15156 $9146 8D 09 03                ;
    INC      $55                       ; 0x15159 $9149 E6 55                   ;
    LDY      $55                       ; 0x1515b $914B A4 55                   ;
    LDA      bank5_table8,y            ; 0x1515d $914D B9 AE 90                ;
    STA      $37                       ; 0x15160 $9150 85 37                   ;
    CPY      #$04                      ; 0x15162 $9152 C0 04                   ;
    BNE      L9167                     ; 0x15164 $9154 D0 11                   ;
    INC      $54                       ; 0x15166 $9156 E6 54                   ;;projectile x		54,55,56,57,58,59	54,y	? only 56,59confirmed
    LDA      $54                       ; 0x15168 $9158 A5 54                   ;;projectile x		54,55,56,57,58,59	54,y	? only 56,59confirmed
    AND      #$01                      ; 0x1516a $915A 29 01                   ; keep bits .... ...x
    TAY                                ; 0x1516c $915C A8                      ;
    LDA      bank5_table7,y            ; 0x1516d $915D B9 56 90                ;
    STA      $33                       ; 0x15170 $9160 85 33                   ;
    LDA      L90FC,y                   ; 0x15172 $9162 B9 FC 90                ;
    STA      $55                       ; 0x15175 $9165 85 55                   ;
L9167:                                                                          ;
    RTS                                ; 0x15177 $9167 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table9:                                                                   ;
.byt    $64,$74,$74                    ; 0x15178 $9168 64 74 74                ;
L916B:                                                                          ;
.byt    $78,$70,$80                    ; 0x1517b $916B 78 70 80                ;
bank5_ppu_macro4:                                                               ;
.byt    $21,$CB,$45,$F4,$FF            ; 0x1517e $916E 21 CB 45 F4 FF          ;
; ---------------------------------------------------------------------------- ;
bank5_code15:                                                                   ;
    LDA      $54                       ; 0x15183 $9173 A5 54                   ;;projectile x		54,55,56,57,58,59	54,y	? only 56,59confirmed
    CMP      #$12                      ; 0x15185 $9175 C9 12                   ;
    BNE      L9194                     ; 0x15187 $9177 D0 1B                   ;
    LDA      #$00                      ; 0x15189 $9179 A9 00                   ; A = 00
    STA      $3F                       ; 0x1518b $917B 85 3F                   ;
    STA      $32                       ; 0x1518d $917D 85 32                   ;
    STA      $33                       ; 0x1518f $917F 85 33                   ;
    LDX      #$02                      ; 0x15191 $9181 A2 02                   ; X = 02
L9183:                                                                          ;
    LDA      bank5_table9,x            ; 0x15193 $9183 BD 68 91                ;
    STA      $38,x                     ; 0x15196 $9186 95 38                   ;
    LDA      L916B,x                   ; 0x15198 $9188 BD 6B 91                ;
    STA      $3B,x                     ; 0x1519b $918B 95 3B                   ;
    DEX                                ; 0x1519d $918D CA                      ;
    BPL      L9183                     ; 0x1519e $918E 10 F3                   ;
    INC      $0761                     ; 0x151a0 $9190 EE 61 07                ;
    RTS                                ; 0x151a3 $9193 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9194:                                                                          ;
    LDA      $54                       ; 0x151a4 $9194 A5 54                   ;;projectile x		54,55,56,57,58,59	54,y	? only 56,59confirmed
    CMP      #$10                      ; 0x151a6 $9196 C9 10                   ;
    BNE      L91A5                     ; 0x151a8 $9198 D0 0B                   ;
    LDY      #$04                      ; 0x151aa $919A A0 04                   ; Y = 04
L919C:                                                                          ;
    LDA      bank5_ppu_macro4,y        ; 0x151ac $919C B9 6E 91                ;
    STA      L0302,y                   ; 0x151af $919F 99 02 03                ;
    DEY                                ; 0x151b2 $91A2 88                      ;
    BPL      L919C                     ; 0x151b3 $91A3 10 F7                   ;
L91A5:                                                                          ;
    INC      $33                       ; 0x151b5 $91A5 E6 33                   ;
    RTS                                ; 0x151b7 $91A7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L91A8:                                                                          ;
    LDA      $37                       ; 0x151b8 $91A8 A5 37                   ;
    BNE      L91B3                     ; 0x151ba $91AA D0 07                   ;
    LDY      $55                       ; 0x151bc $91AC A4 55                   ;
    LDA      bank5_table8,y            ; 0x151be $91AE B9 AE 90                ;
    STA      $37                       ; 0x151c1 $91B1 85 37                   ;
L91B3:                                                                          ;
    DEC      $37                       ; 0x151c3 $91B3 C6 37                   ;
    BNE      L921B                     ; 0x151c5 $91B5 D0 64                   ;
    LDA      bank5_pointer_table1      ; 0x151c7 $91B7 AD B6 90                ;
    STA      L0000                     ; 0x151ca $91BA 85 00                   ;
    LDA      bank5_pointer_table1+$01  ; 0x151cc $91BC AD B7 90                ;
    STA      $01                       ; 0x151cf $91BF 85 01                   ;
    LDA      #$3F                      ; 0x151d1 $91C1 A9 3F                   ; A = 3F
    STA      L0302                     ; 0x151d3 $91C3 8D 02 03                ;; Used when writing text to screen
    LDA      #$00                      ; 0x151d6 $91C6 A9 00                   ; A = 00
    STA      $0303                     ; 0x151d8 $91C8 8D 03 03                ;; Letter position when writing to screen
    LDA      #$04                      ; 0x151db $91CB A9 04                   ; A = 04
    STA      $0304                     ; 0x151dd $91CD 8D 04 03                ;; Text memory offset?
    LDA      $55                       ; 0x151e0 $91D0 A5 55                   ;
    ASL                                ; 0x151e2 $91D2 0A                      ;
    ASL                                ; 0x151e3 $91D3 0A                      ;
    TAY                                ; 0x151e4 $91D4 A8                      ;
    LDX      #$00                      ; 0x151e5 $91D5 A2 00                   ; X = 00
L91D7:                                                                          ;
    LDA      (L0000),y                 ; 0x151e7 $91D7 B1 00                   ;
    STA      $0305,x                   ; 0x151e9 $91D9 9D 05 03                ;
    INY                                ; 0x151ec $91DC C8                      ;
    INX                                ; 0x151ed $91DD E8                      ;
    CPX      #$04                      ; 0x151ee $91DE E0 04                   ;
    BNE      L91D7                     ; 0x151f0 $91E0 D0 F5                   ;
    LDA      #$3F                      ; 0x151f2 $91E2 A9 3F                   ; A = 3F
    STA      $0309                     ; 0x151f4 $91E4 8D 09 03                ;
    LDA      #$08                      ; 0x151f7 $91E7 A9 08                   ; A = 08
    STA      $030A                     ; 0x151f9 $91E9 8D 0A 03                ;
    LDA      #$04                      ; 0x151fc $91EC A9 04                   ; A = 04
    STA      $030B                     ; 0x151fe $91EE 8D 0B 03                ;
    LDX      #$00                      ; 0x15201 $91F1 A2 00                   ; X = 00
    LDA      $55                       ; 0x15203 $91F3 A5 55                   ;
    ASL                                ; 0x15205 $91F5 0A                      ;
    ASL                                ; 0x15206 $91F6 0A                      ;
    ORA      #$20                      ; 0x15207 $91F7 09 20                   ; set  bits ..x. ....
    TAY                                ; 0x15209 $91F9 A8                      ;
L91FA:                                                                          ;
    LDA      (L0000),y                 ; 0x1520a $91FA B1 00                   ;
    STA      $030C,x                   ; 0x1520c $91FC 9D 0C 03                ;
    INY                                ; 0x1520f $91FF C8                      ;
    INX                                ; 0x15210 $9200 E8                      ;
    CPX      #$04                      ; 0x15211 $9201 E0 04                   ;
    BNE      L91FA                     ; 0x15213 $9203 D0 F5                   ;
    LDA      #$FF                      ; 0x15215 $9205 A9 FF                   ; A = FF
    STA      $030C,x                   ; 0x15217 $9207 9D 0C 03                ;
    INC      $55                       ; 0x1521a $920A E6 55                   ;
    LDA      $55                       ; 0x1521c $920C A5 55                   ;
    CMP      #$08                      ; 0x1521e $920E C9 08                   ;
    BNE      L921B                     ; 0x15220 $9210 D0 09                   ;
    LDA      #$00                      ; 0x15222 $9212 A9 00                   ; A = 00
    STA      $55                       ; 0x15224 $9214 85 55                   ;
    LDA      L9057                     ; 0x15226 $9216 AD 57 90                ;
    STA      $33                       ; 0x15229 $9219 85 33                   ;
L921B:                                                                          ;
    RTS                                ; 0x1522b $921B 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L921C:                                                                          ;
    LDA      #$01                      ; 0x1522c $921C A9 01                   ; A = 01
    STA      $07A0                     ; 0x1522e $921E 8D A0 07                ;; this is a new game+ file?, set it up during the save game load for newgame+ settings
    LDA      #$00                      ; 0x15231 $9221 A9 00                   ; A = 00
    STA      $0775                     ; 0x15233 $9223 8D 75 07                ; Current Experience (high byte)
    STA      $0776                     ; 0x15236 $9226 8D 76 07                ; Current Experience (low byte)
    LDY      #$69                      ; 0x15239 $9229 A0 69                   ; Y = 69
L922B:                                                                          ;
    STA      $0700,y                   ; 0x1523b $922B 99 00 07                ;
    DEY                                ; 0x1523e $922E 88                      ;
    BNE      L922B                     ; 0x1523f $922F D0 FA                   ;
    LDY      #$C0                      ; 0x15241 $9231 A0 C0                   ; Y = C0
L9233:                                                                          ;
    STA      $0700,y                   ; 0x15243 $9233 99 00 07                ;
    INY                                ; 0x15246 $9236 C8                      ;
    BNE      L9233                     ; 0x15247 $9237 D0 FA                   ;
    LDY      #$0F                      ; 0x15249 $9239 A0 0F                   ; Y = 0F
L923B:                                                                          ;
    STA      $E0,y                     ; 0x1524b $923B 99 E0 00                ;
    DEY                                ; 0x1524e $923E 88                      ;
    BPL      L923B                     ; 0x1524f $923F 10 FA                   ;
    JSR      LD293                     ; 0x15251 $9241 20 93 D2                ;
    INC      $076C                     ; 0x15254 $9244 EE 6C 07                ;; (00=restart from zelda's castle with 3 lives,  01=no routine, 02=die, 03=wake up zelda, 04=roll credits, 06=show the lives then restart the scene)
    RTS                                ; 0x15257 $9247 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9248:                                                                          ;
    JSR      L8C8B                     ; 0x15258 $9248 20 8B 8C                ;
    LDA      $F7                       ; 0x1525b $924B A5 F7                   ; Controller 1 Buttons Held
    AND      #$10                      ; 0x1525d $924D 29 10                   ; keep bits ...x .... (Start Button)
    BEQ      L9254                     ; 0x1525f $924F F0 03                   ;
    INC      $0761                     ; 0x15261 $9251 EE 61 07                ;
L9254:                                                                          ;
    RTS                                ; 0x15264 $9254 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9255:                                                                          ;
    INC      $0736                     ; 0x15265 $9255 EE 36 07                ; Game Mode
    RTS                                ; 0x15268 $9258 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Pointer_table_for_End_Credits:                                            ;
.word    bank5_End_Credits             ; 0x15269 $9259 7D 92                   ;
.word    L9293                         ; 0x1526b $925B 93 92                   ;
.word    L92A1                         ; 0x1526d $925D A1 92                   ;
.word    L92B7                         ; 0x1526f $925F B7 92                   ;
.word    L92C5                         ; 0x15271 $9261 C5 92                   ;
.word    L92D1                         ; 0x15273 $9263 D1 92                   ;
.word    L92E6                         ; 0x15275 $9265 E6 92                   ;
.word    L92F2                         ; 0x15277 $9267 F2 92                   ;
.word    L9307                         ; 0x15279 $9269 07 93                   ;
.word    L9319                         ; 0x1527b $926B 19 93                   ;
.word    L9325                         ; 0x1527d $926D 25 93                   ;
.word    L9337                         ; 0x1527f $926F 37 93                   ;
.word    L9325                         ; 0x15281 $9271 25 93                   ;
.word    L937E                         ; 0x15283 $9273 7E 93                   ;
.word    L9325                         ; 0x15285 $9275 25 93                   ;
.word    L9396                         ; 0x15287 $9277 96 93                   ;
.word    L934F                         ; 0x15289 $9279 4F 93                   ;
.word    L9364                         ; 0x1528b $927B 64 93                   ;
; ---------------------------------------------------------------------------- ;
bank5_End_Credits:                                                              ;
.byt    $22,$47,$12,$DE,$F1,$DE,$DC,$EE; 0x1528d $927D 22 47 12 DE F1 DE DC EE ;
.byt    $ED,$E2,$EF,$DE,$F4,$E9,$EB,$E8; 0x15295 $9285 ED E2 EF DE F4 E9 EB E8 ;
.byt    $DD,$EE,$DC,$DE,$EB,$FF        ; 0x1529d $928D DD EE DC DE EB FF       ;
L9293:                                                                          ;
.byt    $22,$8B,$0A,$E1,$CF,$F2,$DA,$E6; 0x152a3 $9293 22 8B 0A E1 CF F2 DA E6 ;
.byt    $DA,$EE,$DC,$E1,$E2,$FF        ; 0x152ab $929B DA EE DC E1 E2 FF       ;
L92A1:                                                                          ;
.byt    $22,$47,$12,$E9,$EB,$E8,$DD,$EE; 0x152b1 $92A1 22 47 12 E9 EB E8 DD EE ;
.byt    $DC,$DE,$EB,$F4,$F4,$F4,$F4,$F4; 0x152b9 $92A9 DC DE EB F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$FF        ; 0x152c1 $92B1 F4 F4 F4 F4 F4 FF       ;
L92B7:                                                                          ;
.byt    $22,$8B,$0A,$E6,$E2,$F2,$DA,$E1; 0x152c7 $92B7 22 8B 0A E6 E2 F2 DA E1 ;
.byt    $E8,$E7,$F4,$F4,$F4,$FF        ; 0x152cf $92BF E8 E7 F4 F4 F4 FF       ;
L92C5:                                                                          ;
.byt    $22,$47,$08,$DD,$E2,$EB,$DE,$DC; 0x152d5 $92C5 22 47 08 DD E2 EB DE DC ;
.byt    $ED,$E8,$EB,$FF                ; 0x152dd $92CD ED E8 EB FF             ;
L92D1:                                                                          ;
.byt    $22,$8B,$07,$EC,$EE,$E0,$E2,$F2; 0x152e1 $92D1 22 8B 07 EC EE E0 E2 F2 ;
.byt    $DA,$E7,$22,$CB,$07,$F2,$DA,$E6; 0x152e9 $92D9 DA E7 22 CB 07 F2 DA E6 ;
.byt    $DA,$E1,$DE,$E7,$FF            ; 0x152f1 $92E1 DA E1 DE E7 FF          ;
L92E6:                                                                          ;
.byt    $22,$47,$08,$DD,$DE,$EC,$E2,$E0; 0x152f6 $92E6 22 47 08 DD DE EC E2 E0 ;
.byt    $E7,$DE,$EB,$FF                ; 0x152fe $92EE E7 DE EB FF             ;
L92F2:                                                                          ;
.byt    $22,$8B,$07,$E2,$EC,$EC,$E1,$E2; 0x15302 $92F2 22 8B 07 E2 EC EC E1 E2 ;
.byt    $E7,$F4,$22,$CB,$07,$F4,$F4,$F4; 0x1530a $92FA E7 F4 22 CB 07 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$FF            ; 0x15312 $9302 F4 F4 F4 F4 FF          ;
L9307:                                                                          ;
.byt    $22,$47,$0E,$EC,$E8,$EE,$E7,$DD; 0x15317 $9307 22 47 0E EC E8 EE E7 DD ;
.byt    $F4,$DC,$E8,$E6,$E9,$E8,$EC,$DE; 0x1531f $930F F4 DC E8 E6 E9 E8 EC DE ;
.byt    $EB,$FF                        ; 0x15327 $9317 EB FF                   ;
L9319:                                                                          ;
.byt    $22,$8B,$08,$ED,$EC,$EE,$E4,$DA; 0x15329 $9319 22 8B 08 ED EC EE E4 DA ;
.byt    $EC,$DA,$E7,$FF                ; 0x15331 $9321 EC DA E7 FF             ;
L9325:                                                                          ;
.byt    $22,$47,$0E,$E9,$EB,$E8,$E0,$EB; 0x15335 $9325 22 47 0E E9 EB E8 E0 EB ;
.byt    $DA,$E6,$DE,$EB,$F4,$F4,$F4,$F4; 0x1533d $932D DA E6 DE EB F4 F4 F4 F4 ;
.byt    $F4,$FF                        ; 0x15345 $9335 F4 FF                   ;
L9337:                                                                          ;
.byt    $22,$8B,$09,$E6,$E8,$EB,$E2,$E4; 0x15347 $9337 22 8B 09 E6 E8 EB E2 E4 ;
.byt    $DA,$F3,$EE,$F4,$22,$CB,$08,$E6; 0x1534f $933F DA F3 EE F4 22 CB 08 E6 ;
.byt    $DA,$EB,$EE,$E6,$DA,$EB,$EE,$FF; 0x15357 $9347 DA EB EE E6 DA EB EE FF ;
L934F:                                                                          ;
.byt    $22,$47,$11,$ED,$E1,$DA,$E7,$E4; 0x1535f $934F 22 47 11 ED E1 DA E7 E4 ;
.byt    $EC,$F4,$DA,$F4,$E6,$E2,$E5,$E5; 0x15367 $9357 EC F4 DA F4 E6 E2 E5 E5 ;
.byt    $E2,$E8,$E7,$CF,$FF            ; 0x1536f $935F E2 E8 E7 CF FF          ;
L9364:                                                                          ;
.byt    $22,$8B,$0A,$E9,$EE,$EC,$E1,$F4; 0x15374 $9364 22 8B 0A E9 EE EC E1 F4 ;
.byt    $EC,$ED,$DA,$EB,$ED,$22,$CB,$09; 0x1537c $936C EC ED DA EB ED 22 CB 09 ;
.byt    $ED,$E8,$F4,$EB,$DE,$E9,$E5,$DA; 0x15384 $9374 ED E8 F4 EB DE E9 E5 DA ;
.byt    $F2,$FF                        ; 0x1538c $937C F2 FF                   ;
L937E:                                                                          ;
.byt    $22,$8B,$09,$EC,$E1,$E2,$E0,$DE; 0x1538e $937E 22 8B 09 EC E1 E2 E0 DE ;
.byt    $DC,$E1,$DA,$E7,$22,$CB,$08,$E7; 0x15396 $9386 DC E1 DA E7 22 CB 08 E7 ;
.byt    $E2,$EC,$E1,$E2,$F2,$DA,$E7,$FF; 0x1539e $938E E2 EC E1 E2 F2 DA E7 FF ;
L9396:                                                                          ;
.byt    $22,$8B,$09,$E7,$DA,$E4,$DA,$F3; 0x153a6 $9396 22 8B 09 E7 DA E4 DA F3 ;
.byt    $E8,$E8,$F4,$F4,$22,$CB,$08,$F4; 0x153ae $939E E8 E8 F4 F4 22 CB 08 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$FF; 0x153b6 $93A6 F4 F4 F4 F4 F4 F4 F4 FF ;
bank5_UNUSED_93AE:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153be $93AE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153c6 $93B6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153ce $93BE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153d6 $93C6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153de $93CE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153e6 $93D6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153ee $93DE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153f6 $93E6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x153fe $93EE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x15406 $93F6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF                        ; 0x1540e $93FE FF FF                   ;
; ---------------------------------------------------------------------------- ;
bank5_pointer_table2:                                                           ;
.word    L9C48                         ; 0x15410 $9400 48 9C                   ;
.word    L9C48                         ; 0x15412 $9402 48 9C                   ;
.word    L9C3D                         ; 0x15414 $9404 3D 9C                   ;
.word    L9BC8                         ; 0x15416 $9406 C8 9B                   ;
.word    L9BD2                         ; 0x15418 $9408 D2 9B                   ;
.word    L0000                         ; 0x1541a $940A 00 00                   ;
.word    L9BE1                         ; 0x1541c $940C E1 9B                   ;
.word    L9BC8                         ; 0x1541e $940E C8 9B                   ;
.word    L0000                         ; 0x15420 $9410 00 00                   ;
.word    L0000                         ; 0x15422 $9412 00 00                   ;
.word    L0000                         ; 0x15424 $9414 00 00                   ;
.word    L9C69                         ; 0x15426 $9416 69 9C                   ;
; ---------------------------------------------------------------------------- ;
bank5_table10:                                                                  ;
.byt    $00,$03,$81,$86,$53,$82,$A4,$86; 0x15428 $9418 00 03 81 86 53 82 A4 86 ;
.byt    $86                            ; 0x15430 $9420 86                      ;
bank5_Enemy_Hit_Points:                                                         ;
.byt    $00,$00,$00,$18,$30,$FF,$06,$04; 0x15431 $9421 00 00 00 18 30 FF 06 04 ;
.byt    $00,$00,$02,$02,$02,$04,$06,$08; 0x15439 $9429 00 00 02 02 02 04 06 08 ;
.byt    $08,$0C,$0C,$00,$FF,$FF,$60,$FF; 0x15441 $9431 08 0C 0C 00 FF FF 60 FF ;
.byt    $00,$30,$60,$00,$02,$90,$38,$00; 0x15449 $9439 00 30 60 00 02 90 38 00 ;
.byt    $00,$00,$C0,$F8                ; 0x15451 $9441 00 00 C0 F8             ;
; ---------------------------------------------------------------------------- ;
bank5_Pointer_table_for_Enemy_Init_Routines:                                    ;
.word    bank5_code_rts                ; 0x15455 $9445 AD 95                   ;Fairy			(00)
.word    bank5_code_rts                ; 0x15457 $9447 AD 95                   ;Palace Item		(01)
.word    bank5_code_rts                ; 0x15459 $9449 AD 95                   ;Locked Door		(02)
.word    bank5_code_rts                ; 0x1545b $944B AD 95                   ;Myu			(03)
.word    bank5_code_rts                ; 0x1545d $944D AD 95                   ;Bot			(04)
.word    bank5_code_rts                ; 0x1545f $944F AD 95                   ;Hidden Red Jar		(05)
.word    bank5_code_rts                ; 0x15461 $9451 AD 95                   ;Moa (free roaming)	(06)
.word    bank5_code_rts                ; 0x15463 $9453 AD 95                   ;Ache			(07)
.word    bank5_code_rts                ; 0x15465 $9455 AD 95                   ;? Mega Glitch		(08)
.word    bank5_code_rts                ; 0x15467 $9457 AD 95                   ;? Fast Glitch		(09)
.word    bank5_code_rts                ; 0x15469 $9459 AD 95                   ;Acheman			(0A)
.word    bank5_code_rts                ; 0x1546b $945B AD 95                   ;Bubbles Generator (uses Energy Ball sprite)	(0B)
.word    bank5_code_rts                ; 0x1546d $945D AD 95                   ;Rocks Generator (uses Energy Ball sprite)	(0C)
.word    bank5_code_rts                ; 0x1546f $945F AD 95                   ;Red Deeler (glitched behavior)		(0D)
.word    bank5_code_rts                ; 0x15471 $9461 AD 95                   ;Blue Deeler (visual glitch only)	(0E)
.word    bank5_Enemy_Init_Routines_Fire_Bago_Bago_Generator; 0x15473 $9463 1D A3;Fire Bago Bago Generator	(0F)
.word    bank5_code_rts                ; 0x15475 $9465 AD 95                   ;Fire Bago Bago		(10)
.word    bank5_code_rts                ; 0x15477 $9467 AD 95                   ;Fire Rope - Jumping	(11)
.word    bank5_code_rts                ; 0x15479 $9469 AD 95                   ;Fire Rope - Moving	(11)
.word    bank5_code_rts                ; 0x1547b $946B AD 95                   ;Elevator		(13)
.word    bank5_Enemy_Init_Routines_Bubble; 0x1547d $946D 27 A1                 ;Bubble - Slow		(14)
.word    bank5_Enemy_Init_Routines_Bubble__Fast; 0x1547f $946F 2B A1           ;Bubble - Fast		(15)
.word    bank5_Enemy_Init_Routines_Ra  ; 0x15481 $9471 3B 96                   ;Ra			(16)
.word    bank5_Enemy_Init_Routines_Bubble; 0x15483 $9473 27 A1                 ;Big Bubble		(17)
.word    bank5_code_rts                ; 0x15485 $9475 AD 95                   ;Fokka - Orange (glitchy)	(18)
.word    bank5_code_rts                ; 0x15487 $9477 AD 95                   ;Fokka - Red		(19)
.word    bank5_code_rts                ; 0x15489 $9479 AD 95                   ;Fokka - Blue		(1A)
.word    bank5_code_rts                ; 0x1548b $947B AD 95                   ;?			(1B)
.word    bank5_code_rts                ; 0x1548d $947D AD 95                   ;??? Crash		(1C)
.word    bank5_code_rts                ; 0x1548f $947F AD 95                   ;Fokkeru			(1D)
.word    bank5_code_rts                ; 0x15491 $9481 AD 95                   ;Giant Bot		(1E)
.word    bank5_code_rts                ; 0x15493 $9483 AD 95                   ;? Crash			(1F)
.word    bank5_code_rts                ; 0x15495 $9485 AD 95                   ;Electric Barrier	(20)
.word    bank5_code_rts                ; 0x15497 $9487 AD 95                   ;? Crash			(21)
.word    bank5_Enemy_Init_Routines_Thunderbird; 0x15499 $9489 3B A3            ;Thunderbird		(22)
.word    bank5_Enemy_Init_Routines_Dark_Link_Battle_Trigger; 0x1549b $948B 96 97;Dark Link Battle Trigger	(23)
bank5_Pointer_table_for_Enemy_Routines1:                                        ;
.word    bank7_Enemy_Routines1_Fairy   ; 0x1549d $948D 1E D9                   ;Fairy			(00)
.word    bank7_Enemy_Routines1_Red_Jar ; 0x1549f $948F 59 D9                   ;Palace Item		(01)
.word    bank7_Enemy_Routines1_Locked_Door; 0x154a1 $9491 91 D9                ;Locked Door		(02)
.word    bank7_Enemy_Routines1_Myu     ; 0x154a3 $9493 47 DA                   ;Myu			(03)
.word    bank7_Enemy_Routines1_Bot     ; 0x154a5 $9495 0C DA                   ;Bot			(04)
.word    bank5_Enemy_Routines1_HiddenRedJar; 0x154a7 $9497 21 A5               ;Hidden Red Jar		(05)
.word    bank7_Enemy_Routines1_Moa     ; 0x154a9 $9499 CF DA                   ;Moa (free roaming)	(06)
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0x154ab $949B 53 DB           ;Ache			(07)
.word    LAB98                         ; 0x154ad $949D 98 AB                   ;? Mega Glitch		(08)
.word    LABE9                         ; 0x154af $949F E9 AB                   ;? Fast Glitch		(09)
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0x154b1 $94A1 53 DB           ;Acheman			(0A)
.word    bank7_Enemy_Routines1_Raising_Bubbles; 0x154b3 $94A3 15 DC            ;Bubbles Generator (uses Energy Ball sprite)	(0B)
.word    bank7_Desert_Rocks_initialization_routine; 0x154b5 $94A5 4F DC        ;Rocks Generator (uses Energy Ball sprite)	(0C)
.word    bank7_Enemy_Routines1_Deeler  ; 0x154b7 $94A7 DF D6                   ;Red Deeler (glitched behavior)		(0D)
.word    bank7_Enemy_Routines1_Deeler  ; 0x154b9 $94A9 DF D6                   ;Blue Deeler (visual glitch only)	(0E)
.word    bank7_Enemy_Routines1_Bago_Bago_Generator; 0x154bb $94AB 8F D7        ;Fire Bago Bago Generator	(0F)
.word    bank7_Enemy_Routines1_Bago_Bago0; 0x154bd $94AD E1 D7                 ;Fire Bago Bago		(10)
.word    bank7_Enemy_Routines1_Bago_Bago1; 0x154bf $94AF 42 D8                 ;Fire Rope - Jumping	(11)
.word    bank7_Enemy_Routines1_Octorok ; 0x154c1 $94B1 88 D8                   ;Fire Rope - Moving	(11)
.word    bank7_Enemy_Routines1_Elevator; 0x154c3 $94B3 C2 D8                   ;Elevator		(13)
.word    bank5_Enemy_Routines1_Bubbles ; 0x154c5 $94B5 75 A0                   ;Bubble - Slow		(14)
.word    bank5_Enemy_Routines1_Bubbles ; 0x154c7 $94B7 75 A0                   ;Bubble - Fast		(15)
.word    bank5_Enemy_Routines1_Ra      ; 0x154c9 $94B9 67 96                   ;Ra			(16)
.word    bank5_Enemy_Routines1_Bubbles ; 0x154cb $94BB 75 A0                   ;Big Bubble		(17)
.word    bank5_Enemy_Routines1_Fokka   ; 0x154cd $94BD 2C 9D                   ;Fokka - Orange (glitchy)	(18)
.word    bank5_Enemy_Routines1_Fokka   ; 0x154cf $94BF 2C 9D                   ;Fokka - Red		(19)
.word    bank5_Enemy_Routines1_Fokka   ; 0x154d1 $94C1 2C 9D                   ;Fokka - Blue		(1A)
.word    L9E66                         ; 0x154d3 $94C3 66 9E                   ;?			(1B)
.word    L9E67                         ; 0x154d5 $94C5 67 9E                   ;??? Crash		(1C)
.word    bank5_Enemy_Routines1_Fokkeru ; 0x154d7 $94C7 6B 9E                   ;Fokkeru			(1D)
.word    bank5_Enemy_Routines1_Giant_Bot; 0x154d9 $94C9 80 A1                  ;Giant Bot		(1E)
.word    L0000                         ; 0x154db $94CB 00 00                   ;? Crash			(1F)
.word    bank5_Enemy_Routines1_Electric_Barrier; 0x154dd $94CD 34 A2           ;Electric Barrier	(20)
.word    L0000                         ; 0x154df $94CF 00 00                   ;? Crash			(21)
.word    bank5_Enemy_Routines1_Thunderbird; 0x154e1 $94D1 59 A3                ;Thunderbird		(22)
.word    bank5_Enemy_Routines1_Dark_Link_Battle_Trigger; 0x154e3 $94D3 C6 97   ;Dark Link Battle Trigger	(23)                      
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Attributes_Palette_Experience_Code_etc:                             ;
;xx.. ....	Palette Code (0-3)                                                  ;
;..x. ....	No Damage from Sword (needs Fire)                                   ;
;...x ....	Steals Experience Points                                            ;
;.... xxxx	Experience Code (0-F)                                               ;
.byt    $40,$40,$40,$C4,$C4,$84,$D3,$C2; 0x154e5 $94D5 40 40 40 C4 C4 84 D3 C2 ;
.byt    $C0,$D0,$80,$00,$00,$82,$C3,$05; 0x154ed $94DD C0 D0 80 00 00 82 C3 05 ;
.byt    $95,$85,$85,$40,$C5,$C5,$55,$C0; 0x154f5 $94E5 95 85 85 40 C5 C5 55 C0 ;
.byt    $48,$88,$C9,$90,$90,$8B,$C0,$02; 0x154fd $94ED 48 88 C9 90 90 8B C0 02 ;
.byt    $02,$02,$CF,$4A                ; 0x15505 $94F5 02 02 CF 4A             ;
bank5_Enemy_Vulnerability_Damage_Codes:                                         ;
;xx.. ....	Strength Code (0 = gives no items, 1 = weak, 2 = strong)            ;
;..x. ....	Immune to Flying Blade and Fire                                     ;
;...x ....	?                                                                   ;
;.... xxxx	Damage Code                                                         ;
.byt    $30,$30,$30,$43,$43,$63,$41,$40; 0x15509 $94F9 30 30 30 43 43 63 41 40 ;
.byt    $53,$53,$42,$50,$40,$40,$40,$33; 0x15511 $9501 53 53 42 50 40 40 40 33 ;
.byt    $43,$44,$44,$30,$03,$03,$43,$33; 0x15519 $9509 43 44 44 30 03 03 43 33 ;
.byt    $35,$35,$35,$00,$00,$34,$33,$01; 0x15521 $9511 35 35 35 00 00 34 33 01 ;
.byt    $36,$01,$35,$34                ; 0x15529 $9519 36 01 35 34             ;
bank5_Enemy_Size_Codes:                                                         ;
.byt    $0F,$0F,$04                    ; 0x1552d $951D 0F 0F 04                ;
L9520:                                                                          ;
.byt    $02,$01,$01,$01,$01,$01,$01,$81; 0x15530 $9520 02 01 01 01 01 01 01 81 ;
.byt    $01,$01,$01,$01,$01,$01,$01,$01; 0x15538 $9528 01 01 01 01 01 01 01 01 ;
.byt    $03,$01,$01,$01,$80,$80,$80,$80; 0x15540 $9530 03 01 01 01 80 80 80 80 ;
.byt    $00,$01,$80,$90,$00,$0D,$00,$00; 0x15548 $9538 00 01 80 90 00 0D 00 00 ;
.byt    $0E                            ; 0x15550 $9540 0E                      ;
bank5_Other_Enemy_Attributes_6E41_in_RAM:                                       ;
;x... ....	Immune to Thunder Spell                                             ;
;.x.. ....	Regenerates                                                         ;
;..x. ....	? (never used)                                                      ;
;...x ....	Not hittable with sword                                             ;
;.... xxxx	? (0 or 6)                                                          ;
.byt    $96,$86,$96,$46,$46,$46,$06,$40; 0x15551 $9541 96 86 96 46 46 46 06 40 ;
.byt    $90,$86,$00,$90,$90,$06,$06,$90; 0x15559 $9549 90 86 00 90 90 06 06 90 ;
.byt    $06,$06,$06,$90,$C6,$C6,$C0,$C6; 0x15561 $9551 06 06 06 90 C6 C6 C0 C6 ;
.byt    $00,$00,$00,$00,$00,$00,$80,$06; 0x15569 $9559 00 00 00 00 00 00 80 06 ;
.byt    $96,$06,$26,$86                ; 0x15571 $9561 96 06 26 86             ;
; ---------------------------------------------------------------------------- ;
bank5_Pointer_table_for_Enemy_Routines2:                                        ;
.word    bank7_Enemy_Routines2_Fairy   ; 0x15575 $9565 DD F0                   ;Fairy			(00)
.word    bank7_Enemy_Routines2_RedJar  ; 0x15577 $9567 12 F1                   ;Palace Item		(01)
.word    bank7_Enemy_Routines2_LockedDoor; 0x15579 $9569 3A F1                 ;Locked Door		(02)
.word    bank7_Enemy_Routines2_Myu     ; 0x1557b $956B C2 EF                   ;Myu			(03)
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x1557d $956D 91 EF                ;Bot			(04)
.word    bank5_code_rts                ; 0x1557f $956F AD 95                   ;Hidden Red Jar		(05)
.word    bank7_Enemy_Routines2_Moa     ; 0x15581 $9571 F2 EF                   ;Moa (free roaming)	(06)
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0x15583 $9573 7E F1           ;Ache			(07)
.word    bank7_Enemy_Routines2_unknown ; 0x15585 $9575 D2 EF                   ;? Mega Glitch		(08)
.word    bank7_Enemy_Routines2_unknown ; 0x15587 $9577 D2 EF                   ;? Fast Glitch		(09)
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0x15589 $9579 7E F1           ;Acheman			(0A)
.word    L0000                         ; 0x1558b $957B 00 00                   ;Bubbles Generator (uses Energy Ball
.word    L0000                         ; 0x1558d $957D 00 00                   ;Rocks Generator (uses Energy Ball s
.word    bank7_Enemy_Routines2_Deeler  ; 0x1558f $957F 27 F0                   ;Red Deeler (glitched behavior)		
.word    bank7_Enemy_Routines2_Deeler  ; 0x15591 $9581 27 F0                   ;Blue Deeler (visual glitch only)
.word    bank5_code_rts                ; 0x15593 $9583 AD 95                   ;Fire Bago Bago Generator	(0F)
.word    bank7_Enemy_Routines2_BagoBago; 0x15595 $9585 B9 F0                   ;Fire Bago Bago		(10)
.word    bank5_Enemy_Routines2_Fire_Rope__Jumping_or_Moving; 0x15597 $9587 A0 96;Fire Rope - Jumping	(11)
.word    bank5_Enemy_Routines2_Fire_Rope__Jumping_or_Moving; 0x15599 $9589 A0 96;Fire Rope - Moving	(11)
.word    bank7_Enemy_Routines2_Elevator; 0x1559b $958B 47 EF                   ;Elevator		(13)
.word    bank5_Enemy_Routines2_Bubble___Slow_or_Fast; 0x1559d $958D 2C 96      ;Bubble - Slow		(14)
.word    bank5_Enemy_Routines2_Bubble___Slow_or_Fast; 0x1559f $958F 2C 96      ;Bubble - Fast		(15)
.word    bank5_Enemy_Routines2_Ra      ; 0x155a1 $9591 95 96                   ;Ra			(16)
.word    bank5_Enemy_Routines2_Big_Bubble; 0x155a3 $9593 33 A1                 ;Big Bubble		(17)
.word    bank5_Enemy_Routines2_Fokka   ; 0x155a5 $9595 D4 9F                   ;Fokka - Orange (glitchy)	(18)
.word    bank5_Enemy_Routines2_Fokka   ; 0x155a7 $9597 D4 9F                   ;Fokka - Red		(19)
.word    bank5_Enemy_Routines2_Fokka   ; 0x155a9 $9599 D4 9F                   ;Fokka - Blue		(1A)
.word    L0000                         ; 0x155ab $959B 00 00                   ;?			(1B)
.word    bank5_code_rts                ; 0x155ad $959D AD 95                   ;??? Crash		(1C)
.word    bank5_Enemy_Routines2_Fokkeru ; 0x155af $959F 5B A0                   ;Fokkeru			(1D)
.word    bank5_Enemy_Routines2_Giant_Bot; 0x155b1 $95A1 A5 96                  ;Giant Bot		(1E)
.word    L0000                         ; 0x155b3 $95A3 00 00                   ;? Crash			(1F)
.word    L0000                         ; 0x155b5 $95A5 00 00                   ;Electric Barrier	(20)
.word    L0000                         ; 0x155b7 $95A7 00 00                   ;? Crash			(21)
.word    bank5_Enemy_Routines2_Thunderbird; 0x155b9 $95A9 BF 9E                ;Thunderbird		(22)
.word    bank5_Enemy_Routines2_Dark_Link_Battle_Trigger; 0x155bb $95AB 72 A4   ;Dark Link Battle Trigger	(23)
; ---------------------------------------------------------------------------- ;
bank5_code_rts:                                                                 ;
    RTS                                ; 0x155bd $95AD 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_95AE:                                                               ;
.byt    $CE,$CE,$84,$3F,$53,$52,$3F,$3F; 0x155be $95AE CE CE 84 3F 53 52 3F 3F ;
.byt    $00,$03,$00,$01,$01,$00,$01,$01; 0x155c6 $95B6 00 03 00 01 01 00 01 01 ;
.byt    $01,$00,$00,$00,$18,$9D,$FB,$9C; 0x155ce $95BE 01 00 00 00 18 9D FB 9C ;
.byt    $06,$9D,$18,$9D,$FB,$9C,$FB,$9C; 0x155d6 $95C6 06 9D 18 9D FB 9C FB 9C ;
.byt    $CE,$9C,$18,$9D,$AD,$95,$41,$43; 0x155de $95CE CE 9C 18 9D AD 95 41 43 ;
.byt    $49,$4B,$41,$43,$45,$47,$4D,$43; 0x155e6 $95D6 49 4B 41 43 45 47 4D 43 ;
.byt    $51,$4B,$4D,$43,$4F,$47,$41,$43; 0x155ee $95DE 51 4B 4D 43 4F 47 41 43 ;
.byt    $2D,$2F,$57,$59,$53,$55,$F5,$5B; 0x155f6 $95E6 2D 2F 57 59 53 55 F5 5B ;
.byt    $35,$37,$E0,$E2,$E4,$E6,$E0,$E2; 0x155fe $95EE 35 37 E0 E2 E4 E6 E0 E2 ;
.byt    $EC,$EE,$E8,$EA,$E4,$E6,$E8,$EA; 0x15606 $95F6 EC EE E8 EA E4 E6 E8 EA ;
.byt    $EC,$EE,$11,$13,$17,$19,$1D,$1F; 0x1560e $95FE EC EE 11 13 17 19 1D 1F ;
.byt    $21,$23,$25,$27,$71,$73,$75,$77; 0x15616 $9606 21 23 25 27 71 73 75 77 ;
.byt    $3D,$3D,$F2,$F4,$F8,$FA,$07,$07; 0x1561e $960E 3D 3D F2 F4 F8 FA 07 07 ;
.byt    $09,$09,$05,$05,$0B,$0D,$61,$33; 0x15626 $9616 09 09 05 05 0B 0D 61 33 ;
.byt    $35                            ; 0x1562e $961E 35                      ;
L961F:                                                                          ;
.byt    $37,$E8,$E8,$F8,$F8            ; 0x1562f $961F 37 E8 E8 F8 F8          ;
L9624:                                                                          ;
.byt    $08                            ; 0x15634 $9624 08                      ;
L9625:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$00            ; 0x15635 $9625 FF FF FF FF 00          ;
L962A:                                                                          ;
.byt    $10,$F0                        ; 0x1563a $962A 10 F0                   ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines2_Bubble___Slow_or_Fast:                                    ;
    LDA      #$02                      ; 0x1563c $962C A9 02                   ;;A = #$02 0000_0010
    STA      $02                       ; 0x1563e $962E 85 02                   ;
    LDA      $12                       ; 0x15640 $9630 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x15642 $9632 29 03                   ;;Keep Bits:0000_0011
    STA      $03                       ; 0x15644 $9634 85 03                   ;
    LDX      #$5A                      ; 0x15646 $9636 A2 5A                   ;;X = #$5a 0101_1010
    JMP      bank7_code49              ; 0x15648 $9638 4C 03 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Init_Routines_Ra:                                                   ;
    LDA      $29                       ; 0x1564b $963B A5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    SBC      #$30                      ; 0x1564d $963D E9 30                   ;
    STA      $2A,x                     ; 0x1564f $963F 95 2A                   ;; Enemy Y Position
    LDY      $5F                       ; 0x15651 $9641 A4 5F                   ;; Link's facing direction
    LDA      $072C                     ; 0x15653 $9643 AD 2C 07                ;; Scrolling Offset Low Byte
    ADC      L965E,y                   ; 0x15656 $9646 79 5E 96                ;
    STA      $4E,x                     ; 0x15659 $9649 95 4E                   ;; Enemy X Position (low byte)
    LDA      $072A                     ; 0x1565b $964B AD 2A 07                ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x1565e $964E 69 00                   ;
    STA      $3C,x                     ; 0x15660 $9650 95 3C                   ;; Enemy X Position (high byte)
    LDA      L9660,y                   ; 0x15662 $9652 B9 60 96                ;
    STA      $71,x                     ; 0x15665 $9655 95 71                   ;; Enemy X Velocity
    JSR      LDAC7                     ; 0x15667 $9657 20 C7 DA                ;
    STA      $AF,x                     ; 0x1566a $965A 95 AF                   ;; Various enemy state variables
L965E     = * + $0002                                                          ;
    JMP      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x1566c $965C 4C 91 DC;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table11:                                                                  ;
.byt    $EF                            ; 0x1566f $965F EF                      ;
L9660:                                                                          ;
.byt    $00,$E8,$18                    ; 0x15670 $9660 00 E8 18                ;
L9663:                                                                          ;
.byt    $02,$FE                        ; 0x15673 $9663 02 FE                   ;
L9665:                                                                          ;
.byt    $38,$C8                        ; 0x15675 $9665 38 C8                   ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines1_Ra:                                                       ;
    LDA      $C9                       ; 0x15677 $9667 A5 C9                   ;
    AND      #$0C                      ; 0x15679 $9669 29 0C                   ; keep bits xx.. ....
    BEQ      L9670                     ; 0x1567b $966B F0 03                   ;
    JSR      bank5_Enemy_Init_Routines_Ra; 0x1567d $966D 20 3B 96                ;
L9670:                                                                          ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x15680 $9670 20 02 DA                ;
    LDA      $AF,x                     ; 0x15683 $9673 B5 AF                   ;; Various enemy state variables
    AND      #$01                      ; 0x15685 $9675 29 01                   ; keep bits .... ...x
    TAY                                ; 0x15687 $9677 A8                      ;
    LDA      $057E,x                   ; 0x15688 $9678 BD 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    CLC                                ; 0x1568b $967B 18                      ;
    ADC      L9663,y                   ; 0x1568c $967C 79 63 96                ;
    STA      $057E,x                   ; 0x1568f $967F 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    CMP      L9665,y                   ; 0x15692 $9682 D9 65 96                ;
    BNE      L9689                     ; 0x15695 $9685 D0 02                   ;
    INC      $AF,x                     ; 0x15697 $9687 F6 AF                   ;; Various enemy state variables
L9689:                                                                          ;
    JSR      bank7_Simple_Vertical_Movement; 0x15699 $9689 20 C8 DE                ;
L968D     = * + $0001                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x1569c $968C 20 B8 DE              ;
    JSR      LDE40                     ; 0x1569f $968F 20 40 DE                ;
    JMP      bank7_Link_Collision_Detection; 0x156a2 $9692 4C C1 D6                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines2_Ra:                                                       ;
    LDX      #$4A                      ; 0x156a5 $9695 A2 4A                   ; X = 4A
    LDA      $02                       ; 0x156a7 $9697 A5 02                   ;
    EOR      #$03                      ; 0x156a9 $9699 49 03                   ; flip bits .... ..xx
    STA      $02                       ; 0x156ab $969B 85 02                   ;
    JMP      LF0D7                     ; 0x156ad $969D 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines2_Fire_Rope__Jumping_or_Moving:                             ;
    LDA      #$46                      ; 0x156b0 $96A0 A9 46                   ;;A = #$46 0100_0110
    JMP      LF0CC                     ; 0x156b2 $96A2 4C CC F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines2_Giant_Bot:                                                ;
    LDY      #$50                      ; 0x156b5 $96A5 A0 50                   ;;Y = #$50 0101_0000
.byt    $A9                            ; 0x156b7 $96A7 A9                      ;
L96A8:                                                                          ;
.byt    $02                            ; 0x156b8 $96A8 02                      ;
    STA      $02                       ; 0x156b9 $96A9 85 02                   ;
    LDX      #$3C                      ; 0x156bb $96AB A2 3C                   ;;X = #$3c 0011_1100
    JSR      LF1F4                     ; 0x156bd $96AD 20 F4 F1                ;
    JSR      LF0D7                     ; 0x156c0 $96B0 20 D7 F0                ;
    LDA      $C9                       ; 0x156c3 $96B3 A5 C9                   ;
    PHA                                ; 0x156c5 $96B5 48                      ;
    ASL                                ; 0x156c6 $96B6 0A                      ;
    ASL                                ; 0x156c7 $96B7 0A                      ;
    AND      #$0F                      ; 0x156c8 $96B8 29 0F                   ;;Keep Bits:0000_1111
    STA      $C9                       ; 0x156ca $96BA 85 C9                   ;
    LDA      $2A,x                     ; 0x156cc $96BC B5 2A                   ;; Enemy Y Position
    STA      L0000                     ; 0x156ce $96BE 85 00                   ;
    LDA      $01                       ; 0x156d0 $96C0 A5 01                   ;
    CLC                                ; 0x156d2 $96C2 18                      ;
    ADC      #$10                      ; 0x156d3 $96C3 69 10                   ;
    STA      $01                       ; 0x156d5 $96C5 85 01                   ;
    DEC      $02                       ; 0x156d7 $96C7 C6 02                   ;
    LDX      #$3C                      ; 0x156d9 $96C9 A2 3C                   ;;X = #$3c 0011_1100
    JSR      LF1F4                     ; 0x156db $96CB 20 F4 F1                ;
    LDA      L0000                     ; 0x156de $96CE A5 00                   ;
    SEC                                ; 0x156e0 $96D0 38                      ;
    SBC      $D9                       ; 0x156e1 $96D1 E5 D9                   ;; Thunder Spell modifier ?
    JSR      LF0D7                     ; 0x156e3 $96D3 20 D7 F0                ;
    LDA      $2A,x                     ; 0x156e6 $96D6 B5 2A                   ;; Enemy Y Position
    STA      $0270                     ; 0x156e8 $96D8 8D 70 02                ;
    STA      $0278                     ; 0x156eb $96DB 8D 78 02                ;
    ADC      #$10                      ; 0x156ee $96DE 69 10                   ;
    STA      $0274                     ; 0x156f0 $96E0 8D 74 02                ;
    STA      $027C                     ; 0x156f3 $96E3 8D 7C 02                ;
    LDA      $12                       ; 0x156f6 $96E6 A5 12                   ;; Frame Counter (ascending)
    AND      #$10                      ; 0x156f8 $96E8 29 10                   ;;Keep Bits:0001_0000
    LSR                                ; 0x156fa $96EA 4A                      ;
    LSR                                ; 0x156fb $96EB 4A                      ;
    LSR                                ; 0x156fc $96EC 4A                      ;
    LSR                                ; 0x156fd $96ED 4A                      ;
    STA      $05                       ; 0x156fe $96EE 85 05                   ;
    ADC      $CD                       ; 0x15700 $96F0 65 CD                   ;
    SEC                                ; 0x15702 $96F2 38                      ;
    SBC      #$08                      ; 0x15703 $96F3 E9 08                   ;
    STA      $0273                     ; 0x15705 $96F5 8D 73 02                ;
    STA      $0277                     ; 0x15708 $96F8 8D 77 02                ;
    LDA      $CD                       ; 0x1570b $96FB A5 CD                   ;
    CLC                                ; 0x1570d $96FD 18                      ;
    ADC      #$20                      ; 0x1570e $96FE 69 20                   ;
    SEC                                ; 0x15710 $9700 38                      ;
    SBC      $05                       ; 0x15711 $9701 E5 05                   ;
    STA      $027B                     ; 0x15713 $9703 8D 7B 02                ;
    STA      $027F                     ; 0x15716 $9706 8D 7F 02                ;
    LDA      #$F0                      ; 0x15719 $9709 A9 F0                   ;;A = #$f0 1111_0000
    STA      $0271                     ; 0x1571b $970B 8D 71 02                ;
    STA      $0279                     ; 0x1571e $970E 8D 79 02                ;
    LDA      #$F6                      ; 0x15721 $9711 A9 F6                   ;;A = #$f6 1111_0110
    STA      $0275                     ; 0x15723 $9713 8D 75 02                ;
    STA      $027D                     ; 0x15726 $9716 8D 7D 02                ;
    LDA      $0252                     ; 0x15729 $9719 AD 52 02                ;
    STA      $0272                     ; 0x1572c $971C 8D 72 02                ;
    STA      $0276                     ; 0x1572f $971F 8D 76 02                ;
    ORA      #$40                      ; 0x15732 $9722 09 40                   ;;Set Bits:0100_0000
    STA      $027A                     ; 0x15734 $9724 8D 7A 02                ;
    STA      $027E                     ; 0x15737 $9727 8D 7E 02                ;
    LDA      $4E,x                     ; 0x1573a $972A B5 4E                   ;; Enemy X Position (low byte)
    PHA                                ; 0x1573c $972C 48                      ;
    SEC                                ; 0x1573d $972D 38                      ;
    SBC      #$08                      ; 0x1573e $972E E9 08                   ;
    STA      $4E,x                     ; 0x15740 $9730 95 4E                   ;; Enemy X Position (low byte)
    LDA      $3C,x                     ; 0x15742 $9732 B5 3C                   ;; Enemy X Position (high byte)
    PHA                                ; 0x15744 $9734 48                      ;
    SBC      #$00                      ; 0x15745 $9735 E9 00                   ;
    STA      $3C,x                     ; 0x15747 $9737 95 3C                   ;; Enemy X Position (high byte)
    INX                                ; 0x15749 $9739 E8                      ;
    LDY      #$01                      ; 0x1574a $973A A0 01                   ;;Y = #$01 0000_0001
    JSR      LF2D3                     ; 0x1574c $973C 20 D3 F2                ;
    LDX      $10                       ; 0x1574f $973F A6 10                   ;; used as monster x register ;draw boss hp bar
    AND      #$84                      ; 0x15751 $9741 29 84                   ;;Keep Bits:1000_0100
    BEQ      L975A                     ; 0x15753 $9743 F0 15                   ;
    BPL      L974F                     ; 0x15755 $9745 10 08                   ;
    LDY      #$F8                      ; 0x15757 $9747 A0 F8                   ;;Y = #$f8 1111_1000
    STY      $0270                     ; 0x15759 $9749 8C 70 02                ;
    STY      $0274                     ; 0x1575c $974C 8C 74 02                ;
L974F:                                                                          ;
    ASL                                ; 0x1575f $974F 0A                      ;
    BEQ      L975A                     ; 0x15760 $9750 F0 08                   ;
    LDY      #$F8                      ; 0x15762 $9752 A0 F8                   ;;Y = #$f8 1111_1000
    STY      $0278                     ; 0x15764 $9754 8C 78 02                ;
    STY      $027C                     ; 0x15767 $9757 8C 7C 02                ;
L975A:                                                                          ;
    PLA                                ; 0x1576a $975A 68                      ;
    STA      $3C,x                     ; 0x1576b $975B 95 3C                   ;; Enemy X Position (high byte)
    PLA                                ; 0x1576d $975D 68                      ;
    STA      $4E,x                     ; 0x1576e $975E 95 4E                   ;; Enemy X Position (low byte)
    PLA                                ; 0x15770 $9760 68                      ;
    STA      $C9                       ; 0x15771 $9761 85 C9                   ;
    RTS                                ; 0x15773 $9763 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9764:                                                                          ;
    LDA      $12                       ; 0x15774 $9764 A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x15776 $9766 4A                      ;
    BCS      L9795                     ; 0x15777 $9767 B0 2C                   ;
    JSR      bank7_Spawn_New_Projectile; 0x15779 $9769 20 CE DB                ;
    BCS      L9795                     ; 0x1577c $976C B0 27                   ;
    LDA      #$0C                      ; 0x1577e $976E A9 0C                   ;;A = #$0c 0000_1100
    STA      $87,y                     ; 0x15780 $9770 99 87 00                ;
    LDA      $051B,x                   ; 0x15783 $9773 BD 1B 05                ;; Randomizer
    AND      #$1F                      ; 0x15786 $9776 29 1F                   ;;Keep Bits:0001_1111
    ADC      $2A,x                     ; 0x15788 $9778 75 2A                   ;; Enemy Y Position
    SBC      #$06                      ; 0x1578a $977A E9 06                   ;
    STA      $30,y                     ; 0x1578c $977C 99 30 00                ;
    LDA      $051C,x                   ; 0x1578f $977F BD 1C 05                ;
    AND      #$0F                      ; 0x15792 $9782 29 0F                   ;;Keep Bits:0000_1111
    SBC      #$08                      ; 0x15794 $9784 E9 08                   ;
    ADC      $4E,x                     ; 0x15796 $9786 75 4E                   ;; Enemy X Position (low byte)
    STA      $54,y                     ; 0x15798 $9788 99 54 00                ;
    LDA      $3C,x                     ; 0x1579b $978B B5 3C                   ;; Enemy X Position (high byte)
    STA      $42,y                     ; 0x1579d $978D 99 42 00                ;
    LDA      #$10                      ; 0x157a0 $9790 A9 10                   ;;A = #$10 0001_0000
    STA      $77,y                     ; 0x157a2 $9792 99 77 00                ;
L9795:                                                                          ;
    RTS                                ; 0x157a5 $9795 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Init_Routines_Dark_Link_Battle_Trigger:                             ;
    LDA      #$23                      ; 0x157a6 $9796 A9 23                   ;;A = #$23 0010_0011
    STA      $A1                       ; 0x157a8 $9798 85 A1                   ;;monster monID		a1,a2,a3,a4,a5,a6	1=item,?15=teacher(when combined with something else)
    LDA      #$08                      ; 0x157aa $979A A9 08                   ;;A = #$08 0000_1000
    STA      $C2                       ; 0x157ac $979C 85 C2                   ;;monster monHP		c2,c3,c4,c5,c6,c7
    LDA      $4E,x                     ; 0x157ae $979E B5 4E                   ;; Enemy X Position (low byte)
    STA      $4E                       ; 0x157b0 $97A0 85 4E                   ;;monster x	4e,4f,50,51,52,53
    LDA      $2A,x                     ; 0x157b2 $97A2 B5 2A                   ;; Enemy Y Position
    STA      $2A                       ; 0x157b4 $97A4 85 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    LDA      $3C,x                     ; 0x157b6 $97A6 B5 3C                   ;; Enemy X Position (high byte)
    STA      $3C                       ; 0x157b8 $97A8 85 3C                   ;;monster x*255	3c,3d,3e,3f,40,41
    LDA      #$02                      ; 0x157ba $97AA A9 02                   ;;A = #$02 0000_0010
    STA      $0753                     ; 0x157bc $97AC 8D 53 07                ;
    LSR                                ; 0x157bf $97AF 4A                      ;
    STA      $1A                       ; 0x157c0 $97B0 85 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    STA      $B6                       ; 0x157c2 $97B2 85 B6                   ;;monster exists		b6,b7,b8,b9,ba,bb	exists:0=no,1=yes,2=kill/give exp;set to 10 will make link fall down 
    LSR                                ; 0x157c4 $97B4 4A                      ;
    STA      $B6,x                     ; 0x157c5 $97B5 95 B6                   ;; Generated Enemy Slot
    STA      $61                       ; 0x157c7 $97B7 85 61                   ;
    STA      $62                       ; 0x157c9 $97B9 85 62                   ;
    STA      $63                       ; 0x157cb $97BB 85 63                   ;
    STA      $64                       ; 0x157cd $97BD 85 64                   ;
    LDA      $BC,x                     ; 0x157cf $97BF B5 BC                   ;; Generated Enemy Y Position ?
    STA      $BC                       ; 0x157d1 $97C1 85 BC                   ;;monster sram pointer?	bc,bd,be,bf,c0,c1	LDY bc,x  ; then LDA ($D6),Y   if bit7 is set it means monster killed?
    RTS                                ; 0x157d3 $97C3 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
.byt    $03                            ; 0x157d4 $97C4 03                      ;
.byt    $FD                            ; 0x157d5 $97C5 FD                      ;
bank5_Enemy_Routines1_Dark_Link_Battle_Trigger:                                 ;
    JSR      LA4C4                     ; 0x157d6 $97C6 20 C4 A4                ;
    LDA      $63                       ; 0x157d9 $97C9 A5 63                   ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x157db $97CB 20 85 D3;
bank5_pointer_table_dark_link:                                                  ;
.word    L97DE                         ; 0x157de $97CE DE 97                   ;00 setup/init?
.word    L980D                         ; 0x157e0 $97D0 0D 98                   ;01 display triforce and fadeout
.word    L983E                         ; 0x157e2 $97D2 3E 98                   ;02 flash screen and palette change (to black/purple)
.word    L987B                         ; 0x157e4 $97D4 7B 98                   ;03 spawn the dark link
.word    L9B3A                         ; 0x157e6 $97D6 3A 9B                   ;
.word    L9B53                         ; 0x157e8 $97D8 53 9B                   ;
.word    L9B91                         ; 0x157ea $97DA 91 9B                   ;
.word    L9BA8                         ; 0x157ec $97DC A8 9B                   ;
; ---------------------------------------------------------------------------- ;
L97DE:                                                                          ;
    INC      $AF                       ; 0x157ee $97DE E6 AF                   ;;monster itemID/ai?	af,b0,b1,b2,b3,b4
    JSR      bank7_Display             ; 0x157f0 $97E0 20 11 EF                ;
    LDA      $072A                     ; 0x157f3 $97E3 AD 2A 07                ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    BEQ      L980C                     ; 0x157f6 $97E6 F0 24                   ;
    INC      $0728                     ; 0x157f8 $97E8 EE 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    LDA      #$00                      ; 0x157fb $97EB A9 00                   ;;A = #$00 0000_0000
    STA      $70                       ; 0x157fd $97ED 85 70                   ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    LDA      $A7                       ; 0x157ff $97EF A5 A7                   ;;collision bits for Link - 0000ABLR (above,below,left,right)
    AND      #$04                      ; 0x15801 $97F1 29 04                   ;;Keep Bits:0000_0100
    BEQ      L980C                     ; 0x15803 $97F3 F0 17                   ;
    LDA      #$A0                      ; 0x15805 $97F5 A9 A0                   ;;A = #$a0 1010_0000
    STA      $29                       ; 0x15807 $97F7 85 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    LDA      #$03                      ; 0x15809 $97F9 A9 03                   ;;A = #$03 0000_0011
    STA      $80                       ; 0x1580b $97FB 85 80                   ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    LSR                                ; 0x1580d $97FD 4A                      ;
    STA      $9F                       ; 0x1580e $97FE 85 9F                   ;;link facedir SideScroll		; Direction arrow pressed (1 = right, 2 = left)
    ASL                                ; 0x15810 $9800 0A                      ;
    STA      $A0                       ; 0x15811 $9801 85 A0                   ;
    LDA      #$FF                      ; 0x15813 $9803 A9 FF                   ;;A = #$ff 1111_1111
L9805:                                                                          ;
    INC      $DE                       ; 0x15815 $9805 E6 DE                   ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
L9807:                                                                          ;
    STA      $0504                     ; 0x15817 $9807 8D 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
L980A:                                                                          ;
    INC      $63                       ; 0x1581a $980A E6 63                   ;
L980C:                                                                          ;
    RTS                                ; 0x1581c $980C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L980D:                                                                          ;
    LDA      $0504                     ; 0x1581d $980D AD 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
    BNE      L982C                     ; 0x15820 $9810 D0 1A                   ;
    LDA      #$C0                      ; 0x15822 $9812 A9 C0                   ;;A = #$c0 1100_0000
    STA      $074B                     ; 0x15824 $9814 8D 4B 07                ;; Spell Flash Counter (bit 7 set = decor flash)
    LDA      #$04                      ; 0x15827 $9817 A9 04                   ;;A = #$04 0000_0100
    STA      $EC                       ; 0x15829 $9819 85 EC                   ;; Sound Effects Type 1; Sound Effects Type 1
    LDA      #$14                      ; 0x1582b $981B A9 14                   ;;A = #$14 0001_0100
    STA      $0751                     ; 0x1582d $981D 8D 51 07                ;
    LDA      $4D                       ; 0x15830 $9820 A5 4D                   ;;link X pos SideScroll		; Link's X Position (low byte)
    STA      $4E                       ; 0x15832 $9822 85 4E                   ;;monster x	4e,4f,50,51,52,53
    LDA      $29                       ; 0x15834 $9824 A5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    STA      $2A                       ; 0x15836 $9826 85 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    LDA      #$FF                      ; 0x15838 $9828 A9 FF                   ;;A = #$ff 1111_1111
    BNE      L9807                     ; 0x1583a $982A D0 DB                   ;
L982C:                                                                          ;
    CMP      #$50                      ; 0x1583c $982C C9 50                   ;
    BCC      L980C                     ; 0x1583e $982E 90 DC                   ;
    CMP      #$C0                      ; 0x15840 $9830 C9 C0                   ;
    BCS      L9839                     ; 0x15842 $9832 B0 05                   ;
    LSR                                ; 0x15844 $9834 4A                      ;
    BCC      L980C                     ; 0x15845 $9835 90 D5                   ;
    BCS      L983B                     ; 0x15847 $9837 B0 02                   ;
L9839:                                                                          ;
    INC      $AF,x                     ; 0x15849 $9839 F6 AF                   ;; Various enemy state variables
L983B:                                                                          ;
    JMP      bank7_Display             ; 0x1584b $983B 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L983E:                                                                          ;
    LDA      $074B                     ; 0x1584e $983E AD 4B 07                ;; Spell Flash Counter (bit 7 set = decor flash)
    CMP      #$81                      ; 0x15851 $9841 C9 81                   ;
    BNE      L9852                     ; 0x15853 $9843 D0 0D                   ;
    LDA      #$0D                      ; 0x15855 $9845 A9 0D                   ;;A = #$0d 0000_1101
L9847:                                                                          ;
    STA      $0725                     ; 0x15857 $9847 8D 25 07                ;; PPU Macro Selector	
    LDA      #$80                      ; 0x1585a $984A A9 80                   ;;A = #$80 1000_0000
    STA      $EB                       ; 0x1585c $984C 85 EB                   ;; Music; Music
    LDA      #$04                      ; 0x1585e $984E A9 04                   ;;A = #$04 0000_0100
    STA      $EC                       ; 0x15860 $9850 85 EC                   ;; Sound Effects Type 1; Sound Effects Type 1
L9852:                                                                          ;
    LDA      $0504                     ; 0x15862 $9852 AD 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
    CMP      #$80                      ; 0x15865 $9855 C9 80                   ;
    BCC      L9864                     ; 0x15867 $9857 90 0B                   ;
    BNE      L980C                     ; 0x15869 $9859 D0 B1                   ;
    LDA      #$FC                      ; 0x1586b $985B A9 FC                   ;;A = #$fc 1111_1100
    STA      $057E                     ; 0x1586d $985D 8D 7E 05                ;;y velocity	57e,57f,580,581,582,583		57d=link
    LDA      #$13                      ; 0x15870 $9860 A9 13                   ;;A = #$13 0001_0011
    STA      $71                       ; 0x15872 $9862 85 71                   ;;mon x velocity	71,72,73,74,75,76
L9864:                                                                          ;
    JSR      L9A0F                     ; 0x15874 $9864 20 0F 9A                ;
    LDA      $2A                       ; 0x15877 $9867 A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    CMP      #$A0                      ; 0x15879 $9869 C9 A0                   ;
    BCC      L9874                     ; 0x1587b $986B 90 07                   ;
    INC      $63                       ; 0x1587d $986D E6 63                   ;
    LDA      #$70                      ; 0x1587f $986F A9 70                   ;;A = #$70 0111_0000
    STA      $0505                     ; 0x15881 $9871 8D 05 05                ;
L9874:                                                                          ;
    LDA      #$0A                      ; 0x15884 $9874 A9 0A                   ;;A = #$0a 0000_1010
    STA      $81                       ; 0x15886 $9876 85 81                   ;
    JMP      L9A77                     ; 0x15888 $9878 4C 77 9A                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L987B:                                                                          ;
    LDY      $0505                     ; 0x1588b $987B AC 05 05                ;
    BEQ      L988E                     ; 0x1588e $987E F0 0E                   ;
    DEY                                ; 0x15890 $9880 88                      ;
    BNE      L9887                     ; 0x15891 $9881 D0 04                   ;
    LDA      #$40                      ; 0x15893 $9883 A9 40                   ;;A = #$40 0100_0000
    STA      $EB                       ; 0x15895 $9885 85 EB                   ;; Music; Music
L9887:                                                                          ;
    LDA      #$06                      ; 0x15897 $9887 A9 06                   ;;A = #$06 0000_0110
    STA      $81                       ; 0x15899 $9889 85 81                   ;
    JMP      L9A77                     ; 0x1589b $988B 4C 77 9A                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L988E:                                                                          ;
    LDA      $07FB                     ; 0x1589e $988E AD FB 07                ;
    BNE      L9897                     ; 0x158a1 $9891 D0 04                   ;
    LDA      #$40                      ; 0x158a3 $9893 A9 40                   ;;A = #$40 0100_0000
    STA      $EB                       ; 0x158a5 $9895 85 EB                   ;; Music; Music
L9897:                                                                          ;
    STY      $DE                       ; 0x158a7 $9897 84 DE                   ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    LDA      #$01                      ; 0x158a9 $9899 A9 01                   ;;A = #$01 0000_0001
    JSR      LA4E9                     ; 0x158ab $989B 20 E9 A4                ;
    LDA      $050D                     ; 0x158ae $989E AD 0D 05                ;
    BEQ      L98D3                     ; 0x158b1 $98A1 F0 30                   ;
    BPL      L98AD                     ; 0x158b3 $98A3 10 08                   ;
    AND      #$0F                      ; 0x158b5 $98A5 29 0F                   ;;Keep Bits:0000_1111
    BNE      L98AD                     ; 0x158b7 $98A7 D0 04                   ;
    LDA      #$01                      ; 0x158b9 $98A9 A9 01                   ;;A = #$01 0000_0001
    STA      $E9                       ; 0x158bb $98AB 85 E9                   ;
L98AD:                                                                          ;
    LDA      #$0A                      ; 0x158bd $98AD A9 0A                   ;;A = #$0a 0000_1010
    STA      $81                       ; 0x158bf $98AF 85 81                   ;
    JSR      L9A0F                     ; 0x158c1 $98B1 20 0F 9A                ;
    LDA      $2A                       ; 0x158c4 $98B4 A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    CMP      #$F0                      ; 0x158c6 $98B6 C9 F0                   ;
    BCC      L98D0                     ; 0x158c8 $98B8 90 16                   ;
    LDA      #$B0                      ; 0x158ca $98BA A9 B0                   ;;A = #$b0 1011_0000
    STA      $074B                     ; 0x158cc $98BC 8D 4B 07                ;; Spell Flash Counter (bit 7 set = decor flash)
    LDA      #$04                      ; 0x158cf $98BF A9 04                   ;;A = #$04 0000_0100
    STA      $EC                       ; 0x158d1 $98C1 85 EC                   ;; Sound Effects Type 1; Sound Effects Type 1
    LDA      #$0F                      ; 0x158d3 $98C3 A9 0F                   ;;A = #$0f 0000_1111
    STA      $0751                     ; 0x158d5 $98C5 8D 51 07                ;
    LDA      #$80                      ; 0x158d8 $98C8 A9 80                   ;;A = #$80 1000_0000
    STA      $EB                       ; 0x158da $98CA 85 EB                   ;; Music; Music
    LSR                                ; 0x158dc $98CC 4A                      ;
    JSR      L9807                     ; 0x158dd $98CD 20 07 98                ;
L98D0:                                                                          ;
    JMP      L9A77                     ; 0x158e0 $98D0 4C 77 9A                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98D3:                                                                          ;
    JSR      bank5_dark_link_AI_movement_maybe0; 0x158e3 $98D3 20 EB 98            ;
    JSR      L99A4                     ; 0x158e6 $98D6 20 A4 99                ;load from timer variable and set $71 (movementX speed) for darklink
    JSR      L99B8                     ; 0x158e9 $98D9 20 B8 99                ;make $71's effect happen now among many other things
    JSR      L9A50                     ; 0x158ec $98DC 20 50 9A                ;
    JSR      L9A77                     ; 0x158ef $98DF 20 77 9A                ;show/draw dark link
    JSR      L9A8D                     ; 0x158f2 $98E2 20 8D 9A                ;collision detection of link vs dark link, to detect damage (for both) for sword
    JSR      LE4D9                     ; 0x158f5 $98E5 20 D9 E4                ;collision detection of link vs dark link, to detect damage when link steps into dark link
    JMP      bank7_Link_Collision_Detection; 0x158f8 $98E8 4C C1 D6                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_dark_link_AI_movement_maybe0:                                             ;
    LDA      $4E                       ; 0x158fb $98EB A5 4E                   ;;monster x	4e,4f,50,51,52,53
    SBC      $4D                       ; 0x158fd $98ED E5 4D                   ;;link X pos SideScroll		; Link's X Position (low byte)
    BPL      L98F3                     ; 0x158ff $98EF 10 02                   ;
    EOR      #$FF                      ; 0x15901 $98F1 49 FF                   ;;Flip Bits:1111_1111
L98F3:                                                                          ;
    ADC      #$03                      ; 0x15903 $98F3 69 03                   ;
    LSR                                ; 0x15905 $98F5 4A                      ;
    LSR                                ; 0x15906 $98F6 4A                      ;
    LSR                                ; 0x15907 $98F7 4A                      ;
    LSR                                ; 0x15908 $98F8 4A                      ;
    CMP      #$06                      ; 0x15909 $98F9 C9 06                   ;
    BCS      bank5_dark_link_AI_movement_maybe1; 0x1590b $98FB B0 0F               ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x1590d $98FD 20 85 D3;
bank5_dark_link_AI_movement_maybe__table:                                       ;
.word    L9911                         ; 0x15910 $9900 11 99                   ;
.word    L9911                         ; 0x15912 $9902 11 99                   ;
.word    L9989                         ; 0x15914 $9904 89 99                   ;
.word    L9989                         ; 0x15916 $9906 89 99                   ;
.word    L9989                         ; 0x15918 $9908 89 99                   ;
.word    L9989                         ; 0x1591a $990A 89 99                   ;
; ---------------------------------------------------------------------------- ;
bank5_dark_link_AI_movement_maybe1:                                             ;
    LDA      #$01                      ; 0x1591c $990C A9 01                   ;;A = #$01 0000_0001
    STA      $18                       ; 0x1591e $990E 85 18                   ;;dark link:	$18	0=duck,1=stand
    RTS                                ; 0x15920 $9910 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9911:                                                                          ;
    LDA      $62                       ; 0x15921 $9911 A5 62                   ;
    BNE      L994E                     ; 0x15923 $9913 D0 39                   ;
    LDA      $F5                       ; 0x15925 $9915 A5 F5                   ;; Controller 1 Buttons Pressed
    AND      #$40                      ; 0x15927 $9917 29 40                   ;;Keep Bits:0100_0000
    BEQ      L994F                     ; 0x15929 $9919 F0 34                   ;
    LDA      $17                       ; 0x1592b $991B A5 17                   ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    STA      $18                       ; 0x1592d $991D 85 18                   ;;dark link:	$18	0=duck,1=stand
    LDA      $051B                     ; 0x1592f $991F AD 1B 05                ;
    AND      #$07                      ; 0x15932 $9922 29 07                   ;;Keep Bits:0000_0111
.byt    $D0                            ; 0x15934 $9924 D0                      ;
L9925:                                                                          ;
    AND      #$8D                      ; 0x15935 $9925 29 8D                   ;;Keep Bits:1000_1101
.byt    $E7                            ; 0x15937 $9927 E7                      ;
.byt    $03                            ; 0x15938 $9928 03                      ;
    STA      $0401                     ; 0x15939 $9929 8D 01 04                ;
L992C:                                                                          ;
    LDY      #$00                      ; 0x1593c $992C A0 00                   ;;Y = #$00 0000_0000
    LDA      $CD                       ; 0x1593e $992E A5 CD                   ;
    ADC      #$0C                      ; 0x15940 $9930 69 0C                   ;
    BPL      L9935                     ; 0x15942 $9932 10 01                   ;
    INY                                ; 0x15944 $9934 C8                      ;
L9935:                                                                          ;
    LDA      $051C                     ; 0x15945 $9935 AD 1C 05                ;
    AND      #$03                      ; 0x15948 $9938 29 03                   ;;Keep Bits:0000_0011
    BNE      L993E                     ; 0x1594a $993A D0 02                   ;
    INY                                ; 0x1594c $993C C8                      ;
    INY                                ; 0x1594d $993D C8                      ;
L993E:                                                                          ;
    LDA      L999E,y                   ; 0x1594e $993E B9 9E 99                ;
    STA      $71                       ; 0x15951 $9941 85 71                   ;;mon x velocity	71,72,73,74,75,76
    LDA      #$FC                      ; 0x15953 $9943 A9 FC                   ;;A = #$fc 1111_1100
    STA      $057E                     ; 0x15955 $9945 8D 7E 05                ;;y velocity	57e,57f,580,581,582,583		57d=link
    LDA      #$01                      ; 0x15958 $9948 A9 01                   ;;A = #$01 0000_0001
    STA      $62                       ; 0x1595a $994A 85 62                   ;
    STA      $18                       ; 0x1595c $994C 85 18                   ;;dark link:	$18	0=duck,1=stand
L994E:                                                                          ;
    RTS                                ; 0x1595e $994E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L994F:                                                                          ;
    LDA      $051D                     ; 0x1595f $994F AD 1D 05                ;
    AND      #$03                      ; 0x15962 $9952 29 03                   ;;Keep Bits:0000_0011
    BNE      L9964                     ; 0x15964 $9954 D0 0E                   ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x15966 $9956 20 91 DC;
    TYA                                ; 0x15969 $9959 98                      ;
    EOR      #$01                      ; 0x1596a $995A 49 01                   ;;Flip Bits:0000_0001
    STA      $61                       ; 0x1596c $995C 85 61                   ;
    LDA      #$10                      ; 0x1596e $995E A9 10                   ;;A = #$10 0001_0000
    STA      $0506                     ; 0x15970 $9960 8D 06 05                ;
    RTS                                ; 0x15973 $9963 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9964:                                                                          ;
    LDY      $0401                     ; 0x15974 $9964 AC 01 04                ;
    DEY                                ; 0x15977 $9967 88                      ;
    CPY      #$02                      ; 0x15978 $9968 C0 02                   ;
    BCC      L9988                     ; 0x1597a $996A 90 1C                   ;
    LDA      $2A                       ; 0x1597c $996C A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    CMP      $29                       ; 0x1597e $996E C5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    BCC      L9988                     ; 0x15980 $9970 90 16                   ;
    LDA      $17                       ; 0x15982 $9972 A5 17                   ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    EOR      #$01                      ; 0x15984 $9974 49 01                   ;;Flip Bits:0000_0001
    STA      $18                       ; 0x15986 $9976 85 18                   ;;dark link:	$18	0=duck,1=stand
    LDA      #$01                      ; 0x15988 $9978 A9 01                   ;;A = #$01 0000_0001
    STA      $0401                     ; 0x1598a $997A 8D 01 04                ;
    LSR                                ; 0x1598d $997D 4A                      ;
    STA      $71                       ; 0x1598e $997E 85 71                   ;;mon x velocity	71,72,73,74,75,76
    LDA      #$20                      ; 0x15990 $9980 A9 20                   ;;A = #$20 0010_0000
    STA      $ED                       ; 0x15992 $9982 85 ED                   ;; Sound Effects Type 2; Sound Effects Type 2
    LSR                                ; 0x15994 $9984 4A                      ;
    STA      $0504                     ; 0x15995 $9985 8D 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
L9988:                                                                          ;
    RTS                                ; 0x15998 $9988 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9989:                                                                          ;
    LDA      $62                       ; 0x15999 $9989 A5 62                   ;
    BNE      L999D                     ; 0x1599b $998B D0 10                   ;
    LDA      $12                       ; 0x1599d $998D A5 12                   ;; Frame Counter (ascending)
    AND      #$C0                      ; 0x1599f $998F 29 C0                   ;;Keep Bits:1100_0000
    BEQ      L999D                     ; 0x159a1 $9991 F0 0A                   ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x159a3 $9993 20 91 DC;
    STY      $61                       ; 0x159a6 $9996 84 61                   ;
    LDA      #$02                      ; 0x159a8 $9998 A9 02                   ;;A = #$02 0000_0010
    STA      $0506                     ; 0x159aa $999A 8D 06 05                ;
L999D:                                                                          ;
    RTS                                ; 0x159ad $999D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L999E:                                                                          ;
    CLC                                ; 0x159ae $999E 18                      ;
    INX                                ; 0x159af $999F E8                      ;
    BRK                                ; 0x159b0 $99A0 00                      ;
    BRK                                ; 0x159b1 $99A1 00                      ;
L99A2:                                                                          ;
.byt    $14                            ; 0x159b2 $99A2 14                      ;
.byt    $EC                            ; 0x159b3 $99A3 EC                      ;
L99A4:                                                                          ;
    LDA      $0506                     ; 0x159b4 $99A4 AD 06 05                ;
    BEQ      L99B1                     ; 0x159b7 $99A7 F0 08                   ;
    LDY      $61                       ; 0x159b9 $99A9 A4 61                   ;
    LDA      L99A2,y                   ; 0x159bb $99AB B9 A2 99                ;
    STA      $71                       ; 0x159be $99AE 85 71                   ;;mon x velocity	71,72,73,74,75,76
    RTS                                ; 0x159c0 $99B0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99B1:                                                                          ;
    LDA      $62                       ; 0x159c1 $99B1 A5 62                   ;
    BNE      L99B7                     ; 0x159c3 $99B3 D0 02                   ;
    STA      $71                       ; 0x159c5 $99B5 85 71                   ;;mon x velocity	71,72,73,74,75,76
L99B7:                                                                          ;
    RTS                                ; 0x159c7 $99B7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99B8:                                                                          ;
    JSR      L9A0F                     ; 0x159c8 $99B8 20 0F 9A                ;
    LDA      $2A                       ; 0x159cb $99BB A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    CMP      #$A0                      ; 0x159cd $99BD C9 A0                   ;
    BCC      L99CC                     ; 0x159cf $99BF 90 0B                   ;
    JSR      bank7_Floor_Y_Position    ; 0x159d1 $99C1 20 C1 DA                ;
    STA      $62                       ; 0x159d4 $99C4 85 62                   ;
    LDA      #$A0                      ; 0x159d6 $99C6 A9 A0                   ;;A = #$a0 1010_0000
    STA      $2A                       ; 0x159d8 $99C8 85 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    BNE      L99E2                     ; 0x159da $99CA D0 16                   ;
L99CC:                                                                          ;
    LDA      $17                       ; 0x159dc $99CC A5 17                   ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    STA      $18                       ; 0x159de $99CE 85 18                   ;;dark link:	$18	0=duck,1=stand
    LDA      #$06                      ; 0x159e0 $99D0 A9 06                   ;;A = #$06 0000_0110
    LDY      $057E                     ; 0x159e2 $99D2 AC 7E 05                ;;y velocity	57e,57f,580,581,582,583		57d=link
    BMI      L99D9                     ; 0x159e5 $99D5 30 02                   ;
    LDA      #$02                      ; 0x159e7 $99D7 A9 02                   ;;A = #$02 0000_0010
L99D9:                                                                          ;
    STA      $81                       ; 0x159e9 $99D9 85 81                   ;
    RTS                                ; 0x159eb $99DB 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_99DC:                                                               ;
.byt    $00,$01,$02,$02,$01,$00        ; 0x159ec $99DC 00 01 02 02 01 00       ;
; ---------------------------------------------------------------------------- ;
L99E2:                                                                          ;
    LDA      $71                       ; 0x159f2 $99E2 A5 71                   ;;mon x velocity	71,72,73,74,75,76
    BEQ      L9A05                     ; 0x159f4 $99E4 F0 1F                   ;
L99E6:                                                                          ;
    LDY      $64                       ; 0x159f6 $99E6 A4 64                   ;
    LDA      $12                       ; 0x159f8 $99E8 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x159fa $99EA 29 03                   ;;Keep Bits:0000_0011
    BNE      L99F6                     ; 0x159fc $99EC D0 08                   ;
    INC      $64                       ; 0x159fe $99EE E6 64                   ;
    CPY      #$02                      ; 0x15a00 $99F0 C0 02                   ;
    BNE      L99F6                     ; 0x15a02 $99F2 D0 02                   ;
    STA      $64                       ; 0x15a04 $99F4 85 64                   ;
L99F6:                                                                          ;
    LDA      $60                       ; 0x15a06 $99F6 A5 60                   ;;monster facing dir	60,61,62,63,64,65
    CMP      $A0                       ; 0x15a08 $99F8 C5 A0                   ;
    BEQ      L99FF                     ; 0x15a0a $99FA F0 03                   ;
    INY                                ; 0x15a0c $99FC C8                      ;
    INY                                ; 0x15a0d $99FD C8                      ;
    INY                                ; 0x15a0e $99FE C8                      ;
L99FF:                                                                          ;
    LDA      bank5_table_99DC,y        ; 0x15a0f $99FF B9 DC 99                ;
    STA      $81                       ; 0x15a12 $9A02 85 81                   ;
L9A04:                                                                          ;
    RTS                                ; 0x15a14 $9A04 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A05:                                                                          ;
    LDA      #$03                      ; 0x15a15 $9A05 A9 03                   ;;A = #$03 0000_0011
    LDY      $18                       ; 0x15a17 $9A07 A4 18                   ;;dark link:	$18	0=duck,1=stand
    BNE      L9A0C                     ; 0x15a19 $9A09 D0 01                   ;
    ASL                                ; 0x15a1b $9A0B 0A                      ;
L9A0C:                                                                          ;
    STA      $81                       ; 0x15a1c $9A0C 85 81                   ;
    RTS                                ; 0x15a1e $9A0E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A0F:                                                                          ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x15a1f $9A0F 20 91 DC;
    LDA      $60                       ; 0x15a22 $9A12 A5 60                   ;;monster facing dir	60,61,62,63,64,65
    STA      $A0                       ; 0x15a24 $9A14 85 A0                   ;
    LDY      #$01                      ; 0x15a26 $9A16 A0 01                   ;;Y = #$01 0000_0001
    LDA      $71                       ; 0x15a28 $9A18 A5 71                   ;;mon x velocity	71,72,73,74,75,76
    BPL      L9A1D                     ; 0x15a2a $9A1A 10 01                   ;
    INY                                ; 0x15a2c $9A1C C8                      ;
L9A1D:                                                                          ;
    STY      $60                       ; 0x15a2d $9A1D 84 60                   ;;monster facing dir	60,61,62,63,64,65
    LDA      $C9                       ; 0x15a2f $9A1F A5 C9                   ;
    AND      #$09                      ; 0x15a31 $9A21 29 09                   ;;Keep Bits:0000_1001
    BEQ      L9A3C                     ; 0x15a33 $9A23 F0 17                   ;
    LDY      $62                       ; 0x15a35 $9A25 A4 62                   ;
    BNE      L9A33                     ; 0x15a37 $9A27 D0 0A                   ;
    PHA                                ; 0x15a39 $9A29 48                      ;
    LDA      #$03                      ; 0x15a3a $9A2A A9 03                   ;;A = #$03 0000_0011
    STA      $051C                     ; 0x15a3c $9A2C 8D 1C 05                ;
    JSR      L992C                     ; 0x15a3f $9A2F 20 2C 99                ;
    PLA                                ; 0x15a42 $9A32 68                      ;
L9A33:                                                                          ;
    LSR                                ; 0x15a43 $9A33 4A                      ;
    LSR                                ; 0x15a44 $9A34 4A                      ;
    LSR                                ; 0x15a45 $9A35 4A                      ;
    TAY                                ; 0x15a46 $9A36 A8                      ;
    INY                                ; 0x15a47 $9A37 C8                      ;
    CPY      $60                       ; 0x15a48 $9A38 C4 60                   ;;monster facing dir	60,61,62,63,64,65
    BEQ      L9A3F                     ; 0x15a4a $9A3A F0 03                   ;
L9A3C:                                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x15a4c $9A3C 20 B8 DE              ;
L9A3F:                                                                          ;
    LDA      #$3C                      ; 0x15a4f $9A3F A9 3C                   ;;A = #$3c 0011_1100
    STA      L0000                     ; 0x15a51 $9A41 85 00                   ;
    LDA      #$04                      ; 0x15a53 $9A43 A9 04                   ;;A = #$04 0000_0100
bank5_table_9A45:                                                               ;
.byt    $85                            ; 0x15a55 $9A45 85                      ;
L9A46:                                                                          ;
.byt    $02,$4C,$CE                    ; 0x15a56 $9A46 02 4C CE                ;
L9A49:                                                                          ;
.byt    $DE,$04,$05,$04,$06,$07,$06    ; 0x15a59 $9A49 DE 04 05 04 06 07 06    ;
; ---------------------------------------------------------------------------- ;
L9A50:                                                                          ;
    LDY      $0401                     ; 0x15a60 $9A50 AC 01 04                ;
    BEQ      L9A76                     ; 0x15a63 $9A53 F0 21                   ;
    LDA      $0504                     ; 0x15a65 $9A55 AD 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
    BNE      L9A6A                     ; 0x15a68 $9A58 D0 10                   ;
    INC      $0401                     ; 0x15a6a $9A5A EE 01 04                ;
    CPY      #$03                      ; 0x15a6d $9A5D C0 03                   ;
    BNE      L9A65                     ; 0x15a6f $9A5F D0 04                   ;
    STA      $0401                     ; 0x15a71 $9A61 8D 01 04                ;
    RTS                                ; 0x15a74 $9A64 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A65:                                                                          ;
    LDA      #$08                      ; 0x15a75 $9A65 A9 08                   ;;A = #$08 0000_1000
    STA      $0504                     ; 0x15a77 $9A67 8D 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
L9A6A:                                                                          ;
    LDA      $18                       ; 0x15a7a $9A6A A5 18                   ;;dark link:	$18	0=duck,1=stand
    BNE      L9A71                     ; 0x15a7c $9A6C D0 03                   ;
    INY                                ; 0x15a7e $9A6E C8                      ;
    INY                                ; 0x15a7f $9A6F C8                      ;
    INY                                ; 0x15a80 $9A70 C8                      ;
L9A71:                                                                          ;
    LDA      L9A49,y                   ; 0x15a81 $9A71 B9 49 9A                ;
    STA      $81                       ; 0x15a84 $9A74 85 81                   ;
L9A76:                                                                          ;
    RTS                                ; 0x15a86 $9A76 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A77:                                                                          ;
    LDY      #$01                      ; 0x15a87 $9A77 A0 01                   ;;Y = #$01 0000_0001
    STY      $11                       ; 0x15a89 $9A79 84 11                   ;
    LDA      #$50                      ; 0x15a8b $9A7B A9 50                   ;;A = #$50 0101_0000
    STA      $91                       ; 0x15a8d $9A7D 85 91                   ;
    JSR      LEC02                     ; 0x15a8f $9A7F 20 02 EC                ;
    LDX      $10                       ; 0x15a92 $9A82 A6 10                   ;; used as monster x register ;draw boss hp bar
L9A84:                                                                          ;
    RTS                                ; 0x15a94 $9A84 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_9A85:                                                               ;
.byt    $10,$FF                        ; 0x15a95 $9A85 10 FF                   ;
L9A87:                                                                          ;
.byt    $11,$04                        ; 0x15a97 $9A87 11 04                   ;
L9A89:                                                                          ;
.byt    $F8,$02                        ; 0x15a99 $9A89 F8 02                   ;
L9A8B:                                                                          ;
.byt    $F6,$0A                        ; 0x15a9b $9A8B F6 0A                   ;
; ---------------------------------------------------------------------------- ;
L9A8D:                                                                          ;
    LDA      $62                       ; 0x15a9d $9A8D A5 62                   ;
    ORA      $0479                     ; 0x15a9f $9A8F 0D 79 04                ;;jumping_state (2=going up, 1=coming down, 0=not jumping); Link is in mid-air ? (1 = mid-air, 0 = on ground); Link is in mid-air ? (1 = mid-air, 0 = on ground)
    ORA      $0509                     ; 0x15aa2 $9A92 0D 09 05                ;
    BNE      L9AF4                     ; 0x15aa5 $9A95 D0 5D                   ;
    JSR      bank7_code44              ; 0x15aa7 $9A97 20 A2 E9                ;
    LDY      $A0                       ; 0x15aaa $9A9A A4 A0                   ;
    LDA      $CD                       ; 0x15aac $9A9C A5 CD                   ;
    ADC      #$08                      ; 0x15aae $9A9E 69 08                   ;
    ADC      L9A84,y                   ; 0x15ab0 $9AA0 79 84 9A                ;
    STA      $04                       ; 0x15ab3 $9AA3 85 04                   ;
    LDA      #$06                      ; 0x15ab5 $9AA5 A9 06                   ;;A = #$06 0000_0110
    STA      $06                       ; 0x15ab7 $9AA7 85 06                   ;
    LDY      $18                       ; 0x15ab9 $9AA9 A4 18                   ;;dark link:	$18	0=duck,1=stand
    LDA      $2A                       ; 0x15abb $9AAB A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    ADC      L9A87,y                   ; 0x15abd $9AAD 79 87 9A                ;
    STA      $05                       ; 0x15ac0 $9AB0 85 05                   ;
    LDA      #$09                      ; 0x15ac2 $9AB2 A9 09                   ;;A = #$09 0000_1001
    STA      $07                       ; 0x15ac4 $9AB4 85 07                   ;
    JSR      bank7_idem__maybe         ; 0x15ac6 $9AB6 20 F9 E9                ;
    BCS      L9AF5                     ; 0x15ac9 $9AB9 B0 3A                   ;
    JSR      LE942                     ; 0x15acb $9ABB 20 42 E9                ;
    LDY      $18                       ; 0x15ace $9ABE A4 18                   ;;dark link:	$18	0=duck,1=stand
    LDA      $2A                       ; 0x15ad0 $9AC0 A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    STA      $05                       ; 0x15ad2 $9AC2 85 05                   ;
    LDA      #$1D                      ; 0x15ad4 $9AC4 A9 1D                   ;;A = #$1d 0001_1101
    STA      $07                       ; 0x15ad6 $9AC6 85 07                   ;
    JSR      bank7_idem__maybe         ; 0x15ad8 $9AC8 20 F9 E9                ;
    BCC      L9B07                     ; 0x15adb $9ACB 90 3A                   ;
    LDY      #$00                      ; 0x15add $9ACD A0 00                   ;;Y = #$00 0000_0000
    STY      $0401                     ; 0x15adf $9ACF 8C 01 04                ;
    DEY                                ; 0x15ae2 $9AD2 88                      ;
    DEC      $C2                       ; 0x15ae3 $9AD3 C6 C2                   ;;monster monHP		c2,c3,c4,c5,c6,c7
    BEQ      L9ADE                     ; 0x15ae5 $9AD5 F0 07                   ;if dead, fall off screen from the hurt animation timer being set to #$FF
    LDA      #$38                      ; 0x15ae7 $9AD7 A9 38                   ;otherwise, hurt?
    STA      $0509                     ; 0x15ae9 $9AD9 8D 09 05                ;
    LDY      #$18                      ; 0x15aec $9ADC A0 18                   ;;Y = #$18 0001_1000
L9ADE:                                                                          ;
    STY      $050D                     ; 0x15aee $9ADE 8C 0D 05                ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x15af1 $9AE1 20 91 DC;
    LDA      L9A8B,y                   ; 0x15af4 $9AE4 B9 8B 9A                ;
    STA      $71                       ; 0x15af7 $9AE7 85 71                   ;;mon x velocity	71,72,73,74,75,76
    LDA      #$FD                      ; 0x15af9 $9AE9 A9 FD                   ;;A = #$fd 1111_1101
    STA      $057E                     ; 0x15afb $9AEB 8D 7E 05                ;;y velocity	57e,57f,580,581,582,583		57d=link
    LDA      #$01                      ; 0x15afe $9AEE A9 01                   ;;A = #$01 0000_0001
    STA      $E9                       ; 0x15b00 $9AF0 85 E9                   ;
    STA      $62                       ; 0x15b02 $9AF2 85 62                   ;
L9AF4:                                                                          ;
    RTS                                ; 0x15b04 $9AF4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9AF5:                                                                          ;
    LDA      #$00                      ; 0x15b05 $9AF5 A9 00                   ;;A = #$00 0000_0000
    STA      $0B                       ; 0x15b07 $9AF7 85 0B                   ;
    JSR      bank7_code37              ; 0x15b09 $9AF9 20 71 E3                ;
    LDA      $70                       ; 0x15b0c $9AFC A5 70                   ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    EOR      #$FF                      ; 0x15b0e $9AFE 49 FF                   ;;Flip Bits:1111_1111
    STA      $71                       ; 0x15b10 $9B00 85 71                   ;;mon x velocity	71,72,73,74,75,76
    LDA      #$02                      ; 0x15b12 $9B02 A9 02                   ;;A = #$02 0000_0010
    STA      $EC                       ; 0x15b14 $9B04 85 EC                   ;; Sound Effects Type 1; Sound Effects Type 1
L9B06:                                                                          ;
    RTS                                ; 0x15b16 $9B06 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B07:                                                                          ;
    JSR      bank7_code45              ; 0x15b17 $9B07 20 D8 E9                ;
    LDY      #$00                      ; 0x15b1a $9B0A A0 00                   ;;Y = #$00 0000_0000
    LDA      $047F                     ; 0x15b1c $9B0C AD 7F 04                ;
    PHA                                ; 0x15b1f $9B0F 48                      ;
    CMP      $CD                       ; 0x15b20 $9B10 C5 CD                   ;
    BCS      L9B15                     ; 0x15b22 $9B12 B0 01                   ;
    INY                                ; 0x15b24 $9B14 C8                      ;
L9B15:                                                                          ;
    PLA                                ; 0x15b25 $9B15 68                      ;
    ADC      L9A89,y                   ; 0x15b26 $9B16 79 89 9A                ;
    STA      $04                       ; 0x15b29 $9B19 85 04                   ;
    LDA      #$0E                      ; 0x15b2b $9B1B A9 0E                   ;;A = #$0e 0000_1110
    STA      $06                       ; 0x15b2d $9B1D 85 06                   ;
    LDA      $0481                     ; 0x15b2f $9B1F AD 81 04                ;
    ADC      #$03                      ; 0x15b32 $9B22 69 03                   ;
    STA      $05                       ; 0x15b34 $9B24 85 05                   ;
    LDA      #$02                      ; 0x15b36 $9B26 A9 02                   ;;A = #$02 0000_0010
    STA      $07                       ; 0x15b38 $9B28 85 07                   ;
    JSR      bank7_idem__maybe         ; 0x15b3a $9B2A 20 F9 E9                ;
    BCS      L9AF5                     ; 0x15b3d $9B2D B0 C6                   ;
    JSR      bank7_code43              ; 0x15b3f $9B2F 20 75 E9                ;
    JSR      bank7_idem__maybe         ; 0x15b42 $9B32 20 F9 E9                ;
    BCC      L9B06                     ; 0x15b45 $9B35 90 CF                   ;
    JMP      bank7_Link_Hit_Routine    ; 0x15b47 $9B37 4C EF E2                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B3A:                                                                          ;
    LDA      $074B                     ; 0x15b4a $9B3A AD 4B 07                ;; Spell Flash Counter (bit 7 set = decor flash)
    CMP      #$81                      ; 0x15b4d $9B3D C9 81                   ;
    BNE      L9B46                     ; 0x15b4f $9B3F D0 05                   ;
    LDA      #$0E                      ; 0x15b51 $9B41 A9 0E                   ;;A = #$0e 0000_1110
    STA      $0725                     ; 0x15b53 $9B43 8D 25 07                ;; PPU Macro Selector	
L9B46:                                                                          ;
    LDA      $0479                     ; 0x15b56 $9B46 AD 79 04                ;;jumping_state (2=going up, 1=coming down, 0=not jumping); Link is in mid-air ? (1 = mid-air, 0 = on ground); Link is in mid-air ? (1 = mid-air, 0 = on ground)
    ORA      $0504                     ; 0x15b59 $9B49 0D 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
    BNE      L9B73                     ; 0x15b5c $9B4C D0 25                   ;
    LDA      #$80                      ; 0x15b5e $9B4E A9 80                   ;;A = #$80 1000_0000
    JMP      L9805                     ; 0x15b60 $9B50 4C 05 98                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B53:                                                                          ;
    LDA      #$03                      ; 0x15b63 $9B53 A9 03                   ;;A = #$03 0000_0011
    STA      $80                       ; 0x15b65 $9B55 85 80                   ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    LDY      $0504                     ; 0x15b67 $9B57 AC 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
    BNE      L9B73                     ; 0x15b6a $9B5A D0 17                   ;
    LSR                                ; 0x15b6c $9B5C 4A                      ;
    STA      $9F                       ; 0x15b6d $9B5D 85 9F                   ;;link facedir SideScroll		; Direction arrow pressed (1 = right, 2 = left)
    STA      $3B                       ; 0x15b6f $9B5F 85 3B                   ;;link Pagepos SideScroll		; Link's X Position (high byte)
    STA      $3C                       ; 0x15b71 $9B61 85 3C                   ;;monster x*255	3c,3d,3e,3f,40,41
    LDA      $4D                       ; 0x15b73 $9B63 A5 4D                   ;;link X pos SideScroll		; Link's X Position (low byte)
    ADC      #$0B                      ; 0x15b75 $9B65 69 0B                   ;
    CMP      #$6C                      ; 0x15b77 $9B67 C9 6C                   ;
    BEQ      L9B81                     ; 0x15b79 $9B69 F0 16                   ;
    DEC      $4D                       ; 0x15b7b $9B6B C6 4D                   ;;link X pos SideScroll		; Link's X Position (low byte)
    BCS      L9B73                     ; 0x15b7d $9B6D B0 04                   ;
    INC      $4D                       ; 0x15b7f $9B6F E6 4D                   ;;link X pos SideScroll		; Link's X Position (low byte)
    INC      $4D                       ; 0x15b81 $9B71 E6 4D                   ;;link X pos SideScroll		; Link's X Position (low byte)
L9B73:                                                                          ;
    RTS                                ; 0x15b83 $9B73 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B74:                                                                          ;
    LDA      #$C0                      ; 0x15b84 $9B74 A9 C0                   ;;A = #$c0 1100_0000
    STA      $074B                     ; 0x15b86 $9B76 8D 4B 07                ;; Spell Flash Counter (bit 7 set = decor flash)
    LDA      #$20                      ; 0x15b89 $9B79 A9 20                   ;;A = #$20 0010_0000
    STA      $EB                       ; 0x15b8b $9B7B 85 EB                   ;; Music; Music
    LDA      #$15                      ; 0x15b8d $9B7D A9 15                   ;;A = #$15 0001_0101
    BNE      L9B83                     ; 0x15b8f $9B7F D0 02                   ;
L9B81:                                                                          ;
    LDA      #$0D                      ; 0x15b91 $9B81 A9 0D                   ;;A = #$0d 0000_1101
L9B83:                                                                          ;
    STA      $0512                     ; 0x15b93 $9B83 8D 12 05                ;
L9B86:                                                                          ;
    LDA      #$7C                      ; 0x15b96 $9B86 A9 7C                   ;;A = #$7c 0111_1100
    STA      $4E                       ; 0x15b98 $9B88 85 4E                   ;;monster x	4e,4f,50,51,52,53
    LDA      #$B0                      ; 0x15b9a $9B8A A9 B0                   ;;A = #$b0 1011_0000
    STA      $2A                       ; 0x15b9c $9B8C 85 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    JMP      L980A                     ; 0x15b9e $9B8E 4C 0A 98                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B91:                                                                          ;
    LDA      $0512                     ; 0x15ba1 $9B91 AD 12 05                ;
    CMP      #$02                      ; 0x15ba4 $9B94 C9 02                   ;
    BEQ      L9B74                     ; 0x15ba6 $9B96 F0 DC                   ;
    CMP      #$09                      ; 0x15ba8 $9B98 C9 09                   ;
    BCS      L9B73                     ; 0x15baa $9B9A B0 D7                   ;
    CMP      #$06                      ; 0x15bac $9B9C C9 06                   ;
    BCC      L9BA5                     ; 0x15bae $9B9E 90 05                   ;
    LDA      $12                       ; 0x15bb0 $9BA0 A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x15bb2 $9BA2 4A                      ;
    BCC      L9B73                     ; 0x15bb3 $9BA3 90 CE                   ;
L9BA5:                                                                          ;
    JMP      bank7_Display             ; 0x15bb5 $9BA5 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BA8:                                                                          ;
    LDA      #$02                      ; 0x15bb8 $9BA8 A9 02                   ;;A = #$02 0000_0010
    STA      $9F                       ; 0x15bba $9BAA 85 9F                   ;;link facedir SideScroll		; Direction arrow pressed (1 = right, 2 = left)
    LDY      $0512                     ; 0x15bbc $9BAC AC 12 05                ;
    BEQ      L9BBA                     ; 0x15bbf $9BAF F0 09                   ;
    LDA      #$0B                      ; 0x15bc1 $9BB1 A9 0B                   ;;A = #$0b 0000_1011
    STA      $80                       ; 0x15bc3 $9BB3 85 80                   ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    INC      $AF                       ; 0x15bc5 $9BB5 E6 AF                   ;;monster itemID/ai?	af,b0,b1,b2,b3,b4
    JMP      bank7_Display             ; 0x15bc7 $9BB7 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BBA:                                                                          ;
    LDA      #$03                      ; 0x15bca $9BBA A9 03                   ;;A = #$03 0000_0011
    STA      $076C                     ; 0x15bcc $9BBC 8D 6C 07                ;; (00=restart from zelda's castle with 3 lives,  01=no routine, 02=die, 03=wake up zelda, 04=roll credits, 06=show the lives then restart the scene)
    LDA      #$00                      ; 0x15bcf $9BBF A9 00                   ;;A = #$00 0000_0000
    STA      $2001                     ; 0x15bd1 $9BC1 8D 01 20                ;
    INC      $0726                     ; 0x15bd4 $9BC4 EE 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    RTS                                ; 0x15bd7 $9BC7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BC8:                                                                          ;
    JSR      LEA1C                     ; 0x15bd8 $9BC8 20 1C EA                ;
L9BCB:                                                                          ;
    BCC      L9C45                     ; 0x15bdb $9BCB 90 78                   ;
    LDA      #$F4                      ; 0x15bdd $9BCD A9 F4                   ;;A = #$f4 1111_0100
    STA      $87,x                     ; 0x15bdf $9BCF 95 87                   ;; Projectile Type
    RTS                                ; 0x15be1 $9BD1 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BD2:                                                                          ;
    LDY      #$02                      ; 0x15be2 $9BD2 A0 02                   ;;Y = #$02 0000_0010
    LDA      $77,x                     ; 0x15be4 $9BD4 B5 77                   ;; Projectile X Velocity
    BMI      L9BD9                     ; 0x15be6 $9BD6 30 01                   ;
    DEY                                ; 0x15be8 $9BD8 88                      ;
L9BD9:                                                                          ;
    TYA                                ; 0x15be9 $9BD9 98                      ;
    CMP      $66,x                     ; 0x15bea $9BDA D5 66                   ;; Projectile facing direction
    BNE      L9C42                     ; 0x15bec $9BDC D0 64                   ;
    JMP      L9C3D                     ; 0x15bee $9BDE 4C 3D 9C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BE1:                                                                          ;
    JSR      LEA18                     ; 0x15bf1 $9BE1 20 18 EA                ;
    BCC      L9C45                     ; 0x15bf4 $9BE4 90 5F                   ;
    LDA      $ED                       ; 0x15bf6 $9BE6 A5 ED                   ;; Sound Effects Type 2; Sound Effects Type 2
    ORA      #$40                      ; 0x15bf8 $9BE8 09 40                   ;;Set Bits:0100_0000
    STA      $ED                       ; 0x15bfa $9BEA 85 ED                   ;; Sound Effects Type 2; Sound Effects Type 2
    LDA      $30,x                     ; 0x15bfc $9BEC B5 30                   ;; Projectile Y Position
    AND      #$F0                      ; 0x15bfe $9BEE 29 F0                   ;;Keep Bits:1111_0000
    STA      $30,x                     ; 0x15c00 $9BF0 95 30                   ;; Projectile Y Position
    LDA      $045E,x                   ; 0x15c02 $9BF2 BD 5E 04                ;
    BNE      L9C23                     ; 0x15c05 $9BF5 D0 2C                   ;
    STA      $77,x                     ; 0x15c07 $9BF7 95 77                   ;; Projectile X Velocity
    LDY      #$30                      ; 0x15c09 $9BF9 A0 30                   ;;Y = #$30 0011_0000
    LDA      $051B,x                   ; 0x15c0b $9BFB BD 1B 05                ;; Randomizer
    AND      #$03                      ; 0x15c0e $9BFE 29 03                   ;;Keep Bits:0000_0011
    BNE      L9C15                     ; 0x15c10 $9C00 D0 13                   ;
    LDY      #$F0                      ; 0x15c12 $9C02 A0 F0                   ;;Y = #$f0 1111_0000
    LDA      $CE                       ; 0x15c14 $9C04 A5 CE                   ;
    CMP      $CC                       ; 0x15c16 $9C06 C5 CC                   ;; Link's X Position on Screen; Player X On Screen; Link's X Position on Screen
    LDA      #$02                      ; 0x15c18 $9C08 A9 02                   ;;A = #$02 0000_0010
    BCS      L9C0F                     ; 0x15c1a $9C0A B0 03                   ;
    LSR                                ; 0x15c1c $9C0C 4A                      ;
    LDY      #$10                      ; 0x15c1d $9C0D A0 10                   ;;Y = #$10 0001_0000
L9C0F:                                                                          ;
    STA      $66,x                     ; 0x15c1f $9C0F 95 66                   ;; Projectile facing direction
    STY      $77,x                     ; 0x15c21 $9C11 94 77                   ;; Projectile X Velocity
    LDY      #$FF                      ; 0x15c23 $9C13 A0 FF                   ;;Y = #$ff 1111_1111
L9C15:                                                                          ;
    TYA                                ; 0x15c25 $9C15 98                      ;
    STA      $044C,x                   ; 0x15c26 $9C16 9D 4C 04                ;
    INC      $045E,x                   ; 0x15c29 $9C19 FE 5E 04                ;
    LDA      #$F0                      ; 0x15c2c $9C1C A9 F0                   ;;A = #$f0 1111_0000
    STA      $0584,x                   ; 0x15c2e $9C1E 9D 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
    BNE      L9C45                     ; 0x15c31 $9C21 D0 22                   ;
L9C23:                                                                          ;
    LDA      $044C,x                   ; 0x15c33 $9C23 BD 4C 04                ;
    BEQ      L9C5B                     ; 0x15c36 $9C26 F0 33                   ;
    DEC      $044C,x                   ; 0x15c38 $9C28 DE 4C 04                ;
    BEQ      L9C5B                     ; 0x15c3b $9C2B F0 2E                   ;
    AND      #$07                      ; 0x15c3d $9C2D 29 07                   ;;Keep Bits:0000_0111
    BNE      L9C3D                     ; 0x15c3f $9C2F D0 0C                   ;
    LDA      $77,x                     ; 0x15c41 $9C31 B5 77                   ;; Projectile X Velocity
    BEQ      L9C3D                     ; 0x15c43 $9C33 F0 08                   ;
    BPL      L9C3B                     ; 0x15c45 $9C35 10 04                   ;
    INC      $77,x                     ; 0x15c47 $9C37 F6 77                   ;; Projectile X Velocity
    INC      $77,x                     ; 0x15c49 $9C39 F6 77                   ;; Projectile X Velocity
L9C3B:                                                                          ;
    DEC      $77,x                     ; 0x15c4b $9C3B D6 77                   ;; Projectile X Velocity
L9C3D:                                                                          ;
    LDA      #$FE                      ; 0x15c4d $9C3D A9 FE                   ;;A = #$fe 1111_1110
    STA      $0584,x                   ; 0x15c4f $9C3F 9D 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
L9C42:                                                                          ;
    INC      $0584,x                   ; 0x15c52 $9C42 FE 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
L9C45:                                                                          ;
    INC      $0584,x                   ; 0x15c55 $9C45 FE 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
L9C48:                                                                          ;
    JSR      LDED4                     ; 0x15c58 $9C48 20 D4 DE                ;
    LDA      $CA                       ; 0x15c5b $9C4B A5 CA                   ;
    AND      #$FC                      ; 0x15c5d $9C4D 29 FC                   ;;Keep Bits:1111_1100
    BEQ      L9C60                     ; 0x15c5f $9C4F F0 0F                   ;
    AND      #$F0                      ; 0x15c61 $9C51 29 F0                   ;;Keep Bits:1111_0000
    BNE      L9C5B                     ; 0x15c63 $9C53 D0 06                   ;
    LDA      $87,x                     ; 0x15c65 $9C55 B5 87                   ;; Projectile Type
    CMP      #$07                      ; 0x15c67 $9C57 C9 07                   ;
    BEQ      L9C5F                     ; 0x15c69 $9C59 F0 04                   ;
L9C5B:                                                                          ;
    LDA      #$00                      ; 0x15c6b $9C5B A9 00                   ;;A = #$00 0000_0000
    STA      $87,x                     ; 0x15c6d $9C5D 95 87                   ;; Projectile Type
L9C5F:                                                                          ;
    RTS                                ; 0x15c6f $9C5F 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C60:                                                                          ;
    JSR      L9C99                     ; 0x15c70 $9C60 20 99 9C                ;
    JSR      LE48A                     ; 0x15c73 $9C63 20 8A E4                ;
    JMP      LE3B9                     ; 0x15c76 $9C66 4C B9 E3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C69:                                                                          ;
    DEC      $77,x                     ; 0x15c79 $9C69 D6 77                   ;; Projectile X Velocity
    BEQ      L9C5B                     ; 0x15c7b $9C6B F0 EE                   ;
    LDY      $97,x                     ; 0x15c7d $9C6D B4 97                   ;
    LDA      $30,x                     ; 0x15c7f $9C6F B5 30                   ;; Projectile Y Position
    STA      L0000                     ; 0x15c81 $9C71 85 00                   ;
    LDA      #$02                      ; 0x15c83 $9C73 A9 02                   ;;A = #$02 0000_0010
    STA      $02                       ; 0x15c85 $9C75 85 02                   ;
    LSR                                ; 0x15c87 $9C77 4A                      ;
    STA      $03                       ; 0x15c88 $9C78 85 03                   ;
    LSR                                ; 0x15c8a $9C7A 4A                      ;
    STA      $C9                       ; 0x15c8b $9C7B 85 C9                   ;
    LDA      $54,x                     ; 0x15c8d $9C7D B5 54                   ;; Projectile X Position (low byte)
    SBC      $072C                     ; 0x15c8f $9C7F ED 2C 07                ;; Scrolling Offset Low Byte
    STA      $01                       ; 0x15c92 $9C82 85 01                   ;
    LDA      $77,x                     ; 0x15c94 $9C84 B5 77                   ;; Projectile X Velocity
    LDX      #$00                      ; 0x15c96 $9C86 A2 00                   ;;X = #$00 0000_0000
    CMP      #$08                      ; 0x15c98 $9C88 C9 08                   ;
    BCS      L9C8E                     ; 0x15c9a $9C8A B0 02                   ;
    LDX      #$02                      ; 0x15c9c $9C8C A2 02                   ;;X = #$02 0000_0010
L9C8E:                                                                          ;
    JSR      LF0C6                     ; 0x15c9e $9C8E 20 C6 F0                ;
    LDA      #$41                      ; 0x15ca1 $9C91 A9 41                   ;;A = #$41 0100_0001
    STA      $01FE,y                   ; 0x15ca3 $9C93 99 FE 01                ;
L9C96:                                                                          ;
    RTS                                ; 0x15ca6 $9C96 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    RTI                                ; 0x15ca7 $9C97 40                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    BRK                                ; 0x15ca8 $9C98 00                      ;
L9C99:                                                                          ;
    LDA      $87,x                     ; 0x15ca9 $9C99 B5 87                   ;; Projectile Type
    PHA                                ; 0x15cab $9C9B 48                      ;
    ASL                                ; 0x15cac $9C9C 0A                      ;
    TAY                                ; 0x15cad $9C9D A8                      ;
    LDA      $6EC0,y                   ; 0x15cae $9C9E B9 C0 6E                ;
    STA      L000E                     ; 0x15cb1 $9CA1 85 0E                   ;
    LDA      $6EC1,y                   ; 0x15cb3 $9CA3 B9 C1 6E                ;
    STA      $0F                       ; 0x15cb6 $9CA6 85 0F                   ;
    LDY      $97,x                     ; 0x15cb8 $9CA8 B4 97                   ;
    LDA      $30,x                     ; 0x15cba $9CAA B5 30                   ;; Projectile Y Position
    STA      $0200,y                   ; 0x15cbc $9CAC 99 00 02                ;
    LDA      $CE                       ; 0x15cbf $9CAF A5 CE                   ;
    STA      $0203,y                   ; 0x15cc1 $9CB1 99 03 02                ;
    PLA                                ; 0x15cc4 $9CB4 68                      ;
    TAY                                ; 0x15cc5 $9CB5 A8                      ;
    LDA      $6EAD,y                   ; 0x15cc6 $9CB6 B9 AD 6E                ;
    PHA                                ; 0x15cc9 $9CB9 48                      ;
    LDA      $6EB6,y                   ; 0x15cca $9CBA B9 B6 6E                ;
    LDY      $66,x                     ; 0x15ccd $9CBD B4 66                   ;; Projectile facing direction
    ORA      L9C96,y                   ; 0x15ccf $9CBF 19 96 9C                ;
    LDY      $97,x                     ; 0x15cd2 $9CC2 B4 97                   ;
    STA      $0202,y                   ; 0x15cd4 $9CC4 99 02 02                ;
    PLA                                ; 0x15cd7 $9CC7 68                      ;
    STA      $0201,y                   ; 0x15cd8 $9CC8 99 01 02                ;
    JMP      (L000E)                   ; 0x15cdb $9CCB 6C 0E 00                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    JSR      L9D18                     ; 0x15cde $9CCE 20 18 9D                ;
    LDA      $045E,x                   ; 0x15ce1 $9CD1 BD 5E 04                ;
    BEQ      L9CFA                     ; 0x15ce4 $9CD4 F0 24                   ;
    LDY      $044C,x                   ; 0x15ce6 $9CD6 BC 4C 04                ;
    CPY      #$20                      ; 0x15ce9 $9CD9 C0 20                   ;
    BCS      L9CEB                     ; 0x15ceb $9CDB B0 0E                   ;
    LDA      $12                       ; 0x15ced $9CDD A5 12                   ;; Frame Counter (ascending)
    AND      #$02                      ; 0x15cef $9CDF 29 02                   ;;Keep Bits:0000_0010
    BEQ      L9CEB                     ; 0x15cf1 $9CE1 F0 08                   ;
    LDY      $97,x                     ; 0x15cf3 $9CE3 B4 97                   ;
    LDA      #$F8                      ; 0x15cf5 $9CE5 A9 F8                   ;;A = #$f8 1111_1000
    STA      $0200,y                   ; 0x15cf7 $9CE7 99 00 02                ;
    RTS                                ; 0x15cfa $9CEA 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9CEB:                                                                          ;
    LDY      $97,x                     ; 0x15cfb $9CEB B4 97                   ;
    LDA      $0202,y                   ; 0x15cfd $9CED B9 02 02                ;
    AND      #$43                      ; 0x15d00 $9CF0 29 43                   ;;Keep Bits:0100_0011
    STA      $0202,y                   ; 0x15d02 $9CF2 99 02 02                ;
    LDA      #$52                      ; 0x15d05 $9CF5 A9 52                   ;;A = #$52 0101_0010
    STA      $0201,y                   ; 0x15d07 $9CF7 99 01 02                ;
L9CFA:                                                                          ;
    RTS                                ; 0x15d0a $9CFA 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      $12                       ; 0x15d0b $9CFB A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x15d0d $9CFD 29 03                   ;;Keep Bits:0000_0011
    ORA      $0202,y                   ; 0x15d0f $9CFF 19 02 02                ;
    STA      $0202,y                   ; 0x15d12 $9D02 99 02 02                ;
    RTS                                ; 0x15d15 $9D05 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      $66,x                     ; 0x15d16 $9D06 B5 66                   ;; Projectile facing direction
    LSR                                ; 0x15d18 $9D08 4A                      ;
    LDA      #$00                      ; 0x15d19 $9D09 A9 00                   ;;A = #$00 0000_0000
    ROR                                ; 0x15d1b $9D0B 6A                      ;
    PHA                                ; 0x15d1c $9D0C 48                      ;
    LDA      $12                       ; 0x15d1d $9D0D A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x15d1f $9D0F 4A                      ;
    LSR                                ; 0x15d20 $9D10 4A                      ;
L9D11:                                                                          ;
    LSR                                ; 0x15d21 $9D11 4A                      ;
    PLA                                ; 0x15d22 $9D12 68                      ;
    ROR                                ; 0x15d23 $9D13 6A                      ;
    ORA      #$01                      ; 0x15d24 $9D14 09 01                   ;;Set Bits:0000_0001
    BNE      L9D22                     ; 0x15d26 $9D16 D0 0A                   ;
L9D18:                                                                          ;
    LDA      $12                       ; 0x15d28 $9D18 A5 12                   ;; Frame Counter (ascending)
    ASL                                ; 0x15d2a $9D1A 0A                      ;
    ASL                                ; 0x15d2b $9D1B 0A                      ;
    ASL                                ; 0x15d2c $9D1C 0A                      ;
    SEC                                ; 0x15d2d $9D1D 38                      ;
    ROL                                ; 0x15d2e $9D1E 2A                      ;
    ASL                                ; 0x15d2f $9D1F 0A                      ;
    AND      #$C3                      ; 0x15d30 $9D20 29 C3                   ;;Keep Bits:1100_0011
L9D22:                                                                          ;
    STA      $0202,y                   ; 0x15d32 $9D22 99 02 02                ;
    RTS                                ; 0x15d35 $9D25 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9D26:                                                                          ;
.byt    $0C                            ; 0x15d36 $9D26 0C                      ;
.byt    $F4                            ; 0x15d37 $9D27 F4                      ;
L9D28:                                                                          ;
    ASL                                ; 0x15d38 $9D28 0A                      ;
    BRK                                ; 0x15d39 $9D29 00                      ;
.byt    $3F                            ; 0x15d3a $9D2A 3F                      ;
.byt    $1F                            ; 0x15d3b $9D2B 1F                      ;
bank5_Enemy_Routines1_Fokka:                                                    ;
    JSR      bank7_Display             ; 0x15d3c $9D2C 20 11 EF                ;
    LDA      $81,x                     ; 0x15d3f $9D2F B5 81                   ;; Current Animation Frame for Enemys
    BEQ      L9D77                     ; 0x15d41 $9D31 F0 44                   ;
    AND      #$01                      ; 0x15d43 $9D33 29 01                   ;;Keep Bits:0000_0001
    BNE      L9D5A                     ; 0x15d45 $9D35 D0 23                   ;
    JSR      bank7_Spawn_New_Projectile; 0x15d47 $9D37 20 CE DB                ;
    TYA                                ; 0x15d4a $9D3A 98                      ;
    BMI      L9D57                     ; 0x15d4b $9D3B 30 1A                   ;
    LDA      #$05                      ; 0x15d4d $9D3D A9 05                   ;;A = #$05 0000_0101
    STA      $87,y                     ; 0x15d4f $9D3F 99 87 00                ;
    LDA      $81,x                     ; 0x15d52 $9D42 B5 81                   ;; Current Animation Frame for Enemys
    LSR                                ; 0x15d54 $9D44 4A                      ;
    AND      #$01                      ; 0x15d55 $9D45 29 01                   ;;Keep Bits:0000_0001
    TAX                                ; 0x15d57 $9D47 AA                      ;
    LDA      L9D28,x                   ; 0x15d58 $9D48 BD 28 9D                ;
    LDX      $10                       ; 0x15d5b $9D4B A6 10                   ;; used as monster x register ;draw boss hp bar
    CLC                                ; 0x15d5d $9D4D 18                      ;
    ADC      $2A,x                     ; 0x15d5e $9D4E 75 2A                   ;; Enemy Y Position
    STA      $30,y                     ; 0x15d60 $9D50 99 30 00                ;
.byt    $A9                            ; 0x15d63 $9D53 A9                      ;
L9D54:                                                                          ;
    BRK                                ; 0x15d64 $9D54 00                      ;
    STA      $81,x                     ; 0x15d65 $9D55 95 81                   ;; Current Animation Frame for Enemys
L9D57:                                                                          ;
    JSR      LE563                     ; 0x15d67 $9D57 20 63 E5                ;
L9D5A:                                                                          ;
    LDA      $0504,x                   ; 0x15d6a $9D5A BD 04 05                ;; Timer for Enemy
    BNE      L9D70                     ; 0x15d6d $9D5D D0 11                   ;
    INC      $81,x                     ; 0x15d6f $9D5F F6 81                   ;; Current Animation Frame for Enemys
    LDA      $81,x                     ; 0x15d71 $9D61 B5 81                   ;; Current Animation Frame for Enemys
    CMP      #$03                      ; 0x15d73 $9D63 C9 03                   ;
    BEQ      L9D73                     ; 0x15d75 $9D65 F0 0C                   ;
    CMP      #$05                      ; 0x15d77 $9D67 C9 05                   ;
    BCS      L9D73                     ; 0x15d79 $9D69 B0 08                   ;
    LDA      #$10                      ; 0x15d7b $9D6B A9 10                   ;;A = #$10 0001_0000
    STA      $0504,x                   ; 0x15d7d $9D6D 9D 04 05                ;; Timer for Enemy
L9D70:                                                                          ;
    JMP      L9D77                     ; 0x15d80 $9D70 4C 77 9D                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9D73:                                                                          ;
    LDA      #$00                      ; 0x15d83 $9D73 A9 00                   ;;A = #$00 0000_0000
    STA      $81,x                     ; 0x15d85 $9D75 95 81                   ;; Current Animation Frame for Enemys
L9D77:                                                                          ;
    JSR      LE617                     ; 0x15d87 $9D77 20 17 E6                ;
    JSR      LEA32                     ; 0x15d8a $9D7A 20 32 EA                ;
    LDY      #$01                      ; 0x15d8d $9D7D A0 01                   ;;Y = #$01 0000_0001
    INX                                ; 0x15d8f $9D7F E8                      ;
    JSR      bank7_code51              ; 0x15d90 $9D80 20 7D F2                ;
    LDX      $10                       ; 0x15d93 $9D83 A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $1A,x                     ; 0x15d95 $9D85 B5 1A                   ;
    CMP      #$02                      ; 0x15d97 $9D87 C9 02                   ;
    BCC      L9D8E                     ; 0x15d99 $9D89 90 03                   ;
    JMP      LDD3D                     ; 0x15d9b $9D8B 4C 3D DD                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9D8E:                                                                          ;
    LDA      $C9                       ; 0x15d9e $9D8E A5 C9                   ;
.byt    $29                            ; 0x15da0 $9D90 29                      ;
L9D91:                                                                          ;
.byt    $FC                            ; 0x15da1 $9D91 FC                      ;
    BEQ      L9DA0                     ; 0x15da2 $9D92 F0 0C                   ;
    LDA      $A8,x                     ; 0x15da4 $9D94 B5 A8                   ;; Enemy State
    AND      #$0F                      ; 0x15da6 $9D96 29 0F                   ;;Keep Bits:0000_1111
    STA      $A8,x                     ; 0x15da8 $9D98 95 A8                   ;; Enemy State
    JSR      LDE6C                     ; 0x15daa $9D9A 20 6C DE                ;
    JMP      L9DA9                     ; 0x15dad $9D9D 4C A9 9D                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9DA0:                                                                          ;
    JSR      LE48B                     ; 0x15db0 $9DA0 20 8B E4                ;
    JSR      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x15db3 $9DA3 20 77 E6;
    JSR      LE4D9                     ; 0x15db6 $9DA6 20 D9 E4                ;
L9DA9:                                                                          ;
    JSR      bank7_Link_Collision_Detection; 0x15db9 $9DA9 20 C1 D6                ;
    JSR      bank7_Gravity             ; 0x15dbc $9DAC 20 BE DE                ;
    LDA      $A8,x                     ; 0x15dbf $9DAF B5 A8                   ;; Enemy State
    AND      #$08                      ; 0x15dc1 $9DB1 29 08                   ;;Keep Bits:0000_1000
    BEQ      L9DBA                     ; 0x15dc3 $9DB3 F0 05                   ;
    LDA      #$10                      ; 0x15dc5 $9DB5 A9 10                   ;;A = #$10 0001_0000
    STA      $057E,x                   ; 0x15dc7 $9DB7 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
L9DBA:                                                                          ;
    LDA      $A8,x                     ; 0x15dca $9DBA B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x15dcc $9DBC 29 04                   ;;Keep Bits:0000_0100
    BEQ      L9DC3                     ; 0x15dce $9DBE F0 03                   ;
    JSR      bank7_Floor_Y_Position    ; 0x15dd0 $9DC0 20 C1 DA                ;
L9DC3:                                                                          ;
    JSR      L9E42                     ; 0x15dd3 $9DC3 20 42 9E                ;
    LDA       !$F5                     ; 0x15dd6 $9DC6 AD F5 00                ;
    AND      #$40                      ; 0x15dd9 $9DC9 29 40                   ;;Keep Bits:0100_0000
    BEQ      L9DD2                     ; 0x15ddb $9DCB F0 05                   ;
    LDA      $17                       ; 0x15ddd $9DCD A5 17                   ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    STA      $0444,x                   ; 0x15ddf $9DCF 9D 44 04                ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
L9DD2:                                                                          ;
    LDA      $0479                     ; 0x15de2 $9DD2 AD 79 04                ;;jumping_state (2=going up, 1=coming down, 0=not jumping); Link is in mid-air ? (1 = mid-air, 0 = on ground); Link is in mid-air ? (1 = mid-air, 0 = on ground)
    BEQ      L9DE6                     ; 0x15de5 $9DD5 F0 0F                   ;
    LDY      #$01                      ; 0x15de7 $9DD7 A0 01                   ;;Y = #$01 0000_0001
    LDA      $29                       ; 0x15de9 $9DD9 A5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    ADC      #$05                      ; 0x15deb $9DDB 69 05                   ;
    CMP      $2A,x                     ; 0x15ded $9DDD D5 2A                   ;; Enemy Y Position
    BCC      L9DE2                     ; 0x15def $9DDF 90 01                   ;
    DEY                                ; 0x15df1 $9DE1 88                      ;
L9DE2:                                                                          ;
    TYA                                ; 0x15df2 $9DE2 98                      ;
    STA      $0444,x                   ; 0x15df3 $9DE3 9D 44 04                ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
L9DE6:                                                                          ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x15df6 $9DE6 20 91 DC;
    LDA      $A8,x                     ; 0x15df9 $9DE9 B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x15dfb $9DEB 29 04                   ;;Keep Bits:0000_0100
    BNE      L9DF1                     ; 0x15dfd $9DED D0 02                   ;
    BEQ      L9E1E                     ; 0x15dff $9DEF F0 2D                   ;
L9DF1:                                                                          ;
    LDA      $051B,x                   ; 0x15e01 $9DF1 BD 1B 05                ;; Randomizer
    AND      #$1F                      ; 0x15e04 $9DF4 29 1F                   ;;Keep Bits:0001_1111
    BNE      L9E06                     ; 0x15e06 $9DF6 D0 0E                   ;
    LDA      #$C8                      ; 0x15e08 $9DF8 A9 C8                   ;;A = #$c8 1100_1000
    STA      $057E,x                   ; 0x15e0a $9DFA 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    DEC      $2A,x                     ; 0x15e0d $9DFD D6 2A                   ;; Enemy Y Position
    LDA      L9D26,y                   ; 0x15e0f $9DFF B9 26 9D                ;
    ASL                                ; 0x15e12 $9E02 0A                      ;
    STA      $71,x                     ; 0x15e13 $9E03 95 71                   ;; Enemy X Velocity
    RTS                                ; 0x15e15 $9E05 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E06:                                                                          ;
    LDA      $70                       ; 0x15e16 $9E06 A5 70                   ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    BNE      L9E15                     ; 0x15e18 $9E08 D0 0B                   ;
    LDY      #$08                      ; 0x15e1a $9E0A A0 08                   ;;Y = #$08 0000_1000
    LDA      $12                       ; 0x15e1c $9E0C A5 12                   ;; Frame Counter (ascending)
    AND      #$40                      ; 0x15e1e $9E0E 29 40                   ;;Keep Bits:0100_0000
    BNE      L9E14                     ; 0x15e20 $9E10 D0 02                   ;
    LDY      #$F8                      ; 0x15e22 $9E12 A0 F8                   ;;Y = #$f8 1111_1000
L9E14:                                                                          ;
    TYA                                ; 0x15e24 $9E14 98                      ;
L9E15:                                                                          ;
    STA      $71,x                     ; 0x15e25 $9E15 95 71                   ;; Enemy X Velocity
    ASL                                ; 0x15e27 $9E17 0A                      ;
    ROR      $71,x                     ; 0x15e28 $9E18 76 71                   ;; Enemy X Velocity
    LDA      $81,x                     ; 0x15e2a $9E1A B5 81                   ;; Current Animation Frame for Enemys
    BNE      L9E37                     ; 0x15e2c $9E1C D0 19                   ;
L9E1E:                                                                          ;
    LDY      $A1,x                     ; 0x15e2e $9E1E B4 A1                   ;; Enemy Code
    LDA      L9D11,y                   ; 0x15e30 $9E20 B9 11 9D                ;
    INC      $AF,x                     ; 0x15e33 $9E23 F6 AF                   ;; Various enemy state variables
    AND      $AF,x                     ; 0x15e35 $9E25 35 AF                   ;; Various enemy state variables
    BNE      L9E37                     ; 0x15e37 $9E27 D0 0E                   ;
    LDA      $051B,x                   ; 0x15e39 $9E29 BD 1B 05                ;; Randomizer
    AND      #$02                      ; 0x15e3c $9E2C 29 02                   ;;Keep Bits:0000_0010
    TAY                                ; 0x15e3e $9E2E A8                      ;
    INY                                ; 0x15e3f $9E2F C8                      ;
    STY      $81,x                     ; 0x15e40 $9E30 94 81                   ;; Current Animation Frame for Enemys
    LDA      #$18                      ; 0x15e42 $9E32 A9 18                   ;;A = #$18 0001_1000
    STA      $0504,x                   ; 0x15e44 $9E34 9D 04 05                ;; Timer for Enemy
L9E37:                                                                          ;
    RTS                                ; 0x15e47 $9E37 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E38:                                                                          ;
    LDA      $A8,x                     ; 0x15e48 $9E38 B5 A8                   ;; Enemy State
    AND      #$03                      ; 0x15e4a $9E3A 29 03                   ;;Keep Bits:0000_0011
    BNE      L9E41                     ; 0x15e4c $9E3C D0 03                   ;
    JMP      bank7_Simple_Horizontal_Movement; 0x15e4e $9E3E 4C B8 DE              ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E41:                                                                          ;
    RTS                                ; 0x15e51 $9E41 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E42:                                                                          ;
    LDY      $043E,x                   ; 0x15e52 $9E42 BC 3E 04                ;
    BEQ      L9E63                     ; 0x15e55 $9E45 F0 1C                   ;
    LDA      $A1,x                     ; 0x15e57 $9E47 B5 A1                   ;; Enemy Code
    CMP      #$1D                      ; 0x15e59 $9E49 C9 1D                   ;
    BEQ      L9E53                     ; 0x15e5b $9E4B F0 06                   ;
    LDA      $A8,x                     ; 0x15e5d $9E4D B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x15e5f $9E4F 29 04                   ;;Keep Bits:0000_0100
    BEQ      L9E5E                     ; 0x15e61 $9E51 F0 0B                   ;
L9E53:                                                                          ;
    DEC      $043E,x                   ; 0x15e63 $9E53 DE 3E 04                ;
    BPL      L9E5E                     ; 0x15e66 $9E56 10 06                   ;
    INC      $043E,x                   ; 0x15e68 $9E58 FE 3E 04                ;
    INC      $043E,x                   ; 0x15e6b $9E5B FE 3E 04                ;
L9E5E:                                                                          ;
    STY      $71,x                     ; 0x15e6e $9E5E 94 71                   ;; Enemy X Velocity
    JSR      LEA32                     ; 0x15e70 $9E60 20 32 EA                ;
L9E63:                                                                          ;
    JMP      L9E38                     ; 0x15e73 $9E63 4C 38 9E                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E66:                                                                          ;
    RTS                                ; 0x15e76 $9E66 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E67:                                                                          ;
.byt    $04                            ; 0x15e77 $9E67 04                      ;
L9E68:                                                                          ;
.byt    $FC                            ; 0x15e78 $9E68 FC                      ;
    PHP                                ; 0x15e79 $9E69 08                      ;
    SED                                ; 0x15e7a $9E6A F8                      ;
bank5_Enemy_Routines1_Fokkeru:                                                  ;
    JSR      L9E42                     ; 0x15e7b $9E6B 20 42 9E                ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x15e7e $9E6E 20 91 DC;
    INC      $AF,x                     ; 0x15e81 $9E71 F6 AF                   ;; Various enemy state variables
    LDA      $AF,x                     ; 0x15e83 $9E73 B5 AF                   ;; Various enemy state variables
    AND      #$3F                      ; 0x15e85 $9E75 29 3F                   ;;Keep Bits:0011_1111
    BNE      L9E98                     ; 0x15e87 $9E77 D0 1F                   ;
    JSR      bank7_Spawn_New_Projectile; 0x15e89 $9E79 20 CE DB                ;
    BCS      L9E98                     ; 0x15e8c $9E7C B0 1A                   ;
    LDA      #$07                      ; 0x15e8e $9E7E A9 07                   ;;A = #$07 0000_0111
    STA      $87,y                     ; 0x15e90 $9E80 99 87 00                ;
    LDA      #$E0                      ; 0x15e93 $9E83 A9 E0                   ;;A = #$e0 1110_0000
    STA      $0584,y                   ; 0x15e95 $9E85 99 84 05                ;
    LDX      $66,y                     ; 0x15e98 $9E88 B6 66                   ;
    LDA      L9E68,x                   ; 0x15e9a $9E8A BD 68 9E                ;
    ASL                                ; 0x15e9d $9E8D 0A                      ;
    STA      $77,y                     ; 0x15e9e $9E8E 99 77 00                ;
    LDA      #$00                      ; 0x15ea1 $9E91 A9 00                   ;;A = #$00 0000_0000
    STA      $045E,y                   ; 0x15ea3 $9E93 99 5E 04                ;
    LDX      $10                       ; 0x15ea6 $9E96 A6 10                   ;; used as monster x register ;draw boss hp bar
L9E98:                                                                          ;
    JSR      bank7_Gravity             ; 0x15ea8 $9E98 20 BE DE                ;
    JSR      LDE3D                     ; 0x15eab $9E9B 20 3D DE                ;
    JSR      bank7_Link_Collision_Detection; 0x15eae $9E9E 20 C1 D6                ;
    LDA      $A8,x                     ; 0x15eb1 $9EA1 B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x15eb3 $9EA3 29 04                   ;;Keep Bits:0000_0100
    BEQ      L9EBE                     ; 0x15eb5 $9EA5 F0 17                   ;
    JSR      bank7_Floor_Y_Position    ; 0x15eb7 $9EA7 20 C1 DA                ;
    LDA      $051B,x                   ; 0x15eba $9EAA BD 1B 05                ;; Randomizer
    LSR                                ; 0x15ebd $9EAD 4A                      ;
    AND      #$03                      ; 0x15ebe $9EAE 29 03                   ;;Keep Bits:0000_0011
    TAY                                ; 0x15ec0 $9EB0 A8                      ;
    LDA      L9E67,y                   ; 0x15ec1 $9EB1 B9 67 9E                ;
    STA      $71,x                     ; 0x15ec4 $9EB4 95 71                   ;; Enemy X Velocity
    LDA      #$F0                      ; 0x15ec6 $9EB6 A9 F0                   ;;A = #$f0 1111_0000
    BCC      L9EBB                     ; 0x15ec8 $9EB8 90 01                   ;
    ASL                                ; 0x15eca $9EBA 0A                      ;
L9EBB:                                                                          ;
    STA      $057E,x                   ; 0x15ecb $9EBB 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
L9EBE:                                                                          ;
    RTS                                ; 0x15ece $9EBE 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines2_Thunderbird:                                              ;
    LDA      $C2,x                     ; 0x15ecf $9EBF B5 C2                   ;; Enemy Current HP
    LDX      #$29                      ; 0x15ed1 $9EC1 A2 29                   ;;X = #$29 0010_1001
    LDY      #$02                      ; 0x15ed3 $9EC3 A0 02                   ;;Y = #$02 0000_0010
    CMP      #$C0                      ; 0x15ed5 $9EC5 C9 C0                   ;
    BEQ      L9ED7                     ; 0x15ed7 $9EC7 F0 0E                   ;
    BCS      L9ED3                     ; 0x15ed9 $9EC9 B0 08                   ;
    LDX      #$2B                      ; 0x15edb $9ECB A2 2B                   ;;X = #$2b 0010_1011
    LDA      $12                       ; 0x15edd $9ECD A5 12                   ;; Frame Counter (ascending)
    AND      #$18                      ; 0x15edf $9ECF 29 18                   ;;Keep Bits:0001_1000
    BEQ      L9ED5                     ; 0x15ee1 $9ED1 F0 02                   ;
L9ED3:                                                                          ;
    LDX      #$19                      ; 0x15ee3 $9ED3 A2 19                   ;;X = #$19 0001_1001
L9ED5:                                                                          ;
    LDY      #$03                      ; 0x15ee5 $9ED5 A0 03                   ;;Y = #$03 0000_0011
L9ED7:                                                                          ;
    STY      $03                       ; 0x15ee7 $9ED7 84 03                   ;
    STX      $6F03                     ; 0x15ee9 $9ED9 8E 03 6F                ;
    LDY      #$50                      ; 0x15eec $9EDC A0 50                   ;;Y = #$50 0101_0000
    LDA      #$02                      ; 0x15eee $9EDE A9 02                   ;;A = #$02 0000_0010
    STA      $02                       ; 0x15ef0 $9EE0 85 02                   ;
    LDX      #$2C                      ; 0x15ef2 $9EE2 A2 2C                   ;;X = #$2c 0010_1100
    JSR      LF1F4                     ; 0x15ef4 $9EE4 20 F4 F1                ;
    JSR      LF1F4                     ; 0x15ef7 $9EE7 20 F4 F1                ;
    JSR      LF1F4                     ; 0x15efa $9EEA 20 F4 F1                ;
    JSR      LF1F4                     ; 0x15efd $9EED 20 F4 F1                ;
    JSR      LF0D7                     ; 0x15f00 $9EF0 20 D7 F0                ;
    LDA      $C9                       ; 0x15f03 $9EF3 A5 C9                   ;
    PHA                                ; 0x15f05 $9EF5 48                      ;
    ASL                                ; 0x15f06 $9EF6 0A                      ;
    ASL                                ; 0x15f07 $9EF7 0A                      ;
    AND      #$0F                      ; 0x15f08 $9EF8 29 0F                   ;;Keep Bits:0000_1111
    STA      $C9                       ; 0x15f0a $9EFA 85 C9                   ;
    LDA      $2A,x                     ; 0x15f0c $9EFC B5 2A                   ;; Enemy Y Position
    STA      L0000                     ; 0x15f0e $9EFE 85 00                   ;
    LDA      $01                       ; 0x15f10 $9F00 A5 01                   ;
    CLC                                ; 0x15f12 $9F02 18                      ;
    ADC      #$10                      ; 0x15f13 $9F03 69 10                   ;
    STA      $01                       ; 0x15f15 $9F05 85 01                   ;
    DEC      $02                       ; 0x15f17 $9F07 C6 02                   ;
    LDX      #$2C                      ; 0x15f19 $9F09 A2 2C                   ;;X = #$2c 0010_1100
    JSR      LF1F4                     ; 0x15f1b $9F0B 20 F4 F1                ;
    JSR      LF1F4                     ; 0x15f1e $9F0E 20 F4 F1                ;
    JSR      LF1F4                     ; 0x15f21 $9F11 20 F4 F1                ;
    JSR      LF1F4                     ; 0x15f24 $9F14 20 F4 F1                ;
    JSR      LF0D7                     ; 0x15f27 $9F17 20 D7 F0                ;
    LDA      $12                       ; 0x15f2a $9F1A A5 12                   ;; Frame Counter (ascending)
    AND      #$06                      ; 0x15f2c $9F1C 29 06                   ;;Keep Bits:0000_0110
    LSR                                ; 0x15f2e $9F1E 4A                      ;
    ADC      #$0C                      ; 0x15f2f $9F1F 69 0C                   ;
    STA      L0000                     ; 0x15f31 $9F21 85 00                   ;
    LDA      $2A,x                     ; 0x15f33 $9F23 B5 2A                   ;; Enemy Y Position
    STA      $02A0                     ; 0x15f35 $9F25 8D A0 02                ;
    STA      $02AC                     ; 0x15f38 $9F28 8D AC 02                ;
    ADC      L0000                     ; 0x15f3b $9F2B 65 00                   ;
    STA      $02A4                     ; 0x15f3d $9F2D 8D A4 02                ;
    STA      $02B0                     ; 0x15f40 $9F30 8D B0 02                ;
    ADC      L0000                     ; 0x15f43 $9F33 65 00                   ;
    STA      $02A8                     ; 0x15f45 $9F35 8D A8 02                ;
    STA      $02B4                     ; 0x15f48 $9F38 8D B4 02                ;
    LDA      $CD                       ; 0x15f4b $9F3B A5 CD                   ;
    SEC                                ; 0x15f4d $9F3D 38                      ;
    SBC      #$08                      ; 0x15f4e $9F3E E9 08                   ;
    STA      $02A3                     ; 0x15f50 $9F40 8D A3 02                ;
    STA      $02A7                     ; 0x15f53 $9F43 8D A7 02                ;
    STA      $02AB                     ; 0x15f56 $9F46 8D AB 02                ;
    CLC                                ; 0x15f59 $9F49 18                      ;
    ADC      #$28                      ; 0x15f5a $9F4A 69 28                   ;
    STA      $02AF                     ; 0x15f5c $9F4C 8D AF 02                ;
    STA      $02B3                     ; 0x15f5f $9F4F 8D B3 02                ;
    STA      $02B7                     ; 0x15f62 $9F52 8D B7 02                ;
    LDA      #$0F                      ; 0x15f65 $9F55 A9 0F                   ;;A = #$0f 0000_1111
    STA      $02A1                     ; 0x15f67 $9F57 8D A1 02                ;
    STA      L02AD                     ; 0x15f6a $9F5A 8D AD 02                ;
    LDA      #$15                      ; 0x15f6d $9F5D A9 15                   ;;A = #$15 0001_0101
    STA      $02A5                     ; 0x15f6f $9F5F 8D A5 02                ;
    STA      $02B1                     ; 0x15f72 $9F62 8D B1 02                ;
    LDA      #$1B                      ; 0x15f75 $9F65 A9 1B                   ;;A = #$1b 0001_1011
    STA      $02A9                     ; 0x15f77 $9F67 8D A9 02                ;
    STA      $02B5                     ; 0x15f7a $9F6A 8D B5 02                ;
    LDA      $0252                     ; 0x15f7d $9F6D AD 52 02                ;
    STA      $02A2                     ; 0x15f80 $9F70 8D A2 02                ;
    STA      $02A6                     ; 0x15f83 $9F73 8D A6 02                ;
    STA      $02AA                     ; 0x15f86 $9F76 8D AA 02                ;
    ORA      #$40                      ; 0x15f89 $9F79 09 40                   ;;Set Bits:0100_0000
    STA      $02AE                     ; 0x15f8b $9F7B 8D AE 02                ;
    STA      $02B2                     ; 0x15f8e $9F7E 8D B2 02                ;
    STA      $02B6                     ; 0x15f91 $9F81 8D B6 02                ;
    LDA      $4E,x                     ; 0x15f94 $9F84 B5 4E                   ;; Enemy X Position (low byte)
    PHA                                ; 0x15f96 $9F86 48                      ;
    SEC                                ; 0x15f97 $9F87 38                      ;
    SBC      #$08                      ; 0x15f98 $9F88 E9 08                   ;
    STA      $4E,x                     ; 0x15f9a $9F8A 95 4E                   ;; Enemy X Position (low byte)
    LDA      $3C,x                     ; 0x15f9c $9F8C B5 3C                   ;; Enemy X Position (high byte)
    PHA                                ; 0x15f9e $9F8E 48                      ;
    SBC      #$00                      ; 0x15f9f $9F8F E9 00                   ;
    STA      $3C,x                     ; 0x15fa1 $9F91 95 3C                   ;; Enemy X Position (high byte)
    INX                                ; 0x15fa3 $9F93 E8                      ;
    LDY      #$01                      ; 0x15fa4 $9F94 A0 01                   ;;Y = #$01 0000_0001
    JSR      LF2D3                     ; 0x15fa6 $9F96 20 D3 F2                ;
    LDX      $10                       ; 0x15fa9 $9F99 A6 10                   ;; used as monster x register ;draw boss hp bar
    AND      #$84                      ; 0x15fab $9F9B 29 84                   ;;Keep Bits:1000_0100
    BEQ      L9FBA                     ; 0x15fad $9F9D F0 1B                   ;
    BPL      L9FAC                     ; 0x15faf $9F9F 10 0B                   ;
    LDY      #$F8                      ; 0x15fb1 $9FA1 A0 F8                   ;;Y = #$f8 1111_1000
    STY      $02A0                     ; 0x15fb3 $9FA3 8C A0 02                ;
    STY      $02A4                     ; 0x15fb6 $9FA6 8C A4 02                ;
    STY      $02A8                     ; 0x15fb9 $9FA9 8C A8 02                ;
L9FAC:                                                                          ;
    ASL                                ; 0x15fbc $9FAC 0A                      ;
    BEQ      L9FBA                     ; 0x15fbd $9FAD F0 0B                   ;
    LDY      #$F8                      ; 0x15fbf $9FAF A0 F8                   ;;Y = #$f8 1111_1000
    STY      $02AC                     ; 0x15fc1 $9FB1 8C AC 02                ;
    STY      $02B0                     ; 0x15fc4 $9FB4 8C B0 02                ;
    STY      $02B4                     ; 0x15fc7 $9FB7 8C B4 02                ;
L9FBA:                                                                          ;
    PLA                                ; 0x15fca $9FBA 68                      ;
    STA      $3C,x                     ; 0x15fcb $9FBB 95 3C                   ;; Enemy X Position (high byte)
    PLA                                ; 0x15fcd $9FBD 68                      ;
    STA      $4E,x                     ; 0x15fce $9FBE 95 4E                   ;; Enemy X Position (low byte)
    PLA                                ; 0x15fd0 $9FC0 68                      ;
    STA      $C9                       ; 0x15fd1 $9FC1 85 C9                   ;
L9FC3:                                                                          ;
    RTS                                ; 0x15fd3 $9FC3 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_9FC4:                                                               ;
.byt    $14,$16,$18                    ; 0x15fd4 $9FC4 14 16 18                ;
L9FC7:                                                                          ;
.byt    $16,$05,$F8,$04,$F8,$FB,$08,$FC; 0x15fd7 $9FC7 16 05 F8 04 F8 FB 08 FC ;
L9FCF:                                                                          ;
.byt    $08,$E0,$E0,$F0,$F0            ; 0x15fdf $9FCF 08 E0 E0 F0 F0          ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines2_Fokka:                                                    ;
    LDA      $0444,x                   ; 0x15fe4 $9FD4 BD 44 04                ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
    LDY      #$00                      ; 0x15fe7 $9FD7 A0 00                   ;;Y = #$00 0000_0000
    CMP      #$00                      ; 0x15fe9 $9FD9 C9 00                   ;
    BNE      L9FDF                     ; 0x15feb $9FDB D0 02                   ;
    LDY      #$08                      ; 0x15fed $9FDD A0 08                   ;;Y = #$08 0000_1000
L9FDF:                                                                          ;
    LDA      $A8,x                     ; 0x15fef $9FDF B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x15ff1 $9FE1 29 04                   ;;Keep Bits:0000_0100
    BNE      L9FEE                     ; 0x15ff3 $9FE3 D0 09                   ;
    LDA      $057E,x                   ; 0x15ff5 $9FE5 BD 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    BPL      LA008                     ; 0x15ff8 $9FE8 10 1E                   ;
    LDY      #$10                      ; 0x15ffa $9FEA A0 10                   ;;Y = #$10 0001_0000
    BNE      LA008                     ; 0x15ffc $9FEC D0 1A                   ;
L9FEE:                                                                          ;
    LDA      $71,x                     ; 0x15ffe $9FEE B5 71                   ;; Enemy X Velocity
    BEQ      LA008                     ; 0x16000 $9FF0 F0 16                   ;
    BPL      L9FF9                     ; 0x16002 $9FF2 10 05                   ;
    EOR      #$FF                      ; 0x16004 $9FF4 49 FF                   ;;Flip Bits:1111_1111
    CLC                                ; 0x16006 $9FF6 18                      ;
    ADC      #$01                      ; 0x16007 $9FF7 69 01                   ;
L9FF9:                                                                          ;
    CMP      #$10                      ; 0x16009 $9FF9 C9 10                   ;
    LDA      #$08                      ; 0x1600b $9FFB A9 08                   ;;A = #$08 0000_1000
    BCC      LA000                     ; 0x1600d $9FFD 90 01                   ;
    LSR                                ; 0x1600f $9FFF 4A                      ;
LA000:                                                                          ;
    AND      $12                       ; 0x16010 $A000 25 12                   ;; Frame Counter (ascending)
    BNE      LA008                     ; 0x16012 $A002 D0 04                   ;
    INY                                ; 0x16014 $A004 C8                      ;
    INY                                ; 0x16015 $A005 C8                      ;
    INY                                ; 0x16016 $A006 C8                      ;
    INY                                ; 0x16017 $A007 C8                      ;
LA008:                                                                          ;
    TYA                                ; 0x16018 $A008 98                      ;
    LDY      $91,x                     ; 0x16019 $A009 B4 91                   ;
    TAX                                ; 0x1601b $A00B AA                      ;
    JSR      LF1F4                     ; 0x1601c $A00C 20 F4 F1                ;
    JSR      LF0D7                     ; 0x1601f $A00F 20 D7 F0                ;
    LDA      $81,x                     ; 0x16022 $A012 B5 81                   ;; Current Animation Frame for Enemys
    BEQ      LA058                     ; 0x16024 $A014 F0 42                   ;
    STA      $06                       ; 0x16026 $A016 85 06                   ;
    TAX                                ; 0x16028 $A018 AA                      ;
    LDA      L0000                     ; 0x16029 $A019 A5 00                   ;
    CLC                                ; 0x1602b $A01B 18                      ;
    ADC      L9FCF,x                   ; 0x1602c $A01C 7D CF 9F                ;
    STA      L0000                     ; 0x1602f $A01F 85 00                   ;
    LDA      $02                       ; 0x16031 $A021 A5 02                   ;
    CMP      #$01                      ; 0x16033 $A023 C9 01                   ;
    BNE      LA02B                     ; 0x16035 $A025 D0 04                   ;
    INX                                ; 0x16037 $A027 E8                      ;
    INX                                ; 0x16038 $A028 E8                      ;
    INX                                ; 0x16039 $A029 E8                      ;
    INX                                ; 0x1603a $A02A E8                      ;
LA02B:                                                                          ;
    LDA      L9FC7,x                   ; 0x1603b $A02B BD C7 9F                ;
    LDX      $10                       ; 0x1603e $A02E A6 10                   ;; used as monster x register ;draw boss hp bar
    STY      $07                       ; 0x16040 $A030 84 07                   ;
    LDY      $0504,x                   ; 0x16042 $A032 BC 04 05                ;; Timer for Enemy
    CPY      #$03                      ; 0x16045 $A035 C0 03                   ;
    BCC      LA03E                     ; 0x16047 $A037 90 05                   ;
    CPY      #$0D                      ; 0x16049 $A039 C0 0D                   ;
    BCS      LA03E                     ; 0x1604b $A03B B0 01                   ;
    ASL                                ; 0x1604d $A03D 0A                      ;
LA03E:                                                                          ;
    CLC                                ; 0x1604e $A03E 18                      ;
    ADC      $01                       ; 0x1604f $A03F 65 01                   ;
    STA      $01                       ; 0x16051 $A041 85 01                   ;
    LDY      $07                       ; 0x16053 $A043 A4 07                   ;
    LDX      $06                       ; 0x16055 $A045 A6 06                   ;
    CPX      #$04                      ; 0x16057 $A047 E0 04                   ;
    BNE      LA051                     ; 0x16059 $A049 D0 06                   ;
    LDA      $03                       ; 0x1605b $A04B A5 03                   ;
    ORA      #$80                      ; 0x1605d $A04D 09 80                   ;;Set Bits:1000_0000
    STA      $03                       ; 0x1605f $A04F 85 03                   ;
LA051:                                                                          ;
    LDA      L9FC3,x                   ; 0x16061 $A051 BD C3 9F                ;
    TAX                                ; 0x16064 $A054 AA                      ;
    JMP      LF0D7                     ; 0x16065 $A055 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA058:                                                                          ;
    LDX      $10                       ; 0x16068 $A058 A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x1606a $A05A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines2_Fokkeru:                                                  ;
    LDA      $AF,x                     ; 0x1606b $A05B B5 AF                   ;; Various enemy state variables
    PHA                                ; 0x1606d $A05D 48                      ;
    LDX      #$1C                      ; 0x1606e $A05E A2 1C                   ;;X = #$1c 0001_1100
    AND      #$10                      ; 0x16070 $A060 29 10                   ;;Keep Bits:0001_0000
    BEQ      LA066                     ; 0x16072 $A062 F0 02                   ;
    LDX      #$24                      ; 0x16074 $A064 A2 24                   ;;X = #$24 0010_0100
LA066:                                                                          ;
    PLA                                ; 0x16076 $A066 68                      ;
    AND      #$08                      ; 0x16077 $A067 29 08                   ;;Keep Bits:0000_1000
    BNE      LA06F                     ; 0x16079 $A069 D0 04                   ;
    INX                                ; 0x1607b $A06B E8                      ;
    INX                                ; 0x1607c $A06C E8                      ;
    INX                                ; 0x1607d $A06D E8                      ;
    INX                                ; 0x1607e $A06E E8                      ;
LA06F:                                                                          ;
    JSR      LF1F4                     ; 0x1607f $A06F 20 F4 F1                ;
    JMP      LF0D7                     ; 0x16082 $A072 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines1_Bubbles:                                                  ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x16085 $A075 20 02 DA                ;
    JSR      bank7_Simple_Horizontal_Movement; 0x16088 $A078 20 B8 DE              ;
    JSR      bank7_Simple_Vertical_Movement; 0x1608b $A07B 20 C8 DE                ;
LA07E:                                                                          ;
    JSR      LDE3D                     ; 0x1608e $A07E 20 3D DE                ;
    LDA      $A8,x                     ; 0x16091 $A081 B5 A8                   ;; Enemy State
    AND      #$10                      ; 0x16093 $A083 29 10                   ;;Keep Bits:0001_0000
    BEQ      LA094                     ; 0x16095 $A085 F0 0D                   ;
    LDA      $0773                     ; 0x16097 $A087 AD 73 07                ;; Magic Points; Current Magic left in meter
    SEC                                ; 0x1609a $A08A 38                      ;
    SBC      #$01                      ; 0x1609b $A08B E9 01                   ;
    BCS      LA091                     ; 0x1609d $A08D B0 02                   ;
    LDA      #$00                      ; 0x1609f $A08F A9 00                   ;;A = #$00 0000_0000
LA091:                                                                          ;
    STA      $0773                     ; 0x160a1 $A091 8D 73 07                ;; Magic Points; Current Magic left in meter
LA094:                                                                          ;
    LDA      $074F                     ; 0x160a4 $A094 AD 4F 07                ;; Related to Pause Pane
    ORA      #$80                      ; 0x160a7 $A097 09 80                   ;;Set Bits:1000_0000
    STA      $074F                     ; 0x160a9 $A099 8D 4F 07                ;; Related to Pause Pane
    JSR      bank7_Link_Collision_Detection; 0x160ac $A09C 20 C1 D6                ;
    LDA      $A1,x                     ; 0x160af $A09F B5 A1                   ;; Enemy Code
    CMP      #$17                      ; 0x160b1 $A0A1 C9 17                   ;
    BNE      LA0FB                     ; 0x160b3 $A0A3 D0 56                   ;
    LDA      $C2,x                     ; 0x160b5 $A0A5 B5 C2                   ;; Enemy Current HP
    CMP      #$C0                      ; 0x160b7 $A0A7 C9 C0                   ;
    BCS      LA0FB                     ; 0x160b9 $A0A9 B0 50                   ;
    ASL      $71,x                     ; 0x160bb $A0AB 16 71                   ;; Enemy X Velocity
    ASL      $057E,x                   ; 0x160bd $A0AD 1E 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    LDA      #$15                      ; 0x160c0 $A0B0 A9 15                   ;;A = #$15 0001_0101
    STA      $A1,x                     ; 0x160c2 $A0B2 95 A1                   ;; Enemy Code
    LDY      #$05                      ; 0x160c4 $A0B4 A0 05                   ;;Y = #$05 0000_0101
LA0B6:                                                                          ;
    LDA      $B6,y                     ; 0x160c6 $A0B6 B9 B6 00                ;
    BEQ      LA0C0                     ; 0x160c9 $A0B9 F0 05                   ;
    DEY                                ; 0x160cb $A0BB 88                      ;
    BPL      LA0B6                     ; 0x160cc $A0BC 10 F8                   ;
    BMI      LA0FB                     ; 0x160ce $A0BE 30 3B                   ;
LA0C0:                                                                          ;
    LDA      #$01                      ; 0x160d0 $A0C0 A9 01                   ;;A = #$01 0000_0001
    STA      $B6,y                     ; 0x160d2 $A0C2 99 B6 00                ;
    STA      $1A,y                     ; 0x160d5 $A0C5 99 1A 00                ;
    LDA      $C2,x                     ; 0x160d8 $A0C8 B5 C2                   ;; Enemy Current HP
    STA      $C2,y                     ; 0x160da $A0CA 99 C2 00                ;
    LDA      #$15                      ; 0x160dd $A0CD A9 15                   ;;A = #$15 0001_0101
    STA      $A1,y                     ; 0x160df $A0CF 99 A1 00                ;
    LDA      $71,x                     ; 0x160e2 $A0D2 B5 71                   ;; Enemy X Velocity
    STA      $71,y                     ; 0x160e4 $A0D4 99 71 00                ;
    LDA      $057E,x                   ; 0x160e7 $A0D7 BD 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    EOR      #$FF                      ; 0x160ea $A0DA 49 FF                   ;;Flip Bits:1111_1111
    STA      $057E,y                   ; 0x160ec $A0DC 99 7E 05                ;
    LDA      $2A,x                     ; 0x160ef $A0DF B5 2A                   ;; Enemy Y Position
    ADC      #$10                      ; 0x160f1 $A0E1 69 10                   ;
    STA      $2A,y                     ; 0x160f3 $A0E3 99 2A 00                ;
    LDA      $4E,x                     ; 0x160f6 $A0E6 B5 4E                   ;; Enemy X Position (low byte)
    ADC      #$10                      ; 0x160f8 $A0E8 69 10                   ;
    STA      $4E,y                     ; 0x160fa $A0EA 99 4E 00                ;
    LDA      $3C,x                     ; 0x160fd $A0ED B5 3C                   ;; Enemy X Position (high byte)
    ADC      #$00                      ; 0x160ff $A0EF 69 00                   ;
    STA      $3C,y                     ; 0x16101 $A0F1 99 3C 00                ;
    LDA      #$FF                      ; 0x16104 $A0F4 A9 FF                   ;;A = #$ff 1111_1111
    STA      $C2,y                     ; 0x16106 $A0F6 99 C2 00                ;
    STA      $C2,x                     ; 0x16109 $A0F9 95 C2                   ;; Enemy Current HP
LA0FB:                                                                          ;
.byt    $A5                            ; 0x1610b $A0FB A5                      ;
LA0FC:                                                                          ;
    CMP      #$29                      ; 0x1610c $A0FC C9 29                   ;
.byt    $0F                            ; 0x1610e $A0FE 0F                      ;
    BNE      LA107                     ; 0x1610f $A0FF D0 06                   ;
    LDA      $A8,x                     ; 0x16111 $A101 B5 A8                   ;; Enemy State
    AND      #$03                      ; 0x16113 $A103 29 03                   ;;Keep Bits:0000_0011
    BEQ      LA10D                     ; 0x16115 $A105 F0 06                   ;
LA107:                                                                          ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x16117 $A107 20 EB E8;
    JSR      bank7_Simple_Horizontal_Movement; 0x1611a $A10A 20 B8 DE              ;
LA10D:                                                                          ;
    LDA      $C9                       ; 0x1611d $A10D A5 C9                   ;
    AND      #$F0                      ; 0x1611f $A10F 29 F0                   ;;Keep Bits:1111_0000
    BNE      LA119                     ; 0x16121 $A111 D0 06                   ;
    LDA      $A8,x                     ; 0x16123 $A113 B5 A8                   ;; Enemy State
    AND      #$0C                      ; 0x16125 $A115 29 0C                   ;;Keep Bits:0000_1100
    BEQ      LA132                     ; 0x16127 $A117 F0 19                   ;
LA119:                                                                          ;
    LDA      $057E,x                   ; 0x16129 $A119 BD 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    EOR      #$FF                      ; 0x1612c $A11C 49 FF                   ;;Flip Bits:1111_1111
    CLC                                ; 0x1612e $A11E 18                      ;
    ADC      #$01                      ; 0x1612f $A11F 69 01                   ;
    STA      $057E,x                   ; 0x16131 $A121 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    JMP      bank7_Simple_Vertical_Movement; 0x16134 $A124 4C C8 DE                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Init_Routines_Bubble:                                               ;
    LDA      #$F0                      ; 0x16137 $A127 A9 F0                   ; A = F0
    BNE      LA12D                     ; 0x16139 $A129 D0 02                   ;
bank5_Enemy_Init_Routines_Bubble__Fast:                                         ;
    LDA      #$E0                      ; 0x1613b $A12B A9 E0                   ; A = E0
LA12D:                                                                          ;
    STA      $71,x                     ; 0x1613d $A12D 95 71                   ;; Enemy X Velocity
    STA      $057E,x                   ; 0x1613f $A12F 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
LA132:                                                                          ;
    RTS                                ; 0x16142 $A132 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines2_Big_Bubble:                                               ;
    LDA      #$02                      ; 0x16143 $A133 A9 02                   ;;A = #$02 0000_0010
    STA      $02                       ; 0x16145 $A135 85 02                   ;
    LDA      $12                       ; 0x16147 $A137 A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x16149 $A139 4A                      ;
    AND      #$03                      ; 0x1614a $A13A 29 03                   ;;Keep Bits:0000_0011
    STA      $03                       ; 0x1614c $A13C 85 03                   ;
    LDX      #$40                      ; 0x1614e $A13E A2 40                   ;;X = #$40 0100_0000
    LDA      $C9                       ; 0x16150 $A140 A5 C9                   ;
    PHA                                ; 0x16152 $A142 48                      ;
    ASL      $C9                       ; 0x16153 $A143 06 C9                   ;
    LDA      $01                       ; 0x16155 $A145 A5 01                   ;
    ADC      #$08                      ; 0x16157 $A147 69 08                   ;
    STA      $01                       ; 0x16159 $A149 85 01                   ;
    JSR      LF1F4                     ; 0x1615b $A14B 20 F4 F1                ;
    JSR      LEF08                     ; 0x1615e $A14E 20 08 EF                ;
    JSR      LF1F4                     ; 0x16161 $A151 20 F4 F1                ;
    JSR      LEF08                     ; 0x16164 $A154 20 08 EF                ;
    PLA                                ; 0x16167 $A157 68                      ;
    AND      #$09                      ; 0x16168 $A158 29 09                   ;;Keep Bits:0000_1001
    BNE      LA178                     ; 0x1616a $A15A D0 1C                   ;
    LDA      L0000                     ; 0x1616c $A15C A5 00                   ;
    SEC                                ; 0x1616e $A15E 38                      ;
    SBC      #$18                      ; 0x1616f $A15F E9 18                   ;
    STA      L0000                     ; 0x16171 $A161 85 00                   ;
    LDA      $01                       ; 0x16173 $A163 A5 01                   ;
    SBC      #$08                      ; 0x16175 $A165 E9 08                   ;
    STA      $01                       ; 0x16177 $A167 85 01                   ;
    JSR      LF0D7                     ; 0x16179 $A169 20 D7 F0                ;
    JSR      LEF08                     ; 0x1617c $A16C 20 08 EF                ;
    LDA      $01FF,y                   ; 0x1617f $A16F B9 FF 01                ;
    CLC                                ; 0x16182 $A172 18                      ;
    ADC      #$10                      ; 0x16183 $A173 69 10                   ;
    STA      $01FF,y                   ; 0x16185 $A175 99 FF 01                ;
LA178:                                                                          ;
    LDX      $10                       ; 0x16188 $A178 A6 10                   ;; used as monster x register ;draw boss hp bar
LA17A:                                                                          ;
    RTS                                ; 0x1618a $A17A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_A17B:                                                               ;
.byt    $04,$08,$00,$08,$04            ; 0x1618b $A17B 04 08 00 08 04          ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines1_Giant_Bot:                                                ;
    LDA      $C2,x                     ; 0x16190 $A180 B5 C2                   ;; Enemy Current HP
    CMP      #$30                      ; 0x16192 $A182 C9 30                   ;
    BCS      LA1CA                     ; 0x16194 $A184 B0 44                   ;
    LDY      #$05                      ; 0x16196 $A186 A0 05                   ;;Y = #$05 0000_0101
LA188:                                                                          ;
    LDA      #$04                      ; 0x16198 $A188 A9 04                   ;;A = #$04 0000_0100
    STA      $A1,y                     ; 0x1619a $A18A 99 A1 00                ;
    LDA      #$01                      ; 0x1619d $A18D A9 01                   ;;A = #$01 0000_0001
    STA      $B6,y                     ; 0x1619f $A18F 99 B6 00                ;
    STA      $040E,y                   ; 0x161a2 $A192 99 0E 04                ;
    STA      $1A,y                     ; 0x161a5 $A195 99 1A 00                ;
    LSR                                ; 0x161a8 $A198 4A                      ;
LA199:                                                                          ;
    STA      $A8,y                     ; 0x161a9 $A199 99 A8 00                ;
LA19C:                                                                          ;
    LDA      $4E,x                     ; 0x161ac $A19C B5 4E                   ;; Enemy X Position (low byte)
    ADC      L961F,y                   ; 0x161ae $A19E 79 1F 96                ;
    STA      $4E,y                     ; 0x161b1 $A1A1 99 4E 00                ;
    LDA      $3C,x                     ; 0x161b4 $A1A4 B5 3C                   ;; Enemy X Position (high byte)
    ADC      L9624,y                   ; 0x161b6 $A1A6 79 24 96                ;
    STA      $3C,y                     ; 0x161b9 $A1A9 99 3C 00                ;
    LDA      $2A,x                     ; 0x161bc $A1AC B5 2A                   ;; Enemy Y Position
    ADC      LA17A,y                   ; 0x161be $A1AE 79 7A A1                ;
    STA      $2A,y                     ; 0x161c1 $A1B1 99 2A 00                ;
    LDA      #$D0                      ; 0x161c4 $A1B4 A9 D0                   ;;A = #$d0 1101_0000
    STA      $057E,y                   ; 0x161c6 $A1B6 99 7E 05                ;
    STA      $C2,y                     ; 0x161c9 $A1B9 99 C2 00                ;
    LDA      $051C,y                   ; 0x161cc $A1BC B9 1C 05                ;
    AND      #$1F                      ; 0x161cf $A1BF 29 1F                   ;;Keep Bits:0001_1111
    ADC      #$F0                      ; 0x161d1 $A1C1 69 F0                   ;
    STA      $71,y                     ; 0x161d3 $A1C3 99 71 00                ;
    DEY                                ; 0x161d6 $A1C6 88                      ;
    BNE      LA188                     ; 0x161d7 $A1C7 D0 BF                   ;
LA1C9:                                                                          ;
    RTS                                ; 0x161d9 $A1C9 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA1CA:                                                                          ;
    LDA      $81,x                     ; 0x161da $A1CA B5 81                   ;; Current Animation Frame for Enemys
    BNE      LA1DF                     ; 0x161dc $A1CC D0 11                   ;
    LDA      $C9                       ; 0x161de $A1CE A5 C9                   ;
    BNE      LA1C9                     ; 0x161e0 $A1D0 D0 F7                   ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x161e2 $A1D2 20 91 DC;
    LDA      $0F                       ; 0x161e5 $A1D5 A5 0F                   ;
    ADC      #$30                      ; 0x161e7 $A1D7 69 30                   ;
    CMP      #$60                      ; 0x161e9 $A1D9 C9 60                   ;
    BCS      LA1C9                     ; 0x161eb $A1DB B0 EC                   ;
    INC      $81,x                     ; 0x161ed $A1DD F6 81                   ;; Current Animation Frame for Enemys
LA1DF:                                                                          ;
    LDA      $A8,x                     ; 0x161ef $A1DF B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x161f1 $A1E1 29 04                   ;;Keep Bits:0000_0100
    BEQ      LA1EB                     ; 0x161f3 $A1E3 F0 06                   ;
    JSR      bank7_Floor_Y_Position    ; 0x161f5 $A1E5 20 C1 DA                ;
LA1E8:                                                                          ;
    STA      $057E,x                   ; 0x161f8 $A1E8 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
LA1EB:                                                                          ;
    JSR      bank7_Gravity             ; 0x161fb $A1EB 20 BE DE                ;
    JSR      LDE3D                     ; 0x161fe $A1EE 20 3D DE                ;
    LDA      $A8,x                     ; 0x16201 $A1F1 B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x16203 $A1F3 29 04                   ;;Keep Bits:0000_0100
    BEQ      LA20A                     ; 0x16205 $A1F5 F0 13                   ;
    LDA      $051B,x                   ; 0x16207 $A1F7 BD 1B 05                ;; Randomizer
    AND      #$07                      ; 0x1620a $A1FA 29 07                   ;;Keep Bits:0000_0111
    BNE      LA20D                     ; 0x1620c $A1FC D0 0F                   ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x1620e $A1FE 20 91 DC;
    LDA      L962A,y                   ; 0x16211 $A201 B9 2A 96                ;
    STA      $71,x                     ; 0x16214 $A204 95 71                   ;; Enemy X Velocity
    LDA      #$E8                      ; 0x16216 $A206 A9 E8                   ;;A = #$e8 1110_1000
    BNE      LA1E8                     ; 0x16218 $A208 D0 DE                   ;
LA20A:                                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x1621a $A20A 20 B8 DE              ;
LA20D:                                                                          ;
    JMP      bank7_Link_Collision_Detection; 0x1621d $A20D 4C C1 D6                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_A210:                                                               ;
.byt    $3F,$08,$04,$0F,$17,$16,$22,$FF; 0x16220 $A210 3F 08 04 0F 17 16 22 FF ;
.byt    $3F,$08,$04,$0F,$17,$0F,$0F,$FF; 0x16228 $A218 3F 08 04 0F 17 0F 0F FF ;
.byt    $3F,$08,$04,$0F,$17,$22,$16,$FF; 0x16230 $A220 3F 08 04 0F 17 22 16 FF ;
.byt    $3F,$08,$04,$0F,$17,$0F,$0F,$FF; 0x16238 $A228 3F 08 04 0F 17 0F 0F FF ;
.byt    $04,$05,$06,$04                ; 0x16240 $A230 04 05 06 04             ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines1_Electric_Barrier:                                         ;
    LDA      $AF,x                     ; 0x16244 $A234 B5 AF                   ;; Various enemy state variables
    BNE      LA2A7                     ; 0x16246 $A236 D0 6F                   ;
    LDA      $0794                     ; 0x16248 $A238 AD 94 07                ;; Number of Crystals left
    ORA      $C9                       ; 0x1624b $A23B 05 C9                   ;
    BNE      LA25F                     ; 0x1624d $A23D D0 20                   ;
    LDA      $3B                       ; 0x1624f $A23F A5 3B                   ;;link Pagepos SideScroll		; Link's X Position (high byte)
    BNE      LA25F                     ; 0x16251 $A241 D0 1C                   ;
    LDA      $4D                       ; 0x16253 $A243 A5 4D                   ;;link X pos SideScroll		; Link's X Position (low byte)
    CMP      #$C0                      ; 0x16255 $A245 C9 C0                   ;
    BCC      LA25F                     ; 0x16257 $A247 90 16                   ;
    ROL      $DE                       ; 0x16259 $A249 26 DE                   ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    LDA      #$00                      ; 0x1625b $A24B A9 00                   ;;A = #$00 0000_0000
    STA      $71,x                     ; 0x1625d $A24D 95 71                   ;; Enemy X Velocity
    STA      $3F                       ; 0x1625f $A24F 85 3F                   ;
    STA      $51                       ; 0x16261 $A251 85 51                   ;
    STA      $84                       ; 0x16263 $A253 85 84                   ;
.byt    $A9                            ; 0x16265 $A255 A9                      ;
LA256:                                                                          ;
    RTI                                ; 0x16266 $A256 40                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    STA      $EC                       ; 0x16267 $A257 85 EC                   ;; Sound Effects Type 1; Sound Effects Type 1
    LDA      #$03                      ; 0x16269 $A259 A9 03                   ;;A = #$03 0000_0011
    STA      $AF,x                     ; 0x1626b $A25B 95 AF                   ;; Various enemy state variables
    STA      $80                       ; 0x1626d $A25D 85 80                   ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
LA25F:                                                                          ;
    LDA      $C9                       ; 0x1626f $A25F A5 C9                   ;
    ORA      $0494                     ; 0x16271 $A261 0D 94 04                ;; INC $0494 TO KILL LINK
    BNE      LA27C                     ; 0x16274 $A264 D0 16                   ;
    STA      $0518                     ; 0x16276 $A266 8D 18 05                ;; Invulnerable Timeout (01-02 - Blinking, 03+ - Not Blinking); Timer for Link being immune from attacks
    JSR      LE4D9                     ; 0x16279 $A269 20 D9 E4                ;
    JSR      bank7_Link_Collision_Detection; 0x1627c $A26C 20 C1 D6                ;
    LDA      $A8,x                     ; 0x1627f $A26F B5 A8                   ;; Enemy State
    AND      #$10                      ; 0x16281 $A271 29 10                   ;;Keep Bits:0001_0000
    BEQ      LA27C                     ; 0x16283 $A273 F0 07                   ;
    LDA      $13                       ; 0x16285 $A275 A5 13                   ;; Fairy state (0 = Not in Fairy state)	faery, flip from 8=faery,0=link (set $076F to 0, then set $13 to 0)	setting 76F to ff, changes 76F to 3B which prevents changing $13 from 8 to 0
    BEQ      LA27C                     ; 0x16287 $A277 F0 03                   ;
    INC      $0494                     ; 0x16289 $A279 EE 94 04                ;; INC $0494 TO KILL LINK
LA27C:                                                                          ;
    LDA      #$00                      ; 0x1628c $A27C A9 00                   ;;A = #$00 0000_0000
    LDY      $AF,x                     ; 0x1628e $A27E B4 AF                   ;; Various enemy state variables
    BNE      LA28D                     ; 0x16290 $A280 D0 0B                   ;
    LDA      $12                       ; 0x16292 $A282 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x16294 $A284 29 03                   ;;Keep Bits:0000_0011
    BNE      LA2A6                     ; 0x16296 $A286 D0 1E                   ;
    LDA      $12                       ; 0x16298 $A288 A5 12                   ;; Frame Counter (ascending)
    AND      #$0C                      ; 0x1629a $A28A 29 0C                   ;;Keep Bits:0000_1100
    ASL                                ; 0x1629c $A28C 0A                      ;
LA28D:                                                                          ;
    TAX                                ; 0x1629d $A28D AA                      ;
    LDY      #$00                      ; 0x1629e $A28E A0 00                   ;;Y = #$00 0000_0000
LA290:                                                                          ;
    LDA      bank5_table_A210,x        ; 0x162a0 $A290 BD 10 A2                ;
    STA      L0363,y                   ; 0x162a3 $A293 99 63 03                ;
    INX                                ; 0x162a6 $A296 E8                      ;
    INY                                ; 0x162a7 $A297 C8                      ;
    CPY      #$08                      ; 0x162a8 $A298 C0 08                   ;
    BNE      LA290                     ; 0x162aa $A29A D0 F4                   ;
    LDA      #$07                      ; 0x162ac $A29C A9 07                   ;;A = #$07 0000_0111
    STA      $0362                     ; 0x162ae $A29E 8D 62 03                ;; PPU Macro Offset
    LDA      #$01                      ; 0x162b1 $A2A1 A9 01                   ;;A = #$01 0000_0001
    STA      $0725                     ; 0x162b3 $A2A3 8D 25 07                ;; PPU Macro Selector	
LA2A6:                                                                          ;
    RTS                                ; 0x162b6 $A2A6 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA2A7:                                                                          ;
    LDA      $3F                       ; 0x162b7 $A2A7 A5 3F                   ;
    BNE      LA2B7                     ; 0x162b9 $A2A9 D0 0C                   ;
    LDA      #$81                      ; 0x162bb $A2AB A9 81                   ;;A = #$81 1000_0001
    STA      $84                       ; 0x162bd $A2AD 85 84                   ;
    LDA      #$A2                      ; 0x162bf $A2AF A9 A2                   ;;A = #$a2 1010_0010
    STA      $51                       ; 0x162c1 $A2B1 85 51                   ;
    LDA      #$26                      ; 0x162c3 $A2B3 A9 26                   ;;A = #$26 0010_0110
    STA      $3F                       ; 0x162c5 $A2B5 85 3F                   ;
LA2B7:                                                                          ;
    CMP      #$24                      ; 0x162c7 $A2B7 C9 24                   ;
    BNE      LA2C4                     ; 0x162c9 $A2B9 D0 09                   ;
    LDA      $51                       ; 0x162cb $A2BB A5 51                   ;
    CMP      #$E2                      ; 0x162cd $A2BD C9 E2                   ;
    BNE      LA2C4                     ; 0x162cf $A2BF D0 03                   ;
    LSR      $DE                       ; 0x162d1 $A2C1 46 DE                   ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
LA2C3:                                                                          ;
    RTS                                ; 0x162d3 $A2C3 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA2C4:                                                                          ;
    INC      $71,x                     ; 0x162d4 $A2C4 F6 71                   ;; Enemy X Velocity
    LDA      $71,x                     ; 0x162d6 $A2C6 B5 71                   ;; Enemy X Velocity
    AND      #$03                      ; 0x162d8 $A2C8 29 03                   ;;Keep Bits:0000_0011
    BNE      LA2C3                     ; 0x162da $A2CA D0 F7                   ;
    LDA      $71,x                     ; 0x162dc $A2CC B5 71                   ;; Enemy X Velocity
    AND      #$04                      ; 0x162de $A2CE 29 04                   ;;Keep Bits:0000_0100
    BEQ      LA2E6                     ; 0x162e0 $A2D0 F0 14                   ;
    LDY      $84                       ; 0x162e2 $A2D2 A4 84                   ;
    LDX      #$06                      ; 0x162e4 $A2D4 A2 06                   ;;X = #$06 0000_0110
    LDA      #$40                      ; 0x162e6 $A2D6 A9 40                   ;;A = #$40 0100_0000
LA2D8:                                                                          ;
    STA      $60D0,y                   ; 0x162e8 $A2D8 99 D0 60                ;
    INY                                ; 0x162eb $A2DB C8                      ;
    DEX                                ; 0x162ec $A2DC CA                      ;
    BPL      LA2D8                     ; 0x162ed $A2DD 10 F9                   ;
    LDA      $84                       ; 0x162ef $A2DF A5 84                   ;
    SEC                                ; 0x162f1 $A2E1 38                      ;
    SBC      #$10                      ; 0x162f2 $A2E2 E9 10                   ;
    STA      $84                       ; 0x162f4 $A2E4 85 84                   ;
LA2E6:                                                                          ;
    LDA      $3F                       ; 0x162f6 $A2E6 A5 3F                   ;
    STA      L0363                     ; 0x162f8 $A2E8 8D 63 03                ;
    LDA      $51                       ; 0x162fb $A2EB A5 51                   ;
    STA      $0364                     ; 0x162fd $A2ED 8D 64 03                ;
    LDX      #$0C                      ; 0x16300 $A2F0 A2 0C                   ;;X = #$0c 0000_1100
    STX      $0365                     ; 0x16302 $A2F2 8E 65 03                ;
    LDA      #$FF                      ; 0x16305 $A2F5 A9 FF                   ;;A = #$ff 1111_1111
    STA      $0372                     ; 0x16307 $A2F7 8D 72 03                ;
    DEX                                ; 0x1630a $A2FA CA                      ;
LA2FB:                                                                          ;
    LDA      #$F4                      ; 0x1630b $A2FB A9 F4                   ;;A = #$f4 1111_0100
    STA      $0366,x                   ; 0x1630d $A2FD 9D 66 03                ;
    DEX                                ; 0x16310 $A300 CA                      ;
    BPL      LA2FB                     ; 0x16311 $A301 10 F8                   ;
    LDA      $51                       ; 0x16313 $A303 A5 51                   ;
    SEC                                ; 0x16315 $A305 38                      ;
    SBC      #$20                      ; 0x16316 $A306 E9 20                   ;
    STA      $51                       ; 0x16318 $A308 85 51                   ;
    LDA      $3F                       ; 0x1631a $A30A A5 3F                   ;
    SBC      #$00                      ; 0x1631c $A30C E9 00                   ;
.byt    $85                            ; 0x1631e $A30E 85                      ;
LA30F:                                                                          ;
.byt    $3F                            ; 0x1631f $A30F 3F                      ;
    LDA      #$0F                      ; 0x16320 $A310 A9 0F                   ;;A = #$0f 0000_1111
    STA      $0362                     ; 0x16322 $A312 8D 62 03                ;; PPU Macro Offset
LA315:                                                                          ;
    LDA      #$01                      ; 0x16325 $A315 A9 01                   ;;A = #$01 0000_0001
    STA      $0725                     ; 0x16327 $A317 8D 25 07                ;; PPU Macro Selector	
    LDX      $10                       ; 0x1632a $A31A A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x1632c $A31C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Init_Routines_Fire_Bago_Bago_Generator:                             ;
    LDY      #$05                      ; 0x1632d $A31D A0 05                   ; Y = 05
LA31F:                                                                          ;
    CPY      $10                       ; 0x1632f $A31F C4 10                   ;; used as monster x register ;draw boss hp bar
    BEQ      LA32F                     ; 0x16331 $A321 F0 0C                   ;
    LDA      $B6,y                     ; 0x16333 $A323 B9 B6 00                ;
    BEQ      LA32F                     ; 0x16336 $A326 F0 07                   ;
LA329     = * + $0001                                                          ;
    LDA      $A1,y                     ; 0x16338 $A328 B9 A1 00                ;
    CMP      $A1,x                     ; 0x1633b $A32B D5 A1                   ;; Enemy Code
    BEQ      LA333                     ; 0x1633d $A32D F0 04                   ;
LA32F:                                                                          ;
    DEY                                ; 0x1633f $A32F 88                      ;
    BPL      LA31F                     ; 0x16340 $A330 10 ED                   ;
    RTS                                ; 0x16342 $A332 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA333:                                                                          ;
    TYA                                ; 0x16343 $A333 98                      ;
LA334:                                                                          ;
    TAX                                ; 0x16344 $A334 AA                      ;
    JSR      LDD3D                     ; 0x16345 $A335 20 3D DD                ;
LA338:                                                                          ;
    LDX      $10                       ; 0x16348 $A338 A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x1634a $A33A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Init_Routines_Thunderbird:                                          ;
    LDX      #$01                      ; 0x1634b $A33B A2 01                   ; X = 01
    JSR      LC2A6                     ; 0x1634d $A33D 20 A6 C2                ;
    LDX      $10                       ; 0x16350 $A340 A6 10                   ;; used as monster x register ;draw boss hp bar
    CMP      #$00                      ; 0x16352 $A342 C9 00                   ;
    BNE      LA349                     ; 0x16354 $A344 D0 03                   ;
    STA      $B6,x                     ; 0x16356 $A346 95 B6                   ;; Generated Enemy Slot
    RTS                                ; 0x16358 $A348 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA349:                                                                          ;
    LDA      #$08                      ; 0x16359 $A349 A9 08                   ; A = 08
    STA      $057E,x                   ; 0x1635b $A34B 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    RTS                                ; 0x1635e $A34E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_Thunderbird:                                                        ;
.byt    $10,$F0                        ; 0x1635f $A34F 10 F0                   ;
LA351:                                                                          ;
.byt    $02,$04,$08,$10,$FE,$FC,$F8,$F0; 0x16361 $A351 02 04 08 10 FE FC F8 F0 ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines1_Thunderbird:                                              ;
    LDA      $0728                     ; 0x16369 $A359 AD 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    BNE      LA36B                     ; 0x1636c $A35C D0 0D                   ;
    LDA      $072A                     ; 0x1636e $A35E AD 2A 07                ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    BEQ      LA3BD                     ; 0x16371 $A361 F0 5A                   ;
    INC      $0728                     ; 0x16373 $A363 EE 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    LDA      #$90                      ; 0x16376 $A366 A9 90                   ;;A = #$90 1001_0000
    STA      $0504,x                   ; 0x16378 $A368 9D 04 05                ;; Timer for Enemy
LA36B:                                                                          ;
    LDA      $6E3F                     ; 0x1637b $A36B AD 3F 6E                ;
    BPL      LA3C2                     ; 0x1637e $A36E 10 52                   ;
    LDY      $040E,x                   ; 0x16380 $A370 BC 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    BNE      LA3BD                     ; 0x16383 $A373 D0 48                   ;
    INC      $B6,x                     ; 0x16385 $A375 F6 B6                   ;; Generated Enemy Slot
    LDA      #$0A                      ; 0x16387 $A377 A9 0A                   ;;A = #$0a 0000_1010
    STA      $D9                       ; 0x16389 $A379 85 D9                   ;; Thunder Spell modifier ?
    LDA      $10                       ; 0x1638b $A37B A5 10                   ;; used as monster x register ;draw boss hp bar
    PHA                                ; 0x1638d $A37D 48                      ;
    LDX      #$05                      ; 0x1638e $A37E A2 05                   ;;X = #$05 0000_0101
LA380:                                                                          ;
    STX      $10                       ; 0x16390 $A380 86 10                   ;; used as monster x register ;draw boss hp bar
    LDA      #$00                      ; 0x16392 $A382 A9 00                   ;;A = #$00 0000_0000
    STA      $87,x                     ; 0x16394 $A384 95 87                   ;; Projectile Type
    LDA      $B6,x                     ; 0x16396 $A386 B5 B6                   ;; Generated Enemy Slot
    BEQ      LA3B2                     ; 0x16398 $A388 F0 28                   ;
    CMP      #$01                      ; 0x1639a $A38A C9 01                   ;
    BNE      LA3B2                     ; 0x1639c $A38C D0 24                   ;
    INX                                ; 0x1639e $A38E E8                      ;
    LDY      #$01                      ; 0x1639f $A38F A0 01                   ;;Y = #$01 0000_0001
    JSR      bank7_code51              ; 0x163a1 $A391 20 7D F2                ;
    LDX      $10                       ; 0x163a4 $A394 A6 10                   ;; used as monster x register ;draw boss hp bar
    LDY      $D9                       ; 0x163a6 $A396 A4 D9                   ;; Thunder Spell modifier ?
    BNE      LA3AF                     ; 0x163a8 $A398 D0 15                   ;
    LDA      $C9                       ; 0x163aa $A39A A5 C9                   ;
    AND      #$88                      ; 0x163ac $A39C 29 88                   ;;Keep Bits:1000_1000
    BNE      LA3B2                     ; 0x163ae $A39E D0 12                   ;
    LDY      $A1,x                     ; 0x163b0 $A3A0 B4 A1                   ;; Enemy Code
    LDA      $6E41,y                   ; 0x163b2 $A3A2 B9 41 6E                ;
    LDY      #$09                      ; 0x163b5 $A3A5 A0 09                   ;;Y = #$09 0000_1001
    AND      #$A0                      ; 0x163b7 $A3A7 29 A0                   ;;Keep Bits:1010_0000
    BMI      LA3B2                     ; 0x163b9 $A3A9 30 07                   ;
    BEQ      LA3AF                     ; 0x163bb $A3AB F0 02                   ;
    LDY      #$01                      ; 0x163bd $A3AD A0 01                   ;;Y = #$01 0000_0001
LA3AF:                                                                          ;
    JSR      LE726                     ; 0x163bf $A3AF 20 26 E7                ;
LA3B2:                                                                          ;
    DEX                                ; 0x163c2 $A3B2 CA                      ;
    BPL      LA380                     ; 0x163c3 $A3B3 10 CB                   ;
    PLA                                ; 0x163c5 $A3B5 68                      ;
    STA      $10                       ; 0x163c6 $A3B6 85 10                   ;; used as monster x register ;draw boss hp bar
    TAX                                ; 0x163c8 $A3B8 AA                      ;
    LDA      #$80                      ; 0x163c9 $A3B9 A9 80                   ;;A = #$80 1000_0000
    STA      $EB                       ; 0x163cb $A3BB 85 EB                   ;; Music; Music
LA3BD:                                                                          ;
    PLA                                ; 0x163cd $A3BD 68                      ;
    PLA                                ; 0x163ce $A3BE 68                      ;
    JMP      bank7_Display             ; 0x163cf $A3BF 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA3C2:                                                                          ;
    LDA      $0400                     ; 0x163d2 $A3C2 AD 00 04                ;;sword_slash_frame (animation frame); Sword slash frame code
    BNE      LA3CC                     ; 0x163d5 $A3C5 D0 05                   ;
    LDA      #$F8                      ; 0x163d7 $A3C7 A9 F8                   ;;A = #$f8 1111_1000
    STA      $0480                     ; 0x163d9 $A3C9 8D 80 04                ;
LA3CC:                                                                          ;
    LDA      $C2,x                     ; 0x163dc $A3CC B5 C2                   ;; Enemy Current HP
    CMP      #$C0                      ; 0x163de $A3CE C9 C0                   ;
    BCC      LA3D8                     ; 0x163e0 $A3D0 90 06                   ;
    JSR      bank7_Display             ; 0x163e2 $A3D2 20 11 EF                ;
    JMP      LA3DB                     ; 0x163e5 $A3D5 4C DB A3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA3D8:                                                                          ;
    JSR      LDE40                     ; 0x163e8 $A3D8 20 40 DE                ;
LA3DB:                                                                          ;
    LDA      #$01                      ; 0x163eb $A3DB A9 01                   ;;A = #$01 0000_0001
    CMP      $B6,x                     ; 0x163ed $A3DD D5 B6                   ;; Generated Enemy Slot
    BEQ      LA3EF                     ; 0x163ef $A3DF F0 0E                   ;
    STA      $B6,x                     ; 0x163f1 $A3E1 95 B6                   ;; Generated Enemy Slot
    LDA      #$FF                      ; 0x163f3 $A3E3 A9 FF                   ;;A = #$ff 1111_1111
    STA      $6E3F                     ; 0x163f5 $A3E5 8D 3F 6E                ;
    STA      $0504,x                   ; 0x163f8 $A3E8 9D 04 05                ;; Timer for Enemy
    LSR                                ; 0x163fb $A3EB 4A                      ;
    STA      $040E,x                   ; 0x163fc $A3EC 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
LA3EF:                                                                          ;
    LDA      $0504,x                   ; 0x163ff $A3EF BD 04 05                ;; Timer for Enemy
    BEQ      LA3F5                     ; 0x16402 $A3F2 F0 01                   ;
    RTS                                ; 0x16404 $A3F4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA3F5:                                                                          ;
    LDA      #$18                      ; 0x16405 $A3F5 A9 18                   ;;A = #$18 0001_1000
    JSR      LA4E9                     ; 0x16407 $A3F7 20 E9 A4                ;
    LDA      $12                       ; 0x1640a $A3FA A5 12                   ;; Frame Counter (ascending)
    BNE      LA3FE                     ; 0x1640c $A3FC D0 00                   ;
LA3FE:                                                                          ;
    LDA      #$1F                      ; 0x1640e $A3FE A9 1F                   ;;A = #$1f 0001_1111
    LDY      $C2,x                     ; 0x16410 $A400 B4 C2                   ;; Enemy Current HP
    CPY      #$60                      ; 0x16412 $A402 C0 60                   ;
    BCS      LA407                     ; 0x16414 $A404 B0 01                   ;
    LSR                                ; 0x16416 $A406 4A                      ;
LA407:                                                                          ;
    AND      $12                       ; 0x16417 $A407 25 12                   ;; Frame Counter (ascending)
    BNE      LA436                     ; 0x16419 $A409 D0 2B                   ;
    JSR      bank7_Spawn_New_Projectile; 0x1641b $A40B 20 CE DB                ;
    BCS      LA436                     ; 0x1641e $A40E B0 26                   ;
    LDA      #$08                      ; 0x16420 $A410 A9 08                   ;;A = #$08 0000_1000
    STA      $87,y                     ; 0x16422 $A412 99 87 00                ;
    LDA      $4E,x                     ; 0x16425 $A415 B5 4E                   ;; Enemy X Position (low byte)
    ADC      #$0C                      ; 0x16427 $A417 69 0C                   ;
    STA      $54,y                     ; 0x16429 $A419 99 54 00                ;
    LDA      $3C,x                     ; 0x1642c $A41C B5 3C                   ;; Enemy X Position (high byte)
    ADC      #$00                      ; 0x1642e $A41E 69 00                   ;
    STA      $42,y                     ; 0x16430 $A420 99 42 00                ;
    LDA      $051C                     ; 0x16433 $A423 AD 1C 05                ;
    AND      #$07                      ; 0x16436 $A426 29 07                   ;;Keep Bits:0000_0111
    TAX                                ; 0x16438 $A428 AA                      ;
    LDA      LA351,x                   ; 0x16439 $A429 BD 51 A3                ;
    STA      $77,y                     ; 0x1643c $A42C 99 77 00                ;
    LDA      #$F0                      ; 0x1643f $A42F A9 F0                   ;;A = #$f0 1111_0000
    STA      $0584,y                   ; 0x16441 $A431 99 84 05                ;
    LDX      $10                       ; 0x16444 $A434 A6 10                   ;; used as monster x register ;draw boss hp bar
LA436:                                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x16446 $A436 20 B8 DE              ;
    JSR      bank7_Simple_Vertical_Movement; 0x16449 $A439 20 C8 DE                ;
    LDA      $12                       ; 0x1644c $A43C A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x1644e $A43E 29 03                   ;;Keep Bits:0000_0011
    BNE      LA45D                     ; 0x16450 $A440 D0 1B                   ;
    LDA      $057E,x                   ; 0x16452 $A442 BD 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    CMP      #$10                      ; 0x16455 $A445 C9 10                   ;
    BEQ      LA44D                     ; 0x16457 $A447 F0 04                   ;
    CMP      #$F0                      ; 0x16459 $A449 C9 F0                   ;
    BNE      LA44F                     ; 0x1645b $A44B D0 02                   ;
LA44D:                                                                          ;
    INC      $AF,x                     ; 0x1645d $A44D F6 AF                   ;; Various enemy state variables
LA44F:                                                                          ;
    LDA      $AF,x                     ; 0x1645f $A44F B5 AF                   ;; Various enemy state variables
    LSR                                ; 0x16461 $A451 4A                      ;
LA452:
    INC      $057E,x                   ; 0x16462 $A452 FE 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    BCS      LA45D                     ; 0x16465 $A455 B0 06                   ;
    DEC      $057E,x                   ; 0x16467 $A457 DE 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    DEC      $057E,x                   ; 0x1646a $A45A DE 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
LA45D:                                                                          ;
    LDA      $12                       ; 0x1646d $A45D A5 12                   ;; Frame Counter (ascending)
    AND      #$1F                      ; 0x1646f $A45F 29 1F                   ;;Keep Bits:0001_1111
    BNE      LA46B                     ; 0x16471 $A461 D0 08                   ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x16473 $A463 20 91 DC;
    LDA      bank5_table_Thunderbird,y ; 0x16476 $A466 B9 4F A3                ;
    STA      $71,x                     ; 0x16479 $A469 95 71                   ;; Enemy X Velocity
LA46B:                                                                          ;
    RTS                                ; 0x1647b $A46B 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA46C:                                                                          ;
    BPL      LA46E                     ; 0x1647c $A46C 10 00                   ;
LA46E:                                                                          ;
.byt    $EC                            ; 0x1647e $A46E EC                      ;
LA46F:                                                                          ;
    BRK                                ; 0x1647f $A46F 00                      ;
    BEQ      LA452                     ; 0x16480 $A470 F0 E0                   ;
bank5_Enemy_Routines2_Dark_Link_Battle_Trigger:                                 ;
    LDA      #$02                      ; 0x16482 $A472 A9 02                   ;;A = #$02 0000_0010
    STA      $02                       ; 0x16484 $A474 85 02                   ;
    LDX      #$36                      ; 0x16486 $A476 A2 36                   ;;X = #$36 0011_0110
    LDA      $AF                       ; 0x16488 $A478 A5 AF                   ;;monster itemID/ai?	af,b0,b1,b2,b3,b4
    AND      #$18                      ; 0x1648a $A47A 29 18                   ;;Keep Bits:0001_1000
    BNE      LA480                     ; 0x1648c $A47C D0 02                   ;
    INX                                ; 0x1648e $A47E E8                      ;
    INX                                ; 0x1648f $A47F E8                      ;
LA480:                                                                          ;
    JSR      LF0D7                     ; 0x16490 $A480 20 D7 F0                ;
    LDX      #$00                      ; 0x16493 $A483 A2 00                   ;;X = #$00 0000_0000
    LDA      $63                       ; 0x16495 $A485 A5 63                   ;
    CMP      #$06                      ; 0x16497 $A487 C9 06                   ;
    BCC      LA491                     ; 0x16499 $A489 90 06                   ;
    INX                                ; 0x1649b $A48B E8                      ;
    CMP      #$07                      ; 0x1649c $A48C C9 07                   ;
    BNE      LA491                     ; 0x1649e $A48E D0 01                   ;
    INX                                ; 0x164a0 $A490 E8                      ;
LA491:                                                                          ;
    LDA      $2A                       ; 0x164a1 $A491 A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    CLC                                ; 0x164a3 $A493 18                      ;
    ADC      LA46F,x                   ; 0x164a4 $A494 7D 6F A4                ;
    STA      L0000                     ; 0x164a7 $A497 85 00                   ;
    LDA      $CD                       ; 0x164a9 $A499 A5 CD                   ;
    CLC                                ; 0x164ab $A49B 18                      ;
    ADC      LA46C,x                   ; 0x164ac $A49C 7D 6C A4                ;
    STA      $01                       ; 0x164af $A49F 85 01                   ;
    LDA      $C9                       ; 0x164b1 $A4A1 A5 C9                   ;
    ASL                                ; 0x164b3 $A4A3 0A                      ;
    ASL                                ; 0x164b4 $A4A4 0A                      ;
    AND      #$0F                      ; 0x164b5 $A4A5 29 0F                   ;;Keep Bits:0000_1111
    STA      $C9                       ; 0x164b7 $A4A7 85 C9                   ;
    LDA      #$03                      ; 0x164b9 $A4A9 A9 03                   ;;A = #$03 0000_0011
    STA      $03                       ; 0x164bb $A4AB 85 03                   ;
    LDX      #$3A                      ; 0x164bd $A4AD A2 3A                   ;;X = #$3a 0011_1010
    JSR      LF0D7                     ; 0x164bf $A4AF 20 D7 F0                ;
    LDA      #$43                      ; 0x164c2 $A4B2 A9 43                   ;;A = #$43 0100_0011
    STA      $01FE,y                   ; 0x164c4 $A4B4 99 FE 01                ;
    RTS                                ; 0x164c7 $A4B7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA4B8:                                                                          ;
.byt    $3F                            ; 0x164c8 $A4B8 3F                      ;
.byt    $1C                            ; 0x164c9 $A4B9 1C                      ;
.byt    $04                            ; 0x164ca $A4BA 04                      ;
.byt    $0F                            ; 0x164cb $A4BB 0F                      ;
    BMI      LA4EE                     ; 0x164cc $A4BC 30 30                   ;
.byt    $30                            ; 0x164ce $A4BE 30                      ;
LA4BF:                                                                          ;
.byt    $FF                            ; 0x164cf $A4BF FF                      ;
LA4C0:                                                                          ;
.byt    $17                            ; 0x164d0 $A4C0 17                      ;
.byt    $27                            ; 0x164d1 $A4C1 27                      ;
.byt    $37                            ; 0x164d2 $A4C2 37                      ;
.byt    $37                            ; 0x164d3 $A4C3 37                      ;
LA4C4:                                                                          ;
    LDX      $0301                     ; 0x164d4 $A4C4 AE 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDY      #$00                      ; 0x164d7 $A4C7 A0 00                   ;;Y = #$00 0000_0000
LA4C9:                                                                          ;
    LDA      LA4B8,y                   ; 0x164d9 $A4C9 B9 B8 A4                ;
    STA      L0302,x                   ; 0x164dc $A4CC 9D 02 03                ;
    INX                                ; 0x164df $A4CF E8                      ;
    INY                                ; 0x164e0 $A4D0 C8                      ;
    CPY      #$08                      ; 0x164e1 $A4D1 C0 08                   ;
    BCC      LA4C9                     ; 0x164e3 $A4D3 90 F4                   ;
    LDA      $12                       ; 0x164e5 $A4D5 A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x164e7 $A4D7 4A                      ;
    LSR                                ; 0x164e8 $A4D8 4A                      ;
    AND      #$03                      ; 0x164e9 $A4D9 29 03                   ;;Keep Bits:0000_0011
    TAY                                ; 0x164eb $A4DB A8                      ;
    LDA      LA4C0,y                   ; 0x164ec $A4DC B9 C0 A4                ;
    STA      $02FF,x                   ; 0x164ef $A4DF 9D FF 02                ;
    DEX                                ; 0x164f2 $A4E2 CA                      ;
    STX      $0301                     ; 0x164f3 $A4E3 8E 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDX      $10                       ; 0x164f6 $A4E6 A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x164f8 $A4E8 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA4E9:                                                                          ;
    STA      L0000                     ; 0x164f9 $A4E9 85 00                   ;
    LDY      #$00                      ; 0x164fb $A4EB A0 00                   ;;Y = #$00 0000_0000
.byt    $B5                            ; 0x164fd $A4ED B5                      ;
LA4EE:                                                                          ;
.byt    $C2                            ; 0x164fe $A4EE C2                      ;
    CLC                                ; 0x164ff $A4EF 18                      ;
LA4F0:                                                                          ;
    SBC      L0000                     ; 0x16500 $A4F0 E5 00                   ;
    INY                                ; 0x16502 $A4F2 C8                      ;
    BCS      LA4F0                     ; 0x16503 $A4F3 B0 FB                   ;
    LDX      #$1C                      ; 0x16505 $A4F5 A2 1C                   ;;X = #$1c 0001_1100
    LDA      #$70                      ; 0x16507 $A4F7 A9 70                   ;;A = #$70 0111_0000
    STA      L0000                     ; 0x16509 $A4F9 85 00                   ;
LA4FB:                                                                          ;
    LDA      #$70                      ; 0x1650b $A4FB A9 70                   ;;A = #$70 0111_0000
    DEY                                ; 0x1650d $A4FD 88                      ;
    BMI      LA502                     ; 0x1650e $A4FE 30 02                   ;
    LDA      #$6E                      ; 0x16510 $A500 A9 6E                   ;;A = #$6e 0110_1110
LA502:                                                                          ;
    STA      $02C1,x                   ; 0x16512 $A502 9D C1 02                ;
    LDA      #$01                      ; 0x16515 $A505 A9 01                   ;;A = #$01 0000_0001
    STA      $02C2,x                   ; 0x16517 $A507 9D C2 02                ;
    LDA      #$10                      ; 0x1651a $A50A A9 10                   ;;A = #$10 0001_0000
    STA      $02C3,x                   ; 0x1651c $A50C 9D C3 02                ;
    LDA      L0000                     ; 0x1651f $A50F A5 00                   ;
    STA      $02C0,x                   ; 0x16521 $A511 9D C0 02                ;
    ADC      #$F8                      ; 0x16524 $A514 69 F8                   ;
    STA      L0000                     ; 0x16526 $A516 85 00                   ;
    DEX                                ; 0x16528 $A518 CA                      ;
    DEX                                ; 0x16529 $A519 CA                      ;
    DEX                                ; 0x1652a $A51A CA                      ;
    DEX                                ; 0x1652b $A51B CA                      ;
    BPL      LA4FB                     ; 0x1652c $A51C 10 DD                   ;
    LDX      $10                       ; 0x1652e $A51E A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x16530 $A520 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Enemy_Routines1_HiddenRedJar:                                             ;
    LDA      $C9                       ; 0x16531 $A521 A5 C9                   ;
    BNE      LA54E                     ; 0x16533 $A523 D0 29                   ;
    JSR      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x16535 $A525 20 77 E6;
    LDA      $A8,x                     ; 0x16538 $A528 B5 A8                   ;; Enemy State
    AND      #$20                      ; 0x1653a $A52A 29 20                   ;;Keep Bits:0010_0000
    BEQ      LA54E                     ; 0x1653c $A52C F0 20                   ;
    LDA      #$11                      ; 0x1653e $A52E A9 11                   ;;A = #$11 0001_0001
    STA      $AF,x                     ; 0x16540 $A530 95 AF                   ;; Various enemy state variables
    LDY      #$01                      ; 0x16542 $A532 A0 01                   ;;Y = #$01 0000_0001
    STY      $C2,x                     ; 0x16544 $A534 94 C2                   ;; Enemy Current HP
    LDA      $051B,x                   ; 0x16546 $A536 BD 1B 05                ;; Randomizer
    BPL      LA541                     ; 0x16549 $A539 10 06                   ;
    LDA      #$30                      ; 0x1654b $A53B A9 30                   ;;A = #$30 0011_0000
    STA      $C2,x                     ; 0x1654d $A53D 95 C2                   ;; Enemy Current HP
    LDY      #$19                      ; 0x1654f $A53F A0 19                   ;;Y = #$19 0001_1001
LA541:                                                                          ;
    STY      $A1,x                     ; 0x16551 $A541 94 A1                   ;; Enemy Code
    LDA      #$08                      ; 0x16553 $A543 A9 08                   ;;A = #$08 0000_1000
    STA      $040E,x                   ; 0x16555 $A545 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    LDA      $4E,x                     ; 0x16558 $A548 B5 4E                   ;; Enemy X Position (low byte)
    ADC      #$03                      ; 0x1655a $A54A 69 03                   ;
    STA      $4E,x                     ; 0x1655c $A54C 95 4E                   ;; Enemy X Position (low byte)
LA54E:                                                                          ;
    RTS                                ; 0x1655e $A54E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_UNUSED_A54F:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1655f $A54F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x16567 $A557 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1656f $A55F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x16577 $A567 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1657f $A56F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x16587 $A577 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1658f $A57F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x16597 $A587 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1659f $A58F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165a7 $A597 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165af $A59F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165b7 $A5A7 FF FF FF FF FF FF FF FF ;
LA5AF:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165bf $A5AF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165c7 $A5B7 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165cf $A5BF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165d7 $A5C7 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165df $A5CF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165e7 $A5D7 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165ef $A5DF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165f7 $A5E7 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x165ff $A5EF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x16607 $A5F7 FF FF FF FF FF FF FF FF ;
.byt    $FF                            ; 0x1660f $A5FF FF                      ;
bank5_table_A600:                                                               ;
.byt    $02                            ; 0x16610 $A600 02                      ;
LA601:                                                                          ;
.byt    $03,$3D,$AF,$F5,$BB,$BD,$D0,$61; 0x16611 $A601 03 3D AF F5 BB BD D0 61 ;
.byt    $AF,$00,$7F,$BF,$BC,$55,$BD    ; 0x16619 $A609 AF 00 7F BF BC 55 BD    ;
; ---------------------------------------------------------------------------- ;
LA610:                                                                          ;
    LDA      $FF                       ; 0x16620 $A610 A5 FF                   ;; Sprite Bank ?
    AND      #$7C                      ; 0x16622 $A612 29 7C                   ;;Keep Bits:0111_1100
    ORA      $0747                     ; 0x16624 $A614 0D 47 07                ;
    STA      $FF                       ; 0x16627 $A617 85 FF                   ;; Sprite Bank ?
    STA      $2000                     ; 0x16629 $A619 8D 00 20                ;
    LDA      $FE                       ; 0x1662c $A61C A5 FE                   ;;does interesting effects when changed, perhaps involves palette? 
    AND      #$E0                      ; 0x1662e $A61E 29 E0                   ;;Keep Bits:1110_0000
    STA      $2001                     ; 0x16630 $A620 8D 01 20                ;
    LDY      $0726                     ; 0x16633 $A623 AC 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    BNE      LA62C                     ; 0x16636 $A626 D0 04                   ;
    LDA      $FE                       ; 0x16638 $A628 A5 FE                   ;;does interesting effects when changed, perhaps involves palette? 
    ORA      #$1E                      ; 0x1663a $A62A 09 1E                   ;;Set Bits:0001_1110
LA62C:                                                                          ;
    STA      $FE                       ; 0x1663c $A62C 85 FE                   ;;does interesting effects when changed, perhaps involves palette? 
    LDX      $2002                     ; 0x1663e $A62E AE 02 20                ;
    LDA      #$00                      ; 0x16641 $A631 A9 00                   ;;A = #$00 0000_0000
    STA      $2005                     ; 0x16643 $A633 8D 05 20                ;
    STA      $2005                     ; 0x16646 $A636 8D 05 20                ;
    STA      $2003                     ; 0x16649 $A639 8D 03 20                ;
    LDA      #$02                      ; 0x1664c $A63C A9 02                   ;;A = #$02 0000_0010
    STA      $4014                     ; 0x1664e $A63E 8D 14 40                ;
    LDA      $0725                     ; 0x16651 $A641 AD 25 07                ;; PPU Macro Selector	
    ASL                                ; 0x16654 $A644 0A                      ;
    TAX                                ; 0x16655 $A645 AA                      ;
    LDA      bank5_table_A600,x        ; 0x16656 $A646 BD 00 A6                ;
    STA      L0000                     ; 0x16659 $A649 85 00                   ;
    LDA      LA601,x                   ; 0x1665b $A64B BD 01 A6                ;
    STA      $01                       ; 0x1665e $A64E 85 01                   ;
    JSR      LD2EC                     ; 0x16660 $A650 20 EC D2                ;
    LDA      #$3F                      ; 0x16663 $A653 A9 3F                   ;;A = #$3f 0011_1111
    STA      $2006                     ; 0x16665 $A655 8D 06 20                ;
LA658:
    LDY      #$00                      ; 0x16668 $A658 A0 00                   ;;Y = #$00 0000_0000
    STY      $2006                     ; 0x1666a $A65A 8C 06 20                ;
    STY      $2006                     ; 0x1666d $A65D 8C 06 20                ;
    STY      $2006                     ; 0x16670 $A660 8C 06 20                ;
    LDA      $FF                       ; 0x16673 $A663 A5 FF                   ;; Sprite Bank ?
    STA      $2000                     ; 0x16675 $A665 8D 00 20                ;
    LDA      $2002                     ; 0x16678 $A668 AD 02 20                ;
    LDA      $FC                       ; 0x1667b $A66B A5 FC                   ;
    STY      $2005                     ; 0x1667d $A66D 8C 05 20                ;
    STA      $2005                     ; 0x16680 $A670 8D 05 20                ;
    LDA      $FE                       ; 0x16683 $A673 A5 FE                   ;;does interesting effects when changed, perhaps involves palette? 
    STA      $2001                     ; 0x16685 $A675 8D 01 20                ;
    STY      $0301                     ; 0x16688 $A678 8C 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    STY      $0725                     ; 0x1668b $A67B 8C 25 07                ;; PPU Macro Selector	
    DEY                                ; 0x1668e $A67E 88                      ;
    STY      L0302                     ; 0x1668f $A67F 8C 02 03                ;; Used when writing text to screen
    JSR      LC032                     ; 0x16692 $A682 20 32 C0                ;
    LDA      $F7                       ; 0x16695 $A685 A5 F7                   ;; Controller 1 Buttons Held
LA687:                                                                          ;
    STA      $0744                     ; 0x16697 $A687 8D 44 07                ;; Controller 1 Input; Controller 1 Buttons Held
    JSR      bank7_Controllers_Input   ; 0x1669a $A68A 20 46 D3                ;
    INC       !$12                     ; 0x1669d $A68D EE 12 00                ;
    JSR      LA6D9                     ; 0x166a0 $A690 20 D9 A6                ;
    LDA      $2002                     ; 0x166a3 $A693 AD 02 20                ;
    LDA      $FF                       ; 0x166a6 $A696 A5 FF                   ;; Sprite Bank ?
    ORA      #$80                      ; 0x166a8 $A698 09 80                   ;;Set Bits:1000_0000
    STA      $FF                       ; 0x166aa $A69A 85 FF                   ;; Sprite Bank ?
    STA      $2000                     ; 0x166ac $A69C 8D 00 20                ;
    RTI                                ; 0x166af $A69F 40                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_PowerON__Reset_Memory:                                                    ;
    JSR      bank5_code27              ; 0x166b0 $A6A0 20 60 B9                ;
    JSR      bank7_Reset_Memory_Ranges ; 0x166b3 $A6A3 20 81 D2                ;
    LDY      #$1F                      ; 0x166b6 $A6A6 A0 1F                   ;;Y = #$1f 0001_1111
LA6A8:                                                                          ;
    STA      $E0,y                     ; 0x166b8 $A6A8 99 E0 00                ;
    DEY                                ; 0x166bb $A6AB 88                      ;
    BPL      LA6A8                     ; 0x166bc $A6AC 10 FA                   ;
    STA      $4011                     ; 0x166be $A6AE 8D 11 40                ;
    LDA      #$0F                      ; 0x166c1 $A6B1 A9 0F                   ;;A = #$0f 0000_1111
    STA      $4015                     ; 0x166c3 $A6B3 8D 15 40                ;; Sound Channel Switch
    STA      $076B                     ; 0x166c6 $A6B6 8D 6B 07                ;
    LDA      #$00                      ; 0x166c9 $A6B9 A9 00                   ;;A = #$00 0000_0000
    STA      $2001                     ; 0x166cb $A6BB 8D 01 20                ;
    JSR      bank7_Remove_All_Sprites  ; 0x166ce $A6BE 20 4C D2                ;
    JSR      bank7_Erase_Name_Tables_0and1__set_scroll_to_0_0; 0x166d1 $A6C1 20 66 D2;
    INC      $0726                     ; 0x166d4 $A6C4 EE 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    LDA      #$06                      ; 0x166d7 $A6C7 A9 06                   ;;A = #$06 0000_0110
    STA      $0768                     ; 0x166d9 $A6C9 8D 68 07                ;;makes weird ppu effect
    LDA      #$80                      ; 0x166dc $A6CC A9 80                   ;;A = #$80 1000_0000
    STA      $0100                     ; 0x166de $A6CE 8D 00 01                ;
.byt    $A9                            ; 0x166e1 $A6D1 A9                      ;
LA6D2:                                                                          ;
    BCS      LA658+1                   ; 0x166e2 $A6D2 B0 85                   ;jumps to the middle of an instruction. iono. $00 is a BRK
.byt    $FF                            ; 0x166e4 $A6D4 FF                      ;
    STA      $2000                     ; 0x166e5 $A6D5 8D 00 20                ;
    RTS                                ; 0x166e8 $A6D8 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA6D9:                                                                          ;
    JSR      LD174                     ; 0x166e9 $A6D9 20 74 D1                ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x166ec $A6DC 20 85 D3;
    BEQ      LA687                     ; 0x166ef $A6DF F0 A6                   ;
    AND      LE5B2                     ; 0x166f1 $A6E1 2D B2 E5                ;
    LDX      $A9                       ; 0x166f4 $A6E4 A6 A9                   ;
    CPY      #$8D                      ; 0x166f6 $A6E6 C0 8D                   ;
    BRK                                ; 0x166f8 $A6E8 00                      ;
    ORA      ($A9,x)                   ; 0x166f9 $A6E9 01 A9                   ;
    BRK                                ; 0x166fb $A6EB 00                      ;
    STA      $076C                     ; 0x166fc $A6EC 8D 6C 07                ;; (00=restart from zelda's castle with 3 lives,  01=no routine, 02=die, 03=wake up zelda, 04=roll credits, 06=show the lives then restart the scene)
    RTS                                ; 0x166ff $A6EF 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_code19:                                                                   ;
    LDA      $0736                     ; 0x16700 $A6F0 AD 36 07                ; Game Mode
    CMP      #$03                      ; 0x16703 $A6F3 C9 03                   ;
    BCC      LA6FF                     ; 0x16705 $A6F5 90 08                   ;
    JSR      bank5_Animation_of_Stars_in_the_Sky; 0x16707 $A6F7 20 CF A8           ; Animation of Stars in the Sky
    JSR      bank5_Animation_of_Glints_in_Water; 0x1670a $A6FA 20 18 A9            ; Animation of Glints in Water
    LDA      #$00                      ; 0x1670d $A6FD A9 00                   ; A = 00
LA6FF:                                                                          ;
    JSR      LD168                     ; 0x1670f $A6FF 20 68 D1                ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x16712 $A702 20 85 D3;
bank5_pointer_table3:                                                           ;
.word    bank5_code20                  ; 0x16715 $A705 0F A7                   ;
.word    LAF1F                         ; 0x16717 $A707 1F AF                   ;
.word    LA72E                         ; 0x16719 $A709 2E A7                   ;
.word    LA737                         ; 0x1671b $A70B 37 A7                   ;
.word    LAB6D                         ; 0x1671d $A70D 6D AB                   ;
; ---------------------------------------------------------------------------- ;
bank5_code20:                                                                   ;
    JSR      bank7_Set_Memory_200_4FF_and_00_DF_to_Zero; 0x1671f $A70F 20 9C D2    ;
    LDA      #$0F                      ; 0x16722 $A712 A9 0F                   ; A = 0F
    JSR      LBF9D                     ; 0x16724 $A714 20 9D BF                ;
    LDA      $0568                     ; 0x16727 $A717 AD 68 05                ;; Related to Flute in Overworld
    BNE      LA723                     ; 0x1672a $A71A D0 07                   ;
    LDA      #$01                      ; 0x1672c $A71C A9 01                   ; A = 01
    STA      $EA                       ; 0x1672e $A71E 85 EA                   ;;Global Sound Switch (0 = Sound On)
    INC      $0568                     ; 0x16730 $A720 EE 68 05                ;; Related to Flute in Overworld
LA723:                                                                          ;
    JSR      bank5_code_ADE0           ; 0x16733 $A723 20 E0 AD                ;
    LDA      #$00                      ; 0x16736 $A726 A9 00                   ; A = 00
    JSR      LBFB1                     ; 0x16738 $A728 20 B1 BF                ;
    JMP      LC722                     ; 0x1673b $A72B 4C 22 C7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA72E:                                                                          ;
    JSR      bank5_code21              ; 0x1673e $A72E 20 C1 A8                ;
    INC      $0727                     ; 0x16741 $A731 EE 27 07                ;
    JMP      LC72D                     ; 0x16744 $A734 4C 2D C7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA737:                                                                          ;
    LDY      #$00                      ; 0x16747 $A737 A0 00                   ;;Y = #$00 0000_0000
LA739:                                                                          ;
    NOP                                ; 0x16749 $A739 EA                      ;
    DEY                                ; 0x1674a $A73A 88                      ;
    BNE      LA739                     ; 0x1674b $A73B D0 FC                   ;
LA73D:                                                                          ;
    BIT      $2002                     ; 0x1674d $A73D 2C 02 20                ;
    BVC      LA73D                     ; 0x16750 $A740 50 FB                   ;
    LDY      #$00                      ; 0x16752 $A742 A0 00                   ;;Y = #$00 0000_0000
LA744:                                                                          ;
    DEY                                ; 0x16754 $A744 88                      ;
    BNE      LA744                     ; 0x16755 $A745 D0 FD                   ;
    LDY      #$4A                      ; 0x16757 $A747 A0 4A                   ;;Y = #$4a 0100_1010
LA749:                                                                          ;
    DEY                                ; 0x16759 $A749 88                      ;
    BNE      LA749                     ; 0x1675a $A74A D0 FD                   ;
    LDA      $FF                       ; 0x1675c $A74C A5 FF                   ;; Sprite Bank ?
    AND      #$FC                      ; 0x1675e $A74E 29 FC                   ;;Keep Bits:1111_1100
    ORA      $36                       ; 0x16760 $A750 05 36                   ;; Sword Projectile Y On Screen
    STA      $FF                       ; 0x16762 $A752 85 FF                   ;; Sprite Bank ?
    STA      $2000                     ; 0x16764 $A754 8D 00 20                ;
    LDA      $27                       ; 0x16767 $A757 A5 27                   ;
    LDY      $28                       ; 0x16769 $A759 A4 28                   ;
    STA      $2006                     ; 0x1676b $A75B 8D 06 20                ;
    STY      $2006                     ; 0x1676e $A75E 8C 06 20                ;
    LDA      $2007                     ; 0x16771 $A761 AD 07 20                ;
    LDA      $2007                     ; 0x16774 $A764 AD 07 20                ;
    LDA      $2002                     ; 0x16777 $A767 AD 02 20                ;
    LDA      $FC                       ; 0x1677a $A76A A5 FC                   ;
    CMP      #$60                      ; 0x1677c $A76C C9 60                   ;
    BNE      LA787                     ; 0x1677e $A76E D0 17                   ;
    LDA      #$80                      ; 0x16780 $A770 A9 80                   ;;A = #$80 1000_0000
    STA      $0504                     ; 0x16782 $A772 8D 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
    JSR      LA795                     ; 0x16785 $A775 20 95 A7                ;
    LDA      $E8                       ; 0x16788 $A778 A5 E8                   ;; Music Note Pitch
    CMP      #$08                      ; 0x1678a $A77A C9 08                   ;
    BEQ      LA781                     ; 0x1678c $A77C F0 03                   ;
    JMP      bank5_code_ABF7           ; 0x1678e $A77E 4C F7 AB                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA781:                                                                          ;
    INC      $0736                     ; 0x16791 $A781 EE 36 07                ;; Game Mode ; screen intro type
    JMP      LA795                     ; 0x16794 $A784 4C 95 A7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA787:                                                                          ;
    LDA      $E8                       ; 0x16797 $A787 A5 E8                   ;; Music Note Pitch
    CMP      #$02                      ; 0x16799 $A789 C9 02                   ;
    BNE      LA795                     ; 0x1679b $A78B D0 08                   ;
    LDA      $12                       ; 0x1679d $A78D A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x1679f $A78F 29 03                   ;;Keep Bits:0000_0011
    BNE      LA795                     ; 0x167a1 $A791 D0 02                   ;
    INC      $FC                       ; 0x167a3 $A793 E6 FC                   ;
LA795:                                                                          ;
    LDA      $F7                       ; 0x167a5 $A795 A5 F7                   ;; Controller 1 Buttons Held
    CMP      $0744                     ; 0x167a7 $A797 CD 44 07                ;; Controller 1 Input; Controller 1 Buttons Held
    BEQ      LA7C0                     ; 0x167aa $A79A F0 24                   ;
    AND      #$10                      ; 0x167ac $A79C 29 10                   ;;Keep Bits:0001_0000
    BEQ      LA7C0                     ; 0x167ae $A79E F0 20                   ;
    LDA      #$00                      ; 0x167b0 $A7A0 A9 00                   ;;A = #$00 0000_0000
    STA      $0727                     ; 0x167b2 $A7A2 8D 27 07                ;
    STA      $0761                     ; 0x167b5 $A7A5 8D 61 07                ;
    JSR      bank7_Remove_All_Sprites_except_Sprite0; 0x167b8 $A7A8 20 50 D2       ;
LA7AB:                                                                          ;
    LDA      #$80                      ; 0x167bb $A7AB A9 80                   ;;A = #$80 1000_0000
    STA      $EA                       ; 0x167bd $A7AD 85 EA                   ;;Global Sound Switch (0 = Sound On)
    LDA      #$00                      ; 0x167bf $A7AF A9 00                   ;;A = #$00 0000_0000
    STA      $0747                     ; 0x167c1 $A7B1 8D 47 07                ;
    STA      $0568                     ; 0x167c4 $A7B4 8D 68 05                ;; Related to Flute in Overworld
    STA      $073E                     ; 0x167c7 $A7B7 8D 3E 07                ;
    INC      $0726                     ; 0x167ca $A7BA EE 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    INC      $076C                     ; 0x167cd $A7BD EE 6C 07                ;; (00=restart from zelda's castle with 3 lives,  01=no routine, 02=die, 03=wake up zelda, 04=roll credits, 06=show the lives then restart the scene)
LA7C0:                                                                          ;
    RTS                                ; 0x167d0 $A7C0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Intro_Sprites:                                                            ;
.byt    $7F,$F0,$01,$F8,$3F,$EE,$01,$F8; 0x167d1 $A7C1 7F F0 01 F8 3F EE 01 F8 ;
.byt    $4F,$F6,$01,$F0,$4F,$F4,$01,$F8; 0x167d9 $A7C9 4F F6 01 F0 4F F4 01 F8 ;
.byt    $5F,$EE,$01,$E8,$5F,$F0,$01,$F0; 0x167e1 $A7D1 5F EE 01 E8 5F F0 01 F0 ;
.byt    $5F,$F0,$01,$F8,$6F,$F8,$02,$78; 0x167e9 $A7D9 5F F0 01 F8 6F F8 02 78 ;
.byt    $6F,$FA,$02,$80,$6F,$EE,$01,$D0; 0x167f1 $A7E1 6F FA 02 80 6F EE 01 D0 ;
.byt    $6F,$F0,$01,$D8,$6F,$F4,$01,$E0; 0x167f9 $A7E9 6F F0 01 D8 6F F4 01 E0 ;
.byt    $6F,$F2,$01,$E8,$6F,$F6,$01,$F0; 0x16801 $A7F1 6F F2 01 E8 6F F6 01 F0 ;
.byt    $6F,$F0,$01,$F8,$7F,$FC,$02,$78; 0x16809 $A7F9 6F F0 01 F8 7F FC 02 78 ;
.byt    $7F,$FE,$02,$80,$7F,$F0,$01,$D0; 0x16811 $A801 7F FE 02 80 7F F0 01 D0 ;
.byt    $7F,$F2,$01,$D8,$7F,$F4,$01,$E0; 0x16819 $A809 7F F2 01 D8 7F F4 01 E0 ;
.byt    $7F,$F0,$01,$E8,$7F,$F2,$01,$F0; 0x16821 $A811 7F F0 01 E8 7F F2 01 F0 ;
.byt    $8F,$EA,$02,$78,$8F,$EC,$02,$80; 0x16829 $A819 8F EA 02 78 8F EC 02 80 ;
.byt    $9F,$EA,$02,$78,$9F,$EC,$02,$80; 0x16831 $A821 9F EA 02 78 9F EC 02 80 ;
.byt    $FF                            ; 0x16839 $A829 FF                      ;
LA82A:                                                                          ;
.byt    $E8,$21,$70,$07,$E8,$22,$28,$07; 0x1683a $A82A E8 21 70 07 E8 22 28 07 ;
.byt    $E8,$23,$50,$07                ; 0x16842 $A832 E8 23 50 07             ;
LA836:                                                                          ;
.byt    $E8,$20,$A0,$0F,$E8,$21,$20,$0F; 0x16846 $A836 E8 20 A0 0F E8 21 20 0F ;
.byt    $E8,$22,$78,$5F,$E8,$23,$40,$17; 0x1684e $A83E E8 22 78 5F E8 23 40 17 ;
.byt    $E8,$20,$E0,$1F,$E8,$21,$10,$1F; 0x16856 $A846 E8 20 E0 1F E8 21 10 1F ;
.byt    $E8,$22,$28,$5F,$E8,$23,$60,$1F; 0x1685e $A84E E8 22 28 5F E8 23 60 1F ;
.byt    $E8,$20,$A0,$4F,$E8,$21,$80,$1F; 0x16866 $A856 E8 20 A0 4F E8 21 80 1F ;
.byt    $E8,$22,$E0,$1F,$E8,$23,$E8,$27; 0x1686e $A85E E8 22 E0 1F E8 23 E8 27 ;
.byt    $E8,$20,$78,$27,$E8,$21,$C8,$27; 0x16876 $A866 E8 20 78 27 E8 21 C8 27 ;
.byt    $E8,$22,$E8,$2F,$E8,$23,$28,$2F; 0x1687e $A86E E8 22 E8 2F E8 23 28 2F ;
.byt    $E8,$20,$D8,$37,$E8,$21,$10,$37; 0x16886 $A876 E8 20 D8 37 E8 21 10 37 ;
.byt    $E8,$22,$C8,$3F,$E8,$23,$A8,$3F; 0x1688e $A87E E8 22 C8 3F E8 23 A8 3F ;
.byt    $E8,$20,$18,$47,$E8,$21,$08,$47; 0x16896 $A886 E8 20 18 47 E8 21 08 47 ;
.byt    $E8,$22,$48,$4F,$E8,$23,$E0,$AF; 0x1689e $A88E E8 22 48 4F E8 23 E0 AF ;
.byt    $E8,$01,$40,$B4,$E8,$02,$20,$9F; 0x168a6 $A896 E8 01 40 B4 E8 02 20 9F ;
.byt    $E8,$03,$58,$AD,$E8,$00,$48,$92; 0x168ae $A89E E8 03 58 AD E8 00 48 92 ;
.byt    $E8,$01,$70,$95,$E8,$02,$88,$8F; 0x168b6 $A8A6 E8 01 70 95 E8 02 88 8F ;
.byt    $E8,$03,$90,$95,$E8,$00,$B0,$98; 0x168be $A8AE E8 03 90 95 E8 00 B0 98 ;
.byt    $E8,$01,$8A,$78,$E8,$02,$95,$93; 0x168c6 $A8B6 E8 01 8A 78 E8 02 95 93 ;
.byt    $E8,$03,$8E                    ; 0x168ce $A8BE E8 03 8E                ;
; ---------------------------------------------------------------------------- ;
bank5_code21:                                                                   ;
    LDY      #$FF                      ; 0x168d1 $A8C1 A0 FF                   ; Y = FF
LA8C3:                                                                          ;
    LDA      bank5_Intro_Sprites,y     ; 0x168d3 $A8C3 B9 C1 A7                ; Intro Sprites Table
    STA      $0200,y                   ; 0x168d6 $A8C6 99 00 02                ;
    DEY                                ; 0x168d9 $A8C9 88                      ;
    CPY      #$FF                      ; 0x168da $A8CA C0 FF                   ;
    BNE      LA8C3                     ; 0x168dc $A8CC D0 F5                   ;
    RTS                                ; 0x168de $A8CE 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Animation_of_Stars_in_the_Sky:                                            ;
    LDX      #$6B                      ; 0x168df $A8CF A2 6B                   ; X = 6B
    LDA      $12                       ; 0x168e1 $A8D1 A5 12                   ; Permanent Frame Counter
    AND      #$0F                      ; 0x168e3 $A8D3 29 0F                   ; keep bits .... xxxx
    BNE      LA8E8                     ; 0x168e5 $A8D5 D0 11                   ;
LA8D7:                                                                          ;
    INC      $0267,x                   ; 0x168e7 $A8D7 FE 67 02                ;
    LDA      $0267,x                   ; 0x168ea $A8DA BD 67 02                ;
    AND      #$23                      ; 0x168ed $A8DD 29 23                   ; keep bits ..x. ..xx
    STA      $0267,x                   ; 0x168ef $A8DF 9D 67 02                ;
    DEX                                ; 0x168f2 $A8E2 CA                      ;
    DEX                                ; 0x168f3 $A8E3 CA                      ;
    DEX                                ; 0x168f4 $A8E4 CA                      ;
    DEX                                ; 0x168f5 $A8E5 CA                      ;
    BPL      LA8D7                     ; 0x168f6 $A8E6 10 EF                   ;
LA8E8:                                                                          ;
    LDA      $12                       ; 0x168f8 $A8E8 A5 12                   ; Permanent Frame Counter
    BNE      LA8EE                     ; 0x168fa $A8EA D0 02                   ;
    INC      $26                       ; 0x168fc $A8EC E6 26                   ;; Movement Tally - Increases as you walk in overworld.		; Shooting Star presence in Intro
LA8EE:                                                                          ;
    LDA      $026C                     ; 0x168fe $A8EE AD 6C 02                ;
    CMP      #$37                      ; 0x16901 $A8F1 C9 37                   ; Vertical limit for shooting star
    BCC      LA8FE                     ; 0x16903 $A8F3 90 09                   ;
    LDA      #$00                      ; 0x16905 $A8F5 A9 00                   ; A = 00
    STA      $26                       ; 0x16907 $A8F7 85 26                   ;; Movement Tally - Increases as you walk in overworld.		; Shooting Star presence in Intro
    LDA      #$F8                      ; 0x16909 $A8F9 A9 F8                   ; A = F8
    STA      $026C                     ; 0x1690b $A8FB 8D 6C 02                ;
LA8FE:                                                                          ;
    LDA      $26                       ; 0x1690e $A8FE A5 26                   ;; Movement Tally - Increases as you walk in overworld.		; Shooting Star presence in Intro
    BEQ      LA917                     ; 0x16910 $A900 F0 15                   ;
    LDA      $12                       ; 0x16912 $A902 A5 12                   ; Permanent Frame Counter
    AND      #$03                      ; 0x16914 $A904 29 03                   ; keep bits .... ..xx (speed of shooting star)
    BNE      LA917                     ; 0x16916 $A906 D0 0F                   ;
    INC      $026C                     ; 0x16918 $A908 EE 6C 02                ;
    INC      $026C                     ; 0x1691b $A90B EE 6C 02                ;
    INC      $026F                     ; 0x1691e $A90E EE 6F 02                ;
    INC      $026F                     ; 0x16921 $A911 EE 6F 02                ;
    INC      $026F                     ; 0x16924 $A914 EE 6F 02                ;
LA917:                                                                          ;
    RTS                                ; 0x16927 $A917 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Animation_of_Glints_in_Water:                                             ;
    LDX      #$2B                      ; 0x16928 $A918 A2 2B                   ; X = 2B
    LDA      $12                       ; 0x1692a $A91A A5 12                   ; Permanent Frame Counter
    AND      #$07                      ; 0x1692c $A91C 29 07                   ; keep bits .... .xxx
    BNE      LA931                     ; 0x1692e $A91E D0 11                   ;
LA920:                                                                          ;
    INC      $02D3,x                   ; 0x16930 $A920 FE D3 02                ;
    LDA      $02D3,x                   ; 0x16933 $A923 BD D3 02                ;
    AND      #$03                      ; 0x16936 $A926 29 03                   ; keep bits .... ..xx
    STA      $02D3,x                   ; 0x16938 $A928 9D D3 02                ;
    DEX                                ; 0x1693b $A92B CA                      ;
    DEX                                ; 0x1693c $A92C CA                      ;
    DEX                                ; 0x1693d $A92D CA                      ;
    DEX                                ; 0x1693e $A92E CA                      ;
    BPL      LA920                     ; 0x1693f $A92F 10 EF                   ;
LA931:                                                                          ;
    RTS                                ; 0x16941 $A931 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_intro_screen_text:                                                  ;
.byt    $DA,$DF,$ED,$DE,$EB,$F4,$E0,$DA; 0x16942 $A932 DA DF ED DE EB F4 E0 DA ;
.byt    $E7,$E8,$E7,$F4,$F0,$DA,$EC,$F4; 0x1694a $A93A E7 E8 E7 F4 F0 DA EC F4 ;
.byt    $DD,$DE,$EC,$ED,$EB,$E8,$F2,$DE; 0x16952 $A942 DD DE EC ED EB E8 F2 DE ;
.byt    $DD,$9C,$F4,$F4,$FD,$E2,$E6,$E9; 0x1695a $A94A DD 9C F4 F4 FD E2 E6 E9 ;
.byt    $DA,$F4,$ED,$E8,$E5,$DD,$F4,$E5; 0x16962 $A952 DA F4 ED E8 E5 DD F4 E5 ;
.byt    $E2,$E7,$E4,$F4,$DA,$F4,$EC,$E5; 0x1696a $A95A E2 E7 E4 F4 DA F4 EC E5 ;
.byt    $DE,$DE,$E9,$E2,$E7,$E0,$F4,$F4; 0x16972 $A962 DE DE E9 E2 E7 E0 F4 F4 ;
.byt    $F4,$FD,$EC,$E9,$DE,$E5,$E5,$F4; 0x1697a $A96A F4 FD EC E9 DE E5 E5 F4 ;
.byt    $F0,$DA,$EC,$F4,$DC,$DA,$EC,$ED; 0x16982 $A972 F0 DA EC F4 DC DA EC ED ;
.byt    $F4,$E8,$E7,$F4,$E9,$EB,$E2,$E7; 0x1698a $A97A F4 E8 E7 F4 E9 EB E2 E7 ;
.byt    $DC,$DE,$EC,$EC,$F4,$F4,$FD,$F3; 0x16992 $A982 DC DE EC EC F4 F4 FD F3 ;
.byt    $DE,$E5,$DD,$DA,$CF,$F4,$EC,$E1; 0x1699a $A98A DE E5 DD DA CF F4 EC E1 ;
.byt    $DE,$F4,$F0,$E2,$E5,$E5,$F4,$F0; 0x169a2 $A992 DE F4 F0 E2 E5 E5 F4 F0 ;
.byt    $DA,$E4,$DE,$F4,$E8,$E7,$E5,$F2; 0x169aa $A99A DA E4 DE F4 E8 E7 E5 F2 ;
.byt    $F4,$F4,$F4,$FD,$F0,$E2,$ED,$E1; 0x169b2 $A9A2 F4 F4 F4 FD F0 E2 ED E1 ;
.byt    $F4,$ED,$E1,$DE,$F4,$E9,$E8,$F0; 0x169ba $A9AA F4 ED E1 DE F4 E9 E8 F0 ;
.byt    $DE,$EB,$F4,$E8,$DF,$F4,$E7,$E8; 0x169c2 $A9B2 DE EB F4 E8 DF F4 E7 E8 ;
.byt    $CF,$D3,$F4,$F4,$F4,$F4,$F4,$F4; 0x169ca $A9BA CF D3 F4 F4 F4 F4 F4 F4 ;
.byt    $FD,$ED,$EB,$E2,$DF,$E8,$EB,$DC; 0x169d2 $A9C2 FD ED EB E2 DF E8 EB DC ;
.byt    $DE,$F4,$EC,$DE,$DA,$E5,$DE,$DD; 0x169da $A9CA DE F4 EC DE DA E5 DE DD ;
.byt    $F4,$E2,$E7,$F4,$DA,$F4,$E9,$DA; 0x169e2 $A9D2 F4 E2 E7 F4 DA F4 E9 DA ;
.byt    $E5,$DA,$DC,$DE,$F4,$FD,$E2,$E7; 0x169ea $A9DA E5 DA DC DE F4 FD E2 E7 ;
.byt    $F4,$E1,$F2,$EB,$EE,$E5,$DE,$CF; 0x169f2 $A9E2 F4 E1 F2 EB EE E5 DE CF ;
.byt    $F4,$ED,$E8,$F4,$DB,$EB,$DE,$DA; 0x169fa $A9EA F4 ED E8 F4 DB EB DE DA ;
.byt    $E4,$F4,$ED,$E1,$DE,$F4,$F4,$F4; 0x16a02 $A9F2 E4 F4 ED E1 DE F4 F4 F4 ;
.byt    $F4,$F4,$FD,$EC,$DE,$DA,$E5,$9C; 0x16a0a $A9FA F4 F4 FD EC DE DA E5 9C ;
.byt    $DC,$EB,$F2,$EC,$ED,$DA        ; 0x16a12 $AA02 DC EB F2 EC ED DA       ;
LAA08:                                                                          ;
.byt    $E5,$EC,$F4,$E6,$EE,$EC,$ED,$F4; 0x16a18 $AA08 E5 EC F4 E6 EE EC ED F4 ;
.byt    $DB,$DE,$F4,$F4,$F4,$F4,$F4,$F4; 0x16a20 $AA10 DB DE F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$FD,$E9,$E5,$DA,$DC,$DE,$DD; 0x16a28 $AA18 F4 FD E9 E5 DA DC DE DD ;
.byt    $F4,$E2,$E7,$F4,$EC,$ED,$DA,$ED; 0x16a30 $AA20 F4 E2 E7 F4 EC ED DA ED ;
.byt    $EE,$DE,$EC,$F4,$E2,$E7,$F4,$D6; 0x16a38 $AA28 EE DE EC F4 E2 E7 F4 D6 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$FD,$F0; 0x16a40 $AA30 F4 F4 F4 F4 F4 F4 FD F0 ;
.byt    $DE,$E5,$E5,$F4,$E0,$EE,$DA,$EB; 0x16a48 $AA38 DE E5 E5 F4 E0 EE DA EB ;
.byt    $DD,$DE,$DD,$F4,$E9,$DA,$E5,$DA; 0x16a50 $AA40 DD DE DD F4 E9 DA E5 DA ;
.byt    $DC,$DE,$EC,$CF,$F4,$F4,$F4,$F4; 0x16a58 $AA48 DC DE EC CF F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$FD,$E5,$E2,$E7,$E4; 0x16a60 $AA50 F4 F4 F4 FD E5 E2 E7 E4 ;
.byt    $F4,$EC,$DE,$ED,$F4,$E8,$EE,$ED; 0x16a68 $AA58 F4 EC DE ED F4 E8 EE ED ;
.byt    $F4,$E8,$E7,$F4,$E1,$E2,$EC,$F4; 0x16a70 $AA60 F4 E8 E7 F4 E1 E2 EC F4 ;
.byt    $E6,$E8,$EC,$ED,$F4,$F4,$F4,$F4; 0x16a78 $AA68 E6 E8 EC ED F4 F4 F4 F4 ;
.byt    $FD,$DA,$DD,$EF,$DE,$E7,$ED,$EE; 0x16a80 $AA70 FD DA DD EF DE E7 ED EE ;
.byt    $EB,$DE,$EC,$E8,$E6,$DE,$F4,$EA; 0x16a88 $AA78 EB DE EC E8 E6 DE F4 EA ;
.byt    $EE,$DE,$EC,$ED,$F4,$F2,$DE,$ED; 0x16a90 $AA80 EE DE EC ED F4 F2 DE ED ;
.byt    $CF,$CF,$CF,$F4,$F4,$FD,$F4,$F4; 0x16a98 $AA88 CF CF CF F4 F4 FD F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$0E,$D1,$D9; 0x16aa0 $AA90 F4 F4 F4 F4 F4 0E D1 D9 ;
.byt    $D8,$D7,$F4,$E7,$E2,$E7,$ED,$DE; 0x16aa8 $AA98 D8 D7 F4 E7 E2 E7 ED DE ;
.byt    $E7,$DD,$E8,$F4,$F4,$F4,$F4,$F4; 0x16ab0 $AAA0 E7 DD E8 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$FD,$F4,$F4,$F4,$F4,$F4; 0x16ab8 $AAA8 F4 F4 FD F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x16ac0 $AAB0 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x16ac8 $AAB8 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$FD; 0x16ad0 $AAC0 F4 F4 F4 F4 F4 F4 F4 FD ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x16ad8 $AAC8 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x16ae0 $AAD0 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x16ae8 $AAD8 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$FD            ; 0x16af0 $AAE0 F4 F4 F4 F4 FD          ;
LAAE5:                                                                          ;
.byt    $32,$4F,$6C,$89,$A6,$C3,$E0,$FD; 0x16af5 $AAE5 32 4F 6C 89 A6 C3 E0 FD ;
.byt    $1A,$37,$54,$71,$8E,$AB,$C8    ; 0x16afd $AAED 1A 37 54 71 8E AB C8    ;
LAAF4:                                                                          ;
.byt    $A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9; 0x16b04 $AAF4 A9 A9 A9 A9 A9 A9 A9 A9 ;
.byt    $AA,$AA,$AA,$AA,$AA,$AA,$AA,$00; 0x16b0c $AAFC AA AA AA AA AA AA AA 00 ;
.byt    $00,$00,$00,$00,$00,$00,$CC,$05; 0x16b14 $AB04 00 00 00 00 00 00 CC 05 ;
.byt    $05,$05,$05,$05,$05,$05,$CC    ; 0x16b1c $AB0C 05 05 05 05 05 05 CC    ;nametable attributes: intro screen "copyright" green color palette selection
LAB13:                                                                          ;
.byt    $03,$03,$03,$03,$03,$03,$0B,$03; 0x16b23 $AB13 03 03 03 03 03 03 0B 03 ;
LAB1B:                                                                          ;
.byt    $AB,$AB,$AB,$AB,$AB,$AB,$AB,$AB; 0x16b2b $AB1B AB AB AB AB AB AB AB AB ;
LAB23:                                                                          ;
.byt    $4D,$70,$93,$B6,$D9,$FC,$1F,$42; 0x16b33 $AB23 4D 70 93 B6 D9 FC 1F 42 ;
.byt    $65,$88,$AB,$CE,$F1,$F1,$F1,$F1; 0x16b3b $AB2B 65 88 AB CE F1 F1 F1 F1 ;
.byt    $4D,$70,$93,$B6,$D9,$FC,$1F,$42; 0x16b43 $AB33 4D 70 93 B6 D9 FC 1F 42 ;
.byt    $65,$88,$AB,$CE,$F1,$F1        ; 0x16b4b $AB3B 65 88 AB CE F1 F1       ;
LAB41:                                                                          ;
.byt    $B0,$B0,$B0,$B0,$B0,$B0,$B1,$B1; 0x16b51 $AB41 B0 B0 B0 B0 B0 B0 B1 B1 ;
.byt    $B1,$B1,$B1,$B1,$B1,$B1,$B1,$B1; 0x16b59 $AB49 B1 B1 B1 B1 B1 B1 B1 B1 ;
.byt    $B0,$B0,$B0,$B0,$B0,$B0,$B1,$B1; 0x16b61 $AB51 B0 B0 B0 B0 B0 B0 B1 B1 ;
.byt    $B1,$B1,$B1,$B1,$B1,$B1        ; 0x16b69 $AB59 B1 B1 B1 B1 B1 B1       ;
LAB5F:                                                                          ;
.byt    $69                            ; 0x16b6f $AB5F 69                      ;
LAB60:                                                                          ;
.byt    $AF,$84,$AF,$AA,$AF,$C6,$AF,$DB; 0x16b70 $AB60 AF 84 AF AA AF C6 AF DB ;
.byt    $AF,$EF,$AF,$14,$B0            ; 0x16b78 $AB68 AF EF AF 14 B0          ;
; ---------------------------------------------------------------------------- ;
LAB6D:                                                                          ;
    LDY      #$00                      ; 0x16b7d $AB6D A0 00                   ;;Y = #$00 0000_0000
LAB6F:                                                                          ;
    NOP                                ; 0x16b7f $AB6F EA                      ;
    DEY                                ; 0x16b80 $AB70 88                      ;
    BNE      LAB6F                     ; 0x16b81 $AB71 D0 FC                   ;
LAB73:                                                                          ;
    BIT      $2002                     ; 0x16b83 $AB73 2C 02 20                ;
    BVC      LAB73                     ; 0x16b86 $AB76 50 FB                   ;
    LDY      #$00                      ; 0x16b88 $AB78 A0 00                   ;;Y = #$00 0000_0000
LAB7A:                                                                          ;
    DEY                                ; 0x16b8a $AB7A 88                      ;
    BNE      LAB7A                     ; 0x16b8b $AB7B D0 FD                   ;
    LDY      #$4A                      ; 0x16b8d $AB7D A0 4A                   ;;Y = #$4a 0100_1010
LAB7F:                                                                          ;
    DEY                                ; 0x16b8f $AB7F 88                      ;
    BNE      LAB7F                     ; 0x16b90 $AB80 D0 FD                   ;
    LDA      $FF                       ; 0x16b92 $AB82 A5 FF                   ;; Sprite Bank ?
    AND      #$FC                      ; 0x16b94 $AB84 29 FC                   ;;Keep Bits:1111_1100
    ORA      $36                       ; 0x16b96 $AB86 05 36                   ;; Sword Projectile Y On Screen
    STA      $FF                       ; 0x16b98 $AB88 85 FF                   ;; Sprite Bank ?
    STA      $2000                     ; 0x16b9a $AB8A 8D 00 20                ;
    LDA      $27                       ; 0x16b9d $AB8D A5 27                   ;
    LDY      $28                       ; 0x16b9f $AB8F A4 28                   ;
    STA      $2006                     ; 0x16ba1 $AB91 8D 06 20                ;
    STY      $2006                     ; 0x16ba4 $AB94 8C 06 20                ;
.byt    $AD                            ; 0x16ba7 $AB97 AD                      ;
LAB98:                                                                          ;
.byt    $07                            ; 0x16ba8 $AB98 07                      ;
    JSR      L07AD                     ; 0x16ba9 $AB99 20 AD 07                ;; * related to Raft Animation *
    JSR      L02AD                     ; 0x16bac $AB9C 20 AD 02                ;
    JSR      L9520                     ; 0x16baf $AB9F 20 20 95                ;
.byt    $A7                            ; 0x16bb2 $ABA2 A7                      ;
    LDA      $0726                     ; 0x16bb3 $ABA3 AD 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    BNE      LAC06                     ; 0x16bb6 $ABA6 D0 5E                   ;
    LDA      $0504                     ; 0x16bb8 $ABA8 AD 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
    BNE      bank5_code_ABF7           ; 0x16bbb $ABAB D0 4A                   ;
    LDA      $3F                       ; 0x16bbd $ABAD A5 3F                   ;
    BNE      LABE5                     ; 0x16bbf $ABAF D0 34                   ;
    LDA      $12                       ; 0x16bc1 $ABB1 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x16bc3 $ABB3 29 03                   ;;Keep Bits:0000_0011
    BNE      LAC06                     ; 0x16bc5 $ABB5 D0 4F                   ;
    INC      $FC                       ; 0x16bc7 $ABB7 E6 FC                   ;
    LDA      $FC                       ; 0x16bc9 $ABB9 A5 FC                   ;
    CMP      #$F0                      ; 0x16bcb $ABBB C9 F0                   ;
    BNE      LABCB                     ; 0x16bcd $ABBD D0 0C                   ;
    LDA      #$00                      ; 0x16bcf $ABBF A9 00                   ;;A = #$00 0000_0000
    STA      $FC                       ; 0x16bd1 $ABC1 85 FC                   ;
    LDA      $0747                     ; 0x16bd3 $ABC3 AD 47 07                ;
    EOR      #$02                      ; 0x16bd6 $ABC6 49 02                   ;;Flip Bits:0000_0010
    STA      $0747                     ; 0x16bd8 $ABC8 8D 47 07                ;
LABCB:                                                                          ;
    LDA      $0761                     ; 0x16bdb $ABCB AD 61 07                ;
    BNE      LABE5                     ; 0x16bde $ABCE D0 15                   ;
    LDA      $31                       ; 0x16be0 $ABD0 A5 31                   ;
    BNE      LABDF                     ; 0x16be2 $ABD2 D0 0B                   ;
    LDA      $FC                       ; 0x16be4 $ABD4 A5 FC                   ;
    CMP      #$60                      ; 0x16be6 $ABD6 C9 60                   ;
    BNE      LABDF                     ; 0x16be8 $ABD8 D0 05                   ;
    LDA      #$05                      ; 0x16bea $ABDA A9 05                   ;;A = #$05 0000_0101
    STA      $0761                     ; 0x16bec $ABDC 8D 61 07                ;
LABDF:                                                                          ;
    LDA      $FC                       ; 0x16bef $ABDF A5 FC                   ;
    AND      #$07                      ; 0x16bf1 $ABE1 29 07                   ;;Keep Bits:0000_0111
    BNE      LAC06                     ; 0x16bf3 $ABE3 D0 21                   ;
LABE5:                                                                          ;
    LDA      $0761                     ; 0x16bf5 $ABE5 AD 61 07                ;
.byt    $20                            ; 0x16bf8 $ABE8 20                      ;
LABE9:                                                                          ;
    STA      $D3                       ; 0x16bf9 $ABE9 85 D3                   ;
    AND      ($AC),y                   ; 0x16bfb $ABEB 31 AC                   ;
.byt    $73                            ; 0x16bfd $ABED 73                      ;
    LDY      LACA8                     ; 0x16bfe $ABEE AC A8 AC                ;
.byt    $FA                            ; 0x16c01 $ABF1 FA                      ;
    LDY      bank5_code_AD7C           ; 0x16c02 $ABF2 AC 7C AD                ;
    ORA      $AE,x                     ; 0x16c05 $ABF5 15 AE                   ;
bank5_code_ABF7:                                                                ;
    JSR      LAC07                     ; 0x16c07 $ABF7 20 07 AC                ;
    LDA      $33                       ; 0x16c0a $ABFA A5 33                   ;
    BEQ      LABE5                     ; 0x16c0c $ABFC F0 E7                   ;
    LDA      $0761                     ; 0x16c0e $ABFE AD 61 07                ;
    BEQ      LAC06                     ; 0x16c11 $AC01 F0 03                   ;
    JMP      LABE5                     ; 0x16c13 $AC03 4C E5 AB                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAC06:                                                                          ;
    RTS                                ; 0x16c16 $AC06 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAC07:                                                                          ;
    LDA      $12                       ; 0x16c17 $AC07 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x16c19 $AC09 29 03                   ;;Keep Bits:0000_0011
    BNE      LAC10                     ; 0x16c1b $AC0B D0 03                   ;
    DEC      $0504                     ; 0x16c1d $AC0D CE 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
LAC10:                                                                          ;
    RTS                                ; 0x16c20 $AC10 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_AC11:                                                               ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x16c21 $AC11 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x16c29 $AC19 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x16c31 $AC21 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4    ; 0x16c39 $AC29 F4 F4 F4 F4 F4 F4 F4    ;
; ---------------------------------------------------------------------------- ;
bank5_code_AC30:                                                                ;
    SBC      LFCA5,x                   ; 0x16c40 $AC30 FD A5 FC                ;
    AND      #$0F                      ; 0x16c43 $AC33 29 0F                   ;;Keep Bits:0000_1111
    BEQ      LAC3D                     ; 0x16c45 $AC35 F0 06                   ;
    LDA      #$03                      ; 0x16c47 $AC37 A9 03                   ;;A = #$03 0000_0011
    STA      $0761                     ; 0x16c49 $AC39 8D 61 07                ;
    RTS                                ; 0x16c4c $AC3C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAC3D:                                                                          ;
    LDA      $2B                       ; 0x16c4d $AC3D A5 2B                   ;
    STA      L0302                     ; 0x16c4f $AC3F 8D 02 03                ;; Used when writing text to screen
    LDA      $2C                       ; 0x16c52 $AC42 A5 2C                   ;
    STA      $0303                     ; 0x16c54 $AC44 8D 03 03                ;; Letter position when writing to screen
    JSR      LAEC1                     ; 0x16c57 $AC47 20 C1 AE                ;
    LDA      $2B                       ; 0x16c5a $AC4A A5 2B                   ;
    STA      $0325                     ; 0x16c5c $AC4C 8D 25 03                ;
    LDA      $2C                       ; 0x16c5f $AC4F A5 2C                   ;
    STA      $0326                     ; 0x16c61 $AC51 8D 26 03                ;
    LDA      #$20                      ; 0x16c64 $AC54 A9 20                   ;;A = #$20 0010_0000
    STA      $0304                     ; 0x16c66 $AC56 8D 04 03                ;; Text memory offset?
    STA      $0327                     ; 0x16c69 $AC59 8D 27 03                ;
    LDY      #$1F                      ; 0x16c6c $AC5C A0 1F                   ;;Y = #$1f 0001_1111
LAC5E:                                                                          ;
    LDA      bank5_table_AC11,y        ; 0x16c6e $AC5E B9 11 AC                ;
    STA      $0305,y                   ; 0x16c71 $AC61 99 05 03                ;
    STA      $0328,y                   ; 0x16c74 $AC64 99 28 03                ;
    DEY                                ; 0x16c77 $AC67 88                      ;
    BPL      LAC5E                     ; 0x16c78 $AC68 10 F4                   ;
    LDA      #$FF                      ; 0x16c7a $AC6A A9 FF                   ;;A = #$ff 1111_1111
    STA      $0348                     ; 0x16c7c $AC6C 8D 48 03                ;
    INC      $0761                     ; 0x16c7f $AC6F EE 61 07                ;
    RTS                                ; 0x16c82 $AC72 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDX      $33                       ; 0x16c83 $AC73 A6 33                   ;
    LDA      LAAE5,x                   ; 0x16c85 $AC75 BD E5 AA                ;
    STA      L0000                     ; 0x16c88 $AC78 85 00                   ;
    LDA      LAAF4,x                   ; 0x16c8a $AC7A BD F4 AA                ;
    STA      $01                       ; 0x16c8d $AC7D 85 01                   ;
    LDY      #$1D                      ; 0x16c8f $AC7F A0 1D                   ;;Y = #$1d 0001_1101
    LDA      $2B                       ; 0x16c91 $AC81 A5 2B                   ;
    STA      L0302                     ; 0x16c93 $AC83 8D 02 03                ;; Used when writing text to screen
    LDA      $2C                       ; 0x16c96 $AC86 A5 2C                   ;
    CLC                                ; 0x16c98 $AC88 18                      ;
    ADC      #$03                      ; 0x16c99 $AC89 69 03                   ;
    STA      $0303                     ; 0x16c9b $AC8B 8D 03 03                ;; Letter position when writing to screen
    STY      $0304                     ; 0x16c9e $AC8E 8C 04 03                ;; Text memory offset?
    LDA      #$FF                      ; 0x16ca1 $AC91 A9 FF                   ;;A = #$ff 1111_1111
    STA      $0305,y                   ; 0x16ca3 $AC93 99 05 03                ;
    DEY                                ; 0x16ca6 $AC96 88                      ;
LAC97:                                                                          ;
    LDA      (L0000),y                 ; 0x16ca7 $AC97 B1 00                   ;
    STA      $0305,y                   ; 0x16ca9 $AC99 99 05 03                ;
    DEY                                ; 0x16cac $AC9C 88                      ;
    BPL      LAC97                     ; 0x16cad $AC9D 10 F8                   ;
    JSR      LAEC1                     ; 0x16caf $AC9F 20 C1 AE                ;
    INC      $33                       ; 0x16cb2 $ACA2 E6 33                   ;
    INC      $0761                     ; 0x16cb4 $ACA4 EE 61 07                ;
    RTS                                ; 0x16cb7 $ACA7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LACA8:                                                                          ;
    LDA      $33                       ; 0x16cb8 $ACA8 A5 33                   ;
    AND      #$01                      ; 0x16cba $ACAA 29 01                   ;;Keep Bits:0000_0001
    BEQ      LACF6                     ; 0x16cbc $ACAC F0 48                   ;
    LDA      $33                       ; 0x16cbe $ACAE A5 33                   ;
    CMP      #$0F                      ; 0x16cc0 $ACB0 C9 0F                   ;
    BNE      LACB8                     ; 0x16cc2 $ACB2 D0 04                   ;
    LDA      #$00                      ; 0x16cc4 $ACB4 A9 00                   ;;A = #$00 0000_0000
    STA      $33                       ; 0x16cc6 $ACB6 85 33                   ;
LACB8:                                                                          ;
    LDX      $32                       ; 0x16cc8 $ACB8 A6 32                   ;
    LDA      LAB13,x                   ; 0x16cca $ACBA BD 13 AB                ;
    STA      $02                       ; 0x16ccd $ACBD 85 02                   ;
    LDA      LAB1B,x                   ; 0x16ccf $ACBF BD 1B AB                ;
    STA      $03                       ; 0x16cd2 $ACC2 85 03                   ;
    LDY      #$08                      ; 0x16cd4 $ACC4 A0 08                   ;;Y = #$08 0000_1000
    LDA      $2D                       ; 0x16cd6 $ACC6 A5 2D                   ;
    STA      L0302                     ; 0x16cd8 $ACC8 8D 02 03                ;; Used when writing text to screen
    LDA      $2E                       ; 0x16cdb $ACCB A5 2E                   ;
    STA      $0303                     ; 0x16cdd $ACCD 8D 03 03                ;; Letter position when writing to screen
    STY      $0304                     ; 0x16ce0 $ACD0 8C 04 03                ;; Text memory offset?
    LDA      #$FF                      ; 0x16ce3 $ACD3 A9 FF                   ;;A = #$ff 1111_1111
    STA      $0305,y                   ; 0x16ce5 $ACD5 99 05 03                ;
    DEY                                ; 0x16ce8 $ACD8 88                      ;
LACD9:                                                                          ;
    LDA      ($02),y                   ; 0x16ce9 $ACD9 B1 02                   ;
    STA      $0305,y                   ; 0x16ceb $ACDB 99 05 03                ;
    DEY                                ; 0x16cee $ACDE 88                      ;
    BPL      LACD9                     ; 0x16cef $ACDF 10 F8                   ;
    LDA      $2E                       ; 0x16cf1 $ACE1 A5 2E                   ;
    CLC                                ; 0x16cf3 $ACE3 18                      ;
    ADC      #$08                      ; 0x16cf4 $ACE4 69 08                   ;
    STA      $2E                       ; 0x16cf6 $ACE6 85 2E                   ;
    BNE      LACEE                     ; 0x16cf8 $ACE8 D0 04                   ;
    LDA      #$C0                      ; 0x16cfa $ACEA A9 C0                   ;;A = #$c0 1100_0000
    STA      $2E                       ; 0x16cfc $ACEC 85 2E                   ;
LACEE:                                                                          ;
    INC      $32                       ; 0x16cfe $ACEE E6 32                   ;
    LDA      $32                       ; 0x16d00 $ACF0 A5 32                   ;
    AND      #$07                      ; 0x16d02 $ACF2 29 07                   ;;Keep Bits:0000_0111
    STA      $32                       ; 0x16d04 $ACF4 85 32                   ;
LACF6:                                                                          ;
    INC      $0761                     ; 0x16d06 $ACF6 EE 61 07                ;
    RTS                                ; 0x16d09 $ACF9 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LACFA:                                                                          ;
    LDX      $31                       ; 0x16d0a $ACFA A6 31                   ;
    LDA      LAB23,x                   ; 0x16d0c $ACFC BD 23 AB                ;
    STA      L0000                     ; 0x16d0f $ACFF 85 00                   ;
    LDA      LAB41,x                   ; 0x16d11 $AD01 BD 41 AB                ;
    STA      $01                       ; 0x16d14 $AD04 85 01                   ;
    LDY      #$20                      ; 0x16d16 $AD06 A0 20                   ;;Y = #$20 0010_0000
    LDA      $29                       ; 0x16d18 $AD08 A5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    STA      L0302                     ; 0x16d1a $AD0A 8D 02 03                ;; Used when writing text to screen
    LDA      $2A                       ; 0x16d1d $AD0D A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    STA      $0303                     ; 0x16d1f $AD0F 8D 03 03                ;; Letter position when writing to screen
    STY      $0304                     ; 0x16d22 $AD12 8C 04 03                ;; Text memory offset?
    LDA      #$FF                      ; 0x16d25 $AD15 A9 FF                   ;;A = #$ff 1111_1111
    STA      $0305,y                   ; 0x16d27 $AD17 99 05 03                ;
    DEY                                ; 0x16d2a $AD1A 88                      ;
LAD1B:                                                                          ;
    LDA      (L0000),y                 ; 0x16d2b $AD1B B1 00                   ;
    STA      $0305,y                   ; 0x16d2d $AD1D 99 05 03                ;
    DEY                                ; 0x16d30 $AD20 88                      ;
    BPL      LAD1B                     ; 0x16d31 $AD21 10 F8                   ;
    LDA      $2A                       ; 0x16d33 $AD23 A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    CLC                                ; 0x16d35 $AD25 18                      ;
    ADC      #$20                      ; 0x16d36 $AD26 69 20                   ;
    STA      $2A                       ; 0x16d38 $AD28 85 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    LDA      $29                       ; 0x16d3a $AD2A A5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    ADC      #$00                      ; 0x16d3c $AD2C 69 00                   ;
    STA      $29                       ; 0x16d3e $AD2E 85 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    INC      $31                       ; 0x16d40 $AD30 E6 31                   ;
    LDA      $31                       ; 0x16d42 $AD32 A5 31                   ;
    CMP      #$10                      ; 0x16d44 $AD34 C9 10                   ;
    BEQ      LAD40                     ; 0x16d46 $AD36 F0 08                   ;
    CMP      #$1E                      ; 0x16d48 $AD38 C9 1E                   ;
    BNE      LAD5E                     ; 0x16d4a $AD3A D0 22                   ;
    LDA      #$00                      ; 0x16d4c $AD3C A9 00                   ;;A = #$00 0000_0000
    STA      $31                       ; 0x16d4e $AD3E 85 31                   ;
LAD40:                                                                          ;
    LDA      $2A                       ; 0x16d50 $AD40 A5 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    CMP      #$C0                      ; 0x16d52 $AD42 C9 C0                   ;
    BNE      LAD5A                     ; 0x16d54 $AD44 D0 14                   ;
    LDA      $29                       ; 0x16d56 $AD46 A5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    AND      #$23                      ; 0x16d58 $AD48 29 23                   ;;Keep Bits:0010_0011
    CMP      #$23                      ; 0x16d5a $AD4A C9 23                   ;
    BNE      LAD5A                     ; 0x16d5c $AD4C D0 0C                   ;
    LDA      #$00                      ; 0x16d5e $AD4E A9 00                   ;;A = #$00 0000_0000
    STA      $2A                       ; 0x16d60 $AD50 85 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    LDA      $29                       ; 0x16d62 $AD52 A5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    AND      #$28                      ; 0x16d64 $AD54 29 28                   ;;Keep Bits:0010_1000
    EOR      #$08                      ; 0x16d66 $AD56 49 08                   ;;Flip Bits:0000_1000
    STA      $29                       ; 0x16d68 $AD58 85 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
LAD5A:                                                                          ;
    INC      $0761                     ; 0x16d6a $AD5A EE 61 07                ;
    RTS                                ; 0x16d6d $AD5D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAD5E:                                                                          ;
    LDA      #$00                      ; 0x16d6e $AD5E A9 00                   ;;A = #$00 0000_0000
    STA      $0761                     ; 0x16d70 $AD60 8D 61 07                ;
    RTS                                ; 0x16d73 $AD63 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_AD64:                                                               ;
.byt    $00,$00,$00,$00,$00,$00,$00,$CC; 0x16d74 $AD64 00 00 00 00 00 00 00 CC ;
.byt    $00,$00,$00,$00,$00,$00,$00,$CC; 0x16d7c $AD6C 00 00 00 00 00 00 00 CC ;
.byt    $00,$00,$00,$00,$00,$00,$00,$CC; 0x16d84 $AD74 00 00 00 00 00 00 00 CC ;
; ---------------------------------------------------------------------------- ;
bank5_code_AD7C:                                                                ;
    LDA      #$14                      ; 0x16d8c $AD7C A9 14                   ;;A = #$14 0001_0100
    STA      $02                       ; 0x16d8e $AD7E 85 02                   ;
    LDA      #$B2                      ; 0x16d90 $AD80 A9 B2                   ;;A = #$b2 1011_0010
    STA      $03                       ; 0x16d92 $AD82 85 03                   ;
    LDY      #$18                      ; 0x16d94 $AD84 A0 18                   ;;Y = #$18 0001_1000
    LDA      $2F                       ; 0x16d96 $AD86 A5 2F                   ;
    STA      L0302                     ; 0x16d98 $AD88 8D 02 03                ;; Used when writing text to screen
    STA      $031D                     ; 0x16d9b $AD8B 8D 1D 03                ;
    LDA      $30                       ; 0x16d9e $AD8E A5 30                   ;;projectile y		30,31,32,33,34,35	30,y
    STA      $0303                     ; 0x16da0 $AD90 8D 03 03                ;; Letter position when writing to screen
    EOR      #$20                      ; 0x16da3 $AD93 49 20                   ;;Flip Bits:0010_0000
    STA      $031E                     ; 0x16da5 $AD95 8D 1E 03                ;
    STY      $0304                     ; 0x16da8 $AD98 8C 04 03                ;; Text memory offset?
    STY      $031F                     ; 0x16dab $AD9B 8C 1F 03                ;
    LDA      #$FF                      ; 0x16dae $AD9E A9 FF                   ;;A = #$ff 1111_1111
    STA      $0320,y                   ; 0x16db0 $ADA0 99 20 03                ;
    DEY                                ; 0x16db3 $ADA3 88                      ;
LADA4:                                                                          ;
    LDA      ($02),y                   ; 0x16db4 $ADA4 B1 02                   ;
    STA      $0305,y                   ; 0x16db6 $ADA6 99 05 03                ;
    LDA      bank5_table_AD64,y        ; 0x16db9 $ADA9 B9 64 AD                ;
    STA      $0320,y                   ; 0x16dbc $ADAC 99 20 03                ;
    DEY                                ; 0x16dbf $ADAF 88                      ;
    BPL      LADA4                     ; 0x16dc0 $ADB0 10 F2                   ;
    LDA      $30                       ; 0x16dc2 $ADB2 A5 30                   ;;projectile y		30,31,32,33,34,35	30,y
    CLC                                ; 0x16dc4 $ADB4 18                      ;
    ADC      #$20                      ; 0x16dc5 $ADB5 69 20                   ;
    STA      $30                       ; 0x16dc7 $ADB7 85 30                   ;;projectile y		30,31,32,33,34,35	30,y
    BNE      LADC5                     ; 0x16dc9 $ADB9 D0 0A                   ;
    LDA      $2F                       ; 0x16dcb $ADBB A5 2F                   ;
    EOR      #$08                      ; 0x16dcd $ADBD 49 08                   ;;Flip Bits:0000_1000
    STA      $2F                       ; 0x16dcf $ADBF 85 2F                   ;
    LDA      #$C0                      ; 0x16dd1 $ADC1 A9 C0                   ;;A = #$c0 1100_0000
    STA      $30                       ; 0x16dd3 $ADC3 85 30                   ;;projectile y		30,31,32,33,34,35	30,y
LADC5:                                                                          ;
    INC      $27                       ; 0x16dd5 $ADC5 E6 27                   ;
    INC      $27                       ; 0x16dd7 $ADC7 E6 27                   ;
    LDA      $27                       ; 0x16dd9 $ADC9 A5 27                   ;
    AND      #$04                      ; 0x16ddb $ADCB 29 04                   ;;Keep Bits:0000_0100
    BEQ      LADDD                     ; 0x16ddd $ADCD F0 0E                   ;
    LDA      $36                       ; 0x16ddf $ADCF A5 36                   ;; Sword Projectile Y On Screen
    EOR      #$02                      ; 0x16de1 $ADD1 49 02                   ;;Flip Bits:0000_0010
    STA      $36                       ; 0x16de3 $ADD3 85 36                   ;; Sword Projectile Y On Screen
    LDA      $27                       ; 0x16de5 $ADD5 A5 27                   ;
    AND      #$28                      ; 0x16de7 $ADD7 29 28                   ;;Keep Bits:0010_1000
    EOR      #$08                      ; 0x16de9 $ADD9 49 08                   ;;Flip Bits:0000_1000
    STA      $27                       ; 0x16deb $ADDB 85 27                   ;
LADDD:                                                                          ;
    JMP      LAD5E                     ; 0x16ded $ADDD 4C 5E AD                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_code_ADE0:                                                                ;
    LDA      #$2A                      ; 0x16df0 $ADE0 A9 2A                   ;;A = #$2a 0010_1010
    STA      $27                       ; 0x16df2 $ADE2 85 27                   ;
    LDA      #$20                      ; 0x16df4 $ADE4 A9 20                   ;;A = #$20 0010_0000
    STA      $29                       ; 0x16df6 $ADE6 85 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    LDA      #$28                      ; 0x16df8 $ADE8 A9 28                   ;;A = #$28 0010_1000
    STA      $2B                       ; 0x16dfa $ADEA 85 2B                   ;
    LDA      #$2B                      ; 0x16dfc $ADEC A9 2B                   ;;A = #$2b 0010_1011
    STA      $2D                       ; 0x16dfe $ADEE 85 2D                   ;
    LDA      #$23                      ; 0x16e00 $ADF0 A9 23                   ;;A = #$23 0010_0011
    STA      $2F                       ; 0x16e02 $ADF2 85 2F                   ;
    LDA      #$00                      ; 0x16e04 $ADF4 A9 00                   ;;A = #$00 0000_0000
    STA      $28                       ; 0x16e06 $ADF6 85 28                   ;
    STA      $2A                       ; 0x16e08 $ADF8 85 2A                   ;;monster y	2a,2b,2c,2d,2e,2f
    STA      $2C                       ; 0x16e0a $ADFA 85 2C                   ;
    STA      $31                       ; 0x16e0c $ADFC 85 31                   ;
    STA      $32                       ; 0x16e0e $ADFE 85 32                   ;
    STA      $33                       ; 0x16e10 $AE00 85 33                   ;
    STA      $0761                     ; 0x16e12 $AE02 8D 61 07                ;
    STA      $0747                     ; 0x16e15 $AE05 8D 47 07                ;
    STA      $FC                       ; 0x16e18 $AE08 85 FC                   ;
    LDA      #$C0                      ; 0x16e1a $AE0A A9 C0                   ;;A = #$c0 1100_0000
    STA      $2E                       ; 0x16e1c $AE0C 85 2E                   ;
    STA      $30                       ; 0x16e1e $AE0E 85 30                   ;;projectile y		30,31,32,33,34,35	30,y
    LDA      #$02                      ; 0x16e20 $AE10 A9 02                   ;;A = #$02 0000_0010
    STA      $36                       ; 0x16e22 $AE12 85 36                   ;; Sword Projectile Y On Screen
LAE14:                                                                          ;
    RTS                                ; 0x16e24 $AE14 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      $0747                     ; 0x16e25 $AE15 AD 47 07                ;
    BNE      LAE4A                     ; 0x16e28 $AE18 D0 30                   ;
    LDA      $0504                     ; 0x16e2a $AE1A AD 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
    BEQ      LAE30                     ; 0x16e2d $AE1D F0 11                   ;
    JSR      LAC07                     ; 0x16e2f $AE1F 20 07 AC                ;
    LDA      #$01                      ; 0x16e32 $AE22 A9 01                   ;;A = #$01 0000_0001
    STA      $3F                       ; 0x16e34 $AE24 85 3F                   ;
    LDA      $E8                       ; 0x16e36 $AE26 A5 E8                   ;; Music Note Pitch
    CMP      #$02                      ; 0x16e38 $AE28 C9 02                   ;
    BNE      LAE49                     ; 0x16e3a $AE2A D0 1D                   ;
    LDA      #$00                      ; 0x16e3c $AE2C A9 00                   ;;A = #$00 0000_0000
    STA      $3F                       ; 0x16e3e $AE2E 85 3F                   ;
LAE30:                                                                          ;
    LDA      $31                       ; 0x16e40 $AE30 A5 31                   ;
    BNE      LAE4A                     ; 0x16e42 $AE32 D0 16                   ;
    LDA      $35                       ; 0x16e44 $AE34 A5 35                   ;
    BNE      LAE4A                     ; 0x16e46 $AE36 D0 12                   ;
    LDA      #$00                      ; 0x16e48 $AE38 A9 00                   ;;A = #$00 0000_0000
    STA      $0761                     ; 0x16e4a $AE3A 8D 61 07                ;
    STA      $35                       ; 0x16e4d $AE3D 85 35                   ;
    STA      $34                       ; 0x16e4f $AE3F 85 34                   ;
    JSR      bank5_code21              ; 0x16e51 $AE41 20 C1 A8                ;
    LDA      #$03                      ; 0x16e54 $AE44 A9 03                   ;;A = #$03 0000_0011
    STA      $0736                     ; 0x16e56 $AE46 8D 36 07                ;; Game Mode ; screen intro type
LAE49:                                                                          ;
    RTS                                ; 0x16e59 $AE49 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAE4A:                                                                          ;
    LDA      $35                       ; 0x16e5a $AE4A A5 35                   ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x16e5c $AE4C 20 85 D3;
    EOR      $AE,x                     ; 0x16e5f $AE4F 55 AE                   ;
.byt    $02                            ; 0x16e61 $AE51 02                      ;
.byt    $AF                            ; 0x16e62 $AE52 AF                      ;
    ORA      LA5AF,y                   ; 0x16e63 $AE53 19 AF A5                ;
.byt    $FC                            ; 0x16e66 $AE56 FC                      ;
    AND      #$07                      ; 0x16e67 $AE57 29 07                   ;;Keep Bits:0000_0111
    BNE      LAE14                     ; 0x16e69 $AE59 D0 B9                   ;
    LDA      $FC                       ; 0x16e6b $AE5B A5 FC                   ;
    CMP      #$F0                      ; 0x16e6d $AE5D C9 F0                   ;
    BNE      LAE72                     ; 0x16e6f $AE5F D0 11                   ;
    LDA      #$00                      ; 0x16e71 $AE61 A9 00                   ;;A = #$00 0000_0000
    STA      $FC                       ; 0x16e73 $AE63 85 FC                   ;
    LDA      $0747                     ; 0x16e75 $AE65 AD 47 07                ;
    EOR      #$02                      ; 0x16e78 $AE68 49 02                   ;;Flip Bits:0000_0010
    STA      $0747                     ; 0x16e7a $AE6A 8D 47 07                ;
    LDA      #$90                      ; 0x16e7d $AE6D A9 90                   ;;A = #$90 1001_0000
    STA      $0504                     ; 0x16e7f $AE6F 8D 04 05                ;; Timer for Link graphic to change when walking (OW)	;Timer for Sword in middle swing (SS)
LAE72:                                                                          ;
    LDA      $34                       ; 0x16e82 $AE72 A5 34                   ;
    ASL                                ; 0x16e84 $AE74 0A                      ;
    TAX                                ; 0x16e85 $AE75 AA                      ;
    LDA      LAB5F,x                   ; 0x16e86 $AE76 BD 5F AB                ;
    STA      L0000                     ; 0x16e89 $AE79 85 00                   ;
    LDA      LAB60,x                   ; 0x16e8b $AE7B BD 60 AB                ;
    STA      $01                       ; 0x16e8e $AE7E 85 01                   ;
    LDA      $2B                       ; 0x16e90 $AE80 A5 2B                   ;
    STA      L0302                     ; 0x16e92 $AE82 8D 02 03                ;; Used when writing text to screen
    LDA      $2C                       ; 0x16e95 $AE85 A5 2C                   ;
    STA      $0303                     ; 0x16e97 $AE87 8D 03 03                ;; Letter position when writing to screen
    LDA      #$20                      ; 0x16e9a $AE8A A9 20                   ;;A = #$20 0010_0000
    STA      $0304                     ; 0x16e9c $AE8C 8D 04 03                ;; Text memory offset?
    LDA      #$FF                      ; 0x16e9f $AE8F A9 FF                   ;;A = #$ff 1111_1111
    LDY      #$1F                      ; 0x16ea1 $AE91 A0 1F                   ;;Y = #$1f 0001_1111
    STA      $0306,y                   ; 0x16ea3 $AE93 99 06 03                ;
LAE96:                                                                          ;
    LDA      bank5_table_AC11,y        ; 0x16ea6 $AE96 B9 11 AC                ;
    STA      $0305,y                   ; 0x16ea9 $AE99 99 05 03                ;
    DEY                                ; 0x16eac $AE9C 88                      ;
    BPL      LAE96                     ; 0x16ead $AE9D 10 F7                   ;
    LDA      $34                       ; 0x16eaf $AE9F A5 34                   ;
    CMP      #$07                      ; 0x16eb1 $AEA1 C9 07                   ;
    BEQ      LAEBB                     ; 0x16eb3 $AEA3 F0 16                   ;
    LDY      #$00                      ; 0x16eb5 $AEA5 A0 00                   ;;Y = #$00 0000_0000
    LDA      (L0000),y                 ; 0x16eb7 $AEA7 B1 00                   ;
    CMP      $2B                       ; 0x16eb9 $AEA9 C5 2B                   ;
    BNE      LAEBB                     ; 0x16ebb $AEAB D0 0E                   ;
    INY                                ; 0x16ebd $AEAD C8                      ;
    LDA      (L0000),y                 ; 0x16ebe $AEAE B1 00                   ;
    AND      #$F0                      ; 0x16ec0 $AEB0 29 F0                   ;;Keep Bits:1111_0000
    CMP      $2C                       ; 0x16ec2 $AEB2 C5 2C                   ;
    BNE      LAEBB                     ; 0x16ec4 $AEB4 D0 05                   ;
    JSR      LAEEE                     ; 0x16ec6 $AEB6 20 EE AE                ;
    INC      $34                       ; 0x16ec9 $AEB9 E6 34                   ;
LAEBB:                                                                          ;
    JSR      LAEC1                     ; 0x16ecb $AEBB 20 C1 AE                ;
    INC      $35                       ; 0x16ece $AEBE E6 35                   ;
    RTS                                ; 0x16ed0 $AEC0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAEC1:                                                                          ;
    LDA      $2C                       ; 0x16ed1 $AEC1 A5 2C                   ;
    CLC                                ; 0x16ed3 $AEC3 18                      ;
    ADC      #$20                      ; 0x16ed4 $AEC4 69 20                   ;
    STA      $2C                       ; 0x16ed6 $AEC6 85 2C                   ;
    LDA      $2B                       ; 0x16ed8 $AEC8 A5 2B                   ;
    ADC      #$00                      ; 0x16eda $AECA 69 00                   ;
    STA      $2B                       ; 0x16edc $AECC 85 2B                   ;
    AND      #$03                      ; 0x16ede $AECE 29 03                   ;;Keep Bits:0000_0011
    CMP      #$03                      ; 0x16ee0 $AED0 C9 03                   ;
    BNE      LAEE6                     ; 0x16ee2 $AED2 D0 12                   ;
    LDA      $2C                       ; 0x16ee4 $AED4 A5 2C                   ;
    CMP      #$C0                      ; 0x16ee6 $AED6 C9 C0                   ;
    BNE      LAEE6                     ; 0x16ee8 $AED8 D0 0C                   ;
    LDA      #$00                      ; 0x16eea $AEDA A9 00                   ;;A = #$00 0000_0000
    STA      $2C                       ; 0x16eec $AEDC 85 2C                   ;
    LDA      $2B                       ; 0x16eee $AEDE A5 2B                   ;
    AND      #$28                      ; 0x16ef0 $AEE0 29 28                   ;;Keep Bits:0010_1000
    EOR      #$08                      ; 0x16ef2 $AEE2 49 08                   ;;Flip Bits:0000_1000
    STA      $2B                       ; 0x16ef4 $AEE4 85 2B                   ;
LAEE6:                                                                          ;
    RTS                                ; 0x16ef6 $AEE6 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAEE7:                                                                          ;
.byt    $1B                            ; 0x16ef7 $AEE7 1B                      ;
    ROL      $1C                       ; 0x16ef8 $AEE8 26 1C                   ;
    ORA      $14,x                     ; 0x16efa $AEEA 15 14                   ;
    AND      $1A                       ; 0x16efc $AEEC 25 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
LAEEE:                                                                          ;
    LDX      $34                       ; 0x16efe $AEEE A6 34                   ;
    LDY      LAEE7,x                   ; 0x16f00 $AEF0 BC E7 AE                ;
    LDA      #$FF                      ; 0x16f03 $AEF3 A9 FF                   ;;A = #$ff 1111_1111
    STA      $0325,y                   ; 0x16f05 $AEF5 99 25 03                ;
    DEY                                ; 0x16f08 $AEF8 88                      ;
LAEF9:                                                                          ;
    LDA      (L0000),y                 ; 0x16f09 $AEF9 B1 00                   ;
    STA      $0325,y                   ; 0x16f0b $AEFB 99 25 03                ;
    DEY                                ; 0x16f0e $AEFE 88                      ;
    BPL      LAEF9                     ; 0x16f0f $AEFF 10 F8                   ;
    RTS                                ; 0x16f11 $AF01 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    JSR      LACFA                     ; 0x16f12 $AF02 20 FA AC                ;
    LDA      $0761                     ; 0x16f15 $AF05 AD 61 07                ;
    BEQ      LAF0F                     ; 0x16f18 $AF08 F0 05                   ;
    INC      $35                       ; 0x16f1a $AF0A E6 35                   ;
    JMP      LAF13                     ; 0x16f1c $AF0C 4C 13 AF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAF0F:                                                                          ;
    LDA      #$00                      ; 0x16f1f $AF0F A9 00                   ;;A = #$00 0000_0000
    STA      $35                       ; 0x16f21 $AF11 85 35                   ;
LAF13:                                                                          ;
    LDA      #$05                      ; 0x16f23 $AF13 A9 05                   ;;A = #$05 0000_0101
    STA      $0761                     ; 0x16f25 $AF15 8D 61 07                ;
    RTS                                ; 0x16f28 $AF18 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    JSR      bank5_code_AD7C           ; 0x16f29 $AF19 20 7C AD                ;
    JMP      LAF0F                     ; 0x16f2c $AF1C 4C 0F AF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAF1F:                                                                          ;
    LDA      $073D                     ; 0x16f2f $AF1F AD 3D 07                ;; Routine Index
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x16f32 $AF22 20 85 D3;
    ROR      $D2                       ; 0x16f35 $AF25 66 D2                   ;
.byt    $2B                            ; 0x16f37 $AF27 2B                      ;
.byt    $AF                            ; 0x16f38 $AF28 AF                      ;
.byt    $34                            ; 0x16f39 $AF29 34                      ;
.byt    $AF                            ; 0x16f3a $AF2A AF                      ;
    LDA      #$01                      ; 0x16f3b $AF2B A9 01                   ;;A = #$01 0000_0001
    STA      $0725                     ; 0x16f3d $AF2D 8D 25 07                ;; PPU Macro Selector	
    INC      $073D                     ; 0x16f40 $AF30 EE 3D 07                ;; Routine Index
    RTS                                ; 0x16f43 $AF33 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      #$04                      ; 0x16f44 $AF34 A9 04                   ;;A = #$04 0000_0100
    STA      $0725                     ; 0x16f46 $AF36 8D 25 07                ;; PPU Macro Selector	
    INC      $0736                     ; 0x16f49 $AF39 EE 36 07                ;; Game Mode ; screen intro type
    RTS                                ; 0x16f4c $AF3C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table_AF3D_PPU_maybe:                                                     ;
.byt    $3F,$00,$20,$0F,$30,$1C,$15,$0F; 0x16f4d $AF3D 3F 00 20 0F 30 1C 15 0F ;
.byt    $2B,$0F,$00,$0F,$01,$12,$21,$0F; 0x16f55 $AF45 2B 0F 00 0F 01 12 21 0F ;
.byt    $0F,$0A,$12,$0F,$30,$12,$02,$0F; 0x16f5d $AF4D 0F 0A 12 0F 30 12 02 0F ;
.byt    $2B,$0F,$00,$0F,$16,$26,$30,$0F; 0x16f65 $AF55 2B 0F 00 0F 16 26 30 0F ;
.byt    $0F,$19,$21,$FF,$20,$1F,$DE,$FD; 0x16f6d $AF5D 0F 19 21 FF 20 1F DE FD ;
.byt    $28,$1F,$DE,$FD,$22,$6B,$09,$0F; 0x16f75 $AF65 28 1F DE FD 22 6B 09 0F ;
.byt    $10,$11,$12,$13,$14,$15,$16,$17; 0x16f7d $AF6D 10 11 12 13 14 15 16 17 ;
.byt    $22,$7F,$01,$FD,$23,$E0,$08,$00; 0x16f85 $AF75 22 7F 01 FD 23 E0 08 00 ;
.byt    $00,$00,$00,$00,$00,$00,$CC,$22; 0x16f8d $AF7D 00 00 00 00 00 00 CC 22 ;
.byt    $88,$18,$1C,$1E,$20,$22,$24,$26; 0x16f95 $AF85 88 18 1C 1E 20 22 24 26 ;
.byt    $28,$2A,$2C,$2E,$30,$32,$34,$36; 0x16f9d $AF8D 28 2A 2C 2E 30 32 34 36 ;
.byt    $38,$3A,$3C,$F4,$F4,$F4,$F4,$F4; 0x16fa5 $AF95 38 3A 3C F4 F4 F4 F4 F4 ;
.byt    $F4,$FD,$23,$E8,$08,$00,$00,$00; 0x16fad $AF9D F4 FD 23 E8 08 00 00 00 ;
.byt    $00,$00,$00,$00,$CC,$22,$A7,$19; 0x16fb5 $AFA5 00 00 00 00 CC 22 A7 19 ;
.byt    $1B,$1D,$1F,$21,$23,$25,$27,$29; 0x16fbd $AFAD 1B 1D 1F 21 23 25 27 29 ;
.byt    $2B,$2D,$2F,$31,$33,$35,$37,$39; 0x16fc5 $AFB5 2B 2D 2F 31 33 35 37 39 ;
.byt    $3B,$3D,$F4,$F4,$F4,$F4,$F4,$F4; 0x16fcd $AFBD 3B 3D F4 F4 F4 F4 F4 F4 ;
.byt    $FD,$22,$CA,$0E,$3E,$40,$42,$F4; 0x16fd5 $AFC5 FD 22 CA 0E 3E 40 42 F4 ;
.byt    $4B,$4D,$51,$53,$58,$5A,$5F,$61; 0x16fdd $AFCD 4B 4D 51 53 58 5A 5F 61 ;
.byt    $08,$18,$22,$DF,$01,$FD,$22,$EA; 0x16fe5 $AFD5 08 18 22 DF 01 FD 22 EA ;
.byt    $0D,$3F,$41,$43,$F4,$4C,$4E,$52; 0x16fed $AFDD 0D 3F 41 43 F4 4C 4E 52 ;
.byt    $54,$59,$5B,$60,$62,$09,$22,$FF; 0x16ff5 $AFE5 54 59 5B 60 62 09 22 FF ;
.byt    $01,$FD,$23,$09,$17,$44,$46,$48; 0x16ffd $AFED 01 FD 23 09 17 44 46 48 ;
.byt    $4A,$1A,$FD,$4F,$55,$56,$FD,$5C; 0x17005 $AFF5 4A 1A FD 4F 55 56 FD 5C ;
.byt    $63,$65,$0A,$0C,$F4,$F4,$F4,$F4; 0x1700d $AFFD 63 65 0A 0C F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$FD,$23,$F0,$08,$00; 0x17015 $B005 F4 F4 F4 FD 23 F0 08 00 ;
.byt    $00,$00,$00,$00,$00,$00,$CC,$23; 0x1701d $B00D 00 00 00 00 00 00 CC 23 ;
.byt    $29,$17,$45,$47,$49,$49,$67,$47; 0x17025 $B015 29 17 45 47 49 49 67 47 ;
.byt    $50,$47,$57,$5D,$5E,$64,$66,$0B; 0x1702d $B01D 50 47 57 5D 5E 64 66 0B ;
.byt    $0D,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x17035 $B025 0D F4 F4 F4 F4 F4 F4 F4 ;
.byt    $FD,$23,$C7,$01,$CC,$23,$CF,$01; 0x1703d $B02D FD 23 C7 01 CC 23 CF 01 ;
.byt    $CC,$23,$D7,$01,$CC,$23,$DF,$01; 0x17045 $B035 CC 23 D7 01 CC 23 DF 01 ;
.byt    $CC,$23,$E7,$01,$CC,$23,$EF,$01; 0x1704d $B03D CC 23 E7 01 CC 23 EF 01 ;
.byt    $CC,$23,$FF,$01,$CC,$2A,$00,$20; 0x17055 $B045 CC 23 FF 01 CC 2A 00 20 ;
.byt    $68,$68,$68,$68,$68,$68,$68,$68; 0x1705d $B04D 68 68 68 68 68 68 68 68 ;
.byt    $68,$68,$68,$68,$69,$69,$69,$69; 0x17065 $B055 68 68 68 68 69 69 69 69 ;
.byt    $69,$69,$69,$69,$68,$68,$68,$68; 0x1706d $B05D 69 69 69 69 68 68 68 68 ;
.byt    $68,$68,$71,$7A,$78,$75,$7A,$F4; 0x17075 $B065 68 68 71 7A 78 75 7A F4 ;
.byt    $2A,$20,$20,$68,$68,$6A,$6A,$68; 0x1707d $B06D 2A 20 20 68 68 6A 6A 68 ;
.byt    $68,$68,$68,$68,$68,$68,$6A,$6A; 0x17085 $B075 68 68 68 68 68 68 6A 6A ;
.byt    $6A,$6A,$6A,$6A,$6A            ; 0x1708d $B07D 6A 6A 6A 6A 6A          ;
LB082:                                                                          ;
.byt    $6A,$68,$68,$68,$68,$68,$68,$6A; 0x17092 $B082 6A 68 68 68 68 68 68 6A ;
.byt    $77,$76,$79,$78,$F4,$F4,$2A,$40; 0x1709a $B08A 77 76 79 78 F4 F4 2A 40 ;
.byt    $20,$73,$73,$76,$7B,$6A,$68,$68; 0x170a2 $B092 20 73 73 76 7B 6A 68 68 ;
.byt    $68,$68,$68,$6A,$6A,$70,$6F,$6D; 0x170aa $B09A 68 68 68 6A 6A 70 6F 6D ;
.byt    $6D,$6D,$6D,$6D,$6D,$6D,$6E,$70; 0x170b2 $B0A2 6D 6D 6D 6D 6D 6D 6E 70 ;
.byt    $6F,$6D,$6D,$78,$79,$7A,$F4,$F4; 0x170ba $B0AA 6F 6D 6D 78 79 7A F4 F4 ;
.byt    $F4,$2A,$60,$20,$73,$7A,$75,$76; 0x170c2 $B0B2 F4 2A 60 20 73 7A 75 76 ;
.byt    $68,$68,$68,$68,$6A,$6A,$6A,$6A; 0x170ca $B0BA 68 68 68 68 6A 6A 6A 6A ;
.byt    $6D,$6B,$6B,$6B,$6B,$6B,$6B,$6B; 0x170d2 $B0C2 6D 6B 6B 6B 6B 6B 6B 6B ;
.byt    $6B,$6B,$6D,$6B,$6C,$6C,$79,$7A; 0x170da $B0CA 6B 6B 6D 6B 6C 6C 79 7A ;
.byt    $F4,$F4,$F4,$F4,$2A,$80,$20,$73; 0x170e2 $B0D2 F4 F4 F4 F4 2A 80 20 73 ;
.byt    $7A,$77,$78,$68,$6A,$6A,$6A,$6A; 0x170ea $B0DA 7A 77 78 68 6A 6A 6A 6A ;
.byt    $6A,$70,$6D,$6D,$6B,$71,$73,$73; 0x170f2 $B0E2 6A 70 6D 6D 6B 71 73 73 ;
.byt    $73,$75,$73,$75,$73,$73,$73,$76; 0x170fa $B0EA 73 75 73 75 73 73 73 76 ;
.byt    $71,$72,$72,$73,$73,$73,$75,$2A; 0x17102 $B0F2 71 72 72 73 73 73 75 2A ;
.byt    $A0,$20,$73,$77,$76,$77,$6A,$6A; 0x1710a $B0FA A0 20 73 77 76 77 6A 6A ;
.byt    $6A,$6A,$6A,$6A,$6F,$6D,$6C,$6B; 0x17112 $B102 6A 6A 6A 6A 6F 6D 6C 6B ;
.byt    $71,$74,$77,$74,$73,$71,$75,$74; 0x1711a $B10A 71 74 77 74 73 71 75 74 ;
.byt    $75,$76,$72,$75,$71,$75,$75,$72; 0x17122 $B112 75 76 72 75 71 75 75 72 ;
.byt    $72,$75,$2A,$C0,$20,$71,$78,$7A; 0x1712a $B11A 72 75 2A C0 20 71 78 7A ;
.byt    $78,$70,$70,$6F,$6D,$6D,$6D,$6B; 0x17132 $B122 78 70 70 6F 6D 6D 6D 6B ;
.byt    $6B,$6B,$6B,$78,$7A,$79,$79,$F4; 0x1713a $B12A 6B 6B 6B 78 7A 79 79 F4 ;
.byt    $79,$74,$79,$79,$79,$78,$77,$72; 0x17142 $B132 79 74 79 79 79 78 77 72 ;
.byt    $73,$F4,$79,$73,$75,$2A,$E0,$20; 0x1714a $B13A 73 F4 79 73 75 2A E0 20 ;
.byt    $73,$77,$7A,$77,$6D,$6D,$6C,$6B; 0x17152 $B142 73 77 7A 77 6D 6D 6C 6B ;
.byt    $6B,$6B,$6B,$6B,$6B,$6B,$79,$76; 0x1715a $B14A 6B 6B 6B 6B 6B 6B 79 76 ;
.byt    $73,$75,$77,$75,$77,$75,$76,$79; 0x17162 $B152 73 75 77 75 77 75 76 79 ;
.byt    $7A,$78,$77,$75,$78,$78,$75,$78; 0x1716a $B15A 7A 78 77 75 78 78 75 78 ;
.byt    $2B,$00,$20,$73,$78,$77,$78,$6C; 0x17172 $B162 2B 00 20 73 78 77 78 6C ;
.byt    $6B,$6B,$6C,$6B,$6B,$6B,$6B,$6B; 0x1717a $B16A 6B 6B 6C 6B 6B 6B 6B 6B ;
.byt    $6B,$6B,$6C,$74,$77,$72,$77,$76; 0x17182 $B172 6B 6B 6C 74 77 72 77 76 ;
.byt    $F4,$7A,$78,$F4,$79,$7A,$7A,$72; 0x1718a $B17A F4 7A 78 F4 79 7A 7A 72 ;
.byt    $75,$78,$73,$2B,$20,$20,$71,$78; 0x17192 $B182 75 78 73 2B 20 20 71 78 ;
.byt    $7A,$77,$6C,$6C,$6C,$6C,$6C,$6C; 0x1719a $B18A 7A 77 6C 6C 6C 6C 6C 6C ;
.byt    $6B,$6B,$6B,$6B,$6B,$6B,$79,$79; 0x171a2 $B192 6B 6B 6B 6B 6B 6B 79 79 ;
.byt    $73,$79,$79,$79,$F4,$77,$76,$F4; 0x171aa $B19A 73 79 79 79 F4 77 76 F4 ;
.byt    $77,$78,$74,$78,$72,$75,$2B,$40; 0x171b2 $B1A2 77 78 74 78 72 75 2B 40 ;
.byt    $20,$73,$77,$7A,$79,$7A,$77,$6C; 0x171ba $B1AA 20 73 77 7A 79 7A 77 6C ;
.byt    $6C,$6C,$6C,$6C,$6C,$6C,$6B,$6B; 0x171c2 $B1B2 6C 6C 6C 6C 6C 6C 6B 6B ;
.byt    $6B,$6B,$6C,$79,$78,$72,$76,$F4; 0x171ca $B1BA 6B 6B 6C 79 78 72 76 F4 ;
.byt    $79,$F4,$77,$F4,$7A,$F4,$7A,$72; 0x171d2 $B1C2 79 F4 77 F4 7A F4 7A 72 ;
.byt    $75,$2B,$60,$20,$71,$78,$7A,$74; 0x171da $B1CA 75 2B 60 20 71 78 7A 74 ;
.byt    $73,$76,$6C,$6C,$6C,$6C,$6C,$6C; 0x171e2 $B1D2 73 76 6C 6C 6C 6C 6C 6C ;
.byt    $6C,$6C,$6C,$6B,$6B,$6C,$7A,$78; 0x171ea $B1DA 6C 6C 6C 6B 6B 6C 7A 78 ;
.byt    $79,$77,$F4,$79,$7A,$7A,$F4,$79; 0x171f2 $B1E2 79 77 F4 79 7A 7A F4 79 ;
.byt    $F4,$73,$73,$75,$2B,$80,$20,$F4; 0x171fa $B1EA F4 73 73 75 2B 80 20 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x17202 $B1F2 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x1720a $B1FA F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x17212 $B202 F4 F4 F4 F4 F4 F4 F4 F4 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$2B; 0x1721a $B20A F4 F4 F4 F4 F4 F4 F4 2B ;
.byt    $E0,$18,$5A,$AA,$AA,$FA,$FA,$FA; 0x17222 $B212 E0 18 5A AA AA FA FA FA ;
.byt    $76,$15,$55,$FA,$FE,$77,$55,$55; 0x1722a $B21A 76 15 55 FA FE 77 55 55 ;
.byt    $55,$55,$55,$DF,$FF,$FF,$75,$55; 0x17232 $B222 55 55 55 DF FF FF 75 55 ;
.byt    $55,$55,$FF                    ; 0x1723a $B22A 55 55 FF                ;
; ---------------------------------------------------------------------------- ;
    JSR      bank7_Remove_All_Sprites  ; 0x1723d $B22D 20 4C D2                ;
    JSR      LD168                     ; 0x17240 $B230 20 68 D1                ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x17243 $B233 20 85 D3;
bank5_table_B236:                                                               ;
.byt    $42,$B2,$CF,$B3,$FA,$B3        ; 0x17246 $B236 42 B2 CF B3 FA B3       ;
LB23C:                                                                          ;
.byt    $2C                            ; 0x1724c $B23C 2C                      ;
LB23D:                                                                          ;
.byt    $60,$5E,$60,$90,$60,$AD,$3B,$07; 0x1724d $B23D 60 5E 60 90 60 AD 3B 07 ;
.byt    $20,$85,$D3,$0A,$B4,$4E,$B2,$61; 0x17255 $B245 20 85 D3 0A B4 4E B2 61 ;
.byt    $B2                            ; 0x1725d $B24D B2                      ;
; ---------------------------------------------------------------------------- ;
bank5_code22:                                                                   ;
    LDY      #$00                      ; 0x1725e $B24E A0 00                   ; Y = 00
LB250:                                                                          ;
    LDA      bank5_Tables_for_Selection_Screen_Text_,y; 0x17260 $B250 B9 19 BC     ;
    STA      $7F00,y                   ; 0x17263 $B253 99 00 7F                ;
    INY                                ; 0x17266 $B256 C8                      ;
    CPY      #$A6                      ; 0x17267 $B257 C0 A6                   ;
    BCC      LB250                     ; 0x17269 $B259 90 F5                   ;
    JSR      bank7_Erase_Name_Tables_0and1__set_scroll_to_0_0; 0x1726b $B25B 20 66 D2; Erase Name Tables 0-1, set scroll to 0,0
    JMP      bank5__073B__plus__equal__1__and_RTS; 0x1726e $B25E 4C 1D B4          ; $073B += 1, and RTS
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Load_Saved_Games_Data:                                                    ;
    JSR      bank5_Related_to_AttackMagicLife_Levels__and_convert_numbers_to_Tile_Mappings____Load_Attack_Magic_Life_Levels; 0x17271 $B261 20 D8 B5; Load Attack/Magic/Life Levels
    JSR      bank5_Load_Number_of_Saves; 0x17274 $B264 20 03 B6                ; Load Number of Saves
    JSR      LB63C                     ; 0x17277 $B267 20 3C B6                ;
    JSR      LB5B5                     ; 0x1727a $B26A 20 B5 B5                ;
    LDY      $073E                     ; 0x1727d $B26D AC 3E 07                ;
    BNE      LB27B                     ; 0x17280 $B270 D0 09                   ;
    LDA      #$02                      ; 0x17282 $B272 A9 02                   ; A = 02
    STA      $0725                     ; 0x17284 $B274 8D 25 07                ;; PPU Macro Selector	
    INC      $073E                     ; 0x17287 $B277 EE 3E 07                ;
    RTS                                ; 0x1728a $B27A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB27B:                                                                          ;
    DEY                                ; 0x1728b $B27B 88                      ;
    BNE      LB28B                     ; 0x1728c $B27C D0 0D                   ;
    INC      $073E                     ; 0x1728e $B27E EE 3E 07                ;
    LDA      #$05                      ; 0x17291 $B281 A9 05                   ; A = 05
    STA      $0725                     ; 0x17293 $B283 8D 25 07                ;; PPU Macro Selector	
    LDA      #$00                      ; 0x17296 $B286 A9 00                   ; A = 00
    STA      $19                       ; 0x17298 $B288 85 19                   ; Position Code for Fairy Cursor
    RTS                                ; 0x1729a $B28A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB28B:                                                                          ;
    LDA      #$00                      ; 0x1729b $B28B A9 00                   ; A = 00
    STA      $0726                     ; 0x1729d $B28D 8D 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    LDA      $F5                       ; 0x172a0 $B290 A5 F5                   ; Controller 1 buttons pressed
    AND      #$10                      ; 0x172a2 $B292 29 10                   ; keep bits ...x .... (Start button)
    BEQ      LB303                     ; 0x172a4 $B294 F0 6D                   ;
    LDA      #$00                      ; 0x172a6 $B296 A9 00                   ; A = 00
    STA      $073E                     ; 0x172a8 $B298 8D 3E 07                ;
    STA      $073B                     ; 0x172ab $B29B 8D 3B 07                ;
    LDA      $19                       ; 0x172ae $B29E A5 19                   ; Position Code for Fairy Cursor
    CMP      #$03                      ; 0x172b0 $B2A0 C9 03                   ;
    BNE      LB2AA                     ; 0x172b2 $B2A2 D0 06                   ;
    LDA      #$01                      ; 0x172b4 $B2A4 A9 01                   ; A = 01
    STA      $0736                     ; 0x172b6 $B2A6 8D 36 07                ; Game Mode (01 = Register Your Name)
    RTS                                ; 0x172b9 $B2A9 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB2AA:                                                                          ;
    CMP      #$04                      ; 0x172ba $B2AA C9 04                   ;
    BNE      LB2B4                     ; 0x172bc $B2AC D0 06                   ;
    LDA      #$02                      ; 0x172be $B2AE A9 02                   ; A = 02
    STA      $0736                     ; 0x172c0 $B2B0 8D 36 07                ; Game Mode (02 = Elimination Mode)
    RTS                                ; 0x172c3 $B2B3 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB2B4:                                                                          ;
    LDA      $19                       ; 0x172c4 $B2B4 A5 19                   ; Position Code for Fairy Cursor
    STA      $0772                     ; 0x172c6 $B2B6 8D 72 07                ; Current Game Slot
    JSR      LB911                     ; 0x172c9 $B2B9 20 11 B9                ;
    LDA      $07A0                     ; 0x172cc $B2BC AD A0 07                ;; this is a new game+ file?, set it up during the save game load for newgame+ settings
    CMP      #$01                      ; 0x172cf $B2BF C9 01                   ;
    BNE      LB2EE                     ; 0x172d1 $B2C1 D0 2B                   ;
    LDA      $0796                     ; 0x172d3 $B2C3 AD 96 07                ; Down/Up Techs
    AND      #$14                      ; 0x172d6 $B2C6 29 14                   ; keep bits ...x .x..
    STA      L0000                     ; 0x172d8 $B2C8 85 00                   ;
function_reset_link_stats_to_beginning_values:                                  ;
    LDY      #$29                      ; 0x172da $B2CA A0 29                   ; Y = 29
LB2CC:                                                                          ;
    LDA      bank5_Beginning_Values,y  ; 0x172dc $B2CC B9 E3 BA                ; Load Initial Player Stats
    STA      $0777,y                   ; 0x172df $B2CF 99 77 07                ; AML, Magic, Items, etc.
    DEY                                ; 0x172e2 $B2D2 88                      ;
    CPY      #$0C                      ; 0x172e3 $B2D3 C0 0C                   ;
    BCS      LB2CC                     ; 0x172e5 $B2D5 B0 F5                   ;
bank5_Load_Initial_Item_Presence_Bits:                                          ;
    LDY      #$DF                      ; 0x172e7 $B2D7 A0 DF                   ; Y = DF
LB2D9:                                                                          ;
    LDA      bank5_Initial_Item_Presence_Bits_600_61F__West_Hyrule,y; 0x172e9 $B2D9 B9 15 BB;
    STA      L0600,y                   ; 0x172ec $B2DC 99 00 06                ;
    DEY                                ; 0x172ef $B2DF 88                      ;
    CPY      #$FF                      ; 0x172f0 $B2E0 C0 FF                   ;
    BNE      LB2D9                     ; 0x172f2 $B2E2 D0 F5                   ;
    LDA      L0000                     ; 0x172f4 $B2E4 A5 00                   ;
    STA      $0796                     ; 0x172f6 $B2E6 8D 96 07                ; Down/Up Techs
    LDA      #$02                      ; 0x172f9 $B2E9 A9 02                   ; A = 02
    STA      $07A0                     ; 0x172fb $B2EB 8D A0 07                ;; this is a new game+ file?, set it up during the save game load for newgame+ settings
LB2EE:                                                                          ;
    LDX      #$0F                      ; 0x172fe $B2EE A2 0F                   ; X = 0F
    LDA      #$00                      ; 0x17300 $B2F0 A9 00                   ; A = 00
LB2F2:                                                                          ;
    STA      $E0,x                     ; 0x17302 $B2F2 95 E0                   ;
    DEX                                ; 0x17304 $B2F4 CA                      ;
    BPL      LB2F2                     ; 0x17305 $B2F5 10 FB                   ;
    LDY      #$DA                      ; 0x17307 $B2F7 A0 DA                   ; Y = DA
LB2F9:                                                                          ;
    STA      $0700,y                   ; 0x17309 $B2F9 99 00 07                ;
    INY                                ; 0x1730c $B2FC C8                      ;
    BNE      LB2F9                     ; 0x1730d $B2FD D0 FA                   ;
    INC      $076C                     ; 0x1730f $B2FF EE 6C 07                ;; (00=restart from zelda's castle with 3 lives,  01=no routine, 02=die, 03=wake up zelda, 04=roll credits, 06=show the lives then restart the scene)
    RTS                                ; 0x17312 $B302 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB303:                                                                          ;
    LDA      $F5                       ; 0x17313 $B303 A5 F5                   ; Controller 1 buttons pressed
;                                                                              ;intro screen	save game selection screen
;                                                                              ;it picks the screenY position based on $19
;                                                                              ;then jumps to $B384, which sets screenX position
    AND      #$20                      ; 0x17315 $B305 29 20                   ; keep bits ..x. .... (Select button)
    BEQ      LB319                     ; 0x17317 $B307 F0 10                   ;
    LDA      #$04                      ; 0x17319 $B309 A9 04                   ; A = 04 (sound when moving Fairy cursor)
    STA      $EB                       ; 0x1731b $B30B 85 EB                   ; Music
    INC      $19                       ; 0x1731d $B30D E6 19                   ;only occurs during save game selection main screen; Position Code for Fairy Cursor
    LDA      $19                       ; 0x1731f $B30F A5 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    CMP      #$05                      ; 0x17321 $B311 C9 05                   ; if Cursor Position > 4, wrap around to 0
    BNE      LB319                     ; 0x17323 $B313 D0 04                   ;
    LDA      #$00                      ; 0x17325 $B315 A9 00                   ; A = 00
    STA      $19                       ; 0x17327 $B317 85 19                   ; Position Code for Fairy Cursor
LB319:                                                                          ;
    LDA      $19                       ; 0x17329 $B319 A5 19                   ; Position Code for Fairy Cursor
    BNE      LB32F                     ; 0x1732b $B31B D0 12                   ;
    LDA      $1A                       ; 0x1732d $B31D A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    AND      #$01                      ; 0x1732f $B31F 29 01                   ; keep bits .... ...x
    BEQ      LB328                     ; 0x17331 $B321 F0 05                   ;
    INC      $19                       ; 0x17333 $B323 E6 19                   ; Position Code for Fairy Cursor
    JMP      LB32F                     ; 0x17335 $B325 4C 2F B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB328:                                                                          ;
    LDA      #$40                      ; 0x17338 $B328 A9 40                   ; A = 40 (Y Position for Game Slot 1)
    STA      $1B                       ; 0x1733a $B32A 85 1B                   ; Y Position of Fairy cursor
    JMP      LB384                     ; 0x1733c $B32C 4C 84 B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB32F:                                                                          ;
    LDA      $19                       ; 0x1733f $B32F A5 19                   ; Position Code for Fairy Cursor
    CMP      #$01                      ; 0x17341 $B331 C9 01                   ;
    BNE      LB347                     ; 0x17343 $B333 D0 12                   ;
    LDA      $1A                       ; 0x17345 $B335 A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    AND      #$02                      ; 0x17347 $B337 29 02                   ; keep bits .... ..x.
    BEQ      LB340                     ; 0x17349 $B339 F0 05                   ;
    INC      $19                       ; 0x1734b $B33B E6 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    JMP      LB347                     ; 0x1734d $B33D 4C 47 B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB340:                                                                          ;
    LDA      #$58                      ; 0x17350 $B340 A9 58                   ; A = 58 (Position for Game Slot 2)
    STA      $1B                       ; 0x17352 $B342 85 1B                   ; Y Position of Fairy cursor
    JMP      LB384                     ; 0x17354 $B344 4C 84 B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB347:                                                                          ;
    LDA      $19                       ; 0x17357 $B347 A5 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    CMP      #$02                      ; 0x17359 $B349 C9 02                   ;
    BNE      LB35F                     ; 0x1735b $B34B D0 12                   ;
    LDA      $1A                       ; 0x1735d $B34D A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    AND      #$04                      ; 0x1735f $B34F 29 04                   ; keep bits .... .x..
    BEQ      LB358                     ; 0x17361 $B351 F0 05                   ;
    INC      $19                       ; 0x17363 $B353 E6 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    JMP      LB35F                     ; 0x17365 $B355 4C 5F B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB358:                                                                          ;
    LDA      #$70                      ; 0x17368 $B358 A9 70                   ; A = 70 (Position for Game Slot 3)
    STA      $1B                       ; 0x1736a $B35A 85 1B                   ; Y Position of Fairy cursor
    JMP      LB384                     ; 0x1736c $B35C 4C 84 B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB35F:                                                                          ;
    LDA      $19                       ; 0x1736f $B35F A5 19                   ; Position Code for Fairy Cursor
    CMP      #$03                      ; 0x17371 $B361 C9 03                   ;
    BNE      LB375                     ; 0x17373 $B363 D0 10                   ;
    LDA      $1A                       ; 0x17375 $B365 A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    BNE      LB36E                     ; 0x17377 $B367 D0 05                   ;
    INC      $19                       ; 0x17379 $B369 E6 19                   ; Position Code for Fairy Cursor
    JMP      LB375                     ; 0x1737b $B36B 4C 75 B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB36E:                                                                          ;
    LDA      #$90                      ; 0x1737e $B36E A9 90                   ; A = 90 (Position for Register Mode)
    STA      $1B                       ; 0x17380 $B370 85 1B                   ; Y Position of Fairy cursor
    JMP      LB384                     ; 0x17382 $B372 4C 84 B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB375:                                                                          ;
    LDA      $1A                       ; 0x17385 $B375 A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    CMP      #$07                      ; 0x17387 $B377 C9 07                   ;
    BNE      LB380                     ; 0x17389 $B379 D0 05                   ;
    DEC      $19                       ; 0x1738b $B37B C6 19                   ; Position Code for Fairy Cursor
    JMP      LB35F                     ; 0x1738d $B37D 4C 5F B3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB380:                                                                          ;
    LDA      #$A8                      ; 0x17390 $B380 A9 A8                   ; A = A8 (Position for Elimination Mode)
    STA      $1B                       ; 0x17392 $B382 85 1B                   ; Y Position of Fairy cursor
LB384:                                                                          ;
    LDA      #$1C                      ; 0x17394 $B384 A9 1C                   ; A = 1C
    STA       !$4D                     ; 0x17396 $B386 8D 4D 00                ; X Position of Fairy cursor
    LDY      $1B                       ; 0x17399 $B389 A4 1B                   ; Y Position of Fairy cursor
    JSR      LB574                     ; 0x1739b $B38B 20 74 B5                ;
    LDA      #$40                      ; 0x1739e $B38E A9 40                   ; A = 40 (Y Position of Link tiles)
    LDY      #$28                      ; 0x173a0 $B390 A0 28                   ; Y = 28 (X Position of Link tiles)
    JSR      LB596                     ; 0x173a2 $B392 20 96 B5                ;
    JSR      LB5B5                     ; 0x173a5 $B395 20 B5 B5                ;
    LDX      #$08                      ; 0x173a8 $B398 A2 08                   ; X = 08
    LDA      #$43                      ; 0x173aa $B39A A9 43                   ; A = 43
    STA      L0000                     ; 0x173ac $B39C 85 00                   ;
LB39E:                                                                          ;
    LSR      $02                       ; 0x173ae $B39E 46 02                   ; check if Game was finished
    BCC      LB3B6                     ; 0x173b0 $B3A0 90 14                   ; 1 bit for each Game Slot (Slot 3 = bit 0)
    LDA      L0000                     ; 0x173b2 $B3A2 A5 00                   ;
    STA      $0218,x                   ; 0x173b4 $B3A4 9D 18 02                ;
    LDA      #$D2                      ; 0x173b7 $B3A7 A9 D2                   ; A = D2 (Triforce Tile Code)
    STA      $0219,x                   ; 0x173b9 $B3A9 9D 19 02                ;
    LDA      #$01                      ; 0x173bc $B3AC A9 01                   ; A = 01 (Triforce Attributes Code)
    STA      $021A,x                   ; 0x173be $B3AE 9D 1A 02                ;
    LDA      #$30                      ; 0x173c1 $B3B1 A9 30                   ; A = 30
    STA      $021B,x                   ; 0x173c3 $B3B3 9D 1B 02                ;
LB3B6:                                                                          ;
    LDA      L0000                     ; 0x173c6 $B3B6 A5 00                   ;
    CLC                                ; 0x173c8 $B3B8 18                      ;
    ADC      #$18                      ; 0x173c9 $B3B9 69 18                   ;
    STA      L0000                     ; 0x173cb $B3BB 85 00                   ;
    DEX                                ; 0x173cd $B3BD CA                      ;
    DEX                                ; 0x173ce $B3BE CA                      ;
    DEX                                ; 0x173cf $B3BF CA                      ;
    DEX                                ; 0x173d0 $B3C0 CA                      ;
    BPL      LB39E                     ; 0x173d1 $B3C1 10 DB                   ;
    LDA      #$21                      ; 0x173d3 $B3C3 A9 21                   ; A = 21
    STA      L0000                     ; 0x173d5 $B3C5 85 00                   ;
    LDA      #$07                      ; 0x173d7 $B3C7 A9 07                   ; A = 07
    STA      $01                       ; 0x173d9 $B3C9 85 01                   ;
    JSR      bank5_Display_Saved_Games_Names; 0x173db $B3CB 20 29 B5               ;
    RTS                                ; 0x173de $B3CE 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      $073B                     ; 0x173df $B3CF AD 3B 07                ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x173e2 $B3D2 20 85 D3;
bank5_pointer_table4:                                                           ;
.word    LB412                         ; 0x173e5 $B3D5 12 B4                   ;
.word    bank5_code22                  ; 0x173e7 $B3D7 4E B2                   ;
.word    LB678                         ; 0x173e9 $B3D9 78 B6                   ;
.word    bank5_code23                  ; 0x173eb $B3DB DF B3                   ;
.word    LB3F4                         ; 0x173ed $B3DD F4 B3                   ;
; ---------------------------------------------------------------------------- ;
bank5_code23:                                                                   ;
    LDX      #$02                      ; 0x173ef $B3DF A2 02                   ; X = 02
LB3E1:                                                                          ;
    TXA                                ; 0x173f1 $B3E1 8A                      ;
    PHA                                ; 0x173f2 $B3E2 48                      ;
    JSR      LBA18                     ; 0x173f3 $B3E3 20 18 BA                ;
    PLA                                ; 0x173f6 $B3E6 68                      ;
    TAX                                ; 0x173f7 $B3E7 AA                      ;
    DEX                                ; 0x173f8 $B3E8 CA                      ;
    BPL      LB3E1                     ; 0x173f9 $B3E9 10 F6                   ;
    LDA      #$00                      ; 0x173fb $B3EB A9 00                   ; A = 00
    STA      $4015                     ; 0x173fd $B3ED 8D 15 40                ;; Sound Channel Switch
    INC      $073B                     ; 0x17400 $B3F0 EE 3B 07                ;
    RTS                                ; 0x17403 $B3F3 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB3F4:                                                                          ;
    LDA      #$00                      ; 0x17404 $B3F4 A9 00                   ; A = 00
    STA      $0736                     ; 0x17406 $B3F6 8D 36 07                ;; Game Mode ; screen intro type
    RTS                                ; 0x17409 $B3F9 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      $073B                     ; 0x1740a $B3FA AD 3B 07                ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x1740d $B3FD 20 85 D3;
bank5_pointer_table5:                                                           ;
.word    LB412                         ; 0x17410 $B400 12 B4                   ;
.word    bank5_code22                  ; 0x17412 $B402 4E B2                   ;
.word    bank5_code25                  ; 0x17414 $B404 25 B4                   ;
.word    bank5_code23                  ; 0x17416 $B406 DF B3                   ;
.word    LB3F4                         ; 0x17418 $B408 F4 B3                   ;
; ---------------------------------------------------------------------------- ;
bank5_code24:                                                                   ;
    LDX      #$02                      ; 0x1741a $B40A A2 02                   ; X = 02
LB40C:                                                                          ;
    JSR      LBA40                     ; 0x1741c $B40C 20 40 BA                ;
    DEX                                ; 0x1741f $B40F CA                      ;
    BPL      LB40C                     ; 0x17420 $B410 10 FA                   ;
LB412:                                                                          ;
    INC      $0726                     ; 0x17422 $B412 EE 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    JMP      bank5__073B__plus__equal__1__and_RTS; 0x17425 $B415 4C 1D B4          ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      #$00                      ; 0x17428 $B418 A9 00                   ; A = 00
    STA      $0726                     ; 0x1742a $B41A 8D 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
bank5__073B__plus__equal__1__and_RTS:                                           ;
    INC      $073B                     ; 0x1742d $B41D EE 3B 07                ;
    RTS                                ; 0x17430 $B420 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table12:                                                                  ;
.byt    $30,$48,$60,$78                ; 0x17431 $B421 30 48 60 78             ;
; ---------------------------------------------------------------------------- ;
bank5_code25:                                                                   ;
    LDY      $073E                     ; 0x17435 $B425 AC 3E 07                ;
    BNE      LB433                     ; 0x17438 $B428 D0 09                   ;
    LDA      #$06                      ; 0x1743a $B42A A9 06                   ; A = 06
    STA      $0725                     ; 0x1743c $B42C 8D 25 07                ;; PPU Macro Selector	
    INC      $073E                     ; 0x1743f $B42F EE 3E 07                ;
    RTS                                ; 0x17442 $B432 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB433:                                                                          ;
    DEY                                ; 0x17443 $B433 88                      ;
    BNE      LB443                     ; 0x17444 $B434 D0 0D                   ;
    LDA      #$07                      ; 0x17446 $B436 A9 07                   ; A = 07
    STA      $0725                     ; 0x17448 $B438 8D 25 07                ;; PPU Macro Selector	
    INC      $073E                     ; 0x1744b $B43B EE 3E 07                ;
    LDA      #$00                      ; 0x1744e $B43E A9 00                   ; A = 00
    STA      $19                       ; 0x17450 $B440 85 19                   ; Position Code for Fairy Cursor
    RTS                                ; 0x17452 $B442 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB443:                                                                          ;
    LDA      #$00                      ; 0x17453 $B443 A9 00                   ; A = 00
    STA      $0726                     ; 0x17455 $B445 8D 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    LDA      $F5                       ; 0x17458 $B448 A5 F5                   ; Controller 1 buttons pressed
    AND      #$10                      ; 0x1745a $B44A 29 10                   ; keep bits ...x .... (Start button)
    BEQ      LB4A6                     ; 0x1745c $B44C F0 58                   ;
    LDA      $19                       ; 0x1745e $B44E A5 19                   ; Position Code for Fairy Cursor
    CMP      #$03                      ; 0x17460 $B450 C9 03                   ;
    BNE      bank5_elimination_mode    ; 0x17462 $B452 D0 0E                   ;
    LDA      #$00                      ; 0x17464 $B454 A9 00                   ; A = 00
    STA      $073E                     ; 0x17466 $B456 8D 3E 07                ;
    STA      $073B                     ; 0x17469 $B459 8D 3B 07                ;
    LDA      #$01                      ; 0x1746c $B45C A9 01                   ; A = 01
    STA      $0736                     ; 0x1746e $B45E 8D 36 07                ;; Game Mode ; screen intro type
    RTS                                ; 0x17471 $B461 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_elimination_mode:                                                         ;
    LDA      $19                       ; 0x17472 $B462 A5 19                   ; Position Code for Fairy Cursor
    ASL                                ; 0x17474 $B464 0A                      ;
    TAX                                ; 0x17475 $B465 AA                      ;
    LDA      bank5_pointer_table7+$0C,x; 0x17476 $B466 BD D1 BA                ;
    STA      L0000                     ; 0x17479 $B469 85 00                   ;
    LDA      bank5_pointer_table7+$0C+$01,x; 0x1747b $B46B BD D2 BA                ;
    STA      $01                       ; 0x1747e $B46E 85 01                   ;
    LDY      #$31                      ; 0x17480 $B470 A0 31                   ; Y = 31
LB472:                                                                          ;
    LDA      bank5_Beginning_Values,y  ; 0x17482 $B472 B9 E3 BA                ; Table for Beginning Values (17AE3)
    STA      (L0000),y                 ; 0x17485 $B475 91 00                   ;
    DEY                                ; 0x17487 $B477 88                      ;
    BPL      LB472                     ; 0x17488 $B478 10 F8                   ;
    LDA      #$08                      ; 0x1748a $B47A A9 08                   ; A = 08 (sound of Deleted Game Slot)
    STA      $EB                       ; 0x1748c $B47C 85 EB                   ; Music
    INY                                ; 0x1748e $B47E C8                      ;
    LDA      bank5_Pointer_for_Item_Presence_Bits_Table; 0x1748f $B47F AD 5E B9    ;
    STA      L0000                     ; 0x17492 $B482 85 00                   ;
    LDA      bank5_Pointer_for_Item_Presence_Bits_Table+$01; 0x17494 $B484 AD 5F B9;
    STA      $01                       ; 0x17497 $B487 85 01                   ;
    LDA      bank5_pointer_table7+$0C+$01+$05,x; 0x17499 $B489 BD D7 BA            ;
    STA      $02                       ; 0x1749c $B48C 85 02                   ;
    LDA      bank5_pointer_table7+$0C+$01+$05+$01,x; 0x1749e $B48E BD D8 BA        ;
    STA      $03                       ; 0x174a1 $B491 85 03                   ;
LB493:                                                                          ;
    LDA      (L0000),y                 ; 0x174a3 $B493 B1 00                   ;
    STA      ($02),y                   ; 0x174a5 $B495 91 02                   ;
    JSR      LBAB8                     ; 0x174a7 $B497 20 B8 BA                ;
    LDA      L0000                     ; 0x174aa $B49A A5 00                   ;
    CMP      #$F5                      ; 0x174ac $B49C C9 F5                   ;
    BNE      LB493                     ; 0x174ae $B49E D0 F3                   ;
    LDA      $01                       ; 0x174b0 $B4A0 A5 01                   ;
    CMP      #$BB                      ; 0x174b2 $B4A2 C9 BB                   ;
    BNE      LB493                     ; 0x174b4 $B4A4 D0 ED                   ;
LB4A6:                                                                          ;
    LDA      $F5                       ; 0x174b6 $B4A6 A5 F5                   ; Controller 1 buttons pressed
    AND      #$20                      ; 0x174b8 $B4A8 29 20                   ; keep bits ..x. .... (Select button)
    BEQ      LB4BC                     ; 0x174ba $B4AA F0 10                   ;
    LDA      #$04                      ; 0x174bc $B4AC A9 04                   ; A = 04
    STA      $EB                       ; 0x174be $B4AE 85 EB                   ; Music
    INC      $19                       ; 0x174c0 $B4B0 E6 19                   ; Position Code for Fairy Cursor
    LDA      $19                       ; 0x174c2 $B4B2 A5 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    CMP      #$04                      ; 0x174c4 $B4B4 C9 04                   ;
    BNE      LB4BC                     ; 0x174c6 $B4B6 D0 04                   ;
    LDA      #$00                      ; 0x174c8 $B4B8 A9 00                   ; A = 00
    STA      $19                       ; 0x174ca $B4BA 85 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
LB4BC:                                                                          ;
    JSR      bank5_code26              ; 0x174cc $B4BC 20 02 B5                ;
    LDA      $19                       ; 0x174cf $B4BF A5 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    CMP      #$03                      ; 0x174d1 $B4C1 C9 03                   ;
    BEQ      LB4D5                     ; 0x174d3 $B4C3 F0 10                   ;
    ASL                                ; 0x174d5 $B4C5 0A                      ;
    BNE      LB4CB                     ; 0x174d6 $B4C6 D0 03                   ;
    CLC                                ; 0x174d8 $B4C8 18                      ;
    ADC      #$01                      ; 0x174d9 $B4C9 69 01                   ;
LB4CB:                                                                          ;
    AND      $1A                       ; 0x174db $B4CB 25 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    BEQ      LB4D5                     ; 0x174dd $B4CD F0 06                   ;
    INC      $19                       ; 0x174df $B4CF E6 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    ASL                                ; 0x174e1 $B4D1 0A                      ;
    JMP      LB4CB                     ; 0x174e2 $B4D2 4C CB B4                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB4D5:                                                                          ;
    LDX      $19                       ; 0x174e5 $B4D5 A6 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    LDA      bank5_table12,x           ; 0x174e7 $B4D7 BD 21 B4                ;
    STA      $1B                       ; 0x174ea $B4DA 85 1B                   ;
    LDA      #$4C                      ; 0x174ec $B4DC A9 4C                   ; A = 4C
    STA       !$4D                     ; 0x174ee $B4DE 8D 4D 00                ;
    LDY      $1B                       ; 0x174f1 $B4E1 A4 1B                   ;
    DEY                                ; 0x174f3 $B4E3 88                      ;
    DEY                                ; 0x174f4 $B4E4 88                      ;
    DEY                                ; 0x174f5 $B4E5 88                      ;
    DEY                                ; 0x174f6 $B4E6 88                      ;
    JSR      LB574                     ; 0x174f7 $B4E7 20 74 B5                ;
    LDA      #$2C                      ; 0x174fa $B4EA A9 2C                   ; A = 2C
    LDY      #$58                      ; 0x174fc $B4EC A0 58                   ; Y = 58
    JSR      LB596                     ; 0x174fe $B4EE 20 96 B5                ;
    LDA      #$20                      ; 0x17501 $B4F1 A9 20                   ; A = 20
    STA      L0000                     ; 0x17503 $B4F3 85 00                   ;
    LDA      #$CD                      ; 0x17505 $B4F5 A9 CD                   ; A = CD
    STA      $01                       ; 0x17507 $B4F7 85 01                   ;
    JSR      bank5_Display_Saved_Games_Names; 0x17509 $B4F9 20 29 B5               ;
    RTS                                ; 0x1750c $B4FC 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_table13:                                                                  ;
.byt    $01,$01,$02,$02,$04            ; 0x1750d $B4FD 01 01 02 02 04          ;
; ---------------------------------------------------------------------------- ;
bank5_code26:                                                                   ;
    LDA      #$00                      ; 0x17512 $B502 A9 00                   ; A = 00
    STA      $1A                       ; 0x17514 $B504 85 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    LDX      #$04                      ; 0x17516 $B506 A2 04                   ; X = 04
LB508:                                                                          ;
    LDA      LB23C,x                   ; 0x17518 $B508 BD 3C B2                ;
    STA      L0000                     ; 0x1751b $B50B 85 00                   ;
    LDA      LB23D,x                   ; 0x1751d $B50D BD 3D B2                ;
    STA      $01                       ; 0x17520 $B510 85 01                   ;
    LDY      #$07                      ; 0x17522 $B512 A0 07                   ; Y = 07
LB514:                                                                          ;
    LDA      (L0000),y                 ; 0x17524 $B514 B1 00                   ;
    CMP      #$F4                      ; 0x17526 $B516 C9 F4                   ;
    BNE      LB524                     ; 0x17528 $B518 D0 0A                   ;
    DEY                                ; 0x1752a $B51A 88                      ;
    BPL      LB514                     ; 0x1752b $B51B 10 F7                   ;
    LDA      bank5_table13,x           ; 0x1752d $B51D BD FD B4                ;
    ORA      $1A                       ; 0x17530 $B520 05 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    STA      $1A                       ; 0x17532 $B522 85 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
LB524:                                                                          ;
    DEX                                ; 0x17534 $B524 CA                      ;
    DEX                                ; 0x17535 $B525 CA                      ;
    BPL      LB508                     ; 0x17536 $B526 10 E0                   ;
    RTS                                ; 0x17538 $B528 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Display_Saved_Games_Names:                                                ;
    LDA      #$00                      ; 0x17539 $B529 A9 00                   ; A = 00
    LDX      #$00                      ; 0x1753b $B52B A2 00                   ; X = 00
LB52D:                                                                          ;
    PHA                                ; 0x1753d $B52D 48                      ;
    ASL                                ; 0x1753e $B52E 0A                      ;
    TAY                                ; 0x1753f $B52F A8                      ;
    LDA      LB23C,y                   ; 0x17540 $B530 B9 3C B2                ;
    STA      $02                       ; 0x17543 $B533 85 02                   ;
    LDA      LB23D,y                   ; 0x17545 $B535 B9 3D B2                ;
    STA      $03                       ; 0x17548 $B538 85 03                   ;
    LDA      L0000                     ; 0x1754a $B53A A5 00                   ;
    STA      L0302,x                   ; 0x1754c $B53C 9D 02 03                ;
    LDA      $01                       ; 0x1754f $B53F A5 01                   ;
    STA      $0303,x                   ; 0x17551 $B541 9D 03 03                ;
    LDA      #$08                      ; 0x17554 $B544 A9 08                   ; A = 08
    STA      $0304,x                   ; 0x17556 $B546 9D 04 03                ;
    LDY      #$00                      ; 0x17559 $B549 A0 00                   ; Y = 00
LB54B:                                                                          ;
    LDA      ($02),y                   ; 0x1755b $B54B B1 02                   ;
    STA      $0305,x                   ; 0x1755d $B54D 9D 05 03                ;
    INX                                ; 0x17560 $B550 E8                      ;
    INY                                ; 0x17561 $B551 C8                      ;
    CPY      #$08                      ; 0x17562 $B552 C0 08                   ;
    BNE      LB54B                     ; 0x17564 $B554 D0 F5                   ;
    LDA      $01                       ; 0x17566 $B556 A5 01                   ;
    CLC                                ; 0x17568 $B558 18                      ;
    ADC      #$60                      ; 0x17569 $B559 69 60                   ;
    STA      $01                       ; 0x1756b $B55B 85 01                   ;
    LDA      L0000                     ; 0x1756d $B55D A5 00                   ;
    ADC      #$00                      ; 0x1756f $B55F 69 00                   ;
    STA      L0000                     ; 0x17571 $B561 85 00                   ;
    PLA                                ; 0x17573 $B563 68                      ;
    CLC                                ; 0x17574 $B564 18                      ;
    ADC      #$01                      ; 0x17575 $B565 69 01                   ;
    INX                                ; 0x17577 $B567 E8                      ;
    INX                                ; 0x17578 $B568 E8                      ;
    INX                                ; 0x17579 $B569 E8                      ;
    CPX      #$21                      ; 0x1757a $B56A E0 21                   ;
    BNE      LB52D                     ; 0x1757c $B56C D0 BF                   ;
    LDA      #$FF                      ; 0x1757e $B56E A9 FF                   ; A = FF
    STA      L0302,x                   ; 0x17580 $B570 9D 02 03                ;
    RTS                                ; 0x17583 $B573 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB574:                                                                          ;
    INC      $1D                       ; 0x17584 $B574 E6 1D                   ;
    LDX      #$68                      ; 0x17586 $B576 A2 68                   ; X = 68 (Fairy Cursor Tile Mapping)
    LDA      $1D                       ; 0x17588 $B578 A5 1D                   ;
    AND      #$04                      ; 0x1758a $B57A 29 04                   ; keep bits .... .x..
    BEQ      LB580                     ; 0x1758c $B57C F0 02                   ;
    INX                                ; 0x1758e $B57E E8                      ;
    INX                                ; 0x1758f $B57F E8                      ;
LB580:                                                                          ;
    STX      $1C                       ; 0x17590 $B580 86 1C                   ;
    STY      $0200                     ; 0x17592 $B582 8C 00 02                ;; Animation frame for Link's OW sprite (part 1)
    LDA      #$01                      ; 0x17595 $B585 A9 01                   ; A = 01
    STA      $0202                     ; 0x17597 $B587 8D 02 02                ;
    LDA       !$4D                     ; 0x1759a $B58A AD 4D 00                ;
    STA      $0203                     ; 0x1759d $B58D 8D 03 02                ;
    LDA      $1C                       ; 0x175a0 $B590 A5 1C                   ;
    STA      $0201                     ; 0x175a2 $B592 8D 01 02                ;; Animation frame for Link's OW sprite (part 2)
    RTS                                ; 0x175a5 $B595 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB596:                                                                          ;
    LDX      #$08                      ; 0x175a6 $B596 A2 08                   ; X = 08
LB598:                                                                          ;
    PHA                                ; 0x175a8 $B598 48                      ;
    STA      $020C,x                   ; 0x175a9 $B599 9D 0C 02                ;
    TYA                                ; 0x175ac $B59C 98                      ;
    STA      $020F,x                   ; 0x175ad $B59D 9D 0F 02                ;
    LDA      #$D0                      ; 0x175b0 $B5A0 A9 D0                   ; A = D0 (Link Tile Code)
    STA      $020D,x                   ; 0x175b2 $B5A2 9D 0D 02                ;
    LDA      #$00                      ; 0x175b5 $B5A5 A9 00                   ; A = 00 (Link Palette Code)
    STA      $020E,x                   ; 0x175b7 $B5A7 9D 0E 02                ;
    PLA                                ; 0x175ba $B5AA 68                      ;
    CLC                                ; 0x175bb $B5AB 18                      ;
    ADC      #$18                      ; 0x175bc $B5AC 69 18                   ;
    DEX                                ; 0x175be $B5AE CA                      ;
    DEX                                ; 0x175bf $B5AF CA                      ;
    DEX                                ; 0x175c0 $B5B0 CA                      ;
    DEX                                ; 0x175c1 $B5B1 CA                      ;
    BPL      LB598                     ; 0x175c2 $B5B2 10 E4                   ;
    RTS                                ; 0x175c4 $B5B4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB5B5:                                                                          ;
    LDA      #$00                      ; 0x175c5 $B5B5 A9 00                   ; A = 00
    STA      $02                       ; 0x175c7 $B5B7 85 02                   ;
    LDY      #$29                      ; 0x175c9 $B5B9 A0 29                   ; Y = 29
    LDX      #$04                      ; 0x175cb $B5BB A2 04                   ; X = 04
LB5BD:                                                                          ;
    LDA      bank5_pointer_table7,x    ; 0x175cd $B5BD BD C5 BA                ;
    STA      L0000                     ; 0x175d0 $B5C0 85 00                   ;
    LDA      bank5_pointer_table7+$01,x; 0x175d2 $B5C2 BD C6 BA                ;
    STA      $01                       ; 0x175d5 $B5C5 85 01                   ;
    ASL      $02                       ; 0x175d7 $B5C7 06 02                   ;
    LDA      (L0000),y                 ; 0x175d9 $B5C9 B1 00                   ;
    BEQ      LB5D3                     ; 0x175db $B5CB F0 06                   ;
    LDA      $02                       ; 0x175dd $B5CD A5 02                   ;
    ORA      #$01                      ; 0x175df $B5CF 09 01                   ; set  bits .... ...x
    STA      $02                       ; 0x175e1 $B5D1 85 02                   ;
LB5D3:                                                                          ;
    DEX                                ; 0x175e3 $B5D3 CA                      ;
    DEX                                ; 0x175e4 $B5D4 CA                      ;
    BPL      LB5BD                     ; 0x175e5 $B5D5 10 E6                   ;
    RTS                                ; 0x175e7 $B5D7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Related_to_AttackMagicLife_Levels__and_convert_numbers_to_Tile_Mappings____Load_Attack_Magic_Life_Levels: ;
    LDX      #$00                      ; 0x175e8 $B5D8 A2 00                   ; X = 00
    LDY      #$00                      ; 0x175ea $B5DA A0 00                   ; Y = 00
    JSR      LB5EA                     ; 0x175ec $B5DC 20 EA B5                ;
    LDX      #$32                      ; 0x175ef $B5DF A2 32                   ; X = 32
    LDY      #$0E                      ; 0x175f1 $B5E1 A0 0E                   ; Y = 0E
    JSR      LB5EA                     ; 0x175f3 $B5E3 20 EA B5                ;
    LDX      #$64                      ; 0x175f6 $B5E6 A2 64                   ; X = 64
    LDY      #$1C                      ; 0x175f8 $B5E8 A0 1C                   ; Y = 1C
LB5EA:                                                                          ;
    LDA      L6002,x                   ; 0x175fa $B5EA BD 02 60                ;
    ORA      #$D0                      ; 0x175fd $B5ED 09 D0                   ; set  bits xx.x ....
    STA      $7F3A,y                   ; 0x175ff $B5EF 99 3A 7F                ;
    LDA      $6003,x                   ; 0x17602 $B5F2 BD 03 60                ;
    ORA      #$D0                      ; 0x17605 $B5F5 09 D0                   ; set  bits xx.x ....
    STA      $7F3E,y                   ; 0x17607 $B5F7 99 3E 7F                ;
    LDA      $6004,x                   ; 0x1760a $B5FA BD 04 60                ;
    ORA      #$D0                      ; 0x1760d $B5FD 09 D0                   ; set  bits xx.x ....
    STA      $7F42,y                   ; 0x1760f $B5FF 99 42 7F                ;
    RTS                                ; 0x17612 $B602 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_Load_Number_of_Saves:                                                     ;
    LDX      #$28                      ; 0x17613 $B603 A2 28                   ; X = 28
    LDA      #$00                      ; 0x17615 $B605 A9 00                   ; A = 00
    STA      $02                       ; 0x17617 $B607 85 02                   ;
    JSR      LB623                     ; 0x17619 $B609 20 23 B6                ;
    LDA      #$28                      ; 0x1761c $B60C A9 28                   ; A = 28
    CLC                                ; 0x1761e $B60E 18                      ;
    ADC      #$32                      ; 0x1761f $B60F 69 32                   ;
    TAX                                ; 0x17621 $B611 AA                      ;
    LDA      #$06                      ; 0x17622 $B612 A9 06                   ; A = 06
    STA      $02                       ; 0x17624 $B614 85 02                   ;
    JSR      LB623                     ; 0x17626 $B616 20 23 B6                ;
    LDA      #$28                      ; 0x17629 $B619 A9 28                   ; A = 28
    CLC                                ; 0x1762b $B61B 18                      ;
    ADC      #$64                      ; 0x1762c $B61C 69 64                   ;
    TAX                                ; 0x1762e $B61E AA                      ;
    LDA      #$0C                      ; 0x1762f $B61F A9 0C                   ; A = 0C
    STA      $02                       ; 0x17631 $B621 85 02                   ;
LB623:                                                                          ;
    LDA      #$00                      ; 0x17633 $B623 A9 00                   ; A = 00
    STA      L0000                     ; 0x17635 $B625 85 00                   ;
    LDA      L6002,x                   ; 0x17637 $B627 BD 02 60                ;
    JSR      LB8D2                     ; 0x1763a $B62A 20 D2 B8                ;
    LDX      $02                       ; 0x1763d $B62D A6 02                   ;
    STA      $7F79,x                   ; 0x1763f $B62F 9D 79 7F                ;
    TYA                                ; 0x17642 $B632 98                      ;
    STA      $7F78,x                   ; 0x17643 $B633 9D 78 7F                ;
    LDA      L0000                     ; 0x17646 $B636 A5 00                   ;
    STA      $7F77,x                   ; 0x17648 $B638 9D 77 7F                ;
    RTS                                ; 0x1764b $B63B 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB63C:                                                                          ;
    JSR      bank5_code26              ; 0x1764c $B63C 20 02 B5                ;
    LDA      $1A                       ; 0x1764f $B63F A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    AND      #$01                      ; 0x17651 $B641 29 01                   ; keep bits .... ...x
    BEQ      LB64C                     ; 0x17653 $B643 F0 07                   ;
    LDX      #$00                      ; 0x17655 $B645 A2 00                   ; X = 00
    LDY      #$00                      ; 0x17657 $B647 A0 00                   ; Y = 00
    JSR      LB663                     ; 0x17659 $B649 20 63 B6                ;
LB64C:                                                                          ;
    LDA      $1A                       ; 0x1765c $B64C A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    AND      #$02                      ; 0x1765e $B64E 29 02                   ; keep bits .... ..x.
    BEQ      LB659                     ; 0x17660 $B650 F0 07                   ;
    LDX      #$0E                      ; 0x17662 $B652 A2 0E                   ; X = 0E
    LDY      #$06                      ; 0x17664 $B654 A0 06                   ; Y = 06
    JSR      LB663                     ; 0x17666 $B656 20 63 B6                ;
LB659:                                                                          ;
    LDA      $1A                       ; 0x17669 $B659 A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    AND      #$04                      ; 0x1766b $B65B 29 04                   ; keep bits .... .x..
    BEQ      LB677                     ; 0x1766d $B65D F0 18                   ;
    LDX      #$1C                      ; 0x1766f $B65F A2 1C                   ; X = 1C
    LDY      #$0C                      ; 0x17671 $B661 A0 0C                   ; Y = 0C
LB663:                                                                          ;
    LDA      #$F4                      ; 0x17673 $B663 A9 F4                   ; A = F4
    STA      $7F3A,x                   ; 0x17675 $B665 9D 3A 7F                ;
    STA      $7F3E,x                   ; 0x17678 $B668 9D 3E 7F                ;
    STA      $7F42,x                   ; 0x1767b $B66B 9D 42 7F                ;
    STA      $7F77,y                   ; 0x1767e $B66E 99 77 7F                ;
    STA      $7F78,y                   ; 0x17681 $B671 99 78 7F                ;
    STA      $7F79,y                   ; 0x17684 $B674 99 79 7F                ;
LB677:                                                                          ;
    RTS                                ; 0x17687 $B677 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB678:                                                                          ;
    LDY      $073E                     ; 0x17688 $B678 AC 3E 07                ;
    BNE      LB692                     ; 0x1768b $B67B D0 15                   ;
    LDA      #$06                      ; 0x1768d $B67D A9 06                   ; A = 06
    STA      $0725                     ; 0x1768f $B67F 8D 25 07                ;; PPU Macro Selector	
    INC      $073E                     ; 0x17692 $B682 EE 3E 07                ;
    LDA      #$00                      ; 0x17695 $B685 A9 00                   ; A = 00
    STA      $19                       ; 0x17697 $B687 85 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    STA      $1E                       ; 0x17699 $B689 85 1E                   ;; Cursor position in Name Input Screen
    STA      $1F                       ; 0x1769b $B68B 85 1F                   ;
    STA      $20                       ; 0x1769d $B68D 85 20                   ;
    JMP      bank5_code26              ; 0x1769f $B68F 4C 02 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB692:                                                                          ;
    LDA      #$00                      ; 0x176a2 $B692 A9 00                   ; A = 00
    STA      $0726                     ; 0x176a4 $B694 8D 26 07                ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    LDA      $F5                       ; 0x176a7 $B697 A5 F5                   ; Controller 1 buttons pressed
    AND      #$10                      ; 0x176a9 $B699 29 10                   ; keep bits ...x .... (Start button)
    BEQ      LB6AC                     ; 0x176ab $B69B F0 0F                   ;
    LDA      $19                       ; 0x176ad $B69D A5 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    CMP      #$03                      ; 0x176af $B69F C9 03                   ;
    BNE      LB6AC                     ; 0x176b1 $B6A1 D0 09                   ;
    LDA      #$00                      ; 0x176b3 $B6A3 A9 00                   ; A = 00
    STA      $073E                     ; 0x176b5 $B6A5 8D 3E 07                ;
    INC      $073B                     ; 0x176b8 $B6A8 EE 3B 07                ;
    RTS                                ; 0x176bb $B6AB 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB6AC:                                                                          ;
;register your name, increase fairy position when you press select button      ;
    LDA      $F5                       ; 0x176bc $B6AC A5 F5                   ; Controller 1 buttons pressed
    AND      #$20                      ; 0x176be $B6AE 29 20                   ; keep bits ..x. .... (Select button)
    BEQ      LB6C6                     ; 0x176c0 $B6B0 F0 14                   ;
    LDA      #$04                      ; 0x176c2 $B6B2 A9 04                   ; A = 04
    STA      $EB                       ; 0x176c4 $B6B4 85 EB                   ; Music
    INC      $19                       ; 0x176c6 $B6B6 E6 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    LDA      $19                       ; 0x176c8 $B6B8 A5 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    CMP      #$04                      ; 0x176ca $B6BA C9 04                   ;
    BNE      LB6C2                     ; 0x176cc $B6BC D0 04                   ;
    LDA      #$00                      ; 0x176ce $B6BE A9 00                   ; A = 00
    STA      $19                       ; 0x176d0 $B6C0 85 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
LB6C2:                                                                          ;
    LDA      #$00                      ; 0x176d2 $B6C2 A9 00                   ; A = 00
    STA      $1E                       ; 0x176d4 $B6C4 85 1E                   ;; Cursor position in Name Input Screen
LB6C6:                                                                          ;
    LDA      $1A                       ; 0x176d6 $B6C6 A5 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    ORA      #$08                      ; 0x176d8 $B6C8 09 08                   ; set  bits .... x...
    STA      $1A                       ; 0x176da $B6CA 85 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    LDA      $19                       ; 0x176dc $B6CC A5 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    CMP      #$03                      ; 0x176de $B6CE C9 03                   ;
    BEQ      LB6E4                     ; 0x176e0 $B6D0 F0 12                   ;
    ASL                                ; 0x176e2 $B6D2 0A                      ;
    BNE      LB6D8                     ; 0x176e3 $B6D3 D0 03                   ;
    CLC                                ; 0x176e5 $B6D5 18                      ;
    ADC      #$01                      ; 0x176e6 $B6D6 69 01                   ;
LB6D8:                                                                          ;
    TAY                                ; 0x176e8 $B6D8 A8                      ;
    AND      $1A                       ; 0x176e9 $B6D9 25 1A                   ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    BNE      LB6E4                     ; 0x176eb $B6DB D0 07                   ;check if save slot at fairy cursor has a save, otherwise skip pass this entry
;increment fairy position if the first position already has been registered with a name;
    INC      $19                       ; 0x176ed $B6DD E6 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    TYA                                ; 0x176ef $B6DF 98                      ;
    ASL                                ; 0x176f0 $B6E0 0A                      ;
    JMP      LB6D8                     ; 0x176f1 $B6E1 4C D8 B6                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB6E4:                                                                          ;
    LDX      $19                       ; 0x176f4 $B6E4 A6 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    LDA      bank5_table12,x           ; 0x176f6 $B6E6 BD 21 B4                ;
    STA      $1B                       ; 0x176f9 $B6E9 85 1B                   ;
    LDA      #$4C                      ; 0x176fb $B6EB A9 4C                   ; A = 4C
    STA       !$4D                     ; 0x176fd $B6ED 8D 4D 00                ;
    LDY      $1B                       ; 0x17700 $B6F0 A4 1B                   ;
    DEY                                ; 0x17702 $B6F2 88                      ;
    DEY                                ; 0x17703 $B6F3 88                      ;
    DEY                                ; 0x17704 $B6F4 88                      ;
    DEY                                ; 0x17705 $B6F5 88                      ;
    JSR      LB574                     ; 0x17706 $B6F6 20 74 B5                ;
    LDA      #$2C                      ; 0x17709 $B6F9 A9 2C                   ; A = 2C
    LDY      #$58                      ; 0x1770b $B6FB A0 58                   ; Y = 58
    JSR      LB596                     ; 0x1770d $B6FD 20 96 B5                ;
    LDA      $1B                       ; 0x17710 $B700 A5 1B                   ;
    CMP      #$78                      ; 0x17712 $B702 C9 78                   ;
    BNE      LB711                     ; 0x17714 $B704 D0 0B                   ;
    LDA      #$F8                      ; 0x17716 $B706 A9 F8                   ; A = F8
    STA      $0204                     ; 0x17718 $B708 8D 04 02                ;
    STA      $0208                     ; 0x1771b $B70B 8D 08 02                ;
    JMP      LB8C4                     ; 0x1771e $B70E 4C C4 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB711:                                                                          ;
    LDA      $F5                       ; 0x17721 $B711 A5 F5                   ; Controller 1 buttons pressed
    AND      #$C0                      ; 0x17723 $B713 29 C0                   ; keep bits xx.. .... (A/B buttons)
    BEQ      LB727                     ; 0x17725 $B715 F0 10                   ;
    LDA      #$01                      ; 0x17727 $B717 A9 01                   ; A = 01
    STA      $EB                       ; 0x17729 $B719 85 EB                   ; Music
    INC      $1E                       ; 0x1772b $B71B E6 1E                   ;; Cursor position in Name Input Screen
    LDA      $1E                       ; 0x1772d $B71D A5 1E                   ;; Cursor position in Name Input Screen
    CMP      #$08                      ; 0x1772f $B71F C9 08                   ;
    BNE      LB727                     ; 0x17731 $B721 D0 04                   ;
    LDA      #$00                      ; 0x17733 $B723 A9 00                   ; A = 00
    STA      $1E                       ; 0x17735 $B725 85 1E                   ;; Cursor position in Name Input Screen
LB727:                                                                          ;
    LDA      #$68                      ; 0x17737 $B727 A9 68                   ; A = 68
    LDX      $1E                       ; 0x17739 $B729 A6 1E                   ;; Cursor position in Name Input Screen
LB72B:                                                                          ;
    BEQ      LB734                     ; 0x1773b $B72B F0 07                   ;
    CLC                                ; 0x1773d $B72D 18                      ;
    ADC      #$08                      ; 0x1773e $B72E 69 08                   ;
    DEX                                ; 0x17740 $B730 CA                      ;
    JMP      LB72B                     ; 0x17741 $B731 4C 2B B7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB734:                                                                          ;
    STA      $03D6                     ; 0x17744 $B734 8D D6 03                ;
    LDA      $1B                       ; 0x17747 $B737 A5 1B                   ;
    CMP      #$78                      ; 0x17749 $B739 C9 78                   ;
    BNE      LB73F                     ; 0x1774b $B73B D0 02                   ;
    LDA      #$F8                      ; 0x1774d $B73D A9 F8                   ; A = F8
LB73F:                                                                          ;
    STA      $24                       ; 0x1774f $B73F 85 24                   ;
    LDA      $1D                       ; 0x17751 $B741 A5 1D                   ;
    AND      #$08                      ; 0x17753 $B743 29 08                   ; keep bits .... x...
    BEQ      LB74B                     ; 0x17755 $B745 F0 04                   ;
    LDA      #$F8                      ; 0x17757 $B747 A9 F8                   ; A = F8
    STA      $24                       ; 0x17759 $B749 85 24                   ;
LB74B:                                                                          ;
    LDA      $24                       ; 0x1775b $B74B A5 24                   ;
    STA      $0204                     ; 0x1775d $B74D 8D 04 02                ;
    DEC      $0204                     ; 0x17760 $B750 CE 04 02                ;
    LDA      $03D6                     ; 0x17763 $B753 AD D6 03                ;
    STA      $0207                     ; 0x17766 $B756 8D 07 02                ;
    LDA      #$FF                      ; 0x17769 $B759 A9 FF                   ; A = FF
    STA      $0205                     ; 0x1776b $B75B 8D 05 02                ;
    LDA      #$03                      ; 0x1776e $B75E A9 03                   ; A = 03
    STA      $0206                     ; 0x17770 $B760 8D 06 02                ;
    LDA      $F7                       ; 0x17773 $B763 A5 F7                   ; Controller 1 buttons held
    AND      #$0F                      ; 0x17775 $B765 29 0F                   ; keep bits .... xxxx (All Arrows)
    BNE      LB772                     ; 0x17777 $B767 D0 09                   ;
    LDA      #$00                      ; 0x17779 $B769 A9 00                   ; A = 00
    STA      $21                       ; 0x1777b $B76B 85 21                   ;
    STA      $22                       ; 0x1777d $B76D 85 22                   ;
    JMP      LB831                     ; 0x1777f $B76F 4C 31 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB772:                                                                          ;
    LDA      $21                       ; 0x17782 $B772 A5 21                   ;
    BEQ      LB78E                     ; 0x17784 $B774 F0 18                   ;
    INC      $22                       ; 0x17786 $B776 E6 22                   ;
    LDA      $22                       ; 0x17788 $B778 A5 22                   ;
    CMP      #$1F                      ; 0x1778a $B77A C9 1F                   ; delay before auto-repeat cursor movement
    BMI      LB78B                     ; 0x1778c $B77C 30 0D                   ;
    AND      #$07                      ; 0x1778e $B77E 29 07                   ; keep bits .... .xxx
    BNE      LB78B                     ; 0x17790 $B780 D0 09                   ;
    LDA      #$20                      ; 0x17792 $B782 A9 20                   ; A = 20
    STA      $22                       ; 0x17794 $B784 85 22                   ;
    JMP      LB78E                     ; 0x17796 $B786 4C 8E B7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    BEQ      LB78E                     ; 0x17799 $B789 F0 03                   ;
LB78B:                                                                          ;
    JMP      LB831                     ; 0x1779b $B78B 4C 31 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB78E:                                                                          ;
    LDA      #$01                      ; 0x1779e $B78E A9 01                   ; A = 01
    STA      $21                       ; 0x177a0 $B790 85 21                   ;
    LDA      #$02                      ; 0x177a2 $B792 A9 02                   ; A = 02
    STA      $EB                       ; 0x177a4 $B794 85 EB                   ; Music
    LDA      $F7                       ; 0x177a6 $B796 A5 F7                   ; Controller 1 buttons held
    AND      #$03                      ; 0x177a8 $B798 29 03                   ; keep bits .... ..xx (Left/Right Arrows)
    BEQ      LB7F2                     ; 0x177aa $B79A F0 56                   ;
    CMP      #$01                      ; 0x177ac $B79C C9 01                   ;
    BNE      LB7CF                     ; 0x177ae $B79E D0 2F                   ;
    INC      $1F                       ; 0x177b0 $B7A0 E6 1F                   ;
    LDA      $1F                       ; 0x177b2 $B7A2 A5 1F                   ;
    CMP      #$0B                      ; 0x177b4 $B7A4 C9 0B                   ;
    BNE      LB7AE                     ; 0x177b6 $B7A6 D0 06                   ;
    INC      $20                       ; 0x177b8 $B7A8 E6 20                   ;
    LDA      #$00                      ; 0x177ba $B7AA A9 00                   ; A = 00
    STA      $1F                       ; 0x177bc $B7AC 85 1F                   ;
LB7AE:                                                                          ;
    LDA      $20                       ; 0x177be $B7AE A5 20                   ;
    CMP      #$04                      ; 0x177c0 $B7B0 C9 04                   ;
    BNE      LB7BA                     ; 0x177c2 $B7B2 D0 06                   ;
    LDA      #$00                      ; 0x177c4 $B7B4 A9 00                   ; A = 00
    STA      $1F                       ; 0x177c6 $B7B6 85 1F                   ;
    STA      $20                       ; 0x177c8 $B7B8 85 20                   ;
LB7BA:                                                                          ;
    LDA      $20                       ; 0x177ca $B7BA A5 20                   ;
    CMP      #$02                      ; 0x177cc $B7BC C9 02                   ;
    BNE      LB7CC                     ; 0x177ce $B7BE D0 0C                   ;
    LDA      $1F                       ; 0x177d0 $B7C0 A5 1F                   ;
    CMP      #$06                      ; 0x177d2 $B7C2 C9 06                   ;
    BNE      LB7CC                     ; 0x177d4 $B7C4 D0 06                   ;
    LDA      #$00                      ; 0x177d6 $B7C6 A9 00                   ; A = 00
    STA      $1F                       ; 0x177d8 $B7C8 85 1F                   ;
    INC      $20                       ; 0x177da $B7CA E6 20                   ;
LB7CC:                                                                          ;
    JMP      LB831                     ; 0x177dc $B7CC 4C 31 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB7CF:                                                                          ;
    DEC      $1F                       ; 0x177df $B7CF C6 1F                   ;
    BPL      LB7E3                     ; 0x177e1 $B7D1 10 10                   ;
    DEC      $20                       ; 0x177e3 $B7D3 C6 20                   ;
    LDA      #$0A                      ; 0x177e5 $B7D5 A9 0A                   ; A = 0A
    STA      $1F                       ; 0x177e7 $B7D7 85 1F                   ;
    LDA      $20                       ; 0x177e9 $B7D9 A5 20                   ;
    CMP      #$02                      ; 0x177eb $B7DB C9 02                   ;
    BNE      LB7E3                     ; 0x177ed $B7DD D0 04                   ;
    LDA      #$05                      ; 0x177ef $B7DF A9 05                   ; A = 05
    STA      $1F                       ; 0x177f1 $B7E1 85 1F                   ;
LB7E3:                                                                          ;
    LDA      $20                       ; 0x177f3 $B7E3 A5 20                   ;
    BPL      LB7EF                     ; 0x177f5 $B7E5 10 08                   ;
    LDA      #$03                      ; 0x177f7 $B7E7 A9 03                   ; A = 03
    STA      $20                       ; 0x177f9 $B7E9 85 20                   ;
    LDA      #$0A                      ; 0x177fb $B7EB A9 0A                   ; A = 0A
    STA      $1F                       ; 0x177fd $B7ED 85 1F                   ;
LB7EF:                                                                          ;
    JMP      LB831                     ; 0x177ff $B7EF 4C 31 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB7F2:                                                                          ;
    LDA      $F7                       ; 0x17802 $B7F2 A5 F7                   ; Controller 1 buttons held
    AND      #$08                      ; 0x17804 $B7F4 29 08                   ; keep bits .... x... (Up Arrow)
    BEQ      LB814                     ; 0x17806 $B7F6 F0 1C                   ;
    DEC      $20                       ; 0x17808 $B7F8 C6 20                   ;
    BPL      LB803                     ; 0x1780a $B7FA 10 07                   ;
    LDA      #$03                      ; 0x1780c $B7FC A9 03                   ; A = 03
    STA      $20                       ; 0x1780e $B7FE 85 20                   ;
    JMP      LB811                     ; 0x17810 $B800 4C 11 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB803:                                                                          ;
    LDA      $1F                       ; 0x17813 $B803 A5 1F                   ;
    CMP      #$06                      ; 0x17815 $B805 C9 06                   ;
    BMI      LB811                     ; 0x17817 $B807 30 08                   ;
    LDA      $20                       ; 0x17819 $B809 A5 20                   ;
    CMP      #$02                      ; 0x1781b $B80B C9 02                   ;
    BNE      LB811                     ; 0x1781d $B80D D0 02                   ;
    DEC      $20                       ; 0x1781f $B80F C6 20                   ;
LB811:                                                                          ;
    JMP      LB831                     ; 0x17821 $B811 4C 31 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB814:                                                                          ;
    INC      $20                       ; 0x17824 $B814 E6 20                   ;
    LDA      $20                       ; 0x17826 $B816 A5 20                   ;
    CMP      #$04                      ; 0x17828 $B818 C9 04                   ;
    BNE      LB823                     ; 0x1782a $B81A D0 07                   ;
    LDA      #$00                      ; 0x1782c $B81C A9 00                   ; A = 00
    STA      $20                       ; 0x1782e $B81E 85 20                   ;
    JMP      LB831                     ; 0x17830 $B820 4C 31 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB823:                                                                          ;
    LDA      $1F                       ; 0x17833 $B823 A5 1F                   ;
    CMP      #$06                      ; 0x17835 $B825 C9 06                   ;
    BMI      LB831                     ; 0x17837 $B827 30 08                   ;
    LDA      $20                       ; 0x17839 $B829 A5 20                   ;
    CMP      #$02                      ; 0x1783b $B82B C9 02                   ;
    BNE      LB831                     ; 0x1783d $B82D D0 02                   ;
    INC      $20                       ; 0x1783f $B82F E6 20                   ;
LB831:                                                                          ;
    LDA      #$30                      ; 0x17841 $B831 A9 30                   ; A = 30
    LDX      $1F                       ; 0x17843 $B833 A6 1F                   ;
LB835:                                                                          ;
    BEQ      LB83E                     ; 0x17845 $B835 F0 07                   ;
    CLC                                ; 0x17847 $B837 18                      ;
    ADC      #$10                      ; 0x17848 $B838 69 10                   ;
    DEX                                ; 0x1784a $B83A CA                      ;
    JMP      LB835                     ; 0x1784b $B83B 4C 35 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB83E:                                                                          ;
    STA      $23                       ; 0x1784e $B83E 85 23                   ;
    LDA      #$90                      ; 0x17850 $B840 A9 90                   ; A = 90
    LDX      $20                       ; 0x17852 $B842 A6 20                   ;
LB844:                                                                          ;
    BEQ      LB84D                     ; 0x17854 $B844 F0 07                   ;
    CLC                                ; 0x17856 $B846 18                      ;
    ADC      #$10                      ; 0x17857 $B847 69 10                   ;
    DEX                                ; 0x17859 $B849 CA                      ;
    JMP      LB844                     ; 0x1785a $B84A 4C 44 B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB84D:                                                                          ;
    STA      $25                       ; 0x1785d $B84D 85 25                   ;
    LDA      $22                       ; 0x1785f $B84F A5 22                   ;
    CMP      #$1F                      ; 0x17861 $B851 C9 1F                   ;
    BPL      LB85F                     ; 0x17863 $B853 10 0A                   ;
    LDA      $1D                       ; 0x17865 $B855 A5 1D                   ;
    AND      #$08                      ; 0x17867 $B857 29 08                   ; keep bits .... x...
    BEQ      LB85F                     ; 0x17869 $B859 F0 04                   ;
    LDA      #$F8                      ; 0x1786b $B85B A9 F8                   ; A = F8
    STA      $25                       ; 0x1786d $B85D 85 25                   ;
LB85F:                                                                          ;
    LDA      $25                       ; 0x1786f $B85F A5 25                   ;
    STA      $0244                     ; 0x17871 $B861 8D 44 02                ;
    DEC      $0244                     ; 0x17874 $B864 CE 44 02                ;
    LDA      $23                       ; 0x17877 $B867 A5 23                   ;
    STA      $0247                     ; 0x17879 $B869 8D 47 02                ;
    LDA      #$FF                      ; 0x1787c $B86C A9 FF                   ; A = FF
    STA      $0245                     ; 0x1787e $B86E 8D 45 02                ;
    LDA      #$03                      ; 0x17881 $B871 A9 03                   ; A = 03
    STA      $0246                     ; 0x17883 $B873 8D 46 02                ;
    LDX      #$1C                      ; 0x17886 $B876 A2 1C                   ; X = 1C
LB878:                                                                          ;
    LDA      #$C7                      ; 0x17888 $B878 A9 C7                   ; A = C7
    STA      $0224,x                   ; 0x1788a $B87A 9D 24 02                ;
    LDA      #$F5                      ; 0x1788d $B87D A9 F5                   ; A = F5
    STA      $0225,x                   ; 0x1788f $B87F 9D 25 02                ;
    LDA      #$00                      ; 0x17892 $B882 A9 00                   ; A = 00
    STA      $0226,x                   ; 0x17894 $B884 9D 26 02                ;
    LDA      #$10                      ; 0x17897 $B887 A9 10                   ; A = 10
    STA      $0227,x                   ; 0x17899 $B889 9D 27 02                ;
    DEX                                ; 0x1789c $B88C CA                      ;
    DEX                                ; 0x1789d $B88D CA                      ;
    DEX                                ; 0x1789e $B88E CA                      ;
    DEX                                ; 0x1789f $B88F CA                      ;
    BPL      LB878                     ; 0x178a0 $B890 10 E6                   ;
    LDA      $F5                       ; 0x178a2 $B892 A5 F5                   ;only occurs during Register Your Name ; Controller 1 buttons pressed
    AND      #$80                      ; 0x178a4 $B894 29 80                   ; keep bits x... .... (A button)
    BEQ      LB8C4                     ; 0x178a6 $B896 F0 2C                   ;
    LDX      $20                       ; 0x178a8 $B898 A6 20                   ;
    LDA      $1F                       ; 0x178aa $B89A A5 1F                   ;
LB89C:                                                                          ;
    CPX      #$00                      ; 0x178ac $B89C E0 00                   ;
    BEQ      LB8A7                     ; 0x178ae $B89E F0 07                   ;
    CLC                                ; 0x178b0 $B8A0 18                      ;
    ADC      #$0B                      ; 0x178b1 $B8A1 69 0B                   ;
    DEX                                ; 0x178b3 $B8A3 CA                      ;
    JMP      LB89C                     ; 0x178b4 $B8A4 4C 9C B8                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB8A7:                                                                          ;
    PHA                                ; 0x178b7 $B8A7 48                      ;
    LDY      $1E                       ; 0x178b8 $B8A8 A4 1E                   ;; Cursor position in Name Input Screen
    BNE      LB8AE                     ; 0x178ba $B8AA D0 02                   ;
    LDY      #$08                      ; 0x178bc $B8AC A0 08                   ; Y = 08
LB8AE:                                                                          ;
    DEY                                ; 0x178be $B8AE 88                      ;
    LDA      $19                       ; 0x178bf $B8AF A5 19                   ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    ASL                                ; 0x178c1 $B8B1 0A                      ;
    TAX                                ; 0x178c2 $B8B2 AA                      ;
    LDA      LB23C,x                   ; 0x178c3 $B8B3 BD 3C B2                ;
    STA      L0000                     ; 0x178c6 $B8B6 85 00                   ;
    LDA      LB23D,x                   ; 0x178c8 $B8B8 BD 3D B2                ;
    STA      $01                       ; 0x178cb $B8BB 85 01                   ;
    PLA                                ; 0x178cd $B8BD 68                      ;
    TAX                                ; 0x178ce $B8BE AA                      ;
    LDA      bank5_Table_for_Letters_Tile_Mappings,x; 0x178cf $B8BF BD 75 BD       ;
    STA      (L0000),y                 ; 0x178d2 $B8C2 91 00                   ;
LB8C4:                                                                          ;
    LDA      #$20                      ; 0x178d4 $B8C4 A9 20                   ; A = 20
    STA      L0000                     ; 0x178d6 $B8C6 85 00                   ;
    LDA      #$CD                      ; 0x178d8 $B8C8 A9 CD                   ; A = CD
    STA      $01                       ; 0x178da $B8CA 85 01                   ;
    JMP      bank5_Display_Saved_Games_Names; 0x178dc $B8CC 4C 29 B5               ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    JMP      LCF05                     ; 0x178df $B8CF 4C 05 CF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB8D2:                                                                          ;
    LDY      #$D0                      ; 0x178e2 $B8D2 A0 D0                   ; Y = D0
LB8D4:                                                                          ;
    INY                                ; 0x178e4 $B8D4 C8                      ;
    SEC                                ; 0x178e5 $B8D5 38                      ;
    SBC      #$E8                      ; 0x178e6 $B8D6 E9 E8                   ;
    BCS      LB8DC                     ; 0x178e8 $B8D8 B0 02                   ;
    DEC      L0000                     ; 0x178ea $B8DA C6 00                   ;
LB8DC:                                                                          ;
    DEC      L0000                     ; 0x178ec $B8DC C6 00                   ;
    DEC      L0000                     ; 0x178ee $B8DE C6 00                   ;
    DEC      L0000                     ; 0x178f0 $B8E0 C6 00                   ;
    BPL      LB8D4                     ; 0x178f2 $B8E2 10 F0                   ;
    CLC                                ; 0x178f4 $B8E4 18                      ;
    ADC      #$E8                      ; 0x178f5 $B8E5 69 E8                   ;
    BCC      LB8EB                     ; 0x178f7 $B8E7 90 02                   ;
    INC      L0000                     ; 0x178f9 $B8E9 E6 00                   ;
LB8EB:                                                                          ;
    INC      L0000                     ; 0x178fb $B8EB E6 00                   ;
    INC      L0000                     ; 0x178fd $B8ED E6 00                   ;
    INC      L0000                     ; 0x178ff $B8EF E6 00                   ;
    DEY                                ; 0x17901 $B8F1 88                      ;
    STY      $01                       ; 0x17902 $B8F2 84 01                   ;
    LDY      #$D0                      ; 0x17904 $B8F4 A0 D0                   ; Y = D0
LB8F6:                                                                          ;
    INY                                ; 0x17906 $B8F6 C8                      ;
    SEC                                ; 0x17907 $B8F7 38                      ;
    SBC      #$64                      ; 0x17908 $B8F8 E9 64                   ;
    BCS      LB8F6                     ; 0x1790a $B8FA B0 FA                   ;
    DEC      L0000                     ; 0x1790c $B8FC C6 00                   ;
    BPL      LB8F6                     ; 0x1790e $B8FE 10 F6                   ;
    ADC      #$64                      ; 0x17910 $B900 69 64                   ;
    DEY                                ; 0x17912 $B902 88                      ;
    STY      L0000                     ; 0x17913 $B903 84 00                   ;
    LDY      #$D0                      ; 0x17915 $B905 A0 D0                   ; Y = D0
LB907:                                                                          ;
    INY                                ; 0x17917 $B907 C8                      ;
    SEC                                ; 0x17918 $B908 38                      ;
    SBC      #$0A                      ; 0x17919 $B909 E9 0A                   ;
    BCS      LB907                     ; 0x1791b $B90B B0 FA                   ;
    ADC      #$DA                      ; 0x1791d $B90D 69 DA                   ;
    DEY                                ; 0x1791f $B90F 88                      ;
    RTS                                ; 0x17920 $B910 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB911:                                                                          ;
    JSR      LBA6C                     ; 0x17921 $B911 20 6C BA                ;
LB914:                                                                          ;
    LDA      (L0000),y                 ; 0x17924 $B914 B1 00                   ;
    STA      $0777,y                   ; 0x17926 $B916 99 77 07                ; Attack Level (1-8)
    DEY                                ; 0x17929 $B919 88                      ;
    BPL      LB914                     ; 0x1792a $B91A 10 F8                   ;
    INY                                ; 0x1792c $B91C C8                      ;
LB91D:                                                                          ;
    LDA      ($02),y                   ; 0x1792d $B91D B1 02                   ;
    STA      ($04),y                   ; 0x1792f $B91F 91 04                   ;
    JSR      LBAB8                     ; 0x17931 $B921 20 B8 BA                ;
    LDA      $06                       ; 0x17934 $B924 A5 06                   ;
    CMP      #$F5                      ; 0x17936 $B926 C9 F5                   ;
    BNE      LB91D                     ; 0x17938 $B928 D0 F3                   ;
    LDA      $07                       ; 0x1793a $B92A A5 07                   ;
    CMP      #$BB                      ; 0x1793c $B92C C9 BB                   ;
    BNE      LB91D                     ; 0x1793e $B92E D0 ED                   ;
    RTS                                ; 0x17940 $B930 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    JSR      LBA6C                     ; 0x17941 $B931 20 6C BA                ;
    LDY      #$00                      ; 0x17944 $B934 A0 00                   ; Y = 00
    LDA      #$5A                      ; 0x17946 $B936 A9 5A                   ; A = 5A
    STA      ($0C),y                   ; 0x17948 $B938 91 0C                   ;
    LDY      #$31                      ; 0x1794a $B93A A0 31                   ; Y = 31
LB93C:                                                                          ;
    LDA      (L0000),y                 ; 0x1794c $B93C B1 00                   ;
    STA      ($08),y                   ; 0x1794e $B93E 91 08                   ;
    DEY                                ; 0x17950 $B940 88                      ;
    BPL      LB93C                     ; 0x17951 $B941 10 F9                   ;
    INY                                ; 0x17953 $B943 C8                      ;
LB944:                                                                          ;
    LDA      ($02),y                   ; 0x17954 $B944 B1 02                   ;
    STA      ($0A),y                   ; 0x17956 $B946 91 0A                   ;
    JSR      LBAB8                     ; 0x17958 $B948 20 B8 BA                ;
    LDA      $06                       ; 0x1795b $B94B A5 06                   ;
    CMP      #$F5                      ; 0x1795d $B94D C9 F5                   ;
    BNE      LB944                     ; 0x1795f $B94F D0 F3                   ;
    LDA      $07                       ; 0x17961 $B951 A5 07                   ;
    CMP      #$BB                      ; 0x17963 $B953 C9 BB                   ;
    BNE      LB944                     ; 0x17965 $B955 D0 ED                   ;
    RTS                                ; 0x17967 $B957 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_pointer_table6:                                                           ;
.word    L749A                         ; 0x17968 $B958 9A 74                   ;
.word    L757A                         ; 0x1796a $B95A 7A 75                   ;
.word    L765A                         ; 0x1796c $B95C 5A 76                   ;
bank5_Pointer_for_Item_Presence_Bits_Table:                                     ;
.word    bank5_Initial_Item_Presence_Bits_600_61F__West_Hyrule; 0x1796e $B95E 15 BB;
; ---------------------------------------------------------------------------- ;
bank5_code27:                                                                   ;
    LDX      #$02                      ; 0x17970 $B960 A2 02                   ; X = 02
LB962:                                                                          ;
    TXA                                ; 0x17972 $B962 8A                      ;
    JSR      LBA6F                     ; 0x17973 $B963 20 6F BA                ;
    LDY      #$00                      ; 0x17976 $B966 A0 00                   ; Y = 00
    LDA      ($0C),y                   ; 0x17978 $B968 B1 0C                   ;
    CMP      #$A5                      ; 0x1797a $B96A C9 A5                   ;
    BEQ      LB9A3                     ; 0x1797c $B96C F0 35                   ;
    CMP      #$5A                      ; 0x1797e $B96E C9 5A                   ;
    BEQ      LB99D                     ; 0x17980 $B970 F0 2B                   ;
    CMP      #$69                      ; 0x17982 $B972 C9 69                   ;
    BEQ      LB9A7                     ; 0x17984 $B974 F0 31                   ;
    LDY      #$31                      ; 0x17986 $B976 A0 31                   ; Y = 31
LB978:                                                                          ;
    LDA      bank5_Beginning_Values,y  ; 0x17988 $B978 B9 E3 BA                ; Table for Beginning Values (17AE3)
    STA      (L0000),y                 ; 0x1798b $B97B 91 00                   ;
    DEY                                ; 0x1798d $B97D 88                      ;
    BPL      LB978                     ; 0x1798e $B97E 10 F8                   ;
    INY                                ; 0x17990 $B980 C8                      ;
LB981:                                                                          ;
    LDA      ($06),y                   ; 0x17991 $B981 B1 06                   ;
    STA      ($02),y                   ; 0x17993 $B983 91 02                   ;
    INC      $06                       ; 0x17995 $B985 E6 06                   ;
    BNE      LB98B                     ; 0x17997 $B987 D0 02                   ;
    INC      $07                       ; 0x17999 $B989 E6 07                   ;
LB98B:                                                                          ;
    INC      $02                       ; 0x1799b $B98B E6 02                   ;
    BNE      LB991                     ; 0x1799d $B98D D0 02                   ;
    INC      $03                       ; 0x1799f $B98F E6 03                   ;
LB991:                                                                          ;
    LDA      $06                       ; 0x179a1 $B991 A5 06                   ;
    CMP      #$F5                      ; 0x179a3 $B993 C9 F5                   ;
    BNE      LB981                     ; 0x179a5 $B995 D0 EA                   ;
    LDA      $07                       ; 0x179a7 $B997 A5 07                   ;
    CMP      #$BB                      ; 0x179a9 $B999 C9 BB                   ;
    BNE      LB981                     ; 0x179ab $B99B D0 E4                   ;
LB99D:                                                                          ;
    LDY      #$00                      ; 0x179ad $B99D A0 00                   ; Y = 00
    LDA      #$A5                      ; 0x179af $B99F A9 A5                   ; A = A5
    STA      ($0C),y                   ; 0x179b1 $B9A1 91 0C                   ;
LB9A3:                                                                          ;
    DEX                                ; 0x179b3 $B9A3 CA                      ;
    BPL      LB962                     ; 0x179b4 $B9A4 10 BC                   ;
    RTS                                ; 0x179b6 $B9A6 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB9A7:                                                                          ;
    LDY      #$31                      ; 0x179b7 $B9A7 A0 31                   ; Y = 31
LB9A9:                                                                          ;
    LDA      ($08),y                   ; 0x179b9 $B9A9 B1 08                   ;
    STA      (L0000),y                 ; 0x179bb $B9AB 91 00                   ;
    DEY                                ; 0x179bd $B9AD 88                      ;
    BPL      LB9A9                     ; 0x179be $B9AE 10 F9                   ;
    INY                                ; 0x179c0 $B9B0 C8                      ;
LB9B1:                                                                          ;
    LDA      ($0A),y                   ; 0x179c1 $B9B1 B1 0A                   ;
    STA      ($02),y                   ; 0x179c3 $B9B3 91 02                   ;
    TXA                                ; 0x179c5 $B9B5 8A                      ;
    PHA                                ; 0x179c6 $B9B6 48                      ;
    JSR      LBAB8                     ; 0x179c7 $B9B7 20 B8 BA                ;
    PLA                                ; 0x179ca $B9BA 68                      ;
    TAX                                ; 0x179cb $B9BB AA                      ;
    LDA      $06                       ; 0x179cc $B9BC A5 06                   ;
    CMP      #$F5                      ; 0x179ce $B9BE C9 F5                   ;
    BNE      LB9B1                     ; 0x179d0 $B9C0 D0 EF                   ;
    LDA      $07                       ; 0x179d2 $B9C2 A5 07                   ;
    CMP      #$BB                      ; 0x179d4 $B9C4 C9 BB                   ;
    BEQ      LB99D                     ; 0x179d6 $B9C6 F0 D5                   ;
    BNE      LB9B1                     ; 0x179d8 $B9C8 D0 E7                   ;
LB9CA:                                                                          ;
    JSR      LBA6C                     ; 0x179da $B9CA 20 6C BA                ;
    LDY      #$00                      ; 0x179dd $B9CD A0 00                   ; Y = 00
    LDA      #$5A                      ; 0x179df $B9CF A9 5A                   ; A = 5A
    STA      ($0C),y                   ; 0x179e1 $B9D1 91 0C                   ;
    LDY      #$31                      ; 0x179e3 $B9D3 A0 31                   ; Y = 31
LB9D5:                                                                          ;
    LDA      $0777,y                   ; 0x179e5 $B9D5 B9 77 07                ;
    STA      ($08),y                   ; 0x179e8 $B9D8 91 08                   ;
    DEY                                ; 0x179ea $B9DA 88                      ;
    BPL      LB9D5                     ; 0x179eb $B9DB 10 F8                   ;
    INY                                ; 0x179ed $B9DD C8                      ;
LB9DE:                                                                          ;
    LDA      ($04),y                   ; 0x179ee $B9DE B1 04                   ;
    STA      ($0A),y                   ; 0x179f0 $B9E0 91 0A                   ;
    JSR      LBAB8                     ; 0x179f2 $B9E2 20 B8 BA                ;
    LDA      $06                       ; 0x179f5 $B9E5 A5 06                   ;
    CMP      #$F5                      ; 0x179f7 $B9E7 C9 F5                   ;
    BNE      LB9DE                     ; 0x179f9 $B9E9 D0 F3                   ;
    LDA      $07                       ; 0x179fb $B9EB A5 07                   ;
    CMP      #$BB                      ; 0x179fd $B9ED C9 BB                   ;
    BNE      LB9DE                     ; 0x179ff $B9EF D0 ED                   ;
    LDA      #$69                      ; 0x17a01 $B9F1 A9 69                   ; A = 69
    STA      ($0C),y                   ; 0x17a03 $B9F3 91 0C                   ;
    JSR      LBA6C                     ; 0x17a05 $B9F5 20 6C BA                ;
LB9F8:                                                                          ;
    LDA      ($08),y                   ; 0x17a08 $B9F8 B1 08                   ;this is where save game is saved to sram
    STA      (L0000),y                 ; 0x17a0a $B9FA 91 00                   ;
    DEY                                ; 0x17a0c $B9FC 88                      ;
    BPL      LB9F8                     ; 0x17a0d $B9FD 10 F9                   ;
    INY                                ; 0x17a0f $B9FF C8                      ;
LBA00:                                                                          ;
    LDA      ($0A),y                   ; 0x17a10 $BA00 B1 0A                   ;
    STA      ($02),y                   ; 0x17a12 $BA02 91 02                   ;
    JSR      LBAB8                     ; 0x17a14 $BA04 20 B8 BA                ;
    LDA      $06                       ; 0x17a17 $BA07 A5 06                   ;
    CMP      #$F5                      ; 0x17a19 $BA09 C9 F5                   ;
    BNE      LBA00                     ; 0x17a1b $BA0B D0 F3                   ;
    LDA      $07                       ; 0x17a1d $BA0D A5 07                   ;
    CMP      #$BB                      ; 0x17a1f $BA0F C9 BB                   ;
    BNE      LBA00                     ; 0x17a21 $BA11 D0 ED                   ;
LBA13:                                                                          ;
    LDA      #$A5                      ; 0x17a23 $BA13 A9 A5                   ; A = A5
    STA      ($0C),y                   ; 0x17a25 $BA15 91 0C                   ;
    RTS                                ; 0x17a27 $BA17 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBA18:                                                                          ;
    JSR      LBA6F                     ; 0x17a28 $BA18 20 6F BA                ;
    LDY      #$00                      ; 0x17a2b $BA1B A0 00                   ; Y = 00
    LDA      #$69                      ; 0x17a2d $BA1D A9 69                   ; A = 69
    STA      ($0C),y                   ; 0x17a2f $BA1F 91 0C                   ;
    LDY      #$31                      ; 0x17a31 $BA21 A0 31                   ; Y = 31
LBA23:                                                                          ;
    LDA      ($08),y                   ; 0x17a33 $BA23 B1 08                   ;
    STA      (L0000),y                 ; 0x17a35 $BA25 91 00                   ;
    DEY                                ; 0x17a37 $BA27 88                      ;
    BPL      LBA23                     ; 0x17a38 $BA28 10 F9                   ;
    INY                                ; 0x17a3a $BA2A C8                      ;
LBA2B:                                                                          ;
    LDA      ($0A),y                   ; 0x17a3b $BA2B B1 0A                   ;
    STA      ($02),y                   ; 0x17a3d $BA2D 91 02                   ;
    JSR      LBAB8                     ; 0x17a3f $BA2F 20 B8 BA                ;
    LDA      $06                       ; 0x17a42 $BA32 A5 06                   ;
    CMP      #$F5                      ; 0x17a44 $BA34 C9 F5                   ;
    BNE      LBA2B                     ; 0x17a46 $BA36 D0 F3                   ;
    LDA      $07                       ; 0x17a48 $BA38 A5 07                   ;
    CMP      #$BB                      ; 0x17a4a $BA3A C9 BB                   ;
    BEQ      LBA13                     ; 0x17a4c $BA3C F0 D5                   ;
    BNE      LBA2B                     ; 0x17a4e $BA3E D0 EB                   ;
LBA40:                                                                          ;
    TXA                                ; 0x17a50 $BA40 8A                      ;
    JSR      LBA6F                     ; 0x17a51 $BA41 20 6F BA                ;
    LDY      #$00                      ; 0x17a54 $BA44 A0 00                   ; Y = 00
    LDA      #$5A                      ; 0x17a56 $BA46 A9 5A                   ; A = 5A
    STA      ($0C),y                   ; 0x17a58 $BA48 91 0C                   ;
    LDY      #$31                      ; 0x17a5a $BA4A A0 31                   ; Y = 31
LBA4C:                                                                          ;
    LDA      (L0000),y                 ; 0x17a5c $BA4C B1 00                   ;
    STA      ($08),y                   ; 0x17a5e $BA4E 91 08                   ;
    DEY                                ; 0x17a60 $BA50 88                      ;
    BPL      LBA4C                     ; 0x17a61 $BA51 10 F9                   ;
    INY                                ; 0x17a63 $BA53 C8                      ;
LBA54:                                                                          ;
    LDA      ($02),y                   ; 0x17a64 $BA54 B1 02                   ;
    STA      ($0A),y                   ; 0x17a66 $BA56 91 0A                   ;
    TXA                                ; 0x17a68 $BA58 8A                      ;
    PHA                                ; 0x17a69 $BA59 48                      ;
    JSR      LBAB8                     ; 0x17a6a $BA5A 20 B8 BA                ;
    PLA                                ; 0x17a6d $BA5D 68                      ;
    TAX                                ; 0x17a6e $BA5E AA                      ;
    LDA      $06                       ; 0x17a6f $BA5F A5 06                   ;
    CMP      #$F5                      ; 0x17a71 $BA61 C9 F5                   ;
    BNE      LBA54                     ; 0x17a73 $BA63 D0 EF                   ;
    LDA      $07                       ; 0x17a75 $BA65 A5 07                   ;
    CMP      #$BB                      ; 0x17a77 $BA67 C9 BB                   ;
    BNE      LBA54                     ; 0x17a79 $BA69 D0 E9                   ;
    RTS                                ; 0x17a7b $BA6B 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBA6C:                                                                          ;
    LDA      $0772                     ; 0x17a7c $BA6C AD 72 07                ; Current Game Slot
LBA6F:                                                                          ;
    ASL                                ; 0x17a7f $BA6F 0A                      ;
    TAY                                ; 0x17a80 $BA70 A8                      ;
    LDA      bank5_pointer_table7,y    ; 0x17a81 $BA71 B9 C5 BA                ;
    STA      L0000                     ; 0x17a84 $BA74 85 00                   ;
    LDA      bank5_pointer_table7+$01,y; 0x17a86 $BA76 B9 C6 BA                ;
    STA      $01                       ; 0x17a89 $BA79 85 01                   ;
    LDA      bank5_pointer_table7+$01+$05,y; 0x17a8b $BA7B B9 CB BA                ;
    STA      $02                       ; 0x17a8e $BA7E 85 02                   ;
    LDA      bank5_pointer_table7+$01+$05+$01,y; 0x17a90 $BA80 B9 CC BA            ;
    STA      $03                       ; 0x17a93 $BA83 85 03                   ;
    LDA      #$00                      ; 0x17a95 $BA85 A9 00                   ; A = 00
    STA      $04                       ; 0x17a97 $BA87 85 04                   ;
    LDA      #$06                      ; 0x17a99 $BA89 A9 06                   ; A = 06
    STA      $05                       ; 0x17a9b $BA8B 85 05                   ;
    LDA      bank5_Pointer_for_Item_Presence_Bits_Table; 0x17a9d $BA8D AD 5E B9    ;
    STA      $06                       ; 0x17aa0 $BA90 85 06                   ;
    LDA      bank5_Pointer_for_Item_Presence_Bits_Table+$01; 0x17aa2 $BA92 AD 5F B9;
    STA      $07                       ; 0x17aa5 $BA95 85 07                   ;
    LDA      bank5_pointer_table7+$0C,y; 0x17aa7 $BA97 B9 D1 BA                ;
    STA      $08                       ; 0x17aaa $BA9A 85 08                   ;
    LDA      bank5_pointer_table7+$0C+$01,y; 0x17aac $BA9C B9 D2 BA                ;
    STA      $09                       ; 0x17aaf $BA9F 85 09                   ;
    LDA      bank5_pointer_table7+$0C+$01+$05,y; 0x17ab1 $BAA1 B9 D7 BA            ;
    STA      $0A                       ; 0x17ab4 $BAA4 85 0A                   ;
    LDA      bank5_pointer_table7+$0C+$01+$05+$01,y; 0x17ab6 $BAA6 B9 D8 BA        ;
    STA      $0B                       ; 0x17ab9 $BAA9 85 0B                   ;
    LDA      bank5_pointer_table7+$0C+$01+$05+$01+$05,y; 0x17abb $BAAB B9 DD BA    ;
    STA      $0C                       ; 0x17abe $BAAE 85 0C                   ;
    LDA      bank5_pointer_table7+$0C+$01+$05+$01+$05+$01,y; 0x17ac0 $BAB0 B9 DE BA;
    STA      $0D                       ; 0x17ac3 $BAB3 85 0D                   ;
    LDY      #$31                      ; 0x17ac5 $BAB5 A0 31                   ; Y = 31
    RTS                                ; 0x17ac7 $BAB7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBAB8:                                                                          ;
    LDX      #$0A                      ; 0x17ac8 $BAB8 A2 0A                   ; X = 0A
LBABA:                                                                          ;
    INC      L0000,x                   ; 0x17aca $BABA F6 00                   ;
    BNE      LBAC0                     ; 0x17acc $BABC D0 02                   ;
    INC      $01,x                     ; 0x17ace $BABE F6 01                   ;
LBAC0:                                                                          ;
    DEX                                ; 0x17ad0 $BAC0 CA                      ;
    DEX                                ; 0x17ad1 $BAC1 CA                      ;
    BPL      LBABA                     ; 0x17ad2 $BAC2 10 F6                   ;
    RTS                                ; 0x17ad4 $BAC4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_pointer_table7:                                                           ;
.word    L7402                         ; 0x17ad5 $BAC5 02 74                   ;
.word    L7434                         ; 0x17ad7 $BAC7 34 74                   ;
.word    L7466                         ; 0x17ad9 $BAC9 66 74                   ;
.word    L749A                         ; 0x17adb $BACB 9A 74                   ;
.word    L757A                         ; 0x17add $BACD 7A 75                   ;
.word    L765A                         ; 0x17adf $BACF 5A 76                   ;
.word    L6002                         ; 0x17ae1 $BAD1 02 60                   ;
.word    L6034                         ; 0x17ae3 $BAD3 34 60                   ;
.word    L6066                         ; 0x17ae5 $BAD5 66 60                   ;
.word    L6098                         ; 0x17ae7 $BAD7 98 60                   ;
.word    L6178                         ; 0x17ae9 $BAD9 78 61                   ;
.word    L6258                         ; 0x17aeb $BADB 58 62                   ;
.word    L7400                         ; 0x17aed $BADD 00 74                   ;
.word    L7498                         ; 0x17aef $BADF 98 74                   ;
.word    L773A                         ; 0x17af1 $BAE1 3A 77                   ;
; ---------------------------------------------------------------------------- ;
bank5_Beginning_Values:                                                         ;
;stored to 777, ending with last 8 bytes being the name                        ;
.byt    $01                            ; 0x17af3 $BAE3 01                      ;777	atk
                                                                               ;
.byt    $01                            ; 0x17af4 $BAE4 01                      ;778	magic
                                                                               ;
.byt    $01                            ; 0x17af5 $BAE5 01                      ;779	life
                                                                               ;
.byt    $00                            ; 0x17af6 $BAE6 00                      ;77A	
                                                                               ;
.byt    $00                            ; 0x17af7 $BAE7 00                      ;77B	17AF7 - Begin with Shield Magic
                                                                               ;
.byt    $00                            ; 0x17af8 $BAE8 00                      ;77C	17AF8 - Begin with Jump Magic
                                                                               ;
.byt    $00                            ; 0x17af9 $BAE9 00                      ;77D	17AF9 - Begin with Life Magic
                                                                               ;
.byt    $00                            ; 0x17afa $BAEA 00                      ;77E	17AFA - Begin with Fairy Magic
                                                                               ;
.byt    $00                            ; 0x17afb $BAEB 00                      ;77F	17AFB - Begin with Fire Magic
                                                                               ;
.byt    $00                            ; 0x17afc $BAEC 00                      ;780	17AFC - Begin with Reflect Magic
                                                                               ;
.byt    $00                            ; 0x17afd $BAED 00                      ;781	17AFD - Begin with Spell Magic
                                                                               ;
.byt    $00                            ; 0x17afe $BAEE 00                      ;782	17AFE - Begin with Thunder Magic
                                                                               ;
.byt    $04                            ; 0x17aff $BAEF 04                      ;783	17AFF - Number of Magic Containers to begin game
                                                                               ;
.byt    $04                            ; 0x17b00 $BAF0 04                      ;784	17B00 - Number of Heart Containers to begin game
                                                                               ;
.byt    $00                            ; 0x17b01 $BAF1 00                      ;785	17B01 - Begin with Candle
                                                                               ;
.byt    $00                            ; 0x17b02 $BAF2 00                      ;786	17B02 - Begin with Power Glove
                                                                               ;
.byt    $00                            ; 0x17b03 $BAF3 00                      ;787	17B03 - Begin with Raft
                                                                               ;
.byt    $00                            ; 0x17b04 $BAF4 00                      ;788	17B04 - Begin with Boots
                                                                               ;
.byt    $00                            ; 0x17b05 $BAF5 00                      ;789	17B05 - Begin with Flute
                                                                               ;
.byt    $00                            ; 0x17b06 $BAF6 00                      ;78A	17B06 - Begin with Cross
                                                                               ;
.byt    $00                            ; 0x17b07 $BAF7 00                      ;78B	17B07 - Begin with Hammer
                                                                               ;
.byt    $00                            ; 0x17b08 $BAF8 00                      ;78C	17B08 - Begin with Magic Key
                                                                               ;
.byt    $00                            ; 0x17b09 $BAF9 00                      ;78D,X 	; Crystals Placed (1 = crystal placed) 02 03 04 05 06
                                                                               ;
.byt    $00                            ; 0x17b0a $BAFA 00                      ;78D,X 	; Crystals Placed (1 = crystal placed) 02 03 04 05 06
                                                                               ;
.byt    $00                            ; 0x17b0b $BAFB 00                      ;78D,X 	; Crystals Placed (1 = crystal placed) 02 03 04 05 06
                                                                               ;
.byt    $00                            ; 0x17b0c $BAFC 00                      ;78D,X 	; Crystals Placed (1 = crystal placed) 02 03 04 05 06
                                                                               ;
.byt    $00                            ; 0x17b0d $BAFD 00                      ;78D,X 	; Crystals Placed (1 = crystal placed) 02 03 04 05 06
                                                                               ;
.byt    $00                            ; 0x17b0e $BAFE 00                      ;78D,X 	; Crystals Placed (1 = crystal placed) 02 03 04 05 06
                                                                               ;
.byt    $00                            ; 0x17b0f $BAFF 00                      ;793 	; Current number of Keys
                                                                               ;
.byt    $06                            ; 0x17b10 $BB00 06                      ;794 	17B10 - Number of Crystals to begin game
                                                                               ;
.byt    $00                            ; 0x17b11 $BB01 00                      ;795
                                                                               ;
.byt    $00                            ; 0x17b12 $BB02 00                      ;796 	17B12 - Techs (Downward Thrust 10) (Upward Thrust 04) (Both 14)
                                                                               ;
.byt    $00                            ; 0x17b13 $BB03 00                      ;797
                                                                               ;
.byt    $00                            ; 0x17b14 $BB04 00                      ;798 	; Have collected Trophy (10)
                                                                               ;
.byt    $00                            ; 0x17b15 $BB05 00                      ;799 	; Have collected Mirror (01)
                                                                               ;
.byt    $00                            ; 0x17b16 $BB06 00                      ;79A 	; Have collected note from Bagu (08) Medicine (40)
                                                                               ;
.byt    $00                            ; 0x17b17 $BB07 00                      ;79B 	; Have collected some Water (01)
                                                                               ;
.byt    $00                            ; 0x17b18 $BB08 00                      ;79C 	; Have collected Lost Child (20)
                                                                               ;
.byt    $00                            ; 0x17b19 $BB09 00                      ;79D 	; Have 7 Magic Containers (08)
                                                                               ;
.byt    $00                            ; 0x17b1a $BB0A 00                      ;79F 	; Number of Continues used
                                                                               ;
.byt    $00                            ; 0x17b1b $BB0B 00                      ;7A0 	; this is a new game+ file?, set it up during the save game load for newgame+ settings
                                                                               ;
.byt    $00                            ; 0x17b1c $BB0C 00                      ;
bank5_table_for_blanking_out_name:                                              ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x17b1d $BB0D F4 F4 F4 F4 F4 F4 F4 F4 ;table for blanking out name
bank5_Initial_Item_Presence_Bits_600_61F__West_Hyrule:                          ;
;Each byte represents two ($561) maps, high and low byte.  Each bit represents a map page (4 bits/map pages per $561/map). ;
;                                                                              ;
;ROM Bank 	Overworld 	World 	Description 	Base Address                         ;
;1 	0 	0 	West Hyrule 	$600                                                    ;
;1 & 2 	1 	0 	Death Mt. / Maze Is. 	$620                                       ;
;2 	2 	0 	East Hyrule 	$640                                                    ;
;3 	x 	1, 2 	Towns 	$660                                                       ;
;4 	x 	3 	Palaces 1, 2, 5 	$680                                                ;
;4 	x 	4 	Palaces 3, 4, 6 	$6a0                                                ;
;5 	x 	5 	Great Palace 	$6c0                                                   ;
;                                                                              ;
;To calculate which bit represents which screen:                               ;
;                                                                              ;
;addr = lookup_base_address(overworld, world) + (sidescroll_area / 2)          ;
;bit = 7 - (screen_num + 4 * (sidescroll_area & 1))                            ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b25 $BB15 FF FF FF FF FF FF FF FF ;600-61F	;West Hyrule
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b2d $BB1D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b35 $BB25 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b3d $BB2D FF FF FF FF FF FF FF FF ;
bank5_Initial_Item_Presence_Bits_620_63F__DM__MI:                               ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b45 $BB35 FF FF FF FF FF FF FF FF ;620-63F	;DM / MI
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b4d $BB3D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b55 $BB45 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b5d $BB4D FF FF FF FF FF FF FF FF ;
bank5_Initial_Item_Presence_Bits_640_65F__East_Hyrule:                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b65 $BB55 FF FF FF FF FF FF FF FF ;640-65F	;East Hyrule
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b6d $BB5D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b75 $BB65 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b7d $BB6D FF FF FF FF FF FF FF FF ;
bank5_Initial_Item_Presence_Bits_660_67F__Towns:                                ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b85 $BB75 FF FF FF FF FF FF FF FF ;660-67F	;Towns
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b8d $BB7D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b95 $BB85 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17b9d $BB8D FF FF FF FF FF FF FF FF ;
bank5_Initial_Item_Presence_Bits_680_69F__Palaces_Type_A_1_2_5:                 ;
.byt    $FB,$FF,$FF,$9B,$FD,$9F,$FF,$FA; 0x17ba5 $BB95 FB FF FF 9B FD 9F FF FA ;680-69F	;Palaces Type A (1,2,5)
.byt    $FF,$FB,$FD,$FF,$BF,$F9,$FF,$FF; 0x17bad $BB9D FF FB FD FF BF F9 FF FF ;
.byt    $FF,$FF,$FF,$BF,$EF,$AB,$FE,$EF; 0x17bb5 $BBA5 FF FF FF BF EF AB FE EF ;
.byt    $FF,$FD,$FD,$FF,$F9,$97,$9F,$BF; 0x17bbd $BBAD FF FD FD FF F9 97 9F BF ;
bank5_Initial_Item_Presence_Bits_6A0_6BF__Palaces_Type_B_3_4_6:                 ;
.byt    $F5,$9F,$FB,$F5,$EF,$FF,$FB,$FF; 0x17bc5 $BBB5 F5 9F FB F5 EF FF FB FF ;6A0-6BF	;Palaces Type B (3,4,6)
.byt    $7F,$FF,$FF,$FF,$FF,$FF,$FF,$DF; 0x17bcd $BBBD 7F FF FF FF FF FF FF DF ;
.byt    $DF,$DF,$FB,$FD,$FB,$FF,$FF,$DF; 0x17bd5 $BBC5 DF DF FB FD FB FF FF DF ;
.byt    $F9,$FF,$EF,$FD,$FF,$F3,$FF,$DF; 0x17bdd $BBCD F9 FF EF FD FF F3 FF DF ;
bank5_Initial_Item_Presence_Bits_6C0_6DF__Great_Palace:                         ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17be5 $BBD5 FF FF FF FF FF FF FF FF ;6C0-6DF	;Great Palace
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17bed $BBDD FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17bf5 $BBE5 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17bfd $BBED FF FF FF FF FF FF FF FF ;
bank5_Table_for_some_palettes:                                                  ;
.byt    $3F,$00,$20,$0F,$30,$12,$16,$0F; 0x17c05 $BBF5 3F 00 20 0F 30 12 16 0F ;
.byt    $30,$30,$30,$0F,$30,$30,$30,$0F; 0x17c0d $BBFD 30 30 30 0F 30 30 30 0F ;
.byt    $30,$30,$30,$0F,$18,$36,$2A,$0F; 0x17c15 $BC05 30 30 30 0F 18 36 2A 0F ;
.byt    $16,$27,$30,$0F,$30,$30,$30,$0F; 0x17c1d $BC0D 16 27 30 0F 30 30 30 0F ;
.byt    $27,$27,$0F,$FF                ; 0x17c25 $BC15 27 27 0F FF             ;
bank5_Tables_for_Selection_Screen_Text_:                                        ;
.byt    $20,$6A,$0B                    ; 0x17c29 $BC19 20 6A 0B                ;PPU Address 206A, transfer B bytes
                                                                               ;
.byt    $EC,$F4,$DE,$F4,$E5,$F4,$DE,$F4; 0x17c2c $BC1C EC F4 DE F4 E5 F4 DE F4 ;S E L E C T
.byt    $DC,$F4,$ED                    ; 0x17c34 $BC24 DC F4 ED                ;
                                                                               ;
.byt    $20,$82,$01,$CA                ; 0x17c37 $BC27 20 82 01 CA             ;Top-Left Corner of Frame
                                                                               ;
.byt    $20,$83,$5A,$CB                ; 0x17c3b $BC2B 20 83 5A CB             ;Repeat CB x 1A Horizontally - Top of Frame
                                                                               ;
.byt    $20,$9D,$01,$CA                ; 0x17c3f $BC2F 20 9D 01 CA             ;Top-Right Corner of Frame
                                                                               ;
.byt    $20,$A2,$D2,$CC                ; 0x17c43 $BC33 20 A2 D2 CC             ;Repeat CC x 12 Vertically - Left Side of Frame
                                                                               ;
.byt    $20,$BD,$D2,$CC                ; 0x17c47 $BC37 20 BD D2 CC             ;Repeat CC x 12 Vertically - Right Side of Frame
                                                                               ;
.byt    $20,$C7,$06,$F6,$E7,$DA,$E6,$DE; 0x17c4b $BC3B 20 C7 06 F6 E7 DA E6 DE ;-NAME-
.byt    $F6                            ; 0x17c53 $BC43 F6                      ;
                                                                               ;
.byt    $20,$D2,$07,$F6,$E5,$DE,$EF,$DE; 0x17c54 $BC44 20 D2 07 F6 E5 DE EF DE ;-LEVEL-
.byt    $E5,$F6                        ; 0x17c5c $BC4C E5 F6                   ;
                                                                               ;
.byt    $21,$10,$0B,$C9,$F6,$D0,$F4,$FA; 0x17c5e $BC4E 21 10 0B C9 F6 D0 F4 FA ;/-0.x.0.y.0 (Power/Magic/Life)
.byt    $F6,$D0,$F4,$F8,$F6,$D0        ; 0x17c66 $BC56 F6 D0 F4 F8 F6 D0       ;
                                                                               ;
.byt    $21,$70,$0B,$C9,$F6,$D0,$F4,$FA; 0x17c6c $BC5C 21 70 0B C9 F6 D0 F4 FA ;/-0.x.0.y.0 (Power/Magic/Life)
.byt    $F6,$D0,$F4,$F8,$F6,$D0        ; 0x17c74 $BC64 F6 D0 F4 F8 F6 D0       ;
                                                                               ;
.byt    $21,$D0,$0B,$C9,$F6,$D0,$F4,$FA; 0x17c7a $BC6A 21 D0 0B C9 F6 D0 F4 FA ;/-0.x.0.y.0 (Power/Magic/Life)
.byt    $F6,$D0,$F4,$F8,$F6,$D0        ; 0x17c82 $BC72 F6 D0 F4 F8 F6 D0       ;
                                                                               ;
.byt    $22,$46,$12,$EB,$DE,$E0,$E2,$EC; 0x17c88 $BC78 22 46 12 EB DE E0 E2 EC ;REGISTER YOUR NAME
.byt    $ED,$DE,$EB,$F4,$F2,$E8,$EE,$EB; 0x17c90 $BC80 ED DE EB F4 F2 E8 EE EB ;
.byt    $F4,$E7,$DA,$E6,$DE            ; 0x17c98 $BC88 F4 E7 DA E6 DE          ;
                                                                               ;
.byt    $21,$29,$03,$00,$00,$00        ; 0x17c9d $BC8D 21 29 03 00 00 00       ;
                                                                               ;
.byt    $21,$89,$03,$00,$00,$00        ; 0x17ca3 $BC93 21 89 03 00 00 00       ;
                                                                               ;
.byt    $21,$E9,$03,$00,$00,$00        ; 0x17ca9 $BC99 21 E9 03 00 00 00       ;
                                                                               ;
.byt    $22,$A6,$10                    ; 0x17caf $BC9F 22 A6 10                ;PPU address 22A6, transfer 10 bytes
                                                                               ;
.byt    $DE,$E5,$E2,$E6,$E2,$E7,$DA,$ED; 0x17cb2 $BCA2 DE E5 E2 E6 E2 E7 DA ED ;ELIMINATION MODE
.byt    $E2,$E8,$E7,$F4,$E6,$E8,$DD,$DE; 0x17cba $BCAA E2 E8 E7 F4 E6 E8 DD DE ;
                                                                               ;
.byt    $22,$E2,$01,$CA                ; 0x17cc2 $BCB2 22 E2 01 CA             ;Bottom-Left Corner of Frame
                                                                               ;
.byt    $22,$E3,$5A,$CB                ; 0x17cc6 $BCB6 22 E3 5A CB             ;Bottom of Frame
                                                                               ;
.byt    $22,$FD,$01,$CA                ; 0x17cca $BCBA 22 FD 01 CA             ;Bottom-Right Corner of Frame
                                                                               ;
.byt    $FF                            ; 0x17cce $BCBE FF                      ;
                                                                               ;
.byt    $20,$64,$58,$CB                ; 0x17ccf $BCBF 20 64 58 CB             ;
                                                                               ;
.byt    $20,$66,$14,$F4                ; 0x17cd3 $BCC3 20 66 14 F4             ;
                                                                               ;
.byt    $EB,$DE,$E0,$E2,$EC,$ED,$DE,$EB; 0x17cd7 $BCC7 EB DE E0 E2 EC ED DE EB ;REGISTER YOUR NAME 
.byt    $F4,$F2,$E8,$EE,$EB,$F4,$E7,$DA; 0x17cdf $BCCF F4 F2 E8 EE EB F4 E7 DA ;
.byt    $E6,$DE,$F4                    ; 0x17ce7 $BCD7 E6 DE F4                ;
                                                                               ;
.byt    $21,$ED,$03                    ; 0x17cea $BCDA 21 ED 03                ;
                                                                               ;
.byt    $DE,$E7,$DD                    ; 0x17ced $BCDD DE E7 DD                ;END
                                                                               ;
.byt    $22,$24,$01,$CA                ; 0x17cf0 $BCE0 22 24 01 CA             ;
                                                                               ;
.byt    $22,$25,$57,$CB                ; 0x17cf4 $BCE4 22 25 57 CB             ;
                                                                               ;
.byt    $22,$3C,$01,$CA                ; 0x17cf8 $BCE8 22 3C 01 CA             ;
                                                                               ;
.byt    $22,$44,$C7,$CC                ; 0x17cfc $BCEC 22 44 C7 CC             ;
                                                                               ;
.byt    $22,$5C,$C7,$CC                ; 0x17d00 $BCF0 22 5C C7 CC             ;
                                                                               ;
.byt    $23,$24,$01,$CA                ; 0x17d04 $BCF4 23 24 01 CA             ;
                                                                               ;
.byt    $23,$25,$57,$CB                ; 0x17d08 $BCF8 23 25 57 CB             ;
                                                                               ;
.byt    $23,$3C,$01,$CA                ; 0x17d0c $BCFC 23 3C 01 CA             ;
                                                                               ;
.byt    $22,$46,$15                    ; 0x17d10 $BD00 22 46 15                ;
                                                                               ;
.byt    $DA,$F4,$DB,$F4,$DC,$F4,$DD,$F4; 0x17d13 $BD03 DA F4 DB F4 DC F4 DD F4 ;A B C D E F G H I J K
.byt    $DE,$F4,$DF,$F4,$E0,$F4,$E1,$F4; 0x17d1b $BD0B DE F4 DF F4 E0 F4 E1 F4 ;
.byt    $E2,$F4,$E3,$F4,$E4            ; 0x17d23 $BD13 E2 F4 E3 F4 E4          ;
                                                                               ;
.byt    $22,$86,$15                    ; 0x17d28 $BD18 22 86 15                ;
                                                                               ;
.byt    $E5,$F4,$E6,$F4,$E7,$F4,$E8,$F4; 0x17d2b $BD1B E5 F4 E6 F4 E7 F4 E8 F4 ;L M N O P Q R S T U V
.byt    $E9,$F4,$EA,$F4,$EB,$F4,$EC,$F4; 0x17d33 $BD23 E9 F4 EA F4 EB F4 EC F4 ;
.byt    $ED,$F4,$EE,$F4,$EF            ; 0x17d3b $BD2B ED F4 EE F4 EF          ;
                                                                               ;
.byt    $22,$C6,$0B                    ; 0x17d40 $BD30 22 C6 0B                ;
                                                                               ;
.byt    $F0,$F4,$F1,$F4,$F2,$F4,$F3,$F4; 0x17d43 $BD33 F0 F4 F1 F4 F2 F4 F3 F4 ;W X Y Z - .
.byt    $F6,$F4,$CF                    ; 0x17d4b $BD3B F6 F4 CF                ;
                                                                               ;
.byt    $23,$06,$13                    ; 0x17d4e $BD3E 23 06 13                ;
                                                                               ;
.byt    $D0,$F4,$D1,$F4,$D2,$F4,$D3,$F4; 0x17d51 $BD41 D0 F4 D1 F4 D2 F4 D3 F4 ;0 1 2 3 4 5 6 7 8 9
.byt    $D4,$F4,$D5,$F4,$D6,$F4,$D7,$F4; 0x17d59 $BD49 D4 F4 D5 F4 D6 F4 D7 F4 ;
.byt    $D8,$F4,$D9                    ; 0x17d61 $BD51 D8 F4 D9                ;
                                                                               ;
.byt    $FF                            ; 0x17d64 $BD54 FF                      ;
                                                                               ;
.byt    $20,$64,$58,$CB                ; 0x17d65 $BD55 20 64 58 CB             ;
                                                                               ;
.byt    $20,$67,$12                    ; 0x17d69 $BD59 20 67 12                ;
                                                                               ;
.byt    $F4,$DE,$E5,$E2,$E6,$E2,$E7,$DA; 0x17d6c $BD5C F4 DE E5 E2 E6 E2 E7 DA ;ELIMINATION MODE 
.byt    $ED,$E2,$E8,$E7,$F4,$E6,$E8,$DD; 0x17d74 $BD64 ED E2 E8 E7 F4 E6 E8 DD ;
.byt    $DE,$F4                        ; 0x17d7c $BD6C DE F4                   ;
                                                                               ;
.byt    $21,$ED,$03                    ; 0x17d7e $BD6E 21 ED 03                ;
                                                                               ;
.byt    $DE,$E7,$DD                    ; 0x17d81 $BD71 DE E7 DD                ;
                                                                               ;
.byt    $FF                            ; 0x17d84 $BD74 FF                      ;
bank5_Table_for_Letters_Tile_Mappings:                                          ;
.byt    $DA,$DB,$DC,$DD,$DE,$DF,$E0,$E1; 0x17d85 $BD75 DA DB DC DD DE DF E0 E1 ;ABCDEFGHIJK
.byt    $E2,$E3,$E4                    ; 0x17d8d $BD7D E2 E3 E4                ;
                                                                               ;
.byt    $E5,$E6,$E7,$E8,$E9,$EA,$EB,$EC; 0x17d90 $BD80 E5 E6 E7 E8 E9 EA EB EC ;LMNOPQRSTUV
.byt    $ED,$EE,$EF                    ; 0x17d98 $BD88 ED EE EF                ;
                                                                               ;
.byt    $F0,$F1,$F2,$F3,$F6,$CF,$00,$00; 0x17d9b $BD8B F0 F1 F2 F3 F6 CF 00 00 ;WXYZ-.     
.byt    $00,$00,$00                    ; 0x17da3 $BD93 00 00 00                ;
                                                                               ;
.byt    $D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7; 0x17da6 $BD96 D0 D1 D2 D3 D4 D5 D6 D7 ;0123456789 
.byt    $D8,$D9,$F4                    ; 0x17dae $BD9E D8 D9 F4                ;
bank5_UNUSED_BDA1:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17db1 $BDA1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17db9 $BDA9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17dc1 $BDB1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17dc9 $BDB9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17dd1 $BDC1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17dd9 $BDC9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17de1 $BDD1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17de9 $BDD9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17df1 $BDE1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17df9 $BDE9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e01 $BDF1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e09 $BDF9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e11 $BE01 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e19 $BE09 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e21 $BE11 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e29 $BE19 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e31 $BE21 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e39 $BE29 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e41 $BE31 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e49 $BE39 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e51 $BE41 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e59 $BE49 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e61 $BE51 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e69 $BE59 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e71 $BE61 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e79 $BE69 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e81 $BE71 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e89 $BE79 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e91 $BE81 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17e99 $BE89 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ea1 $BE91 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ea9 $BE99 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17eb1 $BEA1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17eb9 $BEA9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ec1 $BEB1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ec9 $BEB9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ed1 $BEC1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ed9 $BEC9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ee1 $BED1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ee9 $BED9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ef1 $BEE1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ef9 $BEE9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f01 $BEF1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0x17f09 $BEF9 FF FF FF FF FF FF FF    ;
LBF00:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f10 $BF00 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f18 $BF08 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f20 $BF10 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f28 $BF18 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f30 $BF20 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f38 $BF28 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f40 $BF30 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f48 $BF38 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f50 $BF40 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f58 $BF48 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f60 $BF50 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17f68 $BF58 FF FF FF FF FF FF FF FF ;
bank5_table_Some_palettes:                                                      ;
.byt    $0F,$30,$12,$16,$0F,$08,$28,$38; 0x17f70 $BF60 0F 30 12 16 0F 08 28 38 ;
.byt    $0F,$08,$16,$30,$0F,$3C,$1C,$0C; 0x17f78 $BF68 0F 08 16 30 0F 3C 1C 0C ;
; ---------------------------------------------------------------------------- ;
bank5_codeEND:                                                                  ;
    SEI                                ; 0x17f80 $BF70 78                      ;
    CLD                                ; 0x17f81 $BF71 D8                      ;
    LDX      #$00                      ; 0x17f82 $BF72 A2 00                   ; X = 00
    STX      $2000                     ; 0x17f84 $BF74 8E 00 20                ;
    INX                                ; 0x17f87 $BF77 E8                      ;
LBF78:                                                                          ;
    LDA      $2002                     ; 0x17f88 $BF78 AD 02 20                ;
    BPL      LBF78                     ; 0x17f8b $BF7B 10 FB                   ;
    DEX                                ; 0x17f8d $BF7D CA                      ;
    BEQ      LBF78                     ; 0x17f8e $BF7E F0 F8                   ;
    TXS                                ; 0x17f90 $BF80 9A                      ;
    STX      bank5_nothing             ; 0x17f91 $BF81 8E 00 80                ;
    STX      LA000                     ; 0x17f94 $BF84 8E 00 A0                ;
    STX      bank7_PowerON_code        ; 0x17f97 $BF87 8E 00 C0                ;
    STX      LE000                     ; 0x17f9a $BF8A 8E 00 E0                ;
    LDA      #$0F                      ; 0x17f9d $BF8D A9 0F                   ; A = 0F
    JSR      LBF9D                     ; 0x17f9f $BF8F 20 9D BF                ;
    JSR      LBFB1                     ; 0x17fa2 $BF92 20 B1 BF                ;
    LDA      #$07                      ; 0x17fa5 $BF95 A9 07                   ; A = 07
    JSR      LBFCC                     ; 0x17fa7 $BF97 20 CC BF                ;
    JMP      bank7_PowerON_code        ; 0x17faa $BF9A 4C 00 C0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBF9D:                                                                          ;
    STA      bank5_nothing             ; 0x17fad $BF9D 8D 00 80                ;
    LSR                                ; 0x17fb0 $BFA0 4A                      ;
    STA      bank5_nothing             ; 0x17fb1 $BFA1 8D 00 80                ;
    LSR                                ; 0x17fb4 $BFA4 4A                      ;
    STA      bank5_nothing             ; 0x17fb5 $BFA5 8D 00 80                ;
    LSR                                ; 0x17fb8 $BFA8 4A                      ;
    STA      bank5_nothing             ; 0x17fb9 $BFA9 8D 00 80                ;
    LSR                                ; 0x17fbc $BFAC 4A                      ;
    STA      bank5_nothing             ; 0x17fbd $BFAD 8D 00 80                ;
    RTS                                ; 0x17fc0 $BFB0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBFB1:                                                                          ;
    STA      LA000                     ; 0x17fc1 $BFB1 8D 00 A0                ;
    LSR                                ; 0x17fc4 $BFB4 4A                      ;
    STA      LA000                     ; 0x17fc5 $BFB5 8D 00 A0                ;
    LSR                                ; 0x17fc8 $BFB8 4A                      ;
    STA      LA000                     ; 0x17fc9 $BFB9 8D 00 A0                ;
    LSR                                ; 0x17fcc $BFBC 4A                      ;
    STA      LA000                     ; 0x17fcd $BFBD 8D 00 A0                ;
    LSR                                ; 0x17fd0 $BFC0 4A                      ;
    STA      LA000                     ; 0x17fd1 $BFC1 8D 00 A0                ;
    RTS                                ; 0x17fd4 $BFC4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      #$00                      ; 0x17fd5 $BFC5 A9 00                   ; A = 00
    BEQ      LBFCC                     ; 0x17fd7 $BFC7 F0 03                   ;
    LDA      $0769                     ; 0x17fd9 $BFC9 AD 69 07                ;; Bank to switch to (other than 0 or 7)
LBFCC:                                                                          ;
    STA      LE000                     ; 0x17fdc $BFCC 8D 00 E0                ;
    LSR                                ; 0x17fdf $BFCF 4A                      ;
    STA      LE000                     ; 0x17fe0 $BFD0 8D 00 E0                ;
    LSR                                ; 0x17fe3 $BFD3 4A                      ;
    STA      LE000                     ; 0x17fe4 $BFD4 8D 00 E0                ;
    LSR                                ; 0x17fe7 $BFD7 4A                      ;
    STA      LE000                     ; 0x17fe8 $BFD8 8D 00 E0                ;
    LSR                                ; 0x17feb $BFDB 4A                      ;
    STA      LE000                     ; 0x17fec $BFDC 8D 00 E0                ;
    RTS                                ; 0x17fef $BFDF 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank5_UNUSED_BFE0:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ff0 $BFE0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x17ff8 $BFE8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x18000 $BFF0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF                        ; 0x18008 $BFF8 FF FF                   ;
bank5_NMI_Reset_and_Break_Vectors:                                              ;
.byt    $7B,$C0,$70,$BF,$F0,$FF        ; 0x1800a $BFFA 7B C0 70 BF F0 FF       ;
; ---------------------------------------------------------------------------- ;
