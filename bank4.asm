; DISASSEMBLY ORIGINALLY WROTE BY TRAX (99.9% of his work)
; * = $8000                                                                      ;
; da65 V2.18 
; Created     2021-04-12 11 24 31                                              ;
; Input file  bank4_and_7.nes                                                  ;
; Page        1                                                                ;
                                                                               ;
                                                                               ;
;.setcpu  "6502"                                                               ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L0000 = $0000
L000E = $000E
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
L6060 = $6060
L6261 = $6261
L696C = $696C
L7000 = $7000
L7001 = $7001
L7006 = $7006
L700F = $700F
L7018 = $7018
L701D = $701D
L7024 = $7024
L7029 = $7029
L7032 = $7032
L7037 = $7037
L7040 = $7040
L7047 = $7047
L704C = $704C
L7053 = $7053
L705C = $705C
L7069 = $7069
L7070 = $7070
L7079 = $7079
L7080 = $7080
L7087 = $7087
L7092 = $7092
L7099 = $7099
L70A0 = $70A0
L70AC = $70AC
L70B9 = $70B9
L70C6 = $70C6
L70D5 = $70D5
L70DC = $70DC
L70E3 = $70E3
L70EA = $70EA
L70ED = $70ED
L70FA = $70FA
L7101 = $7101
L7106 = $7106
L710D = $710D
L7114 = $7114
L711F = $711F
L7126 = $7126
L7131 = $7131
L713E = $713E
L7147 = $7147
L7150 = $7150
L7157 = $7157
L715E = $715E
L7169 = $7169
L7170 = $7170
L717B = $717B
L717E = $717E
L7189 = $7189
L7194 = $7194
L71A1 = $71A1
L71AA = $71AA
L71B1 = $71B1
L71BC = $71BC
L71C1 = $71C1
L71C6 = $71C6
L71CB = $71CB
L71D8 = $71D8
L71DD = $71DD
L71E0 = $71E0
L71E5 = $71E5
L71F0 = $71F0
L71F9 = $71F9
L71FC = $71FC
L7209 = $7209
L720E = $720E
L7215 = $7215
L7222 = $7222
L7227 = $7227
L7230 = $7230
L723B = $723B
L7240 = $7240
L7247 = $7247
L7250 = $7250
L725D = $725D
L7266 = $7266
L726B = $726B
L7270 = $7270
L7277 = $7277
L727C = $727C
L7281 = $7281
L7286 = $7286
L7291 = $7291
L7296 = $7296
L729B = $729B
L72A2 = $72A2
L72AB = $72AB
L72AE = $72AE
L72B3 = $72B3
L72BE = $72BE
L72C3 = $72C3
L72C8 = $72C8
L72CD = $72CD
L72D6 = $72D6
L72DD = $72DD
L72E4 = $72E4
L72EF = $72EF
L72F8 = $72F8
L7305 = $7305
L7308 = $7308
L7313 = $7313
L731C = $731C
L7323 = $7323
L732A = $732A
L7339 = $7339
L7342 = $7342
L734B = $734B
L734E = $734E
L7353 = $7353
L735E = $735E
L7367 = $7367
L736A = $736A
L7377 = $7377
L737E = $737E
L7389 = $7389
L7392 = $7392
L7395 = $7395
L739C = $739C
L73A1 = $73A1
L73A4 = $73A4
L73A9 = $73A9
L73B2 = $73B2
L73BF = $73BF
L73C6 = $73C6
LC2A6 = $C2A6
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
LE469 = $E469
LE48A = $E48A
LE48B = $E48B
LE4D9 = $E4D9
LE563 = $E563
LE579 = $E579
LE617 = $E617
LE726 = $E726
LE942 = $E942
LEA14 = $EA14
LEA1C = $EA1C
LEA32 = $EA32
LF0C6 = $F0C6
LF0D7 = $F0D7
LF1F4 = $F1F4

.import Set_Item_RAM_bit_to_0__Bits_0_3
.import bank7_Change_Enemy_Facing_Direction_and_X_Velocity
.import bank7_code51
.import bank7_Determine_Enemy_Facing_Direction_relative_to_Link
.import bank7_Display
.import bank7_Enemy_Routines1_Bago_Bago_Generator
.import bank7_Enemy_Routines1_Bago_Bago0
.import bank7_Enemy_Routines1_Bago_Bago1
.import bank7_Enemy_Routines1_Bot
.import bank7_Enemy_Routines1_Elevator
.import bank7_Enemy_Routines1_Fairy
.import bank7_Enemy_Routines1_Locked_Door
.import bank7_Enemy_Routines1_Myu
.import bank7_Enemy_Routines1_Octorok
.import bank7_Enemy_Routines1_Red_Jar
.import bank7_Enemy_Routines2_BagoBago
.import bank7_Enemy_Routines2_Bot_and_Bit
.import bank7_Enemy_Routines2_Elevator
.import bank7_Enemy_Routines2_Fairy
.import bank7_Enemy_Routines2_LockedDoor
.import bank7_Enemy_Routines2_Moa
.import bank7_Enemy_Routines2_Myu
.import bank7_Enemy_Routines2_Octorok
.import bank7_Enemy_Routines2_RedJar
.import bank7_Enemy_Routines2_unknown
.import bank7_Enemy_Stops_when_Hit
.import bank7_Floor_Y_Position
.import bank7_Gravity
.import bank7_idem__maybe
.import bank7_Link_Collision_Detection
.import bank7_Link_Hit_Routine
.import bank7_PowerON_code
.import bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP
.import bank7_remove_enemy_or_item
.import bank7_Set_RAM_Address_for_Object0E0F
.import bank7_Set_tile_and_move_right_1_column
.import bank7_Simple_Horizontal_Movement
.import bank7_Simple_Vertical_Movement
.import bank7_Spawn_New_Projectile
.import bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least

.segment "BANK4"

; ---------------------------------------------------------------------------- ;
bank4_Pointer_table_for_Background_Areas_Data:                                  ;
.word    bank4_Area_Data_for_Palaces_Type_A; 0x10010 $8000 1F 86               ;
.word    bank4_Area_Data_Palaces_Type_B0; 0x10012 $8002 FC A0                  ;
.word    LA163                         ; 0x10014 $8004 63 A1                   ;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x10016 $8006 E5 82      ;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x10018 $8008 E5 82      ;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x1001a $800A E5 82      ;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x1001c $800C E5 82      ;
; ---------------------------------------------------------------------------- ;
bank4_Default_Palettes_for_Palaces_Type_A_B_:                                   ;
.byt    $22,$30,$12,$16,$22,$0F,$10,$30; 0x1001e $800E 22 30 12 16 22 0F 10 30 ;
.byt    $22,$27,$17,$0F,$22,$30,$10,$0F; 0x10026 $8016 22 27 17 0F 22 30 10 0F ;
.byt    $0F,$30,$12,$16,$0F,$00,$10,$30; 0x1002e $801E 0F 30 12 16 0F 00 10 30 ;
.byt    $0F,$00,$16,$30,$0F,$3C,$1C,$0C; 0x10036 $8026 0F 00 16 30 0F 3C 1C 0C ;
.byt    $0F,$30,$12,$16,$0F,$0C,$1C,$3C; 0x1003e $802E 0F 30 12 16 0F 0C 1C 3C ;
.byt    $0F,$0C,$16,$30,$0F,$37,$27,$07; 0x10046 $8036 0F 0C 16 30 0F 37 27 07 ;
.byt    $0F,$30,$12,$16,$0F,$09,$29,$39; 0x1004e $803E 0F 30 12 16 0F 09 29 39 ;
.byt    $0F,$09,$16,$30,$0F,$26,$16,$06; 0x10056 $8046 0F 09 16 30 0F 26 16 06 ;
.byt    $0F,$30,$12,$16,$0F,$06,$16,$26; 0x1005e $804E 0F 30 12 16 0F 06 16 26 ;
.byt    $0F,$06,$16,$30,$0F,$34,$24,$04; 0x10066 $8056 0F 06 16 30 0F 34 24 04 ;
.byt    $0F,$30,$12,$16,$0F,$07,$27,$37; 0x1006e $805E 0F 30 12 16 0F 07 27 37 ;
.byt    $0F,$07,$16,$30,$0F,$22,$12,$02; 0x10076 $8066 0F 07 16 30 0F 22 12 02 ;
.byt    $0F,$30,$12,$16,$0F,$00,$10,$30; 0x1007e $806E 0F 30 12 16 0F 00 10 30 ;
.byt    $0F,$00,$16,$30,$0F,$3C,$1C,$0C; 0x10086 $8076 0F 00 16 30 0F 3C 1C 0C ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x1008e $807E 21 30 12 16 21 37 18 0F ;
.byt    $21,$30,$11,$01,$21,$30,$1C,$0C; 0x10096 $8086 21 30 11 01 21 30 1C 0C ;
.byt    $0F,$30,$12,$16,$0F,$12,$01,$0F; 0x1009e $808E 0F 30 12 16 0F 12 01 0F ;
.byt    $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F; 0x100a6 $8096 0F 0F 0F 0F 0F 0F 0F 0F ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x100ae $809E FF 18 36 2A FF 16 27 30 ;
.byt    $FF,$06,$16,$30,$FF,$02,$21,$30; 0x100b6 $80A6 FF 06 16 30 FF 02 21 30 ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x100be $80AE FF 18 36 2A FF 16 27 30 ;
.byt    $FF,$07,$16,$36,$FF,$00,$10,$30; 0x100c6 $80B6 FF 07 16 36 FF 00 10 30 ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x100ce $80BE FF 18 36 2A FF 16 27 30 ;
.byt    $FF,$06,$16                    ; 0x100d6 $80C6 FF 06 16                ;
L80C9:                                                                          ;
.byt    $30,$FF,$0C,$1C,$3C,$FF,$18,$36; 0x100d9 $80C9 30 FF 0C 1C 3C FF 18 36 ;
.byt    $2A,$FF,$16,$27,$30,$FF,$0F,$1C; 0x100e1 $80D1 2A FF 16 27 30 FF 0F 1C ;
.byt    $2C,$FF,$0F,$15,$25,$FF,$01,$21; 0x100e9 $80D9 2C FF 0F 15 25 FF 01 21 ;
.byt    $11,$FF,$16,$27                ; 0x100f1 $80E1 11 FF 16 27             ;
L80E5:                                                                          ;
.byt    $30,$FF,$0F,$0F,$0F,$FF,$0F,$0F; 0x100f5 $80E5 30 FF 0F 0F 0F FF 0F 0F ;
.byt    $0F                            ; 0x100fd $80ED 0F                      ;
; ---------------------------------------------------------------------------- ;
bank4_code0:                                                                    ;
    TXA                                ; 0x100fe $80EE 8A                      ;
    LSR                                ; 0x100ff $80EF 4A                      ;
    LSR                                ; 0x10100 $80F0 4A                      ;
    LSR                                ; 0x10101 $80F1 4A                      ;
    LSR                                ; 0x10102 $80F2 4A                      ;
    TAX                                ; 0x10103 $80F3 AA                      ;
    DEX                                ; 0x10104 $80F4 CA                      ;
    LDA      $0730                     ; 0x10105 $80F5 AD 30 07                ; Position of Object Placement
    AND      #$F0                      ; 0x10108 $80F8 29 F0                   ; keep bits xxxx ....
    CMP      #$F0                      ; 0x1010a $80FA C9 F0                   ;
    BNE      L8103                     ; 0x1010c $80FC D0 05                   ;
    TXA                                ; 0x1010e $80FE 8A                      ;
    CLC                                ; 0x1010f $80FF 18                      ;
    ADC      #$0F                      ; 0x10110 $8100 69 0F                   ;
    TAX                                ; 0x10112 $8102 AA                      ;
L8103:                                                                          ;
    TXA                                ; 0x10113 $8103 8A                      ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x10114 $8104 20 85 D3;
bank4_Pointer_table_for_Objects_Construction_Routines:                          ;
.word    bank4_Objects_Construction_Routines_Object_1_high_X_wide; 0x10117 $8107 99 81;Object 1 high, X wide	(1x)
.word    bank4_Objects_Construction_Routines_Object_1_high_X_wide; 0x10119 $8109 99 81;Object 1 high, X wide	(2x)
.word    bank4_Objects_Construction_Routines_Object_1_high_X_wide; 0x1011b $810B 99 81;Object 1 high, X wide	(3x)
.word    bank4_Objects_Construction_Routines_Object_1_high_X_wide; 0x1011d $810D 99 81;Object 1 high, X wide	(4x)
.word    bank4_Objects_Construction_Routines_Object_1_high_X_wide; 0x1011f $810F 99 81;Object 1 high, X wide	(5x)
.word    bank4_Objects_Construction_Routines_Object_2_high_X_wide; 0x10121 $8111 9F 81;Object 2 high, X wide	(6x)
.word    bank4_Objects_Construction_Routines_Object_2_high_X_wide; 0x10123 $8113 9F 81;Object 2 high, X wide	(7x)
.word    bank4_Objects_Construction_Routines_Object_2_high_X_wide; 0x10125 $8115 9F 81;Object 2 high, X wide	(8x)
.word    bank4_Objects_Construction_Routines_Object_2_high_X_wide; 0x10127 $8117 9F 81;Object 2 high, X wide	(9x)
.word    bank4_Objects_Construction_Routines_Object_2_high_X_wide; 0x10129 $8119 9F 81;Object 2 high, X wide	(Ax)
.word    bank4_Objects_Construction_Routines_Object_X_high_1_wide_single_tile_type; 0x1012b $811B C0 81;Object X high, 1 wide, single tile type	(Bx)
.word    bank4_Objects_Construction_Routines_Object_X_high_1_wide; 0x1012d $811D C6 81;Object X high, 1 wide	(Cx)
.word    bank4_Objects_Construction_Routines_Object_X_high_1_wide; 0x1012f $811F C6 81;Object X high, 1 wide	(Dx)
.word    bank4_Objects_Construction_Routines_Object_X_high_1_wide; 0x10131 $8121 C6 81;Object X high, 1 wide	(Ex)
.word    bank4_Objects_Construction_Routines_Pit_2_high_X_wide_extending_to_bottom; 0x10133 $8123 B6 82;Pit, 2 high, X wide, extending to bottom	(Fx)
.word    bank4_Objects_Construction_Routines_Lava_Pit_2_high_bottom_of_screen; 0x10135 $8125 0E 82;Lava Pit, 2 high, bottom of screen	(1x)
.word    bank4_Objects_Construction_Routines_Lava_Pit_2_high_bottom_of_screen; 0x10137 $8127 0E 82;Lava Pit, 2 high, bottom of screen	(2x)
.word    bank4_Objects_Construction_Routines_Lava_Pit_2_high_bottom_of_screen; 0x10139 $8129 0E 82;Lava Pit, 2 high, bottom of screen	(3x)
.word    bank4_Objects_Construction_Routines_Lava_Pit_2_high_bottom_of_screen; 0x1013b $812B 0E 82;Lava Pit, 2 high, bottom of screen	(4x)
.word    bank4_Objects_Construction_Routines_Elevator; 0x1013d $812D 3E 82     ;Elevator				(5x)
; ---------------------------------------------------------------------------- ;
bank4_code1:                                                                    ;
    TXA                                ; 0x1013f $812F 8A                      ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x10140 $8130 20 85 D3;
bank4_Pointer_table_for_Small_Objects_Construction_Routines:                    ;
.word    bank4_Small_Objects_Construction_Routines_Window_2_high; 0x10143 $8133 59 82;Window, 2 high
.word    bank4_Small_Objects_Construction_Routines_Ra_Statue_facing_right_2_high; 0x10145 $8135 61 82;Ra Statue, facing right, 2 high
.word    bank4_Small_Objects_Construction_Routines_Mau_Statue_facing_left_2_high; 0x10147 $8137 5D 82;Mau Statue, facing left, 2 high
.word    bank4_Small_Objects_Construction_Routines_Crystal_Statue; 0x10149 $8139 97 82;Crystal Statue
.word    bank4_Small_Objects_Construction_Routines_Crystal_Statue; 0x1014b $813B 97 82;Crystal Statue
.word    bank4_Small_Objects_Construction_Routines_Locked_Door; 0x1014d $813D 45 82;Locked Door
L8140     = * + $0001                                                          ;
.word    bank4_Small_Objects_Construction_Routines_Locked_Door; 0x1014f $813F 45 82;Locked Door
.word    bank4_Small_Objects_Construction_Routines_Cloud__Long; 0x10151 $8141 CF 82;Cloud - Long
.word    bank4_Small_Objects_Construction_Routines_Cloud__Short; 0x10153 $8143 D5 82;Cloud - Short
.word    bank4_Small_Objects_Construction_Routines_Ironknuckle_Statue; 0x10155 $8145 6D 82;Ironknuckle Statue
.word    bank4_Small_Objects_Construction_Routines_Cloud__Short; 0x10157 $8147 D5 82;Cloud - Short
L8149:                                                                          ;
.word    bank4_Small_Objects_Construction_Routines_Cloud__Short; 0x10159 $8149 D5 82;Cloud - Short
.word    bank4_Small_Objects_Construction_Routines_Cloud__Short; 0x1015b $814B D5 82;Cloud - Short
.word    bank4_Small_Objects_Construction_Routines_Cloud__Short; 0x1015d $814D D5 82;Cloud - Short
.word    bank4_Small_Objects_Construction_Routines_Cloud__Short; 0x1015f $814F D5 82;Cloud - Short
.word    bank4_Small_Objects_Construction_Routines_Cloud__Short; 0x10161 $8151 D5 82;Cloud - Short
; ---------------------------------------------------------------------------- ;
bank4_Tables_for_Level_Layers_Data:                                             ;
.byt    $42,$42,$4B,$4B,$42,$42,$4B,$4B; 0x10163 $8153 42 42 4B 4B 42 42 4B 4B ;
.byt    $4B,$40,$40,$4B,$85,$40,$40,$4B; 0x1016b $815B 4B 40 40 4B 85 40 40 4B ;
.byt    $4B,$85                        ; 0x10173 $8163 4B 85                   ;
bank4_Table_for_Level_Layers_Data_pointers:                                     ;
.byt    $53,$5C                        ; 0x10175 $8165 53 5C                   ;
; ---------------------------------------------------------------------------- ;
bank4_Build_a_pointer_with_81_and_a_value_from_10165:                           ;
    LDX      $010C                     ; 0x10177 $8167 AE 0C 01                ;; Area Palette Group (Type of Area)	; Area Ground Type (0-7)
    LDA      bank4_Table_for_Level_Layers_Data_pointers,x; 0x1017a $816A BD 65 81  ;
    STA      $0C                       ; 0x1017d $816D 85 0C                   ;
    LDA      #$81                      ; 0x1017f $816F A9 81                   ; A = 81
    STA      $0D                       ; 0x10181 $8171 85 0D                   ;
    LDY      #$08                      ; 0x10183 $8173 A0 08                   ; Y = 08
    LDA      ($0C),y                   ; 0x10185 $8175 B1 0C                   ;
    STA      $010D                     ; 0x10187 $8177 8D 0D 01                ;; Area Bottom Row Tile Code
    RTS                                ; 0x1018a $817A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Tile_Codes_for_Objects_Set_0_Background:                                  ;
.byt    $40                            ; 0x1018b $817B 40                      ;
L817C:                                                                          ;
.byt    $40                            ; 0x1018c $817C 40                      ;
bank4_Tile_Codes_for_Objects_Set_0_Bricks_01:                                   ;
.byt    $4B,$4B                        ; 0x1018d $817D 4B 4B                   ;
bank4_Tile_Codes_for_Objects_Set_0_Breakable_Blocks_02:                         ;
.byt    $4C,$4C                        ; 0x1018f $817F 4C 4C                   ;
bank4_Tile_Codes_for_Objects_Set_0_Pedestal_Blocks_03:                          ;
.byt    $D1,$D1                        ; 0x10191 $8181 D1 D1                   ;
bank4_Tile_Codes_for_Objects_Set_0_Breaking_Bridge_04:                          ;
.byt    $4E,$4E                        ; 0x10193 $8183 4E 4E                   ;
bank4_Tile_Codes_for_Objects_Set_0_Bridge_05:                                   ;
.byt    $48,$4D                        ; 0x10195 $8185 48 4D                   ;
bank4_Tile_Codes_for_Objects_Set_0_Bricks:                                      ;
.byt    $4B,$4B                        ; 0x10197 $8187 4B 4B                   ;
bank4_Tile_Codes_for_Objects_Set_0_Curtains:                                    ;
.byt    $CF,$D0                        ; 0x10199 $8189 CF D0                   ;
bank4_Tile_Codes_for_Objects_Set_0_Breakable_Blocks1:                           ;
.byt    $4C,$4C                        ; 0x1019b $818B 4C 4C                   ;
bank4_Tile_Codes_for_Objects_Set_0_False_Bricks_pass_through:                   ;
.byt    $47,$47                        ; 0x1019d $818D 47 47                   ;
bank4_Tile_Codes_for_Objects_Set_0_Breakable_Blocks2:                           ;
.byt    $4C,$4C                        ; 0x1019f $818F 4C 4C                   ;
bank4_Tile_Codes_for_Objects_Set_0_Column:                                      ;
.byt    $43,$44                        ; 0x101a1 $8191 43 44                   ;
bank4_Tile_Codes_for_Objects_Set_0_Background1:                                 ;
.byt    $40,$40                        ; 0x101a3 $8193 40 40                   ;
bank4_Tile_Codes_for_Objects_Set_0_Background2:                                 ;
.byt    $40,$40                        ; 0x101a5 $8195 40 40                   ;
bank4_Tile_Codes_for_Objects_Set_0_Background3:                                 ;
.byt    $40,$40                        ; 0x101a7 $8197 40 40                   ;
; ---------------------------------------------------------------------------- ;
bank4_Objects_Construction_Routines_Object_1_high_X_wide:                       ;
L819A     = * + $0001                                                          ;
    JSR      bank4_Get_Tile_Codes_for_Object; 0x101a9 $8199 20 F0 81               ; Get Tile Codes for Object ($112 and $00)
    JMP      L81AD                     ; 0x101ac $819C 4C AD 81                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Objects_Construction_Routines_Object_2_high_X_wide:                       ;
    JSR      bank4_Get_Tile_Codes_for_Object; 0x101af $819F 20 F0 81               ; Get Tile Codes for Object ($112 and $00)
L81A3     = * + $0001                                                          ;
    JSR      L81AD                     ; 0x101b2 $81A2 20 AD 81                ;
    LDA      L0000                     ; 0x101b5 $81A5 A5 00                   ;
    STA      $0112                     ; 0x101b7 $81A7 8D 12 01                ;; Tile Code 0 for Object
    JSR      LDF4C                     ; 0x101ba $81AA 20 4C DF                ;
L81AD:                                                                          ;
    LDA      $0731                     ; 0x101bd $81AD AD 31 07                ;; Level Object Type and Size
L81B1     = * + $0001                                                          ;
    AND      #$0F                      ; 0x101c0 $81B0 29 0F                   ; keep bits .... xxxx
    TAX                                ; 0x101c2 $81B2 AA                      ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x101c3 $81B3 20 44 C9          ;
L81B6:                                                                          ;
    LDA      $0112                     ; 0x101c6 $81B6 AD 12 01                ;; Tile Code 0 for Object
    JSR      bank7_Set_tile_and_move_right_1_column; 0x101c9 $81B9 20 E7 DE        ;
    DEX                                ; 0x101cc $81BC CA                      ;
    BPL      L81B6                     ; 0x101cd $81BD 10 F7                   ;
    RTS                                ; 0x101cf $81BF 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Objects_Construction_Routines_Object_X_high_1_wide_single_tile_type:      ;
    JSR      bank4_Get_Tile_Codes_for_Object; 0x101d0 $81C0 20 F0 81               ; Get Tile Codes for Object ($112 and $00)
    JMP      L81DD                     ; 0x101d3 $81C3 4C DD 81                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Objects_Construction_Routines_Object_X_high_1_wide:                       ;
    JSR      bank4_Get_Tile_Codes_for_Object; 0x101d6 $81C6 20 F0 81               ; Get Tile Codes for Object ($112 and $00)
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x101d9 $81C9 20 44 C9          ;
    LDA      $0112                     ; 0x101dc $81CC AD 12 01                ;; Tile Code 0 for Object
    JSR      LDF56                     ; 0x101df $81CF 20 56 DF                ;
    STA      $0730                     ; 0x101e2 $81D2 8D 30 07                ;; Position of Object Placement
    DEC      $0731                     ; 0x101e5 $81D5 CE 31 07                ;; Level Object Type and Size
    LDA      L0000                     ; 0x101e8 $81D8 A5 00                   ;
    STA      $0112                     ; 0x101ea $81DA 8D 12 01                ;; Tile Code 0 for Object
L81DD:                                                                          ;
    LDA      $0731                     ; 0x101ed $81DD AD 31 07                ;; Level Object Type and Size
    AND      #$0F                      ; 0x101f0 $81E0 29 0F                   ; keep bits .... xxxx
    TAX                                ; 0x101f2 $81E2 AA                      ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x101f3 $81E3 20 44 C9          ;
L81E6:                                                                          ;
    LDA      $0112                     ; 0x101f6 $81E6 AD 12 01                ;; Tile Code 0 for Object
    JSR      LDF56                     ; 0x101f9 $81E9 20 56 DF                ;
    DEX                                ; 0x101fc $81EC CA                      ;
    BPL      L81E6                     ; 0x101fd $81ED 10 F7                   ;
    RTS                                ; 0x101ff $81EF 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Get_Tile_Codes_for_Object:                                                ;
;Get Tile Codes for Object ($112 and $00)                                      ;
;Object Set 1 is invalid                                                       ;
    TXA                                ; 0x10200 $81F0 8A                      ;
    ASL                                ; 0x10201 $81F1 0A                      ;
    TAX                                ; 0x10202 $81F2 AA                      ;
    LDY      #$01                      ; 0x10203 $81F3 A0 01                   ; Y = 01
    LDA      ($D4),y                   ; 0x10205 $81F5 B1 D4                   ;
    ASL                                ; 0x10207 $81F7 0A                      ;
    LDA      bank4_Objects_Construction_Routines_Object_1_high_X_wide,x; 0x10208 $81F8 BD 99 81; ???
    BCS      L8200                     ; 0x1020b $81FB B0 03                   ;
    LDA      bank4_Tile_Codes_for_Objects_Set_0_Background,x; 0x1020d $81FD BD 7B 81;
L8200:                                                                          ;
    STA      $0112                     ; 0x10210 $8200 8D 12 01                ;; Tile Code 0 for Object
    LDA      L819A,x                   ; 0x10213 $8203 BD 9A 81                ; ???
L8207     = * + $0001                                                          ;
    BCS      L820B                     ; 0x10216 $8206 B0 03                   ;
    LDA      L817C,x                   ; 0x10218 $8208 BD 7C 81                ;
L820B:                                                                          ;
    STA      L0000                     ; 0x1021b $820B 85 00                   ;
    RTS                                ; 0x1021d $820D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Objects_Construction_Routines_Lava_Pit_2_high_bottom_of_screen:           ;
    LDA      $0730                     ; 0x1021e $820E AD 30 07                ;; Position of Object Placement
    AND      #$0F                      ; 0x10221 $8211 29 0F                   ; keep bits .... xxxx
    ORA      #$B0                      ; 0x10223 $8213 09 B0                   ; set bits  x.xx ....
    STA      $0730                     ; 0x10225 $8215 8D 30 07                ;; Position of Object Placement
    LDA      #$83                      ; 0x10228 $8218 A9 83                   ; A = 83
    STA      $0112                     ; 0x1022a $821A 8D 12 01                ;; Tile Code 0 for Object
L821D:                                                                          ;
    LDA      $0731                     ; 0x1022d $821D AD 31 07                ;; Level Object Type and Size
    AND      #$0F                      ; 0x10230 $8220 29 0F                   ; keep bits .... xxxx
    TAX                                ; 0x10232 $8222 AA                      ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x10233 $8223 20 44 C9          ;
L8226:                                                                          ;
    LDA      $0112                     ; 0x10236 $8226 AD 12 01                ;; Tile Code 0 for Object
    JSR      bank7_Set_tile_and_move_right_1_column; 0x10239 $8229 20 E7 DE        ;
    DEX                                ; 0x1023c $822C CA                      ;
    BPL      L8226                     ; 0x1023d $822D 10 F7                   ;
    LDA      #$84                      ; 0x1023f $822F A9 84                   ; A = 84
    STA      $0112                     ; 0x10241 $8231 8D 12 01                ;; Tile Code 0 for Object
    JSR      LDF4C                     ; 0x10244 $8234 20 4C DF                ;
    AND      #$F0                      ; 0x10247 $8237 29 F0                   ; keep bits xxxx ....
    CMP      #$D0                      ; 0x10249 $8239 C9 D0                   ;HEIGHT TO DRAW DOWNWARD TO 
    BCC      L821D                     ; 0x1024b $823B 90 E0                   ;
    RTS                                ; 0x1024d $823D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Objects_Construction_Routines_Elevator:                                   ;
    LDA      $010A                     ; 0x1024e $823E AD 0A 01                ;
    STA      $0757                     ; 0x10251 $8241 8D 57 07                ;; Position of Elevator in Map
    RTS                                ; 0x10254 $8244 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Small_Objects_Construction_Routines_Locked_Door:                          ;
    LDA      $010A                     ; 0x10255 $8245 AD 0A 01                ;
    STA      $0758                     ; 0x10258 $8248 8D 58 07                ;; Position of Locked Door in Map
    RTS                                ; 0x1025b $824B 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x1025c $824C 20 44 C9          ;
    LDA      #$40                      ; 0x1025f $824F A9 40                   ; A = 40
    JSR      LDF56                     ; 0x10261 $8251 20 56 DF                ;
    LDA      #$40                      ; 0x10264 $8254 A9 40                   ; A = 40
    STA      (L000E),y                 ; 0x10266 $8256 91 0E                   ;
    RTS                                ; 0x10268 $8258 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Small_Objects_Construction_Routines_Window_2_high:                        ;
    LDX      #$00                      ; 0x10269 $8259 A2 00                   ; X = 00
    BEQ      L826F                     ; 0x1026b $825B F0 12                   ;
bank4_Small_Objects_Construction_Routines_Mau_Statue_facing_left_2_high:        ;
    LDX      #$01                      ; 0x1026d $825D A2 01                   ; X = 01
    BNE      L826F                     ; 0x1026f $825F D0 0E                   ;
bank4_Small_Objects_Construction_Routines_Ra_Statue_facing_right_2_high:        ;
    LDX      #$02                      ; 0x10271 $8261 A2 02                   ; X = 02
    BNE      L826F                     ; 0x10273 $8263 D0 0A                   ;
bank4_Tile_Codes_for_Window__Mau_Statue__Ra_Statue_and_Ironknuckle_Statue:      ;
.byt    $80,$45,$46,$49                ; 0x10275 $8265 80 45 46 49             ;Top Tile Code (4 bytes)
L8269:                                                                          ;
.byt    $81,$42,$42,$4A                ; 0x10279 $8269 81 42 42 4A             ;Bottom Tile Code (4 bytes)
; ---------------------------------------------------------------------------- ;
bank4_Small_Objects_Construction_Routines_Ironknuckle_Statue:                   ;
    LDX      #$03                      ; 0x1027d $826D A2 03                   ; X = 03
L826F:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x1027f $826F 20 44 C9          ;
    LDA      bank4_Tile_Codes_for_Window__Mau_Statue__Ra_Statue_and_Ironknuckle_Statue,x; 0x10282 $8272 BD 65 82; refer to table at $10265
    JSR      LDF56                     ; 0x10285 $8275 20 56 DF                ;
    LDA      L8269,x                   ; 0x10288 $8278 BD 69 82                ; refer to table at $10269
    STA      (L000E),y                 ; 0x1028b $827B 91 0E                   ;
L827D:                                                                          ;
    RTS                                ; 0x1028d $827D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Table_for_Crystal_Statue_Tile_Mappings:                                   ;
.byt    $42,$C5,$CA,$42,$FF            ; 0x1028e $827E 42 C5 CA 42 FF          ;
bank4_Table_for_Crystal_Statue_Tile_Mappings1:                                  ;
.byt    $42,$C6,$CB,$42,$FF            ; 0x10293 $8283 42 C6 CB 42 FF          ;
bank4_Table_for_Crystal_Statue_Tile_Mappings2:                                  ;
.byt    $42,$C7,$CC,$42,$FF            ; 0x10298 $8288 42 C7 CC 42 FF          ;
bank4_Table_for_Crystal_Statue_Tile_Mappings3:                                  ;
.byt    $C0,$C8,$CD,$C0,$FF            ; 0x1029d $828D C0 C8 CD C0 FF          ;
bank4_Table_for_Crystal_Statue_Tile_Mappings4:                                  ;
.byt    $C1,$C9,$CE,$C1,$FF            ; 0x102a2 $8292 C1 C9 CE C1 FF          ;
; ---------------------------------------------------------------------------- ;
bank4_Small_Objects_Construction_Routines_Crystal_Statue:                       ;
    LDX      #$00                      ; 0x102a7 $8297 A2 00                   ; X = 00
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x102a9 $8299 20 44 C9          ;
L829C:                                                                          ;
    LDA      bank4_Table_for_Crystal_Statue_Tile_Mappings,x; 0x102ac $829C BD 7E 82; refer to table at $1027E
    CMP      #$FF                      ; 0x102af $829F C9 FF                   ;
    BEQ      L82AA                     ; 0x102b1 $82A1 F0 07                   ;
    STA      (L000E),y                 ; 0x102b3 $82A3 91 0E                   ;
    INY                                ; 0x102b5 $82A5 C8                      ;
    INX                                ; 0x102b6 $82A6 E8                      ;
    JMP      L829C                     ; 0x102b7 $82A7 4C 9C 82                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L82AA:                                                                          ;
    CPX      #$18                      ; 0x102ba $82AA E0 18                   ;
    BEQ      L827D                     ; 0x102bc $82AC F0 CF                   ;
    JSR      LDF4C                     ; 0x102be $82AE 20 4C DF                ; Go down 1 row
    TAY                                ; 0x102c1 $82B1 A8                      ;
    INX                                ; 0x102c2 $82B2 E8                      ;
    JMP      L829C                     ; 0x102c3 $82B3 4C 9C 82                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Objects_Construction_Routines_Pit_2_high_X_wide_extending_to_bottom:      ;
    LDA      $0731                     ; 0x102c6 $82B6 AD 31 07                ; Level Object Type and Size
    AND      #$0F                      ; 0x102c9 $82B9 29 0F                   ; keep bits .... xxxx
    TAX                                ; 0x102cb $82BB AA                      ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x102cc $82BC 20 44 C9          ; Set RAM Address for Object (0E-0F)
L82BF:                                                                          ;
    LDA      #$40                      ; 0x102cf $82BF A9 40                   ; A = 40
    JSR      bank7_Set_tile_and_move_right_1_column; 0x102d1 $82C1 20 E7 DE        ; Set tile and move right 1 column
    DEX                                ; 0x102d4 $82C4 CA                      ;
    BPL      L82BF                     ; 0x102d5 $82C5 10 F8                   ;
    JSR      LDF4C                     ; 0x102d7 $82C7 20 4C DF                ; Go down 1 row
    CMP      #$D0                      ; 0x102da $82CA C9 D0                   ; bottom limit
    BCC      bank4_Objects_Construction_Routines_Pit_2_high_X_wide_extending_to_bottom; 0x102dc $82CC 90 E8;
    RTS                                ; 0x102de $82CE 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Small_Objects_Construction_Routines_Cloud__Long:                          ;
    LDX      #$00                      ; 0x102df $82CF A2 00                   ; X = 00
    BEQ      L82D7                     ; 0x102e1 $82D1 F0 04                   ;
bank4_Tile_Codes_for_Clouds:                                                    ;
.byt    $C3,$C4                        ; 0x102e3 $82D3 C3 C4                   ;
; ---------------------------------------------------------------------------- ;
bank4_Small_Objects_Construction_Routines_Cloud__Short:                         ;
    LDX      #$01                      ; 0x102e5 $82D5 A2 01                   ; X = 01
L82D7:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x102e7 $82D7 20 44 C9          ;
    LDA      #$C2                      ; 0x102ea $82DA A9 C2                   ; A = C2
    STA      (L000E),y                 ; 0x102ec $82DC 91 0E                   ;
    INY                                ; 0x102ee $82DE C8                      ;
    LDA      bank4_Tile_Codes_for_Clouds,x; 0x102ef $82DF BD D3 82                ;
    STA      (L000E),y                 ; 0x102f2 $82E2 91 0E                   ;
    RTS                                ; 0x102f4 $82E4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Area_Data_for_Palaces_Type_A_Entrance:                                    ;
.byt    $36,$60,$90,$00,$32,$07,$A4,$21; 0x102f5 $82E5 36 60 90 00 32 07 A4 21 ;
.byt    $50,$08,$92,$77,$02,$20,$60,$09; 0x102fd $82ED 50 08 92 77 02 20 60 09 ;
.byt    $80,$41,$01,$74,$23,$C6,$02,$7F; 0x10305 $82F5 80 41 01 74 23 C6 02 7F ;
.byt    $90,$7F,$22,$C6,$24,$C6,$24,$C6; 0x1030d $82FD 90 7F 22 C6 24 C6 24 C6 ;
.byt    $24,$C6,$02,$74,$90,$74,$A2,$24; 0x10315 $8305 24 C6 02 74 90 74 A2 24 ;
.byt    $D3,$0D,$D2,$0E,$80,$F1,$F0,$50; 0x1031d $830D D3 0D D2 0E 80 F1 F0 50 ;
.byt    $D2,$0E,$80,$7F,$A0,$2F        ; 0x10325 $8315 D2 0E 80 7F A0 2F       ;
bank4_Area_Data_for_Palaces_Type_A_Boss_Room_and_Crystal_Statue:                ;
.byt    $22,$60,$0E,$08,$E1,$00,$D0,$08; 0x1032b $831B 22 60 0E 08 E1 00 D0 08 ;
.byt    $20,$8F,$23,$C8,$29,$C8,$D4,$0E; 0x10333 $8323 20 8F 23 C8 29 C8 D4 0E ;
.byt    $84,$05,$E3,$00,$D0,$08,$A3,$49; 0x1033b $832B 84 05 E3 00 D0 08 A3 49 ;
.byt    $92,$45,$41,$03,$D8,$0E,$90,$09; 0x10343 $8333 92 45 41 03 D8 0E 90 09 ;
.byt    $80,$21                        ; 0x1034b $833B 80 21                   ;
bank4_Table_0_1_for_Area_Objects_Tile_Mappings:                                 ;
.byt    $F4,$F4,$F4,$F4                ; 0x1034d $833D F4 F4 F4 F4             ;Exterior Background and Elevator shaft
bank4_Table_0_1_for_Area_Objects_Tile_Mappings_1:                               ;
.byt    $F0,$F0,$F1,$F1                ; 0x10351 $8341 F0 F0 F1 F1             ;?
bank4_Table_0_1_for_Area_Objects_Tile_Mappings_2:                               ;
.byt    $68,$69,$69,$68                ; 0x10355 $8345 68 69 69 68             ;Interior Background
bank4_Table_0_1_for_Area_Objects_Tile_Mappings_3:                               ;
.byt    $8E,$8F,$90,$91                ; 0x10359 $8349 8E 8F 90 91             ;Column - Top
bank4_Table_0_1_for_Area_Objects_Tile_Mappings_4:                               ;
.byt    $A5,$A5,$A6,$A6                ; 0x1035d $834D A5 A5 A6 A6             ;Column - Body
bank4_Table_0_1_for_Area_Objects_Tile_Mappings_5:                               ;
.byt    $38,$39,$3A,$3B                ; 0x10361 $8351 38 39 3A 3B             ;?
bank4_Table_0_1_for_Area_Objects_Tile_Mappings_6:                               ;
.byt    $34,$35,$36,$37                ; 0x10365 $8355 34 35 36 37             ;Rightward Unicorn Head
bank4_Table_0_1_for_Area_Objects_Tile_Mappings_7:                               ;
.byt    $64,$65,$65,$64                ; 0x10369 $8359 64 65 65 64             ;?
bank4_Table_0_1_for_Area_Objects_Tile_Mappings_8:                               ;
.byt    $68,$7C,$69,$7C,$40,$41,$42,$43; 0x1036d $835D 68 7C 69 7C 40 41 42 43 ;?
.byt    $48,$49,$4A                    ; 0x10375 $8365 48 49 4A                ;
L8368:                                                                          ;
.byt    $4B,$64,$65,$65,$64,$BA,$BB,$BC; 0x10378 $8368 4B 64 65 65 64 BA BB BC ;
.byt    $BD,$7D,$69,$7D,$68,$92,$93,$92; 0x10380 $8370 BD 7D 69 7D 68 92 93 92 ;
.byt    $93                            ; 0x10388 $8378 93                      ;
bank4_Table_2_for_Area_Objects_Tile_Mappings_:                                  ;
.byt    $6A,$6C,$6B,$6D,$6C,$6E,$6D,$6F; 0x10389 $8379 6A 6C 6B 6D 6C 6E 6D 6F ;
.byt    $30,$31,$30,$31,$98,$99,$98,$99; 0x10391 $8381 30 31 30 31 98 99 98 99 ;
.byt    $FE,$FE,$FE,$FE,$63,$63,$63,$63; 0x10399 $8389 FE FE FE FE 63 63 63 63 ;
bank4_Table_3_for_Area_Objects_Tile_Mappings_:                                  ;
.byt    $88,$A8,$8C,$AA,$A8,$A8,$AA,$AA; 0x103a1 $8391 88 A8 8C AA A8 A8 AA AA ;
.byt    $B3,$B4,$B5,$B6,$B5,$B6,$B7,$B8; 0x103a9 $8399 B3 B4 B5 B6 B5 B6 B7 B8 ;
L83A1:                                                                          ;
.byt    $B7,$B8,$F4,$F4,$88,$A8,$8A,$70; 0x103b1 $83A1 B7 B8 F4 F4 88 A8 8A 70 ;
.byt    $72,$A8,$73,$77,$A8,$76,$77,$77; 0x103b9 $83A9 72 A8 73 77 A8 76 77 77 ;
.byt    $A8,$A8,$77,$7A,$A8,$A8,$77,$77; 0x103c1 $83B1 A8 A8 77 7A A8 A8 77 77 ;
.byt    $8A,$71,$8C,$AA,$74,$78,$75,$AA; 0x103c9 $83B9 8A 71 8C AA 74 78 75 AA ;
.byt    $79,$79,$AA,$AA,$79,$7B,$AA,$AA; 0x103d1 $83C1 79 79 AA AA 79 7B AA AA ;
.byt    $77,$77,$AA,$AA,$84,$84        ; 0x103d9 $83C9 77 77 AA AA 84 84       ;
L83CF:                                                                          ;
.byt    $86,$86,$84,$85,$86,$87,$5C,$5D; 0x103df $83CF 86 86 84 85 86 87 5C 5D ;
.byt    $5E,$5F                        ; 0x103e7 $83D7 5E 5F                   ;
bank4_Table_for_False_Wall_parameters_:                                         ;
.byt    $4B,$85,$D1                    ; 0x103e9 $83D9 4B 85 D1                ;
bank4_UNUSED_83DC:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x103ec $83DC FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x103f4 $83E4 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x103fc $83EC FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10404 $83F4 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1040c $83FC FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0x10414 $8404 FF FF FF FF FF          ;
L8409:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10419 $8409 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10421 $8411 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10429 $8419 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10431 $8421 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10439 $8429 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10441 $8431 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10449 $8439 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10451 $8441 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10459 $8449 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10461 $8451 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10469 $8459 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10471 $8461 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0x10479 $8469 FF FF FF FF FF FF FF    ;
bank4_Palaces_Type_A_B_Palettes:                                                ;
.byt    $22,$30,$12,$16,$22,$0F,$10,$30; 0x10480 $8470 22 30 12 16 22 0F 10 30 ;Palace 1 Entrance
.byt    $22,$27,$17,$0F,$22,$30,$10,$00; 0x10488 $8478 22 27 17 0F 22 30 10 00 ;
.byt    $22,$30,$12,$16,$22,$0F,$1C,$3C; 0x10490 $8480 22 30 12 16 22 0F 1C 3C ;Palace 2 Entrance
.byt    $22,$27,$17,$0F,$22,$30,$10,$00; 0x10498 $8488 22 27 17 0F 22 30 10 00 ;
.byt    $22,$30,$12,$16,$22,$0F,$06,$26; 0x104a0 $8490 22 30 12 16 22 0F 06 26 ;Palace 3 Entrance
.byt    $22,$27,$17,$0F,$22,$30,$10,$00; 0x104a8 $8498 22 27 17 0F 22 30 10 00 ;
.byt    $22,$30,$12,$16,$22,$0F,$03,$23; 0x104b0 $84A0 22 30 12 16 22 0F 03 23 ;Palace 4 Entrance
.byt    $22,$27,$17,$0F,$22,$30,$10,$00; 0x104b8 $84A8 22 27 17 0F 22 30 10 00 ;
.byt    $22,$30,$12,$16,$22,$0F,$0A,$2A; 0x104c0 $84B0 22 30 12 16 22 0F 0A 2A ;Palace 5 Entrance
.byt    $22,$27,$17,$0F,$22,$30,$10,$00; 0x104c8 $84B8 22 27 17 0F 22 30 10 00 ;
.byt    $22,$30,$12,$16,$22,$0F,$05,$25; 0x104d0 $84C0 22 30 12 16 22 0F 05 25 ;Palace 6 Entrance
.byt    $22,$27,$17,$0F,$22,$30,$10,$00; 0x104d8 $84C8 22 27 17 0F 22 30 10 00 ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x104e0 $84D0 FF FF FF FF FF FF FF FF ;
L84D8:                                                                          ;
.byt    $FF,$00,$10,$30,$FF,$0C,$1C,$3C; 0x104e8 $84D8 FF 00 10 30 FF 0C 1C 3C ;Palettes related to Gooma. and other bosses maybe?
.byt    $FF,$0F,$06,$26,$FF,$00,$10,$30; 0x104f0 $84E0 FF 0F 06 26 FF 00 10 30 ;
.byt    $FF,$0F,$0A,$2A,$FF,$00,$10,$30; 0x104f8 $84E8 FF 0F 0A 2A FF 00 10 30 ;
bank4_UNUSED_84F0:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10500 $84F0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10508 $84F8 FF FF FF FF FF FF FF FF ;
; ---------------------------------------------------------------------------- ;
bank4_Pointer_table_for_Objects_Tile_Mappings:                                  ;
.word    bank4_Table_0_1_for_Area_Objects_Tile_Mappings; 0x10510 $8500 3D 83   ;
.word    bank4_Table_0_1_for_Area_Objects_Tile_Mappings; 0x10512 $8502 3D 83   ;
.word    bank4_Table_2_for_Area_Objects_Tile_Mappings_; 0x10514 $8504 79 83    ;
.word    bank4_Table_3_for_Area_Objects_Tile_Mappings_; 0x10516 $8506 91 83    ;
; ---------------------------------------------------------------------------- ;
bank4_Unused_Table:                                                             ;
.byt    $FF                            ; 0x10518 $8508 FF                      ;
L8509:                                                                          ;
.byt    $FF,$FF,$FF                    ; 0x10519 $8509 FF FF FF                ;
; ---------------------------------------------------------------------------- ;
bank4_Related_to_False_Wall_maybe:                                              ;
    PHA                                ; 0x1051c $850C 48                      ;
    AND      #$C0                      ; 0x1051d $850D 29 C0                   ; keep bits xx.. ....
    CLC                                ; 0x1051f $850F 18                      ;
    ROL                                ; 0x10520 $8510 2A                      ;
    ROL                                ; 0x10521 $8511 2A                      ;
    ROL                                ; 0x10522 $8512 2A                      ;
    TAY                                ; 0x10523 $8513 A8                      ;
    DEY                                ; 0x10524 $8514 88                      ;
    PLA                                ; 0x10525 $8515 68                      ;
    CMP      bank4_Table_for_False_Wall_parameters_,y; 0x10526 $8516 D9 D9 83      ;
    RTS                                ; 0x10529 $8519 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table0:                                                                   ;
.byt    $00                            ; 0x1052a $851A 00                      ;
L851B:                                                                          ;
.byt    $00                            ; 0x1052b $851B 00                      ;
L851C:                                                                          ;
.byt    $00,$00                        ; 0x1052c $851C 00 00                   ;
L851E:                                                                          ;
.byt    $4C                            ; 0x1052e $851E 4C                      ;
L851F:                                                                          ;
.byt    $4E                            ; 0x1052f $851F 4E                      ;
L8520:                                                                          ;
.byt    $83                            ; 0x10530 $8520 83                      ;
L8521:                                                                          ;
.byt    $00                            ; 0x10531 $8521 00                      ;
L8522:                                                                          ;
.byt    $00                            ; 0x10532 $8522 00                      ;
; ---------------------------------------------------------------------------- ;
bank4_Area_Pointers_Palaces_Type_A:                                             ;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x10533 $8523 E5 82      ;
.word    L8D06                         ; 0x10535 $8525 06 8D                   ;
.word    bank4_Area_Data               ; 0x10537 $8527 73 8C                   ;
.word    L86DE                         ; 0x10539 $8529 DE 86                   ;
.word    L86A4                         ; 0x1053b $852B A4 86                   ;
.word    L8639                         ; 0x1053d $852D 39 86                   ;
.word    L865D                         ; 0x1053f $852F 5D 86                   ;
.word    L8CBE                         ; 0x10541 $8531 BE 8C                   ;
.word    L8E7B                         ; 0x10543 $8533 7B 8E                   ;
.word    L8D53                         ; 0x10545 $8535 53 8D                   ;
.word    L8D25                         ; 0x10547 $8537 25 8D                   ;
.word    L8DCE                         ; 0x10549 $8539 CE 8D                   ;
.word    L8639                         ; 0x1054b $853B 39 86                   ;
.word    bank4_Area_Data_for_Palaces_Type_A_Boss_Room_and_Crystal_Statue; 0x1054d $853D 1B 83;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x1054f $853F E5 82      ;
.word    L8D06                         ; 0x10551 $8541 06 8D                   ;
.word    L8E44                         ; 0x10553 $8543 44 8E                   ;
.word    L8D8D                         ; 0x10555 $8545 8D 8D                   ;
.word    L8639                         ; 0x10557 $8547 39 86                   ;
.word    L8CBE                         ; 0x10559 $8549 BE 8C                   ;
.word    L8E84                         ; 0x1055b $854B 84 8E                   ;
.word    L8D79                         ; 0x1055d $854D 79 8D                   ;
.word    L8CBE                         ; 0x1055f $854F BE 8C                   ;
.word    L86DE                         ; 0x10561 $8551 DE 86                   ;
.word    L8CBE                         ; 0x10563 $8553 BE 8C                   ;
.word    L8E30                         ; 0x10565 $8555 30 8E                   ;
L8558     = * + $0001                                                          ;
.word    L8DAA                         ; 0x10567 $8557 AA 8D                   ;
.word    L865D                         ; 0x10569 $8559 5D 86                   ;
.word    bank4_Area_Data               ; 0x1056b $855B 73 8C                   ;
.word    L8DCE                         ; 0x1056d $855D CE 8D                   ;
.word    L8E96                         ; 0x1056f $855F 96 8E                   ;
.word    L8DCE                         ; 0x10571 $8561 CE 8D                   ;
.word    L8E52                         ; 0x10573 $8563 52 8E                   ;
.word    L8639                         ; 0x10575 $8565 39 86                   ;
.word    bank4_Area_Data_for_Palaces_Type_A_Boss_Room_and_Crystal_Statue; 0x10577 $8567 1B 83;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x10579 $8569 E5 82      ;
.word    L8DCE                         ; 0x1057b $856B CE 8D                   ;
.word    L8D46                         ; 0x1057d $856D 46 8D                   ;
.word    L8D53                         ; 0x1057f $856F 53 8D                   ;
.word    L8DF2                         ; 0x10581 $8571 F2 8D                   ;
.word    L8D06                         ; 0x10583 $8573 06 8D                   ;
.word    bank4_Area_Data_for_Palaces_Type_A_Boss_Room_and_Crystal_Statue; 0x10585 $8575 1B 83;
.word    L8D06                         ; 0x10587 $8577 06 8D                   ;
.word    L8D79                         ; 0x10589 $8579 79 8D                   ;
.word    L86A4                         ; 0x1058b $857B A4 86                   ;
.word    bank4_Area_Data               ; 0x1058d $857D 73 8C                   ;
.word    L8C86                         ; 0x1058f $857F 86 8C                   ;
.word    L865D                         ; 0x10591 $8581 5D 86                   ;
.word    L8686                         ; 0x10593 $8583 86 86                   ;
.word    L8E10                         ; 0x10595 $8585 10 8E                   ;
.word    L86FB                         ; 0x10597 $8587 FB 86                   ;
.word    L8DF2                         ; 0x10599 $8589 F2 8D                   ;
.word    L86DE                         ; 0x1059b $858B DE 86                   ;
.word    L8D25                         ; 0x1059d $858D 25 8D                   ;
.word    L8C86                         ; 0x1059f $858F 86 8C                   ;
.word    L8E44                         ; 0x105a1 $8591 44 8E                   ;
.word    L8CF0                         ; 0x105a3 $8593 F0 8C                   ;
.word    L865D                         ; 0x105a5 $8595 5D 86                   ;
.word    L8D25                         ; 0x105a7 $8597 25 8D                   ;
.word    L86DE                         ; 0x105a9 $8599 DE 86                   ;
.word    L8D25                         ; 0x105ab $859B 25 8D                   ;
.word    L8E8D                         ; 0x105ad $859D 8D 8E                   ;
.word    L8D25                         ; 0x105af $859F 25 8D                   ;
bank4_Enemy_Pointers_Palaces_Type_A:                                            ;
.word    L7000                         ; 0x105b1 $85A1 00 70                   ;Base Offset is 108A0
.word    L7001                         ; 0x105b3 $85A3 01 70                   ;
.word    L71E5                         ; 0x105b5 $85A5 E5 71                   ;
.word    L700F                         ; 0x105b7 $85A7 0F 70                   ;
.word    L7018                         ; 0x105b9 $85A9 18 70                   ;
.word    L701D                         ; 0x105bb $85AB 1D 70                   ;
.word    L7024                         ; 0x105bd $85AD 24 70                   ;
.word    L7029                         ; 0x105bf $85AF 29 70                   ;
.word    L7032                         ; 0x105c1 $85B1 32 70                   ;
.word    L71F0                         ; 0x105c3 $85B3 F0 71                   ;
.word    L7037                         ; 0x105c5 $85B5 37 70                   ;
.word    L7040                         ; 0x105c7 $85B7 40 70                   ;
.word    L7047                         ; 0x105c9 $85B9 47 70                   ;
.word    L71BC                         ; 0x105cb $85BB BC 71                   ;
.word    L71DD                         ; 0x105cd $85BD DD 71                   ;
.word    L704C                         ; 0x105cf $85BF 4C 70                   ;
.word    L7053                         ; 0x105d1 $85C1 53 70                   ;
.word    L705C                         ; 0x105d3 $85C3 5C 70                   ;
.word    L71CB                         ; 0x105d5 $85C5 CB 71                   ;
.word    L7069                         ; 0x105d7 $85C7 69 70                   ;
.word    L7070                         ; 0x105d9 $85C9 70 70                   ;
.word    L70EA                         ; 0x105db $85CB EA 70                   ;
.word    L7079                         ; 0x105dd $85CD 79 70                   ;
.word    L7080                         ; 0x105df $85CF 80 70                   ;
.word    L7087                         ; 0x105e1 $85D1 87 70                   ;
.word    L7092                         ; 0x105e3 $85D3 92 70                   ;
.word    L7099                         ; 0x105e5 $85D5 99 70                   ;
.word    L70AC                         ; 0x105e7 $85D7 AC 70                   ;
.word    L7006                         ; 0x105e9 $85D9 06 70                   ;
.word    L70B9                         ; 0x105eb $85DB B9 70                   ;
.word    L71E0                         ; 0x105ed $85DD E0 71                   ;
.word    L70D5                         ; 0x105ef $85DF D5 70                   ;
.word    L70DC                         ; 0x105f1 $85E1 DC 70                   ;
.word    L70E3                         ; 0x105f3 $85E3 E3 70                   ;
.word    L71C1                         ; 0x105f5 $85E5 C1 71                   ;
.word    L7000                         ; 0x105f7 $85E7 00 70                   ;; Enemy Data
.word    L70ED                         ; 0x105f9 $85E9 ED 70                   ;
.word    L70FA                         ; 0x105fb $85EB FA 70                   ;
.word    L7101                         ; 0x105fd $85ED 01 71                   ;
.word    L7106                         ; 0x105ff $85EF 06 71                   ;
.word    L710D                         ; 0x10601 $85F1 0D 71                   ;
.word    L71C6                         ; 0x10603 $85F3 C6 71                   ;
.word    L7114                         ; 0x10605 $85F5 14 71                   ;
.word    L71D8                         ; 0x10607 $85F7 D8 71                   ;
.word    L711F                         ; 0x10609 $85F9 1F 71                   ;
.word    L70C6                         ; 0x1060b $85FB C6 70                   ;
.word    L7126                         ; 0x1060d $85FD 26 71                   ;
.word    L70AC                         ; 0x1060f $85FF AC 70                   ;
.word    L7131                         ; 0x10611 $8601 31 71                   ;
.word    L713E                         ; 0x10613 $8603 3E 71                   ;
.word    L7147                         ; 0x10615 $8605 47 71                   ;
.word    L7150                         ; 0x10617 $8607 50 71                   ;
.word    L7157                         ; 0x10619 $8609 57 71                   ;
.word    L715E                         ; 0x1061b $860B 5E 71                   ;
.word    L7169                         ; 0x1061d $860D 69 71                   ;
.word    L7170                         ; 0x1061f $860F 70 71                   ;
.word    L717B                         ; 0x10621 $8611 7B 71                   ;
.word    L717E                         ; 0x10623 $8613 7E 71                   ;
.word    L7189                         ; 0x10625 $8615 89 71                   ;
.word    L7194                         ; 0x10627 $8617 94 71                   ;
.word    L71A1                         ; 0x10629 $8619 A1 71                   ;
.word    L71AA                         ; 0x1062b $861B AA 71                   ;
.word    L71B1                         ; 0x1062d $861D B1 71                   ;
; ---------------------------------------------------------------------------- ;
bank4_Area_Data_for_Palaces_Type_A:                                             ;
.byt    $1A,$60,$0F,$08,$D6,$08,$A2,$45; 0x1062f $861F 1A 60 0F 08 D6 08 A2 45 ;
.byt    $84,$C1,$D4,$0E,$D4,$08,$E3,$00; 0x10637 $8627 84 C1 D4 0E D4 08 E3 00 ;
.byt    $A8,$77,$94,$73,$50,$21,$30,$09; 0x1063f $862F A8 77 94 73 50 21 30 09 ;
.byt    $D2,$0C                        ; 0x10647 $8637 D2 0C                   ;
L8639:                                                                          ;
.byt    $24,$60,$0E,$08,$D2,$08,$43,$00; 0x10649 $8639 24 60 0E 08 D2 08 43 00 ;
.byt    $44,$00,$44,$00,$D3,$0E        ; 0x10651 $8641 44 00 44 00 D3 0E       ;
L8647:                                                                          ;
.byt    $81,$05,$D7,$08,$43,$00,$44,$00; 0x10657 $8647 81 05 D7 08 43 00 44 00 ;
.byt    $44,$00,$D5,$0E,$D8,$08,$43,$00; 0x1065f $864F 44 00 D5 0E D8 08 43 00 ;
.byt    $44,$00,$44,$00,$D3,$0E        ; 0x10667 $8657 44 00 44 00 D3 0E       ;
L865D:                                                                          ;
.byt    $29,$60,$0E,$08,$D2,$08,$D6,$0B; 0x1066d $865D 29 60 0E 08 D2 08 D6 0B ;
.byt    $D4,$08,$D4,$0E,$82,$05,$D2,$08; 0x10675 $8665 D4 08 D4 0E 82 05 D2 08 ;
.byt    $D4,$0B,$D4,$08,$27,$C8,$61,$77; 0x1067d $866D D4 0B D4 08 27 C8 61 77 ;
.byt    $A1,$25,$82,$F1,$F0,$50,$50,$0F; 0x10685 $8675 A1 25 82 F1 F0 50 50 0F ;
.byt    $0C,$25,$C8,$D6,$0C,$D6,$08,$D6; 0x1068d $867D 0C 25 C8 D6 0C D6 08 D6 ;
.byt    $0E                            ; 0x10695 $8685 0E                      ;
L8686:                                                                          ;
.byt    $1E,$60,$00,$08,$8C,$C2,$60,$09; 0x10696 $8686 1E 60 00 08 8C C2 60 09 ;
.byt    $86,$C2,$60,$09,$86,$C2,$60,$09; 0x1069e $868E 86 C2 60 09 86 C2 60 09 ;
.byt    $DC,$0E,$03,$F1,$F0,$50,$B0,$71; 0x106a6 $8696 DC 0E 03 F1 F0 50 B0 71 ;
.byt    $D5,$00,$8A,$C2,$60,$09        ; 0x106ae $869E D5 00 8A C2 60 09       ;
L86A4:                                                                          ;
.byt    $3A,$60,$0E,$08,$D2,$08,$42,$00; 0x106b4 $86A4 3A 60 0E 08 D2 08 42 00 ;
.byt    $22,$C8,$42,$00,$22,$C8,$42,$00; 0x106bc $86AC 22 C8 42 00 22 C8 42 00 ;
.byt    $22,$C8,$42,$00,$22,$C8,$42,$00; 0x106c4 $86B4 22 C8 42 00 22 C8 42 00 ;
.byt    $22,$C8,$42,$00,$22,$C8,$42,$00; 0x106cc $86BC 22 C8 42 00 22 C8 42 00 ;
.byt    $D4,$0E,$07,$F1,$F0,$50,$B0,$71; 0x106d4 $86C4 D4 0E 07 F1 F0 50 B0 71 ;
.byt    $D7,$08,$42,$00,$22,$C8,$42,$00; 0x106dc $86CC D7 08 42 00 22 C8 42 00 ;
.byt    $22,$C8,$42,$00,$22,$C8,$42,$00; 0x106e4 $86D4 22 C8 42 00 22 C8 42 00 ;
.byt    $D2,$0E                        ; 0x106ec $86DC D2 0E                   ;
L86DE:                                                                          ;
.byt    $1D,$60,$0F,$08,$D2,$08,$A0,$21; 0x106ee $86DE 1D 60 0F 08 D2 08 A0 21 ;
.byt    $50,$9F,$70,$9F,$91,$0F,$08,$E1; 0x106f6 $86E6 50 9F 70 9F 91 0F 08 E1 ;
.byt    $00,$72,$91,$7E,$9F,$52,$9D,$5E; 0x106fe $86EE 00 72 91 7E 9F 52 9D 5E ;
.byt    $93,$70,$95,$DE,$0E            ; 0x10706 $86F6 93 70 95 DE 0E          ;
L86FB:                                                                          ;
.byt    $13,$60,$08,$08,$E2,$00,$8A,$C2; 0x1070b $86FB 13 60 08 08 E2 00 8A C2 ;
.byt    $60,$09,$D6,$0F,$D6,$08,$90,$71; 0x10713 $8703 60 09 D6 0F D6 08 90 71 ;
.byt    $80,$0F,$08                    ; 0x1071b $870B 80 0F 08                ;
bank4_UNUSED_870E:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1071e $870E FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0x10726 $8716 FF FF FF FF FF          ;
bank4_Room_Connectivity_Data_for_Palaces_Type_A_:                               ;
.byt    $FC,$12,$00,$FC,$FC,$1E,$00,$08; 0x1072b $871B FC 12 00 FC FC 1E 00 08 ;
.byt    $07,$00,$00,$FC,$FC,$00,$00,$10; 0x10733 $8723 07 00 00 FC FC 00 00 10 ;
.byt    $0F,$00,$02,$14,$13,$00,$00,$18; 0x1073b $872B 0F 00 02 14 13 00 00 18 ;
.byt    $17,$2B,$00,$1C,$1B,$2C,$04,$20; 0x10743 $8733 17 2B 00 1C 1B 2C 04 20 ;
.byt    $FC,$00,$00,$24,$23,$00,$00,$28; 0x1074b $873B FC 00 00 24 23 00 00 28 ;
.byt    $27,$00,$1A,$FC,$FC,$00,$1E,$30; 0x10753 $8743 27 00 1A FC FC 00 1E 30 ;
.byt    $2F,$00,$00,$34,$33,$00,$00,$FC; 0x1075b $874B 2F 00 00 34 33 00 00 FC ;
.byt    $FC,$4E,$00,$FC,$FC,$5A,$00,$40; 0x10763 $8753 FC 4E 00 FC FC 5A 00 40 ;
.byt    $3F,$00,$00,$44,$43,$00,$00,$48; 0x1076b $875B 3F 00 00 44 43 00 00 48 ;
.byt    $47,$00,$00,$4C,$4B,$62,$3A,$FC; 0x10773 $8763 47 00 00 4C 4B 62 3A FC ;
.byt    $FC,$00,$00,$54,$53,$00,$00,$58; 0x1077b $876B FC 00 00 54 53 00 00 58 ;
.byt    $57,$64,$3C,$FC,$FC,$00,$00,$60; 0x10783 $8773 57 64 3C FC FC 00 00 60 ;
.byt    $5F,$74,$4E,$FC,$FC,$00,$5A,$68; 0x1078b $877B 5F 74 4E FC FC 00 5A 68 ;
.byt    $67,$00,$00,$6C,$6B,$7C,$00,$70; 0x10793 $8783 67 00 00 6C 6B 7C 00 70 ;
.byt    $6F,$00,$00,$FC,$FC,$00,$62,$78; 0x1079b $878B 6F 00 00 FC FC 00 62 78 ;
.byt    $77,$00,$00,$FC,$FC,$00,$6E,$80; 0x107a3 $8793 77 00 00 FC FC 00 6E 80 ;
L879B:                                                                          ;
.byt    $7F,$00,$00,$84,$83,$00,$00,$88; 0x107ab $879B 7F 00 00 84 83 00 00 88 ;
.byt    $87,$00,$00,$FC,$FC,$90,$00,$FC; 0x107b3 $87A3 87 00 00 FC FC 90 00 FC ;
.byt    $FC,$00,$8E,$94,$93,$00,$00,$98; 0x107bb $87AB FC 00 8E 94 93 00 00 98 ;
.byt    $97,$00,$00,$9C,$9B,$B2,$00,$FC; 0x107c3 $87B3 97 00 00 9C 9B B2 00 FC ;
.byt    $FC,$BA,$00,$A4,$A3,$00,$00,$FC; 0x107cb $87BB FC BA 00 A4 A3 00 00 FC ;
.byt    $FC,$C2,$00,$AC,$AB,$00,$00,$B0; 0x107d3 $87C3 FC C2 00 AC AB 00 00 B0 ;
.byt    $AF,$00,$9F,$B4,$B3,$00,$00,$FC; 0x107db $87CB AF 00 9F B4 B3 00 00 FC ;
.byt    $FC,$D7,$A0,$BC,$BB,$DA,$00,$C0; 0x107e3 $87D3 FC D7 A0 BC BB DA 00 C0 ;
.byt    $BF,$00,$A8,$C4,$C3,$00,$00,$C8; 0x107eb $87DB BF 00 A8 C4 C3 00 00 C8 ;
.byt    $C7,$00,$00,$CC,$CB,$EB,$00,$FC; 0x107f3 $87E3 C7 00 00 CC CB EB 00 FC ;
.byt    $FC,$00,$00,$D4,$D3,$00,$BA,$FC; 0x107fb $87EB FC 00 00 D4 D3 00 BA FC ;
L87F3:                                                                          ;
.byt    $FC,$F3,$BE,$DC,$DB,$00,$00,$E0; 0x10803 $87F3 FC F3 BE DC DB 00 00 E0 ;
.byt    $DF,$00,$00,$E4,$E3,$FB,$00,$E8; 0x1080b $87FB DF 00 00 E4 E3 FB 00 E8 ;
.byt    $E7,$00,$CF,$FC,$FC,$00,$00,$F0; 0x10813 $8803 E7 00 CF FC FC 00 00 F0 ;
.byt    $EF,$00,$DA,$FC,$FC,$00,$00,$F8; 0x1081b $880B EF 00 DA FC FC 00 00 F8 ;
.byt    $F7,$00,$E6,$FC                ; 0x10823 $8813 F7 00 E6 FC             ;
bank4_UNUSED_8817:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10827 $8817 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1082f $881F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10837 $8827 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1083f $882F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10847 $8837 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1084f $883F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10857 $8847 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1085f $884F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10867 $8857 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1086f $885F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10877 $8867 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1087f $886F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10887 $8877 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1088f $887F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10897 $8887 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1089f $888F FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x108a7 $8897 FF FF FF FF FF FF FF FF ;
.byt    $FF                            ; 0x108af $889F FF                      ;
bank4_Enemy_Data_for_Palaces_Type_A_B:                                          ;
.byt    $01,$05,$72,$8C,$17,$CC,$09,$7A; 0x108b0 $88A0 01 05 72 8C 17 CC 09 7A ;
.byt    $04,$76,$4C,$7E,$4C,$78,$DE,$09; 0x108b8 $88A8 04 76 4C 7E 4C 78 DE 09 ;
.byt    $74,$0C,$10,$9F,$23,$C4,$45,$C4; 0x108c0 $88B0 74 0C 10 9F 23 C4 45 C4 ;
.byt    $05,$0F,$0B,$00,$CB,$07,$0F,$0B; 0x108c8 $88B8 05 0F 0B 00 CB 07 0F 0B ;
.byt    $13,$86,$00,$CB,$05,$15,$5F,$10; 0x108d0 $88C0 13 86 00 CB 05 15 5F 10 ;
.byt    $DF,$09,$18,$06,$7A,$04,$19,$5F; 0x108d8 $88C8 DF 09 18 06 7A 04 19 5F ;
.byt    $45,$C0,$05,$76,$58,$78,$9E,$09; 0x108e0 $88D0 45 C0 05 76 58 78 9E 09 ;
.byt    $18,$06,$12,$4E,$1C,$46,$16,$86; 0x108e8 $88D8 18 06 12 4E 1C 46 16 86 ;
.byt    $07,$78,$58,$1D,$9F,$16,$DF,$05; 0x108f0 $88E0 07 78 58 1D 9F 16 DF 05 ;
.byt    $70,$5E,$75,$D8,$07,$77,$46,$7C; 0x108f8 $88E8 70 5E 75 D8 07 77 46 7C ;
.byt    $46,$2A,$85,$09,$1D,$0E,$70,$58; 0x10900 $88F0 46 2A 85 09 1D 0E 70 58 ;
.byt    $72,$98,$0F,$8D,$0D,$40,$44,$05; 0x10908 $88F8 72 98 0F 8D 0D 40 44 05 ;
.byt    $4D,$4B,$44,$46,$84,$48,$84,$01; 0x10910 $8900 4D 4B 44 46 84 48 84 01 ;
.byt    $CD,$07,$18,$23,$01,$8D,$0E,$8D; 0x10918 $8908 CD 07 18 23 01 8D 0E 8D ;
.byt    $09,$7F,$19,$74,$99,$0A,$8D,$1C; 0x10920 $8910 09 7F 19 74 99 0A 8D 1C ;
.byt    $C5,$07,$76,$51,$19,$63,$7D,$91; 0x10928 $8918 C5 07 76 51 19 63 7D 91 ;
.byt    $07,$14,$63,$10,$A3,$45,$C4,$0B; 0x10930 $8920 07 14 63 10 A3 45 C4 0B ;
.byt    $76,$12,$18,$06,$77,$52,$7B,$52; 0x10938 $8928 76 12 18 06 77 52 7B 52 ;
.byt    $74,$D2,$07,$4F,$07,$78,$58,$73; 0x10940 $8930 74 D2 07 4F 07 78 58 73 ;
.byt    $D8,$13,$44,$16,$1C,$23,$4F,$17; 0x10948 $8938 D8 13 44 16 1C 23 4F 17 ;
.byt    $4A,$56,$12,$A3,$45,$97,$40,$D6; 0x10950 $8940 4A 56 12 A3 45 97 40 D6 ;
.byt    $18,$E3,$4B,$D7,$0D,$1E,$06,$46; 0x10958 $8948 18 E3 4B D7 0D 1E 06 46 ;
.byt    $46,$11,$86,$03,$8D,$0C,$8D,$19; 0x10960 $8950 46 11 86 03 8D 0C 8D 19 ;
.byt    $C6,$0D,$20,$96,$73,$84,$75,$84; 0x10968 $8958 C6 0D 20 96 73 84 75 84 ;
.byt    $77,$84,$69,$84,$5D,$84,$0F,$7C; 0x10970 $8960 77 84 69 84 5D 84 0F 7C ;
.byt    $12,$73,$43,$78,$52,$71,$83,$74; 0x10978 $8968 12 73 43 78 52 71 83 74 ;
.byt    $92,$70,$D2,$07,$CD,$07,$5C,$84; 0x10980 $8970 92 70 D2 07 CD 07 5C 84 ;
.byt    $3F,$9E,$7A,$C5,$07,$50,$CC,$51; 0x10988 $8978 3F 9E 7A C5 07 50 CC 51 ;
.byt    $CC,$52,$D9,$07,$1C,$23,$76,$98; 0x10990 $8980 CC 52 D9 07 1C 23 76 98 ;
.byt    $78,$D9,$03,$0B,$48,$0D,$20,$96; 0x10998 $8988 78 D9 03 0B 48 0D 20 96 ;
.byt    $77,$91,$6B,$91,$5F,$91,$43,$D1; 0x109a0 $8990 77 91 6B 91 5F 91 43 D1 ;
.byt    $37,$D1,$07,$70,$46,$4E,$46,$1F; 0x109a8 $8998 37 D1 07 70 46 4E 46 1F ;
L89A0:                                                                          ;
.byt    $86,$05,$0B,$4A,$04,$8A,$07,$77; 0x109b0 $89A0 86 05 0B 4A 04 8A 07 77 ;
.byt    $59,$0C,$4D,$73,$99,$07,$7F,$18; 0x109b8 $89A8 59 0C 4D 73 99 07 7F 18 ;
.byt    $7D,$5A,$14,$D9,$0B,$1F,$07,$70; 0x109c0 $89B0 7D 5A 14 D9 0B 1F 07 70 ;
.byt    $58,$7E,$58,$2A,$85,$15,$D8,$07; 0x109c8 $89B8 58 7E 58 2A 85 15 D8 07 ;
.byt    $1F,$06,$72,$5D,$74,$DD,$0B,$2B; 0x109d0 $89C0 1F 06 72 5D 74 DD 0B 2B ;
.byt    $06,$7D,$19,$2B,$46,$40,$C5,$38; 0x109d8 $89C8 06 7D 19 2B 46 40 C5 38 ;
.byt    $DE,$0D,$7B,$1D,$7D,$04,$79,$44; 0x109e0 $89D0 DE 0D 7B 1D 7D 04 79 44 ;
.byt    $7E,$5D,$75,$DD,$7A,$C4,$09,$0F; 0x109e8 $89D8 7E 5D 75 DD 7A C4 09 0F ;
.byt    $0F,$3A,$59,$37,$99,$00,$CF,$09; 0x109f0 $89E0 0F 3A 59 37 99 00 CF 09 ;
.byt    $1E,$06,$7F,$0C,$73,$9A,$4A,$85; 0x109f8 $89E8 1E 06 7F 0C 73 9A 4A 85 ;
.byt    $07,$1B,$23,$17,$63,$13,$A3,$07; 0x10a00 $89F0 07 1B 23 17 63 13 A3 07 ;
.byt    $7B,$1A,$19,$99,$70,$D8,$0B,$1B; 0x10a08 $89F8 7B 1A 19 99 70 D8 0B 1B ;
.byt    $06,$70,$5D,$7F,$5D,$19,$86,$7E; 0x10a10 $8A00 06 70 5D 7F 5D 19 86 7E ;
.byt    $9D,$07,$13,$0E,$38,$5E,$38,$D9; 0x10a18 $8A08 9D 07 13 0E 38 5E 38 D9 ;
.byt    $0B,$1B,$06,$70,$5D,$7F,$5D,$19; 0x10a20 $8A10 0B 1B 06 70 5D 7F 5D 19 ;
.byt    $86,$7E,$9D,$03,$7C,$5A,$0B,$79; 0x10a28 $8A18 86 7E 9D 03 7C 5A 0B 79 ;
.byt    $1D,$7D,$5D,$03,$8D,$0C,$8D,$74; 0x10a30 $8A20 1D 7D 5D 03 8D 0C 8D 74 ;
.byt    $DD,$0B,$36,$0C,$73,$5D,$5B,$45; 0x10a38 $8A28 DD 0B 36 0C 73 5D 5B 45 ;
.byt    $34,$8C,$77,$9D,$0D,$7E,$19,$31; 0x10a40 $8A30 34 8C 77 9D 0D 7E 19 31 ;
.byt    $45,$04,$4D,$31,$99,$7F,$99,$06; 0x10a48 $8A38 45 04 4D 31 99 7F 99 06 ;
.byt    $CD,$09,$0B,$4A,$1B,$06,$1C,$46; 0x10a50 $8A40 CD 09 0B 4A 1B 06 1C 46 ;
.byt    $04,$8A,$07,$75,$5A,$76,$98,$1C; 0x10a58 $8A48 04 8A 07 75 5A 76 98 1C ;
.byt    $C5,$0B,$0F,$1B,$79,$1D,$77,$5D; 0x10a60 $8A50 C5 0B 0F 1B 79 1D 77 5D ;
.byt    $7A,$9D,$00,$DB,$05,$6C,$60,$66; 0x10a68 $8A58 7A 9D 00 DB 05 6C 60 66 ;
.byt    $D4,$05,$7C,$61,$66,$D4,$05,$6C; 0x10a70 $8A60 D4 05 7C 61 66 D4 05 6C ;
.byt    $61,$66,$D4,$0D,$0B,$4A,$79,$04; 0x10a78 $8A68 61 66 D4 0D 0B 4A 79 04 ;
.byt    $7C,$44,$71,$84,$76,$C4,$04,$8A; 0x10a80 $8A70 7C 44 71 84 76 C4 04 8A ;
.byt    $05,$4F,$07,$0B,$48,$03,$4A,$05; 0x10a88 $8A78 05 4F 07 0B 48 03 4A 05 ;
.byt    $05,$78,$5E,$74,$DE,$0B,$7A,$04; 0x10a90 $8A80 05 78 5E 74 DE 0B 7A 04 ;
.byt    $76,$4C,$7E,$4C,$78,$DE,$5D,$C5; 0x10a98 $8A88 76 4C 7E 4C 78 DE 5D C5 ;
.byt    $09,$67,$04,$49,$04,$46,$C4,$68; 0x10aa0 $8A90 09 67 04 49 04 46 C4 68 ;
.byt    $C4,$03,$4A,$05,$0D,$10,$50,$1B; 0x10aa8 $8A98 C4 03 4A 05 0D 10 50 1B ;
L8AA0:                                                                          ;
.byt    $4F,$10,$90,$14,$8F,$10,$D0,$2B; 0x10ab0 $8AA0 4F 10 90 14 8F 10 D0 2B ;
.byt    $C5,$05,$13,$86,$1C,$8E,$07,$7B; 0x10ab8 $8AA8 C5 05 13 86 1C 8E 07 7B ;
.byt    $5E,$7A,$83,$1F,$A3,$0D,$7F,$0B; 0x10ac0 $8AB0 5E 7A 83 1F A3 0D 7F 0B ;
.byt    $58,$43,$5D,$43,$51,$83,$53,$83; 0x10ac8 $8AB8 58 43 5D 43 51 83 53 83 ;
.byt    $70,$CB,$05,$0F,$07,$0B,$48,$09; 0x10ad0 $8AC0 70 CB 05 0F 07 0B 48 09 ;
.byt    $5C,$03,$5F,$43,$45,$9E,$54,$C3; 0x10ad8 $8AC8 5C 03 5F 43 45 9E 54 C3 ;
.byt    $0B,$5C,$03,$7F,$19,$24,$43,$4F; 0x10ae0 $8AD0 0B 5C 03 7F 19 24 43 4F ;
.byt    $59,$12,$DF,$05,$7C,$59,$08,$47; 0x10ae8 $8AD8 59 12 DF 05 7C 59 08 47 ;
.byt    $07,$7F,$1B,$7B,$85,$70,$DB,$09; 0x10af0 $8AE0 07 7F 1B 7B 85 70 DB 09 ;
.byt    $7A,$19,$7F,$0C,$72,$4C,$7F,$99; 0x10af8 $8AE8 7A 19 7F 0C 72 4C 7F 99 ;
.byt    $0D,$7F,$1B,$78,$44,$7A,$44,$43; 0x10b00 $8AF0 0D 7F 1B 78 44 7A 44 43 ;
.byt    $85,$7F,$84,$70,$DB,$09,$5E,$04; 0x10b08 $8AF8 85 7F 84 70 DB 09 5E 04 ;
.byt    $4E,$59,$57,$84,$53,$C4,$05,$7D; 0x10b10 $8B00 4E 59 57 84 53 C4 05 7D ;
.byt    $19,$7F,$5A,$05,$1E,$5F,$79,$DE; 0x10b18 $8B08 19 7F 5A 05 1E 5F 79 DE ;
.byt    $07,$4B,$5A,$4B,$99,$79,$D9,$05; 0x10b20 $8B10 07 4B 5A 4B 99 79 D9 05 ;
.byt    $7A,$60,$66,$D4,$05,$4A,$05,$08; 0x10b28 $8B18 7A 60 66 D4 05 4A 05 08 ;
.byt    $47,$05,$77,$1E,$10,$9E,$0B,$7E; 0x10b30 $8B20 47 05 77 1E 10 9E 0B 7E ;
.byt    $1E,$72,$4C,$76,$4C,$7D,$99,$10; 0x10b38 $8B28 1E 72 4C 76 4C 7D 99 10 ;
.byt    $CE,$05,$7F,$5D,$75,$DD,$05,$17; 0x10b40 $8B30 CE 05 7F 5D 75 DD 05 17 ;
.byt    $63,$18,$A3,$07,$2B,$10,$3B,$43; 0x10b48 $8B38 63 18 A3 07 2B 10 3B 43 ;
.byt    $27,$83,$09,$7F,$0B,$73,$5D,$72; 0x10b50 $8B40 27 83 09 7F 0B 73 5D 72 ;
.byt    $DD,$70,$CB,$03,$16,$DF,$05,$7F; 0x10b58 $8B48 DD 70 CB 03 16 DF 05 7F ;
L8B50:                                                                          ;
.byt    $8C,$74,$DE,$0B,$10,$50,$10,$90; 0x10b60 $8B50 8C 74 DE 0B 10 50 10 90 ;
.byt    $24,$9E,$10,$D0,$2B,$C5,$05,$1D; 0x10b68 $8B58 24 9E 10 D0 2B C5 05 1D ;
.byt    $63,$17,$A3,$05,$09,$19,$7A,$99; 0x10b70 $8B60 63 17 A3 05 09 19 7A 99 ;
.byt    $05                            ; 0x10b78 $8B68 05                      ;
L8B69:                                                                          ;
.byt    $6B,$62,$66,$D4,$09,$5E,$86,$7E; 0x10b79 $8B69 6B 62 66 D4 09 5E 86 7E ;
.byt    $8C,$72,$CC,$77,$DE,$07,$14,$63; 0x10b81 $8B71 8C 72 CC 77 DE 07 14 63 ;
.byt    $16,$5F,$76,$9A,$07,$7F,$1B,$7B; 0x10b89 $8B79 16 5F 76 9A 07 7F 1B 7B ;
.byt    $85,$70,$DB,$0B,$71,$5D,$76,$44; 0x10b91 $8B81 85 70 DB 0B 71 5D 76 44 ;
.byt    $7A,$44,$73,$DD,$75,$C4,$09,$24; 0x10b99 $8B89 7A 44 73 DD 75 C4 09 24 ;
.byt    $10,$29,$10,$0B,$4F,$04,$8F,$0D; 0x10ba1 $8B91 10 29 10 0B 4F 04 8F 0D ;
.byt    $10,$50,$22,$5E,$10,$90,$16    ; 0x10ba9 $8B99 10 50 22 5E 10 90 16    ;
L8BA0:                                                                          ;
.byt    $9F,$10,$D0,$62,$CE,$03,$4A,$05; 0x10bb0 $8BA0 9F 10 D0 62 CE 03 4A 05 ;
.byt    $0B,$1A,$23,$10,$4C,$13,$4C,$12; 0x10bb8 $8BA8 0B 1A 23 10 4C 13 4C 12 ;
.byt    $E3,$18,$C7,$09,$39,$06,$38,$46; 0x10bc0 $8BB0 E3 18 C7 09 39 06 38 46 ;
.byt    $15,$CE,$79,$C6,$07,$75,$5D    ; 0x10bc8 $8BB8 15 CE 79 C6 07 75 5D    ;
L8BBF:                                                                          ;
.byt    $78,$9D,$7D,$9E,$07,$7B,$1A,$2E; 0x10bcf $8BBF 78 9D 7D 9E 07 7B 1A 2E ;
.byt    $45,$79,$9A,$0F,$40,$56,$7A,$5D; 0x10bd7 $8BC7 45 79 9A 0F 40 56 7A 5D ;
.byt    $4F,$57,$75,$9D,$46,$96,$73,$DD; 0x10bdf $8BCF 4F 57 75 9D 46 96 73 DD ;
.byt    $45,$D7,$09,$28,$0E,$7F,$1A,$4B; 0x10be7 $8BD7 45 D7 09 28 0E 7F 1A 4B ;
.byt    $4E,$7E,$9E,$09,$4F,$07,$72,$5D; 0x10bef $8BDF 4E 7E 9E 09 4F 07 72 5D ;
.byt    $40,$C5,$75,$DD,$03,$7A,$60,$05; 0x10bf7 $8BE7 40 C5 75 DD 03 7A 60 05 ;
.byt    $7B,$1A,$79,$9A,$0B,$71,$5D,$1D; 0x10bff $8BEF 7B 1A 79 9A 0B 71 5D 1D ;
.byt    $63,$75,$9D,$72,$DD,$16,$E3,$09; 0x10c07 $8BF7 63 75 9D 72 DD 16 E3 09 ;
.byt    $78,$07,$7F,$19,$3E,$4E,$77,$D9; 0x10c0f $8BFF 78 07 7F 19 3E 4E 77 D9 ;
.byt    $03,$76,$DA,$0D,$5A,$43,$1B,$4F; 0x10c17 $8C07 03 76 DA 0D 5A 43 1B 4F ;
.byt    $5F,$43,$14,$8F,$5E,$83,$53,$C3; 0x10c1f $8C0F 5F 43 14 8F 5E 83 53 C3 ;
.byt    $07,$71,$5D,$70,$99,$7F,$9D,$0B; 0x10c27 $8C17 07 71 5D 70 99 7F 9D 0B ;
.byt    $2F,$0E,$07,$4D,$20,$8E,$08,$8D; 0x10c2f $8C1F 2F 0E 07 4D 20 8E 08 8D ;
.byt    $21,$CE,$09,$15,$63,$7F,$47,$74; 0x10c37 $8C27 21 CE 09 15 63 7F 47 74 ;
.byt    $C3,$15,$CE,$03,$7A,$60,$07,$0F; 0x10c3f $8C2F C3 15 CE 03 7A 60 07 0F ;
.byt    $9A,$1C,$CE,$1D,$CE,$05,$1A,$06; 0x10c47 $8C37 9A 1C CE 1D CE 05 1A 06 ;
.byt    $17,$86,$03,$11,$E3,$05,$7B,$61; 0x10c4f $8C3F 17 86 03 11 E3 05 7B 61 ;
.byt    $66,$D4,$09,$7F,$1B,$71,$45,$12; 0x10c57 $8C47 66 D4 09 7F 1B 71 45 12 ;
.byt    $99,$70,$DB,$0D,$78,$1D,$1C,$23; 0x10c5f $8C4F 99 70 DB 0D 78 1D 1C 23 ;
.byt    $7B,$5D,$72,$8C,$13,$E3,$74,$DD; 0x10c67 $8C57 7B 5D 72 8C 13 E3 74 DD ;
.byt    $07,$71,$59,$7F,$47,$77,$99,$0D; 0x10c6f $8C5F 07 71 59 7F 47 77 99 0D ;
.byt    $1E,$0E,$71,$46,$70,$86,$11,$8E; 0x10c77 $8C67 1E 0E 71 46 70 86 11 8E ;
.byt    $72,$C6,$2C,$C5                ; 0x10c7f $8C6F 72 C6 2C C5             ;
bank4_Area_Data:                                                                ;
.byt    $13,$60,$0E,$08,$E3,$00,$D2,$08; 0x10c83 $8C73 13 60 0E 08 E3 00 D2 08 ;
.byt    $A2,$23,$98,$71,$80,$0F,$08,$71; 0x10c8b $8C7B A2 23 98 71 80 0F 08 71 ;
.byt    $09,$D1,$0F                    ; 0x10c93 $8C83 09 D1 0F                ;
L8C86:                                                                          ;
.byt    $38,$60,$0F,$08,$D2,$08,$70,$95; 0x10c96 $8C86 38 60 0F 08 D2 08 70 95 ;
.byt    $64,$0F,$0C,$D2,$0E,$70,$71,$D2; 0x10c9e $8C8E 64 0F 0C D2 0E 70 71 D2 ;
.byt    $08,$D6,$0E,$70,$75,$D6,$08,$80; 0x10ca6 $8C96 08 D6 0E 70 75 D6 08 80 ;
.byt    $B2,$81,$B2,$81,$71,$90,$73,$D8; 0x10cae $8C9E B2 81 B2 81 71 90 73 D8 ;
.byt    $0E,$80,$B2,$A3,$23,$04,$F1,$F0; 0x10cb6 $8CA6 0E 80 B2 A3 23 04 F1 F0 ;
.byt    $50,$A2,$23,$D7,$08,$60,$01,$76; 0x10cbe $8CAE 50 A2 23 D7 08 60 01 76 ;
.byt    $27,$82,$C2,$64,$0F,$08,$D2,$0E; 0x10cc6 $8CB6 27 82 C2 64 0F 08 D2 0E ;
L8CBE:                                                                          ;
.byt    $32,$60,$0E,$08,$D2,$0B,$D2,$09; 0x10cce $8CBE 32 60 0E 08 D2 0B D2 09 ;
.byt    $D2,$08,$D4,$09,$D2,$0B,$D2,$0E; 0x10cd6 $8CC6 D2 08 D4 09 D2 0B D2 0E ;
.byt    $84,$05,$D2,$0B,$D2,$09,$D2,$08; 0x10cde $8CCE 84 05 D2 0B D2 09 D2 08 ;
.byt    $29,$C8,$D2,$0B,$D1,$0E,$A1,$25; 0x10ce6 $8CD6 29 C8 D2 0B D1 0E A1 25 ;
.byt    $02,$F1,$F0                    ; 0x10cee $8CDE 02 F1 F0                ;
L8CE1:                                                                          ;
.byt    $50,$D5,$0B,$D1,$08,$21,$C8,$DA; 0x10cf1 $8CE1 50 D5 0B D1 08 21 C8 DA ;
.byt    $09,$D2,$0B,$D2,$0E,$D2,$0F    ; 0x10cf9 $8CE9 09 D2 0B D2 0E D2 0F    ;
L8CF0:                                                                          ;
.byt    $16,$60,$08,$08,$E2,$00,$82,$C2; 0x10d00 $8CF0 16 60 08 08 E2 00 82 C2 ;
.byt    $60,$09,$D6,$0D,$A0,$7F,$70,$AF; 0x10d08 $8CF8 60 09 D6 0D A0 7F 70 AF ;
.byt    $80,$AF,$E3,$00,$D8,$08        ; 0x10d10 $8D00 80 AF E3 00 D8 08       ;
L8D06:                                                                          ;
.byt    $1F,$60,$0F,$08,$D7,$0E,$80,$F1; 0x10d16 $8D06 1F 60 0F 08 D7 0E 80 F1 ;
.byt    $F0,$50,$A2,$21,$88,$05,$D3,$0D; 0x10d1e $8D0E F0 50 A2 21 88 05 D3 0D ;
.byt    $E2,$00,$DA,$09,$40,$01,$92,$71; 0x10d26 $8D16 E2 00 DA 09 40 01 92 71 ;
.byt    $D2,$04,$D2,$06,$4D,$0F,$08    ; 0x10d2e $8D1E D2 04 D2 06 4D 0F 08    ;
L8D25:                                                                          ;
.byt    $21,$60,$0E,$08,$D2,$08,$70,$35; 0x10d35 $8D25 21 60 0E 08 D2 08 70 35 ;
.byt    $7A,$35,$7A,$35,$62,$0F,$0A,$78; 0x10d3d $8D2D 7A 35 7A 35 62 0F 0A 78 ;
.byt    $35,$7A,$33,$D4,$0E,$81,$05,$08; 0x10d45 $8D35 35 7A 33 D4 0E 81 05 08 ;
.byt    $F1,$F0,$50,$B0,$71,$96,$09,$D1; 0x10d4d $8D3D F1 F0 50 B0 71 96 09 D1 ;
.byt    $0F                            ; 0x10d55 $8D45 0F                      ;
L8D46:                                                                          ;
.byt    $0D,$60,$0D,$08,$E1,$00,$DE,$00; 0x10d56 $8D46 0D 60 0D 08 E1 00 DE 00 ;
.byt    $D2,$06,$41,$0F,$08            ; 0x10d5e $8D4E D2 06 41 0F 08          ;
L8D53:                                                                          ;
.byt    $26,$60,$0E,$08,$D2,$00,$94,$75; 0x10d63 $8D53 26 60 0E 08 D2 00 94 75 ;
.byt    $72,$73,$52,$71,$52,$5E,$F0,$1E; 0x10d6b $8D5B 72 73 52 71 52 5E F0 1E ;
.byt    $4C,$0F,$0A,$53,$5E,$F0,$1E,$4C; 0x10d73 $8D63 4C 0F 0A 53 5E F0 1E 4C ;
.byt    $0F,$0C,$53,$59,$F0,$19,$5A,$71; 0x10d7b $8D6B 0F 0C 53 59 F0 19 5A 71 ;
.byt    $70,$73,$90,$75,$DA,$0E        ; 0x10d83 $8D73 70 73 90 75 DA 0E       ;
L8D79:                                                                          ;
.byt    $14,$60,$0E,$48,$DA,$80,$AE,$0F; 0x10d89 $8D79 14 60 0E 48 DA 80 AE 0F ;
.byt    $0A,$E2,$00,$30,$71,$20,$0F,$08; 0x10d91 $8D81 0A E2 00 30 71 20 0F 08 ;
.byt    $E3,$00,$D2,$0E                ; 0x10d99 $8D89 E3 00 D2 0E             ;
L8D8D:                                                                          ;
.byt    $1D,$60,$0E,$08,$D2,$08,$94,$73; 0x10d9d $8D8D 1D 60 0E 08 D2 08 94 73 ;
.byt    $F4,$15,$82,$37,$F4,$1F,$86,$38; 0x10da5 $8D95 F4 15 82 37 F4 1F 86 38 ;
.byt    $FA,$1B,$72,$37,$63,$0F,$08,$97; 0x10dad $8D9D FA 1B 72 37 63 0F 08 97 ;
.byt    $74,$E3,$00,$DE,$0E            ; 0x10db5 $8DA5 74 E3 00 DE 0E          ;
L8DAA:                                                                          ;
.byt    $24,$60,$0E,$08,$D4,$08,$60,$01; 0x10dba $8DAA 24 60 0E 08 D4 08 60 01 ;
.byt    $6B,$02,$D1,$0E,$84,$91,$90,$91; 0x10dc2 $8DB2 6B 02 D1 0E 84 91 90 91 ;
.byt    $D6,$08,$60,$01,$6B,$02,$D1,$0E; 0x10dca $8DBA D6 08 60 01 6B 02 D1 0E ;
.byt    $84                            ; 0x10dd2 $8DC2 84                      ;
L8DC3:                                                                          ;
.byt    $91,$90,$91,$D6,$08,$60,$01,$6B; 0x10dd3 $8DC3 91 90 91 D6 08 60 01 6B ;
.byt    $02,$D1,$0E                    ; 0x10ddb $8DCB 02 D1 0E                ;
L8DCE:                                                                          ;
.byt    $24,$60,$0F,$08,$D2,$0E,$05,$F1; 0x10dde $8DCE 24 60 0F 08 D2 0E 05 F1 ;
.byt    $F0,$50,$B0,$71,$E2,$00,$D0,$08; 0x10de6 $8DD6 F0 50 B0 71 E2 00 D0 08 ;
.byt    $40,$01,$A4,$33,$94,$97,$84,$33; 0x10dee $8DDE 40 01 A4 33 94 97 84 33 ;
.byt    $94,$9B,$70,$9B,$64,$33,$54,$93; 0x10df6 $8DE6 94 9B 70 9B 64 33 54 93 ;
.byt    $D4,$06,$00,$73                ; 0x10dfe $8DEE D4 06 00 73             ;
L8DF2:                                                                          ;
.byt    $1E,$60,$0E,$08,$D2,$08,$98,$B1; 0x10e02 $8DF2 1E 60 0E 08 D2 08 98 B1 ;
.byt    $96,$B1,$96,$B1,$96,$B1,$96,$B1; 0x10e0a $8DFA 96 B1 96 B1 96 B1 96 B1 ;
.byt    $96,$B1,$D6,$0E,$81,$05,$A6,$71; 0x10e12 $8E02 96 B1 D6 0E 81 05 A6 71 ;
.byt    $82,$F1,$F0,$50,$D2,$0F        ; 0x10e1a $8E0A 82 F1 F0 50 D2 0F       ;
L8E10:                                                                          ;
.byt    $20,$60,$0E,$08,$D2,$00,$A4,$23; 0x10e20 $8E10 20 60 0E 08 D2 00 A4 23 ;
.byt    $F4,$1F,$82,$3F,$58,$35,$F6,$1F; 0x10e28 $8E18 F4 1F 82 3F 58 35 F6 1F ;
.byt    $82,$33,$52,$35,$84,$3F,$56,$35; 0x10e30 $8E20 82 33 52 35 84 3F 56 35 ;
.byt    $F2,$1B,$88,$31,$A4,$23,$D8,$0E; 0x10e38 $8E28 F2 1B 88 31 A4 23 D8 0E ;
L8E30:                                                                          ;
.byt    $14,$60,$0F,$08,$07,$F1,$F0,$50; 0x10e40 $8E30 14 60 0F 08 07 F1 F0 50 ;
.byt    $B0,$71,$D2,$0E,$D7,$00,$E2,$00; 0x10e48 $8E38 B0 71 D2 0E D7 00 E2 00 ;
.byt    $77,$C3,$50,$09                ; 0x10e50 $8E40 77 C3 50 09             ;
L8E44:                                                                          ;
.byt    $0E,$60,$08,$08,$2F,$C8,$E1,$00; 0x10e54 $8E44 0E 60 08 08 2F C8 E1 00 ;
.byt    $2F,$C8,$E2,$00,$2F,$C8        ; 0x10e5c $8E4C 2F C8 E2 00 2F C8       ;
L8E52:                                                                          ;
.byt    $29,$60,$07,$08,$F0,$17,$D8,$00; 0x10e62 $8E52 29 60 07 08 F0 17 D8 00 ;
.byt    $F0,$13,$40,$51,$70,$52,$A0,$53; 0x10e6a $8E5A F0 13 40 51 70 52 A0 53 ;
.byt    $90,$0F,$0B,$D4,$0B,$F0,$13,$A2; 0x10e72 $8E62 90 0F 0B D4 0B F0 13 A2 ;
.byt    $21,$F2,$1F,$A0,$2F,$E2,$00,$F0; 0x10e7a $8E6A 21 F2 1F A0 2F E2 00 F0 ;
.byt    $1F,$A0,$2F,$E3,$00,$F0,$1F,$A0; 0x10e82 $8E72 1F A0 2F E3 00 F0 1F A0 ;
.byt    $2F                            ; 0x10e8a $8E7A 2F                      ;
L8E7B:                                                                          ;
.byt    $09,$60,$00,$09,$99,$0F,$00,$89; 0x10e8b $8E7B 09 60 00 09 99 0F 00 89 ;
.byt    $05                            ; 0x10e93 $8E83 05                      ;
L8E84:                                                                          ;
.byt    $09,$60,$00,$09,$99,$0F,$01,$89; 0x10e94 $8E84 09 60 00 09 99 0F 01 89 ;
.byt    $05                            ; 0x10e9c $8E8C 05                      ;
L8E8D:                                                                          ;
.byt    $09,$60,$00,$09,$99,$0F,$04,$89; 0x10e9d $8E8D 09 60 00 09 99 0F 04 89 ;
.byt    $05                            ; 0x10ea5 $8E95 05                      ;
L8E96:                                                                          ;
.byt    $2D,$60,$0E,$08,$E1,$00,$D0,$00; 0x10ea6 $8E96 2D 60 0E 08 E1 00 D0 00 ;
.byt    $42,$21,$90,$21,$74,$21,$44,$21; 0x10eae $8E9E 42 21 90 21 74 21 44 21 ;
.byt    $90,$21,$74,$21,$44,$21,$90,$21; 0x10eb6 $8EA6 90 21 74 21 44 21 90 21 ;
.byt    $74,$21,$44,$21,$90,$21,$74,$21; 0x10ebe $8EAE 74 21 44 21 90 21 74 21 ;
.byt    $44,$21,$90,$21,$74,$21,$D4,$02; 0x10ec6 $8EB6 44 21 90 21 74 21 D4 02 ;
.byt    $83,$0F,$08,$D1,$0F            ; 0x10ece $8EBE 83 0F 08 D1 0F          ;
bank4_UNUSED_8EC3:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10ed3 $8EC3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10edb $8ECB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10ee3 $8ED3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10eeb $8EDB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10ef3 $8EE3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10efb $8EEB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f03 $8EF3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f0b $8EFB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f13 $8F03 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f1b $8F0B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f23 $8F13 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f2b $8F1B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f33 $8F23 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f3b $8F2B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f43 $8F33 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f4b $8F3B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f53 $8F43 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f5b $8F4B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f63 $8F53 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f6b $8F5B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f73 $8F63 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f7b $8F6B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f83 $8F73 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f8b $8F7B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f93 $8F83 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10f9b $8F8B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fa3 $8F93 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fab $8F9B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fb3 $8FA3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fbb $8FAB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF                ; 0x10fc3 $8FB3 FF FF FF FF             ;
L8FB7:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fc7 $8FB7 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fcf $8FBF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fd7 $8FC7 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fdf $8FCF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fe7 $8FD7 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fef $8FDF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10ff7 $8FE7 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10fff $8FEF FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11007 $8FF7 FF FF FF FF FF FF FF FF ;
.byt    $FF                            ; 0x1100f $8FFF FF                      ;
L9000:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11010 $9000 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11018 $9008 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11020 $9010 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11028 $9018 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11030 $9020 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11038 $9028 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11040 $9030 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF                        ; 0x11048 $9038 FF FF                   ;
L903A:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1104a $903A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11052 $9042 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1105a $904A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11062 $9052 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1106a $905A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11072 $9062 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1107a $906A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11082 $9072 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1108a $907A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11092 $9082 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1109a $908A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110a2 $9092 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110aa $909A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110b2 $90A2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110ba $90AA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110c2 $90B2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110ca $90BA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110d2 $90C2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110da $90CA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110e2 $90D2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110ea $90DA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110f2 $90E2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x110fa $90EA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11102 $90F2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1110a $90FA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11112 $9102 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1111a $910A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11122 $9112 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1112a $911A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11132 $9122 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1113a $912A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11142 $9132 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1114a $913A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11152 $9142 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1115a $914A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11162 $9152 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1116a $915A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11172 $9162 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1117a $916A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11182 $9172 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1118a $917A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11192 $9182 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1119a $918A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111a2 $9192 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111aa $919A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111b2 $91A2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111ba $91AA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111c2 $91B2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111ca $91BA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111d2 $91C2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111da $91CA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111e2 $91D2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111ea $91DA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111f2 $91E2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x111fa $91EA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11202 $91F2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1120a $91FA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11212 $9202 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1121a $920A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11222 $9212 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1122a $921A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11232 $9222 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1123a $922A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11242 $9232 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1124a $923A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11252 $9242 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1125a $924A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11262 $9252 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1126a $925A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11272 $9262 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1127a $926A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11282 $9272 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1128a $927A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11292 $9282 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1129a $928A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112a2 $9292 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112aa $929A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112b2 $92A2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112ba $92AA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112c2 $92B2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112ca $92BA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112d2 $92C2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112da $92CA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112e2 $92D2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112ea $92DA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112f2 $92E2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x112fa $92EA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11302 $92F2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1130a $92FA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11312 $9302 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1131a $930A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11322 $9312 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1132a $931A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11332 $9322 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1133a $932A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11342 $9332 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1134a $933A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11352 $9342 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1135a $934A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11362 $9352 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1136a $935A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11372 $9362 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1137a $936A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11382 $9372 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1138a $937A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11392 $9382 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1139a $938A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113a2 $9392 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113aa $939A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113b2 $93A2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113ba $93AA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113c2 $93B2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113ca $93BA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113d2 $93C2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113da $93CA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113e2 $93D2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113ea $93DA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113f2 $93E2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x113fa $93EA FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11402 $93F2 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0x1140a $93FA FF FF FF FF FF FF       ;
; ---------------------------------------------------------------------------- ;
bank4_pointer_table_Related_to_projectiles_maybe:                               ;
.word    L974E                         ; 0x11410 $9400 4E 97                   ;
.word    L974E                         ; 0x11412 $9402 4E 97                   ;
.word    L973D                         ; 0x11414 $9404 3D 97                   ;
.word    L974B                         ; 0x11416 $9406 4B 97                   ;
.word    L973D                         ; 0x11418 $9408 3D 97                   ;
.word    L9940                         ; 0x1141a $940A 40 99                   ;
.word    L98B9                         ; 0x1141c $940C B9 98                   ;
.word    L98F8                         ; 0x1141e $940E F8 98                   ;
; ---------------------------------------------------------------------------- ;
bank4_table_padding:                                                            ;
.byt    $00,$00,$00,$00,$00,$00        ; 0x11420 $9410 00 00 00 00 00 00       ;
; ---------------------------------------------------------------------------- ;
bank4_pointer_table1:                                                           ;
.word    L9767                         ; 0x11426 $9416 67 97                   ;
; ---------------------------------------------------------------------------- ;
bank4_table1:                                                                   ;
.byt    $00,$03,$41,$86,$53,$92,$A3,$80; 0x11428 $9418 00 03 41 86 53 92 A3 80 ;
.byt    $00                            ; 0x11430 $9420 00                      ;
bank4_Enemy_Hit_Points0:                                                        ;
.byt    $00,$00,$00,$03,$04,$FF,$FA,$10; 0x11431 $9421 00 00 00 03 04 FF FA 10 ;
.byt    $00,$00,$38,$02,$02,$FA,$FA,$08; 0x11439 $9429 00 00 38 02 02 FA FA 08 ;
.byt    $08,$0C,$0C,$00,$00,$00,$00,$00; 0x11441 $9431 08 0C 0C 00 00 00 00 00 ;
.byt    $10,$18,$38,$02,$02,$20,$10,$08; 0x11449 $9439 10 18 38 02 02 20 10 08 ;
.byt    $20,$30,$50,$0C                ; 0x11451 $9441 20 30 50 0C             ;
; ---------------------------------------------------------------------------- ;
bank4_Pointer_table_for_Enemy_Init_Routines:                                    ;
.word    bank4_code_rts1               ; 0x11455 $9445 AD 95                   ;Fairy
.word    bank4_code_rts1               ; 0x11457 $9447 AD 95                   ;Item in Palace
.word    bank4_code_rts1               ; 0x11459 $9449 AD 95                   ;Locked Door
.word    bank4_code_rts1               ; 0x1145b $944B AD 95                   ;Myu
.word    bank4_code_rts1               ; 0x1145d $944D AD 95                   ;Bot
.word    bank4_code_rts1               ; 0x1145f $944F AD 95                   ;Hidden Red Jar
.word    bank4_Enemy_Init_Routines_Bubble__Slow; 0x11461 $9451 AA 98           ;Bubble - Slow
.word    bank4_code_rts1               ; 0x11463 $9453 AD 95                   ;Moa
.word    bank4_code_rts1               ; 0x11465 $9455 AD 95                   ;Falling Block Generator
.word    bank4_code_rts1               ; 0x11467 $9457 AD 95                   ;Falling Block
.word    bank4_Enemy_Init_Routines_Ra_Unicorn_Head; 0x11469 $9459 F4 B9        ;Ra (Unicorn Head)
.word    bank4_Enemy_Init_Routines_Generator; 0x1146b $945B 28 9A              ;Tinsuit Generator
.word    bank4_Enemy_Init_Routines_Tinsuit; 0x1146d $945D B6 98                ;Tinsuit
.word    bank4_code_rts1               ; 0x1146f $945F AD 95                   ;Dripping Column
.word    bank4_Enemy_Init_Routines_Bubble__Fast; 0x11471 $9461 AE 98           ;Bubble - Fast
.word    bank4_Enemy_Init_Routines_Generator; 0x11473 $9463 28 9A              ;Bago Bago Generator
.word    bank4_code_rts1               ; 0x11475 $9465 AD 95                   ;Bago Bago
.word    bank4_code_rts1               ; 0x11477 $9467 AD 95                   ;Rope - Jumping
.word    bank4_code_rts1               ; 0x11479 $9469 AD 95                   ;Rope - Moving
.word    bank4_code_rts1               ; 0x1147b $946B AD 95                   ;Elevator
.word    bank4_Enemy_Init_Routines_Crystal_Slot_and_Crystal; 0x1147d $946D 73 9A;Crystal Slot
.word    bank4_Enemy_Init_Routines_Crystal_Slot_and_Crystal; 0x1147f $946F 73 9A;Crystal
.word    bank4_Enemy_Init_Routines_Energy_Ball_Shooter__Left_Right; 0x11481 $9471 FC B8;Energy Ball Shooter - Right
.word    bank4_Enemy_Init_Routines_Energy_Ball_Shooter__Left_Right; 0x11483 $9473 FC B8;Energy Ball Shooter - Left
.word    bank4_code_rts1               ; 0x11485 $9475 AD 95                   ;Iron Knuckle - Orange
.word    bank4_code_rts1               ; 0x11487 $9477 AD 95                   ;Iron Knuckle - Red
.word    bank4_code_rts1               ; 0x11489 $9479 AD 95                   ;Iron Knuckle - Blue
.word    bank4_Enemy_Init_Routines_Generator; 0x1148b $947B 28 9A              ;Mau Generator
.word    bank4_code_rts1               ; 0x1148d $947D AD 95                   ;Mau (Wolf Head)
.word    bank4_code_rts1               ; 0x1148f $947F AD 95                   ;Mago
.word    bank4_code_rts1               ; 0x11491 $9481 AD 95                   ;Guma
.word    bank4_code_rts1               ; 0x11493 $9483 AD 95                   ;Stalfos - Red
.word    bank4_Enemy_Init_Routines_Horsehead__Rebonack; 0x11495 $9485 A1 BC    ;Horsehead / Rebonack
.word    bank4_Enemy_Init_Routines_Helmethead__Gooma__Barba; 0x11497 $9487 7E BC;Helmethead / Gooma / Barba
.word    bank4_code_rts1               ; 0x11499 $9489 AD 95                   ;Floating Helmet / Carock
.word    bank4_code_rts1               ; 0x1149b $948B AD 95                   ;Stalfos - Blue
bank4_Pointer_table_for_Enemy_Routines0:                                        ;
.word    bank7_Enemy_Routines1_Fairy   ; 0x1149d $948D 1E D9                   ;Fairy
.word    bank7_Enemy_Routines1_Red_Jar ; 0x1149f $948F 59 D9                   ;Item in Palace
.word    bank7_Enemy_Routines1_Locked_Door; 0x114a1 $9491 91 D9                ;Locked Door
.word    bank7_Enemy_Routines1_Myu     ; 0x114a3 $9493 47 DA                   ;Myu
.word    bank7_Enemy_Routines1_Bot     ; 0x114a5 $9495 0C DA                   ;Bot
.word    bank4_Enemy_Routines_Hidden_Red_Jar; 0x114a7 $9497 3E B8              ;Hidden Red Jar			about 04:AF61
.word    bank4_Enemy_Routines_Bubble__Slow_Fast; 0x114a9 $9499 D1 99           ;Bubble - Slow
.word    bank4_Enemy_Routines_Moa      ; 0x114ab $949B 09 B9                   ;Moa
.word    bank4_Enemy_Routines_Falling_Block_Generator; 0x114ad $949D 98 AB     ;Falling Block Generator
.word    bank4_Enemy_Routines_Falling_Block; 0x114af $949F E9 AB               ;Falling Block
.word    bank4_Enemy_Routines_Ra_Unicorn_Head; 0x114b1 $94A1 20 BA             ;Ra (Unicorn Head)
.word    bank4_Enemy_Routines_Tinsuit_Generator; 0x114b3 $94A3 C1 9E           ;Tinsuit Generator
.word    bank4_Enemy_Routines_Tinsuit  ; 0x114b5 $94A5 BC BC                   ;Tinsuit
.word    bank4_Enemy_Routines_Dripping_Column; 0x114b7 $94A7 BF B9             ;Dripping Column
.word    bank4_Enemy_Routines_Bubble__Slow_Fast; 0x114b9 $94A9 D1 99           ;Bubble - Fast
.word    bank7_Enemy_Routines1_Bago_Bago_Generator; 0x114bb $94AB 8F D7        ;Bago Bago Generator
.word    bank7_Enemy_Routines1_Bago_Bago0; 0x114bd $94AD E1 D7                 ;Bago Bago
.word    bank7_Enemy_Routines1_Bago_Bago1; 0x114bf $94AF 42 D8                 ;Rope - Jumping
.word    bank7_Enemy_Routines1_Octorok ; 0x114c1 $94B1 88 D8                   ;Rope - Moving
.word    bank7_Enemy_Routines1_Elevator; 0x114c3 $94B3 C2 D8                   ;Elevator
.word    bank4_Enemy_Routines_Crystal_Slot; 0x114c5 $94B5 D4 9A                ;Crystal Slot
.word    bank4_Enemy_Routines_Crystal  ; 0x114c7 $94B7 8B 9A                   ;Crystal
.word    bank4_Enemy_Routines_Energy_Ball_Shooter__Left_Right; 0x114c9 $94B9 DD 9B;Energy Ball Shooter - Right
.word    bank4_Enemy_Routines_Energy_Ball_Shooter__Left_Right; 0x114cb $94BB DD 9B;Energy Ball Shooter - Left
.word    bank4_Enemy_Routines_Iron_Knuckle; 0x114cd $94BD 8C 9C                ;Iron Knuckle - Orange
.word    bank4_Enemy_Routines_Iron_Knuckle; 0x114cf $94BF 8C 9C                ;Iron Knuckle - Red
.word    bank4_Enemy_Routines_Iron_Knuckle; 0x114d1 $94C1 8C 9C                ;Iron Knuckle - Blue
.word    bank4_Enemy_Routines_Mau_Generator; 0x114d3 $94C3 61 B8               ;Mau Generator
.word    bank4_Enemy_Routines_Mau_Wolf_Head; 0x114d5 $94C5 BB B8               ;Mau (Wolf Head)
.word    bank4_Enemy_Routines_Mago     ; 0x114d7 $94C7 C5 B7                   ;Mago
.word    bank4_Enemy_Routines_Guma     ; 0x114d9 $94C9 57 BA                   ;Guma
.word    bank4_Enemy_Routines_Stalfos  ; 0x114db $94CB 5A 96                   ;Stalfos - Red
.word    bank4_Enemy_Routines_Horsehead; 0x114dd $94CD 5F BB                   ;Horsehead
.word    bank4_Enemy_Routines_Helmethead__Gooma; 0x114df $94CF C3 BA           ;Helmethead / Gooma
.word    bank4_Enemy_Routines_Floating_Helmet; 0x114e1 $94D1 EF BC             ;Floating Helmet
.word    bank4_Enemy_Routines_Stalfos  ; 0x114e3 $94D3 5A 96                   ;Stalfos - Blue
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Attributes_Palette_Experience_Code_etc0:                            ;
;xx.. ....	Palette Code (0-3)                                                  ;
;..x. ....	No Damage from Sword (needs Fire)                                   ;
;...x ....	Steals Experience Points                                            ;
;.... xxxx	Experience Code (0-F)                                               ;
.byt    $40,$40,$40,$C2,$C1,$80,$87,$57; 0x114e5 $94D5 40 40 40 C2 C1 80 87 57 ;
.byt    $C0,$C0,$D5,$00,$50,$80,$87,$00; 0x114ed $94DD C0 C0 D5 00 50 80 87 00 ;
.byt    $93,$C5,$C5,$40,$00,$00,$00,$00; 0x114f5 $94E5 93 C5 C5 40 00 00 00 00 ;
.byt    $47,$89,$CA,$93,$93,$4B,$87,$86; 0x114fd $94ED 47 89 CA 93 93 4B 87 86 ;
.byt    $87,$CA,$C0,$C7                ; 0x11505 $94F5 87 CA C0 C7             ;
bank4_Enemy_Vulnerability_Damage_Codes0:                                        ;
;xx.. ....	Strength Code (0 = gives no items, 1 = weak, 2 = strong)            ;
;..x. ....	Immune to Flying Blade and Fire                                     ;
;...x ....	?                                                                   ;
;.... xxxx	Damage Code                                                         ;
.byt    $30,$30,$30,$41,$41,$20,$00,$83; 0x11509 $94F9 30 30 30 41 41 20 00 83 ;
.byt    $31,$31,$00,$30,$00,$30,$00,$30; 0x11511 $9501 31 31 00 30 00 30 00 30 ;
.byt    $42,$41,$41,$30,$30,$30,$30,$30; 0x11519 $9509 42 41 41 30 30 30 30 30 ;
.byt    $A2,$A3,$23,$31,$01,$33,$A2,$A1; 0x11521 $9511 A2 A3 23 31 01 33 A2 A1 ;
.byt    $32,$33,$31,$A1                ; 0x11529 $9519 32 33 31 A1             ;
bank4_Enemy_Size_Codes0:                                                        ;
.byt    $0F,$0F,$04,$02,$01,$01,$01,$01; 0x1152d $951D 0F 0F 04 02 01 01 01 01 ;
.byt    $01,$01,$01,$00,$80,$01,$01,$00; 0x11535 $9525 01 01 01 00 80 01 01 00 ;
.byt    $01,$01,$01,$03,$06,$00,$00,$00; 0x1153d $952D 01 01 01 03 06 00 00 00 ;
.byt    $80,$80,$80,$00,$01,$80,$80,$80; 0x11545 $9535 80 80 80 00 01 80 80 80 ;
.byt    $07,$07,$07,$80                ; 0x1154d $953D 07 07 07 80             ;
bank4_Other_Enemy_Attributes_6E41_in_RAM0:                                      ;
;x... ....	Immune to Thunder Spell                                             ;
;.x.. ....	Regenerates                                                         ;
;..x. ....	? (never used)                                                      ;
;...x ....	Not hittable with sword                                             ;
;.... xxxx	? (0 or 6)                                                          ;
;96	Fairy				x..x .xx.                                                         ;
;86	Palace Item			x... .xx.                                                    ;
;96	Locked Door			x..x .xx.                                                    ;
;46	Myu				.x.. .xx.                                                           ;
;46	Bot				.x.. .xx.                                                           ;
;86	Hidden Red Jar			x... .xx.                                                 ;
;46	Bubble - Slow			.x.. .xx.                                                  ;
;40	Moa				.x.. ....                                                           ;
;90	Falling Block Generator		x..x ....                                         ;
;86	Falling Block			x... .xx.                                                  ;
;40	Ra				.x.. ....                                                            ;
;80	Tinsuit Generator		x... ....                                               ;
;40	Tinsuit				.x.. ....                                                       ;
;90	Dripping Column			x..x ....                                                ;
;46	Bubble - Fast			.x.. .xx.                                                  ;
;90	Bago Bago Generator		x..x ....                                             ;
;06	Bago Bago			.... .xx.                                                      ;
;06	Rope - Jumping			.... .xx.                                                 ;
;06	Rope - Moving			.... .xx.                                                  ;
;90	Elevator			x..x ....                                                       ;
;90	Crystal Slot			x..x ....                                                   ;
;90	Crystal				x..x ....                                                       ;
;90	Energy Ball Shooter - Right	x..x ....                                      ;
;90	Energy Ball Shooter - Left	x..x ....                                       ;
;00	Iron Knuckle - Orange		.... ....                                           ;
;00	Iron Knuckle - Red		.... ....                                              ;
;00	Iron Knuckle - Blue		.... ....                                             ;
;00	Mau Generator			.... ....                                                  ;
;00	Mau				.... ....                                                           ;
;00	Mago				.... ....                                                          ;
;00	Guma				.... ....                                                          ;
;00	Stalfos - Red			.... ....                                                  ;
;C0	Horsehead			xx.. ....                                                      ;
;C0	Helmethead / Gooma		xx.. ....                                              ;
;80	Floating Helmet			x... ....                                                ;
;00	Stalfos - Blue			.... ....                                                 ;
.byt    $96,$86,$96,$46,$46,$86,$46,$40; 0x11551 $9541 96 86 96 46 46 86 46 40 ;
.byt    $90,$86,$40,$80,$40,$90,$46,$90; 0x11559 $9549 90 86 40 80 40 90 46 90 ;
.byt    $06,$06,$06,$90,$90,$90,$90,$90; 0x11561 $9551 06 06 06 90 90 90 90 90 ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x11569 $9559 00 00 00 00 00 00 00 00 ;
.byt    $C0,$C0,$80,$00                ; 0x11571 $9561 C0 C0 80 00             ;
; ---------------------------------------------------------------------------- ;
bank4_Pointer_table_for_Enemy_Routines1:                                        ;
.word    bank7_Enemy_Routines2_Fairy   ; 0x11575 $9565 DD F0                   ;Fairy
.word    bank7_Enemy_Routines2_RedJar  ; 0x11577 $9567 12 F1                   ;Item in Palace
.word    bank7_Enemy_Routines2_LockedDoor; 0x11579 $9569 3A F1                 ;Locked Door
.word    bank7_Enemy_Routines2_Myu     ; 0x1157b $956B C2 EF                   ;Myu
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x1157d $956D 91 EF                ;Bot
.word    bank4_code_rts1               ; 0x1157f $956F AD 95                   ;Hidden Red Jar
.word    bank4_Enemy_Routines1_Bubble  ; 0x11581 $9571 B0 B7                   ;Bubble - Slow
.word    bank7_Enemy_Routines2_Moa     ; 0x11583 $9573 F2 EF                   ;Moa
.word    bank7_Enemy_Routines2_unknown ; 0x11585 $9575 D2 EF                   ;Falling Block Generator
.word    bank7_Enemy_Routines2_unknown ; 0x11587 $9577 D2 EF                   ;Falling Block
.word    bank4_Enemy_Routines1_Ra_Flying_Unicorn_Head; 0x11589 $9579 33 B8     ;Ra (Flying Unicorn Head)
.word    bank4_code_rts1               ; 0x1158b $957B AD 95                   ;Tinsuit Generator
.word    bank4_Enemy_Routines1_Tinsuit ; 0x1158d $957D CC 97                   ;Tinsuit
.word    bank4_Enemy_Routines1_Dripping_Column; 0x1158f $957F EC 98            ;Dripping Column
.word    bank4_Enemy_Routines1_Bubble  ; 0x11591 $9581 B0 B7                   ;Bubble - Fast
.word    bank4_code_rts1               ; 0x11593 $9583 AD 95                   ;Bago Bago Generator
.word    bank7_Enemy_Routines2_BagoBago; 0x11595 $9585 B9 F0                   ;Bago Bago
.word    bank7_Enemy_Routines2_Octorok ; 0x11597 $9587 A8 F0                   ;Rope - Jumping
.word    bank7_Enemy_Routines2_Octorok ; 0x11599 $9589 A8 F0                   ;Rope - Moving
.word    bank7_Enemy_Routines2_Elevator; 0x1159b $958B 47 EF                   ;Elevator
.word    bank4_code_rts1               ; 0x1159d $958D AD 95                   ;Crystal Slot
.word    bank4_code_rts1               ; 0x1159f $958F AD 95                   ;Crystal
.word    bank4_code_rts1               ; 0x115a1 $9591 AD 95                   ;Energy Ball Shooter - Right
.word    bank4_code_rts1               ; 0x115a3 $9593 AD 95                   ;Energy Ball Shooter - Left
.word    bank4_Enemy_Routines1_Iron_Knuckle; 0x115a5 $9595 45 9E               ;Iron Knuckle - Orange
.word    bank4_Enemy_Routines1_Iron_Knuckle; 0x115a7 $9597 45 9E               ;Iron Knuckle - Red
.word    bank4_Enemy_Routines1_Iron_Knuckle; 0x115a9 $9599 45 9E               ;Iron Knuckle - Blue
.word    bank4_code_rts1               ; 0x115ab $959B AD 95                   ;Mau Generator
.word    bank4_Enemy_Routines1_Mau     ; 0x115ad $959D 04 B9                   ;Mau
.word    bank4_Enemy_Routines1_Mago    ; 0x115af $959F 7B BE                   ;Mago
.word    bank4_Enemy_Routines1_Guma    ; 0x115b1 $95A1 E1 97                   ;Guma
.word    bank4_Enemy_Routines1_Stalfos ; 0x115b3 $95A3 ED BD                   ;Stalfos - Red
.word    bank4_Enemy_Routines1_Horsehead; 0x115b5 $95A5 1D 98                  ;Horsehead
.word    bank4_Enemy_Routines1_Helmethead__Gooma; 0x115b7 $95A7 75 BD          ;Helmethead / Gooma
.word    bank4_Enemy_Routines1_Floating_Helmet; 0x115b9 $95A9 D0 BD            ;Floating Helmet
.word    bank4_Enemy_Routines1_Stalfos ; 0x115bb $95AB ED BD                   ;Stalfos - Blue
; ---------------------------------------------------------------------------- ;
bank4_code_rts1:                                                                ;
    RTS                                ; 0x115bd $95AD 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table2:                                                                   ;
.byt    $CE,$CE,$AE,$3F,$53,$EE,$52,$61; 0x115be $95AE CE CE AE 3F 53 EE 52 61 ;
bank4_table3:                                                                   ;
.byt    $00,$03,$00,$02,$01,$00,$01,$01; 0x115c6 $95B6 00 03 00 02 01 00 01 01 ;
.byt    $03,$00,$00,$00                ; 0x115ce $95BE 03 00 00 00             ;
; ---------------------------------------------------------------------------- ;
bank4_pointer_table2:                                                           ;
.word    L97A2                         ; 0x115d2 $95C2 A2 97                   ;
.word    L9798                         ; 0x115d4 $95C4 98 97                   ;
.word    L97A3                         ; 0x115d6 $95C6 A3 97                   ;
.word    L97A3                         ; 0x115d8 $95C8 A3 97                   ;
.word    L9798                         ; 0x115da $95CA 98 97                   ;
.word    bank4_code4                   ; 0x115dc $95CC B5 97                   ;
.word    L999F                         ; 0x115de $95CE 9F 99                   ;
.word    L99D0                         ; 0x115e0 $95D0 D0 99                   ;
.word    bank4_code_rts1               ; 0x115e2 $95D2 AD 95                   ;
; ---------------------------------------------------------------------------- ;
bank4_Various_Tile_Mappings:                                                    ;
.byt    $41,$43,$49,$4B                ; 0x115e4 $95D4 41 43 49 4B             ;Iron Knuckle with Shield Up - Frame 1
bank4_Various_Tile_Mappings1:                                                   ;
.byt    $41,$43,$45,$47                ; 0x115e8 $95D8 41 43 45 47             ;Iron Knuckle with Shield Up - Frame 2
bank4_Various_Tile_Mappings2:                                                   ;
.byt    $4D,$43,$51,$4B                ; 0x115ec $95DC 4D 43 51 4B             ;Iron Knuckle with Shield Down - Frame 1
bank4_Various_Tile_Mappings3:                                                   ;
.byt    $4D,$43,$4F,$47                ; 0x115f0 $95E0 4D 43 4F 47             ;Iron Knuckle with Shield Down - Frame 2
bank4_Various_Tile_Mappings4:                                                   ;
.byt    $57,$59                        ; 0x115f4 $95E4 57 59                   ;Iron Knuckle Sword - Up Backswing
bank4_Various_Tile_Mappings5:                                                   ;
.byt    $53,$55                        ; 0x115f6 $95E6 53 55                   ;Iron Knuckle Sword - Slash
bank4_Various_Tile_Mappings6:                                                   ;
.byt    $F5,$5B                        ; 0x115f8 $95E8 F5 5B                   ;Iron Knuckle Sword - Down Backswing
bank4_Various_Tile_Mappings7:                                                   ;
.byt    $39,$3B                        ; 0x115fa $95EA 39 3B                   ;
bank4_Various_Tile_Mappings8:                                                   ;
.byt    $8F,$91                        ; 0x115fc $95EC 8F 91                   ;
bank4_Various_Tile_Mappings9:                                                   ;
.byt    $D0,$D2,$D4,$D6,$D8,$DA,$D4,$D6; 0x115fe $95EE D0 D2 D4 D6 D8 DA D4 D6 ;
.byt    $E0,$E2,$E4,$E6,$E0,$E2,$E8,$EA; 0x11606 $95F6 E0 E2 E4 E6 E0 E2 E8 EA ;
.byt    $EC,$F5,$F0,$F2,$F4,$F6,$F0,$F2; 0x1160e $95FE EC F5 F0 F2 F4 F6 F0 F2 ;
.byt    $F8,$FA,$F0,$F2,$01,$03,$05,$05; 0x11616 $9606 F8 FA F0 F2 01 03 05 05 ;
.byt    $07,$07,$FC,$FE,$F4,$F6,$53,$55; 0x1161e $960E 07 07 FC FE F4 F6 53 55 ;
.byt    $F0,$DE,$F4,$F6,$F0,$DE,$F8,$FA; 0x11626 $9616 F0 DE F4 F6 F0 DE F8 FA ;
.byt    $F0,$DE,$01,$03,$05,$05        ; 0x1162e $961E F0 DE 01 03 05 05       ;
L9624:                                                                          ;
.byt    $07                            ; 0x11634 $9624 07                      ;
L9625:                                                                          ;
.byt    $07,$FC,$FE,$F4,$F6,$53,$55,$1B; 0x11635 $9625 07 FC FE F4 F6 53 55 1B ;
.byt    $1D,$1F,$21,$13,$15,$1B,$1D,$1F; 0x1163d $962D 1D 1F 21 13 15 1B 1D 1F ;
.byt    $21,$17,$19,$23,$25,$27,$F5,$2D; 0x11645 $9635 21 17 19 23 25 27 F5 2D ;
.byt    $2F,$29,$2B,$0F,$11,$13,$15,$0F; 0x1164d $963D 2F 29 2B 0F 11 13 15 0F ;
.byt    $11,$17,$19,$09,$F5,$0B,$F5,$0D; 0x11655 $9645 11 17 19 09 F5 0B F5 0D ;
.byt    $F5,$31,$33,$45,$47,$31,$33,$49; 0x1165d $964D F5 31 33 45 47 31 33 49 ;
.byt    $4B,$DC                        ; 0x11665 $9655 4B DC                   ;
L9657:                                                                          ;
.byt    $37,$0A,$F2                    ; 0x11667 $9657 37 0A F2                ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Stalfos:                                                   ;
    LDA      $AF,x                     ; 0x1166a $965A B5 AF                   ;; Various enemy state variables
    BNE      L966B                     ; 0x1166c $965C D0 0D                   ;
    LDA      $C9                       ; 0x1166e $965E A5 C9                   ;
    BEQ      L966B                     ; 0x11670 $9660 F0 09                   ;
    LDA      #$40                      ; 0x11672 $9662 A9 40                   ; A = 40 (Stalfos appearing Y Position)
    STA      $2A,x                     ; 0x11674 $9664 95 2A                   ; Enemy Y Position
    LDA      #$00                      ; 0x11676 $9666 A9 00                   ; A = 00 (Stalfos initial X Velocity)
    STA      $71,x                     ; 0x11678 $9668 95 71                   ; Enemy X Velocity
    RTS                                ; 0x1167a $966A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L966B:                                                                          ;
    LDA      #$01                      ; 0x1167b $966B A9 01                   ; A = 01
    STA      $0444,x                   ; 0x1167d $966D 9D 44 04                ; Enemy Vulnerability
    STA      $AF,x                     ; 0x11680 $9670 95 AF                   ;; Various enemy state variables
    JSR      bank7_Display             ; 0x11682 $9672 20 11 EF                ; Display
    JSR      LE617                     ; 0x11685 $9675 20 17 E6                ; Relative to Shield Hit
    LDA      $81,x                     ; 0x11688 $9678 B5 81                   ; Current Animation Frame for Enemy
    BEQ      L9695                     ; 0x1168a $967A F0 19                   ;
    LDY      $0504,x                   ; 0x1168c $967C BC 04 05                ; Timer for Enemy
    BNE      L9695                     ; 0x1168f $967F D0 14                   ;
    CMP      #$02                      ; 0x11691 $9681 C9 02                   ;
    BNE      L968C                     ; 0x11693 $9683 D0 07                   ;
    LDA      #$FF                      ; 0x11695 $9685 A9 FF                   ; A = FF
    STA      $81,x                     ; 0x11697 $9687 95 81                   ; Current Animation Frame for Enemy
    JMP      bank4_increase_animation_frame__and_set_timer_for_next_AI__maybe; 0x11699 $9689 4C 23 BC;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L968C:                                                                          ;
L968D     = * + $0001                                                          ;
    JSR      bank4_increase_animation_frame__and_set_timer_for_next_AI__maybe; 0x1169c $968C 20 23 BC;
    JSR      bank7_Display             ; 0x1169f $968F 20 11 EF                ; Display
    JSR      LE563                     ; 0x116a2 $9692 20 63 E5                ;
L9695:                                                                          ;
    LDA      $80                       ; 0x116a5 $9695 A5 80                   ; Current Animation Frame for Link
    CMP      #$08                      ; 0x116a7 $9697 C9 08                   ; 08 = Up Stab
    BNE      L96A0                     ; 0x116a9 $9699 D0 05                   ;
    LDA      #$F8                      ; 0x116ab $969B A9 F8                   ; A = F8
    STA      $0480                     ; 0x116ad $969D 8D 80 04                ;
L96A0:                                                                          ;
    LDY      #$01                      ; 0x116b0 $96A0 A0 01                   ; Y = 01
    INX                                ; 0x116b2 $96A2 E8                      ;
    JSR      bank7_code51              ; 0x116b3 $96A3 20 7D F2                ;
    LDX      $10                       ; 0x116b6 $96A6 A6 10                   ;; used as monster x register ;draw boss hp bar
L96A8:                                                                          ;
    LDA      $1A,x                     ; 0x116b8 $96A8 B5 1A                   ;
    CMP      #$02                      ; 0x116ba $96AA C9 02                   ;
    BCC      L96B1                     ; 0x116bc $96AC 90 03                   ;
    JMP      LDD3D                     ; 0x116be $96AE 4C 3D DD                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L96B1:                                                                          ;
    LDA      $C9                       ; 0x116c1 $96B1 A5 C9                   ;
    AND      #$FC                      ; 0x116c3 $96B3 29 FC                   ; keep bits xxxx xx..
    BEQ      L96C0                     ; 0x116c5 $96B5 F0 09                   ;
    LDA      $A8,x                     ; 0x116c7 $96B7 B5 A8                   ;; Enemy State
    AND      #$0F                      ; 0x116c9 $96B9 29 0F                   ; keep bits .... xxxx
    STA      $A8,x                     ; 0x116cb $96BB 95 A8                   ;; Enemy State
    JMP      LDE6C                     ; 0x116cd $96BD 4C 6C DE                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L96C0:                                                                          ;
    JSR      LE48B                     ; 0x116d0 $96C0 20 8B E4                ;
    JSR      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x116d3 $96C3 20 77 E6; Sword Hit Detection ?
    JSR      LE4D9                     ; 0x116d6 $96C6 20 D9 E4                ;
    JSR      bank7_Gravity             ; 0x116d9 $96C9 20 BE DE                ; Gravity
    JSR      LEA32                     ; 0x116dc $96CC 20 32 EA                ;
    JSR      bank7_Link_Collision_Detection; 0x116df $96CF 20 C1 D6                ; Link Collision Detection
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x116e2 $96D2 20 91 DC; Determine Enemy Facing Direction
    LDA      $A8,x                     ; 0x116e5 $96D5 B5 A8                   ; Enemy State ?
    AND      #$08                      ; 0x116e7 $96D7 29 08                   ; keep bits .... x...
    BEQ      L96E0                     ; 0x116e9 $96D9 F0 05                   ;
    LDA      #$02                      ; 0x116eb $96DB A9 02                   ; A = 02
    STA      $057E,x                   ; 0x116ed $96DD 9D 7E 05                ; Enemy Y Velocity
L96E0:                                                                          ;
    LDA      $A8,x                     ; 0x116f0 $96E0 B5 A8                   ; Enemy State ?
    AND      #$04                      ; 0x116f2 $96E2 29 04                   ; keep bits .... .x..
    BEQ      L9701                     ; 0x116f4 $96E4 F0 1B                   ;
    STA      $04A0,x                   ; 0x116f6 $96E6 9D A0 04                ;
    JSR      L9E17                     ; 0x116f9 $96E9 20 17 9E                ;
    JSR      bank7_Floor_Y_Position    ; 0x116fc $96EC 20 C1 DA                ; Floor Enemy Y Position
    STA      $71,x                     ; 0x116ff $96EF 95 71                   ; Enemy X Velocity
    LDA      $0F                       ; 0x11701 $96F1 A5 0F                   ;
    ADC      #$1E                      ; 0x11703 $96F3 69 1E                   ;
    CMP      #$3C                      ; 0x11705 $96F5 C9 3C                   ;
    BCC      L9704                     ; 0x11707 $96F7 90 0B                   ;
L96F9:                                                                          ;
    LDY      $60,x                     ; 0x11709 $96F9 B4 60                   ; Enemy facing direction
    LDA      L9657,y                   ; 0x1170b $96FB B9 57 96                ;
    STA      $71,x                     ; 0x1170e $96FE 95 71                   ; Enemy X Velocity
L9700:                                                                          ;
    RTS                                ; 0x11710 $9700 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9701:                                                                          ;
    JMP      L9E2C                     ; 0x11711 $9701 4C 2C 9E                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9704:                                                                          ;
    LDA      $057E,x                   ; 0x11714 $9704 BD 7E 05                ; Enemy Y Velocity
    ORA      $0504,x                   ; 0x11717 $9707 1D 04 05                ; Timer for Enemy AI
    ORA      $81,x                     ; 0x1171a $970A 15 81                   ; Current Animation Frame for Enemy
    BNE      L9700                     ; 0x1171c $970C D0 F2                   ;
    LDA      $051B,x                   ; 0x1171e $970E BD 1B 05                ; Randomizer
    AND      #$03                      ; 0x11721 $9711 29 03                   ;;Keep Bits:0000_0011
    BNE      L9723                     ; 0x11723 $9713 D0 0E                   ;
    LDY      $A1,x                     ; 0x11725 $9715 B4 A1                   ; Enemy Code
    CPY      #$23                      ; 0x11727 $9717 C0 23                   ; 23 = Blue Stalfos
    BNE      L9723                     ; 0x11729 $9719 D0 08                   ;
    LDA      #$CD                      ; 0x1172b $971B A9 CD                   ; Initial Y Velocity when Stalfos jumps
    STA      $057E,x                   ; 0x1172d $971D 9D 7E 05                ; Enemy Y Velocity
    JMP      L96F9                     ; 0x11730 $9720 4C F9 96                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9723:                                                                          ;
    CMP      #$03                      ; 0x11733 $9723 C9 03                   ;
    BNE      L972B                     ; 0x11735 $9725 D0 04                   ;
    LDA      #$FF                      ; 0x11737 $9727 A9 FF                   ; A = FF
    STA      $81,x                     ; 0x11739 $9729 95 81                   ; Current Animation Frame for Enemy
L972B:                                                                          ;
    JMP      bank4_increase_animation_frame__and_set_timer_for_next_AI__maybe; 0x1173b $972B 4C 23 BC;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDY      #$04                      ; 0x1173e $972E A0 04                   ; Y = 04
    LDA      $12                       ; 0x11740 $9730 A5 12                   ;; Frame Counter (ascending)
    AND      #$10                      ; 0x11742 $9732 29 10                   ; keep bits ...x ....
    BEQ      L9738                     ; 0x11744 $9734 F0 02                   ;
    LDY      #$FC                      ; 0x11746 $9736 A0 FC                   ;;Y = #$fc 1111_1100
L9738:                                                                          ;
    STY      $77,x                     ; 0x11748 $9738 94 77                   ;; Projectile X Velocity
    JMP      L9943                     ; 0x1174a $973A 4C 43 99                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L973D:                                                                          ;
    LDY      #$02                      ; 0x1174d $973D A0 02                   ; Y = 02
    LDA      $77,x                     ; 0x1174f $973F B5 77                   ; Projectile X Velocity
    BMI      L9744                     ; 0x11751 $9741 30 01                   ;
    DEY                                ; 0x11753 $9743 88                      ;
L9744:                                                                          ;
    TYA                                ; 0x11754 $9744 98                      ;
    CMP      $66,x                     ; 0x11755 $9745 D5 66                   ; Projectile facing direction
    BNE      L9761                     ; 0x11757 $9747 D0 18                   ;
    BEQ      L975C                     ; 0x11759 $9749 F0 11                   ;
L974B:                                                                          ;
    JSR      LBEF6                     ; 0x1175b $974B 20 F6 BE                ;
L974E:                                                                          ;
    LDA      $30,x                     ; 0x1175e $974E B5 30                   ; Projectile Y Position
    CMP      #$C5                      ; 0x11760 $9750 C9 C5                   ;
    BCC      L9759                     ; 0x11762 $9752 90 05                   ;
    LDA      #$F4                      ; 0x11764 $9754 A9 F4                   ; A = F4
    STA      $87,x                     ; 0x11766 $9756 95 87                   ; Projectile Type
    RTS                                ; 0x11768 $9758 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9759:                                                                          ;
    JMP      L9943                     ; 0x11769 $9759 4C 43 99                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L975C:                                                                          ;
    LDA      #$FE                      ; 0x1176c $975C A9 FE                   ; A = FE
    STA      $0584,x                   ; 0x1176e $975E 9D 84 05                ; Projectile Y Velocity
L9761:                                                                          ;
    INC      $0584,x                   ; 0x11771 $9761 FE 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
L9764:                                                                          ;
    JMP      L9940                     ; 0x11774 $9764 4C 40 99                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9767:                                                                          ;
    DEC      $77,x                     ; 0x11777 $9767 D6 77                   ; Projectile X Velocity
    BNE      L976E                     ; 0x11779 $9769 D0 03                   ;
    JMP      L995A                     ; 0x1177b $976B 4C 5A 99                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L976E:                                                                          ;
    LDY      $97,x                     ; 0x1177e $976E B4 97                   ;
    LDA      $30,x                     ; 0x11780 $9770 B5 30                   ; Projectile Y Position
    STA      L0000                     ; 0x11782 $9772 85 00                   ;
    LDA      #$02                      ; 0x11784 $9774 A9 02                   ; A = 02
    STA      $02                       ; 0x11786 $9776 85 02                   ;
    LSR                                ; 0x11788 $9778 4A                      ;
    STA      $03                       ; 0x11789 $9779 85 03                   ;
    LSR                                ; 0x1178b $977B 4A                      ;
    STA      $C9                       ; 0x1178c $977C 85 C9                   ;
    LDA      $54,x                     ; 0x1178e $977E B5 54                   ; Projectile X Position (low byte)
    SBC      $072C                     ; 0x11790 $9780 ED 2C 07                ; Scrolling Offset Low Byte
    STA      $01                       ; 0x11793 $9783 85 01                   ;
    LDA      $77,x                     ; 0x11795 $9785 B5 77                   ; Projectile X Velocity
    LDX      #$00                      ; 0x11797 $9787 A2 00                   ; X = 00
    CMP      #$08                      ; 0x11799 $9789 C9 08                   ;
    BCS      L978F                     ; 0x1179b $978B B0 02                   ;
    LDX      #$02                      ; 0x1179d $978D A2 02                   ; X = 02
L978F:                                                                          ;
    JSR      LF0C6                     ; 0x1179f $978F 20 C6 F0                ;
    LDA      #$41                      ; 0x117a2 $9792 A9 41                   ; A = 41
    STA      $01FE,y                   ; 0x117a4 $9794 99 FE 01                ;
    RTS                                ; 0x117a7 $9797 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9798:                                                                          ;
    LDA      $12                       ; 0x117a8 $9798 A5 12                   ; Permanent Frame Counter
    AND      #$03                      ; 0x117aa $979A 29 03                   ; keep bits .... ..xx
    ORA      $0202,y                   ; 0x117ac $979C 19 02 02                ;
    STA      $0202,y                   ; 0x117af $979F 99 02 02                ;
L97A2:                                                                          ;
    RTS                                ; 0x117b2 $97A2 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97A3:                                                                          ;
    LDA      $12                       ; 0x117b3 $97A3 A5 12                   ; Permanent Frame Counter
    ASL                                ; 0x117b5 $97A5 0A                      ;
    ASL                                ; 0x117b6 $97A6 0A                      ;
    ASL                                ; 0x117b7 $97A7 0A                      ;
    SEC                                ; 0x117b8 $97A8 38                      ;
    ROL                                ; 0x117b9 $97A9 2A                      ;
    ASL                                ; 0x117ba $97AA 0A                      ;
    AND      #$83                      ; 0x117bb $97AB 29 83                   ; keep bits x... ..xx
    STA      $0202,y                   ; 0x117bd $97AD 99 02 02                ;
    RTS                                ; 0x117c0 $97B0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_related_to_Guma:                                                          ;
.byt    $02,$82,$C2,$42                ; 0x117c1 $97B1 02 82 C2 42             ;
; ---------------------------------------------------------------------------- ;
bank4_code4:                                                                    ;
    LDA      $12                       ; 0x117c5 $97B5 A5 12                   ; Permanent Frame Counter
    LSR                                ; 0x117c7 $97B7 4A                      ;
    LSR                                ; 0x117c8 $97B8 4A                      ;
    AND      #$03                      ; 0x117c9 $97B9 29 03                   ; keep bits .... ..xx
    LDY      $66,x                     ; 0x117cb $97BB B4 66                   ;; Projectile facing direction
    DEY                                ; 0x117cd $97BD 88                      ;
    BNE      L97C2                     ; 0x117ce $97BE D0 02                   ;
    EOR      #$03                      ; 0x117d0 $97C0 49 03                   ; flip bits .... ..xx
L97C2:                                                                          ;
    TAY                                ; 0x117d2 $97C2 A8                      ;
    LDA      bank4_related_to_Guma,y   ; 0x117d3 $97C3 B9 B1 97                ; refer to table at $117B1
    LDY      $97,x                     ; 0x117d6 $97C6 B4 97                   ;
    STA      $0202,y                   ; 0x117d8 $97C8 99 02 02                ;
    RTS                                ; 0x117db $97CB 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Tinsuit:                                                  ;
    INC      L0000                     ; 0x117dc $97CC E6 00                   ;
    LDA      $AF,x                     ; 0x117de $97CE B5 AF                   ;; Various enemy state variables
    LDX      #$7A                      ; 0x117e0 $97D0 A2 7A                   ; X = 7A
    LSR                                ; 0x117e2 $97D2 4A                      ;
    BCC      L97D7                     ; 0x117e3 $97D3 90 02                   ;
    LDX      #$7E                      ; 0x117e5 $97D5 A2 7E                   ; X = 7E
L97D7:                                                                          ;
    JSR      LF1F4                     ; 0x117e7 $97D7 20 F4 F1                ;
L97DC     = * + $0002                                                          ;
    JMP      LF0D7                     ; 0x117ea $97DA 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Table_for_Guma:                                                           ;
.byt    $F4,$0C,$40,$00                ; 0x117ed $97DD F4 0C 40 00             ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Guma:                                                     ;
    LDA      $A8,x                     ; 0x117f1 $97E1 B5 A8                   ; Enemy State ?
    LDX      #$22                      ; 0x117f3 $97E3 A2 22                   ; X = 22
    AND      #$04                      ; 0x117f5 $97E5 29 04                   ; keep bits .... .x..
    BEQ      L97F1                     ; 0x117f7 $97E7 F0 08                   ;
    LDA      $12                       ; 0x117f9 $97E9 A5 12                   ; Permanent Frame Counter
    AND      #$10                      ; 0x117fb $97EB 29 10                   ; keep bits ...x ....
    BEQ      L97F1                     ; 0x117fd $97ED F0 02                   ;
    LDX      #$26                      ; 0x117ff $97EF A2 26                   ; X = 26
L97F1:                                                                          ;
    JSR      LF1F4                     ; 0x11801 $97F1 20 F4 F1                ;
    JSR      LF0D7                     ; 0x11804 $97F4 20 D7 F0                ;
    LDA      $0504,x                   ; 0x11807 $97F7 BD 04 05                ; Timer for Enemy
    BEQ      L9814                     ; 0x1180a $97FA F0 18                   ;
    LDA      $C9                       ; 0x1180c $97FC A5 C9                   ;
    BNE      L9814                     ; 0x1180e $97FE D0 14                   ;
    LDA      $2A,x                     ; 0x11810 $9800 B5 2A                   ; Enemy Y Position
    STA      L0000                     ; 0x11812 $9802 85 00                   ;
    LDA      $60,x                     ; 0x11814 $9804 B5 60                   ; Enemy facing direction
    TAX                                ; 0x11816 $9806 AA                      ;
    LDA      $CD                       ; 0x11817 $9807 A5 CD                   ;
    CLC                                ; 0x11819 $9809 18                      ;
    ADC      L97DC,x                   ; 0x1181a $980A 7D DC 97                ;
    STA      $01                       ; 0x1181d $980D 85 01                   ;
    LDX      #$2A                      ; 0x1181f $980F A2 2A                   ; X = 2A
    JSR      LF0D7                     ; 0x11821 $9811 20 D7 F0                ;
L9814:                                                                          ;
    RTS                                ; 0x11824 $9814 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Table_related_to_Horsehead:                                               ;
.byt    $64                            ; 0x11825 $9815 64                      ;
L9816:                                                                          ;
.byt    $68,$F0,$10,$10                ; 0x11826 $9816 68 F0 10 10             ;
L981A:                                                                          ;
.byt    $F0,$02,$FE                    ; 0x1182a $981A F0 02 FE                ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Horsehead:                                                ;
    LDY      #$50                      ; 0x1182d $981D A0 50                   ; Y = 50
    LDA      $AF,x                     ; 0x1182f $981F B5 AF                   ;; Various enemy state variables
    LDX      #$58                      ; 0x11831 $9821 A2 58                   ; X = 58
    AND      #$7F                      ; 0x11833 $9823 29 7F                   ; keep bits .xxx xxxx
    BEQ      L9832                     ; 0x11835 $9825 F0 0B                   ;
    AND      #$07                      ; 0x11837 $9827 29 07                   ; keep bits .... .xxx
    SEC                                ; 0x11839 $9829 38                      ;
    SBC      #$03                      ; 0x1183a $982A E9 03                   ;
    CMP      #$03                      ; 0x1183c $982C C9 03                   ;
    BCS      L9832                     ; 0x1183e $982E B0 02                   ;
    LDX      #$5E                      ; 0x11840 $9830 A2 5E                   ; X = 5E
L9832:                                                                          ;
    JSR      LF1F4                     ; 0x11842 $9832 20 F4 F1                ;
    JSR      LF1F4                     ; 0x11845 $9835 20 F4 F1                ;
    JSR      LF0D7                     ; 0x11848 $9838 20 D7 F0                ;
    LDA      $C9                       ; 0x1184b $983B A5 C9                   ;
    BNE      L9870                     ; 0x1184d $983D D0 31                   ;
    LDY      $81,x                     ; 0x1184f $983F B4 81                   ; Current Animation Frame for Enemy
    BEQ      L9870                     ; 0x11851 $9841 F0 2D                   ;
    LDA      $2A,x                     ; 0x11853 $9843 B5 2A                   ; Enemy Y Position
    CLC                                ; 0x11855 $9845 18                      ;
L9847     = * + $0001                                                          ;
    ADC      #$10                      ; 0x11856 $9846 69 10                   ;
    STA      L0000                     ; 0x11858 $9848 85 00                   ;
    PHA                                ; 0x1185a $984A 48                      ;
    LDX      L9814,y                   ; 0x1185b $984B BE 14 98                ;
    LDY      #$58                      ; 0x1185e $984E A0 58                   ; Y = 58
    JSR      LF1F4                     ; 0x11860 $9850 20 F4 F1                ;
    STX      $D9                       ; 0x11863 $9853 86 D9                   ;; Thunder Spell modifier ?
    LDX      $10                       ; 0x11865 $9855 A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $60,x                     ; 0x11867 $9857 B5 60                   ; Enemy facing direction
    LSR                                ; 0x11869 $9859 4A                      ;
    ASL                                ; 0x1186a $985A 0A                      ;
    ADC      $81,x                     ; 0x1186b $985B 75 81                   ; Current Animation Frame for Enemy
    TAY                                ; 0x1186d $985D A8                      ;
    PLA                                ; 0x1186e $985E 68                      ;
    STA      L0000                     ; 0x1186f $985F 85 00                   ;
    LDA      $CD                       ; 0x11871 $9861 A5 CD                   ;
    CLC                                ; 0x11873 $9863 18                      ;
    ADC      L9816,y                   ; 0x11874 $9864 79 16 98                ;
    BANk4_table4 = * + $0001                                                   ;
    STA      $01                       ; 0x11877 $9867 85 01                   ;
.byt    $A6                            ; 0x11879 $9869 A6                      ;
; ---------------------------------------------------------------------------- ;
bank4_code6:                                                                    ;
    CMP      $68A0,y                   ; 0x1187a $986A D9 A0 68                ;
    JSR      LF0D7                     ; 0x1187d $986D 20 D7 F0                ;
L9870:                                                                          ;
    LDA      #$58                      ; 0x11880 $9870 A9 58                   ; A = 58
    STA      $91,x                     ; 0x11882 $9872 95 91                   ;
    LDA      $6E3D                     ; 0x11884 $9874 AD 3D 6E                ;
    BMI      L98A9                     ; 0x11887 $9877 30 30                   ;
    LDA      $60,x                     ; 0x11889 $9879 B5 60                   ; Enemy facing direction
    PHA                                ; 0x1188b $987B 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x1188c $987C 20 91 DC; Determine Enemy Facing Direction
    PLA                                ; 0x1188f $987F 68                      ;
    STA      $60,x                     ; 0x11890 $9880 95 60                   ; Enemy facing direction
    INY                                ; 0x11892 $9882 C8                      ;
    TYA                                ; 0x11893 $9883 98                      ;
    CMP      $60,x                     ; 0x11894 $9884 D5 60                   ;; Enemy facing direction
    BEQ      L98A9                     ; 0x11896 $9886 F0 21                   ;
    LDA      $0253                     ; 0x11898 $9888 AD 53 02                ;
    PHA                                ; 0x1189b $988B 48                      ;
    LDA      $0257                     ; 0x1189c $988C AD 57 02                ;
    CLC                                ; 0x1189f $988F 18                      ;
    ADC      L981A,y                   ; 0x118a0 $9890 79 1A 98                ;
    STA      $0253                     ; 0x118a3 $9893 8D 53 02                ;
    PLA                                ; 0x118a6 $9896 68                      ;
    CLC                                ; 0x118a7 $9897 18                      ;
    ADC      L981A,y                   ; 0x118a8 $9898 79 1A 98                ;
    STA      $0257                     ; 0x118ab $989B 8D 57 02                ;
    LDA      $0252                     ; 0x118ae $989E AD 52 02                ;
    EOR      #$40                      ; 0x118b1 $98A1 49 40                   ; flip bits .x.. ....
    STA      $0252                     ; 0x118b3 $98A3 8D 52 02                ;
    STA      $0256                     ; 0x118b6 $98A6 8D 56 02                ;
L98A9:                                                                          ;
    RTS                                ; 0x118b9 $98A9 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_Bubble__Slow:                                         ;
    LDA      #$F0                      ; 0x118ba $98AA A9 F0                   ; A = F0 (Slow Bubble Velocity)
    BNE      L98B0                     ; 0x118bc $98AC D0 02                   ;
bank4_Enemy_Init_Routines_Bubble__Fast:                                         ;
    LDA      #$E0                      ; 0x118be $98AE A9 E0                   ; A = E0 (Fast Bubble Velocity)
L98B0:                                                                          ;
    STA      $71,x                     ; 0x118c0 $98B0 95 71                   ; Enemy X Velocity
    STA      $057E,x                   ; 0x118c2 $98B2 9D 7E 05                ; Enemy Y Velocity
    RTS                                ; 0x118c5 $98B5 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_Tinsuit:                                              ;
    ASL      $71,x                     ; 0x118c6 $98B6 16 71                   ; Enemy X Velocity
    RTS                                ; 0x118c8 $98B8 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98B9:                                                                          ;
    JSR      LBEF6                     ; 0x118c9 $98B9 20 F6 BE                ;
    LDA      $044C,x                   ; 0x118cc $98BC BD 4C 04                ;
    BEQ      L98C6                     ; 0x118cf $98BF F0 05                   ;
    DEC      $044C,x                   ; 0x118d1 $98C1 DE 4C 04                ;
    BNE      L98C9                     ; 0x118d4 $98C4 D0 03                   ;
L98C6:                                                                          ;
    JMP      L995A                     ; 0x118d6 $98C6 4C 5A 99                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98C9:                                                                          ;
    AND      #$07                      ; 0x118d9 $98C9 29 07                   ; keep bits .... .xxx
    BNE      L98D9                     ; 0x118db $98CB D0 0C                   ;
    LDA      $77,x                     ; 0x118dd $98CD B5 77                   ; Projectile X Velocity
    BEQ      L98D9                     ; 0x118df $98CF F0 08                   ;
    BPL      L98D7                     ; 0x118e1 $98D1 10 04                   ;
    INC      $77,x                     ; 0x118e3 $98D3 F6 77                   ; Projectile X Velocity
    INC      $77,x                     ; 0x118e5 $98D5 F6 77                   ;; Projectile X Velocity
L98D7:                                                                          ;
    DEC      $77,x                     ; 0x118e7 $98D7 D6 77                   ;; Projectile X Velocity
L98D9:                                                                          ;
    JSR      LEA14                     ; 0x118e9 $98D9 20 14 EA                ;
    BCC      L98E9                     ; 0x118ec $98DC 90 0B                   ;
    LDA      $30,x                     ; 0x118ee $98DE B5 30                   ; Projectile Y Position
    AND      #$F0                      ; 0x118f0 $98E0 29 F0                   ; keep bits xxxx ....
    STA      $30,x                     ; 0x118f2 $98E2 95 30                   ;; Projectile Y Position
    LDA      #$FF                      ; 0x118f4 $98E4 A9 FF                   ; A = FF
    STA      $0584,x                   ; 0x118f6 $98E6 9D 84 05                ; Projectile Y Velocity
L98E9:                                                                          ;
    JMP      L9940                     ; 0x118f9 $98E9 4C 40 99                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Dripping_Column:                                          ;
    LDA      L0000                     ; 0x118fc $98EC A5 00                   ;
    CLC                                ; 0x118fe $98EE 18                      ;
    ADC      #$0E                      ; 0x118ff $98EF 69 0E                   ;
    STA      L0000                     ; 0x11901 $98F1 85 00                   ;
    LDX      #$18                      ; 0x11903 $98F3 A2 18                   ;;X = #$18 0001_1000
    JMP      LF0D7                     ; 0x11905 $98F5 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98F8:                                                                          ;
    JSR      LEA1C                     ; 0x11908 $98F8 20 1C EA                ;
    LDY      #$02                      ; 0x1190b $98FB A0 02                   ; Y = 02
    LDA      $044C,x                   ; 0x1190d $98FD BD 4C 04                ;
    BNE      L9903                     ; 0x11910 $9900 D0 01                   ;
    INY                                ; 0x11912 $9902 C8                      ;
L9903:                                                                          ;
    STY      $6EBE                     ; 0x11913 $9903 8C BE 6E                ;
    BCC      L9940                     ; 0x11916 $9906 90 38                   ;
    TAY                                ; 0x11918 $9908 A8                      ;
    BNE      L993C                     ; 0x11919 $9909 D0 31                   ;if =0 , don't spawn bot now
    JSR      LB869                     ; 0x1191b $990B 20 69 B8                ;
    BCS      L993C                     ; 0x1191e $990E B0 2C                   ;
    LDX      L0000                     ; 0x11920 $9910 A6 00                   ;
    LDY      $10                       ; 0x11922 $9912 A4 10                   ;; used as monster x register ;draw boss hp bar
    ASL      $C2,x                     ; 0x11924 $9914 16 C2                   ; Double HP
    LDA      #$04                      ; 0x11926 $9916 A9 04                   ; A = 04				;SPAWN BOT FROM DRIPPING COLUMN
    STA      $A1,x                     ; 0x11928 $9918 95 A1                   ;; Enemy Code
    LDA      $30,y                     ; 0x1192a $991A B9 30 00                ;
    AND      #$F0                      ; 0x1192d $991D 29 F0                   ; keep bits xxxx ....
    STA      $2A,x                     ; 0x1192f $991F 95 2A                   ;; Enemy Y Position
    LDA      #$E0                      ; 0x11931 $9921 A9 E0                   ; A = E0
L9925     = * + $0002                                                          ;
    STA      $057E,x                   ; 0x11933 $9923 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    LDA      $54,y                     ; 0x11936 $9926 B9 54 00                ;
    STA      $4E,x                     ; 0x11939 $9929 95 4E                   ;; Enemy X Position (low byte)
    LDA      $42,y                     ; 0x1193b $992B B9 42 00                ;
    STA      $3C,x                     ; 0x1193e $992E 95 3C                   ;; Enemy X Position (high byte)
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x11940 $9930 20 91 DC;
    LDA      L9C80,y                   ; 0x11943 $9933 B9 80 9C                ; refer to table at $11C80
    STA      $71,x                     ; 0x11946 $9936 95 71                   ;; Enemy X Velocity
    LDX      $10                       ; 0x11948 $9938 A6 10                   ;; used as monster x register ;draw boss hp bar
    BPL      L995A                     ; 0x1194a $993A 10 1E                   ;
L993C:                                                                          ;
    LDA      #$F2                      ; 0x1194c $993C A9 F2                   ; A = F2
    BNE      L995C                     ; 0x1194e $993E D0 1C                   ;
L9940:                                                                          ;
    INC      $0584,x                   ; 0x11950 $9940 FE 84 05                ; Projectile Y Velocity
L9943:                                                                          ;
    JSR      LDED4                     ; 0x11953 $9943 20 D4 DE                ;
    LDA      $CA                       ; 0x11956 $9946 A5 CA                   ;
    AND      #$FC                      ; 0x11958 $9948 29 FC                   ; keep bits xxxx xx..
    BEQ      L995F                     ; 0x1195a $994A F0 13                   ;
    AND      #$F0                      ; 0x1195c $994C 29 F0                   ; keep bits xxxx ....
    BNE      L995A                     ; 0x1195e $994E D0 0A                   ;
    LDY      $87,x                     ; 0x11960 $9950 B4 87                   ;; Projectile Type
    CPY      #$06                      ; 0x11962 $9952 C0 06                   ;
    BEQ      L995E                     ; 0x11964 $9954 F0 08                   ;
    CPY      #$08                      ; 0x11966 $9956 C0 08                   ;
    BEQ      L995E                     ; 0x11968 $9958 F0 04                   ;
L995A:                                                                          ;
    LDA      #$00                      ; 0x1196a $995A A9 00                   ; A = 00
L995C:                                                                          ;
    STA      $87,x                     ; 0x1196c $995C 95 87                   ;; Projectile Type
L995E:                                                                          ;
    RTS                                ; 0x1196e $995E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L995F:                                                                          ;
    JSR      bank4_code_996A           ; 0x1196f $995F 20 6A 99                ;
    JSR      LE48A                     ; 0x11972 $9962 20 8A E4                ;
L9967     = * + $0002                                                          ;
    JMP      LE3B9                     ; 0x11975 $9965 4C B9 E3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table16:                                                                  ;
.byt    $40,$00                        ; 0x11978 $9968 40 00                   ;
; ---------------------------------------------------------------------------- ;
bank4_code_996A:                                                                ;
    LDA      $87,x                     ; 0x1197a $996A B5 87                   ;; Projectile Type
    PHA                                ; 0x1197c $996C 48                      ;
    ASL                                ; 0x1197d $996D 0A                      ;
    TAY                                ; 0x1197e $996E A8                      ;
    LDA      $6EC0,y                   ; 0x1197f $996F B9 C0 6E                ;
    STA      L000E                     ; 0x11982 $9972 85 0E                   ;
    LDA      $6EC1,y                   ; 0x11984 $9974 B9 C1 6E                ;
    STA      $0F                       ; 0x11987 $9977 85 0F                   ;
    LDY      $97,x                     ; 0x11989 $9979 B4 97                   ;
    LDA      $30,x                     ; 0x1198b $997B B5 30                   ;; Projectile Y Position
    STA      $0200,y                   ; 0x1198d $997D 99 00 02                ;
    LDA      $CE                       ; 0x11990 $9980 A5 CE                   ;
    STA      $0203,y                   ; 0x11992 $9982 99 03 02                ;
    PLA                                ; 0x11995 $9985 68                      ;
    TAY                                ; 0x11996 $9986 A8                      ;
    LDA      $6EAD,y                   ; 0x11997 $9987 B9 AD 6E                ;
    PHA                                ; 0x1199a $998A 48                      ;
    LDA      $6EB6,y                   ; 0x1199b $998B B9 B6 6E                ;
    LDY      $66,x                     ; 0x1199e $998E B4 66                   ;; Projectile facing direction
    ORA      L9967,y                   ; 0x119a0 $9990 19 67 99                ;
    LDY      $97,x                     ; 0x119a3 $9993 B4 97                   ;
    STA      $0202,y                   ; 0x119a5 $9995 99 02 02                ;
    PLA                                ; 0x119a8 $9998 68                      ;
    STA      $0201,y                   ; 0x119a9 $9999 99 01 02                ;
    JMP      (L000E)                   ; 0x119ac $999C 6C 0E 00                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L999F:                                                                          ;
    LDY      $044C,x                   ; 0x119af $999F BC 4C 04                ;
    CPY      #$50                      ; 0x119b2 $99A2 C0 50                   ;
    BCS      L99BE                     ; 0x119b4 $99A4 B0 18                   ;
    LDA      #$01                      ; 0x119b6 $99A6 A9 01                   ; A = 01
    CPY      #$38                      ; 0x119b8 $99A8 C0 38                   ;
    BCS      L99AD                     ; 0x119ba $99AA B0 01                   ;
    ASL                                ; 0x119bc $99AC 0A                      ;
L99AD:                                                                          ;
    CPY      #$1C                      ; 0x119bd $99AD C0 1C                   ;
    BCS      L99B2                     ; 0x119bf $99AF B0 01                   ;
    ASL                                ; 0x119c1 $99B1 0A                      ;
L99B2:                                                                          ;
    AND      $12                       ; 0x119c2 $99B2 25 12                   ;; Frame Counter (ascending)
    BEQ      L99BE                     ; 0x119c4 $99B4 F0 08                   ;
    LDY      $97,x                     ; 0x119c6 $99B6 B4 97                   ;
    LDA      #$F8                      ; 0x119c8 $99B8 A9 F8                   ; A = F8
    STA      $0200,y                   ; 0x119ca $99BA 99 00 02                ;
    RTS                                ; 0x119cd $99BD 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99BE:                                                                          ;
    LDY      $97,x                     ; 0x119ce $99BE B4 97                   ;
    LDX      #$01                      ; 0x119d0 $99C0 A2 01                   ; X = 01
    LDA      $12                       ; 0x119d2 $99C2 A5 12                   ;; Frame Counter (ascending)
    AND      #$04                      ; 0x119d4 $99C4 29 04                   ; keep bits .... .x..
    BNE      L99CA                     ; 0x119d6 $99C6 D0 02                   ;
    LDX      #$41                      ; 0x119d8 $99C8 A2 41                   ; X = 41
L99CA:                                                                          ;
    TXA                                ; 0x119da $99CA 8A                      ;
    STA      $0202,y                   ; 0x119db $99CB 99 02 02                ;
    LDX      $10                       ; 0x119de $99CE A6 10                   ;; used as monster x register ;draw boss hp bar
L99D0:                                                                          ;
    RTS                                ; 0x119e0 $99D0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Bubble__Slow_Fast:                                         ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x119e1 $99D1 20 02 DA                ; Enemy Stops when Hit
    JSR      bank7_Simple_Horizontal_Movement; 0x119e4 $99D4 20 B8 DE              ; Enemy Horizontal Movement
    JSR      bank7_Simple_Vertical_Movement; 0x119e7 $99D7 20 C8 DE                ; Enemy Vertical Movement
    JSR      LDE3D                     ; 0x119ea $99DA 20 3D DE                ; Enemy Display ?
    LDA      $A8,x                     ; 0x119ed $99DD B5 A8                   ; Enemy State ?
    AND      #$10                      ; 0x119ef $99DF 29 10                   ; keep bits ...x ....
    BEQ      L99F0                     ; 0x119f1 $99E1 F0 0D                   ; if Not 0, skip magic stealing
    LDA      $0773                     ; 0x119f3 $99E3 AD 73 07                ; Current Magic left in meter
L99E6:                                                                          ;
    SEC                                ; 0x119f6 $99E6 38                      ;
    SBC      #$01                      ; 0x119f7 $99E7 E9 01                   ; Steal 1 unit of magic...
    BCS      L99ED                     ; 0x119f9 $99E9 B0 02                   ;
    LDA      #$00                      ; 0x119fb $99EB A9 00                   ; A = 00
L99ED:                                                                          ;
    STA      $0773                     ; 0x119fd $99ED 8D 73 07                ; Current Magic left in meter
L99F0:                                                                          ;
    LDA      $074F                     ; 0x11a00 $99F0 AD 4F 07                ;; Related to Pause Pane
    ORA      #$80                      ; 0x11a03 $99F3 09 80                   ; set bits  x... ....
    STA      $074F                     ; 0x11a05 $99F5 8D 4F 07                ;; Related to Pause Pane
    JSR      bank7_Link_Collision_Detection; 0x11a08 $99F8 20 C1 D6                ; Link Collision Detection
    LDA      $C9                       ; 0x11a0b $99FB A5 C9                   ;
    AND      #$0C                      ; 0x11a0d $99FD 29 0C                   ; keep bits .... xx..
    BNE      L9A07                     ; 0x11a0f $99FF D0 06                   ;
    LDA      $A8,x                     ; 0x11a11 $9A01 B5 A8                   ; Enemy State ?
L9A04     = * + $0001                                                          ;
    AND      #$03                      ; 0x11a13 $9A03 29 03                   ; keep bits .... ..xx
    BEQ      L9A0D                     ; 0x11a15 $9A05 F0 06                   ;
L9A07:                                                                          ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x11a17 $9A07 20 EB E8;
    JSR      bank7_Simple_Horizontal_Movement; 0x11a1a $9A0A 20 B8 DE              ;
L9A0D:                                                                          ;
    LDA      $C9                       ; 0x11a1d $9A0D A5 C9                   ;
    AND      #$F0                      ; 0x11a1f $9A0F 29 F0                   ; keep bits xxxx ....
    BNE      L9A19                     ; 0x11a21 $9A11 D0 06                   ;
    LDA      $A8,x                     ; 0x11a23 $9A13 B5 A8                   ;; Enemy State
    AND      #$0C                      ; 0x11a25 $9A15 29 0C                   ; keep bits .... xx..
    BEQ      L9A27                     ; 0x11a27 $9A17 F0 0E                   ;
L9A19:                                                                          ;
    LDA      $057E,x                   ; 0x11a29 $9A19 BD 7E 05                ; Enemy Y Velocity
    EOR      #$FF                      ; 0x11a2c $9A1C 49 FF                   ; flip all bits
    CLC                                ; 0x11a2e $9A1E 18                      ;
    ADC      #$01                      ; 0x11a2f $9A1F 69 01                   ;
    STA      $057E,x                   ; 0x11a31 $9A21 9D 7E 05                ; Enemy Y Velocity
    JSR      bank7_Simple_Vertical_Movement; 0x11a34 $9A24 20 C8 DE                ; Simple Vertical Movement
L9A27:                                                                          ;
    RTS                                ; 0x11a37 $9A27 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_Generator:                                            ;
    LDY      #$05                      ; 0x11a38 $9A28 A0 05                   ; Y = 05
L9A2A:                                                                          ;
    CPY      $10                       ; 0x11a3a $9A2A C4 10                   ;; used as monster x register ;draw boss hp bar
    BEQ      L9A3A                     ; 0x11a3c $9A2C F0 0C                   ;
    LDA      $B6,y                     ; 0x11a3e $9A2E B9 B6 00                ; Generated Enemy Slot
    BEQ      L9A3A                     ; 0x11a41 $9A31 F0 07                   ;
    LDA      $A1,y                     ; 0x11a43 $9A33 B9 A1 00                ; Enemy Code
    CMP      $A1,x                     ; 0x11a46 $9A36 D5 A1                   ;; Enemy Code
    BEQ      L9A3E                     ; 0x11a48 $9A38 F0 04                   ;
L9A3A:                                                                          ;
    DEY                                ; 0x11a4a $9A3A 88                      ;
    BPL      L9A2A                     ; 0x11a4b $9A3B 10 ED                   ;
    RTS                                ; 0x11a4d $9A3D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A3E:                                                                          ;
    TYA                                ; 0x11a4e $9A3E 98                      ;
    TAX                                ; 0x11a4f $9A3F AA                      ;
    JSR      LDD3D                     ; 0x11a50 $9A40 20 3D DD                ;
    LDX      $10                       ; 0x11a53 $9A43 A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x11a55 $9A45 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A46:                                                                          ;
    LDA      $12                       ; 0x11a56 $9A46 A5 12                   ; Permanent Frame Counter
    LSR                                ; 0x11a58 $9A48 4A                      ;
    BCS      L9A72                     ; 0x11a59 $9A49 B0 27                   ;
    JSR      bank7_Spawn_New_Projectile; 0x11a5b $9A4B 20 CE DB                ; Spawn New Projectile
    BCS      L9A72                     ; 0x11a5e $9A4E B0 22                   ;
    LDA      #$0C                      ; 0x11a60 $9A50 A9 0C                   ; A = 0C
    STA      $87,y                     ; 0x11a62 $9A52 99 87 00                ; Projectile Type
    LDA      $051B,x                   ; 0x11a65 $9A55 BD 1B 05                ; Randomizer
    AND      #$1F                      ; 0x11a68 $9A58 29 1F                   ; keep bits ...x xxxx
    ADC      $2A,x                     ; 0x11a6a $9A5A 75 2A                   ; Enemy Y Position
    SBC      #$06                      ; 0x11a6c $9A5C E9 06                   ;
    STA      $30,y                     ; 0x11a6e $9A5E 99 30 00                ; Projectile Y Position
    LDA      $051C,x                   ; 0x11a71 $9A61 BD 1C 05                ; Randomizer
    AND      #$0F                      ; 0x11a74 $9A64 29 0F                   ; keep bits .... xxxx
    SBC      #$08                      ; 0x11a76 $9A66 E9 08                   ;
    ADC      $4E,x                     ; 0x11a78 $9A68 75 4E                   ; Enemy X Position (low byte)
    STA      $54,y                     ; 0x11a7a $9A6A 99 54 00                ; Projectile X Position (low byte)
    LDA      #$10                      ; 0x11a7d $9A6D A9 10                   ; A = 10
    STA      $77,y                     ; 0x11a7f $9A6F 99 77 00                ; Projectile X Velocity
L9A72:                                                                          ;
    RTS                                ; 0x11a82 $9A72 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_Crystal_Slot_and_Crystal:                             ;
    LDX      #$03                      ; 0x11a83 $9A73 A2 03                   ; X = 03
    JSR      LC2A6                     ; 0x11a85 $9A75 20 A6 C2                ;
    LDX      $10                       ; 0x11a88 $9A78 A6 10                   ;; used as monster x register ;draw boss hp bar
    CMP      #$00                      ; 0x11a8a $9A7A C9 00                   ;
    BNE      L9A82                     ; 0x11a8c $9A7C D0 04                   ;
    LDA      #$15                      ; 0x11a8e $9A7E A9 15                   ; A = 15
    STA      $A1,x                     ; 0x11a90 $9A80 95 A1                   ;; Enemy Code
L9A82:                                                                          ;
    LDA      #$62                      ; 0x11a92 $9A82 A9 62                   ; A = 62
    STA      $2A,x                     ; 0x11a94 $9A84 95 2A                   ;; Enemy Y Position
    LDA      #$7C                      ; 0x11a96 $9A86 A9 7C                   ; A = 7C
    STA      $4E,x                     ; 0x11a98 $9A88 95 4E                   ;; Enemy X Position (low byte)
    RTS                                ; 0x11a9a $9A8A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Crystal:                                                   ;
    LDA      $C9                       ; 0x11a9b $9A8B A5 C9                   ;
    AND      #$08                      ; 0x11a9d $9A8D 29 08                   ; keep bits .... x...
    BNE      L9AA9                     ; 0x11a9f $9A8F D0 18                   ;
    LDY      $91,x                     ; 0x11aa1 $9A91 B4 91                   ;
    LDA      $2A,x                     ; 0x11aa3 $9A93 B5 2A                   ; Enemy Y Position
    STA      $0200,y                   ; 0x11aa5 $9A95 99 00 02                ;
    LDA      #$3D                      ; 0x11aa8 $9A98 A9 3D                   ; A = 3D
    STA      $0201,y                   ; 0x11aaa $9A9A 99 01 02                ;
    LDA      $12                       ; 0x11aad $9A9D A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x11aaf $9A9F 29 03                   ; keep bits .... ..xx
    STA      $0202,y                   ; 0x11ab1 $9AA1 99 02 02                ;
    LDA      $CD                       ; 0x11ab4 $9AA4 A5 CD                   ;
    STA      $0203,y                   ; 0x11ab6 $9AA6 99 03 02                ;
L9AA9:                                                                          ;
    RTS                                ; 0x11ab9 $9AA9 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table5:                                                                   ;
.byt    $00,$00,$00,$01,$01,$01,$02,$02; 0x11aba $9AAA 00 00 00 01 01 01 02 02 ;
.byt    $02,$03,$03,$03,$05,$05,$05,$09; 0x11ac2 $9AB2 02 03 03 03 05 05 05 09 ;
.byt    $09,$09,$0F,$0F,$0F,$32,$64,$64; 0x11aca $9ABA 09 09 0F 0F 0F 32 64 64 ;
.byt    $2C,$2C,$2C,$BC,$BC,$BC,$E8,$E8; 0x11ad2 $9AC2 2C 2C 2C BC BC BC E8 E8 ;
.byt    $E8,$DC,$DC,$DC,$C4,$C4,$C4,$A0; 0x11ada $9ACA E8 DC DC DC C4 C4 C4 A0 ;
.byt    $A0,$A0                        ; 0x11ae2 $9AD2 A0 A0                   ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Crystal_Slot:                                              ;
    JSR      bank4_code8               ; 0x11ae4 $9AD4 20 95 9B                ;
    LDA      $81,x                     ; 0x11ae7 $9AD7 B5 81                   ;; Current Animation Frame for Enemys
    BEQ      L9ADE                     ; 0x11ae9 $9AD9 F0 03                   ;
    JSR      bank4_Enemy_Routines_Crystal; 0x11aeb $9ADB 20 8B 9A                ;
L9ADE:                                                                          ;
    LDA      $AF,x                     ; 0x11aee $9ADE B5 AF                   ;; Various enemy state variables
    BANk4_Pointer_table_for_Crystal_Placement_Animation_Routines = * + $0001   ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x11af0 $9AE0 20 85 D3;
.word    bank4_Related_to_placing_crystal_onto_statue; 0x11af3 $9AE3 EB 9A     ;
.word    bank4_Crystal_Flying_Up       ; 0x11af5 $9AE5 2B 9B                   ;
.word    L9B47                         ; 0x11af7 $9AE7 47 9B                   ;
.word    L9B56                         ; 0x11af9 $9AE9 56 9B                   ;
; ---------------------------------------------------------------------------- ;
bank4_Related_to_placing_crystal_onto_statue:                                   ;
    LDA      $C9                       ; 0x11afb $9AEB A5 C9                   ;
    BNE      L9B2A                     ; 0x11afd $9AED D0 3B                   ;
    LDA      $0794                     ; 0x11aff $9AEF AD 94 07                ; Number of Crystals left
    BEQ      L9B2A                     ; 0x11b02 $9AF2 F0 36                   ;
    JSR      LE4D9                     ; 0x11b04 $9AF4 20 D9 E4                ;
    LDA      $A8,x                     ; 0x11b07 $9AF7 B5 A8                   ; Enemy State ?
    AND      #$10                      ; 0x11b09 $9AF9 29 10                   ; keep bits ...x ....
    BEQ      L9B2A                     ; 0x11b0b $9AFB F0 2D                   ;
    LDA      $A7                       ; 0x11b0d $9AFD A5 A7                   ; Link State
    AND      #$04                      ; 0x11b0f $9AFF 29 04                   ; keep bits .... .x..
    BEQ      L9B2A                     ; 0x11b11 $9B01 F0 27                   ;
    INC      $AF,x                     ; 0x11b13 $9B03 F6 AF                   ; Various enemy state variables
    INC      $DE                       ; 0x11b15 $9B05 E6 DE                   ; Spell Spell modifier (and more)
    LDA      #$03                      ; 0x11b17 $9B07 A9 03                   ; A = 03
    STA      $80                       ; 0x11b19 $9B09 85 80                   ; Current Animation Frame for Link (OW and SS)
    LDA      #$A0                      ; 0x11b1b $9B0B A9 A0                   ; A = A0
    STA      $2A,x                     ; 0x11b1d $9B0D 95 2A                   ; Enemy Y Position
    DEC      $0794                     ; 0x11b1f $9B0F CE 94 07                ; Number of Crystals left
    LDA      #$08                      ; 0x11b22 $9B12 A9 08                   ; A = 08 (sound of crystal)
    STA      $EF                       ; 0x11b24 $9B14 85 EF                   ; Sound Effects Type 4
    LDA      #$80                      ; 0x11b26 $9B16 A9 80                   ; A = 80
    STA      $EB                       ; 0x11b28 $9B18 85 EB                   ; Music
    LDA      $0706                     ; 0x11b2a $9B1A AD 06 07                ; Current Region
    BEQ      L9B22                     ; 0x11b2d $9B1D F0 03                   ;
    CLC                                ; 0x11b2f $9B1F 18                      ;
    ADC      #$02                      ; 0x11b30 $9B20 69 02                   ;
L9B22:                                                                          ;
    SEC                                ; 0x11b32 $9B22 38                      ;
    ADC      $056C                     ; 0x11b33 $9B23 6D 6C 05                ;; Palace Code
    TAY                                ; 0x11b36 $9B26 A8                      ;
    STA      $078C,y                   ; 0x11b37 $9B27 99 8C 07                ; Crystals Placed (1 = crystal placed)
L9B2A:                                                                          ;
    RTS                                ; 0x11b3a $9B2A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Crystal_Flying_Up:                                                        ;
    DEC      $2A,x                     ; 0x11b3b $9B2B D6 2A                   ; Enemy Y Position
    LDA      $2A,x                     ; 0x11b3d $9B2D B5 2A                   ;; Enemy Y Position
    STA      $81,x                     ; 0x11b3f $9B2F 95 81                   ; Current Animation Frame for Enemy
    CMP      #$62                      ; 0x11b41 $9B31 C9 62                   ;
    BNE      L9B46                     ; 0x11b43 $9B33 D0 11                   ;
    STA      $0767                     ; 0x11b45 $9B35 8D 67 07                ;; Related to Crystal Placement
    INC      $AF,x                     ; 0x11b48 $9B38 F6 AF                   ;; Various enemy state variables
    LDA      #$40                      ; 0x11b4a $9B3A A9 40                   ; A = 40 (crystal placed fanfare)
    STA      $EB                       ; 0x11b4c $9B3C 85 EB                   ; Music
    LDA      #$02                      ; 0x11b4e $9B3E A9 02                   ; A = 02
    STA      $EC                       ; 0x11b50 $9B40 85 EC                   ; Sound Effects Type 1
    LDA      #$00                      ; 0x11b52 $9B42 A9 00                   ; A = 00
    STA      $70                       ; 0x11b54 $9B44 85 70                   ; Link's X Velocity
L9B46:                                                                          ;
    RTS                                ; 0x11b56 $9B46 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B47:                                                                          ;
    LDY      $07FB                     ; 0x11b57 $9B47 AC FB 07                ;
    BNE      L9B55                     ; 0x11b5a $9B4A D0 09                   ;
    DEY                                ; 0x11b5c $9B4C 88                      ;
    STY      $070C                     ; 0x11b5d $9B4D 8C 0C 07                ; Magic to be added to Magic Meter
    STY      $070D                     ; 0x11b60 $9B50 8C 0D 07                ; Life to be added to Life Meter
    INC      $AF,x                     ; 0x11b63 $9B53 F6 AF                   ;; Various enemy state variables
L9B55:                                                                          ;
    RTS                                ; 0x11b65 $9B55 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B56:                                                                          ;
    LDA      $070C                     ; 0x11b66 $9B56 AD 0C 07                ; Magic to be added to Magic Meter
    ORA      $070D                     ; 0x11b69 $9B59 0D 0D 07                ; Life to be added to Life Meter
    BNE      L9B88                     ; 0x11b6c $9B5C D0 2A                   ;
    STA      $DE                       ; 0x11b6e $9B5E 85 DE                   ; Spell Spell modifier (and more)
    LDA      $0771                     ; 0x11b70 $9B60 AD 71 07                ; Exp. needed for Next Level (low byte)
    SEC                                ; 0x11b73 $9B63 38                      ;
    SBC      $0776                     ; 0x11b74 $9B64 ED 76 07                ; Current Experience (low byte)
    STA      $0756                     ; 0x11b77 $9B67 8D 56 07                ; Experience to be added (low byte)
    LDA      $0770                     ; 0x11b7a $9B6A AD 70 07                ; Exp. needed for Next Level (high byte)
    SBC      $0775                     ; 0x11b7d $9B6D ED 75 07                ; Current Experience (high byte)
    STA      $0755                     ; 0x11b80 $9B70 8D 55 07                ; Experience to be added (high byte)
    LDY      $BC,x                     ; 0x11b83 $9B73 B4 BC                   ;; Generated Enemy Y Position ?
    INY                                ; 0x11b85 $9B75 C8                      ;
    LDA      #$D5                      ; 0x11b86 $9B76 A9 D5                   ; A = D5
    STA      ($D6),y                   ; 0x11b88 $9B78 91 D6                   ;
    LDA      #$15                      ; 0x11b8a $9B7A A9 15                   ; A = 15
    STA      $A1,x                     ; 0x11b8c $9B7C 95 A1                   ; Enemy Code
    LDX      #$02                      ; 0x11b8e $9B7E A2 02                   ; X = 02
    STX      $EB                       ; 0x11b90 $9B80 86 EB                   ; Music
    INX                                ; 0x11b92 $9B82 E8                      ;
    JSR      Set_Item_RAM_bit_to_0__Bits_0_3; 0x11b93 $9B83 20 95 C2               ;
L9B86:                                                                          ;
    LDX      $10                       ; 0x11b96 $9B86 A6 10                   ;; used as monster x register ;draw boss hp bar
L9B88:                                                                          ;
    RTS                                ; 0x11b98 $9B88 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Table_for_Crystal_Flashing_Colors_maybe:                                  ;
.byt    $12,$30,$2A,$16                ; 0x11b99 $9B89 12 30 2A 16             ;
L9B8D:                                                                          ;
.byt    $3F,$0C,$04,$0F,$3C,$1C,$0C,$FF; 0x11b9d $9B8D 3F 0C 04 0F 3C 1C 0C FF ;
; ---------------------------------------------------------------------------- ;
bank4_code8:                                                                    ;
    LDA      $0767                     ; 0x11ba5 $9B95 AD 67 07                ; Related to Crystal
    BEQ      L9BCC                     ; 0x11ba8 $9B98 F0 32                   ;
    DEC      $0767                     ; 0x11baa $9B9A CE 67 07                ;; Related to Crystal Placement
    LDY      #$07                      ; 0x11bad $9B9D A0 07                   ; Y = 07
L9B9F:                                                                          ;
    LDA      L9B8D,y                   ; 0x11baf $9B9F B9 8D 9B                ;
    STA      L0302,y                   ; 0x11bb2 $9BA2 99 02 03                ;
    DEY                                ; 0x11bb5 $9BA5 88                      ;
    BPL      L9B9F                     ; 0x11bb6 $9BA6 10 F7                   ;
    LDA      $0767                     ; 0x11bb8 $9BA8 AD 67 07                ;; Related to Crystal Placement
    BNE      L9BBE                     ; 0x11bbb $9BAB D0 11                   ;
    LDA      $7936                     ; 0x11bbd $9BAD AD 36 79                ;
    STA      $0306                     ; 0x11bc0 $9BB0 8D 06 03                ;; Letter Written to Screen
    LDA      $7938                     ; 0x11bc3 $9BB3 AD 38 79                ;
    STA      $0308                     ; 0x11bc6 $9BB6 8D 08 03                ;
    LDA      $7937                     ; 0x11bc9 $9BB9 AD 37 79                ;
    BNE      L9BC4                     ; 0x11bcc $9BBC D0 06                   ;
L9BBE:                                                                          ;
    AND      #$03                      ; 0x11bce $9BBE 29 03                   ; keep bits .... ..xx
    TAY                                ; 0x11bd0 $9BC0 A8                      ;
    LDA      bank4_Table_for_Crystal_Flashing_Colors_maybe,y; 0x11bd1 $9BC1 B9 89 9B;
L9BC4:                                                                          ;
    STA      $0307                     ; 0x11bd4 $9BC4 8D 07 03                ;; Text memory offset?
    LDA      #$07                      ; 0x11bd7 $9BC7 A9 07                   ; A = 07
L9BCB     = * + $0002                                                          ;
    STA      $0301                     ; 0x11bd9 $9BC9 8D 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
L9BCC:                                                                          ;
    RTS                                ; 0x11bdc $9BCC 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table6:                                                                   ;
.byt    $06,$0A,$0D,$0F,$11,$12,$13,$13; 0x11bdd $9BCD 06 0A 0D 0F 11 12 13 13 ;
L9BD5:                                                                          ;
.byt    $16,$14,$13,$11,$0F,$0E,$0D,$0B; 0x11be5 $9BD5 16 14 13 11 0F 0E 0D 0B ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Energy_Ball_Shooter__Left_Right:                           ;
    LDA      $12                       ; 0x11bed $9BDD A5 12                   ; Permanent Frame Counter
    AND      #$1F                      ; 0x11bef $9BDF 29 1F                   ; keep bits ...x xxxx
    ORA      $C9                       ; 0x11bf1 $9BE1 05 C9                   ;
    BNE      L9C3E                     ; 0x11bf3 $9BE3 D0 59                   ;
L9BE5:                                                                          ;
    JSR      bank7_Spawn_New_Projectile; 0x11bf5 $9BE5 20 CE DB                ; Spawn New Projectile
    BCS      L9C3E                     ; 0x11bf8 $9BE8 B0 54                   ;
    STY      $05                       ; 0x11bfa $9BEA 84 05                   ;
    LDA      $60,x                     ; 0x11bfc $9BEC B5 60                   ; Enemy facing direction
    PHA                                ; 0x11bfe $9BEE 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x11bff $9BEF 20 91 DC; Determine Enemy Facing Direction
    PLA                                ; 0x11c02 $9BF2 68                      ;
    STA      $60,x                     ; 0x11c03 $9BF3 95 60                   ; Enemy facing direction
    INY                                ; 0x11c05 $9BF5 C8                      ;
    TYA                                ; 0x11c06 $9BF6 98                      ;
    LDY      $05                       ; 0x11c07 $9BF7 A4 05                   ;
    CMP      $60,x                     ; 0x11c09 $9BF9 D5 60                   ;; Enemy facing direction
    BNE      L9C3F                     ; 0x11c0b $9BFB D0 42                   ;
    STA      $66,y                     ; 0x11c0d $9BFD 99 66 00                ; Projectile facing direction
    LDA      $0F                       ; 0x11c10 $9C00 A5 0F                   ;
    BPL      L9C06                     ; 0x11c12 $9C02 10 02                   ;
    EOR      #$FF                      ; 0x11c14 $9C04 49 FF                   ; flip all bits
L9C06:                                                                          ;
    SBC      #$14                      ; 0x11c16 $9C06 E9 14                   ;
    LSR                                ; 0x11c18 $9C08 4A                      ;
    LSR                                ; 0x11c19 $9C09 4A                      ;
    LSR                                ; 0x11c1a $9C0A 4A                      ;
    LSR                                ; 0x11c1b $9C0B 4A                      ;
    CMP      #$08                      ; 0x11c1c $9C0C C9 08                   ;
    BCS      L9C3F                     ; 0x11c1e $9C0E B0 2F                   ;
    TAX                                ; 0x11c20 $9C10 AA                      ;
    LDA      L9BD5,x                   ; 0x11c21 $9C11 BD D5 9B                ;
    STA      $0584,y                   ; 0x11c24 $9C14 99 84 05                ; Projectile Y Velocity
    LDA      bank4_table6,x            ; 0x11c27 $9C17 BD CD 9B                ;
    LDX      $66,y                     ; 0x11c2a $9C1A B6 66                   ; Projectile facing direction
    DEX                                ; 0x11c2c $9C1C CA                      ;
    BEQ      L9C21                     ; 0x11c2d $9C1D F0 02                   ;
    EOR      #$FF                      ; 0x11c2f $9C1F 49 FF                   ; flip all bits
L9C21:                                                                          ;
    STA      $77,y                     ; 0x11c31 $9C21 99 77 00                ; Projectile X Velocity
    LDX      $10                       ; 0x11c34 $9C24 A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $2A,x                     ; 0x11c36 $9C26 B5 2A                   ; Enemy Y Position
    ADC      #$05                      ; 0x11c38 $9C28 69 05                   ;
    STA      $30,y                     ; 0x11c3a $9C2A 99 30 00                ; Projectile Y Position
    LDA      $4E,x                     ; 0x11c3d $9C2D B5 4E                   ; Enemy X Position (low byte)
    ADC      #$04                      ; 0x11c3f $9C2F 69 04                   ;
    STA      $54,y                     ; 0x11c41 $9C31 99 54 00                ; Projectile X Position (low byte)
    LDA      $3C,x                     ; 0x11c44 $9C34 B5 3C                   ; Enemy X Position (high byte)
    STA      $42,y                     ; 0x11c46 $9C36 99 42 00                ; Projectile X Position (high byte)
    LDA      #$01                      ; 0x11c49 $9C39 A9 01                   ; A = 01
    STA      $87,y                     ; 0x11c4b $9C3B 99 87 00                ; Projectile Type
L9C3E:                                                                          ;
    RTS                                ; 0x11c4e $9C3E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C3F:                                                                          ;
    LDA      #$00                      ; 0x11c4f $9C3F A9 00                   ; A = 00
    STA      $87,y                     ; 0x11c51 $9C41 99 87 00                ; Projectile Type
    RTS                                ; 0x11c54 $9C44 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C45:                                                                          ;
    STA      L0000                     ; 0x11c55 $9C45 85 00                   ;04:9C45		459C
    LDY      #$00                      ; 0x11c57 $9C47 A0 00                   ; Y = 00
    LDA      $C2,x                     ; 0x11c59 $9C49 B5 C2                   ; Enemy Current HP
    CLC                                ; 0x11c5b $9C4B 18                      ;
L9C4C:                                                                          ;
    SBC      L0000                     ; 0x11c5c $9C4C E5 00                   ;
    INY                                ; 0x11c5e $9C4E C8                      ;
    BCS      L9C4C                     ; 0x11c5f $9C4F B0 FB                   ;
    LDX      #$1C                      ; 0x11c61 $9C51 A2 1C                   ; X = 1C
    LDA      #$70                      ; 0x11c63 $9C53 A9 70                   ; A = 70
    STA      L0000                     ; 0x11c65 $9C55 85 00                   ;
L9C57:                                                                          ;
    LDA      #$70                      ; 0x11c67 $9C57 A9 70                   ; A = 70
    DEY                                ; 0x11c69 $9C59 88                      ;
    BMI      L9C5E                     ; 0x11c6a $9C5A 30 02                   ;
    LDA      #$6E                      ; 0x11c6c $9C5C A9 6E                   ; A = 6E
L9C5E:                                                                          ;
    STA      $02C1,x                   ; 0x11c6e $9C5E 9D C1 02                ;
    LDA      #$01                      ; 0x11c71 $9C61 A9 01                   ; A = 01
L9C65     = * + $0002                                                          ;
    STA      $02C2,x                   ; 0x11c73 $9C63 9D C2 02                ;
    LDA      #$10                      ; 0x11c76 $9C66 A9 10                   ; A = 10
    STA      $02C3,x                   ; 0x11c78 $9C68 9D C3 02                ;
L9C6C     = * + $0001                                                          ;
    LDA      L0000                     ; 0x11c7b $9C6B A5 00                   ;
    STA      $02C0,x                   ; 0x11c7d $9C6D 9D C0 02                ;
L9C70:                                                                          ;
    ADC      #$F8                      ; 0x11c80 $9C70 69 F8                   ;
    STA      L0000                     ; 0x11c82 $9C72 85 00                   ;
    DEX                                ; 0x11c84 $9C74 CA                      ;
    DEX                                ; 0x11c85 $9C75 CA                      ;
    DEX                                ; 0x11c86 $9C76 CA                      ;
    DEX                                ; 0x11c87 $9C77 CA                      ;
    BPL      L9C57                     ; 0x11c88 $9C78 10 DD                   ;
    LDX      $10                       ; 0x11c8a $9C7A A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x11c8c $9C7C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Ironknuckle_Variables:                                                    ;
;11C7D: 01 03 03		Probability to protect from Link's attack (3 bytes)          ;
;                                                                              ;
;01 = Random & 0x01 = 50% chance (80 / 100)                                    ;
;03 = Random & 0x03 = 25% chance (40 / 100)                                    ;
;                                                                              ;
;11C80: 08 F8		Table for approaching velocities (2 bytes)                      ;
;                                                                              ;
;08 = Approaching velocity, facing right                                       ;
;F8 = Approaching velocity, facing left                                        ;
;                                                                              ;
;11C82: 0A 00		Table for Sword High/Low Y Positions (2 bytes)                  ;
;                                                                              ;
;11C84: 1C 1C 60 50 38 38 C0 A0	Table for Various Velocities (8 bytes)         ;
;                                                                              ;
;1C 1C	Distance to keep from Link ?                                            ;
;60                                                                            ;
;50                                                                            ;
;38 38                                                                         ;
;C0                                                                            ;
;A0                                                                            ;
.byt    $01,$03                        ; 0x11c8d $9C7D 01 03                   ;
L9C7F:                                                                          ;
.byt    $03                            ; 0x11c8f $9C7F 03                      ;
L9C80:                                                                          ;
.byt    $08,$F8                        ; 0x11c90 $9C80 08 F8                   ;
L9C82:                                                                          ;
.byt    $0A,$00,$1C,$1C,$60,$50,$38,$38; 0x11c92 $9C82 0A 00 1C 1C 60 50 38 38 ;
.byt    $C0,$A0                        ; 0x11c9a $9C8A C0 A0                   ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Iron_Knuckle:                                              ;
    JSR      bank7_Display             ; 0x11c9c $9C8C 20 11 EF                ; Display
    LDA      $A1,x                     ; 0x11c9f $9C8F B5 A1                   ; Enemy Code
    CMP      #$18                      ; 0x11ca1 $9C91 C9 18                   ; 18 = Orange Ironknuckle
    BCS      L9C97                     ; 0x11ca3 $9C93 B0 02                   ;
    LDA      #$1A                      ; 0x11ca5 $9C95 A9 1A                   ; A = 1A
L9C97:                                                                          ;
    STA      $DF                       ; 0x11ca7 $9C97 85 DF                   ; Enemy Code (temporary storage)
    LDA      $81,x                     ; 0x11ca9 $9C99 B5 81                   ; Current Animation Frame for Enemy
    BEQ      L9CE3                     ; 0x11cab $9C9B F0 46                   ;
    AND      #$01                      ; 0x11cad $9C9D 29 01                   ; keep bits .... ...x
    BNE      L9CC6                     ; 0x11caf $9C9F D0 25                   ;
    LDA      $DF                       ; 0x11cb1 $9CA1 A5 DF                   ; Enemy Code (temporary storage)
    CMP      #$1A                      ; 0x11cb3 $9CA3 C9 1A                   ; 1A = Blue Ironknuckle
    BNE      L9CC3                     ; 0x11cb5 $9CA5 D0 1C                   ;
    JSR      bank7_Spawn_New_Projectile; 0x11cb7 $9CA7 20 CE DB                ; Spawn New Projectile
    BCS      L9CC3                     ; 0x11cba $9CAA B0 17                   ;
    LDA      #$05                      ; 0x11cbc $9CAC A9 05                   ; A = 05 (flying blade projectile type)
    STA      $87,y                     ; 0x11cbe $9CAE 99 87 00                ; Projectile Type
    LDA      $81,x                     ; 0x11cc1 $9CB1 B5 81                   ; Current Animation Frame for Enemy
    LSR                                ; 0x11cc3 $9CB3 4A                      ;
    AND      #$01                      ; 0x11cc4 $9CB4 29 01                   ; keep bits .... ...x
    TAX                                ; 0x11cc6 $9CB6 AA                      ;
    LDA      L9C82,x                   ; 0x11cc7 $9CB7 BD 82 9C                ;
    LDX      $10                       ; 0x11cca $9CBA A6 10                   ;; used as monster x register ;draw boss hp bar
    ADC      $2A,x                     ; 0x11ccc $9CBC 75 2A                   ; Enemy Y Position
    STA      $30,y                     ; 0x11cce $9CBE 99 30 00                ; Projectile Y Position
    BNE      L9CDF                     ; 0x11cd1 $9CC1 D0 1C                   ;
L9CC3:                                                                          ;
    JSR      LE563                     ; 0x11cd3 $9CC3 20 63 E5                ; check if shield protects from sword hit
L9CC6:                                                                          ;
    LDA      $0504,x                   ; 0x11cd6 $9CC6 BD 04 05                ; Timer for Sword in middle swing
    BNE      L9CDC                     ; 0x11cd9 $9CC9 D0 11                   ;
    INC      $81,x                     ; 0x11cdb $9CCB F6 81                   ; Current Animation Frame for Enemy
    LDA      $81,x                     ; 0x11cdd $9CCD B5 81                   ;; Current Animation Frame for Enemys
    CMP      #$03                      ; 0x11cdf $9CCF C9 03                   ; if (step == 3)
    BEQ      L9CDF                     ; 0x11ce1 $9CD1 F0 0C                   ; skip to $11CDF
    CMP      #$05                      ; 0x11ce3 $9CD3 C9 05                   ; if (step >= 5)
    BCS      L9CDF                     ; 0x11ce5 $9CD5 B0 08                   ; skip to $11CDF
    LDA      #$10                      ; 0x11ce7 $9CD7 A9 10                   ; A = 10
    STA      $0504,x                   ; 0x11ce9 $9CD9 9D 04 05                ; Timer for Sword in middle swing
L9CDC:                                                                          ;
    JMP      L9CE3                     ; 0x11cec $9CDC 4C E3 9C                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9CDF:                                                                          ;
    LDA      #$00                      ; 0x11cef $9CDF A9 00                   ; A = 00
    STA      $81,x                     ; 0x11cf1 $9CE1 95 81                   ; Current Animation Frame for Enemy
L9CE3:                                                                          ;
    JSR      LE617                     ; 0x11cf3 $9CE3 20 17 E6                ;
    JSR      LEA32                     ; 0x11cf6 $9CE6 20 32 EA                ;
    LDY      #$01                      ; 0x11cf9 $9CE9 A0 01                   ; Y = 01
    INX                                ; 0x11cfb $9CEB E8                      ;
    JSR      bank7_code51              ; 0x11cfc $9CEC 20 7D F2                ;
    LDX      $10                       ; 0x11cff $9CEF A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $1A,x                     ; 0x11d01 $9CF1 B5 1A                   ; Enemy Code
    CMP      #$02                      ; 0x11d03 $9CF3 C9 02                   ; 02 = Locked Door
    BCC      L9CFA                     ; 0x11d05 $9CF5 90 03                   ;
    JMP      LDD3D                     ; 0x11d07 $9CF7 4C 3D DD                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9CFA:                                                                          ;
    LDA      $C9                       ; 0x11d0a $9CFA A5 C9                   ;
    AND      #$FC                      ; 0x11d0c $9CFC 29 FC                   ; keep bits xxxx xx..
    BEQ      L9D0C                     ; 0x11d0e $9CFE F0 0C                   ;
    LDA      $A8,x                     ; 0x11d10 $9D00 B5 A8                   ; Enemy State
    AND      #$0F                      ; 0x11d12 $9D02 29 0F                   ; keep bits .... xxxx
    STA      $A8,x                     ; 0x11d14 $9D04 95 A8                   ;; Enemy State
    JSR      LDE6C                     ; 0x11d16 $9D06 20 6C DE                ;
    JMP      L9D15                     ; 0x11d19 $9D09 4C 15 9D                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9D0C:                                                                          ;
    JSR      LE48B                     ; 0x11d1c $9D0C 20 8B E4                ;
    JSR      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x11d1f $9D0F 20 77 E6; Sword Hit Detection ?
    JSR      LE4D9                     ; 0x11d22 $9D12 20 D9 E4                ;
L9D15:                                                                          ;
    JSR      bank7_Link_Collision_Detection; 0x11d25 $9D15 20 C1 D6                ; Link Collision Detection
    JSR      bank7_Gravity             ; 0x11d28 $9D18 20 BE DE                ; Gravity
    LDA      $A8,x                     ; 0x11d2b $9D1B B5 A8                   ; Enemy State
    AND      #$04                      ; 0x11d2d $9D1D 29 04                   ; keep bits .... .x..
    BEQ      L9D24                     ; 0x11d2f $9D1F F0 03                   ;
    JSR      bank7_Floor_Y_Position    ; 0x11d31 $9D21 20 C1 DA                ; Floor Enemy Y Position
L9D24:                                                                          ;
    JSR      L9E17                     ; 0x11d34 $9D24 20 17 9E                ;
    LDA      $040E,x                   ; 0x11d37 $9D27 BD 0E 04                ; Enemy Hit State (0 = not in Hit State)
    CMP      #$02                      ; 0x11d3a $9D2A C9 02                   ;
    BNE      L9D38                     ; 0x11d3c $9D2C D0 0A                   ;
    LDA      $051B,x                   ; 0x11d3e $9D2E BD 1B 05                ; Randomizer
    AND      #$03                      ; 0x11d41 $9D31 29 03                   ; keep bits .... ..xx
    ORA      #$04                      ; 0x11d43 $9D33 09 04                   ; set bits  .... .x..
    STA      $0401,x                   ; 0x11d45 $9D35 9D 01 04                ;
L9D38:                                                                          ;
    LDA      $A1,x                     ; 0x11d48 $9D38 B5 A1                   ; Enemy Code
    CMP      #$18                      ; 0x11d4a $9D3A C9 18                   ; 18 = Orange Ironknuckle
    BCC      L9D44                     ; 0x11d4c $9D3C 90 06                   ;
    LDA      $C9                       ; 0x11d4e $9D3E A5 C9                   ;
    AND      #$0C                      ; 0x11d50 $9D40 29 0C                   ; keep bits .... xx..
    BNE      L9D4F                     ; 0x11d52 $9D42 D0 0B                   ;
L9D44:                                                                          ;
    LDA      $2A,x                     ; 0x11d54 $9D44 B5 2A                   ; Enemy Y Position
    SEC                                ; 0x11d56 $9D46 38                      ;
    SBC      $29                       ; 0x11d57 $9D47 E5 29                   ; Link's Y Position
    BCC      L9D4F                     ; 0x11d59 $9D49 90 04                   ;
    CMP      #$2A                      ; 0x11d5b $9D4B C9 2A                   ;
    BCC      L9D52                     ; 0x11d5d $9D4D 90 03                   ;
L9D4F:                                                                          ;
    JMP      L9DEE                     ; 0x11d5f $9D4F 4C EE 9D                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9D52:                                                                          ;
    LDA      $F5                       ; 0x11d62 $9D52 A5 F5                   ; Controller 1 buttons pressed
L9D54:                                                                          ;
    AND      #$40                      ; 0x11d64 $9D54 29 40                   ; check if B is pressed
    BEQ      L9D67                     ; 0x11d66 $9D56 F0 0F                   ; if B is NOT pressed, skip to $11D67
    LDY      $DF                       ; 0x11d68 $9D58 A4 DF                   ; Enemy Code (temporary storage)
    LDA      $051B,x                   ; 0x11d6a $9D5A BD 1B 05                ; Randomizer
    AND      L9C65,y                   ; 0x11d6d $9D5D 39 65 9C                ; Probability to change shield's position
    BEQ      L9D67                     ; 0x11d70 $9D60 F0 05                   ;
    LDA      $17                       ; 0x11d72 $9D62 A5 17                   ; Link's Shield Position
    STA      $0444,x                   ; 0x11d74 $9D64 9D 44 04                ; Enemy Vulnerability
L9D67:                                                                          ;
    LDA      $29                       ; 0x11d77 $9D67 A5 29                   ; Link's Y Position
    CMP      $2A,x                     ; 0x11d79 $9D69 D5 2A                   ; Enemy Y Position
    BEQ      L9D7B                     ; 0x11d7b $9D6B F0 0E                   ; if Link & Enemy at same level, skip to $11D7B
    LDY      #$01                      ; 0x11d7d $9D6D A0 01                   ; Y = 01
    CLC                                ; 0x11d7f $9D6F 18                      ;
    ADC      #$0A                      ; 0x11d80 $9D70 69 0A                   ;
;set this to a lower value (even 0) to prevent the jump-and-slash trick        ;
    CMP      $2A,x                     ; 0x11d82 $9D72 D5 2A                   ; Enemy Y Position
    BCC      L9D77                     ; 0x11d84 $9D74 90 01                   ;
    DEY                                ; 0x11d86 $9D76 88                      ;IronKnuckle: this DEY only occurs when in proper height for jump/slash attack
L9D77:                                                                          ;
    TYA                                ; 0x11d87 $9D77 98                      ;
    STA      $0444,x                   ; 0x11d88 $9D78 9D 44 04                ; Enemy Vulnerability
L9D7B:                                                                          ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x11d8b $9D7B 20 91 DC; Determine Enemy Facing Direction
    LDA      L9C80,y                   ; 0x11d8e $9D7E B9 80 9C                ; refer to table at $11C80
    ASL                                ; 0x11d91 $9D81 0A                      ;
    STA      $71,x                     ; 0x11d92 $9D82 95 71                   ; Enemy X Velocity
    LDY      $DF                       ; 0x11d94 $9D84 A4 DF                   ; Enemy Code (temporary storage)
    LDA      $0F                       ; 0x11d96 $9D86 A5 0F                   ;
    ADC      L9C6C,y                   ; 0x11d98 $9D88 79 6C 9C                ;
    CMP      L9C70,y                   ; 0x11d9b $9D8B D9 70 9C                ;
    BCC      L9D91                     ; 0x11d9e $9D8E 90 01                   ;
    RTS                                ; 0x11da0 $9D90 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9D91:                                                                          ;
    LDY      $70                       ; 0x11da1 $9D91 A4 70                   ; Link's X Velocity
    BNE      L9D9F                     ; 0x11da3 $9D93 D0 0A                   ;
    LDY      #$08                      ; 0x11da5 $9D95 A0 08                   ; Y = 08
    LDA      $12                       ; 0x11da7 $9D97 A5 12                   ;; Frame Counter (ascending)
    AND      #$40                      ; 0x11da9 $9D99 29 40                   ; keep bits .x.. ....
    BNE      L9D9F                     ; 0x11dab $9D9B D0 02                   ;
    LDY      #$F8                      ; 0x11dad $9D9D A0 F8                   ; Y = F8
L9D9F:                                                                          ;
    STY      $71,x                     ; 0x11daf $9D9F 94 71                   ; Enemy X Velocity
    TYA                                ; 0x11db1 $9DA1 98                      ;
    LDY      $DF                       ; 0x11db2 $9DA2 A4 DF                   ; Enemy Code (temporary storage)
    CPY      #$1A                      ; 0x11db4 $9DA4 C0 1A                   ; 1A = Blue Ironknuckle
    BEQ      L9DAD                     ; 0x11db6 $9DA6 F0 05                   ;
    LDY      $0479                     ; 0x11db8 $9DA8 AC 79 04                ; Link is in mid-air ? (1 = mid-air)
    BNE      L9DB0                     ; 0x11dbb $9DAB D0 03                   ;
L9DAD:                                                                          ;
    ASL                                ; 0x11dbd $9DAD 0A                      ;
    ROR      $71,x                     ; 0x11dbe $9DAE 76 71                   ; Enemy X Velocity
L9DB0:                                                                          ;
    LDA      $81,x                     ; 0x11dc0 $9DB0 B5 81                   ; Current Animation Frame for Enemy
    BNE      L9DED                     ; 0x11dc2 $9DB2 D0 39                   ;
    LDA      $0401,x                   ; 0x11dc4 $9DB4 BD 01 04                ;
    BEQ      L9DBF                     ; 0x11dc7 $9DB7 F0 06                   ;
    DEC      $0401,x                   ; 0x11dc9 $9DB9 DE 01 04                ;
    JMP      L9DD2                     ; 0x11dcc $9DBC 4C D2 9D                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9DBF:                                                                          ;
    LDA      #$3F                      ; 0x11dcf $9DBF A9 3F                   ; A = 3F
    INC      $AF,x                     ; 0x11dd1 $9DC1 F6 AF                   ;; Various enemy state variables
    AND      $AF,x                     ; 0x11dd3 $9DC3 35 AF                   ;; Various enemy state variables
    BNE      L9DED                     ; 0x11dd5 $9DC5 D0 26                   ;
    LDA      $051B,x                   ; 0x11dd7 $9DC7 BD 1B 05                ; Randomizer
    AND      #$0F                      ; 0x11dda $9DCA 29 0F                   ; keep bits .... xxxx
    BNE      L9DD2                     ; 0x11ddc $9DCC D0 04                   ;
    LDA      #$E0                      ; 0x11dde $9DCE A9 E0                   ; A = E0
    STA      $AF,x                     ; 0x11de0 $9DD0 95 AF                   ;; Various enemy state variables
L9DD2:                                                                          ;
    LDY      #$01                      ; 0x11de2 $9DD2 A0 01                   ; Y = 01
    LDA      $051B,x                   ; 0x11de4 $9DD4 BD 1B 05                ; Randomizer
    LSR                                ; 0x11de7 $9DD7 4A                      ;
    BCS      L9DE0                     ; 0x11de8 $9DD8 B0 06                   ;
    AND      #$02                      ; 0x11dea $9DDA 29 02                   ; keep bits .... ..x.
    TAY                                ; 0x11dec $9DDC A8                      ;
    INY                                ; 0x11ded $9DDD C8                      ;
    BNE      L9DE6                     ; 0x11dee $9DDE D0 06                   ;
L9DE0:                                                                          ;
    LDA      $17                       ; 0x11df0 $9DE0 A5 17                   ; Link's Shield Position (0 = Link ducked)
    BNE      L9DE6                     ; 0x11df2 $9DE2 D0 02                   ;
    INY                                ; 0x11df4 $9DE4 C8                      ;
    INY                                ; 0x11df5 $9DE5 C8                      ;
L9DE6:                                                                          ;
    STY      $81,x                     ; 0x11df6 $9DE6 94 81                   ; Current Animation Frame for Enemy
    LDA      #$18                      ; 0x11df8 $9DE8 A9 18                   ; A = 18 (delay for sword backswing)	;18 -> 08	Ironknuckle Ultra Fast Sword Swings ! Mega difficulty !
    STA      $0504,x                   ; 0x11dfa $9DEA 9D 04 05                ; Timer for Enemy AI
L9DED:                                                                          ;
    RTS                                ; 0x11dfd $9DED 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9DEE:                                                                          ;
    LDA      $AF,x                     ; 0x11dfe $9DEE B5 AF                   ;; Various enemy state variables
    LSR                                ; 0x11e00 $9DF0 4A                      ;
    BCS      L9E03                     ; 0x11e01 $9DF1 B0 10                   ;
    LDA      $0504,x                   ; 0x11e03 $9DF3 BD 04 05                ; Timer for Enemy AI
    BNE      L9DFB                     ; 0x11e06 $9DF6 D0 03                   ;
    JSR      L9E0F                     ; 0x11e08 $9DF8 20 0F 9E                ;
L9DFB:                                                                          ;
    LDY      $60,x                     ; 0x11e0b $9DFB B4 60                   ; Enemy facing direction
    LDA      L9C7F,y                   ; 0x11e0d $9DFD B9 7F 9C                ; 08 or F8
    STA      $71,x                     ; 0x11e10 $9E00 95 71                   ; Enemy X Velocity
    RTS                                ; 0x11e12 $9E02 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E03:                                                                          ;
    LDA      #$00                      ; 0x11e13 $9E03 A9 00                   ; A = 00
    STA      $71,x                     ; 0x11e15 $9E05 95 71                   ; Enemy X Velocity
    LDA      $0504,x                   ; 0x11e17 $9E07 BD 04 05                ; Timer for Enemy AI
    BNE      L9E16                     ; 0x11e1a $9E0A D0 0A                   ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x11e1c $9E0C 20 EB E8;
L9E0F:                                                                          ;
    LDA      #$50                      ; 0x11e1f $9E0F A9 50                   ; A = 50 (Ironknuckle waiting time when idle)
    STA      $0504,x                   ; 0x11e21 $9E11 9D 04 05                ; Timer for Enemy AI
    INC      $AF,x                     ; 0x11e24 $9E14 F6 AF                   ;; Various enemy state variables
L9E16:                                                                          ;
    RTS                                ; 0x11e26 $9E16 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E17:                                                                          ;
    LDA      $043E,x                   ; 0x11e27 $9E17 BD 3E 04                ;
    BEQ      L9E2C                     ; 0x11e2a $9E1A F0 10                   ;
    DEC      $043E,x                   ; 0x11e2c $9E1C DE 3E 04                ;
    BPL      L9E27                     ; 0x11e2f $9E1F 10 06                   ;
    INC      $043E,x                   ; 0x11e31 $9E21 FE 3E 04                ;
    INC      $043E,x                   ; 0x11e34 $9E24 FE 3E 04                ;
L9E27:                                                                          ;
    STA      $71,x                     ; 0x11e37 $9E27 95 71                   ; Enemy X Velocity
    JSR      LEA32                     ; 0x11e39 $9E29 20 32 EA                ;
L9E2C:                                                                          ;
    LDA      $A8,x                     ; 0x11e3c $9E2C B5 A8                   ; Enemy State ?
    AND      #$03                      ; 0x11e3e $9E2E 29 03                   ; keep bits .... ..xx
    BNE      L9E16                     ; 0x11e40 $9E30 D0 E4                   ;
L9E34     = * + $0002                                                          ;
    JMP      bank7_Simple_Horizontal_Movement; 0x11e42 $9E32 4C B8 DE              ; Simple Horizontal Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table7:                                                                   ;
.byt    $10,$12,$14                    ; 0x11e45 $9E35 10 12 14                ;
L9E38:                                                                          ;
.byt    $12,$05,$F8,$04,$F8,$FB,$08,$FC; 0x11e48 $9E38 12 05 F8 04 F8 FB 08 FC ;
L9E40:                                                                          ;
.byt    $08,$E0,$E0,$F0,$F0            ; 0x11e50 $9E40 08 E0 E0 F0 F0          ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Iron_Knuckle:                                             ;
    LDA      $0444,x                   ; 0x11e55 $9E45 BD 44 04                ; Enemy Vulnerability
    LDY      #$00                      ; 0x11e58 $9E48 A0 00                   ; Y = 00
    ASL                                ; 0x11e5a $9E4A 0A                      ;
    BNE      L9E4F                     ; 0x11e5b $9E4B D0 02                   ;
    LDY      #$08                      ; 0x11e5d $9E4D A0 08                   ; Y = 08
L9E4F:                                                                          ;
    LDA      $A8,x                     ; 0x11e5f $9E4F B5 A8                   ; Enemy State
    AND      #$04                      ; 0x11e61 $9E51 29 04                   ; keep bits .... .x..
    BEQ      L9E6C                     ; 0x11e63 $9E53 F0 17                   ;
    LDA      $71,x                     ; 0x11e65 $9E55 B5 71                   ; Enemy X Velocity
    BEQ      L9E6C                     ; 0x11e67 $9E57 F0 13                   ;
    BPL      L9E5D                     ; 0x11e69 $9E59 10 02                   ;
    EOR      #$FF                      ; 0x11e6b $9E5B 49 FF                   ; flip all bits
L9E5D:                                                                          ;
    CMP      #$0F                      ; 0x11e6d $9E5D C9 0F                   ;
    LDA      #$08                      ; 0x11e6f $9E5F A9 08                   ; A = 08
    BCC      L9E64                     ; 0x11e71 $9E61 90 01                   ;
    LSR                                ; 0x11e73 $9E63 4A                      ;
L9E64:                                                                          ;
    AND      $12                       ; 0x11e74 $9E64 25 12                   ;; Frame Counter (ascending)
    BNE      L9E6C                     ; 0x11e76 $9E66 D0 04                   ;
    INY                                ; 0x11e78 $9E68 C8                      ;
    INY                                ; 0x11e79 $9E69 C8                      ;
    INY                                ; 0x11e7a $9E6A C8                      ;
    INY                                ; 0x11e7b $9E6B C8                      ;
L9E6C:                                                                          ;
    TYA                                ; 0x11e7c $9E6C 98                      ;
    LDY      $91,x                     ; 0x11e7d $9E6D B4 91                   ;
    TAX                                ; 0x11e7f $9E6F AA                      ;
    JSR      LF1F4                     ; 0x11e80 $9E70 20 F4 F1                ;
    JSR      LF0D7                     ; 0x11e83 $9E73 20 D7 F0                ;
    LDA      $C9                       ; 0x11e86 $9E76 A5 C9                   ;
    BNE      L9E16                     ; 0x11e88 $9E78 D0 9C                   ;
    LDA      $81,x                     ; 0x11e8a $9E7A B5 81                   ; Current Animation Frame for Enemy
    BEQ      L9E16                     ; 0x11e8c $9E7C F0 98                   ;
    STA      $06                       ; 0x11e8e $9E7E 85 06                   ;
    TAX                                ; 0x11e90 $9E80 AA                      ;
    LDA      L0000                     ; 0x11e91 $9E81 A5 00                   ;
    ADC      L9E40,x                   ; 0x11e93 $9E83 7D 40 9E                ;
    STA      L0000                     ; 0x11e96 $9E86 85 00                   ;
    LDA      $02                       ; 0x11e98 $9E88 A5 02                   ;
    LSR                                ; 0x11e9a $9E8A 4A                      ;
    BCC      L9E91                     ; 0x11e9b $9E8B 90 04                   ;
    INX                                ; 0x11e9d $9E8D E8                      ;
    INX                                ; 0x11e9e $9E8E E8                      ;
    INX                                ; 0x11e9f $9E8F E8                      ;
    INX                                ; 0x11ea0 $9E90 E8                      ;
L9E91:                                                                          ;
    LDA      L9E38,x                   ; 0x11ea1 $9E91 BD 38 9E                ;
    LDX      $10                       ; 0x11ea4 $9E94 A6 10                   ;; used as monster x register ;draw boss hp bar
    STY      $07                       ; 0x11ea6 $9E96 84 07                   ;
    LDY      $0504,x                   ; 0x11ea8 $9E98 BC 04 05                ; Timer for Enemy AI
    CPY      #$03                      ; 0x11eab $9E9B C0 03                   ;
    BCC      L9EA4                     ; 0x11ead $9E9D 90 05                   ;
    CPY      #$0D                      ; 0x11eaf $9E9F C0 0D                   ;
    BCS      L9EA4                     ; 0x11eb1 $9EA1 B0 01                   ;
    ASL                                ; 0x11eb3 $9EA3 0A                      ;
L9EA4:                                                                          ;
    ADC      $01                       ; 0x11eb4 $9EA4 65 01                   ;
    STA      $01                       ; 0x11eb6 $9EA6 85 01                   ;
    LDY      $07                       ; 0x11eb8 $9EA8 A4 07                   ;
    LDX      $06                       ; 0x11eba $9EAA A6 06                   ;
    CPX      #$04                      ; 0x11ebc $9EAC E0 04                   ;
    BNE      L9EB6                     ; 0x11ebe $9EAE D0 06                   ;
    LDA      $03                       ; 0x11ec0 $9EB0 A5 03                   ;
    ORA      #$80                      ; 0x11ec2 $9EB2 09 80                   ; set  bits x... ....
    STA      $03                       ; 0x11ec4 $9EB4 85 03                   ;
L9EB6:                                                                          ;
    LDA      L9E34,x                   ; 0x11ec6 $9EB6 BD 34 9E                ;
    TAX                                ; 0x11ec9 $9EB9 AA                      ;
L9EBA:                                                                          ;
bank4_table8 = * + $0002                                                   ;
    JMP      LF0D7                     ; 0x11eca $9EBA 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
.byt    $0C,$F4,$14,$EC                ; 0x11ecd $9EBD 0C F4 14 EC             ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Tinsuit_Generator:                                         ;
    JSR      bank4_Enemy_Routines_Mau_Generator; 0x11ed1 $9EC1 20 61 B8            ;
    BCS      L9EDF                     ; 0x11ed4 $9EC4 B0 19                   ;
    LDX      L0000                     ; 0x11ed6 $9EC6 A6 00                   ;
    LDA      #$B0                      ; 0x11ed8 $9EC8 A9 B0                   ; A = B0
    STA      $2A,x                     ; 0x11eda $9ECA 95 2A                   ; Enemy Y Position
    LDA      #$0C                      ; 0x11edc $9ECC A9 0C                   ; A = 0C
    STA      $A1,x                     ; 0x11ede $9ECE 95 A1                   ; 0C = Tinsuit
    LDA      $051B,x                   ; 0x11ee0 $9ED0 BD 1B 05                ;; Randomizer
    AND      #$02                      ; 0x11ee3 $9ED3 29 02                   ; keep bits .... ..x.
    ADC      $60,x                     ; 0x11ee5 $9ED5 75 60                   ;; Enemy facing direction
    TAY                                ; 0x11ee7 $9ED7 A8                      ;
    LDA      bank4_table8,y            ; 0x11ee8 $9ED8 B9 BC 9E                ;
    STA      $71,x                     ; 0x11eeb $9EDB 95 71                   ;; Enemy X Velocity
    LDX      $10                       ; 0x11eed $9EDD A6 10                   ;; used as monster x register ;draw boss hp bar
L9EDF:                                                                          ;
    RTS                                ; 0x11eef $9EDF 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_UNUSED_9EE0:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11ef0 $9EE0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11ef8 $9EE8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f00 $9EF0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f08 $9EF8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f10 $9F00 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f18 $9F08 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f20 $9F10 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f28 $9F18 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f30 $9F20 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f38 $9F28 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f40 $9F30 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f48 $9F38 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f50 $9F40 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f58 $9F48 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f60 $9F50 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f68 $9F58 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f70 $9F60 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f78 $9F68 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f80 $9F70 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f88 $9F78 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f90 $9F80 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11f98 $9F88 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fa0 $9F90 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fa8 $9F98 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fb0 $9FA0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fb8 $9FA8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fc0 $9FB0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fc8 $9FB8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fd0 $9FC0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fd8 $9FC8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fe0 $9FD0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11fe8 $9FD8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11ff0 $9FE0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x11ff8 $9FE8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12000 $9FF0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12008 $9FF8 FF FF FF FF FF FF FF FF ;
; ---------------------------------------------------------------------------- ;
bank4_Area_Pointers_Palaces_Type_B_:                                            ;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x12010 $A000 E5 82      ;
.word    LA1BA                         ; 0x12012 $A002 BA A1                   ;
.word    LA114                         ; 0x12014 $A004 14 A1                   ;
.word    LA326                         ; 0x12016 $A006 26 A3                   ;
.word    LA114                         ; 0x12018 $A008 14 A1                   ;
.word    LA393                         ; 0x1201a $A00A 93 A3                   ;
.word    LA4F8                         ; 0x1201c $A00C F8 A4                   ;
.word    LA17B                         ; 0x1201e $A00E 7B A1                   ;
.word    LA142                         ; 0x12020 $A010 42 A1                   ;
.word    LA163                         ; 0x12022 $A012 63 A1                   ;
.word    LA35C                         ; 0x12024 $A014 5C A3                   ;
.word    LA513                         ; 0x12026 $A016 13 A5                   ;
.word    LA1BA                         ; 0x12028 $A018 BA A1                   ;
.word    LA3C6                         ; 0x1202a $A01A C6 A3                   ;
.word    bank4_Area_Data_for_Palaces_Type_A_Boss_Room_and_Crystal_Statue; 0x1202c $A01C 1B 83;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x1202e $A01E E5 82      ;
.word    LA17B                         ; 0x12030 $A020 7B A1                   ;
.word    LA142                         ; 0x12032 $A022 42 A1                   ;
.word    LA529                         ; 0x12034 $A024 29 A5                   ;
.word    LA4CB                         ; 0x12036 $A026 CB A4                   ;
.word    LA47B                         ; 0x12038 $A028 7B A4                   ;
.word    LA529                         ; 0x1203a $A02A 29 A5                   ;
.word    bank4_Area_Data_Palaces_Type_B2; 0x1203c $A02C 40 A4                  ;
.word    LA463                         ; 0x1203e $A02E 63 A4                   ;
.word    LA497                         ; 0x12040 $A030 97 A4                   ;
.word    bank4_Area_Data_Palaces_Type_B2; 0x12042 $A032 40 A4                  ;
.word    LA1BA                         ; 0x12044 $A034 BA A1                   ;
.word    LA326                         ; 0x12046 $A036 26 A3                   ;
.word    bank4_Area_Data_for_Palaces_Type_A_Boss_Room_and_Crystal_Statue; 0x12048 $A038 1B 83;
.word    LA30A                         ; 0x1204a $A03A 0A A3                   ;
.word    bank4_Area_Data_Palaces_Type_B1; 0x1204c $A03C F4 A2                  ;
.word    LA51E                         ; 0x1204e $A03E 1E A5                   ;
.word    LA17B                         ; 0x12050 $A040 7B A1                   ;
.word    LA163                         ; 0x12052 $A042 63 A1                   ;
.word    LA4AB                         ; 0x12054 $A044 AB A4                   ;
.word    bank4_Area_Data_Palaces_Type_B2; 0x12056 $A046 40 A4                  ;
.word    bank4_Area_Data_for_Palaces_Type_A_Entrance; 0x12058 $A048 E5 82      ;
.word    LA17B                         ; 0x1205a $A04A 7B A1                   ;
.word    LA658                         ; 0x1205c $A04C 58 A6                   ;
.word    LA1BA                         ; 0x1205e $A04E BA A1                   ;
.word    LA6DA                         ; 0x12060 $A050 DA A6                   ;
.word    LA1A1                         ; 0x12062 $A052 A1 A1                   ;
.word    LA393                         ; 0x12064 $A054 93 A3                   ;
.word    bank4_Area_Data_Palaces_Type_B3; 0x12066 $A056 40 A6                  ;
.word    LA75A                         ; 0x12068 $A058 5A A7                   ;
.word    LA729                         ; 0x1206a $A05A 29 A7                   ;
.word    LA1BA                         ; 0x1206c $A05C BA A1                   ;
.word    LA6BF                         ; 0x1206e $A05E BF A6                   ;
.word    bank4_Area_Data_Palaces_Type_B1; 0x12070 $A060 F4 A2                  ;
.word    LA35C                         ; 0x12072 $A062 5C A3                   ;
.word    LA326                         ; 0x12074 $A064 26 A3                   ;
.word    LA713                         ; 0x12076 $A066 13 A7                   ;
.word    LA142                         ; 0x12078 $A068 42 A1                   ;
.word    LA346                         ; 0x1207a $A06A 46 A3                   ;
.word    LA6FE                         ; 0x1207c $A06C FE A6                   ;
.word    LA729                         ; 0x1207e $A06E 29 A7                   ;
.word    LA30A                         ; 0x12080 $A070 0A A3                   ;
.word    LA67D                         ; 0x12082 $A072 7D A6                   ;
.word    LA695                         ; 0x12084 $A074 95 A6                   ;
.word    LA17B                         ; 0x12086 $A076 7B A1                   ;
.word    LA163                         ; 0x12088 $A078 63 A1                   ;
.word    LA326                         ; 0x1208a $A07A 26 A3                   ;
.word    LA740                         ; 0x1208c $A07C 40 A7                   ;
bank4_Enemy_Pointers_Palaces_Type_B:                                            ;
.word    L71F9                         ; 0x1208e $A07E F9 71                   ;
.word    L720E                         ; 0x12090 $A080 0E 72                   ;
.word    L7215                         ; 0x12092 $A082 15 72                   ;
.word    L7222                         ; 0x12094 $A084 22 72                   ;
.word    L7227                         ; 0x12096 $A086 27 72                   ;
.word    L7230                         ; 0x12098 $A088 30 72                   ;
.word    L723B                         ; 0x1209a $A08A 3B 72                   ;
.word    L7240                         ; 0x1209c $A08C 40 72                   ;
.word    L7247                         ; 0x1209e $A08E 47 72                   ;
.word    L7250                         ; 0x120a0 $A090 50 72                   ;
.word    L725D                         ; 0x120a2 $A092 5D 72                   ;
.word    L7266                         ; 0x120a4 $A094 66 72                   ;
.word    L726B                         ; 0x120a6 $A096 6B 72                   ;
.word    L7270                         ; 0x120a8 $A098 70 72                   ;
.word    L7277                         ; 0x120aa $A09A 77 72                   ;
.word    L727C                         ; 0x120ac $A09C 7C 72                   ;
.word    L7281                         ; 0x120ae $A09E 81 72                   ;
.word    L7286                         ; 0x120b0 $A0A0 86 72                   ;
.word    L7291                         ; 0x120b2 $A0A2 91 72                   ;
.word    L7296                         ; 0x120b4 $A0A4 96 72                   ;
.word    L729B                         ; 0x120b6 $A0A6 9B 72                   ;
.word    L72A2                         ; 0x120b8 $A0A8 A2 72                   ;
.word    L71FC                         ; 0x120ba $A0AA FC 71                   ;
.word    L72AB                         ; 0x120bc $A0AC AB 72                   ;
.word    L72AE                         ; 0x120be $A0AE AE 72                   ;
.word    L72B3                         ; 0x120c0 $A0B0 B3 72                   ;
.word    L72BE                         ; 0x120c2 $A0B2 BE 72                   ;
.word    L72C3                         ; 0x120c4 $A0B4 C3 72                   ;
.word    L72C8                         ; 0x120c6 $A0B6 C8 72                   ;
.word    L7209                         ; 0x120c8 $A0B8 09 72                   ;
.word    L72CD                         ; 0x120ca $A0BA CD 72                   ;
.word    L72D6                         ; 0x120cc $A0BC D6 72                   ;
.word    L72DD                         ; 0x120ce $A0BE DD 72                   ;
.word    L72E4                         ; 0x120d0 $A0C0 E4 72                   ;
.word    L72EF                         ; 0x120d2 $A0C2 EF 72                   ;
.word    L72F8                         ; 0x120d4 $A0C4 F8 72                   ;
.word    L7305                         ; 0x120d6 $A0C6 05 73                   ;
.word    L7308                         ; 0x120d8 $A0C8 08 73                   ;
.word    L7313                         ; 0x120da $A0CA 13 73                   ;
.word    L731C                         ; 0x120dc $A0CC 1C 73                   ;
.word    L7323                         ; 0x120de $A0CE 23 73                   ;
.word    L732A                         ; 0x120e0 $A0D0 2A 73                   ;
.word    L7339                         ; 0x120e2 $A0D2 39 73                   ;
.word    L7342                         ; 0x120e4 $A0D4 42 73                   ;
.word    L734B                         ; 0x120e6 $A0D6 4B 73                   ;
.word    L734E                         ; 0x120e8 $A0D8 4E 73                   ;
.word    L7353                         ; 0x120ea $A0DA 53 73                   ;
.word    L735E                         ; 0x120ec $A0DC 5E 73                   ;
.word    L7367                         ; 0x120ee $A0DE 67 73                   ;
.word    L736A                         ; 0x120f0 $A0E0 6A 73                   ;
.word    L7377                         ; 0x120f2 $A0E2 77 73                   ;
.word    L737E                         ; 0x120f4 $A0E4 7E 73                   ;
.word    L7389                         ; 0x120f6 $A0E6 89 73                   ;
.word    L7392                         ; 0x120f8 $A0E8 92 73                   ;
.word    L7395                         ; 0x120fa $A0EA 95 73                   ;
.word    L739C                         ; 0x120fc $A0EC 9C 73                   ;
.word    L7209                         ; 0x120fe $A0EE 09 72                   ;
.word    L73A1                         ; 0x12100 $A0F0 A1 73                   ;
.word    L73A4                         ; 0x12102 $A0F2 A4 73                   ;
.word    L73A9                         ; 0x12104 $A0F4 A9 73                   ;
.word    L73B2                         ; 0x12106 $A0F6 B2 73                   ;
.word    L73BF                         ; 0x12108 $A0F8 BF 73                   ;
.word    L73C6                         ; 0x1210a $A0FA C6 73                   ;
; ---------------------------------------------------------------------------- ;
bank4_Area_Data_Palaces_Type_B0:                                                ;
.byt    $18,$60,$0E,$10,$E1,$00,$D0,$00; 0x1210c $A0FC 18 60 0E 10 E1 00 D0 00 ;
.byt    $5F,$09,$70,$20,$D1,$0E,$E3,$00; 0x12114 $A104 5F 09 70 20 D1 0E E3 00 ;
.byt    $D0,$00,$A2,$45,$81,$C1,$D7,$0F; 0x1211c $A10C D0 00 A2 45 81 C1 D7 0F ;
LA114:                                                                          ;
.byt    $2E,$60,$00,$10,$80,$9D,$A0,$3D; 0x12124 $A114 2E 60 00 10 80 9D A0 3D ;
.byt    $37,$00,$87,$73,$A0,$23,$11,$C6; 0x1212c $A11C 37 00 87 73 A0 23 11 C6 ;
.byt    $83,$9F,$A0,$3F,$36,$00,$A0,$0F; 0x12134 $A124 83 9F A0 3F 36 00 A0 0F ;
.byt    $08,$8A,$9B,$A0,$3B,$A4,$0F,$0B; 0x1213c $A12C 08 8A 9B A0 3B A4 0F 0B ;
.byt    $31,$00,$87,$73,$A0,$73,$11,$C6; 0x12144 $A134 31 00 87 73 A0 73 11 C6 ;
.byt    $83,$9D,$A0,$3D,$36,$00        ; 0x1214c $A13C 83 9D A0 3D 36 00       ;
LA142:                                                                          ;
.byt    $21,$60,$0E,$10,$D8,$08,$5C,$09; 0x12152 $A142 21 60 0E 10 D8 08 5C 09 ;
.byt    $70,$C3,$DF,$0E,$A2,$25,$82,$F1; 0x1215a $A14A 70 C3 DF 0E A2 25 82 F1 ;
.byt    $F0,$50,$85,$05,$D1,$08,$70,$25; 0x12162 $A152 F0 50 85 05 D1 08 70 25 ;
.byt    $76,$35,$76,$25,$64,$0F,$08,$D2; 0x1216a $A15A 76 35 76 25 64 0F 08 D2 ;
.byt    $0E                            ; 0x12172 $A162 0E                      ;
LA163:                                                                          ;
.byt    $18,$60,$00,$10,$DD,$0E,$DC,$00; 0x12173 $A163 18 60 00 10 DD 0E DC 00 ;
.byt    $6A,$02,$D1,$0E,$03,$F1,$B0,$71; 0x1217b $A16B 6A 02 D1 0E 03 F1 B0 71 ;
.byt    $F0,$50,$84,$05,$D1,$00,$60,$01; 0x12183 $A173 F0 50 84 05 D1 00 60 01 ;
LA17B:                                                                          ;
.byt    $26,$60,$0F,$10,$D2,$00,$96,$99; 0x1218b $A17B 26 60 0F 10 D2 00 96 99 ;
.byt    $72,$9F,$52,$9F,$A6,$0F,$08,$92; 0x12193 $A183 72 9F 52 9F A6 0F 08 92 ;
.byt    $95,$76,$9F,$52,$9F,$90,$97,$A9; 0x1219b $A18B 95 76 9F 52 9F 90 97 A9 ;
.byt    $0F,$0C,$91,$95,$74,$9B        ; 0x121a3 $A193 0F 0C 91 95 74 9B       ;
LA199:                                                                          ;
.byt    $52,$97,$92                    ; 0x121a9 $A199 52 97 92                ;
LA19C:                                                                          ;
.byt    $99,$E3,$00,$DE,$0E            ; 0x121ac $A19C 99 E3 00 DE 0E          ;
LA1A1:                                                                          ;
.byt    $19,$60,$0E,$10,$E1,$00,$D0,$08; 0x121b1 $A1A1 19 60 0E 10 E1 00 D0 08 ;
.byt    $60,$01,$A8,$0F,$08,$67,$02,$D1; 0x121b9 $A1A9 60 01 A8 0F 08 67 02 D1 ;
.byt    $0E,$D6,$08,$60,$01,$6F,$02,$D1; 0x121c1 $A1B1 0E D6 08 60 01 6F 02 D1 ;
.byt    $0E                            ; 0x121c9 $A1B9 0E                      ;
LA1BA:                                                                          ;
.byt    $29,$60,$0F,$10,$D2,$0E,$05,$F1; 0x121ca $A1BA 29 60 0F 10 D2 0E 05 F1 ;
.byt    $B0,$71,$F0,$50,$84,$05,$D1,$00; 0x121d2 $A1C2 B0 71 F0 50 84 05 D1 00 ;
.byt    $74,$35,$83,$C2,$45,$35,$53,$C5; 0x121da $A1CA 74 35 83 C2 45 35 53 C5 ;
.byt    $75,$35,$83,$C2,$45,$35,$53,$C5; 0x121e2 $A1D2 75 35 83 C2 45 35 53 C5 ;
.byt    $32,$0F,$0B,$73,$35,$83,$C2,$D9; 0x121ea $A1DA 32 0F 0B 73 35 83 C2 D9 ;
.byt    $0E                            ; 0x121f2 $A1E2 0E                      ;
bank4_UNUSED_A1E3:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x121f3 $A1E3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x121fb $A1EB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0x12203 $A1F3 FF FF FF FF FF          ;
bank4_Room_Connectivity_Data_for_Palaces_Type_B:                                ;
.byt    $FC,$04,$00,$FC,$FC,$00,$02,$08; 0x12208 $A1F8 FC 04 00 FC FC 00 02 08 ;
.byt    $07,$00,$00,$0C,$0B,$00,$00,$10; 0x12210 $A200 07 00 00 0C 0B 00 00 10 ;
.byt    $0F,$00,$00,$14,$13,$26,$00,$18; 0x12218 $A208 0F 00 00 14 13 26 00 18 ;
.byt    $17,$00,$00,$FC,$FC,$00,$00,$20; 0x12220 $A210 17 00 00 FC FC 00 00 20 ;
.byt    $1F,$30,$00,$24,$23,$00,$16,$28; 0x12228 $A218 1F 30 00 24 23 00 16 28 ;
.byt    $27,$00,$00,$2C,$2B,$00,$00,$FC; 0x12230 $A220 27 00 00 2C 2B 00 00 FC ;
.byt    $FC,$00,$22,$34,$33,$00,$00,$38; 0x12238 $A228 FC 00 22 34 33 00 00 38 ;
.byt    $37,$00,$00,$FC,$FC,$4A,$00,$FC; 0x12240 $A230 37 00 00 FC FC 4A 00 FC ;
.byt    $FC,$00,$00,$44,$43,$56,$00,$48; 0x12248 $A238 FC 00 00 44 43 56 00 48 ;
.byt    $47,$00,$3E,$4C,$4B,$5E,$00,$FC; 0x12250 $A240 47 00 3E 4C 4B 5E 00 FC ;
.byt    $FC,$68,$00,$54,$53,$00,$46,$58; 0x12258 $A248 FC 68 00 54 53 00 46 58 ;
.byt    $57,$00,$00,$FC,$FC,$76        ; 0x12260 $A250 57 00 00 FC FC 76       ;
LA256:                                                                          ;
.byt    $4F,$60,$5F,$79,$00,$64,$63,$00; 0x12266 $A256 4F 60 5F 79 00 64 63 00 ;
.byt    $00,$FC,$FC,$00,$50,$6C,$6B,$00; 0x1226e $A25E 00 FC FC 00 50 6C 6B 00 ;
.byt    $00,$70,$6F,$00,$00,$FC,$FC,$86; 0x12276 $A266 00 70 6F 00 00 FC FC 86 ;
.byt    $5E,$FC,$FC,$89,$00,$7C,$7B,$00; 0x1227e $A26E 5E FC FC 89 00 7C 7B 00 ;
.byt    $00,$FC,$FC,$00,$00,$84,$83,$00; 0x12286 $A276 00 FC FC 00 00 84 83 00 ;
.byt    $76,$88,$87,$00,$00,$8C,$8B,$00; 0x1228e $A27E 76 88 87 00 00 8C 8B 00 ;
.byt    $00,$FC,$FC,$9A,$00,$FC,$FC,$00; 0x12296 $A286 00 FC FC 9A 00 FC FC 00 ;
.byt    $00,$98,$97,$9C,$92,$FC,$FC,$00; 0x1229e $A28E 00 98 97 9C 92 FC FC 00 ;
.byt    $9A,$A0,$9F,$B5,$00,$A4,$A3,$00; 0x122a6 $A296 9A A0 9F B5 00 A4 A3 00 ;
.byt    $00,$A8,$A7,$B8,$00,$AC,$AB,$00; 0x122ae $A29E 00 A8 A7 B8 00 AC AB 00 ;
.byt    $BE,$B0,$AF,$00,$00,$FC,$FC,$C1; 0x122b6 $A2A6 BE B0 AF 00 00 FC FC C1 ;
.byt    $00,$FC,$FC,$00,$AA,$BC,$BB,$00; 0x122be $A2AE 00 FC FC 00 AA BC BB 00 ;
.byt    $00,$FC,$FC,$DD,$00,$C4,$C3,$00; 0x122c6 $A2B6 00 FC FC DD 00 C4 C3 00 ;
.byt    $00,$C8,$C7,$00,$00,$CC,$CB,$00; 0x122ce $A2BE 00 C8 C7 00 00 CC CB 00 ;
.byt    $00,$D0,$CF,$E2,$00,$D4,$D3,$00; 0x122d6 $A2C6 00 D0 CF E2 00 D4 D3 00 ;
.byt    $00,$D8,$D7,$E5,$00,$FC,$FC,$A1; 0x122de $A2CE 00 D8 D7 E5 00 FC FC A1 ;
.byt    $00,$FC,$FC,$F2,$D2,$FC,$FC,$F9; 0x122e6 $A2D6 00 FC FC F2 D2 FC FC F9 ;
.byt    $00,$E8,$E7,$00,$00,$FC,$FC,$00; 0x122ee $A2DE 00 E8 E7 00 00 FC FC 00 ;
.byt    $00,$F0,$EF,$00,$E2,$F4,$F3,$00; 0x122f6 $A2E6 00 F0 EF 00 E2 F4 F3 00 ;
.byt    $00,$F8,$F7,$00,$00,$FC        ; 0x122fe $A2EE 00 F8 F7 00 00 FC       ;
bank4_Area_Data_Palaces_Type_B1:                                                ;
.byt    $16,$60,$0F,$10,$E1,$00,$D0,$80; 0x12304 $A2F4 16 60 0F 10 E1 00 D0 80 ;
.byt    $B2,$FB,$62,$55,$93,$54,$D7,$0B; 0x1230c $A2FC B2 FB 62 55 93 54 D7 0B ;
.byt    $DA,$0E,$81,$05,$D3,$0B        ; 0x12314 $A304 DA 0E 81 05 D3 0B       ;
LA30A:                                                                          ;
.byt    $1C,$60,$00,$10,$F0            ; 0x1231a $A30A 1C 60 00 10 F0          ;
LA30F:                                                                          ;
.byt    $1F,$E1,$00,$F0,$1F,$E2        ; 0x1231f $A30F 1F E1 00 F0 1F E2       ;
LA315:                                                                          ;
.byt    $00,$F0,$14,$D5,$0F,$02,$F1,$F0; 0x12325 $A315 00 F0 14 D5 0F 02 F1 F0 ;
.byt    $50,$D4,$00,$F0,$1F,$E3,$00,$FB; 0x1232d $A31D 50 D4 00 F0 1F E3 00 FB ;
.byt    $14                            ; 0x12335 $A325 14                      ;
LA326:                                                                          ;
.byt    $20,$60,$0E                    ; 0x12336 $A326 20 60 0E                ;
LA329:                                                                          ;
.byt    $90,$D6,$80,$44,$73,$60,$73,$48; 0x12339 $A329 90 D6 80 44 73 60 73 48 ;
.byt    $73,$60,$73                    ; 0x12341 $A331 73 60 73                ;
LA334:                                                                          ;
.byt    $48,$73,$60,$73                ; 0x12344 $A334 48 73 60 73             ;
LA338:                                                                          ;
.byt    $48,$73,$60,$73,$48,$73,$60,$73; 0x12348 $A338 48 73 60 73 48 73 60 73 ;
.byt    $48,$73,$60,$73,$D8,$0E        ; 0x12350 $A340 48 73 60 73 D8 0E       ;
LA346:                                                                          ;
.byt    $16,$60,$0E,$10,$E1,$00,$D0,$08; 0x12356 $A346 16 60 0E 10 E1 00 D0 08 ;
.byt    $60,$01,$6F,$02,$D1,$0E,$D6,$08; 0x1235e $A34E 60 01 6F 02 D1 0E D6 08 ;
.byt    $60,$01,$6F,$02,$D1,$0E        ; 0x12366 $A356 60 01 6F 02 D1 0E       ;
LA35C:                                                                          ;
.byt    $37,$60,$03,$10,$16,$B6,$D2,$00; 0x1236c $A35C 37 60 03 10 16 B6 D2 00 ;
.byt    $F0,$11,$D2,$03,$D6,$00,$F0,$12; 0x12374 $A364 F0 11 D2 03 D6 00 F0 12 ;
.byt    $D3,$03,$D3,$00,$F0,$11,$D2,$03; 0x1237c $A36C D3 03 D3 00 F0 11 D2 03 ;
.byt    $70,$20,$60,$0F,$08,$DA,$00,$F0; 0x12384 $A374 70 20 60 0F 08 DA 00 F0 ;
.byt    $12,$D3,$03,$D4,$00,$F0,$12,$D3; 0x1238c $A37C 12 D3 03 D4 00 F0 12 D3 ;
.byt    $03,$D4,$00,$F0,$11,$D2,$03,$D3; 0x12394 $A384 03 D4 00 F0 11 D2 03 D3 ;
.byt    $00,$F0,$12,$D3,$03,$11,$B6    ; 0x1239c $A38C 00 F0 12 D3 03 11 B6    ;
LA393:                                                                          ;
.byt    $33,$60,$80,$10,$88,$B2,$81,$3F; 0x123a3 $A393 33 60 80 10 88 B2 81 3F ;
.byt    $57,$B5,$51,$3F,$A6,$0F,$0B,$21; 0x123ab $A39B 57 B5 51 3F A6 0F 0B 21 ;
.byt    $B2,$80,$B2,$21,$3A,$80,$36,$D7; 0x123b3 $A3A3 B2 80 B2 21 3A 80 36 D7 ;
.byt    $83,$51,$30,$D1,$86,$D2,$87,$20; 0x123bb $A3AB 83 51 30 D1 86 D2 87 20 ;
.byt    $71,$83,$F1,$F0,$50,$D2,$80,$60; 0x123c3 $A3B3 71 83 F1 F0 50 D2 80 60 ;
.byt    $28,$A0,$21,$DC,$82,$D1,$85,$12; 0x123cb $A3BB 28 A0 21 DC 82 D1 85 12 ;
.byt    $09,$30,$C2                    ; 0x123d3 $A3C3 09 30 C2                ;
LA3C6:                                                                          ;
.byt    $35,$60,$03,$10,$D6,$00,$82,$2F; 0x123d6 $A3C6 35 60 03 10 D6 00 82 2F ;
.byt    $91,$91,$5F,$2A,$80,$22,$61,$71; 0x123de $A3CE 91 91 5F 2A 80 22 61 71 ;
.byt    $90,$91,$82,$31,$82,$2A,$D5,$09; 0x123e6 $A3D6 90 91 82 31 82 2A D5 09 ;
.byt    $31,$91,$50,$91,$60,$91,$90,$91; 0x123ee $A3DE 31 91 50 91 60 91 90 91 ;
.byt    $52,$2E,$83,$2F,$35,$91,$60,$91; 0x123f6 $A3E6 52 2E 83 2F 35 91 60 91 ;
.byt    $90,$91,$D7,$0C,$84,$27,$A3,$0F; 0x123fe $A3EE 90 91 D7 0C 84 27 A3 0F ;
.byt    $0B,$D1,$0B,$90,$73            ; 0x12406 $A3F6 0B D1 0B 90 73          ;
bank4_UNUSED_A3FB:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1240b $A3FB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12413 $A403 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1241b $A40B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12423 $A413 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1242b $A41B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12433 $A423 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1243b $A42B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12443 $A433 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0x1244b $A43B FF FF FF FF FF          ;
bank4_Area_Data_Palaces_Type_B2:                                                ;
.byt    $23,$60,$83,$10,$D8,$80,$F0,$1F; 0x12450 $A440 23 60 83 10 D8 80 F0 1F ;
.byt    $62,$2C,$46,$B1,$F8,$1F,$62,$2C; 0x12458 $A448 62 2C 46 B1 F8 1F 62 2C ;
.byt    $46,$B1,$F8,$1F,$62,$2C,$46,$B1; 0x12460 $A450 46 B1 F8 1F 62 2C 46 B1 ;
.byt    $F8,$11,$D2,$85,$41,$09,$52,$0F; 0x12468 $A458 F8 11 D2 85 41 09 52 0F ;
.byt    $08,$D1,$0F                    ; 0x12470 $A460 08 D1 0F                ;
LA463:                                                                          ;
.byt    $18,$60,$0F,$10,$E2,$00,$07,$F1; 0x12473 $A463 18 60 0F 10 E2 00 07 F1 ;
.byt    $F0,$50,$D2,$84,$00,$72,$20,$72; 0x1247b $A46B F0 50 D2 84 00 72 20 72 ;
.byt    $40,$22,$DD,$86,$D2,$87,$30,$27; 0x12483 $A473 40 22 DD 86 D2 87 30 27 ;
LA47B:                                                                          ;
.byt    $1C,$60,$0F,$10,$87,$F1,$F0,$50; 0x1248b $A47B 1C 60 0F 10 87 F1 F0 50 ;
.byt    $D2,$0E,$A0,$2A,$D2,$00,$50,$40; 0x12493 $A483 D2 0E A0 2A D2 00 50 40 ;
.byt    $85,$73,$F4,$1F,$62,$5A,$5D,$5A; 0x1249b $A48B 85 73 F4 1F 62 5A 5D 5A ;
.byt    $F1,$1B,$DC,$07                ; 0x124a3 $A493 F1 1B DC 07             ;
LA497:                                                                          ;
.byt    $14,$60,$87,$10,$30,$2E,$3F,$22; 0x124a7 $A497 14 60 87 10 30 2E 3F 22 ;
.byt    $D3,$80,$40,$55,$B0,$FB,$E2,$00; 0x124af $A49F D3 80 40 55 B0 FB E2 00 ;
.byt    $18,$09,$30,$C7                ; 0x124b7 $A4A7 18 09 30 C7             ;
LA4AB:                                                                          ;
.byt    $20,$60,$0E,$10,$D2,$08,$52,$40; 0x124bb $A4AB 20 60 0E 10 D2 08 52 40 ;
.byt    $55,$40,$D3,$0A,$90,$71,$D2,$80; 0x124c3 $A4B3 55 40 D3 0A 90 71 D2 80 ;
.byt    $80,$5F,$F0,$1F,$E1,$00,$8E,$51; 0x124cb $A4BB 80 5F F0 1F E1 00 8E 51 ;
.byt    $F0,$11,$D2,$80,$90,$71,$D6,$0E; 0x124d3 $A4C3 F0 11 D2 80 90 71 D6 0E ;
LA4CB:                                                                          ;
.byt    $2D,$60,$0E,$10,$D6,$0B,$A2,$26; 0x124db $A4CB 2D 60 0E 10 D6 0B A2 26 ;
.byt    $D7,$08,$D1,$0B,$A0,$26,$D7,$08; 0x124e3 $A4D3 D7 08 D1 0B A0 26 D7 08 ;
.byt    $A0,$0F,$0B,$D1,$0B,$A0,$27,$D8; 0x124eb $A4DB A0 0F 0B D1 0B A0 27 D8 ;
.byt    $08,$D1,$0B,$A0,$26,$D7,$08,$D1; 0x124f3 $A4E3 08 D1 0B A0 26 D7 08 D1 ;
.byt    $0B,$A0,$26,$D9,$0E,$A3,$21,$82; 0x124fb $A4EB 0B A0 26 D9 0E A3 21 82 ;
.byt    $F1,$F0,$50,$D2,$0F            ; 0x12503 $A4F3 F1 F0 50 D2 0F          ;
LA4F8:                                                                          ;
.byt    $1B,$60,$1E,$00,$D6,$80,$34,$07; 0x12508 $A4F8 1B 60 1E 00 D6 80 34 07 ;
.byt    $62,$09,$80,$C2,$14,$08,$45,$08; 0x12510 $A500 62 09 80 C2 14 08 45 08 ;
.byt    $28,$07,$97,$71,$81,$0F,$08,$D3; 0x12518 $A508 28 07 97 71 81 0F 08 D3 ;
.byt    $0F,$B0,$7F                    ; 0x12520 $A510 0F B0 7F                ;
LA513:                                                                          ;
.byt    $0B,$60,$80,$12,$E2,$00,$8D,$05; 0x12523 $A513 0B 60 80 12 E2 00 8D 05 ;
.byt    $99,$0F,$02                    ; 0x1252b $A51B 99 0F 02                ;
LA51E:                                                                          ;
.byt    $0B,$60,$80,$12,$E2,$00,$8D,$05; 0x1252e $A51E 0B 60 80 12 E2 00 8D 05 ;
.byt    $99,$0F,$03                    ; 0x12536 $A526 99 0F 03                ;
LA529:                                                                          ;
.byt    $10,$60,$80,$13,$E1,$00,$82,$05; 0x12539 $A529 10 60 80 13 E1 00 82 05 ;
.byt    $E2,$00,$07,$F1,$B0,$71,$F0,$50; 0x12541 $A531 E2 00 07 F1 B0 71 F0 50 ;
bank4_UNUSED_A539:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12549 $A539 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12551 $A541 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12559 $A549 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12561 $A551 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12569 $A559 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12571 $A561 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12579 $A569 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12581 $A571 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12589 $A579 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12591 $A581 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12599 $A589 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125a1 $A591 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125a9 $A599 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125b1 $A5A1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125b9 $A5A9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125c1 $A5B1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125c9 $A5B9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125d1 $A5C1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125d9 $A5C9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125e1 $A5D1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125e9 $A5D9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125f1 $A5E1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x125f9 $A5E9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12601 $A5F1 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12609 $A5F9 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12611 $A601 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0x12619 $A609 FF FF FF FF FF FF FF    ;
LA610:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12620 $A610 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12628 $A618 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12630 $A620 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12638 $A628 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12640 $A630 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12648 $A638 FF FF FF FF FF FF FF FF ;
bank4_Area_Data_Palaces_Type_B3:                                                ;
.byt    $18,$60,$00,$10,$6F,$09,$80,$C2; 0x12650 $A640 18 60 00 10 6F 09 80 C2 ;
.byt    $6B,$09,$80,$C2,$6B,$09,$80,$C2; 0x12658 $A648 6B 09 80 C2 6B 09 80 C2 ;
.byt    $B3,$A3,$68,$09,$80,$C2,$19,$B9; 0x12660 $A650 B3 A3 68 09 80 C2 19 B9 ;
LA658:                                                                          ;
.byt    $25,$60,$0E,$10,$D2,$09,$83,$75; 0x12668 $A658 25 60 0E 10 D2 09 83 75 ;
.byt    $90,$75,$D9,$0E,$D6,$09,$83,$75; 0x12670 $A660 90 75 D9 0E D6 09 83 75 ;
.byt    $90,$75,$D9,$0E,$A2,$29,$05,$F1; 0x12678 $A668 90 75 D9 0E A2 29 05 F1 ;
.byt    $F0,$50,$D7,$08,$70,$27,$60,$0F; 0x12680 $A670 F0 50 D7 08 70 27 60 0F ;
.byt    $0B,$78,$37,$D8,$0F            ; 0x12688 $A678 0B 78 37 D8 0F          ;
LA67D:                                                                          ;
.byt    $18,$60,$0F,$10,$E1,$00,$D2,$80; 0x1268d $A67D 18 60 0F 10 E1 00 D2 80 ;
.byt    $B0,$FB,$DC,$07,$10,$2E,$1F,$2F; 0x12695 $A685 B0 FB DC 07 10 2E 1F 2F ;
.byt    $D1,$05,$D2,$03,$D2,$00,$1B,$22; 0x1269d $A68D D1 05 D2 03 D2 00 1B 22 ;
LA695:                                                                          ;
.byt    $2A,$60,$0E,$08,$DD,$0C,$A2,$20; 0x126a5 $A695 2A 60 0E 08 DD 0C A2 20 ;
.byt    $D1,$08,$20                    ; 0x126ad $A69D D1 08 20                ;
LA6A0:                                                                          ;
.byt    $8F,$F0,$12,$A3,$22,$F3,$11,$A2; 0x126b0 $A6A0 8F F0 12 A3 22 F3 11 A2 ;
.byt    $22,$F3,$12,$A3,$21,$D2,$0E,$84; 0x126b8 $A6A8 22 F3 12 A3 21 D2 0E 84 ;
.byt    $05,$DC,$08,$A3,$49,$92,$45,$41; 0x126c0 $A6B0 05 DC 08 A3 49 92 45 41 ;
.byt    $03,$D8,$0E,$80,$21,$90,$09    ; 0x126c8 $A6B8 03 D8 0E 80 21 90 09    ;
LA6BF:                                                                          ;
.byt    $1B,$60,$00,$10,$E1,$00,$18,$B9; 0x126cf $A6BF 1B 60 00 10 E1 00 18 B9 ;
.byt    $1B,$B9,$D1,$80,$DA,$00,$10,$B7; 0x126d7 $A6C7 1B B9 D1 80 DA 00 10 B7 ;
.byt    $80,$70,$90                    ; 0x126df $A6CF 80 70 90                ;
LA6D2:                                                                          ;
.byt    $70,$DC,$02,$82,$0F,$0C,$D2,$0F; 0x126e2 $A6D2 70 DC 02 82 0F 0C D2 0F ;
LA6DA:                                                                          ;
.byt    $24,$60,$0E,$10,$D2,$08,$DA,$0E; 0x126ea $A6DA 24 60 0E 10 D2 08 DA 0E ;
.byt    $D6,$80,$B2,$F7,$B2,$71,$48,$09; 0x126f2 $A6E2 D6 80 B2 F7 B2 71 48 09 ;
.byt    $60,$71,$D2,$0E,$87,$05,$D3,$0C; 0x126fa $A6EA 60 71 D2 0E 87 05 D3 0C ;
.byt    $D2,$02,$10,$2F,$20,$71,$D2,$04; 0x12702 $A6F2 D2 02 10 2F 20 71 D2 04 ;
.byt    $D2,$06,$1C,$23                ; 0x1270a $A6FA D2 06 1C 23             ;
LA6FE:                                                                          ;
.byt    $15,$60,$07,$10,$E1,$00,$D6,$00; 0x1270e $A6FE 15 60 07 10 E1 00 D6 00 ;
.byt    $B0,$F3,$71,$51,$D3,$07,$E3,$00; 0x12716 $A706 B0 F3 71 51 D3 07 E3 00 ;
.byt    $3C,$0F,$12,$D2,$0F            ; 0x1271e $A70E 3C 0F 12 D2 0F          ;
LA713:                                                                          ;
.byt    $16,$60,$05,$10,$10,$29,$DA,$08; 0x12723 $A713 16 60 05 10 10 29 DA 08 ;
.byt    $F0,$1F,$1D,$20,$F3,$1F,$1E,$20; 0x1272b $A71B F0 1F 1D 20 F3 1F 1E 20 ;
.byt    $F2,$1B,$DC,$05,$10,$29        ; 0x12733 $A723 F2 1B DC 05 10 29       ;
LA729:                                                                          ;
.byt    $17,$60,$0F,$10,$D2,$00,$A1,$0F; 0x12739 $A729 17 60 0F 10 D2 00 A1 0F ;
.byt    $0C,$D9,$80,$72,$C3,$B6,$F9,$92; 0x12741 $A731 0C D9 80 72 C3 B6 F9 92 ;
.byt    $53,$7B,$C3,$D5,$00,$D8,$0F    ; 0x12749 $A739 53 7B C3 D5 00 D8 0F    ;
LA740:                                                                          ;
.byt    $1A,$60,$0E,$10,$D2,$00,$60,$5F; 0x12750 $A740 1A 60 0E 10 D2 00 60 5F ;
.byt    $DE,$80,$62,$5F,$DE,$00,$62,$5F; 0x12758 $A748 DE 80 62 5F DE 00 62 5F ;
.byt    $E3,$00,$62,$55,$66,$25,$44,$09; 0x12760 $A750 E3 00 62 55 66 25 44 09 ;
.byt    $D2,$0F                        ; 0x12768 $A758 D2 0F                   ;
LA75A:                                                                          ;
.byt    $0B,$60,$80,$12,$E2,$00,$8D,$05; 0x1276a $A75A 0B 60 80 12 E2 00 8D 05 ;
.byt    $99,$0F,$05                    ; 0x12772 $A762 99 0F 05                ;
bank4_UNUSED_A765:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12775 $A765 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1277d $A76D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12785 $A775 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1278d $A77D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12795 $A785 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1279d $A78D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127a5 $A795 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127ad $A79D FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0x127b5 $A7A5 FF FF FF FF FF FF       ;
LA7AB:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127bb $A7AB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127c3 $A7B3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127cb $A7BB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127d3 $A7C3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127db $A7CB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127e3 $A7D3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127eb $A7DB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127f3 $A7E3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x127fb $A7EB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12803 $A7F3 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1280b $A7FB FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12813 $A803 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1281b $A80B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12823 $A813 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1282b $A81B FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0x12833 $A823 FF FF FF FF FF FF FF    ;
LA82A:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1283a $A82A FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF                ; 0x12842 $A832 FF FF FF FF             ;
LA836:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12846 $A836 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1284e $A83E FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12856 $A846 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1285e $A84E FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12866 $A856 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1286e $A85E FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12876 $A866 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1287e $A86E FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12886 $A876 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1288e $A87E FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12896 $A886 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x1289e $A88E FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128a6 $A896 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128ae $A89E FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128b6 $A8A6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128be $A8AE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128c6 $A8B6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128ce $A8BE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128d6 $A8C6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128de $A8CE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128e6 $A8D6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128ee $A8DE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128f6 $A8E6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x128fe $A8EE FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x12906 $A8F6 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF                        ; 0x1290e $A8FE FF FF                   ;
; ---------------------------------------------------------------------------- ;
bank4_pointer_table3:                                                           ;
.word    LAD9E                         ; 0x12910 $A900 9E AD                   ;
.word    LAD9E                         ; 0x12912 $A902 9E AD                   ;
.word    LADA8                         ; 0x12914 $A904 A8 AD                   ;
.word    LAD94                         ; 0x12916 $A906 94 AD                   ;
.word    LADA8                         ; 0x12918 $A908 A8 AD                   ;
.word    LAD0D                         ; 0x1291a $A90A 0D AD                   ;
.word    L98B9                         ; 0x1291c $A90C B9 98                   ;
.word    L98F8                         ; 0x1291e $A90E F8 98                   ;
.word    bank4_Related_to_Helmethead_maybe0; 0x12920 $A910 29 AD               ;
.word    L0000                         ; 0x12922 $A912 00 00                   ;
.word    L0000                         ; 0x12924 $A914 00 00                   ;
.word    LADE0                         ; 0x12926 $A916 E0 AD                   ;
; ---------------------------------------------------------------------------- ;
bank4_table9:                                                                   ;
.byt    $00,$03,$41,$85,$53,$93,$A3,$80; 0x12928 $A918 00 03 41 85 53 93 A3 80 ;
.byt    $C3                            ; 0x12930 $A920 C3                      ;
bank4_Enemy_Hit_Points1:                                                        ;
.byt    $00,$00,$00,$03,$04,$FF,$FA,$10; 0x12931 $A921 00 00 00 03 04 FF FA 10 ;
.byt    $00,$00,$08,$02,$02,$02,$FA,$38; 0x12939 $A929 00 00 08 02 02 02 FA 38 ;
.byt    $08,$0C,$0C,$00,$00,$00,$00,$00; 0x12941 $A931 08 0C 0C 00 00 00 00 00 ;
.byt    $10,$18,$38,$02,$02,$01,$20,$18; 0x12949 $A939 10 18 38 02 02 01 20 18 ;
.byt    $48,$C0,$10,$20                ; 0x12951 $A941 48 C0 10 20             ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_pointers:                                             ;
.word    bank4_code_rts2               ; 0x12955 $A945 AD AA                   ;
.word    bank4_code_rts2               ; 0x12957 $A947 AD AA                   ;
.word    bank4_code_rts2               ; 0x12959 $A949 AD AA                   ;
.word    bank4_code_rts2               ; 0x1295b $A94B AD AA                   ;
.word    bank4_code_rts2               ; 0x1295d $A94D AD AA                   ;
.word    bank4_code_rts2               ; 0x1295f $A94F AD AA                   ;
.word    LAF55                         ; 0x12961 $A951 55 AF                   ;
.word    bank4_code_rts2               ; 0x12963 $A953 AD AA                   ;
.word    bank4_code_rts2               ; 0x12965 $A955 AD AA                   ;
.word    bank4_code_rts2               ; 0x12967 $A957 AD AA                   ;
.word    bank4_code_rts2               ; 0x12969 $A959 AD AA                   ;
.word    bank4_Enemy_Init_Routines_Generator; 0x1296b $A95B 28 9A              ;
.word    LB33C                         ; 0x1296d $A95D 3C B3                   ;
.word    bank4_code_rts2               ; 0x1296f $A95F AD AA                   ;
.word    LAF59                         ; 0x12971 $A961 59 AF                   ;
.word    LACAD                         ; 0x12973 $A963 AD AC                   ;
.word    LB47D                         ; 0x12975 $A965 7D B4                   ;
.word    bank4_code_rts2               ; 0x12977 $A967 AD AA                   ;
.word    bank4_code_rts2               ; 0x12979 $A969 AD AA                   ;
.word    bank4_code_rts2               ; 0x1297b $A96B AD AA                   ;
.word    bank4_Enemy_Init_Routines_Crystal_Slot_and_Crystal; 0x1297d $A96D 73 9A;
.word    bank4_Enemy_Init_Routines_Crystal_Slot_and_Crystal; 0x1297f $A96F 73 9A;
.word    bank4_Enemy_Init_Routines_Energy_Ball_Shooter__Left_Right; 0x12981 $A971 FC B8;
.word    bank4_Enemy_Init_Routines_Energy_Ball_Shooter__Left_Right; 0x12983 $A973 FC B8;
.word    bank4_code_rts2               ; 0x12985 $A975 AD AA                   ;
.word    bank4_code_rts2               ; 0x12987 $A977 AD AA                   ;
.word    bank4_code_rts2               ; 0x12989 $A979 AD AA                   ;
.word    bank4_Enemy_Init_Routines_Generator; 0x1298b $A97B 28 9A              ;
.word    bank4_code_rts2               ; 0x1298d $A97D AD AA                   ;
.word    bank4_code_rts2               ; 0x1298f $A97F AD AA                   ;
.word    bank4_code_rts2               ; 0x12991 $A981 AD AA                   ;
.word    bank4_code_rts2               ; 0x12993 $A983 AD AA                   ;
.word    LAF91                         ; 0x12995 $A985 91 AF                   ;
.word    LB0FE                         ; 0x12997 $A987 FE B0                   ;
.word    LB107                         ; 0x12999 $A989 07 B1                   ;
.word    bank4_code_rts2               ; 0x1299b $A98B AD AA                   ;
bank4_Pointer_table_for_Enemy_Routines2:                                        ;
.word    bank7_Enemy_Routines1_Fairy   ; 0x1299d $A98D 1E D9                   ;
.word    bank7_Enemy_Routines1_Red_Jar ; 0x1299f $A98F 59 D9                   ;
.word    bank7_Enemy_Routines1_Locked_Door; 0x129a1 $A991 91 D9                ;
.word    bank7_Enemy_Routines1_Myu     ; 0x129a3 $A993 47 DA                   ;
.word    bank7_Enemy_Routines1_Bot     ; 0x129a5 $A995 0C DA                   ;
.word    LAF61                         ; 0x129a7 $A997 61 AF                   ;
.word    bank4_Enemy_Routines_Bubble__Slow_Fast; 0x129a9 $A999 D1 99           ;
.word    bank4_Enemy_Routines_Moa      ; 0x129ab $A99B 09 B9                   ;
.word    bank4_Enemy_Routines_Falling_Block_Generator; 0x129ad $A99D 98 AB     ;
.word    bank4_Enemy_Routines_Falling_Block; 0x129af $A99F E9 AB               ;
.word    LB23F                         ; 0x129b1 $A9A1 3F B2                   ;
.word    LB343                         ; 0x129b3 $A9A3 43 B3                   ;
.word    LB362                         ; 0x129b5 $A9A5 62 B3                   ;
.word    bank4_Enemy_Routines_Dripping_Column; 0x129b7 $A9A7 BF B9             ;
.word    bank4_Enemy_Routines_Bubble__Slow_Fast; 0x129b9 $A9A9 D1 99           ;
.word    LACDA                         ; 0x129bb $A9AB DA AC                   ;
.word    LB485                         ; 0x129bd $A9AD 85 B4                   ;
.word    bank7_Enemy_Routines1_Bago_Bago1; 0x129bf $A9AF 42 D8                 ;
.word    bank7_Enemy_Routines1_Octorok ; 0x129c1 $A9B1 88 D8                   ;
.word    bank7_Enemy_Routines1_Elevator; 0x129c3 $A9B3 C2 D8                   ;
.word    bank4_Enemy_Routines_Crystal_Slot; 0x129c5 $A9B5 D4 9A                ;
.word    bank4_Enemy_Routines_Crystal  ; 0x129c7 $A9B7 8B 9A                   ;
.word    bank4_Enemy_Routines_Energy_Ball_Shooter__Left_Right; 0x129c9 $A9B9 DD 9B;
.word    bank4_Enemy_Routines_Energy_Ball_Shooter__Left_Right; 0x129cb $A9BB DD 9B;
.word    bank4_Enemy_Routines_Iron_Knuckle; 0x129cd $A9BD 8C 9C                ;
.word    bank4_Enemy_Routines_Iron_Knuckle; 0x129cf $A9BF 8C 9C                ;
.word    bank4_Enemy_Routines_Iron_Knuckle; 0x129d1 $A9C1 8C 9C                ;
.word    bank4_Enemy_Routines_Mau_Generator; 0x129d3 $A9C3 61 B8               ;
.word    bank4_Enemy_Routines_Mau_Wolf_Head; 0x129d5 $A9C5 BB B8               ;
.word    LAE4F                         ; 0x129d7 $A9C7 4F AE                   ;
.word    LB0AD                         ; 0x129d9 $A9C9 AD B0                   ;
.word    bank4_Enemy_Routines_Stalfos  ; 0x129db $A9CB 5A 96                   ;
.word    LAFBC                         ; 0x129dd $A9CD BC AF                   ;
.word    LB11F                         ; 0x129df $A9CF 1F B1                   ;
.word    LAE7B                         ; 0x129e1 $A9D1 7B AE                   ;
.word    bank4_Enemy_Routines_Stalfos  ; 0x129e3 $A9D3 5A 96                   ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Attributes_Palette_Experience_Code_etc1:                            ;
;xx.. ....	Palette Code (0-3)                                                  ;
;..x. ....	No Damage from Sword (needs Fire)                                   ;
;...x ....	Steals Experience Points                                            ;
;.... xxxx	Experience Code (0-F)                                               ;
.byt    $40,$40,$40,$C3,$C1,$80,$87,$57; 0x129e5 $A9D5 40 40 40 C3 C1 80 87 57 ;
.byt    $C0,$C0,$CC,$00,$50,$80,$87,$D5; 0x129ed $A9DD C0 C0 CC 00 50 80 87 D5 ;
.byt    $83,$C5,$C5,$40,$00,$00,$00,$00; 0x129f5 $A9E5 83 C5 C5 40 00 00 00 00 ;
.byt    $47,$89,$CA,$93,$93,$89,$C9,$87; 0x129fd $A9ED 47 89 CA 93 93 89 C9 87 ;
.byt    $CC,$4E,$8C,$C8                ; 0x12a05 $A9F5 CC 4E 8C C8             ;
bank4_Enemy_Vulnerability_Damage_Codes1:                                        ;
;xx.. ....	Strength Code (0 = gives no items, 1 = weak, 2 = strong)            ;
;..x. ....	Immune to Flying Blade and Fire                                     ;
;...x ....	?                                                                   ;
;.... xxxx	Damage Code                                                         ;
.byt    $30,$30,$30,$41,$41,$20,$00,$83; 0x12a09 $A9F9 30 30 30 41 41 20 00 83 ;
.byt    $31,$31,$30,$30,$00,$30,$00    ; 0x12a11 $AA01 31 31 30 30 00 30 00    ;
LAA08:                                                                          ;
.byt    $40,$32,$41,$41,$30,$30,$30,$30; 0x12a18 $AA08 40 32 41 41 30 30 30 30 ;
.byt    $30,$A2,$A3,$23,$30,$01,$B3,$23; 0x12a20 $AA10 30 A2 A3 23 30 01 B3 23 ;
.byt    $A2,$33,$35,$33,$A3            ; 0x12a28 $AA18 A2 33 35 33 A3          ;
bank4_Enemy_Size_Codes1:                                                        ;
.byt    $0F,$0F,$04,$02,$01,$01,$01,$01; 0x12a2d $AA1D 0F 0F 04 02 01 01 01 01 ;
.byt    $01,$01,$80,$00,$80,$01,$01,$01; 0x12a35 $AA25 01 01 80 00 80 01 01 01 ;
.byt    $0F,$01,$01,$03,$06,$00,$00,$00; 0x12a3d $AA2D 0F 01 01 03 06 00 00 00 ;
.byt    $80,$80,$80,$00,$01,$80,$80,$80; 0x12a45 $AA35 80 80 80 00 01 80 80 80 ;
.byt    $08,$0A,$0B,$80                ; 0x12a4d $AA3D 08 0A 0B 80             ;
bank4_Other_Enemy_Attributes_6E41_in_RAM1:                                      ;
;x... ....	Immune to Thunder Spell                                             ;
;.x.. ....	Regenerates                                                         ;
;..x. ....	?                                                                   ;
;...x ....	Not hittable with sword                                             ;
;.... xxxx	?                                                                   ;
.byt    $96,$86,$96,$46,$46,$46,$06,$06; 0x12a51 $AA41 96 86 96 46 46 46 06 06 ;
.byt    $90,$86,$C0,$90,$40,$90,$06,$40; 0x12a59 $AA49 90 86 C0 90 40 90 06 40 ;
.byt    $56,$06,$06,$90,$90,$90,$90,$90; 0x12a61 $AA51 56 06 06 90 90 90 90 90 ;
.byt    $00,$00,$00,$80,$00,$00,$00,$00; 0x12a69 $AA59 00 00 00 80 00 00 00 00 ;
.byt    $C0,$C0,$C0,$00                ; 0x12a71 $AA61 C0 C0 C0 00             ;
; ---------------------------------------------------------------------------- ;
bank4_Pointer_table_for_Enemy_Routines3:                                        ;
.word    bank7_Enemy_Routines2_Fairy   ; 0x12a75 $AA65 DD F0                   ;
.word    bank7_Enemy_Routines2_RedJar  ; 0x12a77 $AA67 12 F1                   ;
.word    bank7_Enemy_Routines2_LockedDoor; 0x12a79 $AA69 3A F1                 ;
.word    bank7_Enemy_Routines2_Myu     ; 0x12a7b $AA6B C2 EF                   ;
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x12a7d $AA6D 91 EF                ;
.word    bank4_code_rts2               ; 0x12a7f $AA6F AD AA                   ;
.word    bank4_Enemy_Routines1_Bubble  ; 0x12a81 $AA71 B0 B7                   ;
.word    bank7_Enemy_Routines2_Moa     ; 0x12a83 $AA73 F2 EF                   ;
.word    bank7_Enemy_Routines2_unknown ; 0x12a85 $AA75 D2 EF                   ;
.word    bank7_Enemy_Routines2_unknown ; 0x12a87 $AA77 D2 EF                   ;
.word    LAF12                         ; 0x12a89 $AA79 12 AF                   ;
.word    bank4_code_rts2               ; 0x12a8b $AA7B AD AA                   ;
.word    LB38A                         ; 0x12a8d $AA7D 8A B3                   ;
.word    bank4_Enemy_Routines1_Dripping_Column; 0x12a8f $AA7F EC 98            ;
.word    bank4_Enemy_Routines1_Bubble  ; 0x12a91 $AA81 B0 B7                   ;
.word    LACA2                         ; 0x12a93 $AA83 A2 AC                   ;
.word    LB48B                         ; 0x12a95 $AA85 8B B4                   ;
.word    bank7_Enemy_Routines2_Octorok ; 0x12a97 $AA87 A8 F0                   ;
.word    bank7_Enemy_Routines2_Octorok ; 0x12a99 $AA89 A8 F0                   ;
.word    bank7_Enemy_Routines2_Elevator; 0x12a9b $AA8B 47 EF                   ;
.word    bank4_code_rts2               ; 0x12a9d $AA8D AD AA                   ;
.word    bank4_code_rts2               ; 0x12a9f $AA8F AD AA                   ;
.word    bank4_code_rts2               ; 0x12aa1 $AA91 AD AA                   ;
.word    bank4_code_rts2               ; 0x12aa3 $AA93 AD AA                   ;
.word    bank4_Enemy_Routines1_Iron_Knuckle; 0x12aa5 $AA95 45 9E               ;
.word    bank4_Enemy_Routines1_Iron_Knuckle; 0x12aa7 $AA97 45 9E               ;
.word    bank4_Enemy_Routines1_Iron_Knuckle; 0x12aa9 $AA99 45 9E               ;
.word    bank4_code_rts2               ; 0x12aab $AA9B AD AA                   ;
.word    bank4_Enemy_Routines1_Mau     ; 0x12aad $AA9D 04 B9                   ;
.word    LB42C                         ; 0x12aaf $AA9F 2C B4                   ;
.word    LAF26                         ; 0x12ab1 $AAA1 26 AF                   ;
.word    bank4_Enemy_Routines1_Stalfos ; 0x12ab3 $AAA3 ED BD                   ;
.word    LB3A8                         ; 0x12ab5 $AAA5 A8 B3                   ;
.word    LB290                         ; 0x12ab7 $AAA7 90 B2                   ;
.word    LB439                         ; 0x12ab9 $AAA9 39 B4                   ;
.word    bank4_Enemy_Routines1_Stalfos ; 0x12abb $AAAB ED BD                   ;
; ---------------------------------------------------------------------------- ;
bank4_code_rts2:                                                                ;
    RTS                                ; 0x12abd $AAAD 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table10:                                                                  ;
.byt    $CE,$CE,$AE,$3F,$53,$EE,$52,$61; 0x12abe $AAAE CE CE AE 3F 53 EE 52 61 ;
.byt    $DC,$03,$00,$02,$01,$00,$03,$01; 0x12ac6 $AAB6 DC 03 00 02 01 00 03 01 ;
.byt    $03,$01,$00,$00                ; 0x12ace $AABE 03 01 00 00             ;
; ---------------------------------------------------------------------------- ;
bank4_Pointer_table_for_Projectiles_Routines:                                   ;
.word    LAE10                         ; 0x12ad2 $AAC2 10 AE                   ;
.word    LAE11                         ; 0x12ad4 $AAC4 11 AE                   ;
.word    LAE20                         ; 0x12ad6 $AAC6 20 AE                   ;
.word    LAE20                         ; 0x12ad8 $AAC8 20 AE                   ;
.word    LAE11                         ; 0x12ada $AACA 11 AE                   ;
.word    LAE30                         ; 0x12adc $AACC 30 AE                   ;
.word    L999F                         ; 0x12ade $AACE 9F 99                   ;
.word    L99D0                         ; 0x12ae0 $AAD0 D0 99                   ;
.word    LAE11                         ; 0x12ae2 $AAD2 11 AE                   ;
; ---------------------------------------------------------------------------- ;
bank4_table11:                                                                  ;
.byt    $41,$43,$49,$4B,$41,$43,$45,$47; 0x12ae4 $AAD4 41 43 49 4B 41 43 45 47 ;
.byt    $4D,$43,$51,$4B,$4D,$43,$4F,$47; 0x12aec $AADC 4D 43 51 4B 4D 43 4F 47 ;
.byt    $57,$59,$53,$55,$F5,$5B,$39,$3B; 0x12af4 $AAE4 57 59 53 55 F5 5B 39 3B ;
.byt    $8F,$91,$D0,$D2,$D4,$D6,$D8,$DA; 0x12afc $AAEC 8F 91 D0 D2 D4 D6 D8 DA ;
.byt    $D4,$D6,$E0,$E2,$E4,$E6,$E0,$E2; 0x12b04 $AAF4 D4 D6 E0 E2 E4 E6 E0 E2 ;
.byt    $E8,$EA,$EC,$F5,$F0,$F2,$F4,$F6; 0x12b0c $AAFC E8 EA EC F5 F0 F2 F4 F6 ;
.byt    $F0,$F2,$F8,$FA,$F0,$F2,$01,$03; 0x12b14 $AB04 F0 F2 F8 FA F0 F2 01 03 ;
.byt    $05,$05,$07,$07,$FC,$FE,$F4,$F6; 0x12b1c $AB0C 05 05 07 07 FC FE F4 F6 ;
.byt    $53,$55,$F0,$DE,$F4,$F6,$F0,$DE; 0x12b24 $AB14 53 55 F0 DE F4 F6 F0 DE ;
.byt    $F8,$FA,$F0,$DE,$01,$03,$05,$05; 0x12b2c $AB1C F8 FA F0 DE 01 03 05 05 ;
.byt    $07,$07,$FC,$FE,$F4,$F6,$53,$55; 0x12b34 $AB24 07 07 FC FE F4 F6 53 55 ;
.byt    $09,$0B,$0D,$0F,$4D,$43,$11,$13; 0x12b3c $AB2C 09 0B 0D 0F 4D 43 11 13 ;
.byt    $F5,$F5,$1F,$21,$19,$1B,$A1,$A3; 0x12b44 $AB34 F5 F5 1F 21 19 1B A1 A3 ;
.byt    $A1,$A3,$A1,$A3,$A1,$A3,$A1,$A3; 0x12b4c $AB3C A1 A3 A1 A3 A1 A3 A1 A3 ;
.byt    $A1,$A3,$A1,$A3,$A1,$A3,$25,$27; 0x12b54 $AB44 A1 A3 A1 A3 A1 A3 25 27 ;
.byt    $A1,$A3,$A1,$A3,$A1,$A3,$A1,$A3; 0x12b5c $AB4C A1 A3 A1 A3 A1 A3 A1 A3 ;
.byt    $A1,$A3,$A1,$A3,$A1,$A3,$A1,$A3; 0x12b64 $AB54 A1 A3 A1 A3 A1 A3 A1 A3 ;
.byt    $2D,$2F,$A1,$A3,$A1,$A3,$A1,$A3; 0x12b6c $AB5C 2D 2F A1 A3 A1 A3 A1 A3 ;
.byt    $A1,$A3,$A1,$A3,$A1,$A3,$A1,$A3; 0x12b74 $AB64 A1 A3 A1 A3 A1 A3 A1 A3 ;
.byt    $A1,$A3,$15,$17,$1D,$23,$29,$2B; 0x12b7c $AB6C A1 A3 15 17 1D 23 29 2B ;
.byt    $1F,$21,$27,$29,$F5,$19,$23,$25; 0x12b84 $AB74 1F 21 27 29 F5 19 23 25 ;
.byt    $2B,$2D,$2F,$F5,$09,$0B,$0D,$0F; 0x12b8c $AB7C 2B 2D 2F F5 09 0B 0D 0F ;
.byt    $F5,$19,$11,$13,$15,$17,$1B,$F5; 0x12b94 $AB84 F5 19 11 13 15 17 1B F5 ;
.byt    $31,$33,$45,$47,$31,$33,$49,$4B; 0x12b9c $AB8C 31 33 45 47 31 33 49 4B ;
.byt    $35,$37,$52,$F5                ; 0x12ba4 $AB94 35 37 52 F5             ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Falling_Block_Generator:                                   ;
    LDA      $C9                       ; 0x12ba8 $AB98 A5 C9                   ;
    BNE      LABE8                     ; 0x12baa $AB9A D0 4C                   ;
    LDA      $10                       ; 0x12bac $AB9C A5 10                   ;; used as monster x register ;draw boss hp bar
    PHA                                ; 0x12bae $AB9E 48                      ;
    LDA      $12                       ; 0x12baf $AB9F A5 12                   ;; Frame Counter (ascending)
    AND      #$0F                      ; 0x12bb1 $ABA1 29 0F                   ; keep bits .... xxxx
    BNE      LABE4                     ; 0x12bb3 $ABA3 D0 3F                   ;
    LDX      #$05                      ; 0x12bb5 $ABA5 A2 05                   ; X = 05
LABA7:                                                                          ;
    LDA      $B6,x                     ; 0x12bb7 $ABA7 B5 B6                   ;; Generated Enemy Slot
    BEQ      LABB0                     ; 0x12bb9 $ABA9 F0 05                   ;
LABAB:                                                                          ;
    DEX                                ; 0x12bbb $ABAB CA                      ;
    BPL      LABA7                     ; 0x12bbc $ABAC 10 F9                   ;
    BMI      LABE4                     ; 0x12bbe $ABAE 30 34                   ;
LABB0:                                                                          ;
    LDA      $051B,x                   ; 0x12bc0 $ABB0 BD 1B 05                ;; Randomizer
    AND      #$F0                      ; 0x12bc3 $ABB3 29 F0                   ; keep bits xxxx ....
    CMP      #$60                      ; 0x12bc5 $ABB5 C9 60                   ;
    BCC      LABAB                     ; 0x12bc7 $ABB7 90 F2                   ;
    STA      $4E,x                     ; 0x12bc9 $ABB9 95 4E                   ;; Enemy X Position (low byte)
    INC      $B6,x                     ; 0x12bcb $ABBB F6 B6                   ;; Generated Enemy Slot
    LDA      #$09                      ; 0x12bcd $ABBD A9 09                   ; A = 09
    STA      $A1,x                     ; 0x12bcf $ABBF 95 A1                   ; 09 = Falling Block
    LDA      #$FF                      ; 0x12bd1 $ABC1 A9 FF                   ; A = FF
    STA      $BC,x                     ; 0x12bd3 $ABC3 95 BC                   ;; Generated Enemy Y Position ?
    STA      $C2,x                     ; 0x12bd5 $ABC5 95 C2                   ;; Enemy Current HP
    LDA      #$1F                      ; 0x12bd7 $ABC7 A9 1F                   ; A = 1F
    STA      $2A,x                     ; 0x12bd9 $ABC9 95 2A                   ; Enemy Position
    LDA      #$01                      ; 0x12bdb $ABCB A9 01                   ; A = 01
    STA      $1A,x                     ; 0x12bdd $ABCD 95 1A                   ;
    STA      $3C,x                     ; 0x12bdf $ABCF 95 3C                   ;; Enemy X Position (high byte)
    JSR      LDAC7                     ; 0x12be1 $ABD1 20 C7 DA                ; Set Enemy Y Velocity to 0
    STA      $AF,x                     ; 0x12be4 $ABD4 95 AF                   ;; Various enemy state variables
    STX      $10                       ; 0x12be6 $ABD6 86 10                   ;; used as monster x register ;draw boss hp bar
    JSR      LEA32                     ; 0x12be8 $ABD8 20 32 EA                ;
    LDA      $A8,x                     ; 0x12beb $ABDB B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x12bed $ABDD 29 04                   ; keep bits .... .x..
    BEQ      LABE4                     ; 0x12bef $ABDF F0 03                   ;
    JSR      LDD3D                     ; 0x12bf1 $ABE1 20 3D DD                ;
LABE4:                                                                          ;
    PLA                                ; 0x12bf4 $ABE4 68                      ;
    STA      $10                       ; 0x12bf5 $ABE5 85 10                   ;; used as monster x register ;draw boss hp bar
    TAX                                ; 0x12bf7 $ABE7 AA                      ;
LABE8:                                                                          ;
    RTS                                ; 0x12bf8 $ABE8 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Falling_Block:                                             ;
    LDA      #$00                      ; 0x12bf9 $ABE9 A9 00                   ; A = 00
    STA      $040E,x                   ; 0x12bfb $ABEB 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    LDA      $AF,x                     ; 0x12bfe $ABEE B5 AF                   ;; Various enemy state variables
    BEQ      bank4_Related_to_Falling_Blocks; 0x12c00 $ABF0 F0 0E                  ;
    INC      $2A,x                     ; 0x12c02 $ABF2 F6 2A                   ;; Enemy Y Position
    INC      $AF,x                     ; 0x12c04 $ABF4 F6 AF                   ;; Various enemy state variables
    CMP      #$10                      ; 0x12c06 $ABF6 C9 10                   ;
    BNE      LABFD                     ; 0x12c08 $ABF8 D0 03                   ;
    JMP      bank7_remove_enemy_or_item; 0x12c0a $ABFA 4C 47 DD                ; Remove Enemy/Item
                                                                               ;
; ---------------------------------------------------------------------------- ;
LABFD:                                                                          ;
    JMP      bank7_Display             ; 0x12c0d $ABFD 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Related_to_Falling_Blocks:                                                ;
    JSR      bank7_Gravity             ; 0x12c10 $AC00 20 BE DE                ;
    JSR      LEA32                     ; 0x12c13 $AC03 20 32 EA                ;
    JSR      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x12c16 $AC06 20 77 E6;
    JSR      LE4D9                     ; 0x12c19 $AC09 20 D9 E4                ;
    LDA      $A8,x                     ; 0x12c1c $AC0C B5 A8                   ;; Enemy State
    AND      #$30                      ; 0x12c1e $AC0E 29 30                   ; keep bits ..xx ....
    BEQ      LAC1F                     ; 0x12c20 $AC10 F0 0D                   ;
    AND      #$10                      ; 0x12c22 $AC12 29 10                   ; keep bits ...x ....
    BEQ      LAC19                     ; 0x12c24 $AC14 F0 03                   ;
    JSR      bank7_Link_Hit_Routine    ; 0x12c26 $AC16 20 EF E2                ;
LAC19:                                                                          ;
    INC      $AF,x                     ; 0x12c29 $AC19 F6 AF                   ;; Various enemy state variables
    LDA      #$04                      ; 0x12c2b $AC1B A9 04                   ; A = 04
    STA      $ED                       ; 0x12c2d $AC1D 85 ED                   ;; Sound Effects Type 2; Sound Effects Type 2
LAC1F:                                                                          ;
    LDA      $A8,x                     ; 0x12c2f $AC1F B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x12c31 $AC21 29 04                   ; keep bits .... .x..
    BEQ      LABFD                     ; 0x12c33 $AC23 F0 D8                   ;
    LDA      #$02                      ; 0x12c35 $AC25 A9 02                   ; A = 02
    STA      $ED                       ; 0x12c37 $AC27 85 ED                   ; Sound Effects Type 2
    JSR      bank7_remove_enemy_or_item; 0x12c39 $AC29 20 47 DD                ; Remove Enemy/Item
    LDY      $044B                     ; 0x12c3c $AC2C AC 4B 04                ;
    LDA      L851E                     ; 0x12c3f $AC2F AD 1E 85                ;
    STA      ($DA),y                   ; 0x12c42 $AC32 91 DA                   ;
    LDA      $2A,x                     ; 0x12c44 $AC34 B5 2A                   ;; Enemy Y Position
    AND      #$F8                      ; 0x12c46 $AC36 29 F8                   ; keep bits xxxx x...
    STA      $02                       ; 0x12c48 $AC38 85 02                   ;
    LDA      $4E,x                     ; 0x12c4a $AC3A B5 4E                   ;; Enemy X Position (low byte)
    STA      $03                       ; 0x12c4c $AC3C 85 03                   ;
    LDA      #$08                      ; 0x12c4e $AC3E A9 08                   ; A = 08
    STA      L0000                     ; 0x12c50 $AC40 85 00                   ;
    LDA      $02                       ; 0x12c52 $AC42 A5 02                   ;
    ASL                                ; 0x12c54 $AC44 0A                      ;
    ROL      L0000                     ; 0x12c55 $AC45 26 00                   ;
    ASL                                ; 0x12c57 $AC47 0A                      ;
    ROL      L0000                     ; 0x12c58 $AC48 26 00                   ;
    AND      #$E0                      ; 0x12c5a $AC4A 29 E0                   ; keep bits xxx. ....
    STA      $01                       ; 0x12c5c $AC4C 85 01                   ;
    LDA      $03                       ; 0x12c5e $AC4E A5 03                   ;
    LSR                                ; 0x12c60 $AC50 4A                      ;
    LSR                                ; 0x12c61 $AC51 4A                      ;
    LSR                                ; 0x12c62 $AC52 4A                      ;
    ORA      $01                       ; 0x12c63 $AC53 05 01                   ;
    STA      $01                       ; 0x12c65 $AC55 85 01                   ;
    LDX      $10                       ; 0x12c67 $AC57 A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $3C,x                     ; 0x12c69 $AC59 B5 3C                   ;; Enemy X Position (high byte)
    AND      #$01                      ; 0x12c6b $AC5B 29 01                   ; keep bits .... ...x
    ASL                                ; 0x12c6d $AC5D 0A                      ;
    ASL                                ; 0x12c6e $AC5E 0A                      ;
    ORA      L0000                     ; 0x12c6f $AC5F 05 00                   ;
    LDX      $0301                     ; 0x12c71 $AC61 AE 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    STA      L0302,x                   ; 0x12c74 $AC64 9D 02 03                ;
    PHA                                ; 0x12c77 $AC67 48                      ;
    LDA      $01                       ; 0x12c78 $AC68 A5 01                   ;
    STA      $0303,x                   ; 0x12c7a $AC6A 9D 03 03                ;
    ADC      #$20                      ; 0x12c7d $AC6D 69 20                   ;
    STA      $0308,x                   ; 0x12c7f $AC6F 9D 08 03                ;
    PLA                                ; 0x12c82 $AC72 68                      ;
    ADC      #$00                      ; 0x12c83 $AC73 69 00                   ;
    STA      $0307,x                   ; 0x12c85 $AC75 9D 07 03                ;
    LDA      #$02                      ; 0x12c88 $AC78 A9 02                   ; A = 02
    STA      $0304,x                   ; 0x12c8a $AC7A 9D 04 03                ;
    STA      $0309,x                   ; 0x12c8d $AC7D 9D 09 03                ;
    LDA      #$BA                      ; 0x12c90 $AC80 A9 BA                   ; A = BA
    STA      $0305,x                   ; 0x12c92 $AC82 9D 05 03                ;
    LDA      #$BC                      ; 0x12c95 $AC85 A9 BC                   ; A = BC
    STA      $0306,x                   ; 0x12c97 $AC87 9D 06 03                ;
    LDA      #$BB                      ; 0x12c9a $AC8A A9 BB                   ; A = BB
    STA      $030A,x                   ; 0x12c9c $AC8C 9D 0A 03                ;
    LDA      #$BD                      ; 0x12c9f $AC8F A9 BD                   ; A = BD
    STA      $030B,x                   ; 0x12ca1 $AC91 9D 0B 03                ;
    LDA      #$FF                      ; 0x12ca4 $AC94 A9 FF                   ; A = FF
    STA      $030C,x                   ; 0x12ca6 $AC96 9D 0C 03                ;
    TXA                                ; 0x12ca9 $AC99 8A                      ;
    ADC      #$0A                      ; 0x12caa $AC9A 69 0A                   ;
    STA      $0301                     ; 0x12cac $AC9C 8D 01 03                ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDX      $10                       ; 0x12caf $AC9F A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x12cb1 $ACA1 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LACA2:                                                                          ;
    LDX      #$C0                      ; 0x12cb2 $ACA2 A2 C0                   ; X = C0
    LDA      $02                       ; 0x12cb4 $ACA4 A5 02                   ;
    EOR      #$03                      ; 0x12cb6 $ACA6 49 03                   ; flip bits .... ..xx
    STA      $02                       ; 0x12cb8 $ACA8 85 02                   ;
    JMP      LF0D7                     ; 0x12cba $ACAA 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LACAD:                                                                          ;
    LDA      $29                       ; 0x12cbd $ACAD A5 29                   ; Link's Y Position
    SBC      #$24                      ; 0x12cbf $ACAF E9 24                   ;
    STA      $2A,x                     ; 0x12cc1 $ACB1 95 2A                   ; Enemy Y Position
    LDY      $5F                       ; 0x12cc3 $ACB3 A4 5F                   ; Link's facing direction
    LDA      $072C                     ; 0x12cc5 $ACB5 AD 2C 07                ; Scrolling Offset Low Byte
    ADC      bank4_table12,y           ; 0x12cc8 $ACB8 79 D0 AC                ;
    STA      $4E,x                     ; 0x12ccb $ACBB 95 4E                   ; Enemy X Position (low byte)
    LDA      $072A                     ; 0x12ccd $ACBD AD 2A 07                ; Scrolling Offset High Byte
    ADC      #$00                      ; 0x12cd0 $ACC0 69 00                   ;
    STA      $3C,x                     ; 0x12cd2 $ACC2 95 3C                   ; Enemy X Position (high byte)
    LDA      LACD2,y                   ; 0x12cd4 $ACC4 B9 D2 AC                ;
    STA      $71,x                     ; 0x12cd7 $ACC7 95 71                   ; Enemy X Velocity
    JSR      LDAC7                     ; 0x12cd9 $ACC9 20 C7 DA                ; Set Enemy Y Velocity to 0
    STA      $AF,x                     ; 0x12cdc $ACCC 95 AF                   ;; Various enemy state variables
bank4_table12 = * + $0002                                                  ;
    JMP      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x12cde $ACCE 4C 91 DC; Determine Enemy Facing Direction
                                                                               ;
; ---------------------------------------------------------------------------- ;
.byt    $EF                            ; 0x12ce1 $ACD1 EF                      ;
LACD2:                                                                          ;
.byt    $00,$E8,$18                    ; 0x12ce2 $ACD2 00 E8 18                ;
LACD5:                                                                          ;
.byt    $02,$FE                        ; 0x12ce5 $ACD5 02 FE                   ;
LACD7:                                                                          ;
.byt    $2E,$D2                        ; 0x12ce7 $ACD7 2E D2                   ;
; ---------------------------------------------------------------------------- ;
bank4_code13:                                                                   ;
    RTS                                ; 0x12ce9 $ACD9 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LACDA:                                                                          ;
    LDA      $C9                       ; 0x12cea $ACDA A5 C9                   ;
    AND      #$0C                      ; 0x12cec $ACDC 29 0C                   ; keep bits .... xx..
    BEQ      LACE8                     ; 0x12cee $ACDE F0 08                   ;
    LDA      L05C9                     ; 0x12cf0 $ACE0 AD C9 05                ;
    BNE      bank4_code13              ; 0x12cf3 $ACE3 D0 F4                   ;
    JSR      LACAD                     ; 0x12cf5 $ACE5 20 AD AC                ;
LACE8:                                                                          ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x12cf8 $ACE8 20 02 DA                ; Enemy Stops when Hit
    LDA      $AF,x                     ; 0x12cfb $ACEB B5 AF                   ;; Various enemy state variables
    AND      #$01                      ; 0x12cfd $ACED 29 01                   ; keep bits .... ...x
    TAY                                ; 0x12cff $ACEF A8                      ;
    LDA      $057E,x                   ; 0x12d00 $ACF0 BD 7E 05                ; Enemy Y Velocity
    CLC                                ; 0x12d03 $ACF3 18                      ;
    ADC      LACD5,y                   ; 0x12d04 $ACF4 79 D5 AC                ;
    STA      $057E,x                   ; 0x12d07 $ACF7 9D 7E 05                ; Enemy Y Velocity
    CMP      LACD7,y                   ; 0x12d0a $ACFA D9 D7 AC                ;
    BNE      LAD01                     ; 0x12d0d $ACFD D0 02                   ;
    INC      $AF,x                     ; 0x12d0f $ACFF F6 AF                   ;; Various enemy state variables
LAD01:                                                                          ;
    JSR      bank7_Simple_Vertical_Movement; 0x12d11 $AD01 20 C8 DE                ;
    JSR      bank7_Simple_Horizontal_Movement; 0x12d14 $AD04 20 B8 DE              ;
    JSR      LDE40                     ; 0x12d17 $AD07 20 40 DE                ;
    JMP      bank7_Link_Collision_Detection; 0x12d1a $AD0A 4C C1 D6                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAD0D:                                                                          ;
    LDA      $044C,x                   ; 0x12d1d $AD0D BD 4C 04                ;
    BEQ      LAD17                     ; 0x12d20 $AD10 F0 05                   ;
    DEC      $044C,x                   ; 0x12d22 $AD12 DE 4C 04                ;
    BPL      bank4_Related_to_Helmethead_maybe1; 0x12d25 $AD15 10 79               ;
LAD17:                                                                          ;
    TXA                                ; 0x12d27 $AD17 8A                      ;
    CLC                                ; 0x12d28 $AD18 18                      ;
    ADC      #$06                      ; 0x12d29 $AD19 69 06                   ;
    TAX                                ; 0x12d2b $AD1B AA                      ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x12d2c $AD1C 20 EB E8;
    LDX      $10                       ; 0x12d2f $AD1F A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      #$80                      ; 0x12d31 $AD21 A9 80                   ; A = 80
    STA      $044C,x                   ; 0x12d33 $AD23 9D 4C 04                ;
    JMP      bank4_Related_to_Helmethead_maybe1; 0x12d36 $AD26 4C 90 AD            ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Related_to_Helmethead_maybe0:                                             ;
    LDA      $044C,x                   ; 0x12d39 $AD29 BD 4C 04                ;
    BNE      bank4_Related_to_Helmethead_maybe1; 0x12d3c $AD2C D0 62               ;
    LDA      $045E,x                   ; 0x12d3e $AD2E BD 5E 04                ;
    TAX                                ; 0x12d41 $AD31 AA                      ;
    STX      $11                       ; 0x12d42 $AD32 86 11                   ;
    LDA      $81,x                     ; 0x12d44 $AD34 B5 81                   ;; Current Animation Frame for Enemys
    BEQ      bank4_Related_to_Helmethead_maybe1; 0x12d46 $AD36 F0 58               ;
    LDA      $B6,x                     ; 0x12d48 $AD38 B5 B6                   ;; Generated Enemy Slot
    CMP      #$01                      ; 0x12d4a $AD3A C9 01                   ;
    BNE      bank4_Related_to_Helmethead_maybe1; 0x12d4c $AD3C D0 52               ;
    LDA      $4E,x                     ; 0x12d4e $AD3E B5 4E                   ;; Enemy X Position (low byte)
    SBC      $072C                     ; 0x12d50 $AD40 ED 2C 07                ;; Scrolling Offset Low Byte
    STA      $CD                       ; 0x12d53 $AD43 85 CD                   ;
    JSR      LE942                     ; 0x12d55 $AD45 20 42 E9                ;
    LDY      #$03                      ; 0x12d58 $AD48 A0 03                   ; Y = 03
LAD4A:                                                                          ;
    LDA      $04,y                     ; 0x12d5a $AD4A B9 04 00                ;
    STA      L0000,y                   ; 0x12d5d $AD4D 99 00 00                ;
    DEY                                ; 0x12d60 $AD50 88                      ;
    BPL      LAD4A                     ; 0x12d61 $AD51 10 F7                   ;
    LDX      $10                       ; 0x12d63 $AD53 A6 10                   ;; used as monster x register ;draw boss hp bar
    JSR      LE469                     ; 0x12d65 $AD55 20 69 E4                ;
    JSR      bank7_idem__maybe         ; 0x12d68 $AD58 20 F9 E9                ;
    BCC      bank4_Related_to_Helmethead_maybe1; 0x12d6b $AD5B 90 33               ;
    JSR      LADA4                     ; 0x12d6d $AD5D 20 A4 AD                ;
    LDA      $10                       ; 0x12d70 $AD60 A5 10                   ;; used as monster x register ;draw boss hp bar
    PHA                                ; 0x12d72 $AD62 48                      ;
    LDX      $11                       ; 0x12d73 $AD63 A6 11                   ;
    STX      $10                       ; 0x12d75 $AD65 86 10                   ;; used as monster x register ;draw boss hp bar
    LDY      #$01                      ; 0x12d77 $AD67 A0 01                   ; Y = 01
    STY      $0B                       ; 0x12d79 $AD69 84 0B                   ;
    JSR      LE726                     ; 0x12d7b $AD6B 20 26 E7                ;
    PLA                                ; 0x12d7e $AD6E 68                      ;
    STA      $10                       ; 0x12d7f $AD6F 85 10                   ;; used as monster x register ;draw boss hp bar
    LDX      $11                       ; 0x12d81 $AD71 A6 11                   ;
    LDA      $A1,x                     ; 0x12d83 $AD73 B5 A1                   ; Enemy Code
    CMP      #$22                      ; 0x12d85 $AD75 C9 22                   ; 22 = Floating Helmet
    BNE      LAD8D                     ; 0x12d87 $AD77 D0 14                   ;
    LDA      #$01                      ; 0x12d89 $AD79 A9 01                   ; A = 01
    CMP      $B6,x                     ; 0x12d8b $AD7B D5 B6                   ;; Generated Enemy Slot
    BEQ      LAD8D                     ; 0x12d8d $AD7D F0 0E                   ;
    STA      $B6,x                     ; 0x12d8f $AD7F 95 B6                   ;; Generated Enemy Slot
    LDA      #$FF                      ; 0x12d91 $AD81 A9 FF                   ; A = FF
    STA      $6E3F                     ; 0x12d93 $AD83 8D 3F 6E                ;
    STA      $0504,x                   ; 0x12d96 $AD86 9D 04 05                ;; Timer for Enemy
    LSR                                ; 0x12d99 $AD89 4A                      ; A -> 7F
    STA      $040E,x                   ; 0x12d9a $AD8A 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
LAD8D:                                                                          ;
    LDX      $10                       ; 0x12d9d $AD8D A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x12d9f $AD8F 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Related_to_Helmethead_maybe1:                                             ;
    LDX      $10                       ; 0x12da0 $AD90 A6 10                   ;; used as monster x register ;draw boss hp bar
    BPL      LADB4                     ; 0x12da2 $AD92 10 20                   ;
LAD94:                                                                          ;
    JSR      LBEF6                     ; 0x12da4 $AD94 20 F6 BE                ;
    JSR      LEA1C                     ; 0x12da7 $AD97 20 1C EA                ;
    BCS      LADA4                     ; 0x12daa $AD9A B0 08                   ;
    BCC      LADBF                     ; 0x12dac $AD9C 90 21                   ;
LAD9E:                                                                          ;
    LDA      $30,x                     ; 0x12dae $AD9E B5 30                   ;; Projectile Y Position
    CMP      #$C5                      ; 0x12db0 $ADA0 C9 C5                   ;
    BCC      LADBF                     ; 0x12db2 $ADA2 90 1B                   ;
LADA4:                                                                          ;
    LDA      #$F2                      ; 0x12db4 $ADA4 A9 F2                   ; A = F2
    BNE      LADD4                     ; 0x12db6 $ADA6 D0 2C                   ;
LADA8:                                                                          ;
    LDY      #$02                      ; 0x12db8 $ADA8 A0 02                   ; Y = 02
    LDA      $77,x                     ; 0x12dba $ADAA B5 77                   ;; Projectile X Velocity
    BMI      LADAF                     ; 0x12dbc $ADAC 30 01                   ;
    DEY                                ; 0x12dbe $ADAE 88                      ;
LADAF:                                                                          ;
    TYA                                ; 0x12dbf $ADAF 98                      ;
    CMP      $66,x                     ; 0x12dc0 $ADB0 D5 66                   ;; Projectile facing direction
    BNE      LADB9                     ; 0x12dc2 $ADB2 D0 05                   ;
LADB4:                                                                          ;
    LDA      #$FE                      ; 0x12dc4 $ADB4 A9 FE                   ; A = FE
    STA      $0584,x                   ; 0x12dc6 $ADB6 9D 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
LADB9:                                                                          ;
    INC      $0584,x                   ; 0x12dc9 $ADB9 FE 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
    INC      $0584,x                   ; 0x12dcc $ADBC FE 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
LADBF:                                                                          ;
    JSR      LDED4                     ; 0x12dcf $ADBF 20 D4 DE                ;
    LDA      $CA                       ; 0x12dd2 $ADC2 A5 CA                   ;
    AND      #$FC                      ; 0x12dd4 $ADC4 29 FC                   ; keep bits xxxx xx..
    BEQ      LADD7                     ; 0x12dd6 $ADC6 F0 0F                   ;
    AND      #$F0                      ; 0x12dd8 $ADC8 29 F0                   ; keep bits xxxx ....
    BNE      LADD2                     ; 0x12dda $ADCA D0 06                   ;
    LDA      $87,x                     ; 0x12ddc $ADCC B5 87                   ;; Projectile Type
    CMP      #$08                      ; 0x12dde $ADCE C9 08                   ;
    BEQ      LADD6                     ; 0x12de0 $ADD0 F0 04                   ;
LADD2:                                                                          ;
    LDA      #$00                      ; 0x12de2 $ADD2 A9 00                   ; A = 00
LADD4:                                                                          ;
    STA      $87,x                     ; 0x12de4 $ADD4 95 87                   ;; Projectile Type
LADD6:                                                                          ;
    RTS                                ; 0x12de6 $ADD6 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LADD7:                                                                          ;
    JSR      bank4_code_996A           ; 0x12de7 $ADD7 20 6A 99                ;
    JSR      LE48A                     ; 0x12dea $ADDA 20 8A E4                ;
    JMP      LE3B9                     ; 0x12ded $ADDD 4C B9 E3                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LADE0:                                                                          ;
    DEC      $77,x                     ; 0x12df0 $ADE0 D6 77                   ;; Projectile X Velocity
    BNE      LADE7                     ; 0x12df2 $ADE2 D0 03                   ;
    JMP      LADD2                     ; 0x12df4 $ADE4 4C D2 AD                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LADE7:                                                                          ;
    LDY      $97,x                     ; 0x12df7 $ADE7 B4 97                   ;
    LDA      $30,x                     ; 0x12df9 $ADE9 B5 30                   ;; Projectile Y Position
    STA      L0000                     ; 0x12dfb $ADEB 85 00                   ;
    LDA      #$02                      ; 0x12dfd $ADED A9 02                   ;;A = #$02 0000_0010
    STA      $02                       ; 0x12dff $ADEF 85 02                   ;
    LSR                                ; 0x12e01 $ADF1 4A                      ;
    STA      $03                       ; 0x12e02 $ADF2 85 03                   ;
    LSR                                ; 0x12e04 $ADF4 4A                      ;
    STA      $C9                       ; 0x12e05 $ADF5 85 C9                   ;
    LDA      $54,x                     ; 0x12e07 $ADF7 B5 54                   ;; Projectile X Position (low byte)
    SBC      $072C                     ; 0x12e09 $ADF9 ED 2C 07                ;; Scrolling Offset Low Byte
    STA      $01                       ; 0x12e0c $ADFC 85 01                   ;
    LDA      $77,x                     ; 0x12e0e $ADFE B5 77                   ;; Projectile X Velocity
    LDX      #$00                      ; 0x12e10 $AE00 A2 00                   ;;X = #$00 0000_0000
    CMP      #$08                      ; 0x12e12 $AE02 C9 08                   ;
    BCS      LAE08                     ; 0x12e14 $AE04 B0 02                   ;
    LDX      #$02                      ; 0x12e16 $AE06 A2 02                   ;;X = #$02 0000_0010
LAE08:                                                                          ;
    JSR      LF0C6                     ; 0x12e18 $AE08 20 C6 F0                ;
    LDA      #$41                      ; 0x12e1b $AE0B A9 41                   ;;A = #$41 0100_0001
    STA      $01FE,y                   ; 0x12e1d $AE0D 99 FE 01                ;
LAE10:                                                                          ;
    RTS                                ; 0x12e20 $AE10 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAE11:                                                                          ;
    LDA      $12                       ; 0x12e21 $AE11 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x12e23 $AE13 29 03                   ;;Keep Bits:0000_0011
    LDY      $77,x                     ; 0x12e25 $AE15 B4 77                   ;; Projectile X Velocity
    BMI      LAE1B                     ; 0x12e27 $AE17 30 02                   ;
    ORA      #$40                      ; 0x12e29 $AE19 09 40                   ;;Set Bits:0100_0000
LAE1B:                                                                          ;
    LDY       !$97,x                   ; 0x12e2b $AE1B BC 97 00                ;
    BNE      LAE43                     ; 0x12e2e $AE1E D0 23                   ;
LAE20:                                                                          ;
    LDA      $12                       ; 0x12e30 $AE20 A5 12                   ;; Frame Counter (ascending)
    ASL                                ; 0x12e32 $AE22 0A                      ;
    ASL                                ; 0x12e33 $AE23 0A                      ;
    ASL                                ; 0x12e34 $AE24 0A                      ;
    SEC                                ; 0x12e35 $AE25 38                      ;
    ROL                                ; 0x12e36 $AE26 2A                      ;
    ASL                                ; 0x12e37 $AE27 0A                      ;
    AND      #$83                      ; 0x12e38 $AE28 29 83                   ;;Keep Bits:1000_0011
    BNE      LAE43                     ; 0x12e3a $AE2A D0 17                   ;
bank4_table_AE2C:                                                               ;
.byt    $03,$83,$C3,$43                ; 0x12e3c $AE2C 03 83 C3 43             ;
; ---------------------------------------------------------------------------- ;
LAE30:                                                                          ;
    LDA      $12                       ; 0x12e40 $AE30 A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x12e42 $AE32 4A                      ;
    LSR                                ; 0x12e43 $AE33 4A                      ;
    AND      #$03                      ; 0x12e44 $AE34 29 03                   ;;Keep Bits:0000_0011
    LDY      $66,x                     ; 0x12e46 $AE36 B4 66                   ;; Projectile facing direction
    DEY                                ; 0x12e48 $AE38 88                      ;
    BNE      LAE3D                     ; 0x12e49 $AE39 D0 02                   ;
    EOR      #$03                      ; 0x12e4b $AE3B 49 03                   ;;Flip Bits:0000_0011
LAE3D:                                                                          ;
    TAY                                ; 0x12e4d $AE3D A8                      ;
    LDA      bank4_table_AE2C,y        ; 0x12e4e $AE3E B9 2C AE                ;
    LDY      $97,x                     ; 0x12e51 $AE41 B4 97                   ;
LAE43:                                                                          ;
    STA      $0202,y                   ; 0x12e53 $AE43 99 02 02                ;
LAE46:                                                                          ;
    RTS                                ; 0x12e56 $AE46 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_AE47:                                                               ;
.byt    $0D,$FA,$1A                    ; 0x12e57 $AE47 0D FA 1A                ;
LAE4A:                                                                          ;
.byt    $FD,$00                        ; 0x12e5a $AE4A FD 00                   ;
LAE4C:                                                                          ;
.byt    $FF,$20,$E0                    ; 0x12e5c $AE4C FF 20 E0                ;
; ---------------------------------------------------------------------------- ;
LAE4F:                                                                          ;
    LDA      #$00                      ; 0x12e5f $AE4F A9 00                   ;;A = #$00 0000_0000
    STA      $81,x                     ; 0x12e61 $AE51 95 81                   ;; Current Animation Frame for Enemys
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x12e63 $AE53 20 91 DC;
    DEC      $AF,x                     ; 0x12e66 $AE56 D6 AF                   ;; Various enemy state variables
    LDA      $AF,x                     ; 0x12e68 $AE58 B5 AF                   ;; Various enemy state variables
    CMP      #$C0                      ; 0x12e6a $AE5A C9 C0                   ;
    BCC      LAE64                     ; 0x12e6c $AE5C 90 06                   ;
    LSR                                ; 0x12e6e $AE5E 4A                      ;
    BCC      LAE46                     ; 0x12e6f $AE5F 90 E5                   ;
    JMP      bank7_Display             ; 0x12e71 $AE61 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAE64:                                                                          ;
    CMP      #$B0                      ; 0x12e74 $AE64 C9 B0                   ;
    BNE      LAE6D                     ; 0x12e76 $AE66 D0 05                   ;
    LDA      #$00                      ; 0x12e78 $AE68 A9 00                   ;;A = #$00 0000_0000
    JSR      LAED3                     ; 0x12e7a $AE6A 20 D3 AE                ;
LAE6D:                                                                          ;
    LDA      $AF,x                     ; 0x12e7d $AE6D B5 AF                   ;; Various enemy state variables
    CMP      #$40                      ; 0x12e7f $AE6F C9 40                   ;
    BCC      LAEBD                     ; 0x12e81 $AE71 90 4A                   ;
    CMP      #$80                      ; 0x12e83 $AE73 C9 80                   ;
    BCS      LAEB2                     ; 0x12e85 $AE75 B0 3B                   ;
    LSR                                ; 0x12e87 $AE77 4A                      ;
    BCC      LAEBA                     ; 0x12e88 $AE78 90 40                   ;
    RTS                                ; 0x12e8a $AE7A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAE7B:                                                                          ;
    JSR      LB20D                     ; 0x12e8b $AE7B 20 0D B2                ;
    JSR      LB1E9                     ; 0x12e8e $AE7E 20 E9 B1                ;
    LDA      #$02                      ; 0x12e91 $AE81 A9 02                   ;;A = #$02 0000_0010
    JSR      L9C45                     ; 0x12e93 $AE83 20 45 9C                ;
    LDA      #$00                      ; 0x12e96 $AE86 A9 00                   ;;A = #$00 0000_0000
    STA      $81,x                     ; 0x12e98 $AE88 95 81                   ;; Current Animation Frame for Enemys
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x12e9a $AE8A 20 91 DC;
    DEC      $AF,x                     ; 0x12e9d $AE8D D6 AF                   ;; Various enemy state variables
    LDA      $AF,x                     ; 0x12e9f $AE8F B5 AF                   ;; Various enemy state variables
    CMP      #$F0                      ; 0x12ea1 $AE91 C9 F0                   ;
    BCC      LAE9B                     ; 0x12ea3 $AE93 90 06                   ;
    LSR                                ; 0x12ea5 $AE95 4A                      ;
    BCC      LAE46                     ; 0x12ea6 $AE96 90 AE                   ;
    JMP      bank7_Display             ; 0x12ea8 $AE98 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAE9B:                                                                          ;
    CMP      #$E8                      ; 0x12eab $AE9B C9 E8                   ;
    BNE      LAEA4                     ; 0x12ead $AE9D D0 05                   ;
    LDA      #$02                      ; 0x12eaf $AE9F A9 02                   ;;A = #$02 0000_0010
    JSR      LAED3                     ; 0x12eb1 $AEA1 20 D3 AE                ;
LAEA4:                                                                          ;
    LDA      $AF,x                     ; 0x12eb4 $AEA4 B5 AF                   ;; Various enemy state variables
    CMP      #$D0                      ; 0x12eb6 $AEA6 C9 D0                   ;
    BCC      LAEBD                     ; 0x12eb8 $AEA8 90 13                   ;
    CMP      #$E0                      ; 0x12eba $AEAA C9 E0                   ;
    BCS      LAEB2                     ; 0x12ebc $AEAC B0 04                   ;
    LSR                                ; 0x12ebe $AEAE 4A                      ;
    BCC      LAEBA                     ; 0x12ebf $AEAF 90 09                   ;
    RTS                                ; 0x12ec1 $AEB1 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAEB2:                                                                          ;
    INC      $81,x                     ; 0x12ec2 $AEB2 F6 81                   ;; Current Animation Frame for Enemys
    JSR      LE4D9                     ; 0x12ec4 $AEB4 20 D9 E4                ;
    JSR      bank7_Link_Collision_Detection; 0x12ec7 $AEB7 20 C1 D6                ;
LAEBA:                                                                          ;
    JMP      bank7_Display             ; 0x12eca $AEBA 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAEBD:                                                                          ;
    LDA      #$00                      ; 0x12ecd $AEBD A9 00                   ;;A = #$00 0000_0000
    STA      $040E,x                   ; 0x12ecf $AEBF 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    STA      $AF,x                     ; 0x12ed2 $AEC2 95 AF                   ;; Various enemy state variables
    LDA      $051B,x                   ; 0x12ed4 $AEC4 BD 1B 05                ;; Randomizer
    CMP      #$E0                      ; 0x12ed7 $AEC7 C9 E0                   ;
    BCC      LAECC                     ; 0x12ed9 $AEC9 90 01                   ;
    LSR                                ; 0x12edb $AECB 4A                      ;
LAECC:                                                                          ;
    STA      $4E,x                     ; 0x12edc $AECC 95 4E                   ;; Enemy X Position (low byte)
    LDA      #$01                      ; 0x12ede $AECE A9 01                   ;;A = #$01 0000_0001
    STA      $3C,x                     ; 0x12ee0 $AED0 95 3C                   ;; Enemy X Position (high byte)
    RTS                                ; 0x12ee2 $AED2 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAED3:                                                                          ;
    STA      L0000                     ; 0x12ee3 $AED3 85 00                   ;
    LDA      $C9                       ; 0x12ee5 $AED5 A5 C9                   ;
    BNE      LAF11                     ; 0x12ee7 $AED7 D0 38                   ;
    JSR      bank7_Spawn_New_Projectile; 0x12ee9 $AED9 20 CE DB                ;
    LDA      L0000                     ; 0x12eec $AEDC A5 00                   ;
    BCS      LAF11                     ; 0x12eee $AEDE B0 31                   ;
    ADC      $66,y                     ; 0x12ef0 $AEE0 79 66 00                ;
    TAX                                ; 0x12ef3 $AEE3 AA                      ;
    STA      $044C,y                   ; 0x12ef4 $AEE4 99 4C 04                ;
    LDA      LAE46,x                   ; 0x12ef7 $AEE7 BD 46 AE                ;
    LDX      $10                       ; 0x12efa $AEEA A6 10                   ;; used as monster x register ;draw boss hp bar
    ADC      $4E,x                     ; 0x12efc $AEEC 75 4E                   ;; Enemy X Position (low byte)
    STA      $54,y                     ; 0x12efe $AEEE 99 54 00                ;
    LDA      $3C,x                     ; 0x12f01 $AEF1 B5 3C                   ;; Enemy X Position (high byte)
    LDX      $66,y                     ; 0x12f03 $AEF3 B6 66                   ;
    ADC      LAE4A,x                   ; 0x12f05 $AEF5 7D 4A AE                ;
    STA      $42,y                     ; 0x12f08 $AEF8 99 42 00                ;
    LDA      LAE4C,x                   ; 0x12f0b $AEFB BD 4C AE                ;
    STA      $77,y                     ; 0x12f0e $AEFE 99 77 00                ;
    LDA      #$09                      ; 0x12f11 $AF01 A9 09                   ;;A = #$09 0000_1001
    STA      $87,y                     ; 0x12f13 $AF03 99 87 00                ;
    LDA      #$C0                      ; 0x12f16 $AF06 A9 C0                   ;;A = #$c0 1100_0000
    STA      $30,y                     ; 0x12f18 $AF08 99 30 00                ;
    LDX      $10                       ; 0x12f1b $AF0B A6 10                   ;; used as monster x register ;draw boss hp bar
    TXA                                ; 0x12f1d $AF0D 8A                      ;
    STA      $045E,y                   ; 0x12f1e $AF0E 99 5E 04                ;
LAF11:                                                                          ;
    RTS                                ; 0x12f21 $AF11 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAF12:                                                                          ;
    LDY      #$80                      ; 0x12f22 $AF12 A0 80                   ;;Y = #$80 1000_0000
    STY      $91,x                     ; 0x12f24 $AF14 94 91                   ;
    LDA      $6E27                     ; 0x12f26 $AF16 AD 27 6E                ;
    BPL      LAF1F                     ; 0x12f29 $AF19 10 04                   ;
    LDA      #$00                      ; 0x12f2b $AF1B A9 00                   ;;A = #$00 0000_0000
    STA      $71,x                     ; 0x12f2d $AF1D 95 71                   ;; Enemy X Velocity
LAF1F:                                                                          ;
.byt    $4C                            ; 0x12f2f $AF1F 4C                      ;
.byt    $45                            ; 0x12f30 $AF20 45                      ;
LAF21:                                                                          ;
.byt    $9E                            ; 0x12f31 $AF21 9E                      ;
.byt    $F4                            ; 0x12f32 $AF22 F4                      ;
.byt    $0C                            ; 0x12f33 $AF23 0C                      ;
    RTI                                ; 0x12f34 $AF24 40                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    BRK                                ; 0x12f35 $AF25 00                      ;
LAF26:                                                                          ;
    LDA      $A8,x                     ; 0x12f36 $AF26 B5 A8                   ;; Enemy State
    LDX      #$22                      ; 0x12f38 $AF28 A2 22                   ;;X = #$22 0010_0010
    AND      #$04                      ; 0x12f3a $AF2A 29 04                   ;;Keep Bits:0000_0100
    BEQ      LAF36                     ; 0x12f3c $AF2C F0 08                   ;
    LDA      $12                       ; 0x12f3e $AF2E A5 12                   ;; Frame Counter (ascending)
    AND      #$10                      ; 0x12f40 $AF30 29 10                   ;;Keep Bits:0001_0000
    BEQ      LAF36                     ; 0x12f42 $AF32 F0 02                   ;
    LDX      #$26                      ; 0x12f44 $AF34 A2 26                   ;;X = #$26 0010_0110
LAF36:                                                                          ;
    JSR      LB477                     ; 0x12f46 $AF36 20 77 B4                ;
    LDA      $0504,x                   ; 0x12f49 $AF39 BD 04 05                ;; Timer for Enemy
    BEQ      LAF11                     ; 0x12f4c $AF3C F0 D3                   ;
    LDA      $C9                       ; 0x12f4e $AF3E A5 C9                   ;
    BNE      LAF11                     ; 0x12f50 $AF40 D0 CF                   ;
    LDA      $2A,x                     ; 0x12f52 $AF42 B5 2A                   ;; Enemy Y Position
    STA      L0000                     ; 0x12f54 $AF44 85 00                   ;
    LDA      $60,x                     ; 0x12f56 $AF46 B5 60                   ;; Enemy facing direction
    TAX                                ; 0x12f58 $AF48 AA                      ;
    LDA      $CD                       ; 0x12f59 $AF49 A5 CD                   ;
    ADC      LAF21,x                   ; 0x12f5b $AF4B 7D 21 AF                ;
    STA      $01                       ; 0x12f5e $AF4E 85 01                   ;
    LDX      #$2A                      ; 0x12f60 $AF50 A2 2A                   ;;X = #$2a 0010_1010
    JMP      LF0D7                     ; 0x12f62 $AF52 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAF55:                                                                          ;
    LDA      #$F0                      ; 0x12f65 $AF55 A9 F0                   ;;A = #$f0 1111_0000
    BNE      LAF5B                     ; 0x12f67 $AF57 D0 02                   ;
LAF59:                                                                          ;
    LDA      #$E0                      ; 0x12f69 $AF59 A9 E0                   ;;A = #$e0 1110_0000
LAF5B:                                                                          ;
    STA      $71,x                     ; 0x12f6b $AF5B 95 71                   ;; Enemy X Velocity
    STA      $057E,x                   ; 0x12f6d $AF5D 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    RTS                                ; 0x12f70 $AF60 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAF61:                                                                          ;
    LDA      $C9                       ; 0x12f71 $AF61 A5 C9                   ;
    BNE      LAF90                     ; 0x12f73 $AF63 D0 2B                   ;
    JSR      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x12f75 $AF65 20 77 E6;
    LDA      $A8,x                     ; 0x12f78 $AF68 B5 A8                   ;; Enemy State
    AND      #$20                      ; 0x12f7a $AF6A 29 20                   ;;Keep Bits:0010_0000
    BEQ      LAF90                     ; 0x12f7c $AF6C F0 22                   ;
    LDA      #$11                      ; 0x12f7e $AF6E A9 11                   ;;A = #$11 0001_0001
    STA      $AF,x                     ; 0x12f80 $AF70 95 AF                   ;; Various enemy state variables
    LDA      #$00                      ; 0x12f82 $AF72 A9 00                   ;;A = #$00 0000_0000
    STA      $C2,x                     ; 0x12f84 $AF74 95 C2                   ;; Enemy Current HP
    LDY      #$01                      ; 0x12f86 $AF76 A0 01                   ;;Y = #$01 0000_0001
    LDA      $051B,x                   ; 0x12f88 $AF78 BD 1B 05                ;; Randomizer
    BPL      LAF83                     ; 0x12f8b $AF7B 10 06                   ;
    LDA      #$18                      ; 0x12f8d $AF7D A9 18                   ;;A = #$18 0001_1000
    STA      $C2,x                     ; 0x12f8f $AF7F 95 C2                   ;; Enemy Current HP
    LDY      #$19                      ; 0x12f91 $AF81 A0 19                   ;;Y = #$19 0001_1001
LAF83:                                                                          ;
    STY      $A1,x                     ; 0x12f93 $AF83 94 A1                   ;; Enemy Code
    LDA      #$08                      ; 0x12f95 $AF85 A9 08                   ;;A = #$08 0000_1000
    STA      $040E,x                   ; 0x12f97 $AF87 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    LDA      $4E,x                     ; 0x12f9a $AF8A B5 4E                   ;; Enemy X Position (low byte)
LAF8C:                                                                          ;
    ADC      #$03                      ; 0x12f9c $AF8C 69 03                   ;
    STA      $4E,x                     ; 0x12f9e $AF8E 95 4E                   ;; Enemy X Position (low byte)
LAF90:                                                                          ;
    RTS                                ; 0x12fa0 $AF90 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAF91:                                                                          ;
    LDX      #$01                      ; 0x12fa1 $AF91 A2 01                   ;;X = #$01 0000_0001
    JSR      LC2A6                     ; 0x12fa3 $AF93 20 A6 C2                ;
    LDX      $10                       ; 0x12fa6 $AF96 A6 10                   ;; used as monster x register ;draw boss hp bar
    CMP      #$00                      ; 0x12fa8 $AF98 C9 00                   ;
    BNE      LAF9F                     ; 0x12faa $AF9A D0 03                   ;
    STA      $B6,x                     ; 0x12fac $AF9C 95 B6                   ;; Generated Enemy Slot
    RTS                                ; 0x12fae $AF9E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LAF9F:                                                                          ;
    LDA      #$AC                      ; 0x12faf $AF9F A9 AC                   ;;A = #$ac 1010_1100
    STA      $2A,x                     ; 0x12fb1 $AFA1 95 2A                   ;; Enemy Y Position
    LDA      $80                       ; 0x12fb3 $AFA3 A5 80                   ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    STA      $6E27                     ; 0x12fb5 $AFA5 8D 27 6E                ;
    STA      $0504,x                   ; 0x12fb8 $AFA8 9D 04 05                ;; Timer for Enemy
    LDA      #$02                      ; 0x12fbb $AFAB A9 02                   ;;A = #$02 0000_0010
    STA      $3C,x                     ; 0x12fbd $AFAD 95 3C                   ;; Enemy X Position (high byte)
    LDA      #$20                      ; 0x12fbf $AFAF A9 20                   ;;A = #$20 0010_0000
    STA      $4E,x                     ; 0x12fc1 $AFB1 95 4E                   ;; Enemy X Position (low byte)
LAFB3:                                                                          ;
    RTS                                ; 0x12fc3 $AFB3 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_AFB4:                                                               ;
.byt    $10,$F0                        ; 0x12fc4 $AFB4 10 F0                   ;
LAFB6:                                                                          ;
.byt    $04                            ; 0x12fc6 $AFB6 04                      ;
LAFB7:                                                                          ;
.byt    $FC                            ; 0x12fc7 $AFB7 FC                      ;
LAFB8:                                                                          ;
.byt    $01                            ; 0x12fc8 $AFB8 01                      ;
LAFB9:                                                                          ;
.byt    $FF                            ; 0x12fc9 $AFB9 FF                      ;
; ---------------------------------------------------------------------------- ;
    BMI      LAF8C                     ; 0x12fca $AFBA 30 D0                   ;
LAFBC:                                                                          ;
    LDA      $0728                     ; 0x12fcc $AFBC AD 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    BEQ      LAFC6                     ; 0x12fcf $AFBF F0 05                   ;
    LDA      #$09                      ; 0x12fd1 $AFC1 A9 09                   ;;A = #$09 0000_1001
    JSR      L9C45                     ; 0x12fd3 $AFC3 20 45 9C                ;
LAFC6:                                                                          ;
    LDA      $050D                     ; 0x12fd6 $AFC6 AD 0D 05                ;
    BNE      LAFB3                     ; 0x12fd9 $AFC9 D0 E8                   ;
    JSR      bank7_Display             ; 0x12fdb $AFCB 20 11 EF                ;
    LDA      #$04                      ; 0x12fde $AFCE A9 04                   ;;A = #$04 0000_0100
    STA      $0444,x                   ; 0x12fe0 $AFD0 9D 44 04                ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
    JSR      LE617                     ; 0x12fe3 $AFD3 20 17 E6                ;
    LDA      $12                       ; 0x12fe6 $AFD6 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x12fe8 $AFD8 29 03                   ;;Keep Bits:0000_0011
    BNE      LAFEC                     ; 0x12fea $AFDA D0 10                   ;
    LDA      $12                       ; 0x12fec $AFDC A5 12                   ;; Frame Counter (ascending)
    AND      #$10                      ; 0x12fee $AFDE 29 10                   ;;Keep Bits:0001_0000
    LSR                                ; 0x12ff0 $AFE0 4A                      ;
    LSR                                ; 0x12ff1 $AFE1 4A                      ;
    LSR                                ; 0x12ff2 $AFE2 4A                      ;
    LSR                                ; 0x12ff3 $AFE3 4A                      ;
    TAY                                ; 0x12ff4 $AFE4 A8                      ;
    LDA      $2A,x                     ; 0x12ff5 $AFE5 B5 2A                   ;; Enemy Y Position
    ADC      LAFB8,y                   ; 0x12ff7 $AFE7 79 B8 AF                ;
    STA      $2A,x                     ; 0x12ffa $AFEA 95 2A                   ;; Enemy Y Position
LAFEC:                                                                          ;
    JSR      LB20D                     ; 0x12ffc $AFEC 20 0D B2                ;
    JSR      bank7_Simple_Horizontal_Movement; 0x12fff $AFEF 20 B8 DE              ;
    LDA      $81,x                     ; 0x13002 $AFF2 B5 81                   ;; Current Animation Frame for Enemys
    BEQ      Blue_IronKnuckleBoss_related_knocked_off; 0x13004 $AFF4 F0 0D         ;
    LDA      #$01                      ; 0x13006 $AFF6 A9 01                   ;;A = #$01 0000_0001
    STA      $B6,x                     ; 0x13008 $AFF8 95 B6                   ;; Generated Enemy Slot
    LDA      $C9                       ; 0x1300a $AFFA A5 C9                   ;
    CMP      #$0F                      ; 0x1300c $AFFC C9 0F                   ;
    BNE      LB04C                     ; 0x1300e $AFFE D0 4C                   ;
    JMP      LDD3D                     ; 0x13010 $B000 4C 3D DD                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Blue_IronKnuckleBoss_related_knocked_off:                                       ;
    JSR      LB1E3                     ; 0x13013 $B003 20 E3 B1                ;
    JSR      LE579                     ; 0x13016 $B006 20 79 E5                ;
    LDA      $C2,x                     ; 0x13019 $B009 B5 C2                   ;; Enemy Current HP
    CMP      #$24                      ; 0x1301b $B00B C9 24                   ;
    BCS      LB04D                     ; 0x1301d $B00D B0 3E                   ;
    INC      $81,x                     ; 0x1301f $B00F F6 81                   ;; Current Animation Frame for Enemys
    LDA      $4E,x                     ; 0x13021 $B011 B5 4E                   ;; Enemy X Position (low byte)
    ADC      #$18                      ; 0x13023 $B013 69 18                   ;
    STA      $51                       ; 0x13025 $B015 85 51                   ;
    LDA      $3C,x                     ; 0x13027 $B017 B5 3C                   ;; Enemy X Position (high byte)
    ADC      #$00                      ; 0x13029 $B019 69 00                   ;
    STA      $3F                       ; 0x1302b $B01B 85 3F                   ;
    LDA      $2A,x                     ; 0x1302d $B01D B5 2A                   ;; Enemy Y Position
    STA      $2D                       ; 0x1302f $B01F 85 2D                   ;
    LDA      $1A,x                     ; 0x13031 $B021 B5 1A                   ;
    STA      $1D                       ; 0x13033 $B023 85 1D                   ;
    LDA      #$0A                      ; 0x13035 $B025 A9 0A                   ;;A = #$0a 0000_1010
    STA      $A4                       ; 0x13037 $B027 85 A4                   ;
    LDA      #$01                      ; 0x13039 $B029 A9 01                   ;;A = #$01 0000_0001
    STA      $B9                       ; 0x1303b $B02B 85 B9                   ;;? makes link hold up the last ? item he got 
    STA      $0447                     ; 0x1303d $B02D 8D 47 04                ;
    LDA      #$30                      ; 0x13040 $B030 A9 30                   ;;A = #$30 0011_0000
    STA      $C5                       ; 0x13042 $B032 85 C5                   ;
    LDA      #$FF                      ; 0x13044 $B034 A9 FF                   ;;A = #$ff 1111_1111
    STA      $BF                       ; 0x13046 $B036 85 BF                   ;
    LDA      #$EA                      ; 0x13048 $B038 A9 EA                   ;;A = #$ea 1110_1010
    STA      $0581                     ; 0x1304a $B03A 8D 81 05                ;
    LDY      $60,x                     ; 0x1304d $B03D B4 60                   ;; Enemy facing direction
    LDA      LAFB3,y                   ; 0x1304f $B03F B9 B3 AF                ;
    STA      $71,x                     ; 0x13052 $B042 95 71                   ;; Enemy X Velocity
    EOR      #$FF                      ; 0x13054 $B044 49 FF                   ;;Flip Bits:1111_1111
    ASL                                ; 0x13056 $B046 0A                      ;
    STA      $74                       ; 0x13057 $B047 85 74                   ;; Overworld X; X Position on OW (square unit)
    ASL      $057D                     ; 0x13059 $B049 0E 7D 05                ;;vspeed (Link's vertical velocity, negative is up.); Link's Y Velocity; Player Y Delta; Link's Y Velocity
LB04C:                                                                          ;
    RTS                                ; 0x1305c $B04C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB04D:                                                                          ;
    LDA      $AF,x                     ; 0x1305d $B04D B5 AF                   ;; Various enemy state variables
    BEQ      LB05A                     ; 0x1305f $B04F F0 09                   ;
    DEC      $AF,x                     ; 0x13061 $B051 D6 AF                   ;; Various enemy state variables
    CMP      #$10                      ; 0x13063 $B053 C9 10                   ;
    BNE      LB05A                     ; 0x13065 $B055 D0 03                   ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13067 $B057 20 91 DC;
LB05A:                                                                          ;
    LDA      $60,x                     ; 0x1306a $B05A B5 60                   ;; Enemy facing direction
    PHA                                ; 0x1306c $B05C 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x1306d $B05D 20 91 DC;
    PLA                                ; 0x13070 $B060 68                      ;
    STA      $60,x                     ; 0x13071 $B061 95 60                   ;; Enemy facing direction
    INY                                ; 0x13073 $B063 C8                      ;
    TYA                                ; 0x13074 $B064 98                      ;
    CMP      $60,x                     ; 0x13075 $B065 D5 60                   ;; Enemy facing direction
    BEQ      LB07A                     ; 0x13077 $B067 F0 11                   ;
    LDA      $71,x                     ; 0x13079 $B069 B5 71                   ;; Enemy X Velocity
    CLC                                ; 0x1307b $B06B 18                      ;
    ADC      #$08                      ; 0x1307c $B06C 69 08                   ;
    CMP      #$11                      ; 0x1307e $B06E C9 11                   ;
    BCS      LB07A                     ; 0x13080 $B070 B0 08                   ;
    LDA      $AF,x                     ; 0x13082 $B072 B5 AF                   ;; Various enemy state variables
    BNE      LB07A                     ; 0x13084 $B074 D0 04                   ;
    LDA      #$1F                      ; 0x13086 $B076 A9 1F                   ;;A = #$1f 0001_1111
    STA      $AF,x                     ; 0x13088 $B078 95 AF                   ;; Various enemy state variables
LB07A:                                                                          ;
    LDA      $0504,x                   ; 0x1308a $B07A BD 04 05                ;; Timer for Enemy
    BEQ      LB08D                     ; 0x1308d $B07D F0 0E                   ;
    LDA      $12                       ; 0x1308f $B07F A5 12                   ;; Frame Counter (ascending)
    ASL                                ; 0x13091 $B081 0A                      ;
LB082:                                                                          ;
    ASL                                ; 0x13092 $B082 0A                      ;
    LDA      #$00                      ; 0x13093 $B083 A9 00                   ;;A = #$00 0000_0000
    ROL                                ; 0x13095 $B085 2A                      ;
    TAY                                ; 0x13096 $B086 A8                      ;
    LDA      LAFB6,y                   ; 0x13097 $B087 B9 B6 AF                ;
    STA      $71,x                     ; 0x1309a $B08A 95 71                   ;; Enemy X Velocity
    RTS                                ; 0x1309c $B08C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB08D:                                                                          ;
    LDA      $12                       ; 0x1309d $B08D A5 12                   ;; Frame Counter (ascending)
    AND      #$01                      ; 0x1309f $B08F 29 01                   ;;Keep Bits:0000_0001
    BNE      LB0A9                     ; 0x130a1 $B091 D0 16                   ;
    LDA      $71,x                     ; 0x130a3 $B093 B5 71                   ;; Enemy X Velocity
    CMP      LAFB9,y                   ; 0x130a5 $B095 D9 B9 AF                ;
    BEQ      LB0A9                     ; 0x130a8 $B098 F0 0F                   ;
    LDA      $71,x                     ; 0x130aa $B09A B5 71                   ;; Enemy X Velocity
    CLC                                ; 0x130ac $B09C 18                      ;
    ADC      LAFB7,y                   ; 0x130ad $B09D 79 B7 AF                ;
    STA      $71,x                     ; 0x130b0 $B0A0 95 71                   ;; Enemy X Velocity
    BNE      LB0A9                     ; 0x130b2 $B0A2 D0 05                   ;
    LDA      #$53                      ; 0x130b4 $B0A4 A9 53                   ;;A = #$53 0101_0011
    STA      $0504,x                   ; 0x130b6 $B0A6 9D 04 05                ;; Timer for Enemy
LB0A9:                                                                          ;
    RTS                                ; 0x130b9 $B0A9 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB0AA:                                                                          ;
    PHP                                ; 0x130ba $B0AA 08                      ;
    SED                                ; 0x130bb $B0AB F8                      ;
    PHP                                ; 0x130bc $B0AC 08                      ;
LB0AD:                                                                          ;
    LDA      $12                       ; 0x130bd $B0AD A5 12                   ;; Frame Counter (ascending)
    BNE      LB0B6                     ; 0x130bf $B0AF D0 05                   ;
    LDA      #$D0                      ; 0x130c1 $B0B1 A9 D0                   ;;A = #$d0 1101_0000
    STA      $057E,x                   ; 0x130c3 $B0B3 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
LB0B6:                                                                          ;
    LDA      $AF,x                     ; 0x130c6 $B0B6 B5 AF                   ;; Various enemy state variables
    AND      #$7F                      ; 0x130c8 $B0B8 29 7F                   ;;Keep Bits:0111_1111
    BNE      LB0C1                     ; 0x130ca $B0BA D0 05                   ;
    LDA      #$10                      ; 0x130cc $B0BC A9 10                   ;;A = #$10 0001_0000
    STA      $0504,x                   ; 0x130ce $B0BE 9D 04 05                ;; Timer for Enemy
LB0C1:                                                                          ;
    LDA      $0504,x                   ; 0x130d1 $B0C1 BD 04 05                ;; Timer for Enemy
    CMP      #$01                      ; 0x130d4 $B0C4 C9 01                   ;
    BNE      LB0D7                     ; 0x130d6 $B0C6 D0 0F                   ;
    JSR      bank7_Spawn_New_Projectile; 0x130d8 $B0C8 20 CE DB                ;
    BCS      LB0D7                     ; 0x130db $B0CB B0 0A                   ;
    LDA      #$06                      ; 0x130dd $B0CD A9 06                   ;;A = #$06 0000_0110
    STA      $87,y                     ; 0x130df $B0CF 99 87 00                ;
    LDA      #$40                      ; 0x130e2 $B0D2 A9 40                   ;;A = #$40 0100_0000
    STA      $044C,y                   ; 0x130e4 $B0D4 99 4C 04                ;
LB0D7:                                                                          ;
    LDA      $AF,x                     ; 0x130e7 $B0D7 B5 AF                   ;; Various enemy state variables
    ASL                                ; 0x130e9 $B0D9 0A                      ;
    ASL                                ; 0x130ea $B0DA 0A                      ;
    LDA      #$00                      ; 0x130eb $B0DB A9 00                   ;;A = #$00 0000_0000
    ROL                                ; 0x130ed $B0DD 2A                      ;
    TAY                                ; 0x130ee $B0DE A8                      ;
    LDA      LB0AA,y                   ; 0x130ef $B0DF B9 AA B0                ;
    STA      $71,x                     ; 0x130f2 $B0E2 95 71                   ;; Enemy X Velocity
    JSR      bank7_Gravity             ; 0x130f4 $B0E4 20 BE DE                ;
    JSR      L9E17                     ; 0x130f7 $B0E7 20 17 9E                ;
    JSR      LDE3D                     ; 0x130fa $B0EA 20 3D DE                ;
    JSR      bank7_Link_Collision_Detection; 0x130fd $B0ED 20 C1 D6                ;
    LDA      $A8,x                     ; 0x13100 $B0F0 B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x13102 $B0F2 29 04                   ;;Keep Bits:0000_0100
    BEQ      LB0FB                     ; 0x13104 $B0F4 F0 05                   ;
    JSR      bank7_Floor_Y_Position    ; 0x13106 $B0F6 20 C1 DA                ;
    INC      $AF,x                     ; 0x13109 $B0F9 F6 AF                   ;; Various enemy state variables
LB0FB:                                                                          ;
    JMP      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x1310b $B0FB 4C 91 DC;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB0FE:                                                                          ;
    LDA      #$00                      ; 0x1310e $B0FE A9 00                   ;;A = #$00 0000_0000
    STA      $0499                     ; 0x13110 $B100 8D 99 04                ;
    LDA      #$F0                      ; 0x13113 $B103 A9 F0                   ;;A = #$f0 1111_0000
    STA      $2A,x                     ; 0x13115 $B105 95 2A                   ;; Enemy Y Position
LB107:                                                                          ;
    LDX      #$01                      ; 0x13117 $B107 A2 01                   ;;X = #$01 0000_0001
    JSR      LC2A6                     ; 0x13119 $B109 20 A6 C2                ;
    LDX      $10                       ; 0x1311c $B10C A6 10                   ;; used as monster x register ;draw boss hp bar
    CMP      #$00                      ; 0x1311e $B10E C9 00                   ;
    BNE      LB114                     ; 0x13120 $B110 D0 02                   ;
    STA      $B6,x                     ; 0x13122 $B112 95 B6                   ;; Generated Enemy Slot
LB114:                                                                          ;
    RTS                                ; 0x13124 $B114 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_B115:                                                               ;
.byt    $10,$F8                        ; 0x13125 $B115 10 F8                   ;
LB117:                                                                          ;
.byt    $18,$6B,$B8,$18,$6B,$B8,$18,$B8; 0x13127 $B117 18 6B B8 18 6B B8 18 B8 ;
; ---------------------------------------------------------------------------- ;
LB11F:                                                                          ;
    JSR      LB20D                     ; 0x1312f $B11F 20 0D B2                ;
    JSR      LB1DE                     ; 0x13132 $B122 20 DE B1                ;
    LDA      #$18                      ; 0x13135 $B125 A9 18                   ;;A = #$18 0001_1000
    JSR      L9C45                     ; 0x13137 $B127 20 45 9C                ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x1313a $B12A 20 91 DC;
    LDA      $050D                     ; 0x1313d $B12D AD 0D 05                ;
    BNE      LB153                     ; 0x13140 $B130 D0 21                   ;
    LDA      $0499                     ; 0x13142 $B132 AD 99 04                ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x13145 $B135 20 85 D3;
bank4_pointer_table_B138__involves_P6boss:                                      ;
.word    LB140                         ; 0x13148 $B138 40 B1                   ;
.word    LB154                         ; 0x1314a $B13A 54 B1                   ;
.word    LB16A                         ; 0x1314c $B13C 6A B1                   ;
.word    LB1C8                         ; 0x1314e $B13E C8 B1                   ;
; ---------------------------------------------------------------------------- ;
LB140:                                                                          ;
    LDA      $0504,x                   ; 0x13150 $B140 BD 04 05                ;; Timer for Enemy
    BNE      LB153                     ; 0x13153 $B143 D0 0E                   ;
    LDA      $051B,x                   ; 0x13155 $B145 BD 1B 05                ;; Randomizer
    AND      #$07                      ; 0x13158 $B148 29 07                   ;;Keep Bits:0000_0111
    TAY                                ; 0x1315a $B14A A8                      ;
    LDA      LB117,y                   ; 0x1315b $B14B B9 17 B1                ;
    STA      $4E,x                     ; 0x1315e $B14E 95 4E                   ;; Enemy X Position (low byte)
    INC      $0499                     ; 0x13160 $B150 EE 99 04                ;
LB153:                                                                          ;
    RTS                                ; 0x13163 $B153 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB154:                                                                          ;
    LDA      $2A,x                     ; 0x13164 $B154 B5 2A                   ;; Enemy Y Position
    CMP      #$80                      ; 0x13166 $B156 C9 80                   ;
    BCC      LB161                     ; 0x13168 $B158 90 07                   ;
    DEC      $2A,x                     ; 0x1316a $B15A D6 2A                   ;; Enemy Y Position
    DEC      $2A,x                     ; 0x1316c $B15C D6 2A                   ;; Enemy Y Position
    DEC      $2A,x                     ; 0x1316e $B15E D6 2A                   ;; Enemy Y Position
    RTS                                ; 0x13170 $B160 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB161:                                                                          ;
    LDA      #$A0                      ; 0x13171 $B161 A9 A0                   ;;A = #$a0 1010_0000
    STA      $0504,x                   ; 0x13173 $B163 9D 04 05                ;; Timer for Enemy
    INC      $0499                     ; 0x13176 $B166 EE 99 04                ;
    RTS                                ; 0x13179 $B169 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB16A:                                                                          ;
    LDA      $0504,x                   ; 0x1317a $B16A BD 04 05                ;; Timer for Enemy
    BEQ      LB1BF                     ; 0x1317d $B16D F0 50                   ;
    AND      #$01                      ; 0x1317f $B16F 29 01                   ;;Keep Bits:0000_0001
    BNE      LB180                     ; 0x13181 $B171 D0 0D                   ;
    INC      $2A,x                     ; 0x13183 $B173 F6 2A                   ;; Enemy Y Position
    LDA      $0504,x                   ; 0x13185 $B175 BD 04 05                ;; Timer for Enemy
    AND      #$20                      ; 0x13188 $B178 29 20                   ;;Keep Bits:0010_0000
    BNE      LB180                     ; 0x1318a $B17A D0 04                   ;
    DEC      $2A,x                     ; 0x1318c $B17C D6 2A                   ;; Enemy Y Position
    DEC      $2A,x                     ; 0x1318e $B17E D6 2A                   ;; Enemy Y Position
LB180:                                                                          ;
    LDA      $0504,x                   ; 0x13190 $B180 BD 04 05                ;; Timer for Enemy
    SBC      #$30                      ; 0x13193 $B183 E9 30                   ;
    CMP      #$30                      ; 0x13195 $B185 C9 30                   ;
    BCS      LB1BE                     ; 0x13197 $B187 B0 35                   ;
    LDA      $0504,x                   ; 0x13199 $B189 BD 04 05                ;; Timer for Enemy
    AND      #$30                      ; 0x1319c $B18C 29 30                   ;;Keep Bits:0011_0000
    BNE      LB1BE                     ; 0x1319e $B18E D0 2E                   ;
    LDA      $12                       ; 0x131a0 $B190 A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x131a2 $B192 4A                      ;
    BCC      LB1BE                     ; 0x131a3 $B193 90 29                   ;
    JSR      L9BE5                     ; 0x131a5 $B195 20 E5 9B                ;
    BCS      LB1BE                     ; 0x131a8 $B198 B0 24                   ;
    LDA      #$04                      ; 0x131aa $B19A A9 04                   ;;A = #$04 0000_0100
    STA      $87,y                     ; 0x131ac $B19C 99 87 00                ;
    TYA                                ; 0x131af $B19F 98                      ;
    TAX                                ; 0x131b0 $B1A0 AA                      ;
    ASL      $77,x                     ; 0x131b1 $B1A1 16 77                   ;; Projectile X Velocity
    ASL      $77,x                     ; 0x131b3 $B1A3 16 77                   ;; Projectile X Velocity
    ASL      $0584,x                   ; 0x131b5 $B1A5 1E 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
    ASL      $0584,x                   ; 0x131b8 $B1A8 1E 84 05                ;; Projectile Y Velocity; Projectile Y Velocity
    DEC      $30,x                     ; 0x131bb $B1AB D6 30                   ;; Projectile Y Position
    DEC      $30,x                     ; 0x131bd $B1AD D6 30                   ;; Projectile Y Position
    DEC      $30,x                     ; 0x131bf $B1AF D6 30                   ;; Projectile Y Position
    LDY      $66,x                     ; 0x131c1 $B1B1 B4 66                   ;; Projectile facing direction
    LDA      $049A                     ; 0x131c3 $B1B3 AD 9A 04                ;
    CLC                                ; 0x131c6 $B1B6 18                      ;
    ADC      LB114,y                   ; 0x131c7 $B1B7 79 14 B1                ;
    STA      $54,x                     ; 0x131ca $B1BA 95 54                   ;; Projectile X Position (low byte)
    LDX      $10                       ; 0x131cc $B1BC A6 10                   ;; used as monster x register ;draw boss hp bar
LB1BE:                                                                          ;
    RTS                                ; 0x131ce $B1BE 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB1BF:                                                                          ;
    LDA      #$80                      ; 0x131cf $B1BF A9 80                   ;;A = #$80 1000_0000
    STA      $0504,x                   ; 0x131d1 $B1C1 9D 04 05                ;; Timer for Enemy
    INC      $0499                     ; 0x131d4 $B1C4 EE 99 04                ;
    RTS                                ; 0x131d7 $B1C7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB1C8:                                                                          ;
    LDA      $2A,x                     ; 0x131d8 $B1C8 B5 2A                   ;; Enemy Y Position
    CMP      #$F0                      ; 0x131da $B1CA C9 F0                   ;
    BCS      LB1D3                     ; 0x131dc $B1CC B0 05                   ;
    INC      $2A,x                     ; 0x131de $B1CE F6 2A                   ;; Enemy Y Position
    INC      $2A,x                     ; 0x131e0 $B1D0 F6 2A                   ;; Enemy Y Position
    RTS                                ; 0x131e2 $B1D2 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB1D3:                                                                          ;
    LDA      #$00                      ; 0x131e3 $B1D3 A9 00                   ;;A = #$00 0000_0000
    STA      $0499                     ; 0x131e5 $B1D5 8D 99 04                ;
    LDA      #$60                      ; 0x131e8 $B1D8 A9 60                   ;;A = #$60 0110_0000
    STA      $0504,x                   ; 0x131ea $B1DA 9D 04 05                ;; Timer for Enemy
    RTS                                ; 0x131ed $B1DD 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB1DE:                                                                          ;
    LDA      $12                       ; 0x131ee $B1DE A5 12                   ;; Frame Counter (ascending)
    ASL                                ; 0x131f0 $B1E0 0A                      ;
    BNE      LB1E3                     ; 0x131f1 $B1E1 D0 00                   ;
LB1E3:                                                                          ;
    JSR      bank7_Display             ; 0x131f3 $B1E3 20 11 EF                ;
    JSR      bank7_Link_Collision_Detection; 0x131f6 $B1E6 20 C1 D6                ;
LB1E9:                                                                          ;
    LDA      $A1,x                     ; 0x131f9 $B1E9 B5 A1                   ;; Enemy Code
    CMP      #$22                      ; 0x131fb $B1EB C9 22                   ;
    BEQ      LB1F6                     ; 0x131fd $B1ED F0 07                   ;
    LDA      $C9                       ; 0x131ff $B1EF A5 C9                   ;
    BNE      LB1F6                     ; 0x13201 $B1F1 D0 03                   ;
    JSR      LDE40                     ; 0x13203 $B1F3 20 40 DE                ;
LB1F6:                                                                          ;
    LDA      #$01                      ; 0x13206 $B1F6 A9 01                   ;;A = #$01 0000_0001
    CMP      $B6,x                     ; 0x13208 $B1F8 D5 B6                   ;; Generated Enemy Slot
    BEQ      LB20C                     ; 0x1320a $B1FA F0 10                   ;
    STA      $B6,x                     ; 0x1320c $B1FC 95 B6                   ;; Generated Enemy Slot
    LDA      #$FF                      ; 0x1320e $B1FE A9 FF                   ;;A = #$ff 1111_1111
    LDY      $A1,x                     ; 0x13210 $B200 B4 A1                   ;; Enemy Code
    STA      $6E1D,y                   ; 0x13212 $B202 99 1D 6E                ;
    STA      $0504,x                   ; 0x13215 $B205 9D 04 05                ;; Timer for Enemy
    LSR                                ; 0x13218 $B208 4A                      ;
    STA      $040E,x                   ; 0x13219 $B209 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
LB20C:                                                                          ;
    RTS                                ; 0x1321c $B20C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB20D:                                                                          ;
    LDA      $0728                     ; 0x1321d $B20D AD 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    BNE      LB225                     ; 0x13220 $B210 D0 13                   ;
    LDA      $072A                     ; 0x13222 $B212 AD 2A 07                ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    BEQ      LB23C                     ; 0x13225 $B215 F0 25                   ;
    LDA      #$FF                      ; 0x13227 $B217 A9 FF                   ;;A = #$ff 1111_1111
    STA      $050D                     ; 0x13229 $B219 8D 0D 05                ;
    LDA      #$08                      ; 0x1322c $B21C A9 08                   ;;A = #$08 0000_1000
    STA      $EB                       ; 0x1322e $B21E 85 EB                   ;; Music; Music
    INC      $0728                     ; 0x13230 $B220 EE 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    BNE      LB23C                     ; 0x13233 $B223 D0 17                   ;
LB225:                                                                          ;
    LDY      $A1,x                     ; 0x13235 $B225 B4 A1                   ;; Enemy Code
    LDA      $6E1D,y                   ; 0x13237 $B227 B9 1D 6E                ;
    BPL      LB23E                     ; 0x1323a $B22A 10 12                   ;
    LDY      $040E,x                   ; 0x1323c $B22C BC 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    BNE      LB239                     ; 0x1323f $B22F D0 08                   ;
    LDA      #$80                      ; 0x13241 $B231 A9 80                   ;;A = #$80 1000_0000
    INC      $B6,x                     ; 0x13243 $B233 F6 B6                   ;; Generated Enemy Slot
    LDA      #$80                      ; 0x13245 $B235 A9 80                   ;;A = #$80 1000_0000
    STA      $EB                       ; 0x13247 $B237 85 EB                   ;; Music; Music
LB239:                                                                          ;
    JSR      bank7_Display             ; 0x13249 $B239 20 11 EF                ;
LB23C:                                                                          ;
    PLA                                ; 0x1324c $B23C 68                      ;
    PLA                                ; 0x1324d $B23D 68                      ;
LB23E:                                                                          ;
    RTS                                ; 0x1324e $B23E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB23F:                                                                          ;
    LDY      $A1,x                     ; 0x1324f $B23F B4 A1                   ;; Enemy Code
    LDA      $6E1D,y                   ; 0x13251 $B241 B9 1D 6E                ;
    BMI      LB260                     ; 0x13254 $B244 30 1A                   ;
    LDA      $0728                     ; 0x13256 $B246 AD 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    BEQ      LB250                     ; 0x13259 $B249 F0 05                   ;
    LDA      #$06                      ; 0x1325b $B24B A9 06                   ;;A = #$06 0000_0110
    JSR      L9C45                     ; 0x1325d $B24D 20 45 9C                ;
LB250:                                                                          ;
    JSR      bank7_Display             ; 0x13260 $B250 20 11 EF                ;
    JSR      LE617                     ; 0x13263 $B253 20 17 E6                ;
    LDA      $12                       ; 0x13266 $B256 A5 12                   ;; Frame Counter (ascending)
    AND      #$40                      ; 0x13268 $B258 29 40                   ;;Keep Bits:0100_0000
    STA      $0401,x                   ; 0x1326a $B25A 9D 01 04                ;
    JSR      bank4_Enemy_Routines_Iron_Knuckle; 0x1326d $B25D 20 8C 9C             ;
LB260:                                                                          ;
    JSR      LB20D                     ; 0x13270 $B260 20 0D B2                ;
    JMP      LB1E9                     ; 0x13273 $B263 4C E9 B1                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_B266:                                                               ;
.byt    $00,$10,$20,$30,$40,$50,$60,$70; 0x13276 $B266 00 10 20 30 40 50 60 70 ;
.byt    $00,$10,$20,$30,$40,$50,$60,$70; 0x1327e $B26E 00 10 20 30 40 50 60 70 ;
LB276:                                                                          ;
.byt    $00,$01,$02,$01,$00,$FF,$FE,$FF; 0x13286 $B276 00 01 02 01 00 FF FE FF ;
.byt    $00,$01,$02,$01,$00,$FF,$FE    ; 0x1328e $B27E 00 01 02 01 00 FF FE    ;
LB285:                                                                          ;
.byt    $FF,$10,$F0                    ; 0x13295 $B285 FF 10 F0                ;
LB288:                                                                          ;
.byt    $9E,$9C,$9A,$9C                ; 0x13298 $B288 9E 9C 9A 9C             ;
LB28C:                                                                          ;
.byt    $88,$76,$64,$76                ; 0x1329c $B28C 88 76 64 76             ;
LB290:                                                                          ;
.byt    $A5,$00                        ; 0x132a0 $B290 A5 00                   ;
; ---------------------------------------------------------------------------- ;
    STA      $0D                       ; 0x132a2 $B292 85 0D                   ;
    LDA      #$E8                      ; 0x132a4 $B294 A9 E8                   ;;A = #$e8 1110_1000
    SEC                                ; 0x132a6 $B296 38                      ;
    SBC      L0000                     ; 0x132a7 $B297 E5 00                   ;
    BCC      LB304                     ; 0x132a9 $B299 90 69                   ;
    LSR                                ; 0x132ab $B29B 4A                      ;
    LSR                                ; 0x132ac $B29C 4A                      ;
    LSR                                ; 0x132ad $B29D 4A                      ;
    LSR                                ; 0x132ae $B29E 4A                      ;
    AND      #$07                      ; 0x132af $B29F 29 07                   ;;Keep Bits:0000_0111
    STA      $D9                       ; 0x132b1 $B2A1 85 D9                   ;; Thunder Spell modifier ?
    LDA      $0504,x                   ; 0x132b3 $B2A3 BD 04 05                ;; Timer for Enemy
    STA      $06                       ; 0x132b6 $B2A6 85 06                   ;
    LDX      #$64                      ; 0x132b8 $B2A8 A2 64                   ;;X = #$64 0110_0100
    LDY      $0499                     ; 0x132ba $B2AA AC 99 04                ;
    CPY      #$02                      ; 0x132bd $B2AD C0 02                   ;
    BNE      LB2C3                     ; 0x132bf $B2AF D0 12                   ;
    SBC      #$30                      ; 0x132c1 $B2B1 E9 30                   ;
    CMP      #$30                      ; 0x132c3 $B2B3 C9 30                   ;
    BCS      LB2C3                     ; 0x132c5 $B2B5 B0 0C                   ;
    LDA      $06                       ; 0x132c7 $B2B7 A5 06                   ;
    AND      #$30                      ; 0x132c9 $B2B9 29 30                   ;;Keep Bits:0011_0000
    LSR                                ; 0x132cb $B2BB 4A                      ;
    LSR                                ; 0x132cc $B2BC 4A                      ;
    LSR                                ; 0x132cd $B2BD 4A                      ;
    LSR                                ; 0x132ce $B2BE 4A                      ;
    TAY                                ; 0x132cf $B2BF A8                      ;
    LDX      LB28C,y                   ; 0x132d0 $B2C0 BE 8C B2                ;
LB2C3:                                                                          ;
    LDY      #$48                      ; 0x132d3 $B2C3 A0 48                   ;;Y = #$48 0100_1000
    LDA      #$00                      ; 0x132d5 $B2C5 A9 00                   ;;A = #$00 0000_0000
    STA      L000E                     ; 0x132d7 $B2C7 85 0E                   ;
LB2C9:                                                                          ;
    TYA                                ; 0x132d9 $B2C9 98                      ;
    PHA                                ; 0x132da $B2CA 48                      ;
    LDY      L000E                     ; 0x132db $B2CB A4 0E                   ;
    LDA      $0D                       ; 0x132dd $B2CD A5 0D                   ;
    CLC                                ; 0x132df $B2CF 18                      ;
    ADC      bank4_table_B266,y        ; 0x132e0 $B2D0 79 66 B2                ;
    STA      L0000                     ; 0x132e3 $B2D3 85 00                   ;
    LDA      $12                       ; 0x132e5 $B2D5 A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x132e7 $B2D7 4A                      ;
    LSR                                ; 0x132e8 $B2D8 4A                      ;
    LSR                                ; 0x132e9 $B2D9 4A                      ;
    AND      #$07                      ; 0x132ea $B2DA 29 07                   ;;Keep Bits:0000_0111
    CLC                                ; 0x132ec $B2DC 18                      ;
    ADC      L000E                     ; 0x132ed $B2DD 65 0E                   ;
    TAY                                ; 0x132ef $B2DF A8                      ;
    LDA      LB276,y                   ; 0x132f0 $B2E0 B9 76 B2                ;
    LDY      $0499                     ; 0x132f3 $B2E3 AC 99 04                ;
    CPY      #$02                      ; 0x132f6 $B2E6 C0 02                   ;
    BNE      LB2EB                     ; 0x132f8 $B2E8 D0 01                   ;
    ASL                                ; 0x132fa $B2EA 0A                      ;
LB2EB:                                                                          ;
    CLC                                ; 0x132fb $B2EB 18                      ;
    ADC      $CD                       ; 0x132fc $B2EC 65 CD                   ;
    STA      $01                       ; 0x132fe $B2EE 85 01                   ;
    PLA                                ; 0x13300 $B2F0 68                      ;
    TAY                                ; 0x13301 $B2F1 A8                      ;
    CPY      #$48                      ; 0x13302 $B2F2 C0 48                   ;
    BNE      LB2FB                     ; 0x13304 $B2F4 D0 05                   ;
    LDA      $01                       ; 0x13306 $B2F6 A5 01                   ;
    STA      $049A                     ; 0x13308 $B2F8 8D 9A 04                ;
LB2FB:                                                                          ;
    JSR      LF1F4                     ; 0x1330b $B2FB 20 F4 F1                ;
    INC      L000E                     ; 0x1330e $B2FE E6 0E                   ;
    DEC      $D9                       ; 0x13310 $B300 C6 D9                   ;; Thunder Spell modifier ?
    BPL      LB2C9                     ; 0x13312 $B302 10 C5                   ;
LB304:                                                                          ;
    LDX      $10                       ; 0x13314 $B304 A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $0504,x                   ; 0x13316 $B306 BD 04 05                ;; Timer for Enemy
    STA      $07                       ; 0x13319 $B309 85 07                   ;
    LDA      $0D                       ; 0x1331b $B30B A5 0D                   ;
    STA      L0000                     ; 0x1331d $B30D 85 00                   ;
    LDX      $02                       ; 0x1331f $B30F A6 02                   ;
    LDA      $049A                     ; 0x13321 $B311 AD 9A 04                ;
    CLC                                ; 0x13324 $B314 18                      ;
    ADC      LB285,x                   ; 0x13325 $B315 7D 85 B2                ;
    STA      $01                       ; 0x13328 $B318 85 01                   ;
    LDX      #$9A                      ; 0x1332a $B31A A2 9A                   ;;X = #$9a 1001_1010
    LDA      $0499                     ; 0x1332c $B31C AD 99 04                ;
    CMP      #$02                      ; 0x1332f $B31F C9 02                   ;
    BNE      LB339                     ; 0x13331 $B321 D0 16                   ;
    LDA      $07                       ; 0x13333 $B323 A5 07                   ;
    SEC                                ; 0x13335 $B325 38                      ;
    SBC      #$30                      ; 0x13336 $B326 E9 30                   ;
    CMP      #$30                      ; 0x13338 $B328 C9 30                   ;
    BCS      LB339                     ; 0x1333a $B32A B0 0D                   ;
    LDA      $07                       ; 0x1333c $B32C A5 07                   ;
    AND      #$30                      ; 0x1333e $B32E 29 30                   ;;Keep Bits:0011_0000
    LSR                                ; 0x13340 $B330 4A                      ;
    LSR                                ; 0x13341 $B331 4A                      ;
    LSR                                ; 0x13342 $B332 4A                      ;
    LSR                                ; 0x13343 $B333 4A                      ;
    TAX                                ; 0x13344 $B334 AA                      ;
    LDA      LB288,x                   ; 0x13345 $B335 BD 88 B2                ;
    TAX                                ; 0x13348 $B338 AA                      ;
LB339:                                                                          ;
    JMP      LF0D7                     ; 0x13349 $B339 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB33C:                                                                          ;
    ASL      $71,x                     ; 0x1334c $B33C 16 71                   ;; Enemy X Velocity
LB33E:                                                                          ;
    RTS                                ; 0x1334e $B33E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_B33F:                                                               ;
.byt    $0C,$F4,$14,$EC                ; 0x1334f $B33F 0C F4 14 EC             ;
; ---------------------------------------------------------------------------- ;
LB343:                                                                          ;
    JSR      bank4_Enemy_Routines_Mau_Generator; 0x13353 $B343 20 61 B8            ;
    BCS      LB361                     ; 0x13356 $B346 B0 19                   ;
    LDX      L0000                     ; 0x13358 $B348 A6 00                   ;
    LDA      #$B0                      ; 0x1335a $B34A A9 B0                   ;;A = #$b0 1011_0000
    STA      $2A,x                     ; 0x1335c $B34C 95 2A                   ;; Enemy Y Position
    LDA      #$0C                      ; 0x1335e $B34E A9 0C                   ;;A = #$0c 0000_1100
    STA      $A1,x                     ; 0x13360 $B350 95 A1                   ;; Enemy Code
    LDA      $051B,x                   ; 0x13362 $B352 BD 1B 05                ;; Randomizer
    AND      #$02                      ; 0x13365 $B355 29 02                   ;;Keep Bits:0000_0010
    ADC      $60,x                     ; 0x13367 $B357 75 60                   ;; Enemy facing direction
    TAY                                ; 0x13369 $B359 A8                      ;
    LDA      LB33E,y                   ; 0x1336a $B35A B9 3E B3                ;
    STA      $71,x                     ; 0x1336d $B35D 95 71                   ;; Enemy X Velocity
    LDX      $10                       ; 0x1336f $B35F A6 10                   ;; used as monster x register ;draw boss hp bar
LB361:                                                                          ;
    RTS                                ; 0x13371 $B361 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB362:                                                                          ;
    JSR      LDE3D                     ; 0x13372 $B362 20 3D DE                ;
    JSR      bank7_Link_Collision_Detection; 0x13375 $B365 20 C1 D6                ;
    LDA      $A8,x                     ; 0x13378 $B368 B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x1337a $B36A 29 04                   ;;Keep Bits:0000_0100
    BEQ      LB37B                     ; 0x1337c $B36C F0 0D                   ;
    LDA      $2A,x                     ; 0x1337e $B36E B5 2A                   ;; Enemy Y Position
    AND      #$F8                      ; 0x13380 $B370 29 F8                   ;;Keep Bits:1111_1000
    STA      $2A,x                     ; 0x13382 $B372 95 2A                   ;; Enemy Y Position
    LDA      #$F0                      ; 0x13384 $B374 A9 F0                   ;;A = #$f0 1111_0000
    STA      $057E,x                   ; 0x13386 $B376 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    INC      $AF,x                     ; 0x13389 $B379 F6 AF                   ;; Various enemy state variables
LB37B:                                                                          ;
    JSR      bank7_Gravity             ; 0x1338b $B37B 20 BE DE                ;
    LDA      $A8,x                     ; 0x1338e $B37E B5 A8                   ;; Enemy State
    AND      #$03                      ; 0x13390 $B380 29 03                   ;;Keep Bits:0000_0011
    BEQ      LB387                     ; 0x13392 $B382 F0 03                   ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x13394 $B384 20 EB E8;
LB387:                                                                          ;
    JMP      bank7_Simple_Horizontal_Movement; 0x13397 $B387 4C B8 DE              ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB38A:                                                                          ;
    INC      L0000                     ; 0x1339a $B38A E6 00                   ;
    LDA      $AF,x                     ; 0x1339c $B38C B5 AF                   ;; Various enemy state variables
    LDX      #$B8                      ; 0x1339e $B38E A2 B8                   ;;X = #$b8 1011_1000
    LSR                                ; 0x133a0 $B390 4A                      ;
    BCC      LB395                     ; 0x133a1 $B391 90 02                   ;
    LDX      #$BC                      ; 0x133a3 $B393 A2 BC                   ;;X = #$bc 1011_1100
LB395:                                                                          ;
    JMP      LB477                     ; 0x133a5 $B395 4C 77 B4                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_B398:                                                               ;
.byt    $00,$FE,$FC,$FA,$F8,$FA,$FC,$FE; 0x133a8 $B398 00 FE FC FA F8 FA FC FE ;
.byt    $00,$02,$04,$06,$08,$06,$04,$02; 0x133b0 $B3A0 00 02 04 06 08 06 04 02 ;
; ---------------------------------------------------------------------------- ;
LB3A8:                                                                          ;
    LDA      $AF,x                     ; 0x133b8 $B3A8 B5 AF                   ;; Various enemy state variables
    LSR                                ; 0x133ba $B3AA 4A                      ;
    LSR                                ; 0x133bb $B3AB 4A                      ;
    STA      $D9                       ; 0x133bc $B3AC 85 D9                   ;; Thunder Spell modifier ?
    LDY      $02                       ; 0x133be $B3AE A4 02                   ;
    LDA      $C9                       ; 0x133c0 $B3B0 A5 C9                   ;
    PHA                                ; 0x133c2 $B3B2 48                      ;
    PHA                                ; 0x133c3 $B3B3 48                      ;
    CPY      #$01                      ; 0x133c4 $B3B4 C0 01                   ;
    BNE      LB3C6                     ; 0x133c6 $B3B6 D0 0E                   ;
    LDA      $CD                       ; 0x133c8 $B3B8 A5 CD                   ;
    ADC      #$0F                      ; 0x133ca $B3BA 69 0F                   ;
    STA      $01                       ; 0x133cc $B3BC 85 01                   ;
    LDA      $C9                       ; 0x133ce $B3BE A5 C9                   ;
    ASL                                ; 0x133d0 $B3C0 0A                      ;
    ASL                                ; 0x133d1 $B3C1 0A                      ;
    AND      #$0F                      ; 0x133d2 $B3C2 29 0F                   ;;Keep Bits:0000_1111
    STA      $C9                       ; 0x133d4 $B3C4 85 C9                   ;
LB3C6:                                                                          ;
    DEY                                ; 0x133d6 $B3C6 88                      ;
    TYA                                ; 0x133d7 $B3C7 98                      ;
    ASL                                ; 0x133d8 $B3C8 0A                      ;
    ASL                                ; 0x133d9 $B3C9 0A                      ;
    ASL                                ; 0x133da $B3CA 0A                      ;
    ADC      $D9                       ; 0x133db $B3CB 65 D9                   ;; Thunder Spell modifier ?
    TAY                                ; 0x133dd $B3CD A8                      ;
    LDA      $01                       ; 0x133de $B3CE A5 01                   ;
    ADC      bank4_table_B398,y        ; 0x133e0 $B3D0 79 98 B3                ;
    STA      $01                       ; 0x133e3 $B3D3 85 01                   ;
    LDY      #$50                      ; 0x133e5 $B3D5 A0 50                   ;;Y = #$50 0101_0000
    LDX      #$58                      ; 0x133e7 $B3D7 A2 58                   ;;X = #$58 0101_1000
    JSR      LB477                     ; 0x133e9 $B3D9 20 77 B4                ;
    LDA      $2A,x                     ; 0x133ec $B3DC B5 2A                   ;; Enemy Y Position
    STA      L0000                     ; 0x133ee $B3DE 85 00                   ;
    LDY      $02                       ; 0x133f0 $B3E0 A4 02                   ;
    PLA                                ; 0x133f2 $B3E2 68                      ;
    STA      $C9                       ; 0x133f3 $B3E3 85 C9                   ;
    LDA      $CD                       ; 0x133f5 $B3E5 A5 CD                   ;
    STA      $01                       ; 0x133f7 $B3E7 85 01                   ;
    CPY      #$02                      ; 0x133f9 $B3E9 C0 02                   ;
    BNE      LB3F9                     ; 0x133fb $B3EB D0 0C                   ;
    ADC      #$0F                      ; 0x133fd $B3ED 69 0F                   ;
    STA      $01                       ; 0x133ff $B3EF 85 01                   ;
    LDA      $C9                       ; 0x13401 $B3F1 A5 C9                   ;
    ASL                                ; 0x13403 $B3F3 0A                      ;
    ASL                                ; 0x13404 $B3F4 0A                      ;
    AND      #$0F                      ; 0x13405 $B3F5 29 0F                   ;;Keep Bits:0000_1111
    STA      $C9                       ; 0x13407 $B3F7 85 C9                   ;
LB3F9:                                                                          ;
    LDA      $81,x                     ; 0x13409 $B3F9 B5 81                   ;; Current Animation Frame for Enemys
    LDX      #$5C                      ; 0x1340b $B3FB A2 5C                   ;;X = #$5c 0101_1100
    ASL                                ; 0x1340d $B3FD 0A                      ;
    BEQ      LB402                     ; 0x1340e $B3FE F0 02                   ;
    LDX      #$60                      ; 0x13410 $B400 A2 60                   ;;X = #$60 0110_0000
LB402:                                                                          ;
    DEY                                ; 0x13412 $B402 88                      ;
    TYA                                ; 0x13413 $B403 98                      ;
    EOR      #$01                      ; 0x13414 $B404 49 01                   ;;Flip Bits:0000_0001
    ASL                                ; 0x13416 $B406 0A                      ;
    ASL                                ; 0x13417 $B407 0A                      ;
    ASL                                ; 0x13418 $B408 0A                      ;
    ADC      $D9                       ; 0x13419 $B409 65 D9                   ;; Thunder Spell modifier ?
    TAY                                ; 0x1341b $B40B A8                      ;
    LDA      $01                       ; 0x1341c $B40C A5 01                   ;
    ADC      bank4_table_B398,y        ; 0x1341e $B40E 79 98 B3                ;
    STA      $01                       ; 0x13421 $B411 85 01                   ;
    LDY      #$60                      ; 0x13423 $B413 A0 60                   ;;Y = #$60 0110_0000
    JSR      LB477                     ; 0x13425 $B415 20 77 B4                ;
    LDA      $12                       ; 0x13428 $B418 A5 12                   ;; Frame Counter (ascending)
    AND      #$10                      ; 0x1342a $B41A 29 10                   ;;Keep Bits:0001_0000
    BEQ      LB424                     ; 0x1342c $B41C F0 06                   ;
    INC      $0260                     ; 0x1342e $B41E EE 60 02                ;
    INC      $0264                     ; 0x13431 $B421 EE 64 02                ;
LB424:                                                                          ;
    PLA                                ; 0x13434 $B424 68                      ;
    STA      $C9                       ; 0x13435 $B425 85 C9                   ;
    LDA      #$48                      ; 0x13437 $B427 A9 48                   ;;A = #$48 0100_1000
    STA      $91,x                     ; 0x13439 $B429 95 91                   ;
    RTS                                ; 0x1343b $B42B 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB42C:                                                                          ;
    LDA      $AF,x                     ; 0x1343c $B42C B5 AF                   ;; Various enemy state variables
    LDX      #$1E                      ; 0x1343e $B42E A2 1E                   ;;X = #$1e 0001_1110
    CMP      #$C0                      ; 0x13440 $B430 C9 C0                   ;
    BCS      LB436                     ; 0x13442 $B432 B0 02                   ;
    LDX      #$1A                      ; 0x13444 $B434 A2 1A                   ;;X = #$1a 0001_1010
LB436:                                                                          ;
    JMP      LB477                     ; 0x13446 $B436 4C 77 B4                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB439:                                                                          ;
    LDA      $01                       ; 0x13449 $B439 A5 01                   ;
    CLC                                ; 0x1344b $B43B 18                      ;
    ADC      #$10                      ; 0x1344c $B43C 69 10                   ;
    STA      $D9                       ; 0x1344e $B43E 85 D9                   ;; Thunder Spell modifier ?
    LDA      $02                       ; 0x13450 $B440 A5 02                   ;
    CMP      #$01                      ; 0x13452 $B442 C9 01                   ;
    BNE      LB44F                     ; 0x13454 $B444 D0 09                   ;
    LDA      $CD                       ; 0x13456 $B446 A5 CD                   ;
    STA      $D9                       ; 0x13458 $B448 85 D9                   ;; Thunder Spell modifier ?
    CLC                                ; 0x1345a $B44A 18                      ;
    ADC      #$10                      ; 0x1345b $B44B 69 10                   ;
    STA      $01                       ; 0x1345d $B44D 85 01                   ;
LB44F:                                                                          ;
    LDA      $AF,x                     ; 0x1345f $B44F B5 AF                   ;; Various enemy state variables
    LDX      #$A0                      ; 0x13461 $B451 A2 A0                   ;;X = #$a0 1010_0000
    CMP      #$F0                      ; 0x13463 $B453 C9 F0                   ;
    BCS      LB459                     ; 0x13465 $B455 B0 02                   ;
    LDX      #$AC                      ; 0x13467 $B457 A2 AC                   ;;X = #$ac 1010_1100
LB459:                                                                          ;
    JSR      LF1F4                     ; 0x13469 $B459 20 F4 F1                ;
    JSR      LF1F4                     ; 0x1346c $B45C 20 F4 F1                ;
    JSR      LF0D7                     ; 0x1346f $B45F 20 D7 F0                ;
    LDA      $D9                       ; 0x13472 $B462 A5 D9                   ;; Thunder Spell modifier ?
    STA      $01                       ; 0x13474 $B464 85 01                   ;
    LDA      $2A,x                     ; 0x13476 $B466 B5 2A                   ;; Enemy Y Position
    STA      L0000                     ; 0x13478 $B468 85 00                   ;
    LDA      $AF,x                     ; 0x1347a $B46A B5 AF                   ;; Various enemy state variables
    LDX      #$A6                      ; 0x1347c $B46C A2 A6                   ;;X = #$a6 1010_0110
    CMP      #$F0                      ; 0x1347e $B46E C9 F0                   ;
    BCS      LB474                     ; 0x13480 $B470 B0 02                   ;
    LDX      #$B2                      ; 0x13482 $B472 A2 B2                   ;;X = #$b2 1011_0010
LB474:                                                                          ;
    JSR      LF1F4                     ; 0x13484 $B474 20 F4 F1                ;
LB477:                                                                          ;
    JSR      LF1F4                     ; 0x13487 $B477 20 F4 F1                ;
    JMP      LF0D7                     ; 0x1348a $B47A 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB47D:                                                                          ;
    LDA      $4E,x                     ; 0x1348d $B47D B5 4E                   ;; Enemy X Position (low byte)
    CLC                                ; 0x1348f $B47F 18                      ;
    ADC      #$04                      ; 0x13490 $B480 69 04                   ;
    STA      $4E,x                     ; 0x13492 $B482 95 4E                   ;; Enemy X Position (low byte)
    RTS                                ; 0x13494 $B484 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB485:                                                                          ;
    JSR      bank7_Enemy_Routines1_Red_Jar; 0x13495 $B485 20 59 D9                ;
    JMP      bank7_Link_Collision_Detection; 0x13498 $B488 4C C1 D6                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB48B:                                                                          ;
    LDA      $C9                       ; 0x1349b $B48B A5 C9                   ;
    AND      #$08                      ; 0x1349d $B48D 29 08                   ;;Keep Bits:0000_1000
    BNE      LB4AC                     ; 0x1349f $B48F D0 1B                   ;
    LDA      L0000                     ; 0x134a1 $B491 A5 00                   ;
    STA      $0200,y                   ; 0x134a3 $B493 99 00 02                ;
    LDA      $01                       ; 0x134a6 $B496 A5 01                   ;
    STA      $0203,y                   ; 0x134a8 $B498 99 03 02                ;
    LDA      #$52                      ; 0x134ab $B49B A9 52                   ;;A = #$52 0101_0010
    STA      $0201,y                   ; 0x134ad $B49D 99 01 02                ;
    LDA      $12                       ; 0x134b0 $B4A0 A5 12                   ;; Frame Counter (ascending)
    AND      #$04                      ; 0x134b2 $B4A2 29 04                   ;;Keep Bits:0000_0100
    ASL                                ; 0x134b4 $B4A4 0A                      ;
    ASL                                ; 0x134b5 $B4A5 0A                      ;
    SEC                                ; 0x134b6 $B4A6 38                      ;
    ROL                                ; 0x134b7 $B4A7 2A                      ;
    ASL                                ; 0x134b8 $B4A8 0A                      ;
    STA      $0202,y                   ; 0x134b9 $B4A9 99 02 02                ;
LB4AC:                                                                          ;
    RTS                                ; 0x134bc $B4AC 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB4AD:                                                                          ;
    LDA      #$06                      ; 0x134bd $B4AD A9 06                   ;;A = #$06 0000_0110
    STA      $0444,x                   ; 0x134bf $B4AF 9D 44 04                ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
    JSR      LBE8B                     ; 0x134c2 $B4B2 20 8B BE                ;
    JSR      bank4_Related_to_Horsehead; 0x134c5 $B4B5 20 4E BC                ;
    JSR      LE579                     ; 0x134c8 $B4B8 20 79 E5                ;
    JSR      LB53B                     ; 0x134cb $B4BB 20 3B B5                ;
    LDA      #$12                      ; 0x134ce $B4BE A9 12                   ;;A = #$12 0001_0010
    JSR      L9C45                     ; 0x134d0 $B4C0 20 45 9C                ;
    LDA      $60,x                     ; 0x134d3 $B4C3 B5 60                   ;; Enemy facing direction
    PHA                                ; 0x134d5 $B4C5 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x134d6 $B4C6 20 91 DC;
    PLA                                ; 0x134d9 $B4C9 68                      ;
    STA      L0000                     ; 0x134da $B4CA 85 00                   ;
    LDA      $12                       ; 0x134dc $B4CC A5 12                   ;; Frame Counter (ascending)
    AND      #$1F                      ; 0x134de $B4CE 29 1F                   ;;Keep Bits:0001_1111
    BEQ      LB4D6                     ; 0x134e0 $B4D0 F0 04                   ;
    LDA      L0000                     ; 0x134e2 $B4D2 A5 00                   ;
    STA      $60,x                     ; 0x134e4 $B4D4 95 60                   ;; Enemy facing direction
LB4D6:                                                                          ;
    LDA      $AF,x                     ; 0x134e6 $B4D6 B5 AF                   ;; Various enemy state variables
    ASL                                ; 0x134e8 $B4D8 0A                      ;
    STA      $71,x                     ; 0x134e9 $B4D9 95 71                   ;; Enemy X Velocity
    BEQ      LB4EC                     ; 0x134eb $B4DB F0 0F                   ;
    BCC      LB4E0                     ; 0x134ed $B4DD 90 01                   ;
    INY                                ; 0x134ef $B4DF C8                      ;
LB4E0:                                                                          ;
    LDA      LB0AA,y                   ; 0x134f0 $B4E0 B9 AA B0                ;
    STA      $71,x                     ; 0x134f3 $B4E3 95 71                   ;; Enemy X Velocity
    LDA      $12                       ; 0x134f5 $B4E5 A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x134f7 $B4E7 4A                      ;
    BCC      LB4EC                     ; 0x134f8 $B4E8 90 02                   ;
    DEC      $AF,x                     ; 0x134fa $B4EA D6 AF                   ;; Various enemy state variables
LB4EC:                                                                          ;
    LDA      $0F                       ; 0x134fc $B4EC A5 0F                   ;
    BPL      LB4F2                     ; 0x134fe $B4EE 10 02                   ;
    EOR      #$FF                      ; 0x13500 $B4F0 49 FF                   ;;Flip Bits:1111_1111
LB4F2:                                                                          ;
    CMP      #$60                      ; 0x13502 $B4F2 C9 60                   ;
    BCC      LB4FF                     ; 0x13504 $B4F4 90 09                   ;
LB4F6:                                                                          ;
    LDA      $AF,x                     ; 0x13506 $B4F6 B5 AF                   ;; Various enemy state variables
    AND      #$7F                      ; 0x13508 $B4F8 29 7F                   ;;Keep Bits:0111_1111
    ORA      #$10                      ; 0x1350a $B4FA 09 10                   ;;Set Bits:0001_0000
    STA      $AF,x                     ; 0x1350c $B4FC 95 AF                   ;; Various enemy state variables
    RTS                                ; 0x1350e $B4FE 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB4FF:                                                                          ;
    CMP      #$40                      ; 0x1350f $B4FF C9 40                   ;
    BCC      LB511                     ; 0x13511 $B501 90 0E                   ;
    LDA      $12                       ; 0x13513 $B503 A5 12                   ;; Frame Counter (ascending)
    AND      #$3F                      ; 0x13515 $B505 29 3F                   ;;Keep Bits:0011_1111
    BNE      LB510                     ; 0x13517 $B507 D0 07                   ;
    LDA      $051B,x                   ; 0x13519 $B509 BD 1B 05                ;; Randomizer
    AND      #$03                      ; 0x1351c $B50C 29 03                   ;;Keep Bits:0000_0011
    BNE      LB4F6                     ; 0x1351e $B50E D0 E6                   ;
LB510:                                                                          ;
    RTS                                ; 0x13520 $B510 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB511:                                                                          ;
    LDA      $051B,x                   ; 0x13521 $B511 BD 1B 05                ;; Randomizer
    AND      #$07                      ; 0x13524 $B514 29 07                   ;;Keep Bits:0000_0111
    ORA      $81,x                     ; 0x13526 $B516 15 81                   ;; Current Animation Frame for Enemys
    ORA      $0504,x                   ; 0x13528 $B518 1D 04 05                ;; Timer for Enemy
    BNE      LB522                     ; 0x1352b $B51B D0 05                   ;
    LDA      #$2F                      ; 0x1352d $B51D A9 2F                   ;;A = #$2f 0010_1111
    JSR      LB557                     ; 0x1352f $B51F 20 57 B5                ;
LB522:                                                                          ;
    LDA      $AF,x                     ; 0x13532 $B522 B5 AF                   ;; Various enemy state variables
    ASL                                ; 0x13534 $B524 0A                      ;
    BNE      LB53A                     ; 0x13535 $B525 D0 13                   ;
    LDA      $051B,x                   ; 0x13537 $B527 BD 1B 05                ;; Randomizer
    AND      #$07                      ; 0x1353a $B52A 29 07                   ;;Keep Bits:0000_0111
    BNE      LB53A                     ; 0x1353c $B52C D0 0C                   ;
    JSR      LB4F6                     ; 0x1353e $B52E 20 F6 B4                ;
    LDA      $051B,x                   ; 0x13541 $B531 BD 1B 05                ;; Randomizer
    AND      #$80                      ; 0x13544 $B534 29 80                   ;;Keep Bits:1000_0000
    ORA      $AF,x                     ; 0x13546 $B536 15 AF                   ;; Various enemy state variables
    STA      $AF,x                     ; 0x13548 $B538 95 AF                   ;; Various enemy state variables
LB53A:                                                                          ;
    RTS                                ; 0x1354a $B53A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB53B:                                                                          ;
    LDA      $81,x                     ; 0x1354b $B53B B5 81                   ;; Current Animation Frame for Enemys
    BEQ      LB55C                     ; 0x1354d $B53D F0 1D                   ;
    LDY      $0504,x                   ; 0x1354f $B53F BC 04 05                ;; Timer for Enemy
    BNE      LB55C                     ; 0x13552 $B542 D0 18                   ;
    LDA      $81,x                     ; 0x13554 $B544 B5 81                   ;; Current Animation Frame for Enemys
    CMP      #$02                      ; 0x13556 $B546 C9 02                   ;
    BNE      LB551                     ; 0x13558 $B548 D0 07                   ;
    DEY                                ; 0x1355a $B54A 88                      ;
    STY      $81,x                     ; 0x1355b $B54B 94 81                   ;; Current Animation Frame for Enemys
    LDA      #$20                      ; 0x1355d $B54D A9 20                   ;;A = #$20 0010_0000
    BNE      LB557                     ; 0x1355f $B54F D0 06                   ;
LB551:                                                                          ;
    LDA      #$0F                      ; 0x13561 $B551 A9 0F                   ;;A = #$0f 0000_1111
    BNE      LB557                     ; 0x13563 $B553 D0 02                   ;
    LDA      #$0F                      ; 0x13565 $B555 A9 0F                   ;;A = #$0f 0000_1111
LB557:                                                                          ;
    STA      $0504,x                   ; 0x13567 $B557 9D 04 05                ;; Timer for Enemy
    INC      $81,x                     ; 0x1356a $B55A F6 81                   ;; Current Animation Frame for Enemys
LB55C:                                                                          ;
    RTS                                ; 0x1356c $B55C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_B55D:                                                               ;
.byt    $09                            ; 0x1356d $B55D 09                      ;
LB55E:                                                                          ;
.byt    $0B                            ; 0x1356e $B55E 0B                      ;
LB55F:                                                                          ;
.byt    $0D,$0F,$11,$13,$15,$17,$A3,$09; 0x1356f $B55F 0D 0F 11 13 15 17 A3 09 ;
.byt    $0B,$0D,$0F,$11,$13,$15,$17,$19; 0x13577 $B567 0B 0D 0F 11 13 15 17 19 ;
.byt    $09,$0B,$0D,$0F,$11,$13,$9F,$A1; 0x1357f $B56F 09 0B 0D 0F 11 13 9F A1 ;
.byt    $A3,$09,$0B,$0D,$1B,$1D,$1F,$21; 0x13587 $B577 A3 09 0B 0D 1B 1D 1F 21 ;
.byt    $23,$A3,$29,$2B,$2D,$4E,$50,$62; 0x1358f $B57F 23 A3 29 2B 2D 4E 50 62 ;
.byt    $7C,$7E                        ; 0x13597 $B587 7C 7E                   ;
LB589:                                                                          ;
.byt    $80,$18,$F8                    ; 0x13599 $B589 80 18 F8                ;
LB58C:                                                                          ;
.byt    $24,$28,$2C,$30,$34,$38,$2C,$20; 0x1359c $B58C 24 28 2C 30 34 38 2C 20 ;
.byt    $E4,$E0,$DC,$D8,$D4,$D0,$DC    ; 0x135a4 $B594 E4 E0 DC D8 D4 D0 DC    ;
LB59B:                                                                          ;
.byt    $E8,$E8,$10                    ; 0x135ab $B59B E8 E8 10                ;
LB59E:                                                                          ;
.byt    $08,$0C,$14,$1C,$20,$1C,$14,$0C; 0x135ae $B59E 08 0C 14 1C 20 1C 14 0C ;
LB5A6:                                                                          ;
.byt    $04,$FC,$F8,$FC,$04,$0C,$10,$0C; 0x135b6 $B5A6 04 FC F8 FC 04 0C 10 0C ;
; ---------------------------------------------------------------------------- ;
LB5AE:                                                                          ;
    LDA      $2A,x                     ; 0x135be $B5AE B5 2A                   ;; Enemy Y Position
    STA      L0000                     ; 0x135c0 $B5B0 85 00                   ;
    LDA       !$CD                     ; 0x135c2 $B5B2 AD CD 00                ;
    STA      $01                       ; 0x135c5 $B5B5 85 01                   ;
    LDA      $60,x                     ; 0x135c7 $B5B7 B5 60                   ;; Enemy facing direction
    STA      $02                       ; 0x135c9 $B5B9 85 02                   ;
    LDA      #$02                      ; 0x135cb $B5BB A9 02                   ;;A = #$02 0000_0010
    LDY      $040E,x                   ; 0x135cd $B5BD BC 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    BEQ      LB5C5                     ; 0x135d0 $B5C0 F0 03                   ;
    TYA                                ; 0x135d2 $B5C2 98                      ;
    AND      #$03                      ; 0x135d3 $B5C3 29 03                   ;;Keep Bits:0000_0011
LB5C5:                                                                          ;
    STA      $06                       ; 0x135d5 $B5C5 85 06                   ;
    LDY      #$00                      ; 0x135d7 $B5C7 A0 00                   ;;Y = #$00 0000_0000
    LDA      $71,x                     ; 0x135d9 $B5C9 B5 71                   ;; Enemy X Velocity
    ORA      $81,x                     ; 0x135db $B5CB 15 81                   ;; Current Animation Frame for Enemys
    BEQ      LB600                     ; 0x135dd $B5CD F0 31                   ;
    LDA      $0728                     ; 0x135df $B5CF AD 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    BEQ      LB600                     ; 0x135e2 $B5D2 F0 2C                   ;
    LDA      $AF,x                     ; 0x135e4 $B5D4 B5 AF                   ;; Various enemy state variables
    LDY      #$09                      ; 0x135e6 $B5D6 A0 09                   ;;Y = #$09 0000_1001
    AND      #$7F                      ; 0x135e8 $B5D8 29 7F                   ;;Keep Bits:0111_1111
    BEQ      LB5E7                     ; 0x135ea $B5DA F0 0B                   ;
    AND      #$07                      ; 0x135ec $B5DC 29 07                   ;;Keep Bits:0000_0111
    SEC                                ; 0x135ee $B5DE 38                      ;
    SBC      #$03                      ; 0x135ef $B5DF E9 03                   ;
    CMP      #$03                      ; 0x135f1 $B5E1 C9 03                   ;
    BCS      LB5E7                     ; 0x135f3 $B5E3 B0 02                   ;
    LDY      #$12                      ; 0x135f5 $B5E5 A0 12                   ;;Y = #$12 0001_0010
LB5E7:                                                                          ;
    LDA      $6E3E                     ; 0x135f7 $B5E7 AD 3E 6E                ;
    BMI      LB600                     ; 0x135fa $B5EA 30 14                   ;
    LDA      $81,x                     ; 0x135fc $B5EC B5 81                   ;; Current Animation Frame for Enemys
    BEQ      LB600                     ; 0x135fe $B5EE F0 10                   ;
    LDY      #$24                      ; 0x13600 $B5F0 A0 24                   ;;Y = #$24 0010_0100
    CMP      #$02                      ; 0x13602 $B5F2 C9 02                   ;
    BEQ      LB600                     ; 0x13604 $B5F4 F0 0A                   ;
    LDY      #$1B                      ; 0x13606 $B5F6 A0 1B                   ;;Y = #$1b 0001_1011
    LDA      $12                       ; 0x13608 $B5F8 A5 12                   ;; Frame Counter (ascending)
    AND      #$08                      ; 0x1360a $B5FA 29 08                   ;;Keep Bits:0000_1000
    BNE      LB600                     ; 0x1360c $B5FC D0 02                   ;
    LDY      #$00                      ; 0x1360e $B5FE A0 00                   ;;Y = #$00 0000_0000
LB600:                                                                          ;
    TYA                                ; 0x13610 $B600 98                      ;
    TAX                                ; 0x13611 $B601 AA                      ;
    LDY      #$60                      ; 0x13612 $B602 A0 60                   ;;Y = #$60 0110_0000
    JSR      LB72D                     ; 0x13614 $B604 20 2D B7                ;
    JSR      LB72D                     ; 0x13617 $B607 20 2D B7                ;
    JSR      LB72D                     ; 0x1361a $B60A 20 2D B7                ;
    LDX      $10                       ; 0x1361d $B60D A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $6E3E                     ; 0x1361f $B60F AD 3E 6E                ;
    BMI      LB653                     ; 0x13622 $B612 30 3F                   ;
    LDA      $81,x                     ; 0x13624 $B614 B5 81                   ;; Current Animation Frame for Enemys
    CMP      #$02                      ; 0x13626 $B616 C9 02                   ;
    BEQ      LB656                     ; 0x13628 $B618 F0 3C                   ;
    CMP      #$01                      ; 0x1362a $B61A C9 01                   ;
    BNE      LB653                     ; 0x1362c $B61C D0 35                   ;
    LDA      $0504,x                   ; 0x1362e $B61E BD 04 05                ;; Timer for Enemy
    LSR                                ; 0x13631 $B621 4A                      ;
    AND      #$07                      ; 0x13632 $B622 29 07                   ;;Keep Bits:0000_0111
    LDY      $02                       ; 0x13634 $B624 A4 02                   ;
    CPY      #$01                      ; 0x13636 $B626 C0 01                   ;
    BNE      LB62C                     ; 0x13638 $B628 D0 02                   ;
    EOR      #$07                      ; 0x1363a $B62A 49 07                   ;;Flip Bits:0000_0111
LB62C:                                                                          ;
    TAY                                ; 0x1363c $B62C A8                      ;
    LDA      $C9                       ; 0x1363d $B62D A5 C9                   ;
    BNE      LB653                     ; 0x1363f $B62F D0 22                   ;
    LDA      $2A,x                     ; 0x13641 $B631 B5 2A                   ;; Enemy Y Position
    CLC                                ; 0x13643 $B633 18                      ;
    ADC      LB59E,y                   ; 0x13644 $B634 79 9E B5                ;
    STA      $0240                     ; 0x13647 $B637 8D 40 02                ;
    STA      $0244                     ; 0x1364a $B63A 8D 44 02                ;
    LDA      $CD                       ; 0x1364d $B63D A5 CD                   ;
    CLC                                ; 0x1364f $B63F 18                      ;
    ADC      LB5A6,y                   ; 0x13650 $B640 79 A6 B5                ;
    STA      $0243                     ; 0x13653 $B643 8D 43 02                ;
    CLC                                ; 0x13656 $B646 18                      ;
    ADC      #$08                      ; 0x13657 $B647 69 08                   ;
    STA      $0247                     ; 0x13659 $B649 8D 47 02                ;
    LDA      $C9                       ; 0x1365c $B64C A5 C9                   ;
    BNE      LB653                     ; 0x1365e $B64E D0 03                   ;
    JMP      LB709                     ; 0x13660 $B650 4C 09 B7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB653:                                                                          ;
    JMP      LB728                     ; 0x13663 $B653 4C 28 B7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB656:                                                                          ;
    STY      $05                       ; 0x13666 $B656 84 05                   ;
    LDY      $60,x                     ; 0x13668 $B658 B4 60                   ;; Enemy facing direction
    LDA       !$CD                     ; 0x1366a $B65A AD CD 00                ;
    CLC                                ; 0x1366d $B65D 18                      ;
    ADC      LB589,y                   ; 0x1366e $B65E 79 89 B5                ;
    DEY                                ; 0x13671 $B661 88                      ;
    BEQ      LB66C                     ; 0x13672 $B662 F0 08                   ;
    PHA                                ; 0x13674 $B664 48                      ;
    PHP                                ; 0x13675 $B665 08                      ;
    PLA                                ; 0x13676 $B666 68                      ;
    EOR      #$01                      ; 0x13677 $B667 49 01                   ;;Flip Bits:0000_0001
    PHA                                ; 0x13679 $B669 48                      ;
    PLP                                ; 0x1367a $B66A 28                      ;
    PLA                                ; 0x1367b $B66B 68                      ;
LB66C:                                                                          ;
    BCC      LB671                     ; 0x1367c $B66C 90 03                   ;
LB66E:                                                                          ;
    JMP      LB728                     ; 0x1367e $B66E 4C 28 B7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB671:                                                                          ;
    LDY      $C9                       ; 0x13681 $B671 A4 C9                   ;
    BNE      LB66E                     ; 0x13683 $B673 D0 F9                   ;
    LDY      $05                       ; 0x13685 $B675 A4 05                   ;
    STA      $0203,y                   ; 0x13687 $B677 99 03 02                ;
    STA      $0207,y                   ; 0x1368a $B67A 99 07 02                ;
    LDA      $01FE,y                   ; 0x1368d $B67D B9 FE 01                ;
    STA      $0202,y                   ; 0x13690 $B680 99 02 02                ;
    STA      $0206,y                   ; 0x13693 $B683 99 06 02                ;
    LDA      $2A,x                     ; 0x13696 $B686 B5 2A                   ;; Enemy Y Position
    STA      $0200,y                   ; 0x13698 $B688 99 00 02                ;
    CLC                                ; 0x1369b $B68B 18                      ;
    ADC      #$10                      ; 0x1369c $B68C 69 10                   ;
    STA      $0204,y                   ; 0x1369e $B68E 99 04 02                ;
    LDA      #$27                      ; 0x136a1 $B691 A9 27                   ;;A = #$27 0010_0111
    STA      $0201,y                   ; 0x136a3 $B693 99 01 02                ;
    LDA      #$2F                      ; 0x136a6 $B696 A9 2F                   ;;A = #$2f 0010_1111
    STA      $0205,y                   ; 0x136a8 $B698 99 05 02                ;
    LDA      $12                       ; 0x136ab $B69B A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x136ad $B69D 4A                      ;
    AND      #$07                      ; 0x136ae $B69E 29 07                   ;;Keep Bits:0000_0111
    TAY                                ; 0x136b0 $B6A0 A8                      ;
    LDA      $60,x                     ; 0x136b1 $B6A1 B5 60                   ;; Enemy facing direction
    CMP      #$02                      ; 0x136b3 $B6A3 C9 02                   ;
    BNE      LB6AC                     ; 0x136b5 $B6A5 D0 05                   ;
    TYA                                ; 0x136b7 $B6A7 98                      ;
    CLC                                ; 0x136b8 $B6A8 18                      ;
    ADC      #$08                      ; 0x136b9 $B6A9 69 08                   ;
    TAY                                ; 0x136bb $B6AB A8                      ;
LB6AC:                                                                          ;
    LDA       !$CD                     ; 0x136bc $B6AC AD CD 00                ;
    CLC                                ; 0x136bf $B6AF 18                      ;
    ADC      LB58C,y                   ; 0x136c0 $B6B0 79 8C B5                ;
    LDY      $60,x                     ; 0x136c3 $B6B3 B4 60                   ;; Enemy facing direction
    DEY                                ; 0x136c5 $B6B5 88                      ;
    BEQ      LB6C0                     ; 0x136c6 $B6B6 F0 08                   ;
    PHA                                ; 0x136c8 $B6B8 48                      ;
    PHP                                ; 0x136c9 $B6B9 08                      ;
    PLA                                ; 0x136ca $B6BA 68                      ;
    EOR      #$01                      ; 0x136cb $B6BB 49 01                   ;;Flip Bits:0000_0001
    PHA                                ; 0x136cd $B6BD 48                      ;
    PLP                                ; 0x136ce $B6BE 28                      ;
    PLA                                ; 0x136cf $B6BF 68                      ;
LB6C0:                                                                          ;
    BCC      LB6C5                     ; 0x136d0 $B6C0 90 03                   ;
    JMP      LB728                     ; 0x136d2 $B6C2 4C 28 B7                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB6C5:                                                                          ;
    STA      $0243                     ; 0x136d5 $B6C5 8D 43 02                ;
    CLC                                ; 0x136d8 $B6C8 18                      ;
    ADC      #$08                      ; 0x136d9 $B6C9 69 08                   ;
    STA      $0247                     ; 0x136db $B6CB 8D 47 02                ;
    LDY      $60,x                     ; 0x136de $B6CE B4 60                   ;; Enemy facing direction
    LDA      $12                       ; 0x136e0 $B6D0 A5 12                   ;; Frame Counter (ascending)
    AND      #$01                      ; 0x136e2 $B6D2 29 01                   ;;Keep Bits:0000_0001
    ASL                                ; 0x136e4 $B6D4 0A                      ;
    ASL                                ; 0x136e5 $B6D5 0A                      ;
    ASL                                ; 0x136e6 $B6D6 0A                      ;
    ADC      $0243                     ; 0x136e7 $B6D7 6D 43 02                ;
    CLC                                ; 0x136ea $B6DA 18                      ;
    ADC      LB59B,y                   ; 0x136eb $B6DB 79 9B B5                ;
    STA      $0293                     ; 0x136ee $B6DE 8D 93 02                ;
    CLC                                ; 0x136f1 $B6E1 18                      ;
    ADC      #$10                      ; 0x136f2 $B6E2 69 10                   ;
    STA      $0297                     ; 0x136f4 $B6E4 8D 97 02                ;
    LDA      #$BE                      ; 0x136f7 $B6E7 A9 BE                   ;;A = #$be 1011_1110
    STA      $0291                     ; 0x136f9 $B6E9 8D 91 02                ;
    STA      $0295                     ; 0x136fc $B6EC 8D 95 02                ;
    LDA      $0242                     ; 0x136ff $B6EF AD 42 02                ;
    STA      $0292                     ; 0x13702 $B6F2 8D 92 02                ;
    STA      $0296                     ; 0x13705 $B6F5 8D 96 02                ;
    LDA      $2A,x                     ; 0x13708 $B6F8 B5 2A                   ;; Enemy Y Position
    CLC                                ; 0x1370a $B6FA 18                      ;
    ADC      #$12                      ; 0x1370b $B6FB 69 12                   ;
    STA      $0240                     ; 0x1370d $B6FD 8D 40 02                ;
    STA      $0244                     ; 0x13710 $B700 8D 44 02                ;
    STA      $0290                     ; 0x13713 $B703 8D 90 02                ;
    STA      $0294                     ; 0x13716 $B706 8D 94 02                ;
LB709:                                                                          ;
    LDA      $0262                     ; 0x13719 $B709 AD 62 02                ;
    ORA      #$03                      ; 0x1371c $B70C 09 03                   ;;Set Bits:0000_0011
    STA      $0242                     ; 0x1371e $B70E 8D 42 02                ;
    STA      $0246                     ; 0x13721 $B711 8D 46 02                ;
    CMP      #$40                      ; 0x13724 $B714 C9 40                   ;
    LDY      #$BA                      ; 0x13726 $B716 A0 BA                   ;;Y = #$ba 1011_1010
    LDA      #$BC                      ; 0x13728 $B718 A9 BC                   ;;A = #$bc 1011_1100
    STY      $0241                     ; 0x1372a $B71A 8C 41 02                ;
    STA      $0245                     ; 0x1372d $B71D 8D 45 02                ;
    BCC      LB728                     ; 0x13730 $B720 90 06                   ;
    STA      $0241                     ; 0x13732 $B722 8D 41 02                ;
    STY      $0245                     ; 0x13735 $B725 8C 45 02                ;
LB728:                                                                          ;
    LDA      #$30                      ; 0x13738 $B728 A9 30                   ;;A = #$30 0011_0000
    STA      $91,x                     ; 0x1373a $B72A 95 91                   ;
    RTS                                ; 0x1373c $B72C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB72D:                                                                          ;
    LDA      bank4_table_B55D,x        ; 0x1373d $B72D BD 5D B5                ;
    STA      $0201,y                   ; 0x13740 $B730 99 01 02                ;
    LDA      LB55E,x                   ; 0x13743 $B733 BD 5E B5                ;
    STA      $0205,y                   ; 0x13746 $B736 99 05 02                ;
    LDA      LB55F,x                   ; 0x13749 $B739 BD 5F B5                ;
    STA      $0209,y                   ; 0x1374c $B73C 99 09 02                ;
    LDA      #$00                      ; 0x1374f $B73F A9 00                   ;;A = #$00 0000_0000
    STA      $05                       ; 0x13751 $B741 85 05                   ;
    LDA      $02                       ; 0x13753 $B743 A5 02                   ;
    CMP      #$01                      ; 0x13755 $B745 C9 01                   ;
    BNE      LB759                     ; 0x13757 $B747 D0 10                   ;
    LDA      bank4_table_B55D,x        ; 0x13759 $B749 BD 5D B5                ;
    STA      $0209,y                   ; 0x1375c $B74C 99 09 02                ;
    LDA      LB55F,x                   ; 0x1375f $B74F BD 5F B5                ;
    STA      $0201,y                   ; 0x13762 $B752 99 01 02                ;
    LDA      #$40                      ; 0x13765 $B755 A9 40                   ;;A = #$40 0100_0000
    STA      $05                       ; 0x13767 $B757 85 05                   ;
LB759:                                                                          ;
    LDA      $05                       ; 0x13769 $B759 A5 05                   ;
    ORA      $06                       ; 0x1376b $B75B 05 06                   ;
    STA      $0202,y                   ; 0x1376d $B75D 99 02 02                ;
    STA      $0206,y                   ; 0x13770 $B760 99 06 02                ;
    STA      $020A,y                   ; 0x13773 $B763 99 0A 02                ;
    LDA      $C9                       ; 0x13776 $B766 A5 C9                   ;
    AND      #$08                      ; 0x13778 $B768 29 08                   ;;Keep Bits:0000_1000
    BNE      LB771                     ; 0x1377a $B76A D0 05                   ;
    LDA      L0000                     ; 0x1377c $B76C A5 00                   ;
    STA      $0200,y                   ; 0x1377e $B76E 99 00 02                ;
LB771:                                                                          ;
    LDA      $C9                       ; 0x13781 $B771 A5 C9                   ;
    AND      #$04                      ; 0x13783 $B773 29 04                   ;;Keep Bits:0000_0100
    BNE      LB77C                     ; 0x13785 $B775 D0 05                   ;
    LDA      L0000                     ; 0x13787 $B777 A5 00                   ;
    STA      $0204,y                   ; 0x13789 $B779 99 04 02                ;
LB77C:                                                                          ;
    LDA      $C9                       ; 0x1378c $B77C A5 C9                   ;
    AND      #$02                      ; 0x1378e $B77E 29 02                   ;;Keep Bits:0000_0010
    BNE      LB787                     ; 0x13790 $B780 D0 05                   ;
    LDA      L0000                     ; 0x13792 $B782 A5 00                   ;
    STA      $0208,y                   ; 0x13794 $B784 99 08 02                ;
LB787:                                                                          ;
    LDA      L0000                     ; 0x13797 $B787 A5 00                   ;
    CLC                                ; 0x13799 $B789 18                      ;
    ADC      #$10                      ; 0x1379a $B78A 69 10                   ;
    STA      L0000                     ; 0x1379c $B78C 85 00                   ;
    LDA      $01                       ; 0x1379e $B78E A5 01                   ;
    STA      $0203,y                   ; 0x137a0 $B790 99 03 02                ;
    CLC                                ; 0x137a3 $B793 18                      ;
    ADC      #$08                      ; 0x137a4 $B794 69 08                   ;
    STA      $0207,y                   ; 0x137a6 $B796 99 07 02                ;
    CLC                                ; 0x137a9 $B799 18                      ;
    ADC      #$08                      ; 0x137aa $B79A 69 08                   ;
    STA      $020B,y                   ; 0x137ac $B79C 99 0B 02                ;
    INX                                ; 0x137af $B79F E8                      ;
    INX                                ; 0x137b0 $B7A0 E8                      ;
    INX                                ; 0x137b1 $B7A1 E8                      ;
    TYA                                ; 0x137b2 $B7A2 98                      ;
    CLC                                ; 0x137b3 $B7A3 18                      ;
    ADC      #$0C                      ; 0x137b4 $B7A4 69 0C                   ;
    TAY                                ; 0x137b6 $B7A6 A8                      ;
    RTS                                ; 0x137b7 $B7A7 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
.byt    $FF                            ; 0x137b8 $B7A8 FF                      ;
.byt    $FF                            ; 0x137b9 $B7A9 FF                      ;
.byt    $FF                            ; 0x137ba $B7AA FF                      ;
.byt    $FF                            ; 0x137bb $B7AB FF                      ;
.byt    $FF                            ; 0x137bc $B7AC FF                      ;
.byt    $FF                            ; 0x137bd $B7AD FF                      ;
.byt    $FF                            ; 0x137be $B7AE FF                      ;
.byt    $FF                            ; 0x137bf $B7AF FF                      ;
bank4_Enemy_Routines1_Bubble:                                                   ;
    LDA      #$02                      ; 0x137c0 $B7B0 A9 02                   ;;A = #$02 0000_0010
    STA      $02                       ; 0x137c2 $B7B2 85 02                   ;
    LDA      $12                       ; 0x137c4 $B7B4 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x137c6 $B7B6 29 03                   ;;Keep Bits:0000_0011
    STA      $03                       ; 0x137c8 $B7B8 85 03                   ;
    LDX      #$5A                      ; 0x137ca $B7BA A2 5A                   ;;X = #$5a 0101_1010
.byt    $4C                            ; 0x137cc $B7BC 4C                      ;
.byt    $03                            ; 0x137cd $B7BD 03                      ;
LB7BE:                                                                          ;
.byt    $EF                            ; 0x137ce $B7BE EF                      ;
    PHP                                ; 0x137cf $B7BF 08                      ;
LB7C0:                                                                          ;
    SED                                ; 0x137d0 $B7C0 F8                      ;
    BRK                                ; 0x137d1 $B7C1 00                      ;
Table__Mago_Projectile_Speed:                                                   ;
.byt    $FF                            ; 0x137d2 $B7C2 FF                      ;
.byt    $0C                            ; 0x137d3 $B7C3 0C                      ;
.byt    $F4                            ; 0x137d4 $B7C4 F4                      ;
bank4_Enemy_Routines_Mago:                                                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x137d5 $B7C5 20 91 DC;
    DEC      $AF,x                     ; 0x137d8 $B7C8 D6 AF                   ;; Various enemy state variables
    LDA      $AF,x                     ; 0x137da $B7CA B5 AF                   ;; Various enemy state variables
    CMP      #$E0                      ; 0x137dc $B7CC C9 E0                   ;
    BCC      LB7D6                     ; 0x137de $B7CE 90 06                   ;
    LSR                                ; 0x137e0 $B7D0 4A                      ;
    BCC      LB814                     ; 0x137e1 $B7D1 90 41                   ;
    JMP      bank7_Display             ; 0x137e3 $B7D3 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB7D6:                                                                          ;
    CMP      #$D0                      ; 0x137e6 $B7D6 C9 D0                   ;
    BNE      LB807                     ; 0x137e8 $B7D8 D0 2D                   ;
    JSR      LB9A4                     ; 0x137ea $B7DA 20 A4 B9                ;
    BCS      LB807                     ; 0x137ed $B7DD B0 28                   ;
    LDA      #$C0                      ; 0x137ef $B7DF A9 C0                   ;;A = #$c0 1100_0000
    STA      $30,y                     ; 0x137f1 $B7E1 99 30 00                ;
    LDA      $60,x                     ; 0x137f4 $B7E4 B5 60                   ;; Enemy facing direction
    STA      $66,y                     ; 0x137f6 $B7E6 99 66 00                ;
    TAX                                ; 0x137f9 $B7E9 AA                      ;
    LDA      $54,y                     ; 0x137fa $B7EA B9 54 00                ;
    ADC      LB7BE,x                   ; 0x137fd $B7ED 7D BE B7                ;
    STA      $54,y                     ; 0x13800 $B7F0 99 54 00                ;
    LDA      $42,y                     ; 0x13803 $B7F3 B9 42 00                ;
    ADC      LB7C0,x                   ; 0x13806 $B7F6 7D C0 B7                ;
    STA      $42,y                     ; 0x13809 $B7F9 99 42 00                ;
    LDA      Table__Mago_Projectile_Speed,x; 0x1380c $B7FC BD C2 B7                ;
    STA      $77,y                     ; 0x1380f $B7FF 99 77 00                ;
    STA      $045E,y                   ; 0x13812 $B802 99 5E 04                ;
    LDX      $10                       ; 0x13815 $B805 A6 10                   ;; used as monster x register ;draw boss hp bar
LB807:                                                                          ;
    LDA      $AF,x                     ; 0x13817 $B807 B5 AF                   ;; Various enemy state variables
    CMP      #$A0                      ; 0x13819 $B809 C9 A0                   ;
    BCC      LB81E                     ; 0x1381b $B80B 90 11                   ;
    CMP      #$C0                      ; 0x1381d $B80D C9 C0                   ;
    BCS      LB815                     ; 0x1381f $B80F B0 04                   ;
    LSR                                ; 0x13821 $B811 4A                      ;
    BCC      LB81B                     ; 0x13822 $B812 90 07                   ;
LB814:                                                                          ;
    RTS                                ; 0x13824 $B814 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB815:                                                                          ;
    JSR      LDE40                     ; 0x13825 $B815 20 40 DE                ;
    JMP      bank7_Link_Collision_Detection; 0x13828 $B818 4C C1 D6                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB81B:                                                                          ;
    JMP      bank7_Display             ; 0x1382b $B81B 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB81E:                                                                          ;
    LDA      $072C                     ; 0x1382e $B81E AD 2C 07                ;; Scrolling Offset Low Byte
    ADC      $051B,x                   ; 0x13831 $B821 7D 1B 05                ;; Randomizer
    STA      $4E,x                     ; 0x13834 $B824 95 4E                   ;; Enemy X Position (low byte)
    LDA      $072A                     ; 0x13836 $B826 AD 2A 07                ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x13839 $B829 69 00                   ;
    STA      $3C,x                     ; 0x1383b $B82B 95 3C                   ;; Enemy X Position (high byte)
    LDA      #$00                      ; 0x1383d $B82D A9 00                   ;;A = #$00 0000_0000
    STA      $040E,x                   ; 0x1383f $B82F 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    RTS                                ; 0x13842 $B832 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Ra_Flying_Unicorn_Head:                                   ;
    LDX      #$82                      ; 0x13843 $B833 A2 82                   ;;X = #$82 1000_0010
    LDA      $02                       ; 0x13845 $B835 A5 02                   ;
    EOR      #$03                      ; 0x13847 $B837 49 03                   ;;Flip Bits:0000_0011
    STA      $02                       ; 0x13849 $B839 85 02                   ;
    JMP      LF0D7                     ; 0x1384b $B83B 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Hidden_Red_Jar:                                            ;
    LDA      $C9                       ; 0x1384e $B83E A5 C9                   ;
    BNE      LB85E                     ; 0x13850 $B840 D0 1C                   ;
    JSR      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x13852 $B842 20 77 E6;
    LDA      $A8,x                     ; 0x13855 $B845 B5 A8                   ;ai or state?
    AND      #$20                      ; 0x13857 $B847 29 20                   ; keep bits ..x. ....
    BEQ      LB85E                     ; 0x13859 $B849 F0 13                   ;
    LDA      #$11                      ; 0x1385b $B84B A9 11                   ; A = 11		;red jar
    STA      $AF,x                     ; 0x1385d $B84D 95 AF                   ;item id
    LDA      #$01                      ; 0x1385f $B84F A9 01                   ; A = 01
    STA      $A1,x                     ; 0x13861 $B851 95 A1                   ;; Enemy Code
    STA      $C2,x                     ; 0x13863 $B853 95 C2                   ;; Enemy Current HP
    LSR      $040E,x                   ; 0x13865 $B855 5E 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    LDA      $4E,x                     ; 0x13868 $B858 B5 4E                   ;; Enemy X Position (low byte)
    ADC      #$03                      ; 0x1386a $B85A 69 03                   ;
    STA      $4E,x                     ; 0x1386c $B85C 95 4E                   ;; Enemy X Position (low byte)
LB85E:                                                                          ;
    RTS                                ; 0x1386e $B85E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table13:                                                                  ;
.byt    $08,$F8                        ; 0x1386f $B85F 08 F8                   ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Mau_Generator:                                             ;
    LDA      $12                       ; 0x13871 $B861 A5 12                   ;; Frame Counter (ascending)
    ASL                                ; 0x13873 $B863 0A                      ;
    ORA      L05C9                     ; 0x13874 $B864 0D C9 05                ;
    BNE      LB872                     ; 0x13877 $B867 D0 09                   ;
LB869:                                                                          ;
    LDX      #$05                      ; 0x13879 $B869 A2 05                   ; X = 05
LB86B:                                                                          ;
    LDA      $B6,x                     ; 0x1387b $B86B B5 B6                   ;; Generated Enemy Slot
    BEQ      LB876                     ; 0x1387d $B86D F0 07                   ;
    DEX                                ; 0x1387f $B86F CA                      ;
    BPL      LB86B                     ; 0x13880 $B870 10 F9                   ;
LB872:                                                                          ;
    LDX      $10                       ; 0x13882 $B872 A6 10                   ;; used as monster x register ;draw boss hp bar
    SEC                                ; 0x13884 $B874 38                      ;
    RTS                                ; 0x13885 $B875 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB876:                                                                          ;
    LDA      #$02                      ; 0x13886 $B876 A9 02                   ; A = 02
    STA      $C2,x                     ; 0x13888 $B878 95 C2                   ; Enemy Health
    LSR                                ; 0x1388a $B87A 4A                      ; A -> 01
    STA      $B6,x                     ; 0x1388b $B87B 95 B6                   ;; Generated Enemy Slot
    STA      $1A,x                     ; 0x1388d $B87D 95 1A                   ;
    LSR                                ; 0x1388f $B87F 4A                      ;
    STA      $040E,x                   ; 0x13890 $B880 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    LDA      $29                       ; 0x13893 $B883 A5 29                   ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    SBC      #$02                      ; 0x13895 $B885 E9 02                   ;
    STA      $2A,x                     ; 0x13897 $B887 95 2A                   ;; Enemy Y Position
    LDA      #$1C                      ; 0x13899 $B889 A9 1C                   ; A = 1C
    STA      $A1,x                     ; 0x1389b $B88B 95 A1                   ;; Enemy Code
    LDA      $F7                       ; 0x1389d $B88D A5 F7                   ; Controller 1 buttons held
    AND      #$03                      ; 0x1389f $B88F 29 03                   ; check if Up/Down are held
    BNE      LB896                     ; 0x138a1 $B891 D0 03                   ; if None, skip to 13896
    LDA      $051B,x                   ; 0x138a3 $B893 BD 1B 05                ;; Randomizer
LB896:                                                                          ;
    AND      #$01                      ; 0x138a6 $B896 29 01                   ; keep bits .... ...x
    TAY                                ; 0x138a8 $B898 A8                      ;
    LDA      $072C                     ; 0x138a9 $B899 AD 2C 07                ;; Scrolling Offset Low Byte
    ADC      bank4_table13,y           ; 0x138ac $B89C 79 5F B8                ;
    STA      $4E,x                     ; 0x138af $B89F 95 4E                   ;; Enemy X Position (low byte)
    LDA      $072A                     ; 0x138b1 $B8A1 AD 2A 07                ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x138b4 $B8A4 69 00                   ;
    STA      $3C,x                     ; 0x138b6 $B8A6 95 3C                   ;; Enemy X Position (high byte)
    LDA      bank4_table13,y           ; 0x138b8 $B8A8 B9 5F B8                ;
    STA      $71,x                     ; 0x138bb $B8AB 95 71                   ;; Enemy X Velocity
    LDA      #$FF                      ; 0x138bd $B8AD A9 FF                   ; A = FF
    STA      $BC,x                     ; 0x138bf $B8AF 95 BC                   ;; Generated Enemy Y Position ?
    STA      $AF,x                     ; 0x138c1 $B8B1 95 AF                   ;; Various enemy state variables
    INY                                ; 0x138c3 $B8B3 C8                      ;
    STY      $60,x                     ; 0x138c4 $B8B4 94 60                   ;; Enemy facing direction
    STX      L0000                     ; 0x138c6 $B8B6 86 00                   ;
    LDX      $10                       ; 0x138c8 $B8B8 A6 10                   ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x138ca $B8BA 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Mau_Wolf_Head:                                             ;
    JSR      LDE40                     ; 0x138cb $B8BB 20 40 DE                ;
    JSR      bank7_Link_Collision_Detection; 0x138ce $B8BE 20 C1 D6                ;
    INC      $AF,x                     ; 0x138d1 $B8C1 F6 AF                   ;; Various enemy state variables
    LDA      $AF,x                     ; 0x138d3 $B8C3 B5 AF                   ;; Various enemy state variables
    LSR                                ; 0x138d5 $B8C5 4A                      ;
    LSR                                ; 0x138d6 $B8C6 4A                      ;
    LSR                                ; 0x138d7 $B8C7 4A                      ;
    LSR                                ; 0x138d8 $B8C8 4A                      ;
    LSR                                ; 0x138d9 $B8C9 4A                      ;
    LSR                                ; 0x138da $B8CA 4A                      ;
    BCS      LB8F0                     ; 0x138db $B8CB B0 23                   ;
    LDA      $AF,x                     ; 0x138dd $B8CD B5 AF                   ;; Various enemy state variables
    AND      #$3F                      ; 0x138df $B8CF 29 3F                   ;;Keep Bits:0011_1111
    BNE      LB8ED                     ; 0x138e1 $B8D1 D0 1A                   ;
    LDA      $60,x                     ; 0x138e3 $B8D3 B5 60                   ;; Enemy facing direction
    STA      $05                       ; 0x138e5 $B8D5 85 05                   ;
    PHA                                ; 0x138e7 $B8D7 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x138e8 $B8D8 20 91 DC;
    INY                                ; 0x138eb $B8DB C8                      ;
    CPY      $05                       ; 0x138ec $B8DC C4 05                   ;
    BNE      LB8EA                     ; 0x138ee $B8DE D0 0A                   ;
    JSR      bank7_Spawn_New_Projectile; 0x138f0 $B8E0 20 CE DB                ;
    BCS      LB8EA                     ; 0x138f3 $B8E3 B0 05                   ;
    LDA      #$01                      ; 0x138f5 $B8E5 A9 01                   ;;A = #$01 0000_0001
    STA      $87,y                     ; 0x138f7 $B8E7 99 87 00                ;
LB8EA:                                                                          ;
    PLA                                ; 0x138fa $B8EA 68                      ;
    STA      $60,x                     ; 0x138fb $B8EB 95 60                   ;; Enemy facing direction
LB8ED:                                                                          ;
    JMP      bank7_Simple_Horizontal_Movement; 0x138fd $B8ED 4C B8 DE              ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB8F0:                                                                          ;
    AND      #$01                      ; 0x13900 $B8F0 29 01                   ;;Keep Bits:0000_0001
    TAY                                ; 0x13902 $B8F2 A8                      ;
    LDA      bank4_table13,y           ; 0x13903 $B8F3 B9 5F B8                ;
    STA      $057E,x                   ; 0x13906 $B8F6 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    JMP      bank7_Simple_Vertical_Movement; 0x13909 $B8F9 4C C8 DE                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_Energy_Ball_Shooter__Left_Right:                      ;
    LDA      $A1,x                     ; 0x1390c $B8FC B5 A1                   ; Enemy Code
    SEC                                ; 0x1390e $B8FE 38                      ;
    SBC      #$15                      ; 0x1390f $B8FF E9 15                   ;
    STA      $60,x                     ; 0x13911 $B901 95 60                   ; Enemy facing direction
    RTS                                ; 0x13913 $B903 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Mau:                                                      ;
    LDX      #$16                      ; 0x13914 $B904 A2 16                   ; X = 16
    JMP      L9EBA                     ; 0x13916 $B906 4C BA 9E                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Moa:                                                       ;
    LDA      $AF,x                     ; 0x13919 $B909 B5 AF                   ;; Various enemy state variables
    AND      #$03                      ; 0x1391b $B90B 29 03                   ; keep bits .... ..xx
    BEQ      LB929                     ; 0x1391d $B90D F0 1A                   ;
    LDY      #$04                      ; 0x1391f $B90F A0 04                   ; Y = 04
    LDA      $12                       ; 0x13921 $B911 A5 12                   ;; Frame Counter (ascending)
    AND      #$10                      ; 0x13923 $B913 29 10                   ; keep bits ...x ....
    BNE      LB919                     ; 0x13925 $B915 D0 02                   ;
    LDY      #$FC                      ; 0x13927 $B917 A0 FC                   ; Y = FC
LB919:                                                                          ;
    TYA                                ; 0x13929 $B919 98                      ;
    STA      $057E,x                   ; 0x1392a $B91A 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    JSR      bank7_Simple_Vertical_Movement; 0x1392d $B91D 20 C8 DE                ;
    JSR      bank7_Simple_Horizontal_Movement; 0x13930 $B920 20 B8 DE              ;
    JSR      LDE3D                     ; 0x13933 $B923 20 3D DE                ;
    JSR      bank7_Link_Collision_Detection; 0x13936 $B926 20 C1 D6                ;
LB929:                                                                          ;
    LDA      $AF,x                     ; 0x13939 $B929 B5 AF                   ;; Various enemy state variables
    AND      #$03                      ; 0x1393b $B92B 29 03                   ; keep bits .... ..xx
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x1393d $B92D 20 85 D3;
.byt    $3C                            ; 0x13940 $B930 3C                      ;
    LDA      LB96D,y                   ; 0x13941 $B931 B9 6D B9                ;
.byt    $7C                            ; 0x13944 $B934 7C                      ;
LB937     = * + $0002                                                          ;
    LDA      LB991,y                   ; 0x13945 $B935 B9 91 B9                ;
LB939     = * + $0001                                                          ;
    BEQ      LB93A                     ; 0x13948 $B938 F0 00                   ;
LB93A:                                                                          ;
    CPX      #$20                      ; 0x1394a $B93A E0 20                   ;
    LDA      $0504,x                   ; 0x1394c $B93C BD 04 05                ;; Timer for Enemy
    BNE      LB96C                     ; 0x1394f $B93F D0 2B                   ;
    LDY      $5F                       ; 0x13951 $B941 A4 5F                   ;; Link's facing direction
    LDA      $072C                     ; 0x13953 $B943 AD 2C 07                ;; Scrolling Offset Low Byte
    ADC      LB937,y                   ; 0x13956 $B946 79 37 B9                ;
    STA      $4E,x                     ; 0x13959 $B949 95 4E                   ;; Enemy X Position (low byte)
    LDA      $072A                     ; 0x1395b $B94B AD 2A 07                ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x1395e $B94E 69 00                   ;
    STA      $3C,x                     ; 0x13960 $B950 95 3C                   ;; Enemy X Position (high byte)
    LDA      LB939,y                   ; 0x13962 $B952 B9 39 B9                ;
    STA      $71,x                     ; 0x13965 $B955 95 71                   ;; Enemy X Velocity
    LDA      #$7D                      ; 0x13967 $B957 A9 7D                   ;;A = #$7d 0111_1101
    STA      $2A,x                     ; 0x13969 $B959 95 2A                   ;; Enemy Y Position
    STY      $81,x                     ; 0x1396b $B95B 94 81                   ;; Current Animation Frame for Enemys
    STY      $60,x                     ; 0x1396d $B95D 94 60                   ;; Enemy facing direction
    LDA      #$10                      ; 0x1396f $B95F A9 10                   ;;A = #$10 0001_0000
    LDY      $70                       ; 0x13971 $B961 A4 70                   ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    BNE      LB967                     ; 0x13973 $B963 D0 02                   ;
    LDA      #$50                      ; 0x13975 $B965 A9 50                   ;;A = #$50 0101_0000
LB967:                                                                          ;
    STA      $0504,x                   ; 0x13977 $B967 9D 04 05                ;; Timer for Enemy
    INC      $AF,x                     ; 0x1397a $B96A F6 AF                   ;; Various enemy state variables
LB96C:                                                                          ;
    RTS                                ; 0x1397c $B96C 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB96D:                                                                          ;
    LDA      $0504,x                   ; 0x1397d $B96D BD 04 05                ;; Timer for Enemy
    BNE      LB979                     ; 0x13980 $B970 D0 07                   ;
    LDA      #$40                      ; 0x13982 $B972 A9 40                   ;;A = #$40 0100_0000
    STA      $0504,x                   ; 0x13984 $B974 9D 04 05                ;; Timer for Enemy
    INC      $AF,x                     ; 0x13987 $B977 F6 AF                   ;; Various enemy state variables
LB979:                                                                          ;
    RTS                                ; 0x13989 $B979 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    ORA      ($FF,x)                   ; 0x1398a $B97A 01 FF                   ;
    LDA      $0504,x                   ; 0x1398c $B97C BD 04 05                ;; Timer for Enemy
    BEQ      LB98E                     ; 0x1398f $B97F F0 0D                   ;
    DEC      $2A,x                     ; 0x13991 $B981 D6 2A                   ;; Enemy Y Position
    LDY      $81,x                     ; 0x13993 $B983 B4 81                   ;; Current Animation Frame for Enemys
    LDA      $71,x                     ; 0x13995 $B985 B5 71                   ;; Enemy X Velocity
    CLC                                ; 0x13997 $B987 18                      ;
    ADC      LB979,y                   ; 0x13998 $B988 79 79 B9                ;
    STA      $71,x                     ; 0x1399b $B98B 95 71                   ;; Enemy X Velocity
    RTS                                ; 0x1399d $B98D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB98E:                                                                          ;
    INC      $AF,x                     ; 0x1399e $B98E F6 AF                   ;; Various enemy state variables
    RTS                                ; 0x139a0 $B990 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB991:                                                                          ;
    LDA      $C9                       ; 0x139a1 $B991 A5 C9                   ;
    BEQ      LB99C                     ; 0x139a3 $B993 F0 07                   ;
    LDA      #$BF                      ; 0x139a5 $B995 A9 BF                   ;;A = #$bf 1011_1111
    STA      $0504,x                   ; 0x139a7 $B997 9D 04 05                ;; Timer for Enemy
    INC      $AF,x                     ; 0x139aa $B99A F6 AF                   ;; Various enemy state variables
LB99C:                                                                          ;
    LDA      $12                       ; 0x139ac $B99C A5 12                   ;; Frame Counter (ascending)
    AND      #$2F                      ; 0x139ae $B99E 29 2F                   ;;Keep Bits:0010_1111
    ORA      $A8,x                     ; 0x139b0 $B9A0 15 A8                   ;; Enemy State
    BNE      LB9BE                     ; 0x139b2 $B9A2 D0 1A                   ;
LB9A4:                                                                          ;
    JSR      bank7_Spawn_New_Projectile; 0x139b4 $B9A4 20 CE DB                ;
    BCS      LB9BE                     ; 0x139b7 $B9A7 B0 15                   ;
    LDA      #$07                      ; 0x139b9 $B9A9 A9 07                   ;;A = #$07 0000_0111
    STA      $87,y                     ; 0x139bb $B9AB 99 87 00                ;
    LDA      #$FF                      ; 0x139be $B9AE A9 FF                   ;;A = #$ff 1111_1111
    STA      $044C,y                   ; 0x139c0 $B9B0 99 4C 04                ;
    LDA      #$00                      ; 0x139c3 $B9B3 A9 00                   ;;A = #$00 0000_0000
    STA      $045E,y                   ; 0x139c5 $B9B5 99 5E 04                ;
    STA      $77,y                     ; 0x139c8 $B9B8 99 77 00                ;
    STA      $0584,y                   ; 0x139cb $B9BB 99 84 05                ;
LB9BE:                                                                          ;
    RTS                                ; 0x139ce $B9BE 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Dripping_Column:                                           ;
    JSR      bank7_Display             ; 0x139cf $B9BF 20 11 EF                ;
    INC      $AF,x                     ; 0x139d2 $B9C2 F6 AF                   ;; Various enemy state variables
    LDA      $AF,x                     ; 0x139d4 $B9C4 B5 AF                   ;; Various enemy state variables
    AND      #$3F                      ; 0x139d6 $B9C6 29 3F                   ; keep bits ..xx xxxx (dripping frequency)
    BNE      LB9F3                     ; 0x139d8 $B9C8 D0 29                   ;
LB9CA:                                                                          ;
    JSR      bank7_Spawn_New_Projectile; 0x139da $B9CA 20 CE DB                ; Spawn New Projectile
    BCS      LB9F3                     ; 0x139dd $B9CD B0 24                   ;
    LDA      #$08                      ; 0x139df $B9CF A9 08                   ; A = 08
    STA      $87,y                     ; 0x139e1 $B9D1 99 87 00                ;
    LDA      $4E,x                     ; 0x139e4 $B9D4 B5 4E                   ;; Enemy X Position (low byte)
    ADC      #$04                      ; 0x139e6 $B9D6 69 04                   ;
    STA      $54,y                     ; 0x139e8 $B9D8 99 54 00                ;
    LDA      $30,y                     ; 0x139eb $B9DB B9 30 00                ;
    ADC      #$12                      ; 0x139ee $B9DE 69 12                   ;
    STA      $30,y                     ; 0x139f0 $B9E0 99 30 00                ;
    LDA      #$00                      ; 0x139f3 $B9E3 A9 00                   ; A = 00
    STA      $77,y                     ; 0x139f5 $B9E5 99 77 00                ;
    STA      $0584,y                   ; 0x139f8 $B9E8 99 84 05                ;
    LDA      $051B,x                   ; 0x139fb $B9EB BD 1B 05                ;; Randomizer
    AND      #$07                      ; 0x139fe $B9EE 29 07                   ; keep bits .... .xxx
    STA      $044C,y                   ; 0x13a00 $B9F0 99 4C 04                ;
LB9F3:                                                                          ;
    RTS                                ; 0x13a03 $B9F3 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_Ra_Unicorn_Head:                                      ;
    LDA      $29                       ; 0x13a04 $B9F4 A5 29                   ; Link Y Position
    SBC      #$20                      ; 0x13a06 $B9F6 E9 20                   ; Starting Y Position for Ra
    STA      $2A,x                     ; 0x13a08 $B9F8 95 2A                   ; Enemy Y Position
    LDY      $5F                       ; 0x13a0a $B9FA A4 5F                   ;; Link's facing direction
    LDA      $072C                     ; 0x13a0c $B9FC AD 2C 07                ; Scrolling Offset Low Byte
    ADC      bank4_table14,y           ; 0x13a0f $B9FF 79 17 BA                ;
    STA      $4E,x                     ; 0x13a12 $BA02 95 4E                   ; Enemy X position (low byte)
    LDA      $072A                     ; 0x13a14 $BA04 AD 2A 07                ; Scrolling Offset High Byte
    ADC      #$00                      ; 0x13a17 $BA07 69 00                   ;
    STA      $3C,x                     ; 0x13a19 $BA09 95 3C                   ; Enemy X position (high byte)
    LDA      LBA19,y                   ; 0x13a1b $BA0B B9 19 BA                ;
    STA      $71,x                     ; 0x13a1e $BA0E 95 71                   ; Enemy X Velocity
    JSR      LDAC7                     ; 0x13a20 $BA10 20 C7 DA                ; Set Enemy Y Velocity to 0
    STA      $AF,x                     ; 0x13a23 $BA13 95 AF                   ;; Various enemy state variables
bank4_table14 = * + $0002                                                  ;
    JMP      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13a25 $BA15 4C 91 DC; Determine Enemy Facing Direction
                                                                               ;
; ---------------------------------------------------------------------------- ;
.byt    $EF                            ; 0x13a28 $BA18 EF                      ;
LBA19:                                                                          ;
.byt    $00,$F0,$10                    ; 0x13a29 $BA19 00 F0 10                ;
LBA1C:                                                                          ;
.byt    $02,$FE                        ; 0x13a2c $BA1C 02 FE                   ;
LBA1E:                                                                          ;
.byt    $30,$D0                        ; 0x13a2e $BA1E 30 D0                   ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Ra_Unicorn_Head:                                           ;
    LDA      $C9                       ; 0x13a30 $BA20 A5 C9                   ;
    AND      #$0C                      ; 0x13a32 $BA22 29 0C                   ; keep bits .... xx..
    BEQ      LBA2E                     ; 0x13a34 $BA24 F0 08                   ;
    LDA      L05C9                     ; 0x13a36 $BA26 AD C9 05                ;
    BNE      LBA53                     ; 0x13a39 $BA29 D0 28                   ;
    JSR      bank4_Enemy_Init_Routines_Ra_Unicorn_Head; 0x13a3b $BA2B 20 F4 B9     ;
LBA2E:                                                                          ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x13a3e $BA2E 20 02 DA                ; Enemy Stops when Hit
    LDA      $AF,x                     ; 0x13a41 $BA31 B5 AF                   ;; Various enemy state variables
    AND      #$01                      ; 0x13a43 $BA33 29 01                   ; keep bits .... ...x
    TAY                                ; 0x13a45 $BA35 A8                      ;
    LDA      $057E,x                   ; 0x13a46 $BA36 BD 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    CLC                                ; 0x13a49 $BA39 18                      ;
    ADC      LBA1C,y                   ; 0x13a4a $BA3A 79 1C BA                ;
    STA      $057E,x                   ; 0x13a4d $BA3D 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    CMP      LBA1E,y                   ; 0x13a50 $BA40 D9 1E BA                ;
    BNE      LBA47                     ; 0x13a53 $BA43 D0 02                   ;
    INC      $AF,x                     ; 0x13a55 $BA45 F6 AF                   ;; Various enemy state variables
LBA47:                                                                          ;
    JSR      bank7_Simple_Vertical_Movement; 0x13a57 $BA47 20 C8 DE                ; Enemy Vertical Movement
    JSR      bank7_Simple_Horizontal_Movement; 0x13a5a $BA4A 20 B8 DE              ; Enemy Horizontal Movement
    JSR      LDE40                     ; 0x13a5d $BA4D 20 40 DE                ;
    JMP      bank7_Link_Collision_Detection; 0x13a60 $BA50 4C C1 D6                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBA53:                                                                          ;
    RTS                                ; 0x13a63 $BA53 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Table_for_Movement_Velocities:                                            ;
;Affects Various Enemies with Footwork                                         ;
;                                                                              ;
;For Guma (and maybe others) (but NOT Iron Knuckles)                           ;
;                                                                              ;
;08 = X Velocity Moving Right                                                  ;
;F8 = X Velocity Moving Left                                                   ;
;08 = Not applicable                                                           ;
;                                                                              ;
;For Horsehead:                                                                ;
;                                                                              ;
;08 = X Velocity stepping forward - Facing right                               ;
;F8 = X Velocity stepping forward facing left or stepping backward facing right;
;08 = X Velocity stepping backward - Facing left                               ;
.byt    $08,$F8,$08                    ; 0x13a64 $BA54 08 F8 08                ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Guma:                                                      ;
    LDA      $12                       ; 0x13a67 $BA57 A5 12                   ;; Frame Counter (ascending)
    BNE      LBA60                     ; 0x13a69 $BA59 D0 05                   ;
    LDA      #$D0                      ; 0x13a6b $BA5B A9 D0                   ;;A = #$d0 1101_0000
    STA      $057E,x                   ; 0x13a6d $BA5D 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
LBA60:                                                                          ;
    LDA      $AF,x                     ; 0x13a70 $BA60 B5 AF                   ;; Various enemy state variables
    CMP      #$D8                      ; 0x13a72 $BA62 C9 D8                   ;
    BCS      LBA6D                     ; 0x13a74 $BA64 B0 07                   ;
    AND      #$1F                      ; 0x13a76 $BA66 29 1F                   ;;Keep Bits:0001_1111
    BNE      LBA6D                     ; 0x13a78 $BA68 D0 03                   ;
    JSR      bank4_increase_animation_frame__and_set_timer_for_next_AI__maybe; 0x13a7a $BA6A 20 23 BC;
LBA6D:                                                                          ;
    LDA      $0504,x                   ; 0x13a7d $BA6D BD 04 05                ;; Timer for Enemy
    CMP      #$01                      ; 0x13a80 $BA70 C9 01                   ;
    BNE      LBA90                     ; 0x13a82 $BA72 D0 1C                   ;
    STA      $81,x                     ; 0x13a84 $BA74 95 81                   ;; Current Animation Frame for Enemys
    JSR      bank7_Spawn_New_Projectile; 0x13a86 $BA76 20 CE DB                ;
    BCS      LBA90                     ; 0x13a89 $BA79 B0 15                   ;
    LDA      #$06                      ; 0x13a8b $BA7B A9 06                   ;;A = #$06 0000_0110
    STA      $87,y                     ; 0x13a8d $BA7D 99 87 00                ;
    LDA      #$D5                      ; 0x13a90 $BA80 A9 D5                   ;;A = #$d5 1101_0101
    STA      $0584,y                   ; 0x13a92 $BA82 99 84 05                ;
    LDA      $77,y                     ; 0x13a95 $BA85 B9 77 00                ;
    ASL                                ; 0x13a98 $BA88 0A                      ;
    LDA      $77,y                     ; 0x13a99 $BA89 B9 77 00                ;
    ROR                                ; 0x13a9c $BA8C 6A                      ;
    STA      $77,y                     ; 0x13a9d $BA8D 99 77 00                ;
LBA90:                                                                          ;
    LDA      $AF,x                     ; 0x13aa0 $BA90 B5 AF                   ;; Various enemy state variables
    ASL                                ; 0x13aa2 $BA92 0A                      ;
    ASL                                ; 0x13aa3 $BA93 0A                      ;
    LDA      #$00                      ; 0x13aa4 $BA94 A9 00                   ;;A = #$00 0000_0000
    ROL                                ; 0x13aa6 $BA96 2A                      ;
    TAY                                ; 0x13aa7 $BA97 A8                      ;
    LDA      bank4_Table_for_Movement_Velocities,y; 0x13aa8 $BA98 B9 54 BA         ;
    STA      $71,x                     ; 0x13aab $BA9B 95 71                   ;; Enemy X Velocity
    JSR      bank7_Gravity             ; 0x13aad $BA9D 20 BE DE                ;
    INC      $AF,x                     ; 0x13ab0 $BAA0 F6 AF                   ;; Various enemy state variables
    JSR      LEA32                     ; 0x13ab2 $BAA2 20 32 EA                ;
    LDA      $A8,x                     ; 0x13ab5 $BAA5 B5 A8                   ;; Enemy State
    AND      #$04                      ; 0x13ab7 $BAA7 29 04                   ;;Keep Bits:0000_0100
    BEQ      LBAAE                     ; 0x13ab9 $BAA9 F0 03                   ;
    JSR      bank7_Floor_Y_Position    ; 0x13abb $BAAB 20 C1 DA                ;
LBAAE:                                                                          ;
    JSR      L9E17                     ; 0x13abe $BAAE 20 17 9E                ;
    JSR      LDE3D                     ; 0x13ac1 $BAB1 20 3D DE                ;
    JSR      bank7_Link_Collision_Detection; 0x13ac4 $BAB4 20 C1 D6                ;
    LDA      $12                       ; 0x13ac7 $BAB7 A5 12                   ;; Frame Counter (ascending)
    AND      #$0F                      ; 0x13ac9 $BAB9 29 0F                   ;;Keep Bits:0000_1111
    BNE      LBAC0                     ; 0x13acb $BABB D0 03                   ;
    JMP      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13acd $BABD 4C 91 DC;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBAC0:                                                                          ;
    RTS                                ; 0x13ad0 $BAC0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    BEQ      LBAD3                     ; 0x13ad1 $BAC1 F0 10                   ;
bank4_Enemy_Routines_Helmethead__Gooma:                                         ;
    LDA      $0706                     ; 0x13ad3 $BAC3 AD 06 07                ;; overworld index (0=west hyrule, 1=death mtn/maze island, 2=east hyrule)
    BEQ      LBACB                     ; 0x13ad6 $BAC6 F0 03                   ;
    JMP      LB4AD                     ; 0x13ad8 $BAC8 4C AD B4                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBACB:                                                                          ;
    JSR      LBE8B                     ; 0x13adb $BACB 20 8B BE                ;
    JSR      bank4_Related_to_Horsehead; 0x13ade $BACE 20 4E BC                ;
    LDA      #$06                      ; 0x13ae1 $BAD1 A9 06                   ;;A = #$06 0000_0110
LBAD3:                                                                          ;
    LDY      $0706                     ; 0x13ae3 $BAD3 AC 06 07                ;; overworld index (0=west hyrule, 1=death mtn/maze island, 2=east hyrule)
    BEQ      LBADA                     ; 0x13ae6 $BAD6 F0 02                   ;
    LDA      #$12                      ; 0x13ae8 $BAD8 A9 12                   ;;A = #$12 0001_0010
LBADA:                                                                          ;
    JSR      LBB71                     ; 0x13aea $BADA 20 71 BB                ;
    LDA      $12                       ; 0x13aed $BADD A5 12                   ;; Frame Counter (ascending)
    AND      #$7F                      ; 0x13aef $BADF 29 7F                   ;;Keep Bits:0111_1111
    BNE      LBAFA                     ; 0x13af1 $BAE1 D0 17                   ;
    JSR      bank7_Spawn_New_Projectile; 0x13af3 $BAE3 20 CE DB                ;
    BCS      LBAFA                     ; 0x13af6 $BAE6 B0 12                   ;
    LDA      #$02                      ; 0x13af8 $BAE8 A9 02                   ;;A = #$02 0000_0010
    STA      $87,y                     ; 0x13afa $BAEA 99 87 00                ;
    LDA      $30,y                     ; 0x13afd $BAED B9 30 00                ;
    SBC      #$08                      ; 0x13b00 $BAF0 E9 08                   ;
    STA      $30,y                     ; 0x13b02 $BAF2 99 30 00                ;
    LDA      #$02                      ; 0x13b05 $BAF5 A9 02                   ;;A = #$02 0000_0010
    STA      $0584,y                   ; 0x13b07 $BAF7 99 84 05                ;
LBAFA:                                                                          ;
    LDA      $05DE                     ; 0x13b0a $BAFA AD DE 05                ;
    BNE      LBB55                     ; 0x13b0d $BAFD D0 56                   ;
    LDA      $A8,x                     ; 0x13b0f $BAFF B5 A8                   ;; Enemy State
    AND      #$20                      ; 0x13b11 $BB01 29 20                   ;;Keep Bits:0010_0000
    BEQ      LBB54                     ; 0x13b13 $BB03 F0 4F                   ;
    LDA      $81,x                     ; 0x13b15 $BB05 B5 81                   ;; Current Animation Frame for Enemys
    CMP      #$02                      ; 0x13b17 $BB07 C9 02                   ;
    BEQ      LBB54                     ; 0x13b19 $BB09 F0 49                   ;
    LDA      #$10                      ; 0x13b1b $BB0B A9 10                   ;;A = #$10 0001_0000
    STA      $05DE                     ; 0x13b1d $BB0D 8D DE 05                ;
    JSR      LB869                     ; 0x13b20 $BB10 20 69 B8                ;
    BCS      LBB54                     ; 0x13b23 $BB13 B0 3F                   ;
    LDY      L0000                     ; 0x13b25 $BB15 A4 00                   ;
    LDA      $2A,x                     ; 0x13b27 $BB17 B5 2A                   ;; Enemy Y Position
    SBC      #$0C                      ; 0x13b29 $BB19 E9 0C                   ;
    STA      $2A,y                     ; 0x13b2b $BB1B 99 2A 00                ;
    LDA      $4E,x                     ; 0x13b2e $BB1E B5 4E                   ;; Enemy X Position (low byte)
    STA      $4E,y                     ; 0x13b30 $BB20 99 4E 00                ;
    LDA      $3C,x                     ; 0x13b33 $BB23 B5 3C                   ;; Enemy X Position (high byte)
    STA      $3C,y                     ; 0x13b35 $BB25 99 3C 00                ;
    LDA      $60,x                     ; 0x13b38 $BB28 B5 60                   ;; Enemy facing direction
    STA      $60,y                     ; 0x13b3a $BB2A 99 60 00                ;
    LDA      #$22                      ; 0x13b3d $BB2D A9 22                   ;;A = #$22 0010_0010
    STA      $A1,y                     ; 0x13b3f $BB2F 99 A1 00                ;
    LDA      #$00                      ; 0x13b42 $BB32 A9 00                   ;;A = #$00 0000_0000
    STA      $0444,y                   ; 0x13b44 $BB34 99 44 04                ;
    STA      $AF,y                     ; 0x13b47 $BB37 99 AF 00                ;
    LDA      #$D0                      ; 0x13b4a $BB3A A9 D0                   ;;A = #$d0 1101_0000
    STA      $057E,y                   ; 0x13b4c $BB3C 99 7E 05                ;
    STA      $C2,y                     ; 0x13b4f $BB3F 99 C2 00                ;
    LDA      $60,x                     ; 0x13b52 $BB42 B5 60                   ;; Enemy facing direction
    TAX                                ; 0x13b54 $BB44 AA                      ;
    LDA      LBAC0,x                   ; 0x13b55 $BB45 BD C0 BA                ;
    STA      $71,y                     ; 0x13b58 $BB48 99 71 00                ;
    LDX      $10                       ; 0x13b5b $BB4B A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $81,x                     ; 0x13b5d $BB4D B5 81                   ;; Current Animation Frame for Enemys
    STA      $81,y                     ; 0x13b5f $BB4F 99 81 00                ;
    INC      $81,x                     ; 0x13b62 $BB52 F6 81                   ;; Current Animation Frame for Enemys
LBB54:                                                                          ;
    RTS                                ; 0x13b64 $BB54 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBB55:                                                                          ;
    LDA      $12                       ; 0x13b65 $BB55 A5 12                   ;; Frame Counter (ascending)
    AND      #$03                      ; 0x13b67 $BB57 29 03                   ;;Keep Bits:0000_0011
    BNE      LBB5E                     ; 0x13b69 $BB59 D0 03                   ;
    DEC      $05DE                     ; 0x13b6b $BB5B CE DE 05                ;
LBB5E:                                                                          ;
    RTS                                ; 0x13b6e $BB5E 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Horsehead:                                                 ;
    JSR      LBE8B                     ; 0x13b6f $BB5F 20 8B BE                ;
    JSR      bank4_Related_to_Horsehead; 0x13b72 $BB62 20 4E BC                ;
    JSR      LE579                     ; 0x13b75 $BB65 20 79 E5                ;
    JSR      LBC11                     ; 0x13b78 $BB68 20 11 BC                ;
    LDA      $12                       ; 0x13b7b $BB6B A5 12                   ;; Frame Counter (ascending)
    BNE      LBB6F                     ; 0x13b7d $BB6D D0 00                   ;
LBB6F:                                                                          ;
    LDA      #$04                      ; 0x13b7f $BB6F A9 04                   ;;A = #$04 0000_0100
LBB71:                                                                          ;
    JSR      L9C45                     ; 0x13b81 $BB71 20 45 9C                ;
    LDA      $60,x                     ; 0x13b84 $BB74 B5 60                   ;; Enemy facing direction
    PHA                                ; 0x13b86 $BB76 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13b87 $BB77 20 91 DC;
    INY                                ; 0x13b8a $BB7A C8                      ;
    STY      $01                       ; 0x13b8b $BB7B 84 01                   ;
    PLA                                ; 0x13b8d $BB7D 68                      ;
    STA      L0000                     ; 0x13b8e $BB7E 85 00                   ;
    LDA      $A1,x                     ; 0x13b90 $BB80 B5 A1                   ;; Enemy Code
    CMP      #$20                      ; 0x13b92 $BB82 C9 20                   ;
    BNE      LBB8A                     ; 0x13b94 $BB84 D0 04                   ;
    LDA      $81,x                     ; 0x13b96 $BB86 B5 81                   ;; Current Animation Frame for Enemys
    BNE      LBB90                     ; 0x13b98 $BB88 D0 06                   ;
LBB8A:                                                                          ;
    LDA      $12                       ; 0x13b9a $BB8A A5 12                   ;; Frame Counter (ascending)
    AND      #$1F                      ; 0x13b9c $BB8C 29 1F                   ;;Keep Bits:0001_1111
    BEQ      LBB94                     ; 0x13b9e $BB8E F0 04                   ;
LBB90:                                                                          ;
    LDA      L0000                     ; 0x13ba0 $BB90 A5 00                   ;
    STA      $60,x                     ; 0x13ba2 $BB92 95 60                   ;; Enemy facing direction
LBB94:                                                                          ;
    LDA      #$00                      ; 0x13ba4 $BB94 A9 00                   ;;A = #$00 0000_0000
    STA      $71,x                     ; 0x13ba6 $BB96 95 71                   ;; Enemy X Velocity
    LDA      $AF,x                     ; 0x13ba8 $BB98 B5 AF                   ;; Various enemy state variables
    ASL                                ; 0x13baa $BB9A 0A                      ;
    BEQ      LBBB2                     ; 0x13bab $BB9B F0 15                   ;
    BCC      LBBA0                     ; 0x13bad $BB9D 90 01                   ;
    INY                                ; 0x13baf $BB9F C8                      ;
LBBA0:                                                                          ;
    LDA      $01                       ; 0x13bb0 $BBA0 A5 01                   ;
    CMP      $60,x                     ; 0x13bb2 $BBA2 D5 60                   ;; Enemy facing direction
    BNE      LBBC4                     ; 0x13bb4 $BBA4 D0 1E                   ;
    LDA      LBA53,y                   ; 0x13bb6 $BBA6 B9 53 BA                ;
    STA      $71,x                     ; 0x13bb9 $BBA9 95 71                   ;; Enemy X Velocity
    LDA      $12                       ; 0x13bbb $BBAB A5 12                   ;; Frame Counter (ascending)
    LSR                                ; 0x13bbd $BBAD 4A                      ;
    BCC      LBBB2                     ; 0x13bbe $BBAE 90 02                   ;
    DEC      $AF,x                     ; 0x13bc0 $BBB0 D6 AF                   ;; Various enemy state variables
LBBB2:                                                                          ;
    LDA      $0F                       ; 0x13bc2 $BBB2 A5 0F                   ;
    BPL      LBBB8                     ; 0x13bc4 $BBB4 10 02                   ;
    EOR      #$FF                      ; 0x13bc6 $BBB6 49 FF                   ;;Flip Bits:1111_1111
LBBB8:                                                                          ;
    CMP      #$60                      ; 0x13bc8 $BBB8 C9 60                   ;
    BCC      LBBC5                     ; 0x13bca $BBBA 90 09                   ;
LBBBC:                                                                          ;
    LDA      $AF,x                     ; 0x13bcc $BBBC B5 AF                   ;; Various enemy state variables
    AND      #$7F                      ; 0x13bce $BBBE 29 7F                   ;;Keep Bits:0111_1111
    ORA      #$10                      ; 0x13bd0 $BBC0 09 10                   ;;Set Bits:0001_0000
    STA      $AF,x                     ; 0x13bd2 $BBC2 95 AF                   ;; Various enemy state variables
LBBC4:                                                                          ;
    RTS                                ; 0x13bd4 $BBC4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBBC5:                                                                          ;
    CMP      #$20                      ; 0x13bd5 $BBC5 C9 20                   ;
    BCC      LBBD7                     ; 0x13bd7 $BBC7 90 0E                   ;
    LDA      $12                       ; 0x13bd9 $BBC9 A5 12                   ;; Frame Counter (ascending)
    AND      #$3F                      ; 0x13bdb $BBCB 29 3F                   ;;Keep Bits:0011_1111
    BNE      LBBD6                     ; 0x13bdd $BBCD D0 07                   ;
    LDA      $051B,x                   ; 0x13bdf $BBCF BD 1B 05                ;; Randomizer
    AND      #$03                      ; 0x13be2 $BBD2 29 03                   ;;Keep Bits:0000_0011
    BNE      LBBBC                     ; 0x13be4 $BBD4 D0 E6                   ;
LBBD6:                                                                          ;
    RTS                                ; 0x13be6 $BBD6 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBBD7:                                                                          ;
    LDA      $A1,x                     ; 0x13be7 $BBD7 B5 A1                   ;; Enemy Code
    CMP      #$20                      ; 0x13be9 $BBD9 C9 20                   ;
    BNE      LBBF8                     ; 0x13beb $BBDB D0 1B                   ;
    LDA      $051B,x                   ; 0x13bed $BBDD BD 1B 05                ;; Randomizer
    AND      #$07                      ; 0x13bf0 $BBE0 29 07                   ;;Keep Bits:0000_0111
    ORA      $81,x                     ; 0x13bf2 $BBE2 15 81                   ;; Current Animation Frame for Enemys
    BNE      LBBF8                     ; 0x13bf4 $BBE4 D0 12                   ;
    LDA      $60,x                     ; 0x13bf6 $BBE6 B5 60                   ;; Enemy facing direction
    PHA                                ; 0x13bf8 $BBE8 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13bf9 $BBE9 20 91 DC;
    PLA                                ; 0x13bfc $BBEC 68                      ;
    STA      $60,x                     ; 0x13bfd $BBED 95 60                   ;; Enemy facing direction
    INY                                ; 0x13bff $BBEF C8                      ;
    TYA                                ; 0x13c00 $BBF0 98                      ;
    CMP      $60,x                     ; 0x13c01 $BBF1 D5 60                   ;; Enemy facing direction
    BNE      LBBF8                     ; 0x13c03 $BBF3 D0 03                   ;
    JSR      bank4_increase_animation_frame__and_set_timer_for_next_AI__maybe; 0x13c05 $BBF5 20 23 BC;
LBBF8:                                                                          ;
    LDA      $AF,x                     ; 0x13c08 $BBF8 B5 AF                   ;; Various enemy state variables
    ASL                                ; 0x13c0a $BBFA 0A                      ;
    BNE      LBC10                     ; 0x13c0b $BBFB D0 13                   ;
    LDA      $051B,x                   ; 0x13c0d $BBFD BD 1B 05                ;; Randomizer
    AND      #$07                      ; 0x13c10 $BC00 29 07                   ;;Keep Bits:0000_0111
    BNE      LBC10                     ; 0x13c12 $BC02 D0 0C                   ;
    JSR      LBBBC                     ; 0x13c14 $BC04 20 BC BB                ;
    LDA      $051B,x                   ; 0x13c17 $BC07 BD 1B 05                ;; Randomizer
    AND      #$80                      ; 0x13c1a $BC0A 29 80                   ;;Keep Bits:1000_0000
    ORA      $AF,x                     ; 0x13c1c $BC0C 15 AF                   ;; Various enemy state variables
    STA      $AF,x                     ; 0x13c1e $BC0E 95 AF                   ;; Various enemy state variables
LBC10:                                                                          ;
    RTS                                ; 0x13c20 $BC10 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBC11:                                                                          ;
    LDA      $81,x                     ; 0x13c21 $BC11 B5 81                   ;; Current Animation Frame for Enemys
    BEQ      LBC2A                     ; 0x13c23 $BC13 F0 15                   ;
    LDY      $0504,x                   ; 0x13c25 $BC15 BC 04 05                ;; Timer for Enemy
    BNE      LBC2A                     ; 0x13c28 $BC18 D0 10                   ;
    LDA      $81,x                     ; 0x13c2a $BC1A B5 81                   ;; Current Animation Frame for Enemys
    CMP      #$02                      ; 0x13c2c $BC1C C9 02                   ;
    BNE      bank4_increase_animation_frame__and_set_timer_for_next_AI__maybe; 0x13c2e $BC1E D0 03;
    DEY                                ; 0x13c30 $BC20 88                      ;
    STY      $81,x                     ; 0x13c31 $BC21 94 81                   ;; Current Animation Frame for Enemys
bank4_increase_animation_frame__and_set_timer_for_next_AI__maybe:               ;
    INC      $81,x                     ; 0x13c33 $BC23 F6 81                   ; Current Animation Frame for Enemy
;0F is used for Stalfos delays, as well as Horsehead delays                    ;
    LDA      #$0F                      ; 0x13c35 $BC25 A9 0F                   ; A = 0F (Stalfos various attack delays)
    STA      $0504,x                   ; 0x13c37 $BC27 9D 04 05                ; Timer for Enemy AI
LBC2A:                                                                          ;
    RTS                                ; 0x13c3a $BC2A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13c3b $BC2B 20 91 DC; Determine Enemy Facing Direction
    LDA      $0F                       ; 0x13c3e $BC2E A5 0F                   ;
    ADC      #$25                      ; 0x13c40 $BC30 69 25                   ;
    CMP      #$4A                      ; 0x13c42 $BC32 C9 4A                   ;
    BCC      LBC3D                     ; 0x13c44 $BC34 90 07                   ;
    LDA      #$40                      ; 0x13c46 $BC36 A9 40                   ; A = 40
    STA      $05DE                     ; 0x13c48 $BC38 8D DE 05                ;
    BCS      LBC48                     ; 0x13c4b $BC3B B0 0B                   ;
LBC3D:                                                                          ;
    INC      $05DE                     ; 0x13c4d $BC3D EE DE 05                ;
    LDA      $05DE                     ; 0x13c50 $BC40 AD DE 05                ;
    AND      #$40                      ; 0x13c53 $BC43 29 40                   ; keep bits .x.. ....
    BNE      LBC48                     ; 0x13c55 $BC45 D0 01                   ;
    INY                                ; 0x13c57 $BC47 C8                      ;
LBC48:                                                                          ;
    LDA      bank4_Table_for_Movement_Velocities,y; 0x13c58 $BC48 B9 54 BA         ;
    STA      $71,x                     ; 0x13c5b $BC4B 95 71                   ; Enemy X Velocity
    RTS                                ; 0x13c5d $BC4D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Related_to_Horsehead:                                                     ;
    JSR      bank7_Display             ; 0x13c5e $BC4E 20 11 EF                ; Display
    JSR      L9E17                     ; 0x13c61 $BC51 20 17 9E                ;disable and horsehead does not move
    JSR      LE617                     ; 0x13c64 $BC54 20 17 E6                ;check if horsehead get hit in body
    JSR      LDE3D                     ; 0x13c67 $BC57 20 3D DE                ;check if horsehead get hit in head
    JSR      bank7_Link_Collision_Detection; 0x13c6a $BC5A 20 C1 D6                ;disable and can walk through horsehead, no damage to link
    LDA      #$01                      ; 0x13c6d $BC5D A9 01                   ; A = 01
    CMP      $B6,x                     ; 0x13c6f $BC5F D5 B6                   ; Generated Enemy Slot
    BEQ      LBC75                     ; 0x13c71 $BC61 F0 12                   ;
    STA      $B6,x                     ; 0x13c73 $BC63 95 B6                   ;; Generated Enemy Slot
    LDA      #$FF                      ; 0x13c75 $BC65 A9 FF                   ; A = FF
    LDY      $A1,x                     ; 0x13c77 $BC67 B4 A1                   ; Enemy Code
    STA      $6E1D,y                   ; 0x13c79 $BC69 99 1D 6E                ;
    STA      $0504,x                   ; 0x13c7c $BC6C 9D 04 05                ;; Timer for Enemy
    LSR                                ; 0x13c7f $BC6F 4A                      ;
    STA      $040E,x                   ; 0x13c80 $BC70 9D 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    PLA                                ; 0x13c83 $BC73 68                      ;
    PLA                                ; 0x13c84 $BC74 68                      ;
LBC75:                                                                          ;
    RTS                                ; 0x13c85 $BC75 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Table_for_Helmethead_Gooma:                                               ;
.byt    $30,$90                        ; 0x13c86 $BC76 30 90                   ;HP for Helmethead / Gooma
LBC78:                                                                          ;
.byt    $CB,$CD                        ; 0x13c88 $BC78 CB CD                   ;
LBC7A:                                                                          ;
.byt    $32,$35                        ; 0x13c8a $BC7A 32 35                   ;
LBC7C:                                                                          ;
.byt    $07,$11                        ; 0x13c8c $BC7C 07 11                   ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_Helmethead__Gooma__Barba:                             ;
    JSR      bank4_Enemy_Init_Routines_Horsehead__Rebonack; 0x13c8e $BC7E 20 A1 BC ;
    LDY      #$00                      ; 0x13c91 $BC81 A0 00                   ; Y = 00
    LDA      $0706                     ; 0x13c93 $BC83 AD 06 07                ; Current Region
    BEQ      LBC89                     ; 0x13c96 $BC86 F0 01                   ;
    INY                                ; 0x13c98 $BC88 C8                      ;
LBC89:                                                                          ;
    LDA      bank4_Table_for_Helmethead_Gooma,y; 0x13c99 $BC89 B9 76 BC            ;
    STA      $C2,x                     ; 0x13c9c $BC8C 95 C2                   ; Enemy Current HP
    LDA      LBC78,y                   ; 0x13c9e $BC8E B9 78 BC                ;
    STA      $6DF6                     ; 0x13ca1 $BC91 8D F6 6D                ;
    LDA      LBC7A,y                   ; 0x13ca4 $BC94 B9 7A BC                ;
    STA      $6E1A                     ; 0x13ca7 $BC97 8D 1A 6E                ;
    LDA      LBC7C,y                   ; 0x13caa $BC9A B9 7C BC                ;
    STA      $6E3E                     ; 0x13cad $BC9D 8D 3E 6E                ;
    RTS                                ; 0x13cb0 $BCA0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Init_Routines_Horsehead__Rebonack:                                  ;
    LDX      #$01                      ; 0x13cb1 $BCA1 A2 01                   ; X = 01
    JSR      LC2A6                     ; 0x13cb3 $BCA3 20 A6 C2                ;
    LDX      $10                       ; 0x13cb6 $BCA6 A6 10                   ;; used as monster x register ;draw boss hp bar
    CMP      #$00                      ; 0x13cb8 $BCA8 C9 00                   ;
    BNE      LBCAF                     ; 0x13cba $BCAA D0 03                   ;
    STA      $B6,x                     ; 0x13cbc $BCAC 95 B6                   ; Generated Enemy Slot
    RTS                                ; 0x13cbe $BCAE 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBCAF:                                                                          ;
    LDA      #$02                      ; 0x13cbf $BCAF A9 02                   ; A = 02
    STA      $0444,x                   ; 0x13cc1 $BCB1 9D 44 04                ; Enemy Vulnerability
    LDA      #$07                      ; 0x13cc4 $BCB4 A9 07                   ; A = 07
    LDY      $A1,x                     ; 0x13cc6 $BCB6 B4 A1                   ; Enemy Code
    STA      $6E1D,y                   ; 0x13cc8 $BCB8 99 1D 6E                ;
    RTS                                ; 0x13ccb $BCBB 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Tinsuit:                                                   ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x13ccc $BCBC 20 02 DA                ; Enemy Stops when Hit
    JSR      LDE3D                     ; 0x13ccf $BCBF 20 3D DE                ; Display
    JSR      bank7_Link_Collision_Detection; 0x13cd2 $BCC2 20 C1 D6                ; Link Collision Detection
    LDA      $A8,x                     ; 0x13cd5 $BCC5 B5 A8                   ; Enemy State ?
    AND      #$04                      ; 0x13cd7 $BCC7 29 04                   ; keep bits .... .x..
    BEQ      LBCD5                     ; 0x13cd9 $BCC9 F0 0A                   ;
    JSR      bank7_Floor_Y_Position    ; 0x13cdb $BCCB 20 C1 DA                ; Floor Enemy Y Position
    LDA      #$F0                      ; 0x13cde $BCCE A9 F0                   ; A = F0 (jumping velocity for Tinsuit)
    STA      $057E,x                   ; 0x13ce0 $BCD0 9D 7E 05                ; Enemy Y Velocity
    INC      $AF,x                     ; 0x13ce3 $BCD3 F6 AF                   ; related to enemy animation frame
LBCD5:                                                                          ;
    JSR      bank7_Gravity             ; 0x13ce5 $BCD5 20 BE DE                ; Gravity
    LDA      $A8,x                     ; 0x13ce8 $BCD8 B5 A8                   ; Enemy State ?
    AND      #$03                      ; 0x13cea $BCDA 29 03                   ; keep bits .... ..xx
    BEQ      LBCE1                     ; 0x13cec $BCDC F0 03                   ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x13cee $BCDE 20 EB E8; Wall Hit Collision Test (from right)
LBCE1:                                                                          ;
    JMP      bank7_Simple_Horizontal_Movement; 0x13cf1 $BCE1 4C B8 DE              ; Simple Horizontal Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table15:                                                                  ;
.byt    $18,$E8                        ; 0x13cf4 $BCE4 18 E8                   ;
LBCE6:                                                                          ;
.byt    $01,$FF                        ; 0x13cf6 $BCE6 01 FF                   ;
LBCE8:                                                                          ;
.byt    $06,$FA,$00,$FF                ; 0x13cf8 $BCE8 06 FA 00 FF             ;
LBCEC:                                                                          ;
.byt    $E0,$F0,$F8                    ; 0x13cfc $BCEC E0 F0 F8                ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines_Floating_Helmet:                                           ;
    JSR      bank7_Display             ; 0x13cff $BCEF 20 11 EF                ;
    JSR      LE4D9                     ; 0x13d02 $BCF2 20 D9 E4                ;
    JSR      bank7_Link_Collision_Detection; 0x13d05 $BCF5 20 C1 D6                ; Link Collision Detection
    JSR      bank7_Simple_Horizontal_Movement; 0x13d08 $BCF8 20 B8 DE              ; Simple Horizontal Movement
    LDA      $2A,x                     ; 0x13d0b $BCFB B5 2A                   ; Enemy Y Position
    LDY      $AF,x                     ; 0x13d0d $BCFD B4 AF                   ;; Various enemy state variables
    CPY      #$03                      ; 0x13d0f $BCFF C0 03                   ;
    BCS      LBD24                     ; 0x13d11 $BD01 B0 21                   ;
    CMP      #$C4                      ; 0x13d13 $BD03 C9 C4                   ;
    BCC      LBD21                     ; 0x13d15 $BD05 90 1A                   ;
    LDA      #$30                      ; 0x13d17 $BD07 A9 30                   ;;A = #$30 0011_0000
    STA      $0504,x                   ; 0x13d19 $BD09 9D 04 05                ;; Timer for Enemy
    INC      $AF,x                     ; 0x13d1c $BD0C F6 AF                   ;; Various enemy state variables
    LDA      LBCEC,y                   ; 0x13d1e $BD0E B9 EC BC                ;
    STA      $057E,x                   ; 0x13d21 $BD11 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    LDA      #$10                      ; 0x13d24 $BD14 A9 10                   ;;A = #$10 0001_0000
    STA      $EE                       ; 0x13d26 $BD16 85 EE                   ;; Sound Effects Type 3; Sound Effects Type 3
    LDA      #$C3                      ; 0x13d28 $BD18 A9 C3                   ; A = C3
    STA      $2A,x                     ; 0x13d2a $BD1A 95 2A                   ;; Enemy Y Position
    LDA      $71,x                     ; 0x13d2c $BD1C B5 71                   ;; Enemy X Velocity
    ASL                                ; 0x13d2e $BD1E 0A                      ;
    ROR      $71,x                     ; 0x13d2f $BD1F 76 71                   ;; Enemy X Velocity
LBD21:                                                                          ;
    JMP      bank7_Gravity             ; 0x13d31 $BD21 4C BE DE                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBD24:                                                                          ;
    LDY      $0444,x                   ; 0x13d34 $BD24 BC 44 04                ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
    BNE      LBD3E                     ; 0x13d37 $BD27 D0 15                   ;
    CMP      #$70                      ; 0x13d39 $BD29 C9 70                   ;
    BCC      LBD3E                     ; 0x13d3b $BD2B 90 11                   ;
    LDA      #$00                      ; 0x13d3d $BD2D A9 00                   ;;A = #$00 0000_0000
    STA      $71,x                     ; 0x13d3f $BD2F 95 71                   ;; Enemy X Velocity
    STA      $057E,x                   ; 0x13d41 $BD31 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    LDY      $0504,x                   ; 0x13d44 $BD34 BC 04 05                ;; Timer for Enemy
    BNE      LBD3D                     ; 0x13d47 $BD37 D0 04                   ;
    DEC      $2A,x                     ; 0x13d49 $BD39 D6 2A                   ;; Enemy Y Position
    DEC      $2A,x                     ; 0x13d4b $BD3B D6 2A                   ;; Enemy Y Position
LBD3D:                                                                          ;
    RTS                                ; 0x13d4d $BD3D 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBD3E:                                                                          ;
    STA      $0444,x                   ; 0x13d4e $BD3E 9D 44 04                ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
    JSR      bank7_Simple_Vertical_Movement; 0x13d51 $BD41 20 C8 DE                ;
    LDA      $AF,x                     ; 0x13d54 $BD44 B5 AF                   ;; Various enemy state variables
    AND      #$01                      ; 0x13d56 $BD46 29 01                   ;;Keep Bits:0000_0001
    TAY                                ; 0x13d58 $BD48 A8                      ;
    LDA      $057E,x                   ; 0x13d59 $BD49 BD 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    CLC                                ; 0x13d5c $BD4C 18                      ;
    ADC      LBCE6,y                   ; 0x13d5d $BD4D 79 E6 BC                ;
    STA      $057E,x                   ; 0x13d60 $BD50 9D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    CMP      bank4_table15,y           ; 0x13d63 $BD53 D9 E4 BC                ;
    BNE      LBD5A                     ; 0x13d66 $BD56 D0 02                   ;
    INC      $AF,x                     ; 0x13d68 $BD58 F6 AF                   ;; Various enemy state variables
LBD5A:                                                                          ;
    LDA      $12                       ; 0x13d6a $BD5A A5 12                   ;; Frame Counter (ascending)
    BNE      LBD66                     ; 0x13d6c $BD5C D0 08                   ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13d6e $BD5E 20 91 DC;
    LDA      LBCE8,y                   ; 0x13d71 $BD61 B9 E8 BC                ;
    STA      $71,x                     ; 0x13d74 $BD64 95 71                   ;; Enemy X Velocity
LBD66:                                                                          ;
    INC      $0401,x                   ; 0x13d76 $BD66 FE 01 04                ;
    LDA      $0401,x                   ; 0x13d79 $BD69 BD 01 04                ;
    ASL                                ; 0x13d7c $BD6C 0A                      ;
    BNE      LBD72                     ; 0x13d7d $BD6D D0 03                   ;
    JSR      L9BE5                     ; 0x13d7f $BD6F 20 E5 9B                ;
LBD72:                                                                          ;
    RTS                                ; 0x13d82 $BD72 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_BD73:                                                               ;
.byt    $FC,$04                        ; 0x13d83 $BD73 FC 04                   ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Helmethead__Gooma:                                        ;
    LDA      $0706                     ; 0x13d85 $BD75 AD 06 07                ;; overworld index (0=west hyrule, 1=death mtn/maze island, 2=east hyrule)
    BEQ      LBD7D                     ; 0x13d88 $BD78 F0 03                   ;
    JMP      LB5AE                     ; 0x13d8a $BD7A 4C AE B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBD7D:                                                                          ;
    LDY      #$50                      ; 0x13d8d $BD7D A0 50                   ;;Y = #$50 0101_0000
    LDA      $AF,x                     ; 0x13d8f $BD7F B5 AF                   ;; Various enemy state variables
    LDX      #$6C                      ; 0x13d91 $BD81 A2 6C                   ;;X = #$6c 0110_1100
    AND      #$7F                      ; 0x13d93 $BD83 29 7F                   ;;Keep Bits:0111_1111
    BEQ      LBD92                     ; 0x13d95 $BD85 F0 0B                   ;
    AND      #$07                      ; 0x13d97 $BD87 29 07                   ;;Keep Bits:0000_0111
    SEC                                ; 0x13d99 $BD89 38                      ;
    SBC      #$03                      ; 0x13d9a $BD8A E9 03                   ;
    CMP      #$03                      ; 0x13d9c $BD8C C9 03                   ;
    BCS      LBD92                     ; 0x13d9e $BD8E B0 02                   ;
    LDX      #$70                      ; 0x13da0 $BD90 A2 70                   ;;X = #$70 0111_0000
LBD92:                                                                          ;
    JSR      LF1F4                     ; 0x13da2 $BD92 20 F4 F1                ;
    JSR      LF0D7                     ; 0x13da5 $BD95 20 D7 F0                ;
    LDA      $C9                       ; 0x13da8 $BD98 A5 C9                   ;
    AND      #$0C                      ; 0x13daa $BD9A 29 0C                   ;;Keep Bits:0000_1100
    BNE      LBD72                     ; 0x13dac $BD9C D0 D4                   ;
    LDA      $01F0,y                   ; 0x13dae $BD9E B9 F0 01                ;
    SEC                                ; 0x13db1 $BDA1 38                      ;
    SBC      #$0C                      ; 0x13db2 $BDA2 E9 0C                   ;
    ADC      $05DE                     ; 0x13db4 $BDA4 6D DE 05                ;
    STA      L0000                     ; 0x13db7 $BDA7 85 00                   ;
    LDY      #$60                      ; 0x13db9 $BDA9 A0 60                   ;;Y = #$60 0110_0000
    JSR      LBDD6                     ; 0x13dbb $BDAB 20 D6 BD                ;
    LDA      $6E3E                     ; 0x13dbe $BDAE AD 3E 6E                ;
    BMI      LBDCD                     ; 0x13dc1 $BDB1 30 1A                   ;
    LDA      $60,x                     ; 0x13dc3 $BDB3 B5 60                   ;; Enemy facing direction
    PHA                                ; 0x13dc5 $BDB5 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13dc6 $BDB6 20 91 DC;
    PLA                                ; 0x13dc9 $BDB9 68                      ;
    STA      $60,x                     ; 0x13dca $BDBA 95 60                   ;; Enemy facing direction
    INY                                ; 0x13dcc $BDBC C8                      ;
    TYA                                ; 0x13dcd $BDBD 98                      ;
    CMP      $60,x                     ; 0x13dce $BDBE D5 60                   ;; Enemy facing direction
    BEQ      LBDCD                     ; 0x13dd0 $BDC0 F0 0B                   ;
    LDA      $0262                     ; 0x13dd2 $BDC2 AD 62 02                ;
    EOR      #$40                      ; 0x13dd5 $BDC5 49 40                   ;;Flip Bits:0100_0000
    STA      $0262                     ; 0x13dd7 $BDC7 8D 62 02                ;
    STA      $0266                     ; 0x13dda $BDCA 8D 66 02                ;
LBDCD:                                                                          ;
    RTS                                ; 0x13ddd $BDCD 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_table_BDCE:                                                               ;
.byt    $68,$80                        ; 0x13dde $BDCE 68 80                   ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Floating_Helmet:                                          ;
    LDY      $81,x                     ; 0x13de0 $BDD0 B4 81                   ;; Current Animation Frame for Enemys
    LDA      bank4_table_BDCE,y        ; 0x13de2 $BDD2 B9 CE BD                ;
    TAY                                ; 0x13de5 $BDD5 A8                      ;
LBDD6:                                                                          ;
    LDX      $02                       ; 0x13de6 $BDD6 A6 02                   ;
    LDA      $01                       ; 0x13de8 $BDD8 A5 01                   ;
    CLC                                ; 0x13dea $BDDA 18                      ;
LBDDD     = * + $0002                                                          ;
    ADC      LBD72,x                   ; 0x13deb $BDDB 7D 72 BD                ;
    STA      $01                       ; 0x13dee $BDDE 85 01                   ;
    LDX      $10                       ; 0x13df0 $BDE0 A6 10                   ;; used as monster x register ;draw boss hp bar
    LDA      $81,x                     ; 0x13df2 $BDE2 B5 81                   ;; Current Animation Frame for Enemys
    ASL                                ; 0x13df4 $BDE4 0A                      ;
    ADC      #$74                      ; 0x13df5 $BDE5 69 74                   ;
    TAX                                ; 0x13df7 $BDE7 AA                      ;
LBDEA     = * + $0002                                                          ;
    JMP      LF0D7                     ; 0x13df8 $BDE8 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    BPL      LBDDD                     ; 0x13dfb $BDEB 10 F0                   ;
bank4_Enemy_Routines1_Stalfos:                                                  ;
    TYA                                ; 0x13dfd $BDED 98                      ;
    PHA                                ; 0x13dfe $BDEE 48                      ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x13dff $BDEF 20 91 DC;
    PLA                                ; 0x13e02 $BDF2 68                      ;
    TAY                                ; 0x13e03 $BDF3 A8                      ;
    LDA      $04A0,x                   ; 0x13e04 $BDF4 BD A0 04                ;
    STA      L000E                     ; 0x13e07 $BDF7 85 0E                   ;
    LDA      #$00                      ; 0x13e09 $BDF9 A9 00                   ;;A = #$00 0000_0000
    STA      $0D                       ; 0x13e0b $BDFB 85 0D                   ;
    LDA      $057E,x                   ; 0x13e0d $BDFD BD 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    BEQ      LBE18                     ; 0x13e10 $BE00 F0 16                   ;
    LDX      #$34                      ; 0x13e12 $BE02 A2 34                   ;;X = #$34 0011_0100
    ASL                                ; 0x13e14 $BE04 0A                      ;
    BCS      LBE31                     ; 0x13e15 $BE05 B0 2A                   ;
    LDA      L000E                     ; 0x13e17 $BE07 A5 0E                   ;
    BEQ      LBE13                     ; 0x13e19 $BE09 F0 08                   ;
    LDA      $0F                       ; 0x13e1b $BE0B A5 0F                   ;
    ADC      #$30                      ; 0x13e1d $BE0D 69 30                   ;
    CMP      #$60                      ; 0x13e1f $BE0F C9 60                   ;
    BCS      LBE2F                     ; 0x13e21 $BE11 B0 1C                   ;
LBE13:                                                                          ;
    LDX      #$38                      ; 0x13e23 $BE13 A2 38                   ;;X = #$38 0011_1000
    JMP      LBE31                     ; 0x13e25 $BE15 4C 31 BE                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBE18:                                                                          ;
    LDA      $81,x                     ; 0x13e28 $BE18 B5 81                   ;; Current Animation Frame for Enemys
    LDX      #$3C                      ; 0x13e2a $BE1A A2 3C                   ;;X = #$3c 0011_1100
    CMP      #$02                      ; 0x13e2c $BE1C C9 02                   ;
    BCS      LBE31                     ; 0x13e2e $BE1E B0 11                   ;
    LSR                                ; 0x13e30 $BE20 4A                      ;
    BCC      LBE27                     ; 0x13e31 $BE21 90 04                   ;
    LDA      #$16                      ; 0x13e33 $BE23 A9 16                   ;;A = #$16 0001_0110
    STA      $0D                       ; 0x13e35 $BE25 85 0D                   ;
LBE27:                                                                          ;
    LDX      #$2C                      ; 0x13e37 $BE27 A2 2C                   ;;X = #$2c 0010_1100
    LDA      $12                       ; 0x13e39 $BE29 A5 12                   ;; Frame Counter (ascending)
    AND      #$08                      ; 0x13e3b $BE2B 29 08                   ;;Keep Bits:0000_1000
    BEQ      LBE31                     ; 0x13e3d $BE2D F0 02                   ;
LBE2F:                                                                          ;
    LDX      #$30                      ; 0x13e3f $BE2F A2 30                   ;;X = #$30 0011_0000
LBE31:                                                                          ;
    STX      $D9                       ; 0x13e41 $BE31 86 D9                   ;; Thunder Spell modifier ?
    TXA                                ; 0x13e43 $BE33 8A                      ;
    CLC                                ; 0x13e44 $BE34 18                      ;
    ADC      $0D                       ; 0x13e45 $BE35 65 0D                   ;
    TAX                                ; 0x13e47 $BE37 AA                      ;
    JSR      LF1F4                     ; 0x13e48 $BE38 20 F4 F1                ;
    JSR      LF0D7                     ; 0x13e4b $BE3B 20 D7 F0                ;
    LDA      $D9                       ; 0x13e4e $BE3E A5 D9                   ;; Thunder Spell modifier ?
    CMP      #$38                      ; 0x13e50 $BE40 C9 38                   ;
    BNE      LBE57                     ; 0x13e52 $BE42 D0 13                   ;
    LDA      $01F2,y                   ; 0x13e54 $BE44 B9 F2 01                ;
    AND      #$3F                      ; 0x13e57 $BE47 29 3F                   ;;Keep Bits:0011_1111
    STA      $01F2,y                   ; 0x13e59 $BE49 99 F2 01                ;
    STA      $01FA,y                   ; 0x13e5c $BE4C 99 FA 01                ;
    ORA      #$40                      ; 0x13e5f $BE4F 09 40                   ;;Set Bits:0100_0000
    STA      $01F6,y                   ; 0x13e61 $BE51 99 F6 01                ;
    STA      $01FE,y                   ; 0x13e64 $BE54 99 FE 01                ;
LBE57:                                                                          ;
    LDA      $81,x                     ; 0x13e67 $BE57 B5 81                   ;; Current Animation Frame for Enemys
    CMP      #$02                      ; 0x13e69 $BE59 C9 02                   ;
    BNE      LBE7A                     ; 0x13e6b $BE5B D0 1D                   ;
    LDA      $C9                       ; 0x13e6d $BE5D A5 C9                   ;
    ORA      $057E,x                   ; 0x13e6f $BE5F 1D 7E 05                ;; Enemy Y Velocity; Enemy Y Velocity
    BNE      LBE7A                     ; 0x13e72 $BE62 D0 16                   ;
    TYA                                ; 0x13e74 $BE64 98                      ;
    PHA                                ; 0x13e75 $BE65 48                      ;
    LDY      $60,x                     ; 0x13e76 $BE66 B4 60                   ;; Enemy facing direction
    LDA      $01                       ; 0x13e78 $BE68 A5 01                   ;
    ADC      LBDEA,y                   ; 0x13e7a $BE6A 79 EA BD                ;
    STA      $01                       ; 0x13e7d $BE6D 85 01                   ;
    LDA      $2A,x                     ; 0x13e7f $BE6F B5 2A                   ;; Enemy Y Position
    STA      L0000                     ; 0x13e81 $BE71 85 00                   ;
    PLA                                ; 0x13e83 $BE73 68                      ;
    TAY                                ; 0x13e84 $BE74 A8                      ;
    LDX      #$40                      ; 0x13e85 $BE75 A2 40                   ;;X = #$40 0100_0000
    JMP      LF0D7                     ; 0x13e87 $BE77 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBE7A:                                                                          ;
    RTS                                ; 0x13e8a $BE7A 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_Enemy_Routines1_Mago:                                                     ;
    LDA      $AF,x                     ; 0x13e8b $BE7B B5 AF                   ;; Various enemy state variables
    LDX      #$1A                      ; 0x13e8d $BE7D A2 1A                   ;;X = #$1a 0001_1010
    CMP      #$D3                      ; 0x13e8f $BE7F C9 D3                   ;
    BCS      LBE85                     ; 0x13e91 $BE81 B0 02                   ;
    LDX      #$1E                      ; 0x13e93 $BE83 A2 1E                   ;;X = #$1e 0001_1110
LBE85:                                                                          ;
    JSR      LF1F4                     ; 0x13e95 $BE85 20 F4 F1                ;
    JMP      LF0D7                     ; 0x13e98 $BE88 4C D7 F0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBE8B:                                                                          ;
    LDA      $0728                     ; 0x13e9b $BE8B AD 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    BNE      LBE9C                     ; 0x13e9e $BE8E D0 0C                   ;
    LDA      $072A                     ; 0x13ea0 $BE90 AD 2A 07                ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    BEQ      LBEF0                     ; 0x13ea3 $BE93 F0 5B                   ;
    LDA      #$08                      ; 0x13ea5 $BE95 A9 08                   ;;A = #$08 0000_1000
    STA      $EB                       ; 0x13ea7 $BE97 85 EB                   ;; Music; Music
    INC      $0728                     ; 0x13ea9 $BE99 EE 28 07                ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
LBE9C:                                                                          ;
    LDY      $A1,x                     ; 0x13eac $BE9C B4 A1                   ;; Enemy Code
    LDA      $6E1D,y                   ; 0x13eae $BE9E B9 1D 6E                ;
    BPL      LBEF5                     ; 0x13eb1 $BEA1 10 52                   ;
    LDY      $040E,x                   ; 0x13eb3 $BEA3 BC 0E 04                ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    BNE      LBEF0                     ; 0x13eb6 $BEA6 D0 48                   ;
    INC      $B6,x                     ; 0x13eb8 $BEA8 F6 B6                   ;; Generated Enemy Slot
    LDA      #$0A                      ; 0x13eba $BEAA A9 0A                   ;;A = #$0a 0000_1010
    STA      $D9                       ; 0x13ebc $BEAC 85 D9                   ;; Thunder Spell modifier ?
    LDA      $10                       ; 0x13ebe $BEAE A5 10                   ;; used as monster x register ;draw boss hp bar
    PHA                                ; 0x13ec0 $BEB0 48                      ;
    LDX      #$05                      ; 0x13ec1 $BEB1 A2 05                   ;;X = #$05 0000_0101
LBEB3:                                                                          ;
    STX      $10                       ; 0x13ec3 $BEB3 86 10                   ;; used as monster x register ;draw boss hp bar
    LDA      #$00                      ; 0x13ec5 $BEB5 A9 00                   ;;A = #$00 0000_0000
    STA      $87,x                     ; 0x13ec7 $BEB7 95 87                   ;; Projectile Type
    LDA      $B6,x                     ; 0x13ec9 $BEB9 B5 B6                   ;; Generated Enemy Slot
    BEQ      LBEE5                     ; 0x13ecb $BEBB F0 28                   ;
    CMP      #$01                      ; 0x13ecd $BEBD C9 01                   ;
    BNE      LBEE5                     ; 0x13ecf $BEBF D0 24                   ;
    INX                                ; 0x13ed1 $BEC1 E8                      ;
    LDY      #$01                      ; 0x13ed2 $BEC2 A0 01                   ;;Y = #$01 0000_0001
    JSR      bank7_code51              ; 0x13ed4 $BEC4 20 7D F2                ;
    LDX      $10                       ; 0x13ed7 $BEC7 A6 10                   ;; used as monster x register ;draw boss hp bar
    LDY      $D9                       ; 0x13ed9 $BEC9 A4 D9                   ;; Thunder Spell modifier ?
    BNE      LBEE2                     ; 0x13edb $BECB D0 15                   ;
    LDA      $C9                       ; 0x13edd $BECD A5 C9                   ;
    AND      #$88                      ; 0x13edf $BECF 29 88                   ;;Keep Bits:1000_1000
    BNE      LBEE5                     ; 0x13ee1 $BED1 D0 12                   ;
    LDY      $A1,x                     ; 0x13ee3 $BED3 B4 A1                   ;; Enemy Code
    LDA      $6E41,y                   ; 0x13ee5 $BED5 B9 41 6E                ;
    LDY      #$09                      ; 0x13ee8 $BED8 A0 09                   ;;Y = #$09 0000_1001
    AND      #$A0                      ; 0x13eea $BEDA 29 A0                   ;;Keep Bits:1010_0000
    BMI      LBEE5                     ; 0x13eec $BEDC 30 07                   ;
    BEQ      LBEE2                     ; 0x13eee $BEDE F0 02                   ;
    LDY      #$01                      ; 0x13ef0 $BEE0 A0 01                   ;;Y = #$01 0000_0001
LBEE2:                                                                          ;
    JSR      LE726                     ; 0x13ef2 $BEE2 20 26 E7                ;
LBEE5:                                                                          ;
    DEX                                ; 0x13ef5 $BEE5 CA                      ;
    BPL      LBEB3                     ; 0x13ef6 $BEE6 10 CB                   ;
    PLA                                ; 0x13ef8 $BEE8 68                      ;
    STA      $10                       ; 0x13ef9 $BEE9 85 10                   ;; used as monster x register ;draw boss hp bar
    TAX                                ; 0x13efb $BEEB AA                      ;
    LDA      #$80                      ; 0x13efc $BEEC A9 80                   ;;A = #$80 1000_0000
    STA      $EB                       ; 0x13efe $BEEE 85 EB                   ;; Music; Music
LBEF0:                                                                          ;
    PLA                                ; 0x13f00 $BEF0 68                      ;
    PLA                                ; 0x13f01 $BEF1 68                      ;
    JMP      bank7_Display             ; 0x13f02 $BEF2 4C 11 EF                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBEF5:                                                                          ;
    RTS                                ; 0x13f05 $BEF5 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBEF6:                                                                          ;
    LDA      $ED                       ; 0x13f06 $BEF6 A5 ED                   ;; Sound Effects Type 2; Sound Effects Type 2
    ORA      #$40                      ; 0x13f08 $BEF8 09 40                   ;;Set Bits:0100_0000
    STA      $ED                       ; 0x13f0a $BEFA 85 ED                   ;; Sound Effects Type 2; Sound Effects Type 2
    RTS                                ; 0x13f0c $BEFC 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_bank_UNUSED_BEFD:                                                         ;
.byt    $FF,$FF,$FF                    ; 0x13f0d $BEFD FF FF FF                ;
bank4_Palettes_for_Palaces1:                                                    ;
.byt    $0F,$30,$12,$16,$0F,$00,$10,$30; 0x13f10 $BF00 0F 30 12 16 0F 00 10 30 ;
.byt    $0F,$00,$16,$30,$0F,$3C,$1C,$0C; 0x13f18 $BF08 0F 00 16 30 0F 3C 1C 0C ;
bank4_Palettes_for_Palaces2:                                                    ;
.byt    $0F,$30,$12,$16,$0F,$0C,$1C,$3C; 0x13f20 $BF10 0F 30 12 16 0F 0C 1C 3C ;
.byt    $0F,$0C,$16,$30,$0F,$26,$16,$06; 0x13f28 $BF18 0F 0C 16 30 0F 26 16 06 ;
bank4_Palettes_for_Palaces3:                                                    ;
.byt    $0F,$30,$12,$16,$0F,$0F,$06,$26; 0x13f30 $BF20 0F 30 12 16 0F 0F 06 26 ;
.byt    $0F,$06,$16,$30,$0F,$34,$24,$04; 0x13f38 $BF28 0F 06 16 30 0F 34 24 04 ;
bank4_Palettes_for_Palaces4:                                                    ;
.byt    $0F,$30,$12,$16,$0F,$0F,$03,$23; 0x13f40 $BF30 0F 30 12 16 0F 0F 03 23 ;
.byt    $0F,$03,$16,$30,$0F,$37,$27,$07; 0x13f48 $BF38 0F 03 16 30 0F 37 27 07 ;
bank4_Palettes_for_Palaces5:                                                    ;
.byt    $0F,$30,$12,$16,$0F,$0F,$0A,$2A; 0x13f50 $BF40 0F 30 12 16 0F 0F 0A 2A ;
.byt    $0F,$0A,$16,$30,$0F,$32,$22,$02; 0x13f58 $BF48 0F 0A 16 30 0F 32 22 02 ;
bank4_Palettes_for_Palaces6:                                                    ;
.byt    $0F,$30,$12,$16,$0F,$0F,$05,$25; 0x13f60 $BF50 0F 30 12 16 0F 0F 05 25 ;
.byt    $0F,$05,$16,$30,$0F,$30,$10,$00; 0x13f68 $BF58 0F 05 16 30 0F 30 10 00 ;
bank4_UNUSED_BF60:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x13f70 $BF60 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x13f78 $BF68 FF FF FF FF FF FF FF FF ;
; ---------------------------------------------------------------------------- ;
    SEI                                ; 0x13f80 $BF70 78                      ;
    CLD                                ; 0x13f81 $BF71 D8                      ;
    LDX      #$00                      ; 0x13f82 $BF72 A2 00                   ;;X = #$00 0000_0000
    STX      $2000                     ; 0x13f84 $BF74 8E 00 20                ;
    INX                                ; 0x13f87 $BF77 E8                      ;
LBF78:                                                                          ;
    LDA      $2002                     ; 0x13f88 $BF78 AD 02 20                ;
    BPL      LBF78                     ; 0x13f8b $BF7B 10 FB                   ;
    DEX                                ; 0x13f8d $BF7D CA                      ;
    BEQ      LBF78                     ; 0x13f8e $BF7E F0 F8                   ;
    TXS                                ; 0x13f90 $BF80 9A                      ;
    STX      bank4_Pointer_table_for_Background_Areas_Data; 0x13f91 $BF81 8E 00 80 ;
    STX      bank4_Area_Pointers_Palaces_Type_B_; 0x13f94 $BF84 8E 00 A0           ;
    STX      bank7_PowerON_code        ; 0x13f97 $BF87 8E 00 C0                ;
    STX      LE000                     ; 0x13f9a $BF8A 8E 00 E0                ;
    LDA      #$0F                      ; 0x13f9d $BF8D A9 0F                   ;;A = #$0f 0000_1111
    JSR      LBF9D                     ; 0x13f9f $BF8F 20 9D BF                ;
    JSR      LBFB1                     ; 0x13fa2 $BF92 20 B1 BF                ;
    LDA      #$07                      ; 0x13fa5 $BF95 A9 07                   ;;A = #$07 0000_0111
    JSR      LBFCC                     ; 0x13fa7 $BF97 20 CC BF                ;
    JMP      bank7_PowerON_code        ; 0x13faa $BF9A 4C 00 C0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBF9D:                                                                          ;
    STA      bank4_Pointer_table_for_Background_Areas_Data; 0x13fad $BF9D 8D 00 80 ;
    LSR                                ; 0x13fb0 $BFA0 4A                      ;
    STA      bank4_Pointer_table_for_Background_Areas_Data; 0x13fb1 $BFA1 8D 00 80 ;
    LSR                                ; 0x13fb4 $BFA4 4A                      ;
    STA      bank4_Pointer_table_for_Background_Areas_Data; 0x13fb5 $BFA5 8D 00 80 ;
    LSR                                ; 0x13fb8 $BFA8 4A                      ;
    STA      bank4_Pointer_table_for_Background_Areas_Data; 0x13fb9 $BFA9 8D 00 80 ;
    LSR                                ; 0x13fbc $BFAC 4A                      ;
    STA      bank4_Pointer_table_for_Background_Areas_Data; 0x13fbd $BFAD 8D 00 80 ;
    RTS                                ; 0x13fc0 $BFB0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBFB1:                                                                          ;
    STA      bank4_Area_Pointers_Palaces_Type_B_; 0x13fc1 $BFB1 8D 00 A0           ;
    LSR                                ; 0x13fc4 $BFB4 4A                      ;
    STA      bank4_Area_Pointers_Palaces_Type_B_; 0x13fc5 $BFB5 8D 00 A0           ;
    LSR                                ; 0x13fc8 $BFB8 4A                      ;
    STA      bank4_Area_Pointers_Palaces_Type_B_; 0x13fc9 $BFB9 8D 00 A0           ;
    LSR                                ; 0x13fcc $BFBC 4A                      ;
    STA      bank4_Area_Pointers_Palaces_Type_B_; 0x13fcd $BFBD 8D 00 A0           ;
    LSR                                ; 0x13fd0 $BFC0 4A                      ;
    STA      bank4_Area_Pointers_Palaces_Type_B_; 0x13fd1 $BFC1 8D 00 A0           ;
    RTS                                ; 0x13fd4 $BFC4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      #$00                      ; 0x13fd5 $BFC5 A9 00                   ;;A = #$00 0000_0000
    BEQ      LBFCC                     ; 0x13fd7 $BFC7 F0 03                   ;
    LDA      $0769                     ; 0x13fd9 $BFC9 AD 69 07                ;; Bank to switch to (other than 0 or 7)
LBFCC:                                                                          ;
    STA      LE000                     ; 0x13fdc $BFCC 8D 00 E0                ;
    LSR                                ; 0x13fdf $BFCF 4A                      ;
    STA      LE000                     ; 0x13fe0 $BFD0 8D 00 E0                ;
    LSR                                ; 0x13fe3 $BFD3 4A                      ;
    STA      LE000                     ; 0x13fe4 $BFD4 8D 00 E0                ;
    LSR                                ; 0x13fe7 $BFD7 4A                      ;
    STA      LE000                     ; 0x13fe8 $BFD8 8D 00 E0                ;
    LSR                                ; 0x13feb $BFDB 4A                      ;
    STA      LE000                     ; 0x13fec $BFDC 8D 00 E0                ;
    RTS                                ; 0x13fef $BFDF 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank4_ending_BFE0:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x13ff0 $BFE0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x13ff8 $BFE8 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x14000 $BFF0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF                        ; 0x14008 $BFF8 FF FF                   ;
bank4_tableEND:                                                                 ;
.byt    $7B,$C0,$70,$BF,$F0,$FF        ; 0x1400a $BFFA 7B C0 70 BF F0 FF       ;
; ---------------------------------------------------------------------------- ;
