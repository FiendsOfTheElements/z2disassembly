; DISASSEMBLY ORIGINALLY WROTE BY TRAX (99.9% of his work)
; * = $8000                                                                      ;
; da65 V2.18 
; Created     2021-04-12 11 24 19                                              ;
; Input file  bank1_and_7.nes                                                  ;
; Page        1                                                                ;
                                                                               ;
                                                                               ;
;.setcpu  "6502"                                                               ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
.export L0000     = $0000                                                              ;
.export L000E     = $000E                                                              ;
.export L0302     = $0302                                                              ;
.export L0363     = $0363                                                              ;
.export L03A4     = $03A4                                                              ;
.export L05C9     = $05C9                                                              ;
.export L0600     = $0600                                                              ;
.export L0620     = $0620                                                              ;
.export L0640     = $0640                                                              ;
.export L0660     = $0660                                                              ;
.export L0680     = $0680                                                              ;
.export L06A0     = $06A0                                                              ;
.export L06C0     = $06C0                                                              ;
.export L6060     = $6060                                                              ;
.export L6261     = $6261                                                              ;
.export L696C     = $696C                                                              ;
.export L7000     = $7000                                                              ;
.export L7002     = $7002                                                              ;
.export L7006     = $7006                                                              ;
.export L7012     = $7012                                                              ;
.export L701E     = $701E                                                              ;
.export L7026     = $7026                                                              ;
.export L7034     = $7034                                                              ;
.export L703E     = $703E                                                              ;
.export L7048     = $7048                                                              ;
.export L7050     = $7050                                                              ;
.export L7068     = $7068                                                              ;
.export L706C     = $706C                                                              ;
.export L7072     = $7072                                                              ;
.export L7080     = $7080                                                              ;
.export L7088     = $7088                                                              ;
.export L7090     = $7090                                                              ;
.export L7096     = $7096                                                              ;
.export L70A0     = $70A0                                                              ;
.export L70A2     = $70A2                                                              ;
.export L70B6     = $70B6                                                              ;
.export L70CC     = $70CC                                                              ;
.export L70E0     = $70E0                                                              ;
.export L70F8     = $70F8                                                              ;
.export L7108     = $7108                                                              ;
.export L7126     = $7126                                                              ;
.export L7140     = $7140                                                              ;
.export L7158     = $7158                                                              ;
.export L7168     = $7168                                                              ;
.export L7176     = $7176                                                              ;
.export L717C     = $717C                                                              ;
.export L7188     = $7188                                                              ;
.export L7194     = $7194                                                              ;
.export L71AC     = $71AC                                                              ;
.export L71B3     = $71B3                                                              ;
.export L71C0     = $71C0                                                              ;
.export L71CF     = $71CF                                                              ;
.export L71D5     = $71D5                                                              ;
.export L71D8     = $71D8                                                              ;
.export L71DA     = $71DA                                                              ;
.export L71EB     = $71EB                                                              ;
.export L71FA     = $71FA                                                              ;
.export L7218     = $7218                                                              ;
.export L7223     = $7223                                                              ;
.export L7228     = $7228                                                              ;
.export L7237     = $7237                                                              ;
.export L7244     = $7244                                                              ;
.export L724D     = $724D                                                              ;
.export L7256     = $7256                                                              ;
.export L725B     = $725B                                                              ;
.export L7268     = $7268                                                              ;
.export L7273     = $7273                                                              ;
.export L7280     = $7280                                                              ;
.export L728D     = $728D                                                              ;
.export L729C     = $729C                                                              ;
.export L72AB     = $72AB                                                              ;
.export L72BA     = $72BA                                                              ;
.export L72C5     = $72C5                                                              ;
.export L72CA     = $72CA                                                              ;
.export L72D9     = $72D9                                                              ;
.export L72E2     = $72E2                                                              ;
.export L72E5     = $72E5                                                              ;
.export L72EE     = $72EE                                                              ;
.export L72F9     = $72F9                                                              ;
.export L7311     = $7311                                                              ;
.export L731C     = $731C                                                              ;
.export L7325     = $7325                                                              ;
.export L732A     = $732A                                                              ;
.export L7335     = $7335                                                              ;
.export L7342     = $7342                                                              ;
.export L734B     = $734B                                                              ;
.export L734E     = $734E                                                              ;
.export L7366     = $7366                                                              ;
.export L737E     = $737E                                                              ;
.export L7C18     = $7C18                                                              ;
.export L7D76     = $7D76                                                              ;
.export L7DA6     = $7DA6                                                              ;
.export L7EEA     = $7EEA                                                              ;

.import LDAC7
.import LDD3D
.import LDE3D
.import LDE40
.import LDECE
.import LDED4
.import LDF01
.import LDF4C
.import LDF56
.import LE000
.import LE3B9
.import LE469
.import LE48A
.import LE563
.import LE94C
.import LF0CC
.import LF0D7
.import LF1F4
.import bank7_Change_Enemy_Facing_Direction_and_X_Velocity
.import bank7_code39
.import bank7_code43
.import bank7_code44
.import bank7_Desert_Rocks_initialization_routine
.import bank7_Determine_Enemy_Facing_Direction_relative_to_Link
.import bank7_Display
.import bank7_Enemy_Routines1_Ache_and_Acheman
.import bank7_Enemy_Routines1_Bago_Bago_Generator
.import bank7_Enemy_Routines1_Bago_Bago0
.import bank7_Enemy_Routines1_Bago_Bago1
.import bank7_Enemy_Routines1_Bit
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
.import bank7_Enemy_Routines2_Octorok
.import bank7_Enemy_Routines2_RedJar
.import bank7_Enemy_Routines2_unknown
.import bank7_Enemy_Stops_when_Hit
.import bank7_Floor_Y_Position
.import bank7_forest_chop_with_hammer
.import bank7_Gravity
.import bank7_idem__maybe
.import bank7_Link_Collision_Detection
.import bank7_Link_Hit_Routine
.import bank7_PowerON_code
.import bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP
.import bank7_Set_RAM_Address_for_Object0E0F
.import bank7_Set_Ram_Addy_for_Object__0E_0F
.import bank7_Set_tile_and_move_right_1_column
.import bank7_Simple_Horizontal_Movement
.import bank7_Simple_Vertical_Movement
.import bank7_Spawn_New_Projectile

; ---------------------------------------------------------------------------- ;

bank1_Pointer_table_for_Background_Areas_Data:                                  ;
.word    bank1_Background_Areas_Data   ; 0x4010 $8000 3C 8C                    ;
.word    L8C54                         ; 0x4012 $8002 54 8C                    ;
.word    L8C68                         ; 0x4014 $8004 68 8C                    ;
.word    L8C7C                         ; 0x4016 $8006 7C 8C                    ;
.word    L8C96                         ; 0x4018 $8008 96 8C                    ;
.word    L8CA8                         ; 0x401a $800A A8 8C                    ;
.word    L0000                         ; 0x401c $800C 00 00                    ;
; ---------------------------------------------------------------------------- ;
bank1_Palettes_for_West_Hyrule:                                                 ;
;The first byte of 0x10 sets the background color                              ;
;FF = black                                                                    ;
.byt    $0F,$30,$12,$16,$0F,$36,$16,$07; 0x401e $800E 0F 30 12 16 0F 36 16 07  ;North Castle		1
.byt    $0F,$00,$10,$30,$0F,$23,$03,$0F; 0x4026 $8016 0F 00 10 30 0F 23 03 0F  ;
.byt    $0F,$30,$12,$16,$0F,$37,$27,$06; 0x402e $801E 0F 30 12 16 0F 37 27 06  ;Grotto			2
.byt    $0F,$27,$16,$0F,$0F,$30,$10,$00; 0x4036 $8026 0F 27 16 0F 0F 30 10 00  ;
.byt    $22,$30,$12,$16,$22,$29,$17,$09; 0x403e $802E 22 30 12 16 22 29 17 09  ;Desert			3
.byt    $22,$30,$36,$27,$22,$30,$10,$00; 0x4046 $8036 22 30 36 27 22 30 10 00  ;
.byt    $21,$30,$12,$16,$21,$30,$00,$0F; 0x404e $803E 21 30 12 16 21 30 00 0F  ;Grass			4
.byt    $21,$29,$19,$09,$21,$30,$10,$00; 0x4056 $8046 21 29 19 09 21 30 10 00  ;
.byt    $0F,$30,$12,$16,$0F,$17,$07,$08; 0x405e $804E 0F 30 12 16 0F 17 07 08  ;Forest			5
.byt    $0F,$29,$19,$09,$0F,$30,$10,$00; 0x4066 $8056 0F 29 19 09 0F 30 10 00  ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x406e $805E 21 30 12 16 21 37 18 0F  ;Swamp			6
.byt    $21,$29,$1C,$0C,$21,$30,$10,$00; 0x4076 $8066 21 29 1C 0C 21 30 10 00  ;
.byt    $03,$30,$12,$16,$03,$19,$09,$0F; 0x407e $806E 03 30 12 16 03 19 09 0F  ;Graveyard		7
.byt    $03,$27,$16,$0F,$03,$30,$00,$0F; 0x4086 $8076 03 27 16 0F 03 30 00 0F  ;
bank1_Palettes_for_West_Hyrule_Bridge:                                          ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x408e $807E 21 30 12 16 21 37 18 0F  ;Bridge			8
.byt    $21,$30,$11,$01,$21,$30,$10,$00; 0x4096 $8086 21 30 11 01 21 30 10 00  ;
.byt    $0F,$30,$12,$16,$0F,$12,$01,$0F; 0x409e $808E 0F 30 12 16 0F 12 01 0F  ;Grotto without Candle	9
.byt    $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F; 0x40a6 $8096 0F 0F 0F 0F 0F 0F 0F 0F  ;
bank1_Palettes_for_Sprites_in_Grass__Desert__Swamp__Graveyard__Lava:            ;
.byt    $FF,$18,$36,$2A                ; 0x40ae $809E FF 18 36 2A              ;
bank1_Palettes_for_Sprites_in_Grass__Desert__Swamp__Graveyard__Lava_Orange_Enemies: ;
.byt    $FF,$16,$27,$30                ; 0x40b2 $80A2 FF 16 27 30              ;
bank1_Palettes_for_Sprites_in_Grass__Desert__Swamp__Graveyard__Lava_Red_Enemies: ;
.byt    $FF,$0F,$16,$30                ; 0x40b6 $80A6 FF 0F 16 30              ;
bank1_Palettes_for_Sprites_in_Grass__Desert__Swamp__Graveyard__Lava_Blue_Enemies: ;
.byt    $FF,$0F,$2C,$30                ; 0x40ba $80AA FF 0F 2C 30              ;
bank1_Palettes_for_Sprites_in_Forest__Palette_for_Link:                         ;
.byt    $FF,$18,$36,$2A                ; 0x40be $80AE FF 18 36 2A              ;
bank1_Palettes_for_Sprites_in_Forest__Palette_for_Orange_Enemies:               ;
.byt    $FF,$16,$27,$30                ; 0x40c2 $80B2 FF 16 27 30              ;
bank1_Palettes_for_Sprites_in_Forest__Palette_for_Red_Enemies:                  ;
.byt    $FF,$07,$16,$30                ; 0x40c6 $80B6 FF 07 16 30              ;
bank1_Palettes_for_Sprites_in_Forest__Palette_for_Blue_Enemies:                 ;
.byt    $FF,$0C,$2C,$30                ; 0x40ca $80BA FF 0C 2C 30              ;
bank1_unknown_palettes_maybe0:                                                  ;
.byt    $FF,$18,$36,$2A                ; 0x40ce $80BE FF 18 36 2A              ;
bank1_unknown_palettes_maybe1:                                                  ;
.byt    $FF,$16,$27,$30                ; 0x40d2 $80C2 FF 16 27 30              ;
bank1_unknown_palettes_maybe2:                                                  ;
.byt    $FF,$0F,$1C                    ; 0x40d6 $80C6 FF 0F 1C                 ;
L80C9:                                                                          ;
.byt    $2C                            ; 0x40d9 $80C9 2C                       ;
bank1_unknown_palettes_maybe3:                                                  ;
.byt    $FF,$0F,$15,$25                ; 0x40da $80CA FF 0F 15 25              ;
bank1_unknown_palettes_maybe4:                                                  ;
.byt    $FF,$18,$36,$2A                ; 0x40de $80CE FF 18 36 2A              ;
bank1_unknown_palettes_maybe5:                                                  ;
.byt    $FF,$16,$27,$30                ; 0x40e2 $80D2 FF 16 27 30              ;
bank1_unknown_palettes_maybe6:                                                  ;
.byt    $FF,$0F,$2A,$30                ; 0x40e6 $80D6 FF 0F 2A 30              ;
bank1_unknown_palettes_maybe7:                                                  ;
.byt    $FF,$0F,$16,$26                ; 0x40ea $80DA FF 0F 16 26              ;
bank1_Grotto_without_Candle__Sprites_and_Background0:                           ;
.byt    $FF,$01,$21,$11                ; 0x40ee $80DE FF 01 21 11              ;
bank1_Grotto_without_Candle__Sprites_and_Background1:                           ;
.byt    $FF,$16,$27                    ; 0x40f2 $80E2 FF 16 27                 ;
L80E5:                                                                          ;
.byt    $30                            ; 0x40f5 $80E5 30                       ;
bank1_Grotto_without_Candle__Sprites_and_Background2:                           ;
.byt    $FF,$0F,$0F,$0F                ; 0x40f6 $80E6 FF 0F 0F 0F              ;
bank1_Grotto_without_Candle__Sprites_and_Background3:                           ;
.byt    $FF,$0F,$0F,$0F                ; 0x40fa $80EA FF 0F 0F 0F              ;
; ---------------------------------------------------------------------------- ;
bank1_code0:                                                                    ;
    TXA                                ; 0x40fe $80EE 8A                       ;
    LSR                                ; 0x40ff $80EF 4A                       ;
    LSR                                ; 0x4100 $80F0 4A                       ;
    LSR                                ; 0x4101 $80F1 4A                       ;
    LSR                                ; 0x4102 $80F2 4A                       ;
    TAX                                ; 0x4103 $80F3 AA                       ;
    DEX                                ; 0x4104 $80F4 CA                       ;
    LDA      $0730                     ; 0x4105 $80F5 AD 30 07                 ; Position of Object Placement
    AND      #$F0                      ; 0x4108 $80F8 29 F0                    ; keep bits xxxx ....
    CMP      #$F0                      ; 0x410a $80FA C9 F0                    ;
    BNE      L8103                     ; 0x410c $80FC D0 05                    ;
    TXA                                ; 0x410e $80FE 8A                       ;
    CLC                                ; 0x410f $80FF 18                       ;
    ADC      #$0F                      ; 0x4110 $8100 69 0F                    ;
    TAX                                ; 0x4112 $8102 AA                       ;
L8103:                                                                          ;
    TXA                                ; 0x4113 $8103 8A                       ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x4114 $8104 20 85 D3;
bank1_Pointer_table_for_Objects_Construction:                                   ;
.word    L0000                         ; 0x4117 $8107 00 00                    ;Invalid object (would be Palissade Pass in Bank 2)
.word    bank1_Objects_Construction_Object_2high_Xwide; 0x4119 $8109 F3 81     ;Object 2 high, X wide
.word    bank1_Objects_Construction_Object_2high_Xwide; 0x411b $810B F3 81     ;Object 2 high, X wide
.word    bank1_Objects_Construction_Object_2high_Xwide; 0x411d $810D F3 81     ;Object 2 high, X wide
.word    bank1_Objects_Construction_Object_1high_Xwide; 0x411f $810F 01 82     ;Object 1 high, X wide
.word    bank1_Objects_Construction_Object_1high_Xwide; 0x4121 $8111 01 82     ;Object 1 high, X wide
.word    bank1_Objects_Construction_Object_1high_Xwide; 0x4123 $8113 01 82     ;Object 1 high, X wide
.word    bank1_Objects_Construction_Object_1high_Xwide; 0x4125 $8115 01 82     ;Object 1 high, X wide
.word    bank1_Objects_Construction_Object_1high_Xwide; 0x4127 $8117 01 82     ;Object 1 high, X wide
.word    bank1_Objects_Construction_Object_1high_Xwide; 0x4129 $8119 01 82     ;Object 1 high, X wide
.word    bank1_Objects_Construction_Object_1high_Xwide; 0x412b $811B 01 82     ;Object 1 high, X wide
.word    bank1_Objects_Construction_Object_1high_Xwide; 0x412d $811D 01 82     ;Object 1 high, X wide
.word    bank1_Objects_Construction_Object_Xhigh_1wide_SingleTileType; 0x412f $811F 17 82;Object X high, 1 wide, single tile type
.word    bank1_Objects_Construction_Object_Xhigh_1wide; 0x4131 $8121 1D 82     ;Object X high, 1 wide
.word    bank1_Objects_Construction_Object_Xhigh_1wide; 0x4133 $8123 1D 82     ;Object X high, 1 wide	(Fx)
bank1_Special_Objects__Y_Position_F:                                            ;
.word    bank1_Objects_Construction_Object_Xhigh_1wide; 0x4135 $8125 1D 82     ;Object X high, 1 wide	(1x)
.word    bank1_Objects_Construction_Object_LavaPit; 0x4137 $8127 8A 82         ;Lava Pit		(2x)
.word    bank1_Objects_Construction_Object_Cactus; 0x4139 $8129 65 82          ;Cactus			(3x)
.word    bank1_Objects_Construction_Object_Cactus_with_Stem; 0x413b $812B D5 82;Cactus with Stem	(4x)
.word    bank1_Objects_Construction_Object_Elevator; 0x413d $812D BA 82        ;Elevator		(5x)
; ---------------------------------------------------------------------------- ;
bank1_code1:                                                                    ;
    TXA                                ; 0x413f $812F 8A                       ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x4140 $8130 20 85 D3; Set Object Construction Address (below)
bank1_Pointer_table_for_Small_Objects_Construction_0x:                          ;
.word    bank1_Small_Objects_Construction_Gravestone; 0x4143 $8133 F9 82       ;Gravestone
.word    bank1_Small_Objects_Construction_Cross; 0x4145 $8135 EE 82            ;Cross
.word    bank1_Small_Objects_Construction_SlantedCross; 0x4147 $8137 F2 82     ;Slanted Cross
.word    bank1_Small_Objects_Construction_TreeStump; 0x4149 $8139 C8 82        ;Tree Stump
.word    bank1_Small_Objects_Construction_Dolmen; 0x414b $813B 13 83           ;Dolmen
.word    bank1_Small_Objects_Construction_LockedDoor_Ypos8; 0x414d $813D C1 82 ;Locked Door (Y Position set to 8)
L8140     = * + $0001                                                          ;
.word    bank1_Small_Objects_Construction_Zelda; 0x414f $813F 40 83            ;Zelda
.word    bank1_Small_Objects_Construction_Zelda; 0x4151 $8141 40 83            ;Zelda
.word    bank1_Small_Objects_Construction_PitExtendingToGround; 0x4153 $8143 31 83;Pit Extending to Ground
.word    bank1_Small_Objects_Construction_LongCloud; 0x4155 $8145 52 83        ;Long Cloud
.word    bank1_Small_Objects_Construction_Short_Cloud; 0x4157 $8147 58 83      ;Short Cloud
L8149:                                                                          ;
.word    bank1_Small_Objects_Construction_Short_Cloud; 0x4159 $8149 58 83      ;Short Cloud
.word    bank1_Small_Objects_Construction_Short_Cloud; 0x415b $814B 58 83      ;Short Cloud
.word    bank1_Small_Objects_Construction_Short_Cloud; 0x415d $814D 58 83      ;Short Cloud
.word    bank1_Small_Objects_Construction_Short_Cloud; 0x415f $814F 58 83      ;Short Cloud
.word    bank1_Small_Objects_Construction_Short_Cloud; 0x4161 $8151 58 83      ;Short Cloud
; ---------------------------------------------------------------------------- ;
bank1_Tables_for_Level_Layers_Data:                                             ;
.byt    $42,$42,$54,$52,$42,$42,$55,$53; 0x4163 $8153 42 42 54 52 42 42 55 53  ;
.byt    $53,$40,$40,$8D,$90,$40,$40,$8D; 0x416b $815B 53 40 40 8D 90 40 40 8D  ;
.byt    $8C,$90,$40,$40                ; 0x4173 $8163 8C 90 40 40              ;
L8167:                                                                          ;
.byt    $40,$80,$40,$40,$40,$89,$89,$40; 0x4177 $8167 40 80 40 40 40 89 89 40  ;
.byt    $40,$40,$87,$40,$40,$40,$91,$91; 0x417f $816F 40 40 87 40 40 40 91 91  ;
.byt    $40,$40,$40,$8A                ; 0x4187 $8177 40 40 40 8A              ;
L817B:                                                                          ;
.byt    $40,$40,$40,$8F,$8F,$51,$51,$54; 0x418b $817B 40 40 40 8F 8F 51 51 54  ;
.byt    $52,$51,$51,$55,$53,$53,$40,$40; 0x4193 $8183 52 51 51 55 53 53 40 40  ;
.byt    $40,$C9,$40,$40,$8B,$8B,$C9,$40; 0x419b $818B 40 C9 40 40 8B 8B C9 40  ;
.byt    $40,$54,$52,$40,$40,$55,$53,$53; 0x41a3 $8193 40 54 52 40 40 55 53 53  ;
bank1_Table_for_Level_Layers_Data_pointers:                                     ;
.byt    $53,$5C,$65,$6E,$77,$80,$89,$92; 0x41ab $819B 53 5C 65 6E 77 80 89 92  ;Pointer created from 81 ($81AC) and a value from this table
; ---------------------------------------------------------------------------- ;
Build_Pointer_for_Layer_Tiles_Bank_1_and_2:                                     ;
;bank1_Build_A_Pointer_With_81                                                 ;
;Build a pointer with 81 and a value from $819B, 10C as the index              ;
;Store the last value (index 8) into 10D                                       ;
    LDX      $010C                     ; 0x41b3 $81A3 AE 0C 01                 ;; Area Palette Group (Type of Area)	; Area Ground Type (0-7)
    LDA      bank1_Table_for_Level_Layers_Data_pointers,x; 0x41b6 $81A6 BD 9B 81   ;
    STA      $0C                       ; 0x41b9 $81A9 85 0C                    ;
    LDA      #$81                      ; 0x41bb $81AB A9 81                    ; A = 81
    STA      $0D                       ; 0x41bd $81AD 85 0D                    ;
    LDY      #$08                      ; 0x41bf $81AF A0 08                    ; Y = 08
L81B1:                                                                          ;
    LDA      ($0C),y                   ; 0x41c1 $81B1 B1 0C                    ;
    STA      $010D                     ; 0x41c3 $81B3 8D 0D 01                 ;; Area Bottom Row Tile Code
    RTS                                ; 0x41c6 $81B6 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Tile_Codes_for_Objects_Set0_BackgroundSky:                                ;
;xx.. ....	Table selector, from pointer table at $4500                         ;
;..xx xxxx	Tile Code                                                           ;
.byt    $40                            ; 0x41c7 $81B7 40                       ;
L81B8:                                                                          ;
.byt    $40                            ; 0x41c8 $81B8 40                       ;
bank1_Tile_Codes_for_Objects_Set0_ForestLeaves_2high:                           ;
.byt    $8C,$8D,$8C,$8D                ; 0x41c9 $81B9 8C 8D 8C 8D              ;
bank1_Tile_Codes_for_Objects_Set0_Curtains_2high:                               ;
.byt    $C0,$C1                        ; 0x41cd $81BD C0 C1                    ;
bank1_Tile_Codes_for_Objects_Set0_ForestLeaves_1high:                           ;
.byt    $8D,$8E                        ; 0x41cf $81BF 8D 8E                    ;
bank1_Tile_Codes_for_Objects_Set0_BreakableBlocks_1high:                        ;
.byt    $61,$61                        ; 0x41d1 $81C1 61 61                    ;
bank1_Tile_Codes_for_Objects_Set0_HorizontalPit_1high:                          ;
.byt    $40,$40                        ; 0x41d3 $81C3 40 40                    ;
bank1_Tile_Codes_for_Objects_Set0_SingleWeed_1high:                             ;
.byt    $81,$81                        ; 0x41d5 $81C5 81 81                    ;
bank1_Tile_Codes_for_Objects_Set0_DoubleWeed_1high:                             ;
.byt    $82,$82                        ; 0x41d7 $81C7 82 82                    ;
bank1_Tile_Codes_for_Objects_Set0_NorthCastleCarpet_1high:                      ;
.byt    $50,$50                        ; 0x41d9 $81C9 50 50                    ;
bank1_Tile_Codes_for_Objects_Set0_NorthCastleBricks_1high:                      ;
.byt    $8B,$8B                        ; 0x41db $81CB 8B 8B                    ;
bank1_Tile_Codes_for_Objects_Set0_VolcanoBackground_1wide:                      ;
.byt    $51,$51                        ; 0x41dd $81CD 51 51                    ;
bank1_Tile_Codes_for_Objects_Set0_BreakableBlocks_1wide:                        ;
.byt    $61,$61                        ; 0x41df $81CF 61 61                    ;
bank1_Tile_Codes_for_Objects_Set0_TreeTrunk_1wide:                              ;
.byt    $4C,$4B                        ; 0x41e1 $81D1 4C 4B                    ;
bank1_Tile_Codes_for_Objects_Set0_Column_1wide:                                 ;
.byt    $86,$85                        ; 0x41e3 $81D3 86 85                    ;
bank1_Tile_Codes_for_Objects_Set1_BackgroundSky:                                ;
.byt    $40                            ; 0x41e5 $81D5 40                       ;
L81D6:                                                                          ;
.byt    $40                            ; 0x41e6 $81D6 40                       ;
bank1_Tile_Codes_for_Objects_Set1_WideRockFloor_2high:                          ;
.byt    $52,$53                        ; 0x41e7 $81D7 52 53                    ;
bank1_Tile_Codes_for_Objects_Set1_WideRockCeiling_2high:                        ;
.byt    $53,$55                        ; 0x41e9 $81D9 53 55                    ;
bank1_Tile_Codes_for_Objects_Set1_Bridge_2high:                                 ;
.byt    $4D,$5D                        ; 0x41eb $81DB 4D 5D                    ;
bank1_Tile_Codes_for_Objects_Set1_RockPlatform_1high:                           ;
.byt    $54,$54                        ; 0x41ed $81DD 54 54                    ;
bank1_Tile_Codes_for_Objects_Set1_BreakableBlocks_1high:                        ;
.byt    $61,$61                        ; 0x41ef $81DF 61 61                    ;
bank1_Tile_Codes_for_Objects_Set1_BreakingBridge_1high:                         ;
.byt    $60,$60                        ; 0x41f1 $81E1 60 60                    ;
bank1_Tile_Codes_for_Objects_Set1_SingleWeed_1high:                             ;
.byt    $81,$81                        ; 0x41f3 $81E3 81 81                    ;
bank1_Tile_Codes_for_Objects_Set1_DoubleWeed_1high:                             ;
.byt    $82,$82                        ; 0x41f5 $81E5 82 82                    ;
bank1_Tile_Codes_for_Objects_Set1_HorizontalPit_1high:                          ;
.byt    $40,$40                        ; 0x41f7 $81E7 40 40                    ;
bank1_Tile_Codes_for_Objects_Set1_NorthCastleBricks_1high:                      ;
.byt    $8B,$8B                        ; 0x41f9 $81E9 8B 8B                    ;
bank1_Tile_Codes_for_Objects_Set1_VolcanoBackground_1high:                      ;
.byt    $51,$51                        ; 0x41fb $81EB 51 51                    ;
bank1_Tile_Codes_for_Objects_Set1_BreakableBlocks_1wide:                        ;
.byt    $61,$61                        ; 0x41fd $81ED 61 61                    ;
bank1_Tile_Codes_for_Objects_Set1_RockFloor_1wide:                              ;
.byt    $52,$53                        ; 0x41ff $81EF 52 53                    ;
bank1_Tile_Codes_for_Objects_Set1_VerticalDolmen_1wide:                         ;
.byt    $59,$5A                        ; 0x4201 $81F1 59 5A                    ;
; ---------------------------------------------------------------------------- ;
bank1_Objects_Construction_Object_2high_Xwide:                                  ;
    JSR      bank1_Objects_Construction_Object_1high_Xwide; 0x4203 $81F3 20 01 82  ; Object 1 high, X wide
    LDA      L0000                     ; 0x4206 $81F6 A5 00                    ;
    STA      $0112                     ; 0x4208 $81F8 8D 12 01                 ;; Tile Code 0 for Object
    JSR      LDF4C                     ; 0x420b $81FB 20 4C DF                 ; Go down 1 row
    JMP      L8204                     ; 0x420e $81FE 4C 04 82                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Objects_Construction_Object_1high_Xwide:                                  ;
    JSR      L8247                     ; 0x4211 $8201 20 47 82                 ; Get Tile Codes for Object ($112 and $00)
L8204:                                                                          ;
    LDA      $0731                     ; 0x4214 $8204 AD 31 07                 ; Level Object Type and Size
L8207:                                                                          ;
    AND      #$0F                      ; 0x4217 $8207 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0x4219 $8209 AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x421a $820A 20 44 C9           ; Set RAM Address for Object (0E-0F)
L820D:                                                                          ;
    LDA      $0112                     ; 0x421d $820D AD 12 01                 ;; Tile Code 0 for Object
    JSR      bank7_Set_tile_and_move_right_1_column; 0x4220 $8210 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0x4223 $8213 CA                       ;
    BPL      L820D                     ; 0x4224 $8214 10 F7                    ;
    RTS                                ; 0x4226 $8216 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Objects_Construction_Object_Xhigh_1wide_SingleTileType:                   ;
    JSR      L8247                     ; 0x4227 $8217 20 47 82                 ; Get Tile Codes for Object ($112 and $00)
    JMP      L8234                     ; 0x422a $821A 4C 34 82                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Objects_Construction_Object_Xhigh_1wide:                                  ;
    JSR      L8247                     ; 0x422d $821D 20 47 82                 ; Get Tile Codes for Object ($112 and $00)
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x4230 $8220 20 44 C9           ; Set RAM Address for Object (0E-0F)
    LDA      $0112                     ; 0x4233 $8223 AD 12 01                 ;; Tile Code 0 for Object
    JSR      LDF56                     ; 0x4236 $8226 20 56 DF                 ; Set tile and go down 1 row
    STA      $0730                     ; 0x4239 $8229 8D 30 07                 ; Position of Object Placement
    DEC      $0731                     ; 0x423c $822C CE 31 07                 ; Level Object Type and Size
    LDA      L0000                     ; 0x423f $822F A5 00                    ;
    STA      $0112                     ; 0x4241 $8231 8D 12 01                 ;; Tile Code 0 for Object
L8234:                                                                          ;
    LDA      $0731                     ; 0x4244 $8234 AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0x4247 $8237 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0x4249 $8239 AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x424a $823A 20 44 C9           ; Set RAM Address for Object (0E-0F)
L823D:                                                                          ;
    LDA      $0112                     ; 0x424d $823D AD 12 01                 ;
    JSR      LDF56                     ; 0x4250 $8240 20 56 DF                 ; Set tile and go down 1 row
    DEX                                ; 0x4253 $8243 CA                       ;
    BPL      L823D                     ; 0x4254 $8244 10 F7                    ; Loop
    RTS                                ; 0x4256 $8246 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8247:                                                                          ;
    TXA                                ; 0x4257 $8247 8A                       ;
    ASL                                ; 0x4258 $8248 0A                       ;
    TAX                                ; 0x4259 $8249 AA                       ;
    LDY      #$01                      ; 0x425a $824A A0 01                    ; Y = 01
    LDA      ($D4),y                   ; 0x425c $824C B1 D4                    ;
    ASL                                ; 0x425e $824E 0A                       ;
    LDA      bank1_Tile_Codes_for_Objects_Set1_BackgroundSky,x; 0x425f $824F BD D5 81; Tile Codes for Objects - Set 1
    BCS      L8257                     ; 0x4262 $8252 B0 03                    ;
    LDA      bank1_Tile_Codes_for_Objects_Set0_BackgroundSky,x; 0x4264 $8254 BD B7 81; Tile Codes for Objects - Set 0
L8257:                                                                          ;
    STA      $0112                     ; 0x4267 $8257 8D 12 01                 ;; Tile Code 0 for Object
    LDA      L81D6,x                   ; 0x426a $825A BD D6 81                 ;
    BCS      L8262                     ; 0x426d $825D B0 03                    ;
    LDA      L81B8,x                   ; 0x426f $825F BD B8 81                 ;
L8262:                                                                          ;
    STA      L0000                     ; 0x4272 $8262 85 00                    ;
    RTS                                ; 0x4274 $8264 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Objects_Construction_Object_Cactus:                                       ;
    JSR      bank7_Set_Ram_Addy_for_Object__0E_0F; 0x4275 $8265 20 47 C9           ;
    LDA      $0730                     ; 0x4278 $8268 AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0x427b $826B 29 0F                    ; keep bits .... xxxx
    ORA      #$90                      ; 0x427d $826D 09 90                    ; set bits  x..x .... (Y position of cactus)
    STA      $0730                     ; 0x427f $826F 8D 30 07                 ; Position of Object Placement
    TAY                                ; 0x4282 $8272 A8                       ;
    LDA      $0731                     ; 0x4283 $8273 AD 31 07                 ;; Level Object Type and Size
    AND      #$0F                      ; 0x4286 $8276 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0x4288 $8278 AA                       ;
L8279:                                                                          ;
    LDA      #$47                      ; 0x4289 $8279 A9 47                    ; A = 47 (Cactus Base Tile Code)
    STA      (L000E),y                 ; 0x428b $827B 91 0E                    ;
    TYA                                ; 0x428d $827D 98                       ;
    SEC                                ; 0x428e $827E 38                       ;
    SBC      #$10                      ; 0x428f $827F E9 10                    ; Go up 1 row
    TAY                                ; 0x4291 $8281 A8                       ;
    DEX                                ; 0x4292 $8282 CA                       ;
    BNE      L8279                     ; 0x4293 $8283 D0 F4                    ; loop to $4279
    LDA      #$46                      ; 0x4295 $8285 A9 46                    ; A = 46 (Cactus Top Tile Code)
    STA      (L000E),y                 ; 0x4297 $8287 91 0E                    ;
    RTS                                ; 0x4299 $8289 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Objects_Construction_Object_LavaPit:                                      ;
    LDA      $0730                     ; 0x429a $828A AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0x429d $828D 29 0F                    ; keep bits .... xxxx
    ORA      #$A0                      ; 0x429f $828F 09 A0                    ; set bits  x.x. ....
    STA      $0730                     ; 0x42a1 $8291 8D 30 07                 ; Position of Object Placement
    LDA      #$80                      ; 0x42a4 $8294 A9 80                    ; A = 80 (Lava Surface Tile Code)
    STA      $0112                     ; 0x42a6 $8296 8D 12 01                 ;; Tile Code 0 for Object
L8299:                                                                          ;
    LDA      $0731                     ; 0x42a9 $8299 AD 31 07                 ;; Level Object Type and Size
    AND      #$0F                      ; 0x42ac $829C 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0x42ae $829E AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x42af $829F 20 44 C9           ; Set RAM Address for Object (0E-0F)
L82A2:                                                                          ;
    LDA      $0112                     ; 0x42b2 $82A2 AD 12 01                 ;
    JSR      bank7_Set_tile_and_move_right_1_column; 0x42b5 $82A5 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0x42b8 $82A8 CA                       ;
    BPL      L82A2                     ; 0x42b9 $82A9 10 F7                    ; loop to $42A2
    LDA      #$89                      ; 0x42bb $82AB A9 89                    ; A = 89 (Lava Tile Code)
    STA      $0112                     ; 0x42bd $82AD 8D 12 01                 ;; Tile Code 0 for Object
    JSR      LDF4C                     ; 0x42c0 $82B0 20 4C DF                 ; Go down 1 row
    AND      #$F0                      ; 0x42c3 $82B3 29 F0                    ; keep bits xxxx ....
    CMP      #$D0                      ; 0x42c5 $82B5 C9 D0                    ;
    BCC      L8299                     ; 0x42c7 $82B7 90 E0                    ;
    RTS                                ; 0x42c9 $82B9 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Objects_Construction_Object_Elevator:                                     ;
    LDA      $010A                     ; 0x42ca $82BA AD 0A 01                 ;
    STA      $0757                     ; 0x42cd $82BD 8D 57 07                 ;; Position of Elevator in Map
    RTS                                ; 0x42d0 $82C0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_LockedDoor_Ypos8:                              ;
    LDA      $010A                     ; 0x42d1 $82C1 AD 0A 01                 ;
    STA      $0758                     ; 0x42d4 $82C4 8D 58 07                 ;; Position of Locked Door in Map
    RTS                                ; 0x42d7 $82C7 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_TreeStump:                                     ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x42d8 $82C8 20 44 C9           ; Set RAM Address for Object (0E-0F)
    LDA      #$5B                      ; 0x42db $82CB A9 5B                    ; A = 5B (Tree Stump Top Tile Code)
    JSR      LDF56                     ; 0x42dd $82CD 20 56 DF                 ; Set tile and go down 1 row
    LDA      #$5C                      ; 0x42e0 $82D0 A9 5C                    ; A = 5C (Tree Stump Bottom Tile Code)
    STA      (L000E),y                 ; 0x42e2 $82D2 91 0E                    ;
    RTS                                ; 0x42e4 $82D4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Objects_Construction_Object_Cactus_with_Stem:                             ;
    JSR      bank7_Set_Ram_Addy_for_Object__0E_0F; 0x42e5 $82D5 20 47 C9           ;
    LDA      $0730                     ; 0x42e8 $82D8 AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0x42eb $82DB 29 0F                    ; keep bits .... xxxx
    ORA      #$90                      ; 0x42ed $82DD 09 90                    ; set  bits x..x .... (default height)
    TAY                                ; 0x42ef $82DF A8                       ;
    LDA      #$49                      ; 0x42f0 $82E0 A9 49                    ; A = 49 (Cactus with Stem Bottom Tile Code)
    STA      (L000E),y                 ; 0x42f2 $82E2 91 0E                    ;
    TYA                                ; 0x42f4 $82E4 98                       ;
    SEC                                ; 0x42f5 $82E5 38                       ;
    SBC      #$10                      ; 0x42f6 $82E6 E9 10                    ; Go up 1 row
    TAY                                ; 0x42f8 $82E8 A8                       ;
    LDA      #$48                      ; 0x42f9 $82E9 A9 48                    ; A = 48 (Cactus with Stem Top Tile Code)
    STA      (L000E),y                 ; 0x42fb $82EB 91 0E                    ;
    RTS                                ; 0x42fd $82ED 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_Cross:                                         ;
    LDX      #$00                      ; 0x42fe $82EE A2 00                    ; X = 00
    BEQ      L82FB                     ; 0x4300 $82F0 F0 09                    ;
bank1_Small_Objects_Construction_SlantedCross:                                  ;
    LDX      #$01                      ; 0x4302 $82F2 A2 01                    ; X = 01
    BNE      L82FB                     ; 0x4304 $82F4 D0 05                    ;
bank1_Table_for_Cross__Slanted_Cross_and_Gravestone:                            ;
.byt    $C6,$C7,$C5                    ; 0x4306 $82F6 C6 C7 C5                 ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_Gravestone:                                    ;
    LDX      #$02                      ; 0x4309 $82F9 A2 02                    ; X = 02
L82FB:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x430b $82FB 20 44 C9           ; Set RAM Address for Object (0E-0F)
    LDA      bank1_Table_for_Cross__Slanted_Cross_and_Gravestone,x; 0x430e $82FE BD F6 82; refer to table at $42F6
    STA      (L000E),y                 ; 0x4311 $8301 91 0E                    ;
L8303:                                                                          ;
    RTS                                ; 0x4313 $8303 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Dolmen_Tile_Codes:                                              ;
.byt    $56,$57,$57,$58,$FF,$59,$40,$40; 0x4314 $8304 56 57 57 58 FF 59 40 40  ;
.byt    $59,$FF,$5A,$40,$40,$5A,$FF    ; 0x431c $830C 59 FF 5A 40 40 5A FF     ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_Dolmen:                                        ;
    LDX      #$00                      ; 0x4323 $8313 A2 00                    ; X = 00
L8315:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x4325 $8315 20 44 C9           ; Set RAM Address for Object (0E-0F)
L8318:                                                                          ;
    LDA      bank1_Table_for_Dolmen_Tile_Codes,x; 0x4328 $8318 BD 04 83            ; refer to table at $4304
    CMP      #$FF                      ; 0x432b $831B C9 FF                    ;
    BEQ      L8326                     ; 0x432d $831D F0 07                    ;
    JSR      bank7_Set_tile_and_move_right_1_column; 0x432f $831F 20 E7 DE         ; Set tile and move right 1 column
    INX                                ; 0x4332 $8322 E8                       ;
    JMP      L8318                     ; 0x4333 $8323 4C 18 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8326:                                                                          ;
    CPX      #$0E                      ; 0x4336 $8326 E0 0E                    ; bottom limit
    BEQ      L8303                     ; 0x4338 $8328 F0 D9                    ;
    JSR      LDF4C                     ; 0x433a $832A 20 4C DF                 ; Go down 1 row
    INX                                ; 0x433d $832D E8                       ;
    JMP      L8315                     ; 0x433e $832E 4C 15 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_PitExtendingToGround:                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x4341 $8331 20 44 C9           ; Set RAM Address for Object (0E-0F)
L8334:                                                                          ;
    LDA      #$40                      ; 0x4344 $8334 A9 40                    ; A = 40 (Empty Tile)
    JSR      LDF56                     ; 0x4346 $8336 20 56 DF                 ; Set tile and go down 1 row
    AND      #$F0                      ; 0x4349 $8339 29 F0                    ; keep bits xxxx ....
    CMP      #$D0                      ; 0x434b $833B C9 D0                    ; stop at bottom of screen
    BCC      L8334                     ; 0x434d $833D 90 F5                    ;
    RTS                                ; 0x434f $833F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_Zelda:                                         ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x4350 $8340 20 44 C9           ; Set RAM Address for Object (0E-0F)
    LDX      #$01                      ; 0x4353 $8343 A2 01                    ; X = 01
    LDA      #$4E                      ; 0x4355 $8345 A9 4E                    ; A = 4E (Zelda's Head Tile Code)
    BNE      L834B                     ; 0x4357 $8347 D0 02                    ;
L8349:                                                                          ;
    LDA      #$4F                      ; 0x4359 $8349 A9 4F                    ; A = 4F (Zelda's Body Tile Code)
L834B:                                                                          ;
    STA      (L000E),y                 ; 0x435b $834B 91 0E                    ;
    INY                                ; 0x435d $834D C8                       ;
    DEX                                ; 0x435e $834E CA                       ;
    BPL      L8349                     ; 0x435f $834F 10 F8                    ;
    RTS                                ; 0x4361 $8351 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_LongCloud:                                     ;
    LDX      #$00                      ; 0x4362 $8352 A2 00                    ; X = 00
    BEQ      L835A                     ; 0x4364 $8354 F0 04                    ;
bank1_Table_for_Right_End_of_Clouds_Tile_Codes:                                 ;
.byt    $C3,$C4                        ; 0x4366 $8356 C3 C4                    ;
; ---------------------------------------------------------------------------- ;
bank1_Small_Objects_Construction_Short_Cloud:                                   ;
    LDX      #$01                      ; 0x4368 $8358 A2 01                    ; X = 01
L835A:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x436a $835A 20 44 C9           ; Set RAM Address for Object (0E-0F)
    LDA      #$C2                      ; 0x436d $835D A9 C2                    ; A = C2 (Cloud Left End Tile Code)
    STA      (L000E),y                 ; 0x436f $835F 91 0E                    ;
    INY                                ; 0x4371 $8361 C8                       ;
    LDA      bank1_Table_for_Right_End_of_Clouds_Tile_Codes,x; 0x4372 $8362 BD 56 83; refer to table at $4356
    STA      (L000E),y                 ; 0x4375 $8365 91 0E                    ;
    RTS                                ; 0x4377 $8367 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Check_for_Hidden_Palace_spot:                                             ;
    LDA      $0706                     ; 0x4378 $8368 AD 06 07                 ; Current Region
    CMP      #$02                      ; 0x437b $836B C9 02                    ; Region 02 = East Hyrule
    BNE      L838E                     ; 0x437d $836D D0 1F                    ; if NOT 02, return
    LDA      $73                       ; 0x437f $836F A5 73                    ; Y position on map (square unit)
    CMP      #$64                      ; 0x4381 $8371 C9 64                    ; Y position of Hidden Palace call spot
    BNE      bank1_Check_for_Spider_in_OW; 0x4383 $8373 D0 12                    ;
    LDA      $74                       ; 0x4385 $8375 A5 74                    ; X position on map (square unit)
    CMP      #$2D                      ; 0x4387 $8377 C9 2D                    ; X position of Hidden Palace call spot
    BNE      bank1_Check_for_Spider_in_OW; 0x4389 $8379 D0 0C                    ;
    LDA      #$0B                      ; 0x438b $837B A9 0B                    ; A = 0B
    STA      $0725                     ; 0x438d $837D 8D 25 07                 ; PPU Macro Selector
    INC      $01                       ; 0x4390 $8380 E6 01                    ; 2 tiles
    INC      $01                       ; 0x4392 $8382 E6 01                    ; south...
    JMP      bank7_forest_chop_with_hammer; 0x4394 $8384 4C 79 DF                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Check_for_Spider_in_OW:                                                   ;
    LDA      $0563                     ; 0x4397 $8387 AD 63 05                 ; Type of terrain Link is facing
    CMP      #$0F                      ; 0x439a $838A C9 0F                    ; Terrain Type F = Spider
    BEQ      L838F                     ; 0x439c $838C F0 01                    ;
L838E:                                                                          ;
    RTS                                ; 0x439e $838E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L838F:                                                                          ;
    JSR      bank1_code6               ; 0x439f $838F 20 A1 83                 ;
    JMP      bank7_forest_chop_with_hammer; 0x43a2 $8392 4C 79 DF                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table0:                                                                   ;
.byt    $0A,$00,$00,$82,$6C,$6C,$00,$00; 0x43a5 $8395 0A 00 00 82 6C 6C 00 00  ;
.byt    $82,$6C,$6C,$FF                ; 0x43ad $839D 82 6C 6C FF              ;
; ---------------------------------------------------------------------------- ;
bank1_code6:                                                                    ;
    JSR      LDF01                     ; 0x43b1 $83A1 20 01 DF                 ;
    LDA      #$00                      ; 0x43b4 $83A4 A9 00                    ; A = 00
    STA      $7D                       ; 0x43b6 $83A6 85 7D                    ;;number of pixels to move? automove? on overworld, only partially, causes bug
    LDY      #$0B                      ; 0x43b8 $83A8 A0 0B                    ; Y = 0B
L83AA:                                                                          ;
    LDA      bank1_table0,y            ; 0x43ba $83AA B9 95 83                 ; refer to table at $4395
    STA      $0301,y                   ; 0x43bd $83AD 99 01 03                 ;
    DEY                                ; 0x43c0 $83B0 88                       ;
    BPL      L83AA                     ; 0x43c1 $83B1 10 F7                    ;
    LDA      $79                       ; 0x43c3 $83B3 A5 79                    ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      L0302                     ; 0x43c5 $83B5 8D 02 03                 ;; Used when writing text to screen
    STA      $0307                     ; 0x43c8 $83B8 8D 07 03                 ;; Text memory offset?
    LDA      $7A                       ; 0x43cb $83BB A5 7A                    ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      $0303                     ; 0x43cd $83BD 8D 03 03                 ;; Letter position when writing to screen
    CLC                                ; 0x43d0 $83C0 18                       ;
    ADC      #$01                      ; 0x43d1 $83C1 69 01                    ;
    STA      $0308                     ; 0x43d3 $83C3 8D 08 03                 ;
    LDA      $76                       ; 0x43d6 $83C6 A5 76                    ; X position on map (Link)
    STA      L0000                     ; 0x43d8 $83C8 85 00                    ;
    LDA      $75                       ; 0x43da $83CA A5 75                    ; Y position on map (Link)
    STA      $01                       ; 0x43dc $83CC 85 01                    ;
    RTS                                ; 0x43de $83CE 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_overworld_limit_check_jmp_from_bank7:                                     ;
    LDA      L0000                     ; 0x43df $83CF A5 00                    ;
    CMP      #$40                      ; 0x43e1 $83D1 C9 40                    ; Check if at the extreme right of the map
    BCS      bank1_East_Boundary       ; 0x43e3 $83D3 B0 2F                    ; Overworld width here too (east boundary)
    LDA      $01                       ; 0x43e5 $83D5 A5 01                    ;
    SEC                                ; 0x43e7 $83D7 38                       ;
    SBC      #$1E                      ; 0x43e8 $83D8 E9 1E                    ; Y Units Offset in Overworld
    STA      $04                       ; 0x43ea $83DA 85 04                    ;
    CMP      #$4B                      ; 0x43ec $83DC C9 4B                    ; Overworld height (south boundary)
    BCS      bank1_East_Boundary       ; 0x43ee $83DE B0 24                    ; (not visually)
    JSR      bank1_code8               ; 0x43f0 $83E0 20 AC 93                 ;
    INC      L0000                     ; 0x43f3 $83E3 E6 00                    ;
    LDA      #$00                      ; 0x43f5 $83E5 A9 00                    ; A = 00
    STA      $03                       ; 0x43f7 $83E7 85 03                    ;
    LDX      #$03                      ; 0x43f9 $83E9 A2 03                    ; X = 03
L83EB:                                                                          ;
    LDA      (L000E),y                 ; 0x43fb $83EB B1 0E                    ;
    AND      #$0F                      ; 0x43fd $83ED 29 0F                    ; keep bits .... xxxx
    STA      $02                       ; 0x43ff $83EF 85 02                    ;
    LDA      (L000E),y                 ; 0x4401 $83F1 B1 0E                    ;
    LSR                                ; 0x4403 $83F3 4A                       ;
    LSR                                ; 0x4404 $83F4 4A                       ;
    LSR                                ; 0x4405 $83F5 4A                       ;
    LSR                                ; 0x4406 $83F6 4A                       ;
    SEC                                ; 0x4407 $83F7 38                       ;
    ADC      $03                       ; 0x4408 $83F8 65 03                    ;
    STA      $03                       ; 0x440a $83FA 85 03                    ;
    CMP      L0000                     ; 0x440c $83FC C5 00                    ;
    BCS      L8408                     ; 0x440e $83FE B0 08                    ;
    INY                                ; 0x4410 $8400 C8                       ;
    JMP      L83EB                     ; 0x4411 $8401 4C EB 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_East_Boundary:                                                            ;
    LDA      #$0C                      ; 0x4414 $8404 A9 0C                    ; A = 0C (Code for 1 Unit of Water)
    STA      $02                       ; 0x4416 $8406 85 02                    ;
L8408:                                                                          ;
    RTS                                ; 0x4418 $8408 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Code_values_for_Random_Battle_Areas_Desert:                               ;
;North-West Hyrule / South-West Hyrule                                         ;
;xx.. ....	Enter Code (1 = Middle of Screen 1)                                 ;
;..xx xxxx	Area Code                                                           ;
;                                                                              ;
;04 - Desert                                                                   ;
;05 - Grass                                                                    ;
;06 - Forest                                                                   ;
;07 - Swamp                                                                    ;
;08 - Graveyard                                                                ;
;09 - Road                                                                     ;
;0A - Lava                                                                     ;
;                                                                              ;
;5D 5E -> 1D 1E                                                                ;
;62 63 -> 22 23                                                                ;
;67 68 -> 27 28                                                                ;
;6F 70 -> 2F 30                                                                ;
;74 75 -> 34 35                                                                ;
;79 7A -> 39 3A                                                                ;
;7B 7C -> 3B 3C                                                                ;
.byt    $5D,$5E                        ; 0x4419 $8409 5D 5E                    ;
bank1_Code_values_for_Random_Battle_Areas_Grass:                                ;
.byt    $62,$63                        ; 0x441b $840B 62 63                    ;
bank1_Code_values_for_Random_Battle_Areas_Forest:                               ;
.byt    $67,$68                        ; 0x441d $840D 67 68                    ;
bank1_Code_values_for_Random_Battle_Areas_Swamp:                                ;
.byt    $6F,$70                        ; 0x441f $840F 6F 70                    ;
bank1_Code_values_for_Random_Battle_Areas_Graveyard:                            ;
.byt    $74,$75                        ; 0x4421 $8411 74 75                    ;
bank1_Code_values_for_Random_Battle_Areas_Road:                                 ;
.byt    $79,$7A                        ; 0x4423 $8413 79 7A                    ;
bank1_Code_values_for_Random_Battle_Areas_Lava:                                 ;
.byt    $7B,$7C                        ; 0x4425 $8415 7B 7C                    ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Background:                      ;
.byt    $F4,$F4,$F4,$F4                ; 0x4427 $8417 F4 F4 F4 F4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_unknown0:                        ;
.byt    $F4,$F4,$F4,$F4                ; 0x442b $841B F4 F4 F4 F4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Background_for_Grotto:           ;
.byt    $38,$39,$3A,$3B                ; 0x442f $841F 38 39 3A 3B              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_unknown1:                        ;
.byt    $FD,$FD,$FD,$FD                ; 0x4433 $8423 FD FD FD FD              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_unknown2:                        ;
.byt    $FF,$FF,$FF,$FF                ; 0x4437 $8427 FF FF FF FF              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_unknown3:                        ;
.byt    $53,$53,$54,$54                ; 0x443b $842B 53 53 54 54              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_High_Cactus_Top:                 ;
.byt    $3C,$3D,$F4,$F4                ; 0x443f $842F 3C 3D F4 F4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_High_Cactus_Stem:                ;
.byt    $3D,$3D,$F4,$F4                ; 0x4443 $8433 3D 3D F4 F4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Small_Cactus_Top:                ;
.byt    $3C,$3D,$F4,$3E                ; 0x4447 $8437 3C 3D F4 3E              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Small_Cactus_Stem:               ;
.byt    $3D,$3D,$3F,$F4                ; 0x444b $843B 3D 3D 3F F4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_unknown4:                        ;
.byt    $6E,$6E,$6F,$6F                ; 0x444f $843F 6E 6E 6F 6F              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Tree_Trunk__Forest_Swamp:        ;
.byt    $44,$45,$46,$47                ; 0x4453 $8443 44 45 46 47              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Dead_Tree_Top__Swamp:            ;
.byt    $33,$45,$34,$47                ; 0x4457 $8447 33 45 34 47              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Bridge_Ropes:                    ;
.byt    $F4,$7C,$F4,$7C                ; 0x445b $844B F4 7C F4 7C              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Zelda_Head:                      ;
.byt    $28,$2C,$29,$2C                ; 0x445f $844F 28 2C 29 2C              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Zelda_Body:                      ;
.byt    $2A,$2C,$2B,$2C                ; 0x4463 $8453 2A 2C 2B 2C              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Red_Carpet__North_Castle:        ;
.byt    $7F,$FE,$7F,$FE                ; 0x4467 $8457 7F FE 7F FE              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Volcano_Background:              ;
.byt    $2C,$2D,$2E,$2F                ; 0x446b $845B 2C 2D 2E 2F              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Rock_Floor__Grotto_Desert:       ;
.byt    $A1,$9F,$A2,$A0                ; 0x446f $845F A1 9F A2 A0              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Rock_Wall__Grotto_Desert:        ;
.byt    $9D,$9E,$9F,$A0                ; 0x4473 $8463 9D 9E 9F A0              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Rock_Platform__Grotto_Desert:    ;
.byt    $A1,$A3,$A2,$A4                ; 0x4477 $8467 A1 A3 A2 A4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Rock_Ceiling__Grotto_Desert:     ;
.byt    $9D,$A3,$9E,$A4                ; 0x447b $846B 9D A3 9E A4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Horizontal_Dolmen_Left:          ;
.byt    $88                            ; 0x447f $846F 88                       ;
L8470:                                                                          ;
.byt    $89,$8A,$8B                    ; 0x4480 $8470 89 8A 8B                 ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Horizontal_Dolmen_Middle:        ;
.byt    $8A,$8B,$8A,$8B                ; 0x4483 $8473 8A 8B 8A 8B              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Horizontal_Dolmen_Right:         ;
.byt    $8A,$8B,$8C,$8D                ; 0x4487 $8477 8A 8B 8C 8D              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Vertical_Dolmen_Top:             ;
.byt    $A7,$A8,$A9,$AA                ; 0x448b $847B A7 A8 A9 AA              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Vertical_Dolmen_Body:            ;
.byt    $A8,$A8,$AA,$AA                ; 0x448f $847F A8 A8 AA AA              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Tree_Stump_Top:                  ;
.byt    $40,$40,$42,$42                ; 0x4493 $8483 40 40 42 42              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Tree_Stump_Base:                 ;
.byt    $40,$41,$42,$43                ; 0x4497 $8487 40 41 42 43              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Bridge_Base:                     ;
.byt    $7D,$F4,$7D,$F4                ; 0x449b $848B 7D F4 7D F4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_unknown5:                        ;
.byt    $87,$F4,$87,$F4                ; 0x449f $848F 87 F4 87 F4              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_unknown6:                        ;
.byt    $87,$6D,$87,$6F                ; 0x44a3 $8493 87 6D 87 6F              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Breaking_Bridge:                 ;
.byt    $92,$93,$92,$93                ; 0x44a7 $8497 92 93 92 93              ;
bank1_Table_0_1_for_Area_Objects_Tile_Mappings_unknown7:                        ;
.byt    $68,$69,$68,$69                ; 0x44ab $849B 68 69 68 69              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Lava_Water_Surface:                ;
.byt    $98,$99,$98,$99                ; 0x44af $849F 98 99 98 99              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Weed_Single:                       ;
.byt    $4E,$4F,$F4,$F4                ; 0x44b3 $84A3 4E 4F F4 F4              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Weed_Double:                       ;
.byt    $4E,$4F,$4E,$4F                ; 0x44b7 $84A7 4E 4F 4E 4F              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Grass_Area_Bushes_row9:            ;
.byt    $4C,$4D,$4C,$4D                ; 0x44bb $84AB 4C 4D 4C 4D              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Forest_Area_Bushes_row9:           ;
.byt    $78,$79,$78,$79                ; 0x44bf $84AF 78 79 78 79              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Column_Body_North_Castle:          ;
.byt    $A5,$A5,$A6,$A6                ; 0x44c3 $84B3 A5 A5 A6 A6              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Column_Top_North_Castle:           ;
.byt    $8E,$8F,$90,$91                ; 0x44c7 $84B7 8E 8F 90 91              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Swamp_Surface:                     ;
.byt    $98,$99,$98,$99,$98,$99,$98,$99; 0x44cb $84BB 98 99 98 99 98 99 98 99  ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Lava_Water:                        ;
.byt    $FE,$FE,$FE,$FE                ; 0x44d3 $84C3 FE FE FE FE              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Desert_Surface:                    ;
.byt    $F4,$F4,$F4,$35                ; 0x44d7 $84C7 F4 F4 F4 35              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_White_Bricks_North_Castle:         ;
.byt    $9A,$9B,$9A,$9B                ; 0x44db $84CB 9A 9B 9A 9B              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Leaves_of_Trees:                   ;
.byt    $50,$51,$52,$53                ; 0x44df $84CF 50 51 52 53              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Hanging_Leaves_of_Trees:           ;
.byt    $50,$54,$52,$55                ; 0x44e3 $84D3 50 54 52 55              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_unknown0:                          ;
.byt    $7A                            ; 0x44e7 $84D7 7A                       ;
L84D8:                                                                          ;
.byt    $7F,$7C,$81                    ; 0x44e8 $84D8 7F 7C 81                 ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Ground_Desert_Grass:               ;
.byt    $36,$36,$37,$37                ; 0x44eb $84DB 36 36 37 37              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Ground_Forest:                     ;
.byt    $48,$49,$4A,$4B                ; 0x44ef $84DF 48 49 4A 4B              ;
bank1_Table_2_for_Area_Objects_Tile_Mappings_Ground_Swamp:                      ;
.byt    $99,$99,$99,$99                ; 0x44f3 $84E3 99 99 99 99              ;
bank1_UNUSED_84E7:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x44f7 $84E7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x44ff $84EF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4507 $84F7 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0x450f $84FF FF                       ;
; ---------------------------------------------------------------------------- ;
bank1_Pointer_table_for_Objects_Tile_Mappings:                                  ;
.word    bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Background; 0x4510 $8500 17 84;
.word    bank1_Table_0_1_for_Area_Objects_Tile_Mappings_Background; 0x4512 $8502 17 84;
.word    bank1_Table_2_for_Area_Objects_Tile_Mappings_Lava_Water_Surface; 0x4514 $8504 9F 84;
.word    bank1_Table_3_for_Area_Objects_Tile_Mappings_North_Castle_Curtains_Top; 0x4516 $8506 7D 93;
Pointer_table_for_Overworld_Map_Data:                                           ;
.word    bank1_West_Hyrule_Overworld_Map_Data; 0x4518 $8508 5C 90              ;
.word    bank1_Death_Mountain_Overworld_Map_Data; 0x451a $850A 4C A6           ;
; ---------------------------------------------------------------------------- ;
bank1_code7:                                                                    ;
    PHA                                ; 0x451c $850C 48                       ;
    AND      #$C0                      ; 0x451d $850D 29 C0                    ; keep bits xx.. ....
    CLC                                ; 0x451f $850F 18                       ;
    ROL                                ; 0x4520 $8510 2A                       ;
    ROL                                ; 0x4521 $8511 2A                       ;
    ROL                                ; 0x4522 $8512 2A                       ; A becomes .... ..xx
    TAY                                ; 0x4523 $8513 A8                       ;
    DEY                                ; 0x4524 $8514 88                       ;
    PLA                                ; 0x4525 $8515 68                       ;
    CMP      bank1_table2,y            ; 0x4526 $8516 D9 A9 93                 ; refer to table at $53A9
    RTS                                ; 0x4529 $8519 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table1:                                                                   ;
.byt    $00                            ; 0x452a $851A 00                       ;
L851B:                                                                          ;
.byt    $00                            ; 0x452b $851B 00                       ;
L851C:                                                                          ;
.byt    $00,$00                        ; 0x452c $851C 00 00                    ;
L851E:                                                                          ;
.byt    $61                            ; 0x452e $851E 61                       ;
L851F:                                                                          ;
.byt    $60                            ; 0x452f $851F 60                       ;
L8520:                                                                          ;
.byt    $80                            ; 0x4530 $8520 80                       ;
L8521:                                                                          ;
.byt    $87                            ; 0x4531 $8521 87                       ;
L8522:                                                                          ;
.byt    $91                            ; 0x4532 $8522 91                       ;
; ---------------------------------------------------------------------------- ;
bank1_Area_Pointers_West_Hyrule:                                                ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4533 $8523 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Bridge; 0x4535 $8525 99 8D               ;
.word    bank1_Area_Data__West_Hyrule_Bridge; 0x4537 $8527 99 8D               ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4539 $8529 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Bridge; 0x453b $852B 99 8D               ;
.word    bank1_Area_Data__West_Hyrule_Bridge; 0x453d $852D 99 8D               ;
.word    bank1_Area_Data__West_Hyrule_Bubble_Path; 0x453f $852F 28 8F          ;
.word    bank1_Area_Data__West_Hyrule_Common_Grotto; 0x4541 $8531 78 8E        ;
.word    bank1_Area_Data__West_Hyrule_Common_Grotto; 0x4543 $8533 78 8E        ;
.word    bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_1_and_2; 0x4545 $8535 A6 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_1_and_2; 0x4547 $8537 A6 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_3__with_Aches_and_Acheman_; 0x4549 $8539 9D 8F;
.word    bank1_Area_Data__West_Hyrule_Grotto_before_200_Exp_Bag__with_Megmats_and_Orange_Goriya_; 0x454b $853B EE 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_200_Exp_Bag__dead_end_; 0x454d $853D CA 8F;
.word    bank1_Area_Data__West_Hyrule_Bridge_over_Lava__before_Medicine_; 0x454f $853F D8 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_Medicine__dead_end_; 0x4551 $8541 49 90;
.word    bank1_Area_Data__West_Hyrule_Common_Grotto; 0x4553 $8543 78 8E        ;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_Heart_Container__dead_end_; 0x4555 $8545 DD 8F;
.word    bank1_Area_Data__West_Hyrule_Tunnel_South_of_Kings_Tomb; 0x4557 $8547 6F 8F;
.word    bank1_Area_Data__West_Hyrule_Common_Grotto; 0x4559 $8549 78 8E        ;
.word    bank1_Area_Data__West_Hyrule_Forest_Area_with_no_trees; 0x455b $854B 3F 90;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods; 0x455d $854D 62 8E;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods; 0x455f $854F 62 8E;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods; 0x4561 $8551 62 8E;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x4563 $8553 07 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x4565 $8555 07 8D;
L8558     = * + $0001                                                          ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4567 $8557 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4569 $8559 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x456b $855B B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Desert__North_West_Hyrule_; 0x456d $855D EB 8C;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Desert__South_West_Hyrule_; 0x456f $855F 7F 87;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4571 $8561 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4573 $8563 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_Trophy_; 0x4575 $8565 D0 8D  ;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x4577 $8567 07 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x4579 $8569 07 8D;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x457b $856B B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x457d $856D B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Grass_Area_with_Dolmens_and_Heart_Container; 0x457f $856F B5 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Forest__North_West_Hyrule_; 0x4581 $8571 21 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Forest__South_West_Hyrule_; 0x4583 $8573 1D 90;
.word    bank1_Area_Data__West_Hyrule_Forest_Area_with_no_trees; 0x4585 $8575 3F 90;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4587 $8577 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Single_Tree__with_Aches_and_50_Exp_Bag_; 0x4589 $8579 F5 8D;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods; 0x458b $857B 62 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_Magic_Container__South_of_North_Castle_; 0x458d $857D F0 8F;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Single_Tree__with_Megmats_and_100_Exp_Bag_; 0x458f $857F 14 8E;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Swamp__North_West_and_South_West_Hyrule_; 0x4591 $8581 35 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Swamp__North_West_and_South_West_Hyrule_; 0x4593 $8583 35 8D;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4595 $8585 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4597 $8587 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Area_with_Rocky_Ground_and_Grass__Red_Jar_near_Palace_2_; 0x4599 $8589 33 8E;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Graveyard__North_West_and_South_West_Hyrule_; 0x459b $858B 57 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Graveyard__North_West_and_South_West_Hyrule_; 0x459d $858D 57 8D;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x459f $858F B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x45a1 $8591 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Graveyard_Area_near_Kings_Tomb__with_Red_Jar_; 0x45a3 $8593 5C 8F;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Road__North_West_and_South_West_Hyrule_; 0x45a5 $8595 AB 8F;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Road__North_West_and_South_West_Hyrule_; 0x45a7 $8597 AB 8F;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x45a9 $8599 07 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x45ab $859B 07 8D;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x45ad $859D B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x45af $859F B5 8C         ;
bank1_Enemy_Pointers__West_Hyrule:                                              ;
;\"NME-OFFSET\" in z2pledit                                                    ;
;Base Offset is $88A0                                                          ;
.word    L7000                         ; 0x45b1 $85A1 00 70                    ;; Enemy Data
.word    L706C                         ; 0x45b3 $85A3 6C 70                    ;
.word    L7072                         ; 0x45b5 $85A5 72 70                    ;
.word    L7000                         ; 0x45b7 $85A7 00 70                    ;; Enemy Data
.word    L7080                         ; 0x45b9 $85A9 80 70                    ;
.word    L7088                         ; 0x45bb $85AB 88 70                    ;
.word    L7090                         ; 0x45bd $85AD 90 70                    ;
.word    L7002                         ; 0x45bf $85AF 02 70                    ;
.word    L7002                         ; 0x45c1 $85B1 02 70                    ;
.word    L7006                         ; 0x45c3 $85B3 06 70                    ;
.word    L7012                         ; 0x45c5 $85B5 12 70                    ;
.word    L701E                         ; 0x45c7 $85B7 1E 70                    ;
.word    L7026                         ; 0x45c9 $85B9 26 70                    ;
.word    L7000                         ; 0x45cb $85BB 00 70                    ;; Enemy Data
.word    L7168                         ; 0x45cd $85BD 68 71                    ;
.word    L71AC                         ; 0x45cf $85BF AC 71                    ;
.word    L7034                         ; 0x45d1 $85C1 34 70                    ;
.word    L7000                         ; 0x45d3 $85C3 00 70                    ;; Enemy Data
.word    L703E                         ; 0x45d5 $85C5 3E 70                    ;
.word    L7034                         ; 0x45d7 $85C7 34 70                    ;
.word    L7176                         ; 0x45d9 $85C9 76 71                    ;
.word    L717C                         ; 0x45db $85CB 7C 71                    ;
.word    L7188                         ; 0x45dd $85CD 88 71                    ;
.word    L7194                         ; 0x45df $85CF 94 71                    ;
.word    L7006                         ; 0x45e1 $85D1 06 70                    ;
.word    L7006                         ; 0x45e3 $85D3 06 70                    ;
.word    L7000                         ; 0x45e5 $85D5 00 70                    ;; Enemy Data
.word    L7000                         ; 0x45e7 $85D7 00 70                    ;; Enemy Data
.word    L7000                         ; 0x45e9 $85D9 00 70                    ;; Enemy Data
.word    L70A2                         ; 0x45eb $85DB A2 70                    ;
.word    L70E0                         ; 0x45ed $85DD E0 70                    ;
.word    L70E0                         ; 0x45ef $85DF E0 70                    ;
.word    L70E0                         ; 0x45f1 $85E1 E0 70                    ;
.word    L7050                         ; 0x45f3 $85E3 50 70                    ;
.word    L70B6                         ; 0x45f5 $85E5 B6 70                    ;
.word    L70F8                         ; 0x45f7 $85E7 F8 70                    ;
.word    L70F8                         ; 0x45f9 $85E9 F8 70                    ;
.word    L70F8                         ; 0x45fb $85EB F8 70                    ;
.word    L7068                         ; 0x45fd $85ED 68 70                    ;
.word    L70CC                         ; 0x45ff $85EF CC 70                    ;
.word    L7140                         ; 0x4601 $85F1 40 71                    ;
.word    L7140                         ; 0x4603 $85F3 40 71                    ;
.word    L7140                         ; 0x4605 $85F5 40 71                    ;
.word    L7048                         ; 0x4607 $85F7 48 70                    ;
.word    L7158                         ; 0x4609 $85F9 58 71                    ;
.word    L71B3                         ; 0x460b $85FB B3 71                    ;
.word    L71C0                         ; 0x460d $85FD C0 71                    ;
.word    L7126                         ; 0x460f $85FF 26 71                    ;
.word    L7126                         ; 0x4611 $8601 26 71                    ;
.word    L7126                         ; 0x4613 $8603 26 71                    ;
.word    L7126                         ; 0x4615 $8605 26 71                    ;
.word    L71D5                         ; 0x4617 $8607 D5 71                    ;
.word    L7108                         ; 0x4619 $8609 08 71                    ;
.word    L7108                         ; 0x461b $860B 08 71                    ;
.word    L7108                         ; 0x461d $860D 08 71                    ;
.word    L7108                         ; 0x461f $860F 08 71                    ;
.word    L7096                         ; 0x4621 $8611 96 70                    ;
.word    L71CF                         ; 0x4623 $8613 CF 71                    ;
.word    L71CF                         ; 0x4625 $8615 CF 71                    ;
.word    L7126                         ; 0x4627 $8617 26 71                    ;
.word    L7126                         ; 0x4629 $8619 26 71                    ;
.word    L7126                         ; 0x462b $861B 26 71                    ;
.word    L7126                         ; 0x462d $861D 26 71                    ;
; ---------------------------------------------------------------------------- ;
bank1_West_Hyrule__Key_Areas_Y_Location:                                        ;
.byt    $34,$20,$2A,$3C,$56,$40,$4D,$39; 0x462f $861F 34 20 2A 3C 56 40 4D 39  ;
.byt    $47,$5C,$29,$2E,$3A,$3E,$3E,$45; 0x4637 $8627 47 5C 29 2E 3A 3E 3E 45  ;
.byt    $3E,$60,$66,$52,$57,$61,$61,$40; 0x463f $862F 3E 60 66 52 57 61 61 40  ;
.byt    $43,$57,$4C,$4D,$4E,$4D,$44,$00; 0x4647 $8637 43 57 4C 4D 4E 4D 44 00  ;
.byt    $66,$00,$00,$00,$00,$00,$00,$00; 0x464f $863F 66 00 00 00 00 00 00 00  ;
L8647:                                                                          ;
.byt    $7F,$CD,$DF,$E0,$D8,$B6,$00,$A4; 0x4657 $8647 7F CD DF E0 D8 B6 00 A4  ;
.byt    $DB,$D9,$CC,$CB,$A0,$C0,$E2,$00; 0x465f $864F DB D9 CC CB A0 C0 E2 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x4667 $8657 00 00 00 00 00 00 00     ;
bank1_West_Hyrule__Key_Areas_X_Location:                                        ;
.byt    $17,$1D,$25,$10,$14,$3E,$15,$3D; 0x466e $865E 17 1D 25 10 14 3E 15 3D  ;
.byt    $08,$30,$30,$77,$01,$43,$26,$09; 0x4676 $8666 08 30 30 77 01 43 26 09  ;
.byt    $36,$32,$7B,$10,$1A,$1A,$62,$07; 0x467e $866E 36 32 7B 10 1A 1A 62 07  ;
.byt    $11,$21,$14,$11,$13,$17,$25,$00; 0x4686 $8676 11 21 14 11 13 17 25 00  ;
.byt    $26,$00,$00,$00,$00,$00,$00,$00; 0x468e $867E 26 00 00 00 00 00 00 00  ;
.byt    $00,$3D,$0A,$15,$32,$6E,$00,$42; 0x4696 $8686 00 3D 0A 15 32 6E 00 42  ;
.byt    $08,$48,$15,$7C,$3E,$0B,$39,$00; 0x469e $868E 08 48 15 7C 3E 0B 39 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x46a6 $8696 00 00 00 00 00 00 00     ;
bank1_West_Hyrule__Key_Areas_Map_Number:                                        ;
.byt    $80,$E1,$6B,$2D,$6E,$66,$6C,$46; 0x46ad $869D 80 E1 6B 2D 6E 66 6C 46  ;
.byt    $73,$78,$07,$C7,$09,$CB,$0C,$0E; 0x46b5 $86A5 73 78 07 C7 09 CB 0C 0E  ;
.byt    $10,$12,$D3,$01,$02,$04,$C5,$54; 0x46bd $86AD 10 12 D3 01 02 04 C5 54  ;
.byt    $B3,$D4,$55,$56,$57,$57,$F9,$39; 0x46c5 $86B5 B3 D4 55 56 57 57 F9 39  ;
.byt    $B9,$00,$00,$00,$00,$00,$00,$00; 0x46cd $86BD B9 00 00 00 00 00 00 00  ;
.byt    $28,$29,$2A,$2B,$3C,$C2,$00,$C5; 0x46d5 $86C5 28 29 2A 2B 3C C2 00 C5  ;
.byt    $06,$C8,$18,$CB,$00,$0E,$00,$00; 0x46dd $86CD 06 C8 18 CB 00 0E 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x46e5 $86D5 00 00 00 00 00 00 00     ;
bank1_West_Hyrule__Key_Areas_World_Number:                                      ;
.byt    $20,$00,$00,$00,$00,$00,$00,$40; 0x46ec $86DC 20 00 00 00 00 00 00 40  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x46f4 $86E4 00 00 00 00 00 00 00 00  ;
.byt    $00,$80,$00,$40,$40,$40,$40,$00; 0x46fc $86EC 00 80 00 40 40 40 40 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x4704 $86F4 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x470c $86FC 00 00 00 00 00 00 00 00  ;
.byt    $00,$02,$01,$01,$04,$04,$04,$04; 0x4714 $8704 00 02 01 01 04 04 04 04  ;
.byt    $04,$04,$04,$04,$0C,$0C,$10,$00; 0x471c $870C 04 04 04 04 0C 0C 10 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x4724 $8714 00 00 00 00 00 00 00     ;
bank1_West_Hyrule__Room_Connectivity_Data:                                      ;
.byt    $FC,$FC,$FC,$FC,$FC,$00,$00,$FC; 0x472b $871B FC FC FC FC FC 00 00 FC  ;
.byt    $FC,$00,$00,$FC,$FC,$00,$00,$FC; 0x4733 $8723 FC 00 00 FC FC 00 00 FC  ;
.byt    $FC,$00,$00,$14,$13,$00,$00,$FD; 0x473b $872B FC 00 00 14 13 00 00 FD  ;
.byt    $FC,$00,$00,$FC,$FC,$00,$00,$FD; 0x4743 $8733 FC 00 00 FC FC 00 00 FD  ;
.byt    $00,$00,$00,$00,$FC,$00,$00,$28; 0x474b $873B 00 00 00 00 FC 00 00 28  ;
.byt    $27,$00,$00,$2C,$2B,$00,$00,$FD; 0x4753 $8743 27 00 00 2C 2B 00 00 FD  ;
.byt    $FC,$00,$00,$34,$33,$00,$00,$FD; 0x475b $874B FC 00 00 34 33 00 00 FD  ;
.byt    $FC,$00,$00,$3C,$3B,$00,$00,$FD; 0x4763 $8753 FC 00 00 3C 3B 00 00 FD  ;
.byt    $FC,$00,$00,$44,$43,$00,$00,$FD; 0x476b $875B FC 00 00 44 43 00 00 FD  ;
.byt    $FC,$00,$00,$4C,$4B,$00,$00,$FD; 0x4773 $8763 FC 00 00 4C 4B 00 00 FD  ;
.byt    $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC; 0x477b $876B FC FC FC FC FC FC FC FC  ;
.byt    $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC; 0x4783 $8773 FC FC FC FC FC FC FC FC  ;
.byt    $FC,$FC,$FC,$FC                ; 0x478b $877B FC FC FC FC              ;
bank1_Area_Data__West_Hyrule_Random_Battle___Desert__South_West_Hyrule_:        ;
.byt    $10,$C0,$C3,$11,$D4,$02,$DE,$03; 0x478f $877F 10 C0 C3 11 D4 02 DE 03  ;
.byt    $D4,$04,$D8,$03,$D2,$02,$DC,$03; 0x4797 $8787 D4 04 D8 03 D2 02 DC 03  ;
; ---------------------------------------------------------------------------- ;
bank1_Pointer_table_for_Palaces_offsets_in_Saved_RAM:                           ;
.word    L7C18                         ; 0x479f $878F 18 7C                    ;
.word    L7D76                         ; 0x47a1 $8791 76 7D                    ;
.word    L7EEA                         ; 0x47a3 $8793 EA 7E                    ;
.word    L7DA6                         ; 0x47a5 $8795 A6 7D                    ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Palaces_to_test_for_completion:                                 ;
;FF = don't test                                                               ;
;00 = check for item at $0785 + offset 00 (Candle, Glove...)                   ;
.byt    $00,$01,$02,$03                ; 0x47a7 $8797 00 01 02 03              ;
; ---------------------------------------------------------------------------- ;
bank1_Transform_completed_palaces_into_stone:                                   ;
    LDX      #$02                      ; 0x47ab $879B A2 02                    ; X = 02
L879D:                                                                          ;
    LDA      bank1_Table_for_Palaces_to_test_for_completion,x; 0x47ad $879D BD 97 87; refer to table at $4797
    CMP      #$FF                      ; 0x47b0 $87A0 C9 FF                    ; if FF, skip
    BEQ      L87C2                     ; 0x47b2 $87A2 F0 1E                    ;
    TAY                                ; 0x47b4 $87A4 A8                       ;
    LDA      $0785,y                   ; 0x47b5 $87A5 B9 85 07                 ; Item Collected?
    BEQ      L87C2                     ; 0x47b8 $87A8 F0 18                    ; if not, skip
    LDA      $078D,y                   ; 0x47ba $87AA B9 8D 07                 ; Crystal Placed?
    BEQ      L87C2                     ; 0x47bd $87AD F0 13                    ; if not, skip
    TXA                                ; 0x47bf $87AF 8A                       ;
    ASL                                ; 0x47c0 $87B0 0A                       ;
    TAY                                ; 0x47c1 $87B1 A8                       ;
    LDA      bank1_Pointer_table_for_Palaces_offsets_in_Saved_RAM,y; 0x47c2 $87B2 B9 8F 87; refer to table at $478F
    STA      L000E                     ; 0x47c5 $87B5 85 0E                    ; pointer byte 1
    LDA      bank1_Pointer_table_for_Palaces_offsets_in_Saved_RAM+$01,y; 0x47c7 $87B7 B9 90 87; refer to table at $478F (offset +1)
    STA      $0F                       ; 0x47ca $87BA 85 0F                    ; pointer byte 2
    LDY      #$00                      ; 0x47cc $87BC A0 00                    ; Y = 00
    LDA      #$0B                      ; 0x47ce $87BE A9 0B                    ; A = 0B (0B = 1 Unit of Mountain)
    STA      (L000E),y                 ; 0x47d0 $87C0 91 0E                    ;
L87C2:                                                                          ;
    DEX                                ; 0x47d2 $87C2 CA                       ;
    BPL      L879D                     ; 0x47d3 $87C3 10 D8                    ; loop to $479D
    RTS                                ; 0x47d5 $87C5 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_UNUSED_87C6:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x47d6 $87C6 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x47de $87CE FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x47e6 $87D6 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x47ee $87DE FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x47f6 $87E6 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0x47fe $87EE FF FF FF FF FF           ;
L87F3:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4803 $87F3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x480b $87FB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4813 $8803 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x481b $880B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF                ; 0x4823 $8813 FF FF FF FF              ;
L8817:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4827 $8817 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x482f $881F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4837 $8827 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x483f $882F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4847 $8837 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x484f $883F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4857 $8847 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x485f $884F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4867 $8857 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x486f $885F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4877 $8867 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x487f $886F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4887 $8877 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x488f $887F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4897 $8887 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x489f $888F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x48a7 $8897 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0x48af $889F FF                       ;
bank1_Enemy_Data__West_Hyrule_and_Death_Mountain:                               ;
.byt    $01,$01,$03,$7A,$5C,$01,$0B,$6F; 0x48b0 $88A0 01 01 03 7A 5C 01 0B 6F  ;
.byt    $11,$72,$51,$75,$51,$7A,$51,$76; 0x48b8 $88A8 11 72 51 75 51 7A 51 76  ;
.byt    $9A,$01,$0B,$79,$1C,$75,$5C,$7F; 0x48c0 $88B0 9A 01 0B 79 1C 75 5C 7F  ;
.byt    $5C,$7B,$9A,$7D,$9C,$01,$07,$09; 0x48c8 $88B8 5C 7B 9A 7D 9C 01 07 09  ;
.byt    $07,$0D,$07,$08,$4A,$01,$0D,$7A; 0x48d0 $88C0 07 0D 07 08 4A 01 0D 7A  ;
.byt    $1F,$70,$5F,$72,$5F,$7A,$59,$7C; 0x48d8 $88C8 1F 70 5F 72 5F 7A 59 7C  ;
.byt    $9F,$70,$DF,$01,$09,$7D,$03,$70; 0x48e0 $88D0 9F 70 DF 01 09 7D 03 70  ;
.byt    $9C,$78,$9B,$7A,$9C,$01,$09,$76; 0x48e8 $88D8 9C 78 9B 7A 9C 01 09 76  ;
.byt    $5C,$7B,$5C,$7F,$5C,$71,$9C,$01; 0x48f0 $88E0 5C 7B 5C 7F 5C 71 9C 01  ;
.byt    $07,$0C,$47,$0E,$47,$02,$87,$01; 0x48f8 $88E8 07 0C 47 0E 47 02 87 01  ;
.byt    $09,$77,$1A,$4D,$51,$62,$91,$02; 0x4900 $88F0 09 77 1A 4D 51 62 91 02  ;
.byt    $C7,$01,$0D,$0F,$1D,$7B,$11,$7E; 0x4908 $88F8 C7 01 0D 0F 1D 7B 11 7E  ;
.byt    $11,$73,$91,$77,$91,$0F,$9D,$01; 0x4910 $8900 11 73 91 77 91 0F 9D 01  ;
.byt    $03,$74,$99,$01,$05,$7F,$0F,$7F; 0x4918 $8908 03 74 99 01 05 7F 0F 7F  ;
.byt    $8F,$01,$0D,$0F,$0B,$5C,$1C,$5E; 0x4920 $8910 8F 01 0D 0F 0B 5C 1C 5E  ;
.byt    $5C,$5D,$9C,$50,$DC,$0F,$CB,$01; 0x4928 $8918 5C 5D 9C 50 DC 0F CB 01  ;
.byt    $07,$20,$55,$24,$96,$36,$9C,$01; 0x4930 $8920 07 20 55 24 96 36 9C 01  ;
.byt    $07,$0F,$0B,$2C,$58,$00,$CB,$01; 0x4938 $8928 07 0F 0B 2C 58 00 CB 01  ;
.byt    $05,$7F,$0B,$7F,$CB,$01,$0B,$7C; 0x4940 $8930 05 7F 0B 7F CB 01 0B 7C  ;
.byt    $04,$7E,$04,$5B,$1B,$70,$C4,$73; 0x4948 $8938 04 7E 04 5B 1B 70 C4 73  ;
.byt    $C4,$01,$05,$7F,$0C,$70,$8C,$0F; 0x4950 $8940 C4 01 05 7F 0C 70 8C 0F  ;
.byt    $0E,$0C,$76,$04,$38,$20,$3C,$60; 0x4958 $8948 0E 0C 76 04 38 20 3C 60  ;
.byt    $36,$A0,$78,$84,$70,$8C,$0B,$7C; 0x4960 $8950 36 A0 78 84 70 8C 0B 7C  ;
.byt    $04,$7E,$05,$71,$84,$74,$85,$79; 0x4968 $8958 04 7E 05 71 84 74 85 79  ;
.byt    $85,$0B,$0F,$21,$72,$05,$70,$45; 0x4970 $8960 85 0B 0F 21 72 05 70 45  ;
.byt    $72,$85,$00,$A1,$0B,$0F,$21,$14; 0x4978 $8968 72 85 00 A1 0B 0F 21 14  ;
.byt    $0D,$13,$4D,$17,$8D,$00,$A1,$09; 0x4980 $8970 0D 13 4D 17 8D 00 A1 09  ;
.byt    $7B,$14,$15,$8D,$76,$94,$1C,$8D; 0x4988 $8978 7B 14 15 8D 76 94 1C 8D  ;
.byt    $0F,$7F,$0C,$3A,$20,$3E,$20,$1A; 0x4990 $8980 0F 7F 0C 3A 20 3E 20 1A  ;
.byt    $60,$31,$A0,$38,$A0,$70,$8C,$09; 0x4998 $8988 60 31 A0 38 A0 70 8C 09  ;
.byt    $67,$1C,$5A,$1B,$56,$9B,$6A,$9C; 0x49a0 $8990 67 1C 5A 1B 56 9B 6A 9C  ;
.byt    $09,$7E,$04,$70,$5F,$7E,$44,$71; 0x49a8 $8998 09 7E 04 70 5F 7E 44 71  ;
L89A0:                                                                          ;
.byt    $9F,$07,$76,$1F,$60,$59,$6F,$59; 0x49b0 $89A0 9F 07 76 1F 60 59 6F 59  ;
.byt    $11,$72,$06,$48,$06,$7E,$06,$60; 0x49b8 $89A8 11 72 06 48 06 7E 06 60  ;
.byt    $46,$2D,$46,$6F,$46,$49,$86,$5E; 0x49c0 $89B0 46 2D 46 6F 46 49 86 5E  ;
.byt    $86,$0D,$35,$06,$79,$18,$6D,$06; 0x49c8 $89B8 86 0D 35 06 79 18 6D 06  ;
.byt    $5F,$46,$45,$98,$3A,$86,$0B,$74; 0x49d0 $89C0 5F 46 45 98 3A 86 0B 74  ;
.byt    $12,$77,$11,$7F,$11,$73,$91,$7B; 0x49d8 $89C8 12 77 11 7F 11 73 91 7B  ;
.byt    $91,$0F,$0F,$1D,$78,$11,$71,$51; 0x49e0 $89D0 91 0F 0F 1D 78 11 71 51  ;
.byt    $73,$91,$77,$92,$7D,$91,$00,$9D; 0x49e8 $89D8 73 91 77 92 7D 91 00 9D  ;
.byt    $0B,$77,$15,$1B,$0E,$1D,$4D,$17; 0x49f0 $89E0 0B 77 15 1B 0E 1D 4D 17  ;
.byt    $8E,$79,$95,$0D,$0F,$1D,$75,$16; 0x49f8 $89E8 8E 79 95 0D 0F 1D 75 16  ;
.byt    $17,$0E,$15,$8E,$79,$96,$00,$9D; 0x4a00 $89F0 17 0E 15 8E 79 96 00 9D  ;
.byt    $0F,$7B,$1F,$7E,$1F,$60,$5F,$62; 0x4a08 $89F8 0F 7B 1F 7E 1F 60 5F 62  ;
.byt    $9F,$7F,$9F,$60,$DF,$62,$DF,$01; 0x4a10 $8A00 9F 7F 9F 60 DF 62 DF 01  ;
.byt    $0D,$0F,$0F,$56,$5C,$5E,$5C,$58; 0x4a18 $8A08 0D 0F 0F 56 5C 5E 5C 58  ;
.byt    $9C,$5B,$9C,$00,$CF,$01,$05,$48; 0x4a20 $8A10 9C 5B 9C 00 CF 01 05 48  ;
.byt    $40,$48,$C0,$01,$0B,$79,$1F,$7E; 0x4a28 $8A18 40 48 C0 01 0B 79 1F 7E  ;
.byt    $1F,$7E,$5F,$71,$9F,$78,$9F,$01; 0x4a30 $8A20 1F 7E 5F 71 9F 78 9F 01  ;
.byt    $0B,$79,$1F,$7E,$1F,$70,$5F,$71; 0x4a38 $8A28 0B 79 1F 7E 1F 70 5F 71  ;
.byt    $9F,$78,$9F,$01,$0B,$79,$1F,$7E; 0x4a40 $8A30 9F 78 9F 01 0B 79 1F 7E  ;
.byt    $1F,$7E,$5F,$71,$9F,$78,$9F,$01; 0x4a48 $8A38 1F 7E 5F 71 9F 78 9F 01  ;
.byt    $0B,$79,$1F,$7E,$1F,$70,$5F,$71; 0x4a50 $8A40 0B 79 1F 7E 1F 70 5F 71  ;
.byt    $9F,$78,$9F,$01,$07,$6F,$17,$61; 0x4a58 $8A48 9F 78 9F 01 07 6F 17 61  ;
.byt    $98,$65,$D8,$0D,$56,$5C,$5A,$5C; 0x4a60 $8A50 98 65 D8 0D 56 5C 5A 5C  ;
.byt    $5E,$5C,$6E,$91,$61,$D1,$64,$D1; 0x4a68 $8A58 5E 5C 6E 91 61 D1 64 D1  ;
.byt    $0F,$68,$1F,$6A,$1F,$6E,$1F,$66; 0x4a70 $8A60 0F 68 1F 6A 1F 6E 1F 66  ;
.byt    $9F,$6F,$9F,$63,$DF,$6A,$DF,$05; 0x4a78 $8A68 9F 6F 9F 63 DF 6A DF 05  ;
.byt    $76,$01,$76,$C1,$01,$03,$76,$81; 0x4a80 $8A70 76 01 76 C1 01 03 76 81  ;
.byt    $01,$01,$11,$39,$1F,$3B,$1F,$3D; 0x4a88 $8A78 01 01 11 39 1F 3B 1F 3D  ;
.byt    $1F,$44,$5F,$5C,$5F,$64,$9F,$7C; 0x4a90 $8A80 1F 44 5F 5C 5F 64 9F 7C  ;
.byt    $9F,$7E,$9F,$0F,$6A,$04,$5C,$04; 0x4a98 $8A88 9F 7E 9F 0F 6A 04 5C 04  ;
.byt    $7D,$55,$6F,$44,$76,$95,$6C,$84; 0x4aa0 $8A90 7D 55 6F 44 76 95 6C 84  ;
.byt    $74,$C4,$0F,$6C,$11,$4E,$11,$20; 0x4aa8 $8A98 74 C4 0F 6C 11 4E 11 20  ;
L8AA0:                                                                          ;
.byt    $51,$70,$9B,$2F,$91,$41,$D1,$63; 0x4ab0 $8AA0 51 70 9B 2F 91 41 D1 63  ;
.byt    $D1,$0F,$0D,$07,$03,$47,$0A,$4A; 0x4ab8 $8AA8 D1 0F 0D 07 03 47 0A 4A  ;
.byt    $7B,$5C,$01,$C7,$74,$DC,$05,$CA; 0x4ac0 $8AB0 7B 5C 01 C7 74 DC 05 CA  ;
.byt    $0B,$7B,$12,$63,$52,$5B,$52,$43; 0x4ac8 $8AB8 0B 7B 12 63 52 5B 52 43  ;
.byt    $92,$3D,$92,$05,$0F,$0F,$00,$CF; 0x4ad0 $8AC0 92 3D 92 05 0F 0F 00 CF  ;
.byt    $0F,$7A,$5F,$7D,$5F,$7F,$5F,$70; 0x4ad8 $8AC8 0F 7A 5F 7D 5F 7F 5F 70  ;
.byt    $9C,$00,$C7,$03,$C7,$75,$D7,$0D; 0x4ae0 $8AD0 9C 00 C7 03 C7 75 D7 0D  ;
.byt    $60,$51,$63,$51,$66,$51,$69,$91; 0x4ae8 $8AD8 60 51 63 51 66 51 69 91  ;
.byt    $6C,$91,$6F,$91,$09,$2D,$16,$4B; 0x4af0 $8AE0 6C 91 6F 91 09 2D 16 4B  ;
.byt    $52,$56,$92,$3C,$92,$09,$76,$5C; 0x4af8 $8AE8 52 56 92 3C 92 09 76 5C  ;
.byt    $79,$5A,$7C,$5C,$70,$D7,$05,$0F; 0x4b00 $8AF0 79 5A 7C 5C 70 D7 05 0F  ;
.byt    $0F,$00,$CF,$0D,$09,$07,$6B,$04; 0x4b08 $8AF8 0F 00 CF 0D 09 07 6B 04  ;
.byt    $0E,$07,$61,$44,$04,$47,$75,$D7; 0x4b10 $8B00 0E 07 61 44 04 47 75 D7  ;
.byt    $0B,$25,$44,$39,$41,$2D,$44,$71; 0x4b18 $8B08 0B 25 44 39 41 2D 44 71  ;
.byt    $98,$2B,$84,$0D,$60,$51,$63,$51; 0x4b20 $8B10 98 2B 84 0D 60 51 63 51  ;
.byt    $66,$51,$69,$91,$6C,$91,$6F,$91; 0x4b28 $8B18 66 51 69 91 6C 91 6F 91  ;
.byt    $0D,$08,$07,$0E,$07,$5C,$17,$02; 0x4b30 $8B20 0D 08 07 0E 07 5C 17 02  ;
.byt    $47,$06,$87,$7F,$9B,$0F,$3A,$05; 0x4b38 $8B28 47 06 87 7F 9B 0F 3A 05  ;
.byt    $45,$45,$4E,$57,$64,$85,$7E,$85; 0x4b40 $8B30 45 45 4E 57 64 85 7E 85  ;
.byt    $63,$D7,$75,$C5,$0F,$76,$01,$7E; 0x4b48 $8B38 63 D7 75 C5 0F 76 01 7E  ;
.byt    $04,$53,$57,$66,$44,$42,$84,$29; 0x4b50 $8B40 04 53 57 66 44 42 84 29  ;
.byt    $97,$25,$C4,$0F,$7F,$11,$73,$51; 0x4b58 $8B48 97 25 C4 0F 7F 11 73 51  ;
L8B50:                                                                          ;
.byt    $75,$51,$79,$81,$7C,$91,$7E,$91; 0x4b60 $8B50 75 51 79 81 7C 91 7E 91  ;
.byt    $71,$D1,$0B,$76,$58,$07,$8A,$79; 0x4b68 $8B58 71 D1 0B 76 58 07 8A 79  ;
.byt    $9C,$7D,$9C,$08,$CA,$05,$76,$57; 0x4b70 $8B60 9C 7D 9C 08 CA 05 76 57  ;
.byt    $7F                            ; 0x4b78 $8B68 7F                       ;
L8B69:                                                                          ;
.byt    $98,$0F,$78,$5F,$79,$5F,$7B,$5F; 0x4b79 $8B69 98 0F 78 5F 79 5F 7B 5F  ;
.byt    $73,$97,$7D,$9C,$7F,$9C,$72,$DC; 0x4b81 $8B71 73 97 7D 9C 7F 9C 72 DC  ;
.byt    $09,$6D,$03,$50,$58,$76,$43,$7B; 0x4b89 $8B79 09 6D 03 50 58 76 43 7B  ;
.byt    $D8,$03,$50,$83,$09,$32,$51,$3C; 0x4b91 $8B81 D8 03 50 83 09 32 51 3C  ;
.byt    $51,$47,$91,$2D,$91,$0B,$6E,$14; 0x4b99 $8B89 51 47 91 2D 91 0B 6E 14  ;
.byt    $60,$52,$46,$92,$4E,$92,$21,$D4; 0x4ba1 $8B91 60 52 46 92 4E 92 21 D4  ;
.byt    $09,$57,$58,$40,$94,$3A,$98    ; 0x4ba9 $8B99 09 57 58 40 94 3A 98     ;
L8BA0:                                                                          ;
.byt    $24,$D4,$0F,$6E,$14,$51,$54,$58; 0x4bb0 $8BA0 24 D4 0F 6E 14 51 54 58  ;
.byt    $54,$41,$94,$38,$94,$3C,$94,$23; 0x4bb8 $8BA8 54 41 94 38 94 3C 94 23  ;
.byt    $D4,$0B,$6A,$18,$68,$58,$6C,$58; 0x4bc0 $8BB0 D4 0B 6A 18 68 58 6C 58  ;
.byt    $66,$98,$63,$D8,$09,$6A,$14    ; 0x4bc8 $8BB8 66 98 63 D8 09 6A 14     ;
L8BBF:                                                                          ;
.byt    $60,$98,$64,$98,$62,$D4,$05,$06; 0x4bcf $8BBF 60 98 64 98 62 D4 05 06  ;
.byt    $57,$01,$D7,$0B,$3A,$04,$68,$58; 0x4bd7 $8BC7 57 01 D7 0B 3A 04 68 58  ;
.byt    $6A,$58,$48,$94,$60,$D4,$0D,$1D; 0x4bdf $8BCF 6A 58 48 94 60 D4 0D 1D  ;
.byt    $11,$2F,$14,$50,$81,$58,$91,$3A; 0x4be7 $8BD7 11 2F 14 50 81 58 91 3A  ;
.byt    $91,$4D,$94,$09,$6A,$18,$64,$98; 0x4bef $8BDF 91 4D 94 09 6A 18 64 98  ;
.byt    $68,$98,$69,$D4,$03,$78,$9B,$0B; 0x4bf7 $8BE7 68 98 69 D4 03 78 9B 0B  ;
.byt    $77,$15,$1B,$0E,$1D,$4D,$17,$8E; 0x4bff $8BEF 77 15 1B 0E 1D 4D 17 8E  ;
.byt    $79,$95,$0D,$0F,$1D,$75,$16,$17; 0x4c07 $8BF7 79 95 0D 0F 1D 75 16 17  ;
.byt    $0E,$15,$8E,$79,$96,$00,$9D,$0F; 0x4c0f $8BFF 0E 15 8E 79 96 00 9D 0F  ;
.byt    $7F,$0C,$3A,$20,$3E,$20,$1A,$60; 0x4c17 $8C07 7F 0C 3A 20 3E 20 1A 60  ;
.byt    $31,$A0,$38,$A0,$70,$8C,$09,$67; 0x4c1f $8C0F 31 A0 38 A0 70 8C 09 67  ;
.byt    $1C,$5A,$1B,$56,$9B,$6A,$9C,$11; 0x4c27 $8C17 1C 5A 1B 56 9B 6A 9C 11  ;
.byt    $72,$06,$48,$06,$7E,$06,$60,$46; 0x4c2f $8C1F 72 06 48 06 7E 06 60 46  ;
.byt    $2D,$46,$6F,$46,$49,$86,$5E,$86; 0x4c37 $8C27 2D 46 6F 46 49 86 5E 86  ;
.byt    $0D,$35,$06,$79,$18,$6D,$06,$5F; 0x4c3f $8C2F 0D 35 06 79 18 6D 06 5F  ;
.byt    $46,$45,$98,$3A,$86            ; 0x4c47 $8C37 46 45 98 3A 86           ;
bank1_Background_Areas_Data:                                                    ;
.byt    $18,$60,$90,$00,$14,$09,$32,$0A; 0x4c4c $8C3C 18 60 90 00 14 09 32 0A  ;
.byt    $28,$09,$06,$0A,$48,$09,$18,$09; 0x4c54 $8C44 28 09 06 0A 48 09 18 09  ;
.byt    $32,$0A,$28,$09,$06,$0A,$48,$09; 0x4c5c $8C4C 32 0A 28 09 06 0A 48 09  ;
L8C54:                                                                          ;
.byt    $14,$48,$9A,$60,$06,$EA,$04,$EA; 0x4c64 $8C54 14 48 9A 60 06 EA 04 EA  ;
.byt    $02,$EA,$08,$EA,$06,$EA,$0A,$EA; 0x4c6c $8C5C 02 EA 08 EA 06 EA 0A EA  ;
.byt    $04,$EA,$02,$EA                ; 0x4c74 $8C64 04 EA 02 EA              ;
L8C68:                                                                          ;
.byt    $14,$48,$9A,$60,$08,$EA,$06,$EA; 0x4c78 $8C68 14 48 9A 60 08 EA 06 EA  ;
.byt    $06,$EA,$02,$EA,$08,$EA,$06,$EA; 0x4c80 $8C70 06 EA 02 EA 08 EA 06 EA  ;
.byt    $0A,$EA,$0A,$EA                ; 0x4c88 $8C78 0A EA 0A EA              ;
L8C7C:                                                                          ;
.byt    $1A,$48,$90,$60,$14,$09,$32,$0A; 0x4c8c $8C7C 1A 48 90 60 14 09 32 0A  ;
.byt    $28,$09,$06,$0A,$48,$09,$04,$EA; 0x4c94 $8C84 28 09 06 0A 48 09 04 EA  ;
.byt    $14,$09,$32,$0A,$28,$09,$06,$0A; 0x4c9c $8C8C 14 09 32 0A 28 09 06 0A  ;
.byt    $48,$09                        ; 0x4ca4 $8C94 48 09                    ;
L8C96:                                                                          ;
.byt    $12,$E0,$0E,$48,$D8,$09,$E1,$00; 0x4ca6 $8C96 12 E0 0E 48 D8 09 E1 00  ;
.byt    $D8,$0F,$E2,$00,$D8,$09,$E3,$00; 0x4cae $8C9E D8 0F E2 00 D8 09 E3 00  ;
.byt    $D8,$0E                        ; 0x4cb6 $8CA6 D8 0E                    ;
L8CA8:                                                                          ;
.byt    $0D,$E0,$0E,$08,$D8,$08,$AE,$0F; 0x4cb8 $8CA8 0D E0 0E 08 D8 08 AE 0F  ;
.byt    $0B,$E3,$00,$D8,$0F            ; 0x4cc0 $8CB0 0B E3 00 D8 0F           ;
bank1_Area_Data__West_Hyrule_North_Castle:                                      ;
.byt    $36,$40,$68,$00,$20,$4F,$22,$F8; 0x4cc5 $8CB5 36 40 68 00 20 4F 22 F8  ;
.byt    $23,$F8,$23,$F8,$23,$F8,$23,$F8; 0x4ccd $8CBD 23 F8 23 F8 23 F8 23 F8  ;
.byt    $E1,$00,$20,$4F,$A0,$BF,$21,$F7; 0x4cd5 $8CC5 E1 00 20 4F A0 BF 21 F7  ;
.byt    $91,$BB,$81,$B9,$A0,$A9,$21,$F5; 0x4cdd $8CCD 91 BB 81 B9 A0 A9 21 F5  ;
.byt    $90,$A7,$81,$A5,$72,$06,$24,$F5; 0x4ce5 $8CD5 90 A7 81 A5 72 06 24 F5  ;
.byt    $23,$F7,$22,$4F                ; 0x4ced $8CDD 23 F7 22 4F              ;
L8CE1:                                                                          ;
.byt    $21,$F8,$23,$F8,$23,$F8,$23,$F8; 0x4cf1 $8CE1 21 F8 23 F8 23 F8 23 F8  ;
.byt    $23,$F8                        ; 0x4cf9 $8CE9 23 F8                    ;
bank1_Area_Data__West_Hyrule_Random_Battle___Desert__North_West_Hyrule_:        ;
.byt    $1C,$C0,$C2,$11,$84,$E1,$81,$E1; 0x4cfb $8CEB 1C C0 C2 11 84 E1 81 E1  ;
.byt    $F5,$41,$F2,$32,$86,$E1,$81,$E1; 0x4d03 $8CF3 F5 41 F2 32 86 E1 81 E1  ;
.byt    $F3,$41,$F8,$32,$F2,$41,$8A,$E1; 0x4d0b $8CFB F3 41 F8 32 F2 41 8A E1  ;
.byt    $81,$E1,$F3,$32                ; 0x4d13 $8D03 81 E1 F3 32              ;
bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava:                       ;
.byt    $1A,$44,$C2,$19,$82,$80,$82,$91; 0x4d17 $8D07 1A 44 C2 19 82 80 82 91  ;
.byt    $84,$80,$84,$91,$84,$80,$84,$80; 0x4d1f $8D0F 84 80 84 91 84 80 84 80  ;
.byt    $82,$95,$8C,$80,$83,$92,$87,$91; 0x4d27 $8D17 82 95 8C 80 83 92 87 91  ;
.byt    $82,$80                        ; 0x4d2f $8D1F 82 80                    ;
bank1_Area_Data__West_Hyrule_Random_Battle___Forest__North_West_Hyrule_:        ;
.byt    $14,$48,$1A,$62,$32,$33,$3C,$35; 0x4d31 $8D21 14 48 1A 62 32 33 3C 35  ;
.byt    $42,$31,$36,$33,$38,$35,$41,$31; 0x4d39 $8D29 42 31 36 33 38 35 41 31  ;
.byt    $36,$31,$38,$33                ; 0x4d41 $8D31 36 31 38 33              ;
bank1_Area_Data__West_Hyrule_Random_Battle___Swamp__North_West_and_South_West_Hyrule_: ;
.byt    $22,$40,$B1,$29,$96,$80,$74,$E2; 0x4d45 $8D35 22 40 B1 29 96 80 74 E2  ;
.byt    $52,$E4,$92,$80,$74,$E2,$94,$80; 0x4d4d $8D3D 52 E4 92 80 74 E2 94 80  ;
.byt    $92,$80,$74,$E2,$54,$E4,$92,$80; 0x4d55 $8D45 92 80 74 E2 54 E4 92 80  ;
.byt    $92,$91,$92,$82,$74,$E2,$72,$E2; 0x4d5d $8D4D 92 91 92 82 74 E2 72 E2  ;
.byt    $92,$91                        ; 0x4d65 $8D55 92 91                    ;
bank1_Area_Data__West_Hyrule_Random_Battle___Graveyard__North_West_and_South_West_Hyrule_: ;
.byt    $42,$70,$F0,$31,$A4,$00,$A2,$00; 0x4d67 $8D57 42 70 F0 31 A4 00 A2 00  ;
.byt    $A2,$01,$A2,$00,$A2,$01,$A1,$01; 0x4d6f $8D5F A2 01 A2 00 A2 01 A1 01  ;
.byt    $D3,$81,$91,$02,$91,$00,$92,$01; 0x4d77 $8D67 D3 81 91 02 91 00 92 01  ;
.byt    $92,$00,$92,$01,$91,$01,$91,$01; 0x4d7f $8D6F 92 00 92 01 91 01 91 01  ;
.byt    $91,$01,$91,$00,$D4,$82,$82,$00; 0x4d87 $8D77 91 01 91 00 D4 82 82 00  ;
.byt    $82,$00,$82,$01,$D2,$81,$91,$02; 0x4d8f $8D7F 82 00 82 01 D2 81 91 02  ;
.byt    $91,$01,$92,$00,$D4,$80,$A2,$00; 0x4d97 $8D87 91 01 92 00 D4 80 A2 00  ;
.byt    $A2,$00,$A2,$02,$A2,$00,$A2,$01; 0x4d9f $8D8F A2 00 A2 02 A2 00 A2 01  ;
.byt    $A1,$01                        ; 0x4da7 $8D97 A1 01                    ;
bank1_Area_Data__West_Hyrule_Bridge:                                            ;
.byt    $1C,$E0,$A0,$39,$60,$E6,$61,$E6; 0x4da9 $8D99 1C E0 A0 39 60 E6 61 E6  ;
.byt    $61,$E6,$61,$E6,$71,$4E,$7F,$4E; 0x4db1 $8DA1 61 E6 61 E6 71 4E 7F 4E  ;
.byt    $7F,$4E,$7F,$4A,$6B,$E6,$61,$E6; 0x4db9 $8DA9 7F 4E 7F 4A 6B E6 61 E6  ;
.byt    $61,$E6,$61,$E6                ; 0x4dc1 $8DB1 61 E6 61 E6              ;
bank1_Area_Data__West_Hyrule_Grass_Area_with_Dolmens_and_Heart_Container:       ;
.byt    $1B,$E0,$90,$19,$A0,$97,$9C,$F1; 0x4dc5 $8DB5 1B E0 90 19 A0 97 9C F1  ;
.byt    $83,$04,$96,$F1,$83,$04        ; 0x4dcd $8DBD 83 04 96 F1 83 04        ;
L8DC3:                                                                          ;
.byt    $84,$04,$A4,$0F,$0F,$92,$F1,$96; 0x4dd3 $8DC3 84 04 A4 0F 0F 92 F1 96  ;
.byt    $F1,$96,$F1,$A6,$9B            ; 0x4ddb $8DCB F1 96 F1 A6 9B           ;
bank1_Area_Data__West_Hyrule_Grotto_with_Trophy_:                               ;
.byt    $25,$E0,$0F,$48,$D2,$00,$D2,$02; 0x4de0 $8DD0 25 E0 0F 48 D2 00 D2 02  ;
.byt    $80,$0F,$14,$D2,$00,$DE,$02,$D4; 0x4de8 $8DD8 80 0F 14 D2 00 DE 02 D4  ;
.byt    $04,$D6,$01,$90,$21,$F2,$21,$92; 0x4df0 $8DE0 04 D6 01 90 21 F2 21 92  ;
.byt    $22,$F3,$21,$92,$22,$F3,$21,$D2; 0x4df8 $8DE8 22 F3 21 92 22 F3 21 D2  ;
.byt    $02,$D6,$04,$D4,$06            ; 0x4e00 $8DF0 02 D6 04 D4 06           ;
bank1_Area_Data__West_Hyrule_Forest_with_Single_Tree__with_Aches_and_50_Exp_Bag_: ;
.byt    $1F,$68,$90,$64,$96,$80,$93,$80; 0x4e05 $8DF5 1F 68 90 64 96 80 93 80  ;
.byt    $98,$80,$92,$80,$07,$3D,$12,$39; 0x4e0d $8DFD 98 80 92 80 07 3D 12 39  ;
.byt    $20,$37,$32,$35,$98,$0F,$0A,$96; 0x4e15 $8E05 20 37 32 35 98 0F 0A 96  ;
.byt    $80,$96,$80,$96,$80,$92,$80    ; 0x4e1d $8E0D 80 96 80 96 80 92 80     ;
bank1_Area_Data__West_Hyrule_Forest_with_Single_Tree__with_Megmats_and_100_Exp_Bag_: ;
.byt    $1F,$68,$90,$64,$96,$80,$93,$80; 0x4e24 $8E14 1F 68 90 64 96 80 93 80  ;
.byt    $98,$80,$92,$80,$07,$3D,$12,$39; 0x4e2c $8E1C 98 80 92 80 07 3D 12 39  ;
.byt    $20,$37,$32,$35,$98,$0F,$0B,$96; 0x4e34 $8E24 20 37 32 35 98 0F 0B 96  ;
.byt    $80,$96,$80,$96,$80,$92,$80    ; 0x4e3c $8E2C 80 96 80 96 80 92 80     ;
bank1_Area_Data__West_Hyrule_Area_with_Rocky_Ground_and_Grass__Red_Jar_near_Palace_2_: ;
.byt    $2F,$00,$F1,$29,$94,$80,$96,$80; 0x4e43 $8E33 2F 00 F1 29 94 80 96 80  ;
.byt    $92,$81,$34,$F6,$91,$82,$32,$F6; 0x4e4b $8E3B 92 81 34 F6 91 82 32 F6  ;
.byt    $32,$F6,$91,$0F,$12,$1C,$BD,$21; 0x4e53 $8E43 32 F6 91 0F 12 1C BD 21  ;
.byt    $BB,$31,$F6,$32,$F6,$32,$F6,$32; 0x4e5b $8E4B BB 31 F6 32 F6 32 F6 32  ;
.byt    $F6,$32,$F6,$32,$F6,$24,$B3,$30; 0x4e63 $8E53 F6 32 F6 32 F6 24 B3 30  ;
.byt    $F6,$11,$B3,$31,$F6,$96,$80    ; 0x4e6b $8E5B F6 11 B3 31 F6 96 80     ;
bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods:               ;
.byt    $16,$68,$90,$61,$98,$03,$98,$03; 0x4e72 $8E62 16 68 90 61 98 03 98 03  ;
.byt    $98,$03,$94,$03,$96,$03,$96,$03; 0x4e7a $8E6A 98 03 94 03 96 03 96 03  ;
.byt    $98,$03,$92,$03,$96,$03        ; 0x4e82 $8E72 98 03 92 03 96 03        ;
bank1_Area_Data__West_Hyrule_Common_Grotto:                                     ;
.byt    $2E,$E0,$0E,$48,$D2,$0C,$D2,$0A; 0x4e88 $8E78 2E E0 0E 48 D2 0C D2 0A  ;
.byt    $D6,$0C,$D4,$0A,$A2,$23,$D2,$0C; 0x4e90 $8E80 D6 0C D4 0A A2 23 D2 0C  ;
.byt    $D2,$0E,$D4,$0C,$D2,$0A,$D2,$0C; 0x4e98 $8E88 D2 0E D4 0C D2 0A D2 0C  ;
.byt    $D2,$0E,$D4,$0C,$A0,$21,$D2,$0A; 0x4ea0 $8E90 D2 0E D4 0C A0 21 D2 0A  ;
.byt    $D6,$0C,$D4,$0E,$A4,$21,$D4,$0C; 0x4ea8 $8E98 D6 0C D4 0E A4 21 D4 0C  ;
.byt    $D2,$0A,$D4,$0C,$D2,$0E        ; 0x4eb0 $8EA0 D2 0A D4 0C D2 0E        ;
bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_1_and_2:               ;
.byt    $26,$E0,$0E,$48,$D2,$0A,$D6,$01; 0x4eb6 $8EA6 26 E0 0E 48 D2 0A D6 01  ;
.byt    $00,$3B,$D4,$02,$D4,$01,$D3,$08; 0x4ebe $8EAE 00 3B D4 02 D4 01 D3 08  ;
.byt    $D1,$0A,$D4,$01,$00,$33,$D4,$0A; 0x4ec6 $8EB6 D1 0A D4 01 00 33 D4 0A  ;
.byt    $D4,$0E,$E3,$00,$D8,$0A,$D2,$01; 0x4ece $8EBE D4 0E E3 00 D8 0A D2 01  ;
.byt    $00,$35,$D6,$0A,$D6,$0E        ; 0x4ed6 $8EC6 00 35 D6 0A D6 0E        ;
bank1_UNUSED_MAP_DATA:                                                          ;
.byt    $0C,$E0,$0E,$48,$8E,$05,$D4,$09; 0x4edc $8ECC 0C E0 0E 48 8E 05 D4 09  ;
.byt    $E2,$00,$DE,$0E                ; 0x4ee4 $8ED4 E2 00 DE 0E              ;
bank1_Area_Data__West_Hyrule_Bridge_over_Lava__before_Medicine_:                ;
.byt    $16,$E0,$03,$48,$E1,$00,$D0,$00; 0x4ee8 $8ED8 16 E0 03 48 E1 00 D0 00  ;
.byt    $80,$4F,$F0,$2F,$E2,$00,$80,$4F; 0x4ef0 $8EE0 80 4F F0 2F E2 00 80 4F  ;
.byt    $F0,$2F,$E3,$00,$D0,$03        ; 0x4ef8 $8EE8 F0 2F E3 00 D0 03        ;
bank1_Area_Data__West_Hyrule_Grotto_before_200_Exp_Bag__with_Megmats_and_Orange_Goriya_: ;
.byt    $1E,$E0,$0E,$48,$D2,$09,$95,$E2; 0x4efe $8EEE 1E E0 0E 48 D2 09 95 E2  ;
.byt    $94,$E2,$94,$E2,$94,$E2,$94,$E2; 0x4f06 $8EF6 94 E2 94 E2 94 E2 94 E2  ;
.byt    $E2,$00,$99,$E2,$94,$E2,$94,$E2; 0x4f0e $8EFE E2 00 99 E2 94 E2 94 E2  ;
.byt    $94,$E2,$94,$E2,$D5,$0E,$1C,$A0; 0x4f16 $8F06 94 E2 94 E2 D5 0E 1C A0  ;
.byt    $06,$48,$00,$37,$D4,$04,$20,$D4; 0x4f1e $8F0E 06 48 00 37 D4 04 20 D4  ;
.byt    $21,$D4,$D1,$02,$20,$D6,$21,$D6; 0x4f26 $8F16 21 D4 D1 02 20 D6 21 D6  ;
.byt    $D1,$08,$76,$53,$D4,$0E,$D4,$80; 0x4f2e $8F1E D1 08 76 53 D4 0E D4 80  ;
.byt    $D4,$0F                        ; 0x4f36 $8F26 D4 0F                    ;
bank1_Area_Data__West_Hyrule_Bubble_Path:                                       ;
.byt    $34,$E0,$F6,$39,$D6,$80,$F0,$21; 0x4f38 $8F28 34 E0 F6 39 D6 80 F0 21  ;
.byt    $D2,$85,$D6,$80,$F0,$21,$D2,$86; 0x4f40 $8F30 D2 85 D6 80 F0 21 D2 86  ;
.byt    $D4,$80,$F0,$21,$D2,$86,$D6,$80; 0x4f48 $8F38 D4 80 F0 21 D2 86 D6 80  ;
.byt    $F0,$21,$D2,$85,$D2,$80,$F0,$21; 0x4f50 $8F40 F0 21 D2 85 D2 80 F0 21  ;
.byt    $D2,$85,$D6,$80,$F0,$21,$D2,$84; 0x4f58 $8F48 D2 85 D6 80 F0 21 D2 84  ;
.byt    $D6,$80,$F0,$21,$D2,$85,$D6,$80; 0x4f60 $8F50 D6 80 F0 21 D2 85 D6 80  ;
.byt    $F0,$21,$D2,$86                ; 0x4f68 $8F58 F0 21 D2 86              ;
bank1_Area_Data__West_Hyrule_Graveyard_Area_near_Kings_Tomb__with_Red_Jar_:     ;
.byt    $13,$60,$F0,$31,$D8,$81,$DA,$82; 0x4f6c $8F5C 13 60 F0 31 D8 81 DA 82  ;
.byt    $8A,$B7,$74,$00,$84,$0F,$11,$DA; 0x4f74 $8F64 8A B7 74 00 84 0F 11 DA  ;
.byt    $81,$DA,$80                    ; 0x4f7c $8F6C 81 DA 80                 ;
bank1_Area_Data__West_Hyrule_Tunnel_South_of_Kings_Tomb:                        ;
.byt    $2E,$E0,$06,$48,$00,$35,$D4,$04; 0x4f7f $8F6F 2E E0 06 48 00 35 D4 04  ;
.byt    $D2,$0A,$90,$E3,$91,$E3,$D1,$0C; 0x4f87 $8F77 D2 0A 90 E3 91 E3 D1 0C  ;
.byt    $D2,$0D,$DC,$80,$D4,$0D,$DA,$00; 0x4f8f $8F7F D2 0D DC 80 D4 0D DA 00  ;
.byt    $D2,$07,$30,$E1,$31,$E1,$31,$E1; 0x4f97 $8F87 D2 07 30 E1 31 E1 31 E1  ;
.byt    $31,$E1,$31,$E1,$31,$E1,$31,$E1; 0x4f9f $8F8F 31 E1 31 E1 31 E1 31 E1  ;
.byt    $31,$E1,$31,$E1,$31,$E1        ; 0x4fa7 $8F97 31 E1 31 E1 31 E1        ;
bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_3__with_Aches_and_Acheman_: ;
.byt    $0E,$E0,$00,$48,$DC,$02,$D4,$00; 0x4fad $8F9D 0E E0 00 48 DC 02 D4 00  ;
.byt    $E2,$00,$D7,$02,$D1,$06        ; 0x4fb5 $8FA5 E2 00 D7 02 D1 06        ;
bank1_Area_Data__West_Hyrule_Random_Battle___Road__North_West_and_South_West_Hyrule_: ;
.byt    $1F,$01,$C2,$11,$94,$90,$94,$91; 0x4fbb $8FAB 1F 01 C2 11 94 90 94 91  ;
.byt    $96,$90,$94,$91                ; 0x4fc3 $8FB3 96 90 94 91              ;
L8FB7:                                                                          ;
.byt    $94,$92,$94,$90,$98,$92,$94,$90; 0x4fc7 $8FB7 94 92 94 90 98 92 94 90  ;
.byt    $94,$91,$92,$0F,$12,$94,$90,$96; 0x4fcf $8FBF 94 91 92 0F 12 94 90 96  ;
.byt    $90,$94,$90                    ; 0x4fd7 $8FC7 90 94 90                 ;
bank1_Area_Data__West_Hyrule_Grotto_with_200_Exp_Bag__dead_end_:                ;
.byt    $13,$E0,$80,$4D,$E1,$00,$A5,$0F; 0x4fda $8FCA 13 E0 80 4D E1 00 A5 0F  ;
.byt    $0C,$D3,$0F,$E2,$00,$D8,$09,$E3; 0x4fe2 $8FD2 0C D3 0F E2 00 D8 09 E3  ;
.byt    $00,$D8,$0E                    ; 0x4fea $8FDA 00 D8 0E                 ;
bank1_Area_Data__West_Hyrule_Grotto_with_Heart_Container__dead_end_:            ;
.byt    $13,$E0,$80,$4D,$E1,$00,$A5,$0F; 0x4fed $8FDD 13 E0 80 4D E1 00 A5 0F  ;
.byt    $0F,$D3,$0F,$E2,$00,$D8,$09,$E3; 0x4ff5 $8FE5 0F D3 0F E2 00 D8 09 E3  ;
.byt    $00,$D8,$0E                    ; 0x4ffd $8FED 00 D8 0E                 ;
bank1_Area_Data__West_Hyrule_Grotto_with_Magic_Container__South_of_North_Castle_: ;
.byt    $2D,$E0,$03,$48,$0A,$3F,$10,$3F; 0x5000 $8FF0 2D E0 03 48 0A 3F 10 3F  ;
.byt    $22,$3D,$30,$3D,$48,$35,$06,$3B; 0x5008 $8FF8 22 3D 30 3D 48 35 06 3B  ;
L9000:                                                                          ;
.byt    $10,$3B,$20,$3B,$30,$37,$40,$37; 0x5010 $9000 10 3B 20 3B 30 37 40 37  ;
.byt    $E2,$00,$DE,$02,$D1,$03,$D2,$02; 0x5018 $9008 E2 00 DE 02 D1 03 D2 02  ;
.byt    $D1,$03,$D2,$02,$D1,$03,$D5,$05; 0x5020 $9010 D1 03 D2 02 D1 03 D5 05  ;
.byt    $51,$0F,$0E,$D3,$0F            ; 0x5028 $9018 51 0F 0E D3 0F           ;
bank1_Area_Data__West_Hyrule_Random_Battle___Forest__South_West_Hyrule_:        ;
.byt    $22,$48,$1E,$62,$D2,$0D,$D4,$0C; 0x502d $901D 22 48 1E 62 D2 0D D4 0C  ;
.byt    $D2,$0B,$D2,$0C,$D2,$0D,$D2,$0E; 0x5035 $9025 D2 0B D2 0C D2 0D D2 0E  ;
.byt    $D2,$0D,$D4,$0E,$D4,$0D,$D2,$0E; 0x503d $902D D2 0D D4 0E D4 0D D2 0E  ;
.byt    $D2,$0D,$D4,$0C,$D2            ; 0x5045 $9035 D2 0D D4 0C D2           ;
L903A:                                                                          ;
.byt    $0B,$D6,$0C,$D4,$0D            ; 0x504a $903A 0B D6 0C D4 0D           ;
bank1_Area_Data__West_Hyrule_Forest_Area_with_no_trees:                         ;
.byt    $0A,$08,$90,$61,$E1,$00,$94,$03; 0x504f $903F 0A 08 90 61 E1 00 94 03  ;
.byt    $98,$03                        ; 0x5057 $9047 98 03                    ;
bank1_Area_Data__West_Hyrule_Grotto_with_Medicine__dead_end_:                   ;
.byt    $13,$E0,$01,$48,$E3,$00,$96,$21; 0x5059 $9049 13 E0 01 48 E3 00 96 21  ;
.byt    $F2,$21,$92,$23,$82,$21,$70,$0F; 0x5061 $9051 F2 21 92 23 82 21 70 0F  ;
.byt    $15,$D2,$0F                    ; 0x5069 $9059 15 D2 0F                 ;
bank1_West_Hyrule_Overworld_Map_Data:                                           ;
.byt    $BB,$DC,$74,$FC,$BC,$14,$CB,$BC; 0x506c $905C BB DC 74 FC BC 14 CB BC  ;
.byt    $24,$2B,$44,$FC,$7C,$34,$FB,$6C; 0x5074 $9064 24 2B 44 FC 7C 34 FB 6C  ;
.byt    $44,$0B,$01,$0B,$54,$FC,$4C,$34; 0x507c $906C 44 0B 01 0B 54 FC 4C 34  ;
.byt    $02,$04,$FB,$2B,$1C,$F4,$04,$FC; 0x5084 $9074 02 04 FB 2B 1C F4 04 FC  ;
.byt    $3C,$54,$FB,$2B,$74,$A4,$FC,$2C; 0x508c $907C 3C 54 FB 2B 74 A4 FC 2C  ;
.byt    $64,$59,$CB,$F4,$34,$FC,$0C,$74; 0x5094 $9084 64 59 CB F4 34 FC 0C 74  ;
.byt    $19,$00,$29,$BB,$F4,$44,$BC,$C4; 0x509c $908C 19 00 29 BB F4 44 BC C4  ;
.byt    $89,$7B,$F4,$64,$7C,$E4,$0C,$99; 0x50a4 $9094 89 7B F4 64 7C E4 0C 99  ;
.byt    $5B,$F4,$74,$6C,$F4,$0C,$59,$1B; 0x50ac $909C 5B F4 74 6C F4 0C 59 1B  ;
.byt    $D9,$F4,$24,$4C,$F4,$04,$0C,$09; 0x50b4 $90A4 D9 F4 24 4C F4 04 0C 09  ;
.byt    $7B,$B6,$59,$54,$55,$14,$3C,$F4; 0x50bc $90AC 7B B6 59 54 55 14 3C F4  ;
.byt    $14,$0C,$09,$7B,$F6,$06,$19,$24; 0x50c4 $90B4 14 0C 09 7B F6 06 19 24  ;
.byt    $95,$1C,$4B,$01,$1B,$B4,$0C,$09; 0x50cc $90BC 95 1C 4B 01 1B B4 0C 09  ;
.byt    $7B,$F6,$16,$19,$04,$65,$06,$25; 0x50d4 $90C4 7B F6 16 19 04 65 06 25  ;
.byt    $CB,$74,$1C,$09,$7B,$F6,$26,$A9; 0x50dc $90CC CB 74 1C 09 7B F6 26 A9  ;
.byt    $15,$FB,$44,$1C,$09,$8B,$56,$B6; 0x50e4 $90D4 15 FB 44 1C 09 8B 56 B6  ;
.byt    $95,$39,$FB,$0B,$24,$1C,$09,$9B; 0x50ec $90DC 95 39 FB 0B 24 1C 09 9B  ;
.byt    $E6,$E5,$49,$36,$9B,$14,$1C,$09; 0x50f4 $90E4 E6 E5 49 36 9B 14 1C 09  ;
.byt    $AB,$B6,$E5,$29,$25,$29,$36,$2B; 0x50fc $90EC AB B6 E5 29 25 29 36 2B  ;
.byt    $01,$3B,$04,$2C,$09,$AB,$35,$66; 0x5104 $90F4 01 3B 04 2C 09 AB 35 66  ;
.byt    $E5,$19,$65,$19,$66,$3B,$04,$2C; 0x510c $90FC E5 19 65 19 66 3B 04 2C  ;
.byt    $09,$AB,$55,$36,$2C,$B5,$19,$85; 0x5114 $9104 09 AB 55 36 2C B5 19 85  ;
.byt    $09,$56,$4B,$04,$2C,$09,$AB,$75; 0x511c $910C 09 56 4B 04 2C 09 AB 75  ;
.byt    $5C,$95,$19,$35,$36,$15,$09,$56; 0x5124 $9114 5C 95 19 35 36 15 09 56  ;
.byt    $4B,$04,$2C,$19,$8B,$75,$8C,$65; 0x512c $911C 4B 04 2C 19 8B 75 8C 65  ;
.byt    $19,$25,$56,$15,$09,$46,$5B,$04; 0x5134 $9124 19 25 56 15 09 46 5B 04  ;
.byt    $2C,$0B,$19,$5B,$85,$3C,$29,$3C; 0x513c $912C 2C 0B 19 5B 85 3C 29 3C  ;
.byt    $45,$19,$25,$56,$15,$19,$36,$5B; 0x5144 $9134 45 19 25 56 15 19 36 5B  ;
.byt    $14,$2C,$0B,$29,$5B,$75,$3C,$09; 0x514c $913C 14 2C 0B 29 5B 75 3C 09  ;
.byt    $02,$A9,$25,$66,$15,$09,$36,$6B; 0x5154 $9144 02 A9 25 66 15 09 36 6B  ;
.byt    $14,$2C,$39,$7B,$55,$3C,$29,$3C; 0x515c $914C 14 2C 39 7B 55 3C 29 3C  ;
.byt    $85,$56,$25,$09,$26,$8B,$09,$2C; 0x5164 $9154 85 56 25 09 26 8B 09 2C  ;
.byt    $39,$8B,$45,$AC,$75,$66,$15,$00; 0x516c $915C 39 8B 45 AC 75 66 15 00  ;
.byt    $09,$16,$9B,$09,$2C,$39,$8B,$55; 0x5174 $9164 09 16 9B 09 2C 39 8B 55  ;
.byt    $8C,$75,$76,$25,$09,$BB,$09,$2C; 0x517c $916C 8C 75 76 25 09 BB 09 2C  ;
.byt    $39,$9B,$55,$3C,$25,$75,$46,$5B; 0x5184 $9174 39 9B 55 3C 25 75 46 5B  ;
.byt    $05,$09,$BB,$19,$1C,$39,$9B,$85; 0x518c $917C 05 09 BB 19 1C 39 9B 85  ;
.byt    $15,$3B,$55,$16,$9B,$0E,$CB,$09; 0x5194 $9184 15 3B 55 16 9B 0E CB 09  ;
.byt    $1C,$0B,$01,$CB,$65,$8B,$25,$CB; 0x519c $918C 1C 0B 01 CB 65 8B 25 CB  ;
.byt    $09,$15,$AB,$19,$0C,$FB,$35,$FB; 0x51a4 $9194 09 15 AB 19 0C FB 35 FB  ;
.byt    $8B,$15,$09,$45,$8B,$09,$0C,$FB; 0x51ac $919C 8B 15 09 45 8B 09 0C FB  ;
.byt    $01,$FB,$9B,$35,$09,$55,$7B,$19; 0x51b4 $91A4 01 FB 9B 35 09 55 7B 19  ;
.byt    $FB,$FB,$8B,$55,$09,$55,$8B,$09; 0x51bc $91AC FB FB 8B 55 09 55 8B 09  ;
.byt    $2B,$01,$CB,$27,$FB,$1B,$01,$1B; 0x51c4 $91B4 2B 01 CB 27 FB 1B 01 1B  ;
.byt    $55,$09,$45,$0E,$01,$7B,$09,$1B; 0x51cc $91BC 55 09 45 0E 01 7B 09 1B  ;
.byt    $35,$3B,$B7,$FB,$85,$09,$55,$6B; 0x51d4 $91C4 35 3B B7 FB 85 09 55 6B  ;
.byt    $26,$0B,$55,$06,$1B,$07,$02,$67; 0x51dc $91CC 26 0B 55 06 1B 07 02 67  ;
.byt    $19,$17,$CB,$A5,$09,$55,$6B,$06; 0x51e4 $91D4 19 17 CB A5 09 55 6B 06  ;
.byt    $05,$06,$35,$47,$1B,$37,$09,$97; 0x51ec $91DC 05 06 35 47 1B 37 09 97  ;
.byt    $7B,$B5,$19,$45,$7B,$26,$15,$67; 0x51f4 $91E4 7B B5 19 45 7B 26 15 67  ;
.byt    $4B,$C7,$29,$D7,$15,$09,$55,$AB; 0x51fc $91EC 4B C7 29 D7 15 09 55 AB  ;
.byt    $15,$57,$8B,$67,$5B,$47,$A7,$09; 0x5204 $91F4 15 57 8B 67 5B 47 A7 09  ;
.byt    $45,$BB,$05,$67,$FB,$7B,$37,$19; 0x520c $91FC 45 BB 05 67 FB 7B 37 19  ;
.byt    $77,$09,$35,$CB,$05,$67,$0B,$01; 0x5214 $9204 77 09 35 CB 05 67 0B 01  ;
.byt    $FB,$6B,$C7,$09,$15,$EB,$05,$77; 0x521c $920C FB 6B C7 09 15 EB 05 77  ;
.byt    $0E,$07,$FB,$4B,$D7,$09,$FB,$0B; 0x5224 $9214 0E 07 FB 4B D7 09 FB 0B  ;
.byt    $05,$B7,$FB,$1B,$97,$4B,$09,$CB; 0x522c $921C 05 B7 FB 1B 97 4B 09 CB  ;
.byt    $24,$0C,$15,$C7,$DB,$97,$6B,$09; 0x5234 $9224 24 0C 15 C7 DB 97 6B 09  ;
.byt    $AB,$44,$0C,$25,$B7,$15,$AB,$A7; 0x523c $922C AB 44 0C 25 B7 15 AB A7  ;
.byt    $6B,$09,$8B,$54,$1C,$35,$A7,$45; 0x5244 $9234 6B 09 8B 54 1C 35 A7 45  ;
.byt    $6B,$16,$87,$6B,$19,$6B,$74,$1C; 0x524c $923C 6B 16 87 6B 19 6B 74 1C  ;
.byt    $25,$A7,$35,$A6,$15,$67,$6B,$09; 0x5254 $9244 25 A7 35 A6 15 67 6B 09  ;
.byt    $4B,$84,$00,$2C,$15,$77,$55,$B6; 0x525c $924C 4B 84 00 2C 15 77 55 B6  ;
.byt    $35,$57,$5B,$19,$2B,$B4,$2C,$15; 0x5264 $9254 35 57 5B 19 2B B4 2C 15  ;
.byt    $37,$85,$B6,$55,$47,$2B,$49,$0E; 0x526c $925C 37 85 B6 55 47 2B 49 0E  ;
.byt    $D9,$03,$1C,$2C,$17,$95,$86,$F9; 0x5274 $9264 D9 03 1C 2C 17 95 86 F9  ;
.byt    $19,$5B,$C4,$2C,$1B,$1C,$B5,$16; 0x527c $926C 19 5B C4 2C 1B 1C B5 16  ;
.byt    $69,$26,$A5,$8B,$D4,$1C,$2B,$1C; 0x5284 $9274 69 26 A5 8B D4 1C 2B 1C  ;
.byt    $B5,$19,$E6,$45,$7B,$E4,$1C,$3B; 0x528c $927C B5 19 E6 45 7B E4 1C 3B  ;
.byt    $2C,$85,$19,$55,$D6,$7B,$F4,$04; 0x5294 $9284 2C 85 19 55 D6 7B F4 04  ;
.byt    $0C,$5B,$9C,$03,$0C,$65,$C6,$7B; 0x529c $928C 0C 5B 9C 03 0C 65 C6 7B  ;
.byt    $F4,$14,$6B,$05,$75,$09,$3C,$45; 0x52a4 $9294 F4 14 6B 05 75 09 3C 45  ;
.byt    $A6,$7B,$19,$A8,$54,$6B,$35,$59; 0x52ac $929C A6 7B 19 A8 54 6B 35 59  ;
.byt    $25,$3C,$15,$A6,$6B,$19,$B8,$54; 0x52b4 $92A4 25 3C 15 A6 6B 19 B8 54  ;
.byt    $7B,$15,$19,$A5,$2C,$96,$6B,$19; 0x52bc $92AC 7B 15 19 A5 2C 96 6B 19  ;
.byt    $C8,$54,$8B,$19,$85,$06,$35,$1C; 0x52c4 $92B4 C8 54 8B 19 85 06 35 1C  ;
.byt    $36,$44,$4B,$29,$D8,$34,$1C,$7B; 0x52cc $92BC 36 44 4B 29 D8 34 1C 7B  ;
.byt    $19,$F5,$03,$54,$06,$04,$4B,$19; 0x52d4 $92C4 19 F5 03 54 06 04 4B 19  ;
.byt    $68,$29,$58,$24,$2C,$7B,$09,$E5; 0x52dc $92CC 68 29 58 24 2C 7B 09 E5  ;
.byt    $7C,$24,$3B,$04,$09,$78,$09,$08; 0x52e4 $92D4 7C 24 3B 04 09 78 09 08  ;
.byt    $09,$58,$24,$2C,$7C,$00,$85,$FC; 0x52ec $92DC 09 58 24 2C 7C 00 85 FC  ;
.byt    $0C,$2B,$14,$09,$78,$29,$58,$14; 0x52f4 $92E4 0C 2B 14 09 78 29 58 14  ;
.byt    $3C,$6B,$FC,$BC,$44,$09,$F8,$08; 0x52fc $92EC 3C 6B FC BC 44 09 F8 08  ;
.byt    $04,$4C,$7B,$00,$39,$3C,$2B,$FC; 0x5304 $92F4 04 4C 7B 00 39 3C 2B FC  ;
.byt    $34,$09,$F8,$08,$5C,$7B,$79,$3B; 0x530c $92FC 34 09 F8 08 5C 7B 79 3B  ;
.byt    $34,$BC,$34,$09,$F8,$6C,$7B,$79; 0x5314 $9304 34 BC 34 09 F8 6C 7B 79  ;
.byt    $2B,$54,$AC,$34,$09,$E8,$7C,$8B; 0x531c $930C 2B 54 AC 34 09 E8 7C 8B  ;
.byt    $59,$4B,$44,$AC,$34,$09,$D8,$8C; 0x5324 $9314 59 4B 44 AC 34 09 D8 8C  ;
.byt    $9B,$01,$AB,$34,$9C,$24,$19,$D8; 0x532c $931C 9B 01 AB 34 9C 24 19 D8  ;
.byt    $2C,$24,$2C,$FB,$4B,$01,$34,$8C; 0x5334 $9324 2C 24 2C FB 4B 01 34 8C  ;
.byt    $24,$19,$04,$C8,$2C,$44,$1C,$FB; 0x533c $932C 24 19 04 C8 2C 44 1C FB  ;
.byt    $6B,$24,$83,$39,$14,$B8,$2C,$14; 0x5344 $9334 6B 24 83 39 14 B8 2C 14  ;
.byt    $2B,$14,$0C,$FB,$9B,$8C,$54,$A8; 0x534c $933C 2B 14 0C FB 9B 8C 54 A8  ;
.byt    $3C,$04,$02,$2B,$24,$FB,$9B,$8C; 0x5354 $9344 3C 04 02 2B 24 FB 9B 8C  ;
.byt    $54,$88,$5C,$04,$4B,$14,$FB,$9B; 0x535c $934C 54 88 5C 04 4B 14 FB 9B  ;
.byt    $9C,$44,$78,$6C,$04,$4B,$14,$FB; 0x5364 $9354 9C 44 78 6C 04 4B 14 FB  ;
.byt    $9B,$9C,$44,$68,$7C,$5B,$14,$FB; 0x536c $935C 9B 9C 44 68 7C 5B 14 FB  ;
.byt    $8B,$BC,$34,$48,$AC,$1B,$01,$24; 0x5374 $9364 8B BC 34 48 AC 1B 01 24  ;
.byt    $0C,$FB,$8B,$CC,$24,$38,$CC,$4B; 0x537c $936C 0C FB 8B CC 24 38 CC 4B  ;
.byt    $0C,$FB,$7B,$EC,$14,$18,$FC,$2B; 0x5384 $9374 0C FB 7B EC 14 18 FC 2B  ;
.byt    $1C                            ; 0x538c $937C 1C                       ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_North_Castle_Curtains_Top:         ;
.byt    $84,$84,$86,$86                ; 0x538d $937D 84 84 86 86              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_North_Castle_Curtains_Bottom:      ;
.byt    $84,$85,$86,$87                ; 0x5391 $9381 84 85 86 87              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Cloud_Left:                        ;
.byt    $B3,$B4,$B5,$B6                ; 0x5395 $9385 B3 B4 B5 B6              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Long_Cloud_Right:                  ;
.byt    $B5,$B6,$B7,$B8                ; 0x5399 $9389 B5 B6 B7 B8              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Short_Cloud_Right:                 ;
.byt    $B7,$B8,$F4,$F4                ; 0x539d $938D B7 B8 F4 F4              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Gravestone:                        ;
.byt    $AF,$B0,$B1,$B2                ; 0x53a1 $9391 AF B0 B1 B2              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Cross:                             ;
.byt    $AD,$AE,$F4,$F4                ; 0x53a5 $9395 AD AE F4 F4              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Slanted_Cross:                     ;
.byt    $AB,$AC,$F4,$F4                ; 0x53a9 $9399 AB AC F4 F4              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_unknown0:                          ;
.byt    $FE,$FE,$FE,$FE                ; 0x53ad $939D FE FE FE FE              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_North_Castle_Floor:                ;
.byt    $7E,$7E,$7E,$7E                ; 0x53b1 $93A1 7E 7E 7E 7E              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_unknown1:                          ;
.byt    $BA,$BB,$BC,$BD                ; 0x53b5 $93A5 BA BB BC BD              ;
bank1_table2:                                                                   ;
.byt    $52,$8F,$C9                    ; 0x53b9 $93A9 52 8F C9                 ;
; ---------------------------------------------------------------------------- ;
bank1_code8:                                                                    ;
    ASL                                ; 0x53bc $93AC 0A                       ;
    TAY                                ; 0x53bd $93AD A8                       ;
    LDA      $6000,y                   ; 0x53be $93AE B9 00 60                 ;
    STA      L000E                     ; 0x53c1 $93B1 85 0E                    ;
    LDA      $6001,y                   ; 0x53c3 $93B3 B9 01 60                 ;
    STA      $0F                       ; 0x53c6 $93B6 85 0F                    ;
    LDY      #$00                      ; 0x53c8 $93B8 A0 00                    ; Y = 00
    RTS                                ; 0x53ca $93BA 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_UNUSED_93BB:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x53cb $93BB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x53d3 $93C3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x53db $93CB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x53e3 $93D3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x53eb $93DB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x53f3 $93E3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x53fb $93EB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5403 $93F3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0x540b $93FB FF FF FF FF FF           ;
; ---------------------------------------------------------------------------- ;
bank1_pointer_table:                                                            ;
.word    bank1_Various_Projectiles     ; 0x5410 $9400 39 96                    ;
.word    L9647                         ; 0x5412 $9402 47 96                    ;
.word    L965A                         ; 0x5414 $9404 5A 96                    ;
.word    L9634                         ; 0x5416 $9406 34 96                    ;
.word    L963E                         ; 0x5418 $9408 3E 96                    ;
.word    bank1_code11                  ; 0x541a $940A 64 96                    ;
.word    bank1_Various_Projectiles     ; 0x541c $940C 39 96                    ;
; ---------------------------------------------------------------------------- ;
bank1_table3:                                                                   ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x541e $940E 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00                    ; 0x5426 $9416 00 00 00                 ;
bank1_table4:                                                                   ;
.byt    $80,$41,$81,$49,$42,$93,$00,$00; 0x5429 $9419 80 41 81 49 42 93 00 00  ;Has something to do with projectiles collision test and shield absorption
bank1_Enemy_Hit_Points:                                                         ;
.byt    $00,$00,$00,$03,$03,$03,$08,$03; 0x5431 $9421 00 00 00 03 03 03 08 03  ;
.byt    $00,$00,$08,$02,$02,$03,$04,$03; 0x5439 $9429 00 00 08 02 02 03 04 03  ;
.byt    $03,$04,$04,$00,$04,$0C,$12,$12; 0x5441 $9431 03 04 04 00 04 0C 12 12  ;
.byt    $18,$0C,$0E,$12,$04,$03,$03,$04; 0x5449 $9439 18 0C 0E 12 04 03 03 04  ;
.byt    $08,$00,$02,$00                ; 0x5451 $9441 08 00 02 00              ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_pointers:                                             ;
.word    bank1_RTS                     ; 0x5455 $9445 AD 95                    ;Fairy			(00)
.word    bank1_Enemy_Init_Routines_Red_Jar; 0x5457 $9447 20 96                 ;Red Jar			(01)
.word    bank1_RTS                     ; 0x5459 $9449 AD 95                    ;Locked Door		(02)
.word    bank1_RTS                     ; 0x545b $944B AD 95                    ;Myu			(03)
.word    bank1_RTS                     ; 0x545d $944D AD 95                    ;Bot			(04)
.word    bank1_RTS                     ; 0x545f $944F AD 95                    ;Bit			(05)
.word    bank1_RTS                     ; 0x5461 $9451 AD 95                    ;Moa			(06)
.word    bank1_RTS                     ; 0x5463 $9453 AD 95                    ;Ache			(07)
.word    bank1_RTS                     ; 0x5465 $9455 AD 95                    ;?			(08)
.word    bank1_RTS                     ; 0x5467 $9457 AD 95                    ;?			(09)
.word    bank1_RTS                     ; 0x5469 $9459 AD 95                    ;Acheman			(0A)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x546b $945B 4E 98;Bubble Generator	(0B)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x546d $945D 4E 98;Rock Generator		(0C)
.word    bank1_Enemy_Init_Routines_Red_Blue_Deeler; 0x546f $945F 25 96         ;Red Deeler		(0D)
.word    bank1_Enemy_Init_Routines_Red_Blue_Deeler; 0x5471 $9461 25 96         ;Blue Deeler		(0E)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x5473 $9463 4E 98;Bago Bago Generator	(0F)
.word    bank1_RTS                     ; 0x5475 $9465 AD 95                    ;Bago Bago		(10)
.word    bank1_RTS                     ; 0x5477 $9467 AD 95                    ;Red Octorok - Jumping	(11)
.word    bank1_RTS                     ; 0x5479 $9469 AD 95                    ;Red Octorok - Moving	(12)
.word    bank1_RTS                     ; 0x547b $946B AD 95                    ;Elevator		(13)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x547d $946D 31 96     ;Moblin - Orange		(14)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x547f $946F 31 96     ;Moblin - Red		(15)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5481 $9471 31 96     ;Moblin - Blue		(16)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5483 $9473 31 96     ;Daira - Orange		(17)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5485 $9475 31 96     ;Daira - Red		(18)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5487 $9477 31 96     ;Goriya - Orange		(19)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5489 $9479 31 96     ;Goriya - Red		(1A)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x548b $947B 31 96     ;Goriya - Blue		(1B)
.word    bank1_RTS                     ; 0x548d $947D AD 95                    ;Lowder			(1C)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x548f $947F 4E 98;Moby Generator		(1D)
.word    bank1_RTS                     ; 0x5491 $9481 AD 95                    ;Moby			(1E)
.word    bank1_RTS                     ; 0x5493 $9483 AD 95                    ;Megmat			(1F)
.word    bank1_Enemy_Init_Routines_Geldarm; 0x5495 $9485 6C 98                 ;Geldarm			(20)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x5497 $9487 4E 98;Dumb Moblin Generator	(21)
.word    bank1_RTS                     ; 0x5499 $9489 AD 95                    ;Dumb Moblin		(22)
.word    L0000                         ; 0x549b $948B 00 00                    ;?			(23)
bank1_Pointer_table_for_Enemy_Routines1:                                        ;
.word    bank7_Enemy_Routines1_Fairy   ; 0x549d $948D 1E D9                    ;Fairy
.word    bank7_Enemy_Routines1_Red_Jar ; 0x549f $948F 59 D9                    ;Red Jar
.word    bank7_Enemy_Routines1_Locked_Door; 0x54a1 $9491 91 D9                 ;Locked Door
.word    bank7_Enemy_Routines1_Myu     ; 0x54a3 $9493 47 DA                    ;Myu
.word    bank7_Enemy_Routines1_Bot     ; 0x54a5 $9495 0C DA                    ;Bot
.word    bank7_Enemy_Routines1_Bit     ; 0x54a7 $9497 2B DA                    ;Bit
.word    bank7_Enemy_Routines1_Moa     ; 0x54a9 $9499 CF DA                    ;Moa
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0x54ab $949B 53 DB            ;Ache
.word    bank1_Enemy_Routines1_unknown0; 0x54ad $949D 98 AB                    ;?
.word    bank1_Enemy_Routines1_unknown1; 0x54af $949F E9 AB                    ;?
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0x54b1 $94A1 53 DB            ;Acheman
.word    bank7_Enemy_Routines1_Raising_Bubbles; 0x54b3 $94A3 15 DC             ;Raising Bubbles
.word    bank7_Desert_Rocks_initialization_routine; 0x54b5 $94A5 4F DC         ;Desert Rocks
.word    bank7_Enemy_Routines1_Deeler  ; 0x54b7 $94A7 DF D6                    ;Deeler
.word    bank7_Enemy_Routines1_Deeler  ; 0x54b9 $94A9 DF D6                    ;Deeler
.word    bank7_Enemy_Routines1_Bago_Bago_Generator; 0x54bb $94AB 8F D7         ;Bago Bago Generator
.word    bank7_Enemy_Routines1_Bago_Bago0; 0x54bd $94AD E1 D7                  ;Bago Bago
.word    bank7_Enemy_Routines1_Bago_Bago1; 0x54bf $94AF 42 D8                  ;Bago Bago
.word    bank7_Enemy_Routines1_Octorok ; 0x54c1 $94B1 88 D8                    ;Octorok
.word    bank7_Enemy_Routines1_Elevator; 0x54c3 $94B3 C2 D8                    ;Elevator
.word    bank1_Enemy_Routines1_Goriya  ; 0x54c5 $94B5 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Goriya  ; 0x54c7 $94B7 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Goriya  ; 0x54c9 $94B9 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Daira   ; 0x54cb $94BB 15 9A                    ;Daira
.word    bank1_Enemy_Routines1_Daira   ; 0x54cd $94BD 15 9A                    ;Daira
.word    bank1_Enemy_Routines1_Goriya  ; 0x54cf $94BF 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Goriya  ; 0x54d1 $94C1 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Goriya  ; 0x54d3 $94C3 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Lowder  ; 0x54d5 $94C5 C3 98                    ;Lowder
.word    bank1_Enemy_Routines1_Generators; 0x54d7 $94C7 31 9B                  ;Generators
.word    bank1_Enemy_Routines1_Moby    ; 0x54d9 $94C9 94 9B                    ;Moby
.word    bank1_Enemy_Routines1_Megmat  ; 0x54db $94CB 7E 98                    ;Megmat
.word    bank1_Enemy_Routines1_Geldarm ; 0x54dd $94CD B5 9B                    ;Geldarm
.word    bank1_Enemy_Routines1_Dumb_Moblin_Generator; 0x54df $94CF 2F 99       ;Dumb Moblin Generator
.word    bank1_Enemy_Routines1_Dumb_Moblin; 0x54e1 $94D1 4F 99                 ;Dumb Moblin
.word    L0000                         ; 0x54e3 $94D3 00 00                    ;?
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Attributes:                                                         ;
;Enemy Attributes (Palette, Experience Code, etc.) (24 bytes)                  ;
;                                                                              ;
;xx.. ....	Palette Code (0-3)                                                  ;
;..x. ....	No Damage from Sword (needs Fire)                                   ;
;...x ....	Steals Experience Points                                            ;
;.... xxxx	Experience Code (0-F)                                               ;
;                                                                              ;
;40	.x.. ....	Fairy                                                            ;
;40	.x.. ....	Red Jar (or Exp. Bag or Magic/Heart Container)                   ;
;40	.x.. ....	Locked Door                                                      ;
;C2	xx.. ..x.	Myu                                                              ;
;C1	xx.. ...x	Bot                                                              ;
;81	x... ...x	Bit                                                              ;
;94	x..x .x..	Moa                                                              ;
;C2	xx.. ..x.	Ache                                                             ;
;80	x... ....	?                                                                ;
;90	x..x ....	?                                                                ;
;84	x... .x..	Acheman                                                          ;
;10	...x ....	Bubble Generator                                                 ;
;10	...x ....	Rock Generator                                                   ;
;81	x... ...x	Red Deeler                                                       ;
;C2	xx.. ..x.	Blue Deeler                                                      ;
;02	.... ..x.	Bago Bago Generator                                              ;
;92	x..x ..x.	Bago Bago                                                        ;
;84	x... .x..	Red Octorok - Jumping                                            ;
;84	x... .x..	Red Octorok - Moving                                             ;
;40	.x.. ....	Elevator                                                         ;
;44	.x.. .x..	Moblin - Orange                                                  ;
;85	x... .x.x	Moblin - Red                                                     ;
;C5	xx.. .x.x	Moblin - Blue                                                    ;
;48	.x.. x...	Daira - Orange                                                   ;
;89	x... x..x	Daira - Red                                                      ;
;45	.x.. .x.x	Goriya - Orange                                                  ;
;85	x... .x.x	Goriya - Red                                                     ;
;C6	xx.. .xx.	Goriya - Blue                                                    ;
;C2	xx.. ..x.	Lowder                                                           ;
;00	.... ....	Moby Generator                                                   ;
;51	.x.x ...x	Moby                                                             ;
;C3	xx.. ..xx	Megmat                                                           ;
;83	x... ..xx	Geldarm                                                          ;
;00	.... ....	Dumb Moblin Generator                                            ;
;50	.x.x ....	Dumb Moblin                                                      ;
;02	.... ..x.	?                                                                ;
.byt    $40,$40,$40,$C2,$C1,$81,$94,$C2; 0x54e5 $94D5 40 40 40 C2 C1 81 94 C2  ;
.byt    $80,$90,$84,$10,$10,$81,$C2,$02; 0x54ed $94DD 80 90 84 10 10 81 C2 02  ;
.byt    $92,$84,$84,$40,$44,$85,$C5,$48; 0x54f5 $94E5 92 84 84 40 44 85 C5 48  ;
.byt    $89,$45,$85,$C6,$C2,$00,$51,$C3; 0x54fd $94ED 89 45 85 C6 C2 00 51 C3  ;
.byt    $83,$00,$50,$02                ; 0x5505 $94F5 83 00 50 02              ;
bank1_Enemy_Vulnerability_Damage_Codes:                                         ;
;xx.. ....	Strength Code (0 = gives no items, 1 = weak, 2 = strong)            ;
;..x. ....	Immune to Flying Blade and Fire                                     ;
;...x ....	?                                                                   ;
;.... xxxx	Damage Code                                                         ;
;                                                                              ;
;30	..xx ....	Fairy                                                            ;
;30	..xx ....	Red Jar                                                          ;
;30	..xx ....	Locked Door                                                      ;
;41	.x.. ...x	Myu                                                              ;
;40	.x.. ....	Bot                                                              ;
;40	.x.. ....	Bit                                                              ;
;42	.x.. ..x.	Moa                                                              ;
;40	.x.. ....	Ache                                                             ;
;31	..xx ...x	?                                                                ;
;31	..xx ...x	?                                                                ;
;42	.x.. ..x.	Acheman                                                          ;
;30	..xx ....	Bubble Generator                                                 ;
;30	..xx ....	Rock Generator                                                   ;
;40	.x.. ....	Red Deeler                                                       ;
;40	.x.. ....	Blue Deeler                                                      ;
;31	..xx ...x	Bago Bago Generator                                              ;
;41	.x.. ...x	Bago Bago                                                        ;
;41	.x.. ...x	Red Octorok - Jumping                                            ;
;41	.x.. ...x	Red Octorok - Moving                                             ;
;30	..xx ....	Elevator                                                         ;
;41	.x.. ...x	Moblin - Orange                                                  ;
;41	.x.. ...x	Moblin - Red                                                     ;
;41	.x.. ...x	Moblin - Blue                                                    ;
;A2	x.x. ..x.	Daira - Orange                                                   ;
;A2	x.x. ..x.	Daira - Red                                                      ;
;61	.xx. ...x	Goriya - Orange                                                  ;
;61	.xx. ...x	Goriya - Red                                                     ;
;A1	x.x. ...x	Goriya - Blue                                                    ;
;40	.x.. ....	Lowder                                                           ;
;30	..xx ....	Moby Generator                                                   ;
;00	.... ....	Moby                                                             ;
;41	.x.. ...x	Megmat                                                           ;
;51	.x.x ...x	Geldarm                                                          ;
;30	..xx ....	Dumb Moblin Generator                                            ;
;40	.x.. ....	Dumb Moblin                                                      ;
;00	.... ....	?                                                                ;
.byt    $30,$30,$30,$41,$40,$40,$42,$40; 0x5509 $94F9 30 30 30 41 40 40 42 40  ;
.byt    $31,$31,$42,$30,$30,$40,$40,$31; 0x5511 $9501 31 31 42 30 30 40 40 31  ;
.byt    $41,$41,$41,$30,$41,$41,$41,$A2; 0x5519 $9509 41 41 41 30 41 41 41 A2  ;
.byt    $A2,$61,$61,$A1,$40,$30,$00,$41; 0x5521 $9511 A2 61 61 A1 40 30 00 41  ;
.byt    $51,$30,$40,$00                ; 0x5529 $9519 51 30 40 00              ;
bank1_Enemy_Size_Codes:                                                         ;
;00	Moblin Generator                                                           ;
;01	4-Tile Enemies                                                             ;
;02	Myu                                                                        ;
;03	Elevator                                                                   ;
;04	Locked Door                                                                ;
;0F	Fairy, Red Jar (Flying Sword and Fire go through)                          ;
;80	8-Tile Enemies (Moblin, Goriya, Daira, Acheman)                            ;
;85	Geldarm                                                                    ;
.byt    $0F,$0F,$04,$02,$01,$01,$01,$01; 0x552d $951D 0F 0F 04 02 01 01 01 01  ;
.byt    $01,$01,$80,$01,$01,$01,$01,$01; 0x5535 $9525 01 01 80 01 01 01 01 01  ;
.byt    $01,$01,$01,$03,$80,$80,$80,$80; 0x553d $952D 01 01 01 03 80 80 80 80  ;
.byt    $80,$80,$80,$80,$01,$01,$01,$01; 0x5545 $9535 80 80 80 80 01 01 01 01  ;
.byt    $85,$00,$80,$05                ; 0x554d $953D 85 00 80 05              ;
bank1_Other_Enemy_Attributes:                                                   ;
;x... ....	Immune to Thunder Spell                                             ;
;.x.. ....	Regenerates                                                         ;
;..x. ....	?                                                                   ;
;...x ....	Not hittable with sword                                             ;
;.... xxxx	?                                                                   ;
;                                                                              ;
;96	x..x .xx.	Fairy                                                            ;
;86	x... .xx.	Red Jar                                                          ;
;96	x..x .xx.	Locked Door                                                      ;
;46	.x.. .xx.	Myu                                                              ;
;46	.x.. .xx.	Bot                                                              ;
;46	.x.. .xx.	Bit                                                              ;
;06	.... .xx.	Moa                                                              ;
;40	.x.. ....	Ache                                                             ;
;96	x..x .xx.	?                                                                ;
;06	.... .xx.	?                                                                ;
;40	.x.. ....	Acheman                                                          ;
;90	x..x ....	Bubble Generator                                                 ;
;90	x..x ....	Rock Generator                                                   ;
;06	.... .xx.	Deeler - Red                                                     ;
;06	.... .xx.	Deeler - Blue                                                    ;
;90	x..x ....	Bago Bago Generator                                              ;
;06	.... .xx.	Bago Bago                                                        ;
;06	.... .xx.	Red Octorok - Jumping                                            ;
;06	.... .xx.	Red Octorok - Moving                                             ;
;90	x..x ....	Elevator                                                         ;
;00	.... ....	Moblin - Orange                                                  ;
;00	.... ....	Moblin - Red                                                     ;
;00	.... ....	Moblin - Blue                                                    ;
;00	.... ....	Daira - Orange                                                   ;
;00	.... ....	Daira - Red                                                      ;
;00	.... ....	Goriya - Orange                                                  ;
;00	.... ....	Goriya - Red                                                     ;
;00	.... ....	Goriya - Blue                                                    ;
;06	.... .xx.	Lowder                                                           ;
;96	x..x .xx.	Moby Generator                                                   ;
;06	.... .xx.	Moby                                                             ;
;06	.... .xx.	Megmat                                                           ;
;00	.... ....	Geldarm                                                          ;
;00	.... ....	Dumb Moblin Generator                                            ;
;00	.... ....	Dumb Moblin                                                      ;
;00	.... ....	?                                                                ;
.byt    $96,$86,$96,$46,$46,$46,$06,$40; 0x5551 $9541 96 86 96 46 46 46 06 40  ;
.byt    $96,$06,$40,$90,$90,$06,$06,$90; 0x5559 $9549 96 06 40 90 90 06 06 90  ;
.byt    $06,$06,$06,$90,$00,$00,$00,$00; 0x5561 $9551 06 06 06 90 00 00 00 00  ;
.byt    $00,$00,$00,$00,$06,$96,$06,$06; 0x5569 $9559 00 00 00 00 06 96 06 06  ;
.byt    $00,$00,$00,$00                ; 0x5571 $9561 00 00 00 00              ;
; ---------------------------------------------------------------------------- ;
bank1_Pointer_table_for_Enemy_Routines2:                                        ;
.word    bank7_Enemy_Routines2_Fairy   ; 0x5575 $9565 DD F0                    ;Fairy		00
.word    bank7_Enemy_Routines2_RedJar  ; 0x5577 $9567 12 F1                    ;Red Jar		01
.word    bank7_Enemy_Routines2_LockedDoor; 0x5579 $9569 3A F1                  ;Locked Door	02
.word    bank7_Enemy_Routines2_Myu     ; 0x557b $956B C2 EF                    ;Myu		03
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x557d $956D 91 EF                 ;Bot		04
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x557f $956F 91 EF                 ;Bit		05
.word    bank7_Enemy_Routines2_Moa     ; 0x5581 $9571 F2 EF                    ;Moa		06
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0x5583 $9573 7E F1            ;Ache		07
.word    bank7_Enemy_Routines2_unknown ; 0x5585 $9575 D2 EF                    ;?		08
.word    bank7_Enemy_Routines2_unknown ; 0x5587 $9577 D2 EF                    ;?		09
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0x5589 $9579 7E F1            ;Acheman		0A
.word    L0000                         ; 0x558b $957B 00 00                    ;Bubble generator 0B
.word    L0000                         ; 0x558d $957D 00 00                    ;Rock generator	0C
.word    bank7_Enemy_Routines2_Deeler  ; 0x558f $957F 27 F0                    ;Leeder		0D
.word    bank7_Enemy_Routines2_Deeler  ; 0x5591 $9581 27 F0                    ;Leeder		0E
.word    bank1_RTS                     ; 0x5593 $9583 AD 95                    ;Bago Bago Gen.	0F
.word    bank7_Enemy_Routines2_BagoBago; 0x5595 $9585 B9 F0                    ;Bago Bago	10
.word    bank7_Enemy_Routines2_Octorok ; 0x5597 $9587 A8 F0                    ;Octorok		11
.word    bank7_Enemy_Routines2_Octorok ; 0x5599 $9589 A8 F0                    ;Octorok		12
.word    bank7_Enemy_Routines2_Elevator; 0x559b $958B 47 EF                    ;Elevator	13
.word    bank1_Enemy_Routines2_Moblin  ; 0x559d $958D A4 9C                    ;Moblin (Orange)	14
.word    bank1_Enemy_Routines2_Moblin  ; 0x559f $958F A4 9C                    ;Moblin (Red)	15
.word    bank1_Enemy_Routines2_Moblin  ; 0x55a1 $9591 A4 9C                    ;Moblin (Blue)	16
.word    bank1_Enemy_Routines2_Daira_Orange; 0x55a3 $9593 65 9D                ;Daira (Orange)	17
.word    bank1_Enemy_Routines2_Daira_Red_; 0x55a5 $9595 69 9D                  ;Daira (Red)	18
.word    bank1_Enemy_Routines2_Goriya  ; 0x55a7 $9597 6F 9C                    ;Goriya (Orange)	19
.word    bank1_Enemy_Routines2_Goriya  ; 0x55a9 $9599 6F 9C                    ;Goriya (Red)	1A
.word    bank1_Enemy_Routines2_Goriya  ; 0x55ab $959B 6F 9C                    ;Goriya (Blue)	1B
.word    bank1_Enemy_Routines2_Lowder  ; 0x55ad $959D F1 9D                    ;Lowder		1C
.word    bank1_RTS                     ; 0x55af $959F AD 95                    ;Moby Generator	1D
.word    bank1_Enemy_Routines2_Moby    ; 0x55b1 $95A1 F6 9D                    ;Moby		1E
.word    bank1_Enemy_Routines2_Megmat  ; 0x55b3 $95A3 FB 9D                    ;Megmat		1F
.word    bank1_Geldarm_body_tiles_layout; 0x55b5 $95A5 0C 9E                   ;Geldarm		20
.word    bank1_RTS                     ; 0x55b7 $95A7 AD 95                    ;Dumb Moblin Generator 21
.word    bank1_Enemy_Routines2_DumbMoblin; 0x55b9 $95A9 43 9C                  ;Dumb Moblin	22
.word    L0000                         ; 0x55bb $95AB 00 00                    ;?		23
; ---------------------------------------------------------------------------- ;
bank1_RTS:                                                                      ;
    RTS                                ; 0x55bd $95AD 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table5:                                                                   ;
.byt    $AE,$AA,$AE,$84,$00,$0D,$F6,$00; 0x55be $95AE AE AA AE 84 00 0D F6 00  ;
.byt    $00                            ; 0x55c6 $95B6 00                       ;
bank1_Desert_Rocks_palette_sequence__offset_minus1:                             ;
.byt    $02,$01,$02,$01,$03,$01,$01    ; 0x55c7 $95B7 02 01 02 01 03 01 01     ;
bank1_table_padding_maybe:                                                      ;
.byt    $00,$00,$00,$00                ; 0x55ce $95BE 00 00 00 00              ;Padding ? (4 bytes)
; ---------------------------------------------------------------------------- ;
bank1_Pointer_Table_for_Projectiles_Routines:                                   ;
.word    Projectiles_Routines_Desert_Rock; 0x55d2 $95C2 59 97                  ;Desert Rock
.word    Projectiles_Routines_Raising_Bubble; 0x55d4 $95C4 7B 97               ;Raising Bubble
.word    Projectiles_Routines_Octorok_Rock_or_Flame; 0x55d6 $95C6 6D 97        ;Octorok Rock / Flame
.word    Projectiles_Routines_Octorok_Rock_or_Flame; 0x55d8 $95C8 6D 97        ;Octorok Rock / Flame
.word    Projectiles_Routines_Moblin_Spear; 0x55da $95CA 89 97                 ;
.word    Projectiles_Routines_Boomerang; 0x55dc $95CC A9 97                    ;
.word    Projectiles_Routines_Red_Daria_Axe; 0x55de $95CE C0 97                ;
.word    bank1_RTS                     ; 0x55e0 $95D0 AD 95                    ;
.word    bank1_RTS                     ; 0x55e2 $95D2 AD 95                    ;
; ---------------------------------------------------------------------------- ;
bank1_Various_Tile_Mappings_Goriya_Walking_Frame1:                              ;
.byt    $01,$03,$EA,$EC                ; 0x55e4 $95D4 01 03 EA EC              ;
bank1_Various_Tile_Mappings_Goriya_Walking_Frame2:                              ;
.byt    $05,$07,$F2,$F4                ; 0x55e8 $95D8 05 07 F2 F4              ;
bank1_Various_Tile_Mappings_Goriya_Throwing_Low:                                ;
.byt    $01,$03,$EA,$0B                ; 0x55ec $95DC 01 03 EA 0B              ;
bank1_Various_Tile_Mappings_Goriya_Throwing_High:                               ;
.byt    $05,$09,$F2,$F4                ; 0x55f0 $95E0 05 09 F2 F4              ;
bank1_Various_Tile_Mappings_Daira_Axe_Back_Swing:                               ;
.byt    $F6,$F8                        ; 0x55f4 $95E4 F6 F8                    ;
bank1_Various_Tile_Mappings_Daira_Axe_Swing_Frame_1:                            ;
.byt    $F6,$F8                        ; 0x55f6 $95E6 F6 F8                    ;
bank1_Various_Tile_Mappings_Daira_Axe_Swing_Frame_2_Orange_only:                ;
.byt    $FA,$F5                        ; 0x55f8 $95E8 FA F5                    ;
bank1_Various_Tile_Mappings_Goriya_Walking_Frame_1:                             ;
.byt    $E6,$E8,$EA,$EC                ; 0x55fa $95EA E6 E8 EA EC              ;
bank1_Various_Tile_Mappings_Goriya_Walking_Frame_2:                             ;
.byt    $EE,$F0,$F2,$F4                ; 0x55fe $95EE EE F0 F2 F4              ;
bank1_Various_Tile_Mappings_Moblin_Walking_Frame_1:                             ;
.byt    $0F,$11,$17,$19                ; 0x5602 $95F2 0F 11 17 19              ;
bank1_Various_Tile_Mappings_Moblin_Walking_Frame_2_Head:                        ;
.byt    $25,$27,$0F,$11                ; 0x5606 $95F6 25 27 0F 11              ;
bank1_Various_Tile_Mappings_Moblin_Walking_Frame_2_Feet:                        ;
.byt    $13,$15,$25,$27                ; 0x560a $95FA 13 15 25 27              ;
bank1_Various_Tile_Mappings_Moblin_Before_Throw:                                ;
.byt    $1B,$1D,$1F,$21                ; 0x560e $95FE 1B 1D 1F 21              ;
bank1_Various_Tile_Mappings_Moblin_Spear_Before_Throw:                          ;
.byt    $25,$27,$1B,$23                ; 0x5612 $9602 25 27 1B 23              ;
bank1_Various_Tile_Mappings_Stabbing_Spear_Tip_Dumb_Moblin__Red_Moblin:         ;
.byt    $1F,$21,$25,$27                ; 0x5616 $9606 1F 21 25 27              ;
bank1_Various_Tile_Mappings_Dumb_Moblin_Walking_Frame_1_Feet:                   ;
.byt    $1B,$23,$1F,$21                ; 0x561a $960A 1B 23 1F 21              ;
bank1_Various_Tile_Mappings_Generators_maybe:                                   ;
.byt    $F5,$F5                        ; 0x561e $960E F5 F5                    ;
bank1_Various_Tile_Mappings_Lowder_Frame_1:                                     ;
.byt    $DE,$E0                        ; 0x5620 $9610 DE E0                    ;
bank1_Various_Tile_Mappings_Lowder_Frame_2:                                     ;
.byt    $E2,$E0                        ; 0x5622 $9612 E2 E0                    ;
bank1_Various_Tile_Mappings_Megmat_Frame_1:                                     ;
.byt    $D6,$D8                        ; 0x5624 $9614 D6 D8                    ;
bank1_Various_Tile_Mappings_Megmat_Frame_2:                                     ;
.byt    $DA,$DC                        ; 0x5626 $9616 DA DC                    ;
bank1_Various_Tile_Mappings_Moby_Frame_1:                                       ;
.byt    $D0,$D2                        ; 0x5628 $9618 D0 D2                    ;
bank1_Various_Tile_Mappings_Moby_Frame_2:                                       ;
.byt    $D0,$D4                        ; 0x562a $961A D0 D4                    ;
bank1_Various_Tile_Mappings_Moblin_Thrown_Spear:                                ;
.byt    $25,$27                        ; 0x562c $961C 25 27                    ;
bank1_Various_Tile_Mappings_unknown:                                            ;
.byt    $FC,$FE                        ; 0x562e $961E FC FE                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Red_Jar:                                              ;
    LDA      #$11                      ; 0x5630 $9620 A9 11                    ; A = 11
    STA      $AF,x                     ; 0x5632 $9622 95 AF                    ; Item Code
L9624:                                                                          ;
    RTS                                ; 0x5634 $9624 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Red_Blue_Deeler:                                      ;
    LDA      $2A,x                     ; 0x5635 $9625 B5 2A                    ; Enemy Y position
    STA      $05DD                     ; 0x5637 $9627 8D DD 05                 ;
    CLC                                ; 0x563a $962A 18                       ;
    ADC      #$60                      ; 0x563b $962B 69 60                    ; Go down rope this many pixels
    STA      $05DC                     ; 0x563d $962D 8D DC 05                 ;
    RTS                                ; 0x5640 $9630 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Moblin_Daira_Goriya:                                  ;
    DEC      $AF,x                     ; 0x5641 $9631 D6 AF                    ;; Various enemy state variables
    RTS                                ; 0x5643 $9633 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9634:                                                                          ;
    JSR      L9EB2                     ; 0x5644 $9634 20 B2 9E                 ;
bank1_table6:                                                                   ;
.byt    $D0,$00                        ; 0x5647 $9637 D0 00                    ;
; ---------------------------------------------------------------------------- ;
bank1_Various_Projectiles:                                                      ;
    LDA      #$FE                      ; 0x5649 $9639 A9 FE                    ; A = FE (1111 1110) (-2)
    STA      $0584,x                   ; 0x564b $963B 9D 84 05                 ; Rocks (desert, Octorok) vertical movement
L963E:                                                                          ;
    INC      $0584,x                   ; 0x564e $963E FE 84 05                 ; Global gravity for
    INC      $0584,x                   ; 0x5651 $9641 FE 84 05                 ; spears, rocks...
    JMP      L96FF                     ; 0x5654 $9644 4C FF 96                 ; goto $56FF
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9647:                                                                          ;
    LDY      #$04                      ; 0x5657 $9647 A0 04                    ; Y = 04 (0000 0100)
    INC      $044C,x                   ; 0x5659 $9649 FE 4C 04                 ;
    LDA      $044C,x                   ; 0x565c $964C BD 4C 04                 ;
    AND      #$10                      ; 0x565f $964F 29 10                    ; keep bits ...x ....
    BEQ      L9655                     ; 0x5661 $9651 F0 02                    ; if bit 4 is 0, skip to $5655 (< 0F)
    LDY      #$FC                      ; 0x5663 $9653 A0 FC                    ; Y = FC (1111 1100)
L9655:                                                                          ;
    STY      $77,x                     ; 0x5665 $9655 94 77                    ;; Projectile X Velocity
    JMP      L96FF                     ; 0x5667 $9657 4C FF 96                 ; goto $56FF
                                                                               ;
; ---------------------------------------------------------------------------- ;
L965A:                                                                          ;
    JSR      L96EB                     ; 0x566a $965A 20 EB 96                 ; goto $56EB
L965F     = * + $0002                                                          ;
    JMP      bank1_Various_Projectiles ; 0x566d $965D 4C 39 96                 ; goto $5639
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_various_boomerang_velocities:                                   ;
.byt    $FF,$01                        ; 0x5670 $9660 FF 01                    ;
L9662:                                                                          ;
.byt    $FC,$04                        ; 0x5672 $9662 FC 04                    ;
; ---------------------------------------------------------------------------- ;
bank1_code11:                                                                   ;
    JSR      L96EB                     ; 0x5674 $9664 20 EB 96                 ; goto $56EB
    LDA      $12                       ; 0x5677 $9667 A5 12                    ;; Frame Counter (ascending)
    LSR                                ; 0x5679 $9669 4A                       ;
    BCC      L9680                     ; 0x567a $966A 90 14                    ;
    LDA      #$80                      ; 0x567c $966C A9 80                    ; A = 80 (boomerang sound)
    STA      $ED                       ; 0x567e $966E 85 ED                    ; Sound Effects Type 2
    LDA      $0584,x                   ; 0x5680 $9670 BD 84 05                 ; Projectile Y Velocity
    BMI      L967D                     ; 0x5683 $9673 30 08                    ; if Negative, skip to $567D
    BEQ      L9680                     ; 0x5685 $9675 F0 09                    ; if Zero,     skip to $5680
    DEC      $0584,x                   ; 0x5687 $9677 DE 84 05                 ; Projectile Y Velocity
    DEC      $0584,x                   ; 0x568a $967A DE 84 05                 ;; Projectile Y Velocity; Projectile Y Velocity
L967D:                                                                          ;
    INC      $0584,x                   ; 0x568d $967D FE 84 05                 ; Projectile Y Velocity
L9680:                                                                          ;
    LDA      $044C,x                   ; 0x5690 $9680 BD 4C 04                 ;
    BMI      L96B4                     ; 0x5693 $9683 30 2F                    ; if Negative, skip to $56B4
    BNE      L96B1                     ; 0x5695 $9685 D0 2A                    ; if not Zero, skip to $56B1
    LDY      $0458,x                   ; 0x5697 $9687 BC 58 04                 ; 0 or 1 (probably)
    LDA      L9662,y                   ; 0x569a $968A B9 62 96                 ; refer to table at $5660 (offset +2)
L968D:                                                                          ;
    STA      $0584,x                   ; 0x569d $968D 9D 84 05                 ; Projectile Y Velocity
    LDY      $0452,x                   ; 0x56a0 $9690 BC 52 04                 ;
    LDA      $77,x                     ; 0x56a3 $9693 B5 77                    ; Projectile X Velocity
    CLC                                ; 0x56a5 $9695 18                       ;
    ADC      L965F,y                   ; 0x56a6 $9696 79 5F 96                 ;
    STA      $77,x                     ; 0x56a9 $9699 95 77                    ; Projectile X Velocity
    LDY      #$02                      ; 0x56ab $969B A0 02                    ; Y = 02
    CMP      #$00                      ; 0x56ad $969D C9 00                    ;
    BMI      L96A2                     ; 0x56af $969F 30 01                    ;
    DEY                                ; 0x56b1 $96A1 88                       ;
L96A2:                                                                          ;
    STY      $66,x                     ; 0x56b2 $96A2 94 66                    ; Projectile facing direction
    AND      #$3F                      ; 0x56b4 $96A4 29 3F                    ; keep bits ..xx xxxx
    CMP      #$20                      ; 0x56b6 $96A6 C9 20                    ;
L96A8:                                                                          ;
    BNE      L96B4                     ; 0x56b8 $96A8 D0 0A                    ; if Zero, skip to $56B4
    LDA      #$FF                      ; 0x56ba $96AA A9 FF                    ; A = FF (4D -> boomerang go through Goriya)
    STA      $044C,x                   ; 0x56bc $96AC 9D 4C 04                 ;
    BNE      L96B4                     ; 0x56bf $96AF D0 03                    ; if not Zero, skip to $56B4
L96B1:                                                                          ;
    DEC      $044C,x                   ; 0x56c1 $96B1 DE 4C 04                 ; (boomerang flying back)
L96B4:                                                                          ;
    JSR      L96FF                     ; 0x56c4 $96B4 20 FF 96                 ; goto $56FF
    LDY      $044C,x                   ; 0x56c7 $96B7 BC 4C 04                 ;
    DEY                                ; 0x56ca $96BA 88                       ;
    BPL      L96EA                     ; 0x56cb $96BB 10 2D                    ; if Positive, skip to $56EA (RTS)
    LDA      $045E,x                   ; 0x56cd $96BD BD 5E 04                 ;
    TAX                                ; 0x56d0 $96C0 AA                       ;
    LDA      $B6,x                     ; 0x56d1 $96C1 B5 B6                    ; Generated Enemy Slot
    CMP      #$01                      ; 0x56d3 $96C3 C9 01                    ;
    BNE      L96EA                     ; 0x56d5 $96C5 D0 23                    ; if not Zero, skip to $56EA (RTS)
    LDA      $4E,x                     ; 0x56d7 $96C7 B5 4E                    ; Enemy X Position (low byte)
    SBC      $072C                     ; 0x56d9 $96C9 ED 2C 07                 ; Scrolling Offset Low Byte
    LDY      #$00                      ; 0x56dc $96CC A0 00                    ; Y = 00
    JSR      LE94C                     ; 0x56de $96CE 20 4C E9                 ; goto $1E94C
    LDY      #$03                      ; 0x56e1 $96D1 A0 03                    ; Y = 03
L96D3:                                                                          ;
    LDA      $04,y                     ; 0x56e3 $96D3 B9 04 00                 ;
    STA      L0000,y                   ; 0x56e6 $96D6 99 00 00                 ;
    DEY                                ; 0x56e9 $96D9 88                       ;
    BPL      L96D3                     ; 0x56ea $96DA 10 F7                    ; if (Y >= 0) loop to $56D3
    LDX      $10                       ; 0x56ec $96DC A6 10                    ;; used as monster x register ;draw boss hp bar
    JSR      LE469                     ; 0x56ee $96DE 20 69 E4                 ;
    JSR      bank7_idem__maybe         ; 0x56f1 $96E1 20 F9 E9                 ;
    BCC      L96EA                     ; 0x56f4 $96E4 90 04                    ;
    LDA      #$00                      ; 0x56f6 $96E6 A9 00                    ; A = 00
    STA      $87,x                     ; 0x56f8 $96E8 95 87                    ;; Projectile Type
L96EA:                                                                          ;
    RTS                                ; 0x56fa $96EA 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L96EB:                                                                          ;
    LDY      #$02                      ; 0x56fb $96EB A0 02                    ; Y = 02
    LDA      $77,x                     ; 0x56fd $96ED B5 77                    ;; Projectile X Velocity
    BMI      L96F2                     ; 0x56ff $96EF 30 01                    ;
    DEY                                ; 0x5701 $96F1 88                       ; (CA -> no projectiles)
L96F2:                                                                          ;
    TYA                                ; 0x5702 $96F2 98                       ;
    CMP      $66,x                     ; 0x5703 $96F3 D5 66                    ;; Projectile facing direction
    BEQ      L96EA                     ; 0x5705 $96F5 F0 F3                    ;
    PLA                                ; 0x5707 $96F7 68                       ;
    PLA                                ; 0x5708 $96F8 68                       ;
    INC      $0584,x                   ; 0x5709 $96F9 FE 84 05                 ; affects octorok rocks and boomerangs
    INC      $0584,x                   ; 0x570c $96FC FE 84 05                 ; when blocked, but not spears
L96FF:                                                                          ;
    JSR      LDED4                     ; 0x570f $96FF 20 D4 DE                 ; goto 1DED4
    LDA      $CA                       ; 0x5712 $9702 A5 CA                    ;
    AND      #$FC                      ; 0x5714 $9704 29 FC                    ; keep bits xxxx xx..
    BEQ      L970D                     ; 0x5716 $9706 F0 05                    ; if (A < 04) goto $570D
    LDA      #$00                      ; 0x5718 $9708 A9 00                    ; A = 00 (set to 03 for funny results)
    STA      $87,x                     ; 0x571a $970A 95 87                    ;; Projectile Type
    RTS                                ; 0x571c $970C 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L970D:                                                                          ;
    JSR      bank1_code12              ; 0x571d $970D 20 18 97                 ; goto $5718
    JSR      LE48A                     ; 0x5720 $9710 20 8A E4                 ; goto $1E48A
L9715     = * + $0002                                                          ;
    JMP      LE3B9                     ; 0x5723 $9713 4C B9 E3                 ; goto $1E3B9
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table7:                                                                   ;
.byt    $40,$00                        ; 0x5726 $9716 40 00                    ;
; ---------------------------------------------------------------------------- ;
bank1_code12:                                                                   ;
    LDA      $87,x                     ; 0x5728 $9718 B5 87                    ; Projectile Type (chart below)
; Projectile Type (chart below)                                                ;
;00 = crash                                                                    ;
;01 = Desert rock                                                              ;
;02 = Bubble                                                                   ;
;03 = Octorok rock                                                             ;
;04 = Flame                                                                    ;
;05 = Spear                                                                    ;
;06 = Boomerang                                                                ;
;07 = Axe                                                                      ;
    PHA                                ; 0x572a $971A 48                       ;
    ASL                                ; 0x572b $971B 0A                       ;
    TAY                                ; 0x572c $971C A8                       ;
    LDA      $6EC0,y                   ; 0x572d $971D B9 C0 6E                 ;
    STA      L000E                     ; 0x5730 $9720 85 0E                    ;
    LDA      $6EC1,y                   ; 0x5732 $9722 B9 C1 6E                 ;
    STA      $0F                       ; 0x5735 $9725 85 0F                    ;
    LDY      $97,x                     ; 0x5737 $9727 B4 97                    ;
    LDA      $30,x                     ; 0x5739 $9729 B5 30                    ; projectile Y position (display)
    STA      $0200,y                   ; 0x573b $972B 99 00 02                 ;
    STA      L0000                     ; 0x573e $972E 85 00                    ;
    LDA      $CE                       ; 0x5740 $9730 A5 CE                    ; projectile X position (display)
    STA      $01                       ; 0x5742 $9732 85 01                    ;
    STA      $0203,y                   ; 0x5744 $9734 99 03 02                 ;
    PLA                                ; 0x5747 $9737 68                       ;
    TAY                                ; 0x5748 $9738 A8                       ;
    LDA      $6EAD,y                   ; 0x5749 $9739 B9 AD 6E                 ;
    PHA                                ; 0x574c $973C 48                       ;
    LDA      $6EB6,y                   ; 0x574d $973D B9 B6 6E                 ;
    STA      $03                       ; 0x5750 $9740 85 03                    ;
    LDY      $66,x                     ; 0x5752 $9742 B4 66                    ;; Projectile facing direction
    STY      $02                       ; 0x5754 $9744 84 02                    ;
    ORA      L9715,y                   ; 0x5756 $9746 19 15 97                 ;
    LDY      $97,x                     ; 0x5759 $9749 B4 97                    ;
    STA      $0202,y                   ; 0x575b $974B 99 02 02                 ;
    PLA                                ; 0x575e $974E 68                       ;
    STA      $0201,y                   ; 0x575f $974F 99 01 02                 ;
    JMP      (L000E)                   ; 0x5762 $9752 6C 0E 00                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_relative_Y_display_of_Desert_Rocks:                             ;
.byt    $00,$02,$00,$FE                ; 0x5765 $9755 00 02 00 FE              ;
; ---------------------------------------------------------------------------- ;
Projectiles_Routines_Desert_Rock:                                               ;
    LDA      $12                       ; 0x5769 $9759 A5 12                    ;; Frame Counter (ascending)
    AND      #$30                      ; 0x576b $975B 29 30                    ; keep bits ..xx ....
    LSR                                ; 0x576d $975D 4A                       ; shift
    LSR                                ; 0x576e $975E 4A                       ; right
    LSR                                ; 0x576f $975F 4A                       ; 4 times
    LSR                                ; 0x5770 $9760 4A                       ; A becomes .... ..xx (frame number 0-2)
    TAX                                ; 0x5771 $9761 AA                       ;
L9764     = * + $0002                                                          ;
    LDA      $0200,y                   ; 0x5772 $9762 B9 00 02                 ;
    ADC      bank1_Table_for_relative_Y_display_of_Desert_Rocks,x; 0x5775 $9765 7D 55 97; refer to table at $5755
    STA      $0200,y                   ; 0x5778 $9768 99 00 02                 ;
    LDX      $10                       ; 0x577b $976B A6 10                    ;; used as monster x register ;draw boss hp bar
Projectiles_Routines_Octorok_Rock_or_Flame:                                     ;
    LDA      $12                       ; 0x577d $976D A5 12                    ;; Frame Counter (ascending)
    ASL                                ; 0x577f $976F 0A                       ;
    ASL                                ; 0x5780 $9770 0A                       ;
    ASL                                ; 0x5781 $9771 0A                       ;
    ASL                                ; 0x5782 $9772 0A                       ;
    ASL                                ; 0x5783 $9773 0A                       ;
    AND      #$80                      ; 0x5784 $9774 29 80                    ; keep bits x... ....
    ORA      $0202,y                   ; 0x5786 $9776 19 02 02                 ;
    BNE      L9785                     ; 0x5789 $9779 D0 0A                    ;
Projectiles_Routines_Raising_Bubble:                                            ;
    LDA      $12                       ; 0x578b $977B A5 12                    ;; Frame Counter (ascending)
    ASL                                ; 0x578d $977D 0A                       ;
    ASL                                ; 0x578e $977E 0A                       ;
    ASL                                ; 0x578f $977F 0A                       ;
    SEC                                ; 0x5790 $9780 38                       ;
    ROL                                ; 0x5791 $9781 2A                       ;
    ASL                                ; 0x5792 $9782 0A                       ;
    AND      #$43                      ; 0x5793 $9783 29 43                    ; keep bits .x.. ..xx
L9785:                                                                          ;
    STA      $0202,y                   ; 0x5795 $9785 99 02 02                 ;
    RTS                                ; 0x5798 $9788 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Projectiles_Routines_Moblin_Spear:                                              ;
    LDA      $040E,x                   ; 0x5799 $9789 BD 0E 04                 ; Enemy Hit State
    PHA                                ; 0x579c $978C 48                       ;
    LDA      $045E,x                   ; 0x579d $978D BD 5E 04                 ;
    BEQ      L9794                     ; 0x57a0 $9790 F0 02                    ;
    STA      $03                       ; 0x57a2 $9792 85 03                    ; set spear palette (?)
L9794:                                                                          ;
    LDA      #$00                      ; 0x57a4 $9794 A9 00                    ; A = 00
    STA      $C9                       ; 0x57a6 $9796 85 C9                    ;
    STA      $040E,x                   ; 0x57a8 $9798 9D 0E 04                 ; Enemy Hit State
    LDX      #$48                      ; 0x57ab $979B A2 48                    ; Spear Tile Mapping index
    JSR      LF0D7                     ; 0x57ad $979D 20 D7 F0                 ; goto $1F0D7
    PLA                                ; 0x57b0 $97A0 68                       ;
    STA      $040E,x                   ; 0x57b1 $97A1 9D 0E 04                 ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    RTS                                ; 0x57b4 $97A4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Boomerang_mirroring_attributes:                                 ;
.byt    $02,$82,$C2,$42                ; 0x57b5 $97A5 02 82 C2 42              ;
; ---------------------------------------------------------------------------- ;
Projectiles_Routines_Boomerang:                                                 ;
    LDA      $12                       ; 0x57b9 $97A9 A5 12                    ;; Frame Counter (ascending)
    LSR                                ; 0x57bb $97AB 4A                       ;
    LSR                                ; 0x57bc $97AC 4A                       ;
    AND      #$03                      ; 0x57bd $97AD 29 03                    ; keep bits .... ..xx
    LDY      $66,x                     ; 0x57bf $97AF B4 66                    ;; Projectile facing direction
    DEY                                ; 0x57c1 $97B1 88                       ;
    BNE      L97B6                     ; 0x57c2 $97B2 D0 02                    ;
    EOR      #$03                      ; 0x57c4 $97B4 49 03                    ; flip bits .... ..xx
L97B6:                                                                          ;
    TAY                                ; 0x57c6 $97B6 A8                       ;
    LDA      bank1_Table_for_Boomerang_mirroring_attributes,y; 0x57c7 $97B7 B9 A5 97; refer to table at $57A5
    LDY      $97,x                     ; 0x57ca $97BA B4 97                    ;
    STA      $0202,y                   ; 0x57cc $97BC 99 02 02                 ;
    RTS                                ; 0x57cf $97BF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Projectiles_Routines_Red_Daria_Axe:                                             ;
    LDA      $12                       ; 0x57d0 $97C0 A5 12                    ;; Frame Counter (ascending)
    AND      #$04                      ; 0x57d2 $97C2 29 04                    ; keep bits .... .x..
    STA      L0000                     ; 0x57d4 $97C4 85 00                    ;
    LDA      #$F6                      ; 0x57d6 $97C6 A9 F6                    ; A = F6 (tile mapping for Red Daria's axe)
    CLC                                ; 0x57d8 $97C8 18                       ;
    ADC      L0000                     ; 0x57d9 $97C9 65 00                    ;
    STA      $0201,y                   ; 0x57db $97CB 99 01 02                 ;
    LDX      #$02                      ; 0x57de $97CE A2 02                    ; X = 02 (palette for axe's frame)
    LDA      $12                       ; 0x57e0 $97D0 A5 12                    ;; Frame Counter (ascending)
    AND      #$08                      ; 0x57e2 $97D2 29 08                    ; keep bits .... x...
    BNE      L97D8                     ; 0x57e4 $97D4 D0 02                    ;
    LDX      #$C2                      ; 0x57e6 $97D6 A2 C2                    ; X = C2
L97D8:                                                                          ;
    STX      $00                       ; 0x57e8 $97D8 86 00                    ;
    LDX      $10                       ; 0x57ea $97DA A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      $66,x                     ; 0x57ec $97DC B5 66                    ;; Projectile facing direction
    CMP      #$01                      ; 0x57ee $97DE C9 01                    ;
    BNE      L97E8                     ; 0x57f0 $97E0 D0 06                    ;
    LDA      L0000                     ; 0x57f2 $97E2 A5 00                    ;
    EOR      #$40                      ; 0x57f4 $97E4 49 40                    ; flip bits .x.. ....
    STA      L0000                     ; 0x57f6 $97E6 85 00                    ;
L97E8:                                                                          ;
    LDA      L0000                     ; 0x57f8 $97E8 A5 00                    ;
    STA      $0202,y                   ; 0x57fa $97EA 99 02 02                 ;
L97ED:                                                                          ;
    RTS                                ; 0x57fd $97ED 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Moblins_Spear_X_Velocity_:                                      ;
.byt    $28                            ; 0x57fe $97EE 28                       ;
L97EF:                                                                          ;
.byt    $D8,$00,$00                    ; 0x57ff $97EF D8 00 00                 ;
; ---------------------------------------------------------------------------- ;
bank1_code15:                                                                   ;
    LDY      #$05                      ; 0x5802 $97F2 A0 05                    ; Y = 05
L97F4:                                                                          ;
    LDA      $87,y                     ; 0x5804 $97F4 B9 87 00                 ;
    BEQ      L97FD                     ; 0x5807 $97F7 F0 04                    ;
    DEY                                ; 0x5809 $97F9 88                       ;
    BPL      L97F4                     ; 0x580a $97FA 10 F8                    ; if (Y >= 0) loop to $57F4
    RTS                                ; 0x580c $97FC 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97FD:                                                                          ;
    STA      $045E,y                   ; 0x580d $97FD 99 5E 04                 ;
    LDA      #$05                      ; 0x5810 $9800 A9 05                    ; A = 05
    STA      $87,y                     ; 0x5812 $9802 99 87 00                 ; Projectile Type
    LDA      $4E,x                     ; 0x5815 $9805 B5 4E                    ; Enemy X position (low byte)
    STY      L0000                     ; 0x5817 $9807 84 00                    ;
    LDY      $60,x                     ; 0x5819 $9809 B4 60                    ; facing direction?
    ADC      L97EF,y                   ; 0x581b $980B 79 EF 97                 ; refer to table at $57EE (offset +1)
    LDY      L0000                     ; 0x581e $980E A4 00                    ;
    STA      $54,y                     ; 0x5820 $9810 99 54 00                 ;
    LDY      $60,x                     ; 0x5823 $9813 B4 60                    ;; Enemy facing direction
    LDA      $3C,x                     ; 0x5825 $9815 B5 3C                    ; Enemy X position (high byte)
    ADC      L97EF,y                   ; 0x5827 $9817 79 EF 97                 ; refer to table at $57EE (offset +1)
    LDY      L0000                     ; 0x582a $981A A4 00                    ;
    STA      $42,y                     ; 0x582c $981C 99 42 00                 ;
    LDA      $2A,x                     ; 0x582f $981F B5 2A                    ;; Enemy Y Position
    ADC      #$05                      ; 0x5831 $9821 69 05                    ; relative initial Y position of spears
    STA      $30,y                     ; 0x5833 $9823 99 30 00                 ; when leaving Moblin's hand
    LDA      $1A,x                     ; 0x5836 $9826 B5 1A                    ;
    ADC      #$00                      ; 0x5838 $9828 69 00                    ;
    STA      $20,y                     ; 0x583a $982A 99 20 00                 ;
    STY      L0000                     ; 0x583d $982D 84 00                    ;
    LDA      $60,x                     ; 0x583f $982F B5 60                    ; facing direction?
    STA      $66,y                     ; 0x5841 $9831 99 66 00                 ;
    TAY                                ; 0x5844 $9834 A8                       ;
    LDA      L97ED,y                   ; 0x5845 $9835 B9 ED 97                 ; refer to table at $57EE (offset -1)
    LDY      L0000                     ; 0x5848 $9838 A4 00                    ;
    STA      $77,y                     ; 0x584a $983A 99 77 00                 ;
    LDA      #$E8                      ; 0x584d $983D A9 E8                    ; Spear's initial Y velocity (D8 - F8)
    STA      $0584,y                   ; 0x584f $983F 99 84 05                 ;
    LDA      $A1,x                     ; 0x5852 $9842 B5 A1                    ; Enemy Code
    CMP      #$14                      ; 0x5854 $9844 C9 14                    ; 14 = Orange Moblin
L9847     = * + $0001                                                          ;
    BNE      L984D                     ; 0x5856 $9846 D0 05                    ; if not 14, skip to $584D (RTS)
    LDA      #$01                      ; 0x5858 $9848 A9 01                    ; A = 01
    STA      $045E,y                   ; 0x585a $984A 99 5E 04                 ; Moblin's Spears Palette
L984D:                                                                          ;
    RTS                                ; 0x585d $984D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator:       ;
    LDY      #$05                      ; 0x585e $984E A0 05                    ; Y = 05
L9850:                                                                          ;
    CPY      $10                       ; 0x5860 $9850 C4 10                    ;; used as monster x register ;draw boss hp bar
    BEQ      L9860                     ; 0x5862 $9852 F0 0C                    ;
    LDA      $B6,y                     ; 0x5864 $9854 B9 B6 00                 ; Generated Enemy Slot
    BEQ      L9860                     ; 0x5867 $9857 F0 07                    ;
    LDA      $A1,y                     ; 0x5869 $9859 B9 A1 00                 ; Enemy Code
    CMP      $A1,x                     ; 0x586c $985C D5 A1                    ;; Enemy Code
    BEQ      L9864                     ; 0x586e $985E F0 04                    ;
L9860:                                                                          ;
    DEY                                ; 0x5870 $9860 88                       ;
    BPL      L9850                     ; 0x5871 $9861 10 ED                    ;
    RTS                                ; 0x5873 $9863 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9864:                                                                          ;
    TYA                                ; 0x5874 $9864 98                       ;
    TAX                                ; 0x5875 $9865 AA                       ;
    JSR      LDD3D                     ; 0x5876 $9866 20 3D DD                 ;
    LDX      $10                       ; 0x5879 $9869 A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x587b $986B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Geldarm:                                              ;
    LDA      #$01                      ; 0x587c $986C A9 01                    ; A = 1
    STA      $AF,x                     ; 0x587e $986E 95 AF                    ;; Various enemy state variables
    LSR                                ; 0x5880 $9870 4A                       ; A >> 0
    STA      $60,x                     ; 0x5881 $9871 95 60                    ;; Enemy facing direction
    LDA      $2A,x                     ; 0x5883 $9873 B5 2A                    ; Enemy Y Position
    ADC      #$3F                      ; 0x5885 $9875 69 3F                    ;
    STA      $81,x                     ; 0x5887 $9877 95 81                    ; Current Animation Frame for Enemy
    RTS                                ; 0x5889 $9879 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Megmat:                                                         ;
.byt    $08,$F8                        ; 0x588a $987A 08 F8                    ;
L987C:                                                                          ;
.byt    $FB,$FC                        ; 0x588c $987C FB FC                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Megmat:                                                   ;
;08 = X velocity when facing right (8)                                         ;
;F8 = X velocity when facing left (-8)                                         ;
;FB = Y Velocity for high jump (-5)                                            ;
;FC = Y Velocity for low jump (-4)                                             ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x588e $987E 20 02 DA                 ; Enemy Stops when Hit
    LDA      $A8,x                     ; 0x5891 $9881 B5 A8                    ;; Enemy State
    AND      #$08                      ; 0x5893 $9883 29 08                    ; keep bits .... x...
    BEQ      L988C                     ; 0x5895 $9885 F0 05                    ;
    JSR      LDAC7                     ; 0x5897 $9887 20 C7 DA                 ; Set Enemy Y Velocity to 0
    INC      $2A,x                     ; 0x589a $988A F6 2A                    ; Enemy Y Position
L988C:                                                                          ;
    LDA      $A8,x                     ; 0x589c $988C B5 A8                    ;; Enemy State
    AND      #$03                      ; 0x589e $988E 29 03                    ; keep bits .... ..xx
    BEQ      L9895                     ; 0x58a0 $9890 F0 03                    ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x58a2 $9892 20 EB E8;
L9895:                                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x58a5 $9895 20 B8 DE               ; Simple Horizontal Movement
    LDA      $A8,x                     ; 0x58a8 $9898 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x58aa $989A 29 04                    ; keep bits .... .x..
    BEQ      L98B2                     ; 0x58ac $989C F0 14                    ;
    LDA      $051B,x                   ; 0x58ae $989E BD 1B 05                 ; Randomizer
    AND      #$01                      ; 0x58b1 $98A1 29 01                    ; keep bits .... ...x
    TAY                                ; 0x58b3 $98A3 A8                       ;
    LDA      L987C,y                   ; 0x58b4 $98A4 B9 7C 98                 ; refer to table at $587A (offset +2)
    STA      $057E,x                   ; 0x58b7 $98A7 9D 7E 05                 ; Enemy Y Velocity
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x58ba $98AA 20 91 DC; Determine Enemy Facing Direction
    LDA      bank1_Table_for_Megmat,y  ; 0x58bd $98AD B9 7A 98                 ; refer to table at $587A
    STA      $71,x                     ; 0x58c0 $98B0 95 71                    ; Enemy X Velocity
L98B2:                                                                          ;
    LDA      #$30                      ; 0x58c2 $98B2 A9 30                    ; A = 30 (gravity factor while jumping up)
    STA      L0000                     ; 0x58c4 $98B4 85 00                    ;
    STA      $02                       ; 0x58c6 $98B6 85 02                    ;
    JSR      LDECE                     ; 0x58c8 $98B8 20 CE DE                 ;
    JSR      LDE3D                     ; 0x58cb $98BB 20 3D DE                 ; Display
    JMP      bank7_Link_Collision_Detection; 0x58ce $98BE 4C C1 D6                 ; Link Collision Detection
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Lowder_Fast_Speeds:                                             ;
;08 = fast speed when facing right                                             ;
;F8 = fast speed when facing left                                              ;
.byt    $08,$F8                        ; 0x58d1 $98C1 08 F8                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Lowder:                                                   ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x58d3 $98C3 20 02 DA                 ; Enemy Stops when Hit
    JSR      bank7_Link_Collision_Detection; 0x58d6 $98C6 20 C1 D6                 ; Link Collision Detection
    JSR      LDE3D                     ; 0x58d9 $98C9 20 3D DE                 ; Display
    LDA      $71,x                     ; 0x58dc $98CC B5 71                    ; Enemy X Velocity
    PHA                                ; 0x58de $98CE 48                       ;
    LDA      $60,x                     ; 0x58df $98CF B5 60                    ;; Enemy facing direction
    PHA                                ; 0x58e1 $98D1 48                       ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x58e2 $98D2 20 91 DC; Determine Enemy Facing Direction
    PLA                                ; 0x58e5 $98D5 68                       ;
    STA      $60,x                     ; 0x58e6 $98D6 95 60                    ;; Enemy facing direction
    INY                                ; 0x58e8 $98D8 C8                       ;
    TYA                                ; 0x58e9 $98D9 98                       ;
    CMP      $60,x                     ; 0x58ea $98DA D5 60                    ;; Enemy facing direction
    BNE      L98E0                     ; 0x58ec $98DC D0 02                    ;
    ASL      $71,x                     ; 0x58ee $98DE 16 71                    ; Enemy X Velocity
L98E0:                                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x58f0 $98E0 20 B8 DE               ; Simple Horizontal Movement
    PLA                                ; 0x58f3 $98E3 68                       ;
    STA      $71,x                     ; 0x58f4 $98E4 95 71                    ; Enemy X Velocity
    LDA      $29                       ; 0x58f6 $98E6 A5 29                    ; Link's Y position
    CLC                                ; 0x58f8 $98E8 18                       ;
    ADC      #$10                      ; 0x58f9 $98E9 69 10                    ;
    CMP      $2A,x                     ; 0x58fb $98EB D5 2A                    ; check if Lowder is at level with Link's feet
    BNE      L9901                     ; 0x58fd $98ED D0 12                    ; if not, skip to $5901
    LDA      $0504,x                   ; 0x58ff $98EF BD 04 05                 ; if reaction timer > 0
    BNE      L9901                     ; 0x5902 $98F2 D0 0D                    ; skip to $5901
    LDA      #$A0                      ; 0x5904 $98F4 A9 A0                    ; delay before Lowder rushes towards Link
    STA      $0504,x                   ; 0x5906 $98F6 9D 04 05                 ;; Timer for Enemy
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x5909 $98F9 20 91 DC; Determine Enemy Facing Direction
    LDA      bank1_Table_for_Lowder_Fast_Speeds,y; 0x590c $98FC B9 C1 98           ; refer to table at $58C1
    STA      $71,x                     ; 0x590f $98FF 95 71                    ; Enemy X Velocity
L9901:                                                                          ;
    LDA      $A8,x                     ; 0x5911 $9901 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x5913 $9903 29 04                    ; keep bits .... .x..
    BEQ      L9910                     ; 0x5915 $9905 F0 09                    ;
    JSR      bank7_Floor_Y_Position    ; 0x5917 $9907 20 C1 DA                 ; Floor Enemy Y Position
    LDA      $A8,x                     ; 0x591a $990A B5 A8                    ;; Enemy State
    AND      #$03                      ; 0x591c $990C 29 03                    ; keep bits .... ..xx
    BEQ      L992A                     ; 0x591e $990E F0 1A                    ;
L9910:                                                                          ;
    LDA      $81,x                     ; 0x5920 $9910 B5 81                    ;; Current Animation Frame for Enemys
    BEQ      L991F                     ; 0x5922 $9912 F0 0B                    ;
    LDA      #$20                      ; 0x5924 $9914 A9 20                    ; A = 20
    STA      L0000                     ; 0x5926 $9916 85 00                    ;
    LDA      #$03                      ; 0x5928 $9918 A9 03                    ; A = 03
    STA      $02                       ; 0x592a $991A 85 02                    ;
    JMP      LDECE                     ; 0x592c $991C 4C CE DE                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L991F:                                                                          ;
    INC      $81,x                     ; 0x592f $991F F6 81                    ;; Current Animation Frame for Enemys
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x5931 $9921 20 EB E8;
L9925     = * + $0001                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x5934 $9924 20 B8 DE               ; Simple Horizontal Movement
    JMP      bank7_Simple_Horizontal_Movement; 0x5937 $9927 4C B8 DE               ; Simple Horizontal Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
L992A:                                                                          ;
    STA      $81,x                     ; 0x593a $992A 95 81                    ;; Current Animation Frame for Enemys
L992C:                                                                          ;
    RTS                                ; 0x593c $992C 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Dumb_Moblin_X_Velocity:                                         ;
.byt    $10,$F0                        ; 0x593d $992D 10 F0                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Dumb_Moblin_Generator:                                    ;
    LDA      L05C9                     ; 0x593f $992F AD C9 05                 ;
    BNE      L994E                     ; 0x5942 $9932 D0 1A                    ;
    JSR      bank1_Enemy_Routines1_Generators; 0x5944 $9934 20 31 9B               ;
    BCS      L994E                     ; 0x5947 $9937 B0 15                    ;
    LDX      L0000                     ; 0x5949 $9939 A6 00                    ;
    DEC      $C2,x                     ; 0x594b $993B D6 C2                    ; Enemy health - 1
    LDA      #$22                      ; 0x594d $993D A9 22                    ; 22 = Dumb Moblin
    STA      $A1,x                     ; 0x594f $993F 95 A1                    ; Dumb Moblin spawned
    LDY      $60,x                     ; 0x5951 $9941 B4 60                    ;; Enemy facing direction
    LDA      L992C,y                   ; 0x5953 $9943 B9 2C 99                 ; refer to table at $592D (offset -1)
    STA      $71,x                     ; 0x5956 $9946 95 71                    ; Enemy X Velocity
    LDA      #$A0                      ; 0x5958 $9948 A9 A0                    ; A = A0
    STA      $2A,x                     ; 0x595a $994A 95 2A                    ; Initial Y position
    LDX      $10                       ; 0x595c $994C A6 10                    ;; used as monster x register ;draw boss hp bar
L994E:                                                                          ;
    RTS                                ; 0x595e $994E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Dumb_Moblin:                                              ;
    LDA      #$08                      ; 0x595f $994F A9 08                    ; A = 08 (Dumb Moblin spear tile offset ?)
    STA      $0504,x                   ; 0x5961 $9951 9D 04 05                 ;; Timer for Enemy
    JSR      bank7_Enemy_Stops_when_Hit; 0x5964 $9954 20 02 DA                 ; Enemy Stops when Hit
    JSR      LDE3D                     ; 0x5967 $9957 20 3D DE                 ;
    JSR      LE563                     ; 0x596a $995A 20 63 E5                 ;
    JSR      bank7_Link_Collision_Detection; 0x596d $995D 20 C1 D6                 ; Link Collision Detection
    JSR      L9B22                     ; 0x5970 $9960 20 22 9B                 ;
    JSR      bank7_Gravity             ; 0x5973 $9963 20 BE DE                 ; Gravity
    LDA      $A8,x                     ; 0x5976 $9966 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x5978 $9968 29 04                    ; keep bits .... .x..
    BEQ      L996F                     ; 0x597a $996A F0 03                    ;
    JMP      bank7_Floor_Y_Position    ; 0x597c $996C 4C C1 DA                 ; Floor Enemy Y Position
                                                                               ;
; ---------------------------------------------------------------------------- ;
L996F:                                                                          ;
    RTS                                ; 0x597f $996F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Goriya:                                                         ;
;10 = initial relative Y position for low throw                                ;
;00 = initial relative Y position for high throw                               ;
.byt    $10,$00                        ; 0x5980 $9970 10 00                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Goriya:                                                   ;
    LDA      $81,x                     ; 0x5982 $9972 B5 81                    ;; Current Animation Frame for Enemys
    BEQ      L99EB                     ; 0x5984 $9974 F0 75                    ;
    AND      #$01                      ; 0x5986 $9976 29 01                    ; keep bits .... ...x
    BNE      L9980                     ; 0x5988 $9978 D0 06                    ; if 1, skip to $5980
    JSR      bank7_Display             ; 0x598a $997A 20 11 EF                 ;
    JSR      bank7_code39              ; 0x598d $997D 20 58 E5                 ;
L9980:                                                                          ;
    LDA      $0504,x                   ; 0x5990 $9980 BD 04 05                 ;; Timer for Enemy
    BNE      L99EB                     ; 0x5993 $9983 D0 66                    ;
    LDA      $A1,x                     ; 0x5995 $9985 B5 A1                    ; Enemy Code
    CMP      #$19                      ; 0x5997 $9987 C9 19                    ; 19 = Orange Goriya
    BCC      L99C9                     ; 0x5999 $9989 90 3E                    ;
    JSR      bank7_Spawn_New_Projectile; 0x599b $998B 20 CE DB                 ;
    BCS      L99C6                     ; 0x599e $998E B0 36                    ;
    TXA                                ; 0x59a0 $9990 8A                       ;
    STA      $045E,y                   ; 0x59a1 $9991 99 5E 04                 ;
    LDA      $66,y                     ; 0x59a4 $9994 B9 66 00                 ;
    STA      $0452,y                   ; 0x59a7 $9997 99 52 04                 ;
    LDA      $81,x                     ; 0x59aa $999A B5 81                    ;; Current Animation Frame for Enemys
    LSR                                ; 0x59ac $999C 4A                       ;
    STA      $0458,y                   ; 0x59ad $999D 99 58 04                 ;
    TAX                                ; 0x59b0 $99A0 AA                       ;
    LDA      bank1_Table_for_Goriya,x  ; 0x59b1 $99A1 BD 70 99                 ; refer to table at $5970
    LDX      $10                       ; 0x59b4 $99A4 A6 10                    ;; used as monster x register ;draw boss hp bar
    ADC      $2A,x                     ; 0x59b6 $99A6 75 2A                    ; add Goriya's Y position
    STA      $30,y                     ; 0x59b8 $99A8 99 30 00                 ; Projectile Y Position
    LDA      $051B,x                   ; 0x59bb $99AB BD 1B 05                 ; Randomizer
    AND      #$10                      ; 0x59be $99AE 29 10                    ; keep bits ...x ....
    LDX      $0458,y                   ; 0x59c0 $99B0 BE 58 04                 ;
    BEQ      L99B7                     ; 0x59c3 $99B3 F0 02                    ;
    LDA      #$F0                      ; 0x59c5 $99B5 A9 F0                    ; A = F0 (initial Y velocity of boomerangs)
L99B7:                                                                          ;
    STA      $0584,y                   ; 0x59c7 $99B7 99 84 05                 ;
    LDX      $10                       ; 0x59ca $99BA A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      #$20                      ; 0x59cc $99BC A9 20                    ; (X distance for boomerang start coming back)
    STA      $044C,y                   ; 0x59ce $99BE 99 4C 04                 ;
    LDA      #$06                      ; 0x59d1 $99C1 A9 06                    ; Projectile Type
    STA      $87,y                     ; 0x59d3 $99C3 99 87 00                 ;
L99C6:                                                                          ;
    JMP      L99EE                     ; 0x59d6 $99C6 4C EE 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99C9:                                                                          ;
    INC      $81,x                     ; 0x59d9 $99C9 F6 81                    ;; Current Animation Frame for Enemys
    LDA      $81,x                     ; 0x59db $99CB B5 81                    ;; Current Animation Frame for Enemys
    CMP      #$03                      ; 0x59dd $99CD C9 03                    ; if (A == 03)
    BEQ      L99EE                     ; 0x59df $99CF F0 1D                    ; skip to 59EE
    CMP      #$05                      ; 0x59e1 $99D1 C9 05                    ;
    BCS      L99EE                     ; 0x59e3 $99D3 B0 19                    ;
    CMP      #$04                      ; 0x59e5 $99D5 C9 04                    ;
    BNE      L99E6                     ; 0x59e7 $99D7 D0 0D                    ;
    LDA      $A1,x                     ; 0x59e9 $99D9 B5 A1                    ; Enemy Code
    CMP      #$15                      ; 0x59eb $99DB C9 15                    ; 15 = Red Moblin
    BEQ      L99E6                     ; 0x59ed $99DD F0 07                    ;
    JSR      bank1_code15              ; 0x59ef $99DF 20 F2 97                 ; goto $57F2
    LDA      #$05                      ; 0x59f2 $99E2 A9 05                    ; A = 05
    STA      $81,x                     ; 0x59f4 $99E4 95 81                    ;; Current Animation Frame for Enemys
L99E6:                                                                          ;
    LDA      #$10                      ; 0x59f6 $99E6 A9 10                    ; A = 10
    STA      $0504,x                   ; 0x59f8 $99E8 9D 04 05                 ;; Timer for Enemy
L99EB:                                                                          ;
    JMP      L99F2                     ; 0x59fb $99EB 4C F2 99                 ; goto $59F2
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99EE:                                                                          ;
L99EF     = * + $0001                                                          ;
    LDA      #$00                      ; 0x59fe $99EE A9 00                    ; A = 00
    STA      $81,x                     ; 0x5a00 $99F0 95 81                    ;; Current Animation Frame for Enemys
L99F2:                                                                          ;
    LDA      #$16                      ; 0x5a02 $99F2 A9 16                    ; A = 16 (distance to keep from Link)
    LDY      $A1,x                     ; 0x5a04 $99F4 B4 A1                    ; Enemy Code
L99F7     = * + $0001                                                          ;
    CPY      #$14                      ; 0x5a06 $99F6 C0 14                    ; 14 = Orange Moblin
    BEQ      L99FE                     ; 0x5a08 $99F8 F0 04                    ;
    CPY      #$19                      ; 0x5a0a $99FA C0 19                    ; 19 = Orange Goriya
    BCC      L9A00                     ; 0x5a0c $99FC 90 02                    ;
L99FE:                                                                          ;
    LDA      #$60                      ; 0x5a0e $99FE A9 60                    ; A = 60
L9A00:                                                                          ;
    JMP      L9A22                     ; 0x5a10 $9A00 4C 22 9A                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table9:                                                                   ;
.byt    $03                            ; 0x5a13 $9A03 03                       ;
L9A04:                                                                          ;
.byt    $01,$01,$03,$07,$0F,$07,$03,$3F; 0x5a14 $9A04 01 01 03 07 0F 07 03 3F  ;
.byt    $3F,$1F,$3F,$3F,$7F,$3F,$3F    ; 0x5a1c $9A0C 3F 1F 3F 3F 7F 3F 3F     ;
L9A13:                                                                          ;
.byt    $08,$F8                        ; 0x5a23 $9A13 08 F8                    ;
;Tables for enemies with footwork : Moblin, Daira, Goriya                      ;
;08 = approaching speed, facing right                                          ;
;F8 = approaching speed, facing left                                           ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Daira:                                                    ;
    JSR      bank1_code20              ; 0x5a25 $9A15 20 D1 9A                 ;
    LDA      #$1E                      ; 0x5a28 $9A18 A9 1E                    ; distance Orange Daira tries to keep from Link
    LDY      $A1,x                     ; 0x5a2a $9A1A B4 A1                    ; Enemy Code
    CPY      #$18                      ; 0x5a2c $9A1C C0 18                    ; 18 = Red Daira
    BNE      L9A22                     ; 0x5a2e $9A1E D0 02                    ;
    LDA      #$37                      ; 0x5a30 $9A20 A9 37                    ; distance Red Daira tries to keep from Link
L9A22:                                                                          ;
    STA      $05E5                     ; 0x5a32 $9A22 8D E5 05                 ; store distance (Orange or Red)
    ASL                                ; 0x5a35 $9A25 0A                       ; A * 2
    STA      $05E6                     ; 0x5a36 $9A26 8D E6 05                 ; Daira back off speed value (?)
    JSR      LDE3D                     ; 0x5a39 $9A29 20 3D DE                 ;
    JSR      bank7_Link_Collision_Detection; 0x5a3c $9A2C 20 C1 D6                 ;
    JSR      bank7_Gravity             ; 0x5a3f $9A2F 20 BE DE                 ;
    LDA      $A8,x                     ; 0x5a42 $9A32 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x5a44 $9A34 29 04                    ; keep bits .... .x..
    BEQ      L9A3B                     ; 0x5a46 $9A36 F0 03                    ;
    JSR      bank7_Floor_Y_Position    ; 0x5a48 $9A38 20 C1 DA                 ; Floor Enemy Y Position
L9A3B:                                                                          ;
    JSR      L9B0A                     ; 0x5a4b $9A3B 20 0A 9B                 ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x5a4e $9A3E 20 91 DC; Determine Enemy Facing Direction
    LDA      $0F                       ; 0x5a51 $9A41 A5 0F                    ;
    CLC                                ; 0x5a53 $9A43 18                       ;
L9A46     = * + $0002                                                          ;
    ADC      $05E5                     ; 0x5a54 $9A44 6D E5 05                 ;
    CMP      $05E6                     ; 0x5a57 $9A47 CD E6 05                 ;
    BCC      L9A6B                     ; 0x5a5a $9A4A 90 1F                    ;
    LDA      $0F                       ; 0x5a5c $9A4C A5 0F                    ;
    ADC      #$50                      ; 0x5a5e $9A4E 69 50                    ;
    CMP      #$A0                      ; 0x5a60 $9A50 C9 A0                    ;
    BCS      L9A64                     ; 0x5a62 $9A52 B0 10                    ;
    LDA      $A1,x                     ; 0x5a64 $9A54 B5 A1                    ; Enemy Code
    CMP      #$18                      ; 0x5a66 $9A56 C9 18                    ; 18 = Red Daira
    BCS      L9A61                     ; 0x5a68 $9A58 B0 07                    ;
    LDA      $81,x                     ; 0x5a6a $9A5A B5 81                    ;; Current Animation Frame for Enemys
    BNE      L9A61                     ; 0x5a6c $9A5C D0 03                    ;
    JSR      L9A82                     ; 0x5a6e $9A5E 20 82 9A                 ;
L9A61:                                                                          ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x5a71 $9A61 20 91 DC; Determine Enemy Facing Direction
L9A64:                                                                          ;
    LDA      L9A13,y                   ; 0x5a74 $9A64 B9 13 9A                 ; refer to table at $5A13
    ASL                                ; 0x5a77 $9A67 0A                       ;
    STA      $71,x                     ; 0x5a78 $9A68 95 71                    ; Enemy X Velocity
    RTS                                ; 0x5a7a $9A6A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A6B:                                                                          ;
    LDY      $A1,x                     ; 0x5a7b $9A6B B4 A1                    ; Enemy Code
    LDA      L99F7,y                   ; 0x5a7d $9A6D B9 F7 99                 ; refer to table at $5A0E (+17 +18)
    INC      $AF,x                     ; 0x5a80 $9A70 F6 AF                    ;; Various enemy state variables
    AND      $AF,x                     ; 0x5a82 $9A72 35 AF                    ;; Various enemy state variables
    BNE      L9AAB                     ; 0x5a84 $9A74 D0 35                    ;
    LDA      $051B,x                   ; 0x5a86 $9A76 BD 1B 05                 ; Randomizer
    AND      L99EF,y                   ; 0x5a89 $9A79 39 EF 99                 ; refer to table at $5A06 (+17 +18)
    BNE      L9A82                     ; 0x5a8c $9A7C D0 04                    ;
    LDA      #$E0                      ; 0x5a8e $9A7E A9 E0                    ; A = E0
    STA      $AF,x                     ; 0x5a90 $9A80 95 AF                    ;; Various enemy state variables
L9A82:                                                                          ;
    LDY      #$01                      ; 0x5a92 $9A82 A0 01                    ; Y = 01
    LDA      $A1,x                     ; 0x5a94 $9A84 B5 A1                    ; Enemy Code
    CMP      #$14                      ; 0x5a96 $9A86 C9 14                    ; 14 = Orange Moblin
    BEQ      L9AA2                     ; 0x5a98 $9A88 F0 18                    ;
    CMP      #$17                      ; 0x5a9a $9A8A C9 17                    ; 17 = Orange Daira
    BEQ      L9AA4                     ; 0x5a9c $9A8C F0 16                    ;
    CMP      #$18                      ; 0x5a9e $9A8E C9 18                    ; 18 = Red Daira
    BEQ      L9AA4                     ; 0x5aa0 $9A90 F0 12                    ;
    LDA      $051B,x                   ; 0x5aa2 $9A92 BD 1B 05                 ; Randomizer
    LSR                                ; 0x5aa5 $9A95 4A                       ;
    BCS      L9A9E                     ; 0x5aa6 $9A96 B0 06                    ;
    AND      #$02                      ; 0x5aa8 $9A98 29 02                    ; keep bits .... ..x.
    TAY                                ; 0x5aaa $9A9A A8                       ;
    INY                                ; 0x5aab $9A9B C8                       ;
    BNE      L9AA4                     ; 0x5aac $9A9C D0 06                    ;
L9A9E:                                                                          ;
    LDA      $17                       ; 0x5aae $9A9E A5 17                    ; Link's shield position
    BNE      L9AA4                     ; 0x5ab0 $9AA0 D0 02                    ;
L9AA2:                                                                          ;
    INY                                ; 0x5ab2 $9AA2 C8                       ;
    INY                                ; 0x5ab3 $9AA3 C8                       ;
L9AA4:                                                                          ;
    STY      $81,x                     ; 0x5ab4 $9AA4 94 81                    ;; Current Animation Frame for Enemys
    LDA      #$18                      ; 0x5ab6 $9AA6 A9 18                    ; A = 18
    STA      $0504,x                   ; 0x5ab8 $9AA8 9D 04 05                 ; delay between axe is back and throw
L9AAB:                                                                          ;
    LDA      #$00                      ; 0x5abb $9AAB A9 00                    ; A = 00
    STA      $71,x                     ; 0x5abd $9AAD 95 71                    ; Enemy X Velocity
    LDA      $A7                       ; 0x5abf $9AAF A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    AND      #$03                      ; 0x5ac1 $9AB1 29 03                    ; keep bits .... ..xx
    BNE      L9ACE                     ; 0x5ac3 $9AB3 D0 19                    ;
    LDA      $0742                     ; 0x5ac5 $9AB5 AD 42 07                 ; Left/Right buttons held
L9AB8:                                                                          ;
    BEQ      L9ABE                     ; 0x5ac8 $9AB8 F0 04                    ;
    LDA      $70                       ; 0x5aca $9ABA A5 70                    ; Link's X Velocity
    BNE      L9AC9                     ; 0x5acc $9ABC D0 0B                    ;
L9ABE:                                                                          ;
    LDY      #$04                      ; 0x5ace $9ABE A0 04                    ; Y = 04 (0000 0100)
    LDA      $12                       ; 0x5ad0 $9AC0 A5 12                    ;; Frame Counter (ascending)
    AND      #$40                      ; 0x5ad2 $9AC2 29 40                    ; keep bits .x.. ....
    BNE      L9AC8                     ; 0x5ad4 $9AC4 D0 02                    ;
    LDY      #$FC                      ; 0x5ad6 $9AC6 A0 FC                    ; Y = FC (1111 1100) (-4)
L9AC8:                                                                          ;
    TYA                                ; 0x5ad8 $9AC8 98                       ;
L9AC9:                                                                          ;
    STA      $71,x                     ; 0x5ad9 $9AC9 95 71                    ; Enemy X Velocity
    ASL                                ; 0x5adb $9ACB 0A                       ;
    ROR      $71,x                     ; 0x5adc $9ACC 76 71                    ;; Enemy X Velocity
L9ACE:                                                                          ;
    RTS                                ; 0x5ade $9ACE 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Daira:                                                          ;
.byt    $04,$03                        ; 0x5adf $9ACF 04 03                    ;Table for Daira (Orange, Red)
; ---------------------------------------------------------------------------- ;
bank1_code20:                                                                   ;
    LDA      $81,x                     ; 0x5ae1 $9AD1 B5 81                    ;; Current Animation Frame for Enemys
    BEQ      L9B04                     ; 0x5ae3 $9AD3 F0 2F                    ;
    LDA      $0504,x                   ; 0x5ae5 $9AD5 BD 04 05                 ;; Timer for Enemy
    BNE      L9B04                     ; 0x5ae8 $9AD8 D0 2A                    ;
    INC      $81,x                     ; 0x5aea $9ADA F6 81                    ;; Current Animation Frame for Enemys
    LDY      $A1,x                     ; 0x5aec $9ADC B4 A1                    ; Enemy Code
    LDA      $81,x                     ; 0x5aee $9ADE B5 81                    ;; Current Animation Frame for Enemys
    CMP      L9AB8,y                   ; 0x5af0 $9AE0 D9 B8 9A                 ; refer to table at $5ACF (+17 +18)
    BEQ      L9B05                     ; 0x5af3 $9AE3 F0 20                    ;
    CMP      #$02                      ; 0x5af5 $9AE5 C9 02                    ;
    BNE      L9AFF                     ; 0x5af7 $9AE7 D0 16                    ;
    JSR      bank7_Display             ; 0x5af9 $9AE9 20 11 EF                 ;
    JSR      bank7_code39              ; 0x5afc $9AEC 20 58 E5                 ;
    LDA      $A1,x                     ; 0x5aff $9AEF B5 A1                    ; Enemy Code
    CMP      #$18                      ; 0x5b01 $9AF1 C9 18                    ; 18 = Red Daira
    BNE      L9AFF                     ; 0x5b03 $9AF3 D0 0A                    ;
    JSR      bank7_Spawn_New_Projectile; 0x5b05 $9AF5 20 CE DB                 ; Spawn New Projectile
    BCS      L9AFF                     ; 0x5b08 $9AF8 B0 05                    ;
    LDA      #$07                      ; 0x5b0a $9AFA A9 07                    ; A = 07 (07 = axe)
    STA      $87,y                     ; 0x5b0c $9AFC 99 87 00                 ;
L9AFF:                                                                          ;
    LDA      #$05                      ; 0x5b0f $9AFF A9 05                    ; A = 05 (delay when axe is up and forward)
    STA      $0504,x                   ; 0x5b11 $9B01 9D 04 05                 ;; Timer for Enemy
L9B04:                                                                          ;
    RTS                                ; 0x5b14 $9B04 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B05:                                                                          ;
    LDA      #$00                      ; 0x5b15 $9B05 A9 00                    ; A = 00
    STA      $81,x                     ; 0x5b17 $9B07 95 81                    ;; Current Animation Frame for Enemys
    RTS                                ; 0x5b19 $9B09 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B0A:                                                                          ;
    LDA      $043E,x                   ; 0x5b1a $9B0A BD 3E 04                 ;
    BEQ      L9B1E                     ; 0x5b1d $9B0D F0 0F                    ;
    DEC      $043E,x                   ; 0x5b1f $9B0F DE 3E 04                 ;
    BPL      L9B1A                     ; 0x5b22 $9B12 10 06                    ;
    INC      $043E,x                   ; 0x5b24 $9B14 FE 3E 04                 ;
    INC      $043E,x                   ; 0x5b27 $9B17 FE 3E 04                 ;
L9B1A:                                                                          ;
    STA      $71,x                     ; 0x5b2a $9B1A 95 71                    ; Enemy X Velocity
    PLA                                ; 0x5b2c $9B1C 68                       ;
    PLA                                ; 0x5b2d $9B1D 68                       ;
L9B1E:                                                                          ;
    JMP      L9B22                     ; 0x5b2e $9B1E 4C 22 9B                 ; skip to $5B22
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B21:                                                                          ;
    RTS                                ; 0x5b31 $9B21 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B22:                                                                          ;
    LDA      $A8,x                     ; 0x5b32 $9B22 B5 A8                    ;; Enemy State
    AND      #$03                      ; 0x5b34 $9B24 29 03                    ; keep bits .... ..xx
    BNE      L9B21                     ; 0x5b36 $9B26 D0 F9                    ;
L9B2A     = * + $0002                                                          ;
    JMP      bank7_Simple_Horizontal_Movement; 0x5b38 $9B28 4C B8 DE               ; Simple Horizontal Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Moby:                                                           ;
;20 = X Velocity when facing right                                             ;
;E0 = X Velocity when facing left                                              ;
;30 = distance from left side of the screen, facing right                      ;
;D0 = distance from right side of the screen, facing left                      ;
.byt    $20,$E0                        ; 0x5b3b $9B2B 20 E0                    ;
L9B2D:                                                                          ;
.byt    $30,$D0,$00,$F8                ; 0x5b3d $9B2D 30 D0 00 F8              ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Generators:                                               ;
    LDA      $12                       ; 0x5b41 $9B31 A5 12                    ;; Frame Counter (ascending)
    AND      #$7F                      ; 0x5b43 $9B33 29 7F                    ; keep bits .xxx xxxx
    BNE      L9B44                     ; 0x5b45 $9B35 D0 0D                    ;
    LDA      $A1,x                     ; 0x5b47 $9B37 B5 A1                    ; Enemy Code
    STA      $0D                       ; 0x5b49 $9B39 85 0D                    ;
    LDX      #$05                      ; 0x5b4b $9B3B A2 05                    ; X = 05
L9B3D:                                                                          ;
    LDA      $B6,x                     ; 0x5b4d $9B3D B5 B6                    ; Generated Enemy Slot
    BEQ      L9B48                     ; 0x5b4f $9B3F F0 07                    ; if 0, goto Moby init routine
    DEX                                ; 0x5b51 $9B41 CA                       ;
    BPL      L9B3D                     ; 0x5b52 $9B42 10 F9                    ; if (X >= 0) loop to $5B3D
L9B44:                                                                          ;
    LDX      $10                       ; 0x5b54 $9B44 A6 10                    ;; used as monster x register ;draw boss hp bar
    SEC                                ; 0x5b56 $9B46 38                       ;
    RTS                                ; 0x5b57 $9B47 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B48:                                                                          ;
    INC      $B6,x                     ; 0x5b58 $9B48 F6 B6                    ;; Generated Enemy Slot
    LDA      #$FF                      ; 0x5b5a $9B4A A9 FF                    ; A = FF
    STA       !$BC,x                   ; 0x5b5c $9B4C 9D BC 00                 ;
    LDA      #$03                      ; 0x5b5f $9B4F A9 03                    ; A = 03
    STA       !$C2,x                   ; 0x5b61 $9B51 9D C2 00                 ; Enemy Current HP
    LDA      #$1E                      ; 0x5b64 $9B54 A9 1E                    ; 1E = Moby
    STA      $A1,x                     ; 0x5b66 $9B56 95 A1                    ; Moby assigned to slot #X
    LDA      $051B,x                   ; 0x5b68 $9B58 BD 1B 05                 ; Randomizer
    AND      #$01                      ; 0x5b6b $9B5B 29 01                    ; keep bits .... ...x
    TAY                                ; 0x5b6d $9B5D A8                       ;
    LDA      $0D                       ; 0x5b6e $9B5E A5 0D                    ;
    CMP      #$21                      ; 0x5b70 $9B60 C9 21                    ; 21 = Moblin Generator
    BNE      L9B66                     ; 0x5b72 $9B62 D0 02                    ;
    INY                                ; 0x5b74 $9B64 C8                       ;
    INY                                ; 0x5b75 $9B65 C8                       ;
L9B66:                                                                          ;
    LDA      $072C                     ; 0x5b76 $9B66 AD 2C 07                 ; Scrolling Offset Low Byte
    ADC      L9B2D,y                   ; 0x5b79 $9B69 79 2D 9B                 ; refer to table at $5B2B (offset +2)
    STA      $4E,x                     ; 0x5b7c $9B6C 95 4E                    ; Enemy X position (low byte)
    LDA      $072A                     ; 0x5b7e $9B6E AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0x5b81 $9B71 69 00                    ;
    STA      $3C,x                     ; 0x5b83 $9B73 95 3C                    ; Enemy X position (high byte)
    LDA      #$20                      ; 0x5b85 $9B75 A9 20                    ; Moby starting Y position
    STA      $2A,x                     ; 0x5b87 $9B77 95 2A                    ; ALSO Y velocity when flying down
    STA      $057E,x                   ; 0x5b89 $9B79 9D 7E 05                 ; Enemy Y Velocity
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x5b8c $9B7C 20 91 DC; Determine Enemy Facing Direction
    LDA      #$01                      ; 0x5b8f $9B7F A9 01                    ; A = 01
    STA      $1A,x                     ; 0x5b91 $9B81 95 1A                    ;
    LSR                                ; 0x5b93 $9B83 4A                       ; A >> 0
L9B86     = * + $0002                                                          ;
    STA      $040E,x                   ; 0x5b94 $9B84 9D 0E 04                 ; Enemy Hit State
    STA      $AF,x                     ; 0x5b97 $9B87 95 AF                    ;; Various enemy state variables
    STA      $71,x                     ; 0x5b99 $9B89 95 71                    ; Enemy X Velocity
    STA      $0444,x                   ; 0x5b9b $9B8B 9D 44 04                 ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
    STX      $00                       ; 0x5b9e $9B8E 86 00                    ;
    LDX      $10                       ; 0x5ba0 $9B90 A6 10                    ;; used as monster x register ;draw boss hp bar
    CLC                                ; 0x5ba2 $9B92 18                       ;
    RTS                                ; 0x5ba3 $9B93 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Moby:                                                     ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x5ba4 $9B94 20 02 DA                 ; Enemy Stops when Hit
    LDA      $2A,x                     ; 0x5ba7 $9B97 B5 2A                    ; Enemy Y position
    CMP      $29                       ; 0x5ba9 $9B99 C5 29                    ; Link  Y position
    BCC      L9BA7                     ; 0x5bab $9B9B 90 0A                    ;
    LDY      $60,x                     ; 0x5bad $9B9D B4 60                    ; Moby facing direction ?
    LDA      L9B2A,y                   ; 0x5baf $9B9F B9 2A 9B                 ; refer to table at $5B2B (offset +1)
    STA      $71,x                     ; 0x5bb2 $9BA2 95 71                    ; Enemy X velocity
    JSR      LDAC7                     ; 0x5bb4 $9BA4 20 C7 DA                 ; Set Enemy Y Velocity to 0
L9BA7:                                                                          ;
    JSR      bank7_Simple_Vertical_Movement; 0x5bb7 $9BA7 20 C8 DE                 ; Simple Vertical Movement
    JSR      bank7_Simple_Horizontal_Movement; 0x5bba $9BAA 20 B8 DE               ; Simple Horizontal Movement
    JSR      LDE40                     ; 0x5bbd $9BAD 20 40 DE                 ;
    JMP      bank7_Link_Collision_Detection; 0x5bc0 $9BB0 4C C1 D6                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Geldarm:                                                        ;
.byt    $FF,$01                        ; 0x5bc3 $9BB3 FF 01                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Geldarm:                                                  ;
    LDA      $AF,x                     ; 0x5bc5 $9BB5 B5 AF                    ; 0 = stretching/shrinking, 1 = idle
    BNE      L9BEE                     ; 0x5bc7 $9BB7 D0 35                    ; if not 0, skip to $5BEE
    LDY      $60,x                     ; 0x5bc9 $9BB9 B4 60                    ;; Enemy facing direction
    BNE      L9BCA                     ; 0x5bcb $9BBB D0 0D                    ;
    LDA      $2A,x                     ; 0x5bcd $9BBD B5 2A                    ; Enemy Y position
    CLC                                ; 0x5bcf $9BBF 18                       ;
    ADC      bank1_Table_for_Geldarm,y ; 0x5bd0 $9BC0 79 B3 9B                 ;
    STA      $2A,x                     ; 0x5bd3 $9BC3 95 2A                    ;; Enemy Y Position
    LDA      $0504,x                   ; 0x5bd5 $9BC5 BD 04 05                 ;; Timer for Enemy
    BNE      L9C35                     ; 0x5bd8 $9BC8 D0 6B                    ;
L9BCA:                                                                          ;
L9BCB     = * + $0001                                                          ;
    LDA      $2A,x                     ; 0x5bda $9BCA B5 2A                    ;; Enemy Y Position
    CLC                                ; 0x5bdc $9BCC 18                       ;
    ADC      bank1_Table_for_Geldarm,y ; 0x5bdd $9BCD 79 B3 9B                 ; add FF (-1) or 01 (1)
    STA      $2A,x                     ; 0x5be0 $9BD0 95 2A                    ;; Enemy Y Position
    LDA      #$05                      ; 0x5be2 $9BD2 A9 05                    ; A = 05
    STA      $0504,x                   ; 0x5be4 $9BD4 9D 04 05                 ; coefficient of restretching speed (0 = fast)
    LDA      $81,x                     ; 0x5be7 $9BD7 B5 81                    ;; Current Animation Frame for Enemys
    SEC                                ; 0x5be9 $9BD9 38                       ;
    SBC      $2A,x                     ; 0x5bea $9BDA F5 2A                    ;; Enemy Y Position
    BNE      L9BE6                     ; 0x5bec $9BDC D0 08                    ;
    LDA      #$80                      ; 0x5bee $9BDE A9 80                    ; A = 80 (delay before restretching)
    STA      $0504,x                   ; 0x5bf0 $9BE0 9D 04 05                 ;; Timer for Enemy
    JMP      L9C2C                     ; 0x5bf3 $9BE3 4C 2C 9C                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BE6:                                                                          ;
    CMP      #$40                      ; 0x5bf6 $9BE6 C9 40                    ; shrink to this height (8 tiles)
    BNE      L9C3D                     ; 0x5bf8 $9BE8 D0 53                    ;
    LDA      #$01                      ; 0x5bfa $9BEA A9 01                    ; A = 01
    STA      $AF,x                     ; 0x5bfc $9BEC 95 AF                    ; 01 = Geldarm is not moving
L9BEE:                                                                          ;
    LDA      $C9                       ; 0x5bfe $9BEE A5 C9                    ;
    BNE      L9C3D                     ; 0x5c00 $9BF0 D0 4B                    ;
    LDA      $2A,x                     ; 0x5c02 $9BF2 B5 2A                    ;; Enemy Y Position
    ADC      #$08                      ; 0x5c04 $9BF4 69 08                    ; 08 -> 04 : Geldarm's foot invulnerable
    STA      $05                       ; 0x5c06 $9BF6 85 05                    ;
    LDA      $81,x                     ; 0x5c08 $9BF8 B5 81                    ;; Current Animation Frame for Enemys
    SEC                                ; 0x5c0a $9BFA 38                       ;
    SBC      $2A,x                     ; 0x5c0b $9BFB F5 2A                    ;; Enemy Y Position
    STA      $07                       ; 0x5c0d $9BFD 85 07                    ;
    LDA      $CD                       ; 0x5c0f $9BFF A5 CD                    ;
    STA      $04                       ; 0x5c11 $9C01 85 04                    ;
    LDA      #$08                      ; 0x5c13 $9C03 A9 08                    ; Geldarm's hit detection on right side
    STA      $06                       ; 0x5c15 $9C05 85 06                    ;
    JSR      bank7_code44              ; 0x5c17 $9C07 20 A2 E9                 ; sword hit detection on body
    JSR      bank7_idem__maybe         ; 0x5c1a $9C0A 20 F9 E9                 ; idem?
    BCC      L9C1E                     ; 0x5c1d $9C0D 90 0F                    ;
    LDA      #$00                      ; 0x5c1f $9C0F A9 00                    ; A = 00
    STA      $AF,x                     ; 0x5c21 $9C11 95 AF                    ;; Various enemy state variables
    LDA      #$01                      ; 0x5c23 $9C13 A9 01                    ; A = 01
    STA      $0504,x                   ; 0x5c25 $9C15 9D 04 05                 ;; Timer for Enemy
    LDA      #$10                      ; 0x5c28 $9C18 A9 10                    ; A = 10
    STA      $ED                       ; 0x5c2a $9C1A 85 ED                    ; sound effect for Geldarm's body hit
    BNE      L9C2C                     ; 0x5c2c $9C1C D0 0E                    ;
L9C1E:                                                                          ;
    JSR      bank7_code43              ; 0x5c2e $9C1E 20 75 E9                 ;
    JSR      bank7_idem__maybe         ; 0x5c31 $9C21 20 F9 E9                 ;
    BCC      L9C29                     ; 0x5c34 $9C24 90 03                    ;
    JSR      bank7_Link_Hit_Routine    ; 0x5c36 $9C26 20 EF E2                 ; Link Hit Routine
L9C29:                                                                          ;
    JMP      L9C3D                     ; 0x5c39 $9C29 4C 3D 9C                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C2C:                                                                          ;
    LDA      $60,x                     ; 0x5c3c $9C2C B5 60                    ;; Enemy facing direction
    EOR      #$01                      ; 0x5c3e $9C2E 49 01                    ; flip bits .... ...x
    STA      $60,x                     ; 0x5c40 $9C30 95 60                    ;; Enemy facing direction
    JMP      L9C3D                     ; 0x5c42 $9C32 4C 3D 9C                 ; goto $5C3D
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C35:                                                                          ;
    LDA      $2A,x                     ; 0x5c45 $9C35 B5 2A                    ;; Enemy Y Position
    SEC                                ; 0x5c47 $9C37 38                       ;
    SBC      bank1_Table_for_Geldarm,y ; 0x5c48 $9C38 F9 B3 9B                 ; subtract FF (-1) or 01 (1)
    STA      $2A,x                     ; 0x5c4b $9C3B 95 2A                    ;; Enemy Y Position
L9C3D:                                                                          ;
    JSR      LDE40                     ; 0x5c4d $9C3D 20 40 DE                 ; goto $1DE40 (Next Enemy)
    JMP      bank7_Link_Collision_Detection; 0x5c50 $9C40 4C C1 D6                 ; goto $1D6C1
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_DumbMoblin:                                               ;
;Related to Dumb Moblin animation                                              ;
    LDA      $12                       ; 0x5c53 $9C43 A5 12                    ;; Frame Counter (ascending)
    AND      #$10                      ; 0x5c55 $9C45 29 10                    ; keep bits ...x ....
    LSR                                ; 0x5c57 $9C47 4A                       ;
    LSR                                ; 0x5c58 $9C48 4A                       ;
    LSR                                ; 0x5c59 $9C49 4A                       ;
    LSR                                ; 0x5c5a $9C4A 4A                       ;
    ADC      #$03                      ; 0x5c5b $9C4B 69 03                    ;
    STA      $81,x                     ; 0x5c5d $9C4D 95 81                    ; Current Animation Frame for Enemy
    JSR      bank1_Enemy_Routines2_Moblin; 0x5c5f $9C4F 20 A4 9C                 ; goto $5CA4
    LDA      $91,x                     ; 0x5c62 $9C52 B5 91                    ;
    CLC                                ; 0x5c64 $9C54 18                       ;
    ADC      #$08                      ; 0x5c65 $9C55 69 08                    ;
    TAY                                ; 0x5c67 $9C57 A8                       ;
    LDA      $2A,x                     ; 0x5c68 $9C58 B5 2A                    ; Enemy Y position
    ADC      #$10                      ; 0x5c6a $9C5A 69 10                    ;
    STA      L0000                     ; 0x5c6c $9C5C 85 00                    ;
    LDA      $CD                       ; 0x5c6e $9C5E A5 CD                    ;
    STA      $01                       ; 0x5c70 $9C60 85 01                    ;
    LDX      #$38                      ; 0x5c72 $9C62 A2 38                    ; X = 38
    LDA      $12                       ; 0x5c74 $9C64 A5 12                    ;; Frame Counter (ascending)
    AND      #$08                      ; 0x5c76 $9C66 29 08                    ; keep bits .... x...
    BNE      L9C6C                     ; 0x5c78 $9C68 D0 02                    ;
    LDX      #$4A                      ; 0x5c7a $9C6A A2 4A                    ; X = 4A
L9C6C:                                                                          ;
    JMP      LF0D7                     ; 0x5c7c $9C6C 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Goriya:                                                   ;
    LDY      #$0C                      ; 0x5c7f $9C6F A0 0C                    ; Y = 0C (related to tile mapping for throw)
    LDA      $81,x                     ; 0x5c81 $9C71 B5 81                    ; Current Animation Frame for Enemy
    BEQ      L9C7D                     ; 0x5c83 $9C73 F0 08                    ;
    CMP      #$01                      ; 0x5c85 $9C75 C9 01                    ;
    BNE      L9C8B                     ; 0x5c87 $9C77 D0 12                    ;
    LDY      #$08                      ; 0x5c89 $9C79 A0 08                    ; Y = 08
    BNE      L9C8B                     ; 0x5c8b $9C7B D0 0E                    ;
L9C7D:                                                                          ;
    LDY      #$00                      ; 0x5c8d $9C7D A0 00                    ; Y = 00
    LDA      $71,x                     ; 0x5c8f $9C7F B5 71                    ;; Enemy X Velocity
    BEQ      L9C8B                     ; 0x5c91 $9C81 F0 08                    ;
    LDA      $12                       ; 0x5c93 $9C83 A5 12                    ;; Frame Counter (ascending)
    AND      #$08                      ; 0x5c95 $9C85 29 08                    ; keep bits .... x...
    BEQ      L9C8B                     ; 0x5c97 $9C87 F0 02                    ;
    LDY      #$04                      ; 0x5c99 $9C89 A0 04                    ; Y = 04
L9C8B:                                                                          ;
    TYA                                ; 0x5c9b $9C8B 98                       ;
    LDY      $91,x                     ; 0x5c9c $9C8C B4 91                    ;
    TAX                                ; 0x5c9e $9C8E AA                       ;
    JSR      LF1F4                     ; 0x5c9f $9C8F 20 F4 F1                 ;
    JMP      LF0D7                     ; 0x5ca2 $9C92 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Tables_for_Moblin_and_Spear__before_throw__tile_mapping_and_offsets:      ;
.byt    $24,$1E,$24,$2A,$30,$36        ; 0x5ca5 $9C95 24 1E 24 2A 30 36        ;
L9C9B:                                                                          ;
.byt    $04,$F8,$FC,$08                ; 0x5cab $9C9B 04 F8 FC 08              ;
L9C9F:                                                                          ;
.byt    $00,$01,$00,$01,$01            ; 0x5caf $9C9F 00 01 00 01 01           ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Moblin:                                                   ;
    LDA      $02                       ; 0x5cb4 $9CA4 A5 02                    ;
    STA      $D9                       ; 0x5cb6 $9CA6 85 D9                    ; Thunder Spell modifier ?
    LDA      $81,x                     ; 0x5cb8 $9CA8 B5 81                    ;; Current Animation Frame for Enemys
    CMP      #$02                      ; 0x5cba $9CAA C9 02                    ;
    BNE      L9CB8                     ; 0x5cbc $9CAC D0 0A                    ;
    LDA      $0504,x                   ; 0x5cbe $9CAE BD 04 05                 ;; Timer for Enemy
    CMP      #$08                      ; 0x5cc1 $9CB1 C9 08                    ;
    LDA      $81,x                     ; 0x5cc3 $9CB3 B5 81                    ;; Current Animation Frame for Enemys
    BCS      L9CB8                     ; 0x5cc5 $9CB5 B0 01                    ;
    LSR                                ; 0x5cc7 $9CB7 4A                       ;
L9CB8:                                                                          ;
    STA      $05E4                     ; 0x5cc8 $9CB8 8D E4 05                 ;
    TAX                                ; 0x5ccb $9CBB AA                       ;
    LDA      bank1_Tables_for_Moblin_and_Spear__before_throw__tile_mapping_and_offsets,x; 0x5ccc $9CBC BD 95 9C;
    CPX      #$00                      ; 0x5ccf $9CBF E0 00                    ;
    BNE      L9CD4                     ; 0x5cd1 $9CC1 D0 11                    ;
    LDX      $10                       ; 0x5cd3 $9CC3 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDY      $71,x                     ; 0x5cd5 $9CC5 B4 71                    ; Enemy X Velocity
    BEQ      L9CD4                     ; 0x5cd7 $9CC7 F0 0B                    ;
    LDY      #$24                      ; 0x5cd9 $9CC9 A0 24                    ; Y = 24
    LDA      $12                       ; 0x5cdb $9CCB A5 12                    ;; Frame Counter (ascending)
    AND      #$08                      ; 0x5cdd $9CCD 29 08                    ; keep bits .... x...
    BEQ      L9CD3                     ; 0x5cdf $9CCF F0 02                    ;
    LDY      #$1E                      ; 0x5ce1 $9CD1 A0 1E                    ; Y = 1E
L9CD3:                                                                          ;
    TYA                                ; 0x5ce3 $9CD3 98                       ;
L9CD4:                                                                          ;
    LDX      $10                       ; 0x5ce4 $9CD4 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDY      $91,x                     ; 0x5ce6 $9CD6 B4 91                    ;
    TAX                                ; 0x5ce8 $9CD8 AA                       ;
    JSR      LF1F4                     ; 0x5ce9 $9CD9 20 F4 F1                 ;
    JSR      LF1F4                     ; 0x5cec $9CDC 20 F4 F1                 ;
    STX      $0D                       ; 0x5cef $9CDF 86 0D                    ;
    LDX      $10                       ; 0x5cf1 $9CE1 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      $C9                       ; 0x5cf3 $9CE3 A5 C9                    ;
    BNE      L9D56                     ; 0x5cf5 $9CE5 D0 6F                    ;
    LDA      $05E4                     ; 0x5cf7 $9CE7 AD E4 05                 ;
    BEQ      L9D56                     ; 0x5cfa $9CEA F0 6A                    ;
    CMP      #$01                      ; 0x5cfc $9CEC C9 01                    ;
    BNE      L9CF6                     ; 0x5cfe $9CEE D0 06                    ;
    LDA      $02                       ; 0x5d00 $9CF0 A5 02                    ;
    EOR      #$03                      ; 0x5d02 $9CF2 49 03                    ; flip bits .... ..xx
    STA      $02                       ; 0x5d04 $9CF4 85 02                    ;
L9CF6:                                                                          ;
    LDA      L0000                     ; 0x5d06 $9CF6 A5 00                    ;
    SEC                                ; 0x5d08 $9CF8 38                       ;
    SBC      #$18                      ; 0x5d09 $9CF9 E9 18                    ;
    STA      L0000                     ; 0x5d0b $9CFB 85 00                    ;
    LDA      $05E4                     ; 0x5d0d $9CFD AD E4 05                 ;
    CMP      #$03                      ; 0x5d10 $9D00 C9 03                    ;
    BCC      L9D08                     ; 0x5d12 $9D02 90 04                    ;
    LDA      $2A,x                     ; 0x5d14 $9D04 B5 2A                    ; Enemy Y Position
    STA      L0000                     ; 0x5d16 $9D06 85 00                    ;
L9D08:                                                                          ;
    LDA      $05E4                     ; 0x5d18 $9D08 AD E4 05                 ;
    TAX                                ; 0x5d1b $9D0B AA                       ;
    DEX                                ; 0x5d1c $9D0C CA                       ;
    LDA      L9C9F,x                   ; 0x5d1d $9D0D BD 9F 9C                 ; refer to table at $5C95 (offset +A)
    TAX                                ; 0x5d20 $9D10 AA                       ;
    LDA      $D9                       ; 0x5d21 $9D11 A5 D9                    ;; Thunder Spell modifier ?
    CMP      #$01                      ; 0x5d23 $9D13 C9 01                    ;
    BNE      L9D19                     ; 0x5d25 $9D15 D0 02                    ;
    INX                                ; 0x5d27 $9D17 E8                       ;
    INX                                ; 0x5d28 $9D18 E8                       ;
L9D19:                                                                          ;
    TYA                                ; 0x5d29 $9D19 98                       ;
    PHA                                ; 0x5d2a $9D1A 48                       ;
    LDA      L9C9B,x                   ; 0x5d2b $9D1B BD 9B 9C                 ; refer to table at $9C95 (offset +3)
    LDX      $10                       ; 0x5d2e $9D1E A6 10                    ;; used as monster x register ;draw boss hp bar
    LDY      $0504,x                   ; 0x5d30 $9D20 BC 04 05                 ;; Timer for Enemy
    CPY      #$03                      ; 0x5d33 $9D23 C0 03                    ;
    BCC      L9D2C                     ; 0x5d35 $9D25 90 05                    ;
    CPY      #$0D                      ; 0x5d37 $9D27 C0 0D                    ;
    BCS      L9D2C                     ; 0x5d39 $9D29 B0 01                    ;
    ASL                                ; 0x5d3b $9D2B 0A                       ;
L9D2C:                                                                          ;
    CLC                                ; 0x5d3c $9D2C 18                       ;
    ADC      $01                       ; 0x5d3d $9D2D 65 01                    ;
    STA      $01                       ; 0x5d3f $9D2F 85 01                    ;
    PLA                                ; 0x5d41 $9D31 68                       ;
    TAY                                ; 0x5d42 $9D32 A8                       ;
    LDX      $0D                       ; 0x5d43 $9D33 A6 0D                    ;
    JSR      LF0D7                     ; 0x5d45 $9D35 20 D7 F0                 ;
    LDA      $05E4                     ; 0x5d48 $9D38 AD E4 05                 ;
    CLC                                ; 0x5d4b $9D3B 18                       ;
    ADC      #$01                      ; 0x5d4c $9D3C 69 01                    ;
    AND      #$03                      ; 0x5d4e $9D3E 29 03                    ; keep bits .... ..xx
    BNE      L9D56                     ; 0x5d50 $9D40 D0 14                    ;
    LDA      #$F3                      ; 0x5d52 $9D42 A9 F3                    ; A = F3
    LDX      $D9                       ; 0x5d54 $9D44 A6 D9                    ;; Thunder Spell modifier ?
    CPX      #$02                      ; 0x5d56 $9D46 E0 02                    ;
    BEQ      L9D50                     ; 0x5d58 $9D48 F0 06                    ;
    LDA      #$0C                      ; 0x5d5a $9D4A A9 0C                    ; A = 0C
    INY                                ; 0x5d5c $9D4C C8                       ;
    INY                                ; 0x5d5d $9D4D C8                       ;
    INY                                ; 0x5d5e $9D4E C8                       ;
    INY                                ; 0x5d5f $9D4F C8                       ;
L9D50:                                                                          ;
    ADC      $01FB,y                   ; 0x5d60 $9D50 79 FB 01                 ;
L9D54     = * + $0001                                                          ;
    STA      $01FB,y                   ; 0x5d63 $9D53 99 FB 01                 ;
L9D56:                                                                          ;
    LDX      $10                       ; 0x5d66 $9D56 A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x5d68 $9D58 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Daira_backswing_tile_mapping__offset_and_hitbox:                ;
.byt    $10,$12,$14                    ; 0x5d69 $9D59 10 12 14                 ;10 12 14	Tile mapping for Axe frames 1-2-3 (1-2 for Red Daira)
L9D5C:                                                                          ;
.byt    $00,$02,$11                    ; 0x5d6c $9D5C 00 02 11                 ;00 02 11	Y offset for Axe frames 1-2-3 (1-2 for Red Daira)
L9D5F:                                                                          ;
.byt    $0D,$F0,$FB,$F3,$10,$05        ; 0x5d6f $9D5F 0D F0 FB F3 10 05        ;0D F0 FB	X offset - Facing left		F3 10 05	X offset - Facing right
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Daira_Orange:                                             ;
    LDA      #$F6                      ; 0x5d75 $9D65 A9 F6                    ; A = F6
    BNE      L9D6B                     ; 0x5d77 $9D67 D0 02                    ;
bank1_Enemy_Routines2_Daira_Red_:                                               ;
    LDA      #$F5                      ; 0x5d79 $9D69 A9 F5                    ; A = F5
L9D6B:                                                                          ;
    STA      bank1_Various_Tile_Mappings_Daira_Axe_Swing_Frame_1; 0x5d7b $9D6B 8D E6 95;
    LDA      #$00                      ; 0x5d7e $9D6E A9 00                    ;;A = #$00 0000_0000
    STA      $0D                       ; 0x5d80 $9D70 85 0D                    ;
    LDA      $02                       ; 0x5d82 $9D72 A5 02                    ;
    STA      $D9                       ; 0x5d84 $9D74 85 D9                    ;; Thunder Spell modifier ?
    LDA      $A8,x                     ; 0x5d86 $9D76 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x5d88 $9D78 29 04                    ; keep bits .... .x..
    BEQ      L9D91                     ; 0x5d8a $9D7A F0 15                    ;
    LDA      $71,x                     ; 0x5d8c $9D7C B5 71                    ;; Enemy X Velocity
    BEQ      L9D91                     ; 0x5d8e $9D7E F0 11                    ;
    CLC                                ; 0x5d90 $9D80 18                       ;
    ADC      #$08                      ; 0x5d91 $9D81 69 08                    ;
    TAY                                ; 0x5d93 $9D83 A8                       ;
    LDA      #$08                      ; 0x5d94 $9D84 A9 08                    ; A = 08
    CPY      #$11                      ; 0x5d96 $9D86 C0 11                    ; if (Y >= 11)
    BCC      L9D8B                     ; 0x5d98 $9D88 90 01                    ; skip  to $5D8B
    LSR                                ; 0x5d9a $9D8A 4A                       ;
L9D8B:                                                                          ;
    AND      $12                       ; 0x5d9b $9D8B 25 12                    ;; Frame Counter (ascending)
    BNE      L9D91                     ; 0x5d9d $9D8D D0 02                    ;
    INC      $0D                       ; 0x5d9f $9D8F E6 0D                    ;
L9D91:                                                                          ;
    LDY      $81,x                     ; 0x5da1 $9D91 B4 81                    ;; Current Animation Frame for Enemys
    DEY                                ; 0x5da3 $9D93 88                       ;
    STY      L000E                     ; 0x5da4 $9D94 84 0E                    ;
    LDY      $91,x                     ; 0x5da6 $9D96 B4 91                    ;
    LDX      #$16                      ; 0x5da8 $9D98 A2 16                    ; X = 16
    LDA      $0D                       ; 0x5daa $9D9A A5 0D                    ;
    BNE      L9DA0                     ; 0x5dac $9D9C D0 02                    ;
    LDX      #$1A                      ; 0x5dae $9D9E A2 1A                    ; A = 1A
L9DA0:                                                                          ;
    JSR      LF1F4                     ; 0x5db0 $9DA0 20 F4 F1                 ;
    JSR      LF1F4                     ; 0x5db3 $9DA3 20 F4 F1                 ;
    LDA      $C9                       ; 0x5db6 $9DA6 A5 C9                    ;
    BNE      L9DEE                     ; 0x5db8 $9DA8 D0 44                    ;
    LDX      L000E                     ; 0x5dba $9DAA A6 0E                    ;
    BMI      L9DEE                     ; 0x5dbc $9DAC 30 40                    ;
    BNE      L9DBC                     ; 0x5dbe $9DAE D0 0C                    ;
    LDA      $02                       ; 0x5dc0 $9DB0 A5 02                    ;
    EOR      #$03                      ; 0x5dc2 $9DB2 49 03                    ; flip bits .... ..xx
    STA      $02                       ; 0x5dc4 $9DB4 85 02                    ;
    LDA      $03                       ; 0x5dc6 $9DB6 A5 03                    ;
    ORA      #$80                      ; 0x5dc8 $9DB8 09 80                    ; set bits  x... ....
    STA      $03                       ; 0x5dca $9DBA 85 03                    ;
L9DBC:                                                                          ;
    LDA      bank1_Table_for_Daira_backswing_tile_mapping__offset_and_hitbox,x; 0x5dcc $9DBC BD 59 9D; refer to table at $5D59
    TAX                                ; 0x5dcf $9DBF AA                       ;
    JSR      LF0D7                     ; 0x5dd0 $9DC0 20 D7 F0                 ;
    LDA      $2A,x                     ; 0x5dd3 $9DC3 B5 2A                    ; Enemy Y Position
    LDX      L000E                     ; 0x5dd5 $9DC5 A6 0E                    ;
    CLC                                ; 0x5dd7 $9DC7 18                       ;
    ADC      L9D5C,x                   ; 0x5dd8 $9DC8 7D 5C 9D                 ; refer to table at $5D59 (offset +3)
    STA      $01F8,y                   ; 0x5ddb $9DCB 99 F8 01                 ;
    STA      $01FC,y                   ; 0x5dde $9DCE 99 FC 01                 ;
    LDA      $D9                       ; 0x5de1 $9DD1 A5 D9                    ;; Thunder Spell modifier ?
    LSR                                ; 0x5de3 $9DD3 4A                       ;
    BCC      L9DDB                     ; 0x5de4 $9DD4 90 05                    ;
    TXA                                ; 0x5de6 $9DD6 8A                       ;
    CLC                                ; 0x5de7 $9DD7 18                       ;
    ADC      #$03                      ; 0x5de8 $9DD8 69 03                    ;
    TAX                                ; 0x5dea $9DDA AA                       ;
L9DDB:                                                                          ;
    LDA      L9D5F,x                   ; 0x5deb $9DDB BD 5F 9D                 ; refer to table at $5D59 (offset +6)
    PHA                                ; 0x5dee $9DDE 48                       ;
    CLC                                ; 0x5def $9DDF 18                       ;
    ADC      $01FB,y                   ; 0x5df0 $9DE0 79 FB 01                 ;
    STA      $01FB,y                   ; 0x5df3 $9DE3 99 FB 01                 ;
    PLA                                ; 0x5df6 $9DE6 68                       ;
    CLC                                ; 0x5df7 $9DE7 18                       ;
    ADC      $01FF,y                   ; 0x5df8 $9DE8 79 FF 01                 ;
    STA      $01FF,y                   ; 0x5dfb $9DEB 99 FF 01                 ;
L9DEE:                                                                          ;
    LDX      $10                       ; 0x5dfe $9DEE A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x5e00 $9DF0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Lowder:                                                   ;
    LDA      #$3C                      ; 0x5e01 $9DF1 A9 3C                    ; A = 3C
    JMP      LF0CC                     ; 0x5e03 $9DF3 4C CC F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Moby:                                                     ;
    LDA      #$44                      ; 0x5e06 $9DF6 A9 44                    ; A = 44
    JMP      LF0CC                     ; 0x5e08 $9DF8 4C CC F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Megmat:                                                   ;
    LDA      $057E,x                   ; 0x5e0b $9DFB BD 7E 05                 ; Enemy Y Velocity
    LDX      #$40                      ; 0x5e0e $9DFE A2 40                    ;;X = #$40 0100_0000
    CMP      #$02                      ; 0x5e10 $9E00 C9 02                    ;
    BMI      L9E06                     ; 0x5e12 $9E02 30 02                    ;
    INX                                ; 0x5e14 $9E04 E8                       ;
    INX                                ; 0x5e15 $9E05 E8                       ;
L9E06:                                                                          ;
    JMP      LF0D7                     ; 0x5e16 $9E06 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E09:                                                                          ;
    RTS                                ; 0x5e19 $9E09 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table12:                                                                  ;
.byt    $FF,$01                        ; 0x5e1a $9E0A FF 01                    ;
; ---------------------------------------------------------------------------- ;
bank1_Geldarm_body_tiles_layout:                                                ;
    LDA      $040E,x                   ; 0x5e1c $9E0C BD 0E 04                 ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    BEQ      L9E15                     ; 0x5e1f $9E0F F0 04                    ;
    AND      #$03                      ; 0x5e21 $9E11 29 03                    ; keep bits .... ..xx
    STA      $03                       ; 0x5e23 $9E13 85 03                    ;
L9E15:                                                                          ;
    LDA      $C9                       ; 0x5e25 $9E15 A5 C9                    ;
    AND      #$08                      ; 0x5e27 $9E17 29 08                    ; keep bits .... x...
    BNE      L9E09                     ; 0x5e29 $9E19 D0 EE                    ;
    LDA      #$00                      ; 0x5e2b $9E1B A9 00                    ; A = 00
    STA      L0000                     ; 0x5e2d $9E1D 85 00                    ;
    LDA      $81,x                     ; 0x5e2f $9E1F B5 81                    ;; Current Animation Frame for Enemys
    SEC                                ; 0x5e31 $9E21 38                       ;
    SBC      $2A,x                     ; 0x5e32 $9E22 F5 2A                    ;; Enemy Y Position
    STA      $02                       ; 0x5e34 $9E24 85 02                    ;
L9E26:                                                                          ;
    CMP      #$05                      ; 0x5e36 $9E26 C9 05                    ;
    BCC      bank1_Geldarm_head        ; 0x5e38 $9E28 90 08                    ;
    INC      L0000                     ; 0x5e3a $9E2A E6 00                    ;
    SEC                                ; 0x5e3c $9E2C 38                       ;
    SBC      #$05                      ; 0x5e3d $9E2D E9 05                    ;
    JMP      L9E26                     ; 0x5e3f $9E2F 4C 26 9E                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Geldarm_head:                                                             ;
    STA      $01                       ; 0x5e42 $9E32 85 01                    ;
    LDY      $91,x                     ; 0x5e44 $9E34 B4 91                    ;
    TYA                                ; 0x5e46 $9E36 98                       ;
    CLC                                ; 0x5e47 $9E37 18                       ;
    ADC      #$14                      ; 0x5e48 $9E38 69 14                    ;
    STA      $0F                       ; 0x5e4a $9E3A 85 0F                    ;
    LDA      $2A,x                     ; 0x5e4c $9E3C B5 2A                    ; Enemy Y position
    STA      $0200,y                   ; 0x5e4e $9E3E 99 00 02                 ;
    LDA      #$62                      ; 0x5e51 $9E41 A9 62                    ; A = 62 (Geldarm head tile code)
    STA      $0201,y                   ; 0x5e53 $9E43 99 01 02                 ;
    LDA      $02                       ; 0x5e56 $9E46 A5 02                    ;
    BNE      bank1_Geldarm_body_Tile_Mapping; 0x5e58 $9E48 D0 09                   ;
    TYA                                ; 0x5e5a $9E4A 98                       ;
    CLC                                ; 0x5e5b $9E4B 18                       ;
    ADC      #$04                      ; 0x5e5c $9E4C 69 04                    ;
    STA      $0F                       ; 0x5e5e $9E4E 85 0F                    ;
    JMP      L9E70                     ; 0x5e60 $9E50 4C 70 9E                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Geldarm_body_Tile_Mapping:                                                ;
    LDA      $0200,y                   ; 0x5e63 $9E53 B9 00 02                 ;
    CLC                                ; 0x5e66 $9E56 18                       ;
    ADC      L0000                     ; 0x5e67 $9E57 65 00                    ;
    STA      $0204,y                   ; 0x5e69 $9E59 99 04 02                 ;
    LDA      $01                       ; 0x5e6c $9E5C A5 01                    ;
    BEQ      L9E6B                     ; 0x5e6e $9E5E F0 0B                    ;
    DEC      $01                       ; 0x5e70 $9E60 C6 01                    ;
    LDA      $0204,y                   ; 0x5e72 $9E62 B9 04 02                 ;
    CLC                                ; 0x5e75 $9E65 18                       ;
    ADC      #$01                      ; 0x5e76 $9E66 69 01                    ;
    STA      $0204,y                   ; 0x5e78 $9E68 99 04 02                 ;
L9E6B:                                                                          ;
    LDA      #$64                      ; 0x5e7b $9E6B A9 64                    ; A = 64
    STA      $0205,y                   ; 0x5e7d $9E6D 99 05 02                 ;
L9E70:                                                                          ;
    LDA      $12                       ; 0x5e80 $9E70 A5 12                    ;; Frame Counter (ascending)
    AND      #$10                      ; 0x5e82 $9E72 29 10                    ; keep bits ...x ....
    ASL                                ; 0x5e84 $9E74 0A                       ;
    ASL                                ; 0x5e85 $9E75 0A                       ;
    ORA      $03                       ; 0x5e86 $9E76 05 03                    ;
    STA      $0202,y                   ; 0x5e88 $9E78 99 02 02                 ;
    STA      $0206,y                   ; 0x5e8b $9E7B 99 06 02                 ;
    LDA      $CD                       ; 0x5e8e $9E7E A5 CD                    ;
    STA      $0203,y                   ; 0x5e90 $9E80 99 03 02                 ;
    STA      $0207,y                   ; 0x5e93 $9E83 99 07 02                 ;
    INY                                ; 0x5e96 $9E86 C8                       ;
    INY                                ; 0x5e97 $9E87 C8                       ;
    INY                                ; 0x5e98 $9E88 C8                       ;
    INY                                ; 0x5e99 $9E89 C8                       ;
    CPY      $0F                       ; 0x5e9a $9E8A C4 0F                    ;
    BNE      bank1_Geldarm_body_Tile_Mapping; 0x5e9c $9E8C D0 C5                   ;
    LDY      $91,x                     ; 0x5e9e $9E8E B4 91                    ;
    LDA      $AF,x                     ; 0x5ea0 $9E90 B5 AF                    ;; Various enemy state variables
    BEQ      L9EAF                     ; 0x5ea2 $9E92 F0 1B                    ;
    LDA      $12                       ; 0x5ea4 $9E94 A5 12                    ;; Frame Counter (ascending)
    AND      #$20                      ; 0x5ea6 $9E96 29 20                    ; keep bits ..x. ....
    LSR                                ; 0x5ea8 $9E98 4A                       ;
    LSR                                ; 0x5ea9 $9E99 4A                       ;
    LSR                                ; 0x5eaa $9E9A 4A                       ;
    LSR                                ; 0x5eab $9E9B 4A                       ;
    LSR                                ; 0x5eac $9E9C 4A                       ;
    TAX                                ; 0x5ead $9E9D AA                       ;
    LDA      $0203,y                   ; 0x5eae $9E9E B9 03 02                 ;
    CLC                                ; 0x5eb1 $9EA1 18                       ;
    ADC      bank1_table12,x           ; 0x5eb2 $9EA2 7D 0A 9E                 ; refer to table at $5E0A
    STA      $0207,y                   ; 0x5eb5 $9EA5 99 07 02                 ;
    CLC                                ; 0x5eb8 $9EA8 18                       ;
    ADC      bank1_table12,x           ; 0x5eb9 $9EA9 7D 0A 9E                 ; refer to table at $5E0A
    STA      $0203,y                   ; 0x5ebc $9EAC 99 03 02                 ;
L9EAF:                                                                          ;
    LDX      $10                       ; 0x5ebf $9EAF A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x5ec1 $9EB1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9EB2:                                                                          ;
    LDA      $ED                       ; 0x5ec2 $9EB2 A5 ED                    ;; Sound Effects Type 2; Sound Effects Type 2
    ORA      #$40                      ; 0x5ec4 $9EB4 09 40                    ; set bits  .x.. ....
    STA      $ED                       ; 0x5ec6 $9EB6 85 ED                    ;; Sound Effects Type 2; Sound Effects Type 2
    RTS                                ; 0x5ec8 $9EB8 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_UNUSED_9EB9:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ec9 $9EB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ed1 $9EC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ed9 $9EC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ee1 $9ED1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ee9 $9ED9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ef1 $9EE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ef9 $9EE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f01 $9EF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f09 $9EF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f11 $9F01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f19 $9F09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f21 $9F11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f29 $9F19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f31 $9F21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f39 $9F29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f41 $9F31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f49 $9F39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f51 $9F41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f59 $9F49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f61 $9F51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f69 $9F59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f71 $9F61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f79 $9F69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f81 $9F71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f89 $9F79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f91 $9F81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5f99 $9F89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fa1 $9F91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fa9 $9F99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fb1 $9FA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fb9 $9FA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fc1 $9FB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fc9 $9FB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fd1 $9FC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fd9 $9FC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fe1 $9FD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5fe9 $9FD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ff1 $9FE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x5ff9 $9FE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6001 $9FF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0x6009 $9FF9 FF FF FF FF FF FF FF     ;
; ---------------------------------------------------------------------------- ;
bank1_Area_Pointers_Death_Mountain:                                             ;
.word    bank1_Area_Data_Death_Mountain; 0x6010 $A000 6C A2                    ;Crash (not enough data to make a valid area)
.word    LA33E                         ; 0x6012 $A002 3E A3                    ;Gradual slope climb left
.word    LA398                         ; 0x6014 $A004 98 A3                    ;Grotto with Bots and Goriya
.word    LA3DC                         ; 0x6016 $A006 DC A3                    ;Grotto with Octoroks and Goriya
.word    LA31E                         ; 0x6018 $A008 1E A3                    ;Gradual slope climb right
.word    LA5B6                         ; 0x601a $A00A B6 A5                    ;Generic Bridge
.word    LA362                         ; 0x601c $A00C 62 A3                    ;Grotto with notches in ground (for Octoroks)
.word    LA3B8                         ; 0x601e $A00E B8 A3                    ;Grotto with random lava pits
.word    LA5B6                         ; 0x6020 $A010 B6 A5                    ;Generic Bridge
.word    LA4A4                         ; 0x6022 $A012 A4 A4                    ;
.word    LA362                         ; 0x6024 $A014 62 A3                    ;
.word    LA4C0                         ; 0x6026 $A016 C0 A4                    ;
.word    LA33E                         ; 0x6028 $A018 3E A3                    ;
.word    LA31E                         ; 0x602a $A01A 1E A3                    ;
.word    LA3B8                         ; 0x602c $A01C B8 A3                    ;
.word    LA4D4                         ; 0x602e $A01E D4 A4                    ;
.word    LA408                         ; 0x6030 $A020 08 A4                    ;
.word    L8C96                         ; 0x6032 $A022 96 8C                    ;BG Map Type 5 (dead-end cave)
.word    L8C96                         ; 0x6034 $A024 96 8C                    ;BG Map Type 5 (dead-end cave)
.word    LA432                         ; 0x6036 $A026 32 A4                    ;
.word    LA458                         ; 0x6038 $A028 58 A4                    ;
.word    LA4EC                         ; 0x603a $A02A EC A4                    ;
.word    LA5F6                         ; 0x603c $A02C F6 A5                    ;
.word    LA408                         ; 0x603e $A02E 08 A4                    ;
.word    LA408                         ; 0x6040 $A030 08 A4                    ;
.word    LA432                         ; 0x6042 $A032 32 A4                    ;
.word    LA59B                         ; 0x6044 $A034 9B A5                    ;
.word    bank1_Area_Data_Death_Mountain; 0x6046 $A036 6C A2                    ;
.word    bank1_Area_Data_Death_Mountain; 0x6048 $A038 6C A2                    ;
.word    LA26E                         ; 0x604a $A03A 6E A2                    ;
.word    LA26E                         ; 0x604c $A03C 6E A2                    ;
.word    LA26E                         ; 0x604e $A03E 6E A2                    ;
.word    LA26E                         ; 0x6050 $A040 6E A2                    ;
.word    LA26E                         ; 0x6052 $A042 6E A2                    ;
.word    LA52B                         ; 0x6054 $A044 2B A5                    ;
.word    LA52B                         ; 0x6056 $A046 2B A5                    ;
.word    LA57E                         ; 0x6058 $A048 7E A5                    ;
.word    LA55F                         ; 0x605a $A04A 5F A5                    ;
.word    LA515                         ; 0x605c $A04C 15 A5                    ;
.word    LA298                         ; 0x605e $A04E 98 A2                    ;
.word    LA298                         ; 0x6060 $A050 98 A2                    ;
.word    LA298                         ; 0x6062 $A052 98 A2                    ;
.word    LA298                         ; 0x6064 $A054 98 A2                    ;
.word    LA298                         ; 0x6066 $A056 98 A2                    ;
.word    LA298                         ; 0x6068 $A058 98 A2                    ;
.word    LA298                         ; 0x606a $A05A 98 A2                    ;
.word    LA298                         ; 0x606c $A05C 98 A2                    ;
.word    LA515                         ; 0x606e $A05E 15 A5                    ;
.word    LA53B                         ; 0x6070 $A060 3B A5                    ;
.word    LA53B                         ; 0x6072 $A062 3B A5                    ;
.word    LA53B                         ; 0x6074 $A064 3B A5                    ;
.word    LA515                         ; 0x6076 $A066 15 A5                    ;
.word    LA2DC                         ; 0x6078 $A068 DC A2                    ;
.word    LA2DC                         ; 0x607a $A06A DC A2                    ;
.word    LA2DC                         ; 0x607c $A06C DC A2                    ;
.word    LA2DC                         ; 0x607e $A06E DC A2                    ;
.word    LA2DC                         ; 0x6080 $A070 DC A2                    ;
.word    LA505                         ; 0x6082 $A072 05 A5                    ;
.word    LA505                         ; 0x6084 $A074 05 A5                    ;
.word    LA2BA                         ; 0x6086 $A076 BA A2                    ;
.word    LA2BA                         ; 0x6088 $A078 BA A2                    ;
.word    LA2BA                         ; 0x608a $A07A BA A2                    ;
.word    LA2BA                         ; 0x608c $A07C BA A2                    ;
bank1_Enemy_Pointers_Death_Mountain:                                            ;
.word    L71D8                         ; 0x608e $A07E D8 71                    ;Base Offset is 48A0
.word    L71DA                         ; 0x6090 $A080 DA 71                    ;
.word    L71EB                         ; 0x6092 $A082 EB 71                    ;
.word    L71FA                         ; 0x6094 $A084 FA 71                    ;
.word    L7218                         ; 0x6096 $A086 18 72                    ;
.word    L7223                         ; 0x6098 $A088 23 72                    ;
.word    L7237                         ; 0x609a $A08A 37 72                    ;
.word    L7244                         ; 0x609c $A08C 44 72                    ;
.word    L7256                         ; 0x609e $A08E 56 72                    ;
.word    L7268                         ; 0x60a0 $A090 68 72                    ;
.word    L7273                         ; 0x60a2 $A092 73 72                    ;
.word    L7280                         ; 0x60a4 $A094 80 72                    ;
.word    L728D                         ; 0x60a6 $A096 8D 72                    ;
.word    L729C                         ; 0x60a8 $A098 9C 72                    ;
.word    L72E5                         ; 0x60aa $A09A E5 72                    ;
.word    L72BA                         ; 0x60ac $A09C BA 72                    ;
.word    L72CA                         ; 0x60ae $A09E CA 72                    ;
.word    L72AB                         ; 0x60b0 $A0A0 AB 72                    ;
.word    L72AB                         ; 0x60b2 $A0A2 AB 72                    ;
.word    L72D9                         ; 0x60b4 $A0A4 D9 72                    ;
.word    L72E2                         ; 0x60b6 $A0A6 E2 72                    ;
.word    L72C5                         ; 0x60b8 $A0A8 C5 72                    ;
.word    L7223                         ; 0x60ba $A0AA 23 72                    ;
.word    L7228                         ; 0x60bc $A0AC 28 72                    ;
.word    L724D                         ; 0x60be $A0AE 4D 72                    ;
.word    L725B                         ; 0x60c0 $A0B0 5B 72                    ;
.word    L71D8                         ; 0x60c2 $A0B2 D8 71                    ;
.word    L71D8                         ; 0x60c4 $A0B4 D8 71                    ;
.word    L71D8                         ; 0x60c6 $A0B6 D8 71                    ;
.word    L7366                         ; 0x60c8 $A0B8 66 73                    ;
.word    L7366                         ; 0x60ca $A0BA 66 73                    ;
.word    L71D8                         ; 0x60cc $A0BC D8 71                    ;
.word    L71D8                         ; 0x60ce $A0BE D8 71                    ;
.word    L71D8                         ; 0x60d0 $A0C0 D8 71                    ;
.word    L72EE                         ; 0x60d2 $A0C2 EE 72                    ;
.word    L72F9                         ; 0x60d4 $A0C4 F9 72                    ;
.word    L71D8                         ; 0x60d6 $A0C6 D8 71                    ;
.word    L734B                         ; 0x60d8 $A0C8 4B 73                    ;
.word    L7311                         ; 0x60da $A0CA 11 73                    ;
.word    L734E                         ; 0x60dc $A0CC 4E 73                    ;
.word    L734E                         ; 0x60de $A0CE 4E 73                    ;
.word    L71D8                         ; 0x60e0 $A0D0 D8 71                    ;
.word    L71D8                         ; 0x60e2 $A0D2 D8 71                    ;
.word    L71D8                         ; 0x60e4 $A0D4 D8 71                    ;
.word    L71D8                         ; 0x60e6 $A0D6 D8 71                    ;
.word    L71D8                         ; 0x60e8 $A0D8 D8 71                    ;
.word    L71D8                         ; 0x60ea $A0DA D8 71                    ;
.word    L731C                         ; 0x60ec $A0DC 1C 73                    ;
.word    L7325                         ; 0x60ee $A0DE 25 73                    ;
.word    L732A                         ; 0x60f0 $A0E0 2A 73                    ;
.word    L7335                         ; 0x60f2 $A0E2 35 73                    ;
.word    L7342                         ; 0x60f4 $A0E4 42 73                    ;
.word    L737E                         ; 0x60f6 $A0E6 7E 73                    ;
.word    L737E                         ; 0x60f8 $A0E8 7E 73                    ;
.word    L71D8                         ; 0x60fa $A0EA D8 71                    ;
.word    L71D8                         ; 0x60fc $A0EC D8 71                    ;
.word    L71D8                         ; 0x60fe $A0EE D8 71                    ;
.word    L71D8                         ; 0x6100 $A0F0 D8 71                    ;
.word    L71D8                         ; 0x6102 $A0F2 D8 71                    ;
.word    L71D8                         ; 0x6104 $A0F4 D8 71                    ;
.word    L71D8                         ; 0x6106 $A0F6 D8 71                    ;
.word    L71D8                         ; 0x6108 $A0F8 D8 71                    ;
.word    L71D8                         ; 0x610a $A0FA D8 71                    ;
; ---------------------------------------------------------------------------- ;
bank1_Death_Mountain_Key_Areas_Y_Location:                                      ;
.byt    $2A,$29,$28,$2A,$2B,$27,$2D,$2D; 0x610c $A0FC 2A 29 28 2A 2B 27 2D 2D  ;
.byt    $30,$2F,$2F,$30,$33,$36,$30,$32; 0x6114 $A104 30 2F 2F 30 33 36 30 32  ;
.byt    $34,$36,$3B,$39,$3A,$39,$3C,$3C; 0x611c $A10C 34 36 3B 39 3A 39 3C 3C  ;
.byt    $41,$3F,$3F,$3C,$40,$36,$36,$2F; 0x6124 $A114 41 3F 3F 3C 40 36 36 2F  ;
.byt    $30,$34,$33,$28,$2C,$3E,$44,$3A; 0x612c $A11C 30 34 33 28 2C 3E 44 3A  ;
.byt    $C3,$7F,$A5,$A5,$80,$80,$80,$80; 0x6134 $A124 C3 7F A5 A5 80 80 80 80  ;
.byt    $80,$80,$80,$80,$BA,$80,$80,$3C; 0x613c $A12C 80 80 80 80 BA 80 80 3C  ;
.byt    $40,$3A,$31,$32,$2E,$2A,$00    ; 0x6144 $A134 40 3A 31 32 2E 2A 00     ;
bank1_Death_Mountain_Key_Areas_X_Location:                                      ;
.byt    $00,$44,$09,$4B,$10,$4E,$03,$47; 0x614b $A13B 00 44 09 4B 10 4E 03 47  ;
.byt    $03,$45,$0E,$50,$04,$45,$14,$54; 0x6153 $A143 03 45 0E 50 04 45 14 54  ;
.byt    $16,$54,$03,$47,$0F,$52,$0D,$51; 0x615b $A14B 16 54 03 47 0F 52 0D 51  ;
.byt    $10,$52,$16,$58,$0A,$0B,$4E,$89; 0x6163 $A153 10 52 16 58 0A 0B 4E 89  ;
.byt    $CB,$08,$4A,$92,$D2,$2D,$30,$29; 0x616b $A15B CB 08 4A 92 D2 2D 30 29  ;
.byt    $28,$00,$07,$17,$00,$40,$00,$40; 0x6173 $A163 28 00 07 17 00 40 00 40  ;
.byt    $00,$40,$00,$40,$3C,$00,$00,$39; 0x617b $A16B 00 40 00 40 3C 00 00 39  ;
.byt    $08,$30,$33,$2E,$30,$32,$00    ; 0x6183 $A173 08 30 33 2E 30 32 00     ;
bank1_Death_Mountain_Key_Areas_Map_Number:                                      ;
.byt    $01,$C1,$02,$C2,$03,$C3,$04,$C4; 0x618a $A17A 01 C1 02 C2 03 C3 04 C4  ;
.byt    $05,$C5,$06,$C6,$07,$C7,$08,$C8; 0x6192 $A182 05 C5 06 C6 07 C7 08 C8  ;
.byt    $09,$C9,$0A,$CA,$0B,$CB,$0C,$CC; 0x619a $A18A 09 C9 0A CA 0B CB 0C CC  ;
.byt    $0D,$CD,$0E,$CE,$0F,$16,$D6    ; 0x61a2 $A192 0D CD 0E CE 0F 16 D6     ;
LA199:                                                                          ;
.byt    $17,$D7,$18                    ; 0x61a9 $A199 17 D7 18                 ;
LA19C:                                                                          ;
.byt    $D8,$19,$D9,$62,$63,$64,$28,$29; 0x61ac $A19C D8 19 D9 62 63 64 28 29  ;
.byt    $2A,$2B,$06,$C8,$06,$C8,$06,$C8; 0x61b4 $A1A4 2A 2B 06 C8 06 C8 06 C8  ;
.byt    $06,$C8,$0F,$00,$00,$65,$5A,$6F; 0x61bc $A1AC 06 C8 0F 00 00 65 5A 6F  ;
.byt    $70,$71,$72,$73,$00            ; 0x61c4 $A1B4 70 71 72 73 00           ;
bank1_Death_Mountain_Key_Areas_World_Number:                                    ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x61c9 $A1B9 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x61d1 $A1C1 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x61d9 $A1C9 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x61e1 $A1D1 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$40,$40,$80; 0x61e9 $A1D9 00 00 00 00 00 40 40 80  ;
.byt    $42,$00,$00,$00,$00,$00,$00,$00; 0x61f1 $A1E1 42 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$11,$00,$00,$80; 0x61f9 $A1E9 00 00 00 00 11 00 00 80  ;
.byt    $80,$40,$40,$40,$40,$40,$00    ; 0x6201 $A1F1 80 40 40 40 40 40 00     ;
bank1_Room_Connectivity_Data:                                                   ;
.byt    $FC,$FC,$FC,$FC,$FC,$FF,$FF,$FD; 0x6208 $A1F8 FC FC FC FC FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0x6210 $A200 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0x6218 $A208 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0x6220 $A210 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0x6228 $A218 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0x6230 $A220 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0x6238 $A228 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$40; 0x6240 $A230 FC FF FF FD FC FF FF 40  ;
.byt    $3F,$4E,$FF,$44,$43,$FF,$FF,$FC; 0x6248 $A238 3F 4E FF 44 43 FF FF FC  ;
.byt    $FC,$FF,$FF,$4C,$4B,$FF,$42,$50; 0x6250 $A240 FC FF FF 4C 4B FF 42 50  ;
.byt    $4F,$FF,$FF,$54,$53,$FF,$FF,$FC; 0x6258 $A248 4F FF FF 54 53 FF FF FC  ;
.byt    $FC,$FF,$5E,$FD,$FE,$5A        ; 0x6260 $A250 FC FF 5E FD FE 5A        ;
LA256:                                                                          ;
.byt    $FF,$FF,$FC,$66,$FF,$FD,$FE,$FF; 0x6266 $A256 FF FF FC 66 FF FD FE FF  ;
.byt    $62,$FF,$FC,$FF,$FF,$FC,$FC,$FF; 0x626e $A25E 62 FF FC FF FF FC FC FF  ;
.byt    $FF,$FC,$FC,$FF,$FF,$FC        ; 0x6276 $A266 FF FC FC FF FF FC        ;
bank1_Area_Data_Death_Mountain:                                                 ;
.byt    $02,$00                        ; 0x627c $A26C 02 00                    ;
LA26E:                                                                          ;
.byt    $10,$C0,$C3,$11,$D4,$02,$DE,$03; 0x627e $A26E 10 C0 C3 11 D4 02 DE 03  ;
.byt    $D4,$04,$D8,$03,$D2,$02,$DC,$03; 0x6286 $A276 D4 04 D8 03 D2 02 DC 03  ;
.byt    $1A,$44,$C2,$19,$82,$80,$82,$91; 0x628e $A27E 1A 44 C2 19 82 80 82 91  ;
.byt    $84,$80,$84,$91,$84,$80,$84,$80; 0x6296 $A286 84 80 84 91 84 80 84 80  ;
.byt    $82,$95,$8C,$80,$83,$92,$87,$91; 0x629e $A28E 82 95 8C 80 83 92 87 91  ;
.byt    $82,$80                        ; 0x62a6 $A296 82 80                    ;
LA298:                                                                          ;
.byt    $22,$48,$1E,$62,$D2,$0D,$D4,$0C; 0x62a8 $A298 22 48 1E 62 D2 0D D4 0C  ;
.byt    $D2,$0B,$D2,$0C,$D2,$0D,$D2,$0E; 0x62b0 $A2A0 D2 0B D2 0C D2 0D D2 0E  ;
.byt    $D2,$0D,$D4,$0E,$D4,$0D,$D2,$0E; 0x62b8 $A2A8 D2 0D D4 0E D4 0D D2 0E  ;
.byt    $D2,$0D,$D4,$0C,$D2,$0B,$D6,$0C; 0x62c0 $A2B0 D2 0D D4 0C D2 0B D6 0C  ;
.byt    $D4,$0D                        ; 0x62c8 $A2B8 D4 0D                    ;
LA2BA:                                                                          ;
.byt    $22,$40,$B1,$21,$96,$80,$74,$E2; 0x62ca $A2BA 22 40 B1 21 96 80 74 E2  ;
.byt    $52,$E4,$92,$80,$74,$E2,$94,$80; 0x62d2 $A2C2 52 E4 92 80 74 E2 94 80  ;
.byt    $92,$80,$74,$E2,$54,$E4,$92,$80; 0x62da $A2CA 92 80 74 E2 54 E4 92 80  ;
.byt    $92,$91,$92,$82,$74,$E2,$72,$E2; 0x62e2 $A2D2 92 91 92 82 74 E2 72 E2  ;
.byt    $92,$91                        ; 0x62ea $A2DA 92 91                    ;
LA2DC:                                                                          ;
.byt    $42,$70,$F0,$31,$A4,$00,$A2,$00; 0x62ec $A2DC 42 70 F0 31 A4 00 A2 00  ;
.byt    $A2,$01,$A2,$00,$A2,$01,$A1,$01; 0x62f4 $A2E4 A2 01 A2 00 A2 01 A1 01  ;
.byt    $D3,$81,$91,$02,$91,$00,$92,$01; 0x62fc $A2EC D3 81 91 02 91 00 92 01  ;
.byt    $92,$00,$92,$01,$91,$01,$91,$01; 0x6304 $A2F4 92 00 92 01 91 01 91 01  ;
.byt    $91,$01,$91,$00,$D4,$82,$82,$00; 0x630c $A2FC 91 01 91 00 D4 82 82 00  ;
.byt    $82,$00,$82,$01,$D2,$81,$91,$02; 0x6314 $A304 82 00 82 01 D2 81 91 02  ;
.byt    $91,$01,$92                    ; 0x631c $A30C 91 01 92                 ;
LA30F:                                                                          ;
.byt    $00,$D4,$80,$A2,$00,$A2        ; 0x631f $A30F 00 D4 80 A2 00 A2        ;
LA315:                                                                          ;
.byt    $00,$A2,$02,$A2,$00,$A2,$01,$A1; 0x6325 $A315 00 A2 02 A2 00 A2 01 A1  ;
.byt    $01                            ; 0x632d $A31D 01                       ;
LA31E:                                                                          ;
.byt    $20,$E0,$0D,$48,$D6,$0C,$A2,$2F; 0x632e $A31E 20 E0 0D 48 D6 0C A2 2F  ;
.byt    $D6,$0B,$92                    ; 0x6336 $A326 D6 0B 92                 ;
LA329:                                                                          ;
.byt    $27,$D6,$0A,$A2,$2F,$90,$2F,$80; 0x6339 $A329 27 D6 0A A2 2F 90 2F 80  ;
.byt    $2F,$D6,$09                    ; 0x6341 $A331 2F D6 09                 ;
LA334:                                                                          ;
.byt    $72,$27,$D6,$08                ; 0x6344 $A334 72 27 D6 08              ;
LA338:                                                                          ;
.byt    $D2,$05,$00,$39,$DC,$06        ; 0x6348 $A338 D2 05 00 39 DC 06        ;
LA33E:                                                                          ;
.byt    $24,$E0,$06,$48,$D8,$05,$02,$35; 0x634e $A33E 24 E0 06 48 D8 05 02 35  ;
.byt    $D6,$84,$00,$3F,$12,$3D,$D6,$83; 0x6356 $A346 D6 84 00 3F 12 3D D6 83  ;
.byt    $22,$35,$D6,$0A,$A0,$21,$90,$21; 0x635e $A34E 22 35 D6 0A A0 21 90 21  ;
.byt    $D2,$0B,$A0,$27,$90,$25,$D8,$0C; 0x6366 $A356 D2 0B A0 27 90 25 D8 0C  ;
.byt    $A0,$29,$DC,$0D                ; 0x636e $A35E A0 29 DC 0D              ;
LA362:                                                                          ;
.byt    $36,$E0,$03,$48,$00,$33,$10,$33; 0x6372 $A362 36 E0 03 48 00 33 10 33  ;
.byt    $20,$33,$30,$33,$E1,$00,$D0,$02; 0x637a $A36A 20 33 30 33 E1 00 D0 02  ;
.byt    $81,$E1,$81,$E1,$82,$E1,$81,$E1; 0x6382 $A372 81 E1 81 E1 82 E1 81 E1  ;
.byt    $82,$E1,$81,$E1,$D2,$03,$DC,$02; 0x638a $A37A 82 E1 81 E1 D2 03 DC 02  ;
.byt    $81,$E1,$81,$E1,$82,$E1,$81,$E1; 0x6392 $A382 81 E1 81 E1 82 E1 81 E1  ;
.byt    $82,$E1,$81,$E1,$D2,$03,$0C,$33; 0x639a $A38A 82 E1 81 E1 D2 03 0C 33  ;
.byt    $10,$33,$20,$33,$30,$33        ; 0x63a2 $A392 10 33 20 33 30 33        ;
LA398:                                                                          ;
.byt    $20,$E0,$0E,$48,$D2,$0B,$D5,$00; 0x63a8 $A398 20 E0 0E 48 D2 0B D5 00  ;
.byt    $D3,$02,$D2,$03,$D2,$00,$D8,$09; 0x63b0 $A3A0 D3 02 D2 03 D2 00 D8 09  ;
.byt    $D4,$0B,$D6,$09,$D8,$00,$94,$E2; 0x63b8 $A3A8 D4 0B D6 09 D8 00 94 E2  ;
.byt    $91,$E2,$D5,$09,$D8,$0B,$D4,$0E; 0x63c0 $A3B0 91 E2 D5 09 D8 0B D4 0E  ;
LA3B8:                                                                          ;
.byt    $24,$E0,$05,$48,$DE,$00,$F0,$21; 0x63c8 $A3B8 24 E0 05 48 DE 00 F0 21  ;
.byt    $D2,$04,$D5,$00,$F0,$22,$D3,$04; 0x63d0 $A3C0 D2 04 D5 00 F0 22 D3 04  ;
.byt    $D8,$00,$F0,$22,$D3,$03,$D7,$05; 0x63d8 $A3C8 D8 00 F0 22 D3 03 D7 05  ;
.byt    $D8,$00,$F0,$22,$D3,$05,$D3,$00; 0x63e0 $A3D0 D8 00 F0 22 D3 05 D3 00  ;
.byt    $F0,$21,$D2,$06                ; 0x63e8 $A3D8 F0 21 D2 06              ;
LA3DC:                                                                          ;
.byt    $2C,$E0,$0E,$48,$D4,$0B,$D4,$00; 0x63ec $A3DC 2C E0 0E 48 D4 0B D4 00  ;
.byt    $D4,$02,$D2,$04,$D2,$06,$D6,$04; 0x63f4 $A3E4 D4 02 D2 04 D2 06 D6 04  ;
.byt    $D2,$02,$D2,$00,$D2,$0A,$D2,$0C; 0x63fc $A3EC D2 02 D2 00 D2 0A D2 0C  ;
.byt    $D4,$0A,$D2,$00,$D2,$02,$D2,$04; 0x6404 $A3F4 D4 0A D2 00 D2 02 D2 04  ;
.byt    $D2,$06,$D6,$04,$D2,$02,$D2,$00; 0x640c $A3FC D2 06 D6 04 D2 02 D2 00  ;
.byt    $D4,$0B,$D4,$0E                ; 0x6414 $A404 D4 0B D4 0E              ;
LA408:                                                                          ;
.byt    $2A,$E0,$06,$48,$00,$3D,$DA,$04; 0x6418 $A408 2A E0 06 48 00 3D DA 04  ;
.byt    $D2,$02,$D2,$08,$D6,$0E,$E2,$00; 0x6420 $A410 D2 02 D2 08 D6 0E E2 00  ;
.byt    $A5,$E1,$A1,$E1,$81,$08,$F0,$50; 0x6428 $A418 A5 E1 A1 E1 81 08 F0 50  ;
.byt    $81,$08,$A1,$E1,$A1,$E1,$D2,$0C; 0x6430 $A420 81 08 A1 E1 A1 E1 D2 0C  ;
.byt    $D2,$08,$D8,$02,$00,$39,$D2,$04; 0x6438 $A428 D2 08 D8 02 00 39 D2 04  ;
.byt    $D2,$06                        ; 0x6440 $A430 D2 06                    ;
LA432:                                                                          ;
.byt    $26,$E0,$0E,$48,$D4,$09,$D4,$02; 0x6442 $A432 26 E0 0E 48 D4 09 D4 02  ;
.byt    $00,$33,$10,$33,$04,$37,$D8,$08; 0x644a $A43A 00 33 10 33 04 37 D8 08  ;
.byt    $D8,$0C,$D9,$0E,$02,$08,$F0,$50; 0x6452 $A442 D8 0C D9 0E 02 08 F0 50  ;
.byt    $B0,$E1,$01,$08,$B0,$E1,$D3,$0C; 0x645a $A44A B0 E1 01 08 B0 E1 D3 0C  ;
.byt    $D5,$09,$D8,$0C,$D4,$0E        ; 0x6462 $A452 D5 09 D8 0C D4 0E        ;
LA458:                                                                          ;
.byt    $4C,$E0,$06,$48,$D8,$00,$F0,$21; 0x6468 $A458 4C E0 06 48 D8 00 F0 21  ;
.byt    $D2,$05,$D2,$00,$F0,$21,$D2,$05; 0x6470 $A460 D2 05 D2 00 F0 21 D2 05  ;
.byt    $D2,$00,$F0,$21,$D2,$04,$D2,$00; 0x6478 $A468 D2 00 F0 21 D2 04 D2 00  ;
.byt    $F0,$21,$D2,$04,$D2,$00,$F0,$21; 0x6480 $A470 F0 21 D2 04 D2 00 F0 21  ;
.byt    $D2,$03,$D2,$00,$F0,$21,$D2,$03; 0x6488 $A478 D2 03 D2 00 F0 21 D2 03  ;
.byt    $D4,$00,$F0,$21,$D2,$03,$D2,$00; 0x6490 $A480 D4 00 F0 21 D2 03 D2 00  ;
.byt    $F0,$21,$D2,$04,$D2,$00,$F0,$21; 0x6498 $A488 F0 21 D2 04 D2 00 F0 21  ;
.byt    $D2,$04,$D2,$00,$F0,$21,$D2,$05; 0x64a0 $A490 D2 04 D2 00 F0 21 D2 05  ;
.byt    $D2,$00,$F0,$21,$D2,$05,$D2,$00; 0x64a8 $A498 D2 00 F0 21 D2 05 D2 00  ;
.byt    $F0,$21,$D2,$06                ; 0x64b0 $A4A0 F0 21 D2 06              ;
LA4A4:                                                                          ;
.byt    $1C,$E0,$06,$48,$DA,$04,$D2,$02; 0x64b4 $A4A4 1C E0 06 48 DA 04 D2 02  ;
.byt    $D2,$00,$66,$51,$64,$51,$64,$51; 0x64bc $A4AC D2 00 66 51 64 51 64 51  ;
.byt    $66,$51,$64,$51,$64,$51,$D8,$02; 0x64c4 $A4B4 66 51 64 51 64 51 D8 02  ;
.byt    $D2,$04,$D2,$06                ; 0x64cc $A4BC D2 04 D2 06              ;
LA4C0:                                                                          ;
.byt    $14,$E0,$0E,$48,$D4,$09,$D8,$02; 0x64d0 $A4C0 14 E0 0E 48 D4 09 D8 02  ;
.byt    $DE,$04,$D4,$02,$D4,$09,$DA,$00; 0x64d8 $A4C8 DE 04 D4 02 D4 09 DA 00  ;
.byt    $DA,$09,$D6,$0E                ; 0x64e0 $A4D0 DA 09 D6 0E              ;
LA4D4:                                                                          ;
.byt    $18,$60,$0E,$48,$D4,$08,$94,$F1; 0x64e4 $A4D4 18 60 0E 48 D4 08 94 F1  ;
.byt    $94,$F1,$94,$F1,$94,$F1,$94,$F1; 0x64ec $A4DC 94 F1 94 F1 94 F1 94 F1  ;
.byt    $D4,$0E,$D8,$08,$E3,$00,$DC,$0E; 0x64f4 $A4E4 D4 0E D8 08 E3 00 DC 0E  ;
LA4EC:                                                                          ;
.byt    $19,$60,$0E,$48,$E2,$00,$D4,$00; 0x64fc $A4EC 19 60 0E 48 E2 00 D4 00  ;
.byt    $AC,$B7,$51,$F4,$52,$F4,$52,$F4; 0x6504 $A4F4 AC B7 51 F4 52 F4 52 F4  ;
.byt    $D3,$01,$D2,$02,$80,$0F,$06,$D4; 0x650c $A4FC D3 01 D2 02 80 0F 06 D4  ;
.byt    $0F                            ; 0x6514 $A504 0F                       ;
LA505:                                                                          ;
.byt    $10,$01,$C2,$11,$96,$90,$98,$90; 0x6515 $A505 10 01 C2 11 96 90 98 90  ;
.byt    $92,$90,$98,$90,$98,$90,$92,$90; 0x651d $A50D 92 90 98 90 98 90 92 90  ;
LA515:                                                                          ;
.byt    $16,$E0,$F1,$39,$DC,$83,$D2,$85; 0x6525 $A515 16 E0 F1 39 DC 83 D2 85  ;
.byt    $D2,$83,$D2,$81,$E2,$00,$DC,$83; 0x652d $A51D D2 83 D2 81 E2 00 DC 83  ;
.byt    $D4,$81,$D6,$83,$D2,$81        ; 0x6535 $A525 D4 81 D6 83 D2 81        ;
LA52B:                                                                          ;
.byt    $10,$E0,$F0,$39,$D8,$81,$D8,$82; 0x653b $A52B 10 E0 F0 39 D8 81 D8 82  ;
.byt    $DC,$83,$D8,$84,$DC,$85,$D8,$86; 0x6543 $A533 DC 83 D8 84 DC 85 D8 86  ;
LA53B:                                                                          ;
.byt    $24,$E0,$F1,$39,$D8,$83,$D2,$85; 0x654b $A53B 24 E0 F1 39 D8 83 D2 85  ;
.byt    $D2,$87,$D2,$85,$D2,$83,$D2,$81; 0x6553 $A543 D2 87 D2 85 D2 83 D2 81  ;
.byt    $DC,$83,$D4,$81,$D6,$83,$D2,$85; 0x655b $A54B DC 83 D4 81 D6 83 D2 85  ;
.byt    $D2,$83,$D2,$81,$D4,$83,$D2,$85; 0x6563 $A553 D2 83 D2 81 D4 83 D2 85  ;
.byt    $D2,$83,$D2,$81                ; 0x656b $A55B D2 83 D2 81              ;
LA55F:                                                                          ;
.byt    $1F,$E0,$06,$48,$00,$37,$D4,$84; 0x656f $A55F 1F E0 06 48 00 37 D4 84  ;
.byt    $D2,$82,$10,$31,$20,$31,$D2,$0C; 0x6577 $A567 D2 82 10 31 20 31 D2 0C  ;
.byt    $D2,$0E,$D8,$0A,$D4,$80,$D4,$0A; 0x657f $A56F D2 0E D8 0A D4 80 D4 0A  ;
.byt    $E3,$00,$AC,$0F,$13,$D2,$0F    ; 0x6587 $A577 E3 00 AC 0F 13 D2 0F     ;
LA57E:                                                                          ;
.byt    $1D,$E0,$06,$48,$00,$37,$D4,$84; 0x658e $A57E 1D E0 06 48 00 37 D4 84  ;
.byt    $D2,$82,$10,$31,$20,$31,$D2,$0C; 0x6596 $A586 D2 82 10 31 20 31 D2 0C  ;
.byt    $D2,$0E,$D8,$0A,$D4,$80,$D4,$0A; 0x659e $A58E D2 0E D8 0A D4 80 D4 0A  ;
.byt    $A2,$0F,$0E,$D2,$0F            ; 0x65a6 $A596 A2 0F 0E D2 0F           ;
LA59B:                                                                          ;
.byt    $1B,$E0,$06,$48,$00,$37,$D4,$84; 0x65ab $A59B 1B E0 06 48 00 37 D4 84  ;
.byt    $D2,$82,$10,$31,$20,$31,$D2,$0C; 0x65b3 $A5A3 D2 82 10 31 20 31 D2 0C  ;
.byt    $A0,$2D,$90,$2D,$DE,$80,$A3,$0F; 0x65bb $A5AB A0 2D 90 2D DE 80 A3 0F  ;
.byt    $0E,$D1,$0F                    ; 0x65c3 $A5B3 0E D1 0F                 ;
LA5B6:                                                                          ;
.byt    $40,$E0,$03,$48,$D4,$00,$80,$4B; 0x65c6 $A5B6 40 E0 03 48 D4 00 80 4B  ;
.byt    $F0,$2B,$06,$3F,$10,$3F,$24,$3B; 0x65ce $A5BE F0 2B 06 3F 10 3F 24 3B  ;
.byt    $30,$33,$40,$33,$82,$4F,$F0,$2F; 0x65d6 $A5C6 30 33 40 33 82 4F F0 2F  ;
.byt    $26,$33,$30,$33,$40,$33,$04,$31; 0x65de $A5CE 26 33 30 33 40 33 04 31  ;
.byt    $10,$31,$86,$4F,$F0,$2F,$04,$3B; 0x65e6 $A5D6 10 31 86 4F F0 2F 04 3B  ;
.byt    $10,$3B,$22,$37,$30,$37,$40,$37; 0x65ee $A5DE 10 3B 22 37 30 37 40 37  ;
.byt    $8A,$4B,$F0,$2B,$04,$37,$10,$37; 0x65f6 $A5E6 8A 4B F0 2B 04 37 10 37  ;
.byt    $22,$33,$30,$33,$40,$33,$D6,$03; 0x65fe $A5EE 22 33 30 33 40 33 D6 03  ;
LA5F6:                                                                          ;
.byt    $56,$E0,$03,$48,$D4,$00,$80,$4B; 0x6606 $A5F6 56 E0 03 48 D4 00 80 4B  ;
.byt    $F0,$2B,$02,$37,$10,$37,$22,$33; 0x660e $A5FE F0 2B 02 37 10 37 22 33  ;
.byt    $32,$31,$40,$31,$86,$4D,$F0,$2D; 0x6616 $A606 32 31 40 31 86 4D F0 2D  ;
.byt    $02,$39                        ; 0x661e $A60E 02 39                    ;
LA610:                                                                          ;
.byt    $10,$39,$20,$39,$32,$33,$40,$33; 0x6620 $A610 10 39 20 39 32 33 40 33  ;
.byt    $DA,$03,$D4,$01,$D2,$0E,$A0,$27; 0x6628 $A618 DA 03 D4 01 D2 0E A0 27  ;
.byt    $03,$08,$F0,$50,$A0,$E2,$01,$08; 0x6630 $A620 03 08 F0 50 A0 E2 01 08  ;
.byt    $A0,$E2,$D4,$0B,$A0,$E2,$A1,$E2; 0x6638 $A628 A0 E2 D4 0B A0 E2 A1 E2  ;
.byt    $81,$E4,$81,$E4,$D1,$00,$80,$4B; 0x6640 $A630 81 E4 81 E4 D1 00 80 4B  ;
.byt    $F0,$2B,$00,$33,$10,$33,$20,$31; 0x6648 $A638 F0 2B 00 33 10 33 20 31  ;
.byt    $30,$31,$08,$37,$10,$37,$22,$35; 0x6650 $A640 30 31 08 37 10 37 22 35  ;
.byt    $30,$35,$D2,$83                ; 0x6658 $A648 30 35 D2 83              ;
bank1_Death_Mountain_Overworld_Map_Data:                                        ;
.byt    $FB,$7B,$FC,$FC,$7C,$FB,$6B,$FC; 0x665c $A64C FB 7B FC FC 7C FB 6B FC  ;
.byt    $FC,$8C,$FB,$6B,$FC,$FC,$8C,$FB; 0x6664 $A654 FC 8C FB 6B FC FC 8C FB  ;
.byt    $5B,$FC,$FC,$9C,$FB,$7B,$FC,$5C; 0x666c $A65C 5B FC FC 9C FB 7B FC 5C  ;
.byt    $1B,$FC,$FB,$8B,$FC,$2C,$5B,$DC; 0x6674 $A664 1B FC FB 8B FC 2C 5B DC  ;
.byt    $FB,$9B,$FC,$8B,$0C,$0B,$AC,$6B; 0x667c $A66C FB 9B FC 8B 0C 0B AC 6B  ;
.byt    $01,$EB,$01,$1B,$EC,$CB,$9C,$5B; 0x6684 $A674 01 EB 01 1B EC CB 9C 5B  ;
.byt    $19,$6B,$29,$2B,$29,$1B,$DC,$DB; 0x668c $A67C 19 6B 29 2B 29 1B DC DB  ;
.byt    $9C,$4B,$39,$4B,$01,$29,$1B,$49; 0x6694 $A684 9C 4B 39 4B 01 29 1B 49  ;
.byt    $EC,$EB,$8C,$4B,$39,$01,$5B,$19; 0x669c $A68C EC EB 8C 4B 39 01 5B 19  ;
.byt    $01,$0B,$19,$0B,$19,$EC,$0B,$C9; 0x66a4 $A694 01 0B 19 0B 19 EC 0B C9  ;
.byt    $0B,$8C,$3B,$01                ; 0x66ac $A69C 0B 8C 3B 01              ;
LA6A0:                                                                          ;
.byt    $39,$AB,$49,$EC,$0B,$09,$8B,$09; 0x66b0 $A6A0 39 AB 49 EC 0B 09 8B 09  ;
.byt    $3B,$7C,$01,$4B,$2C,$1B,$01,$19; 0x66b8 $A6A8 3B 7C 01 4B 2C 1B 01 19  ;
.byt    $6B,$39,$DC,$1B,$C9,$2B,$6C,$19; 0x66c0 $A6B0 6B 39 DC 1B C9 2B 6C 19  ;
.byt    $9B,$39,$01,$6B,$09,$DC,$1B,$09; 0x66c8 $A6B8 9B 39 01 6B 09 DC 1B 09  ;
.byt    $6B,$09,$2B,$09,$3B,$5C,$29,$8B; 0x66d0 $A6C0 6B 09 2B 09 3B 5C 29 8B  ;
.byt    $39,$1B,$01,$4B,$09,$DC,$1B,$09; 0x66d8 $A6C8 39 1B 01 4B 09 DC 1B 09  ;
.byt    $0B,$49                        ; 0x66e0 $A6D0 0B 49                    ;
LA6D2:                                                                          ;
.byt    $0B,$29,$0B,$09,$3B,$5C,$29,$01; 0x66e2 $A6D2 0B 29 0B 09 3B 5C 29 01  ;
.byt    $2B,$01,$9B,$16,$2B,$19,$DC,$1B; 0x66ea $A6DA 2B 01 9B 16 2B 19 DC 1B  ;
.byt    $09,$0B,$09,$2B,$09,$0B,$09,$0B; 0x66f2 $A6E2 09 0B 09 2B 09 0B 09 0B  ;
.byt    $09,$0B,$09,$4B,$4C,$5B,$19,$9B; 0x66fa $A6EA 09 0B 09 4B 4C 5B 19 9B  ;
.byt    $16,$1B,$19,$EC,$1B,$09,$0B,$29; 0x6702 $A6F2 16 1B 19 EC 1B 09 0B 29  ;
.byt    $0B,$29,$0B,$09,$0B,$09,$5B,$3C; 0x670a $A6FA 0B 29 0B 09 0B 09 5B 3C  ;
.byt    $4B,$01,$29,$01,$3B,$01,$1B,$29; 0x6712 $A702 4B 01 29 01 3B 01 1B 29  ;
.byt    $1B,$09,$EC,$2B,$09,$2B,$09,$0B; 0x671a $A70A 1B 09 EC 2B 09 2B 09 0B  ;
.byt    $09,$2B,$09,$0B,$09,$5B,$3C,$2B; 0x6722 $A712 09 2B 09 0B 09 5B 3C 2B  ;
.byt    $01,$1B,$29,$1B,$01,$29,$0B,$01; 0x672a $A71A 01 1B 29 1B 01 29 0B 01  ;
.byt    $29,$01,$0B,$19,$DC,$2B,$49,$0B; 0x6732 $A722 29 01 0B 19 DC 2B 49 0B  ;
.byt    $29,$0B,$09,$0B,$09,$6B,$2C,$1B; 0x673a $A72A 29 0B 09 0B 09 6B 2C 1B  ;
.byt    $19,$7B,$29,$1B,$19,$3B,$19,$CC; 0x6742 $A732 19 7B 29 1B 19 3B 19 CC  ;
.byt    $AB,$09,$0B,$09,$0B,$09,$7B,$1C; 0x674a $A73A AB 09 0B 09 0B 09 7B 1C  ;
.byt    $0B,$29,$6B,$29,$5B,$01,$2B,$19; 0x6752 $A742 0B 29 6B 29 5B 01 2B 19  ;
.byt    $BC,$2B,$89,$0B,$09,$0B,$09,$7B; 0x675a $A74A BC 2B 89 0B 09 0B 09 7B  ;
.byt    $1C,$39,$01,$4B,$01,$29,$5B,$19; 0x6762 $A752 1C 39 01 4B 01 29 5B 19  ;
.byt    $2B,$09,$BC,$2B,$09,$6B,$09,$0B; 0x676a $A75A 2B 09 BC 2B 09 6B 09 0B  ;
.byt    $09,$0B,$09,$7B,$1C,$29,$4B,$01; 0x6772 $A762 09 0B 09 7B 1C 29 4B 01  ;
.byt    $AB,$19,$01,$1B,$19,$AC,$2B,$69; 0x677a $A76A AB 19 01 1B 19 AC 2B 69  ;
.byt    $0B,$09,$0B,$69,$2B,$2C,$29,$2B; 0x6782 $A772 0B 09 0B 69 2B 2C 29 2B  ;
.byt    $39,$5B,$19,$7B,$19,$AC,$5B,$09; 0x678a $A77A 39 5B 19 7B 19 AC 5B 09  ;
.byt    $2B,$09,$6B,$09,$1B,$3C,$0B,$19; 0x6792 $A782 2B 09 6B 09 1B 3C 0B 19  ;
.byt    $1B,$01,$19,$0B,$19,$01,$1B,$01; 0x679a $A78A 1B 01 19 0B 19 01 1B 01  ;
.byt    $29,$1B,$01,$5B,$09,$BC,$0B,$29; 0x67a2 $A792 29 1B 01 5B 09 BC 0B 29  ;
.byt    $0B,$09,$0B,$49,$0B,$29,$0B,$09; 0x67aa $A79A 0B 09 0B 49 0B 29 0B 09  ;
.byt    $2B,$2C,$5B,$49,$4B,$06,$1B,$19; 0x67b2 $A7A2 2B 2C 5B 49 4B 06 1B 19  ;
.byt    $5B                            ; 0x67ba $A7AA 5B                       ;
LA7AB:                                                                          ;
.byt    $09,$BC,$0B,$09,$0B,$09,$0B,$09; 0x67bb $A7AB 09 BC 0B 09 0B 09 0B 09  ;
.byt    $4B,$09,$2B,$09,$0B,$09,$4B,$0C; 0x67c3 $A7B3 4B 09 2B 09 0B 09 4B 0C  ;
.byt    $6B,$29,$7B,$39,$1B,$39,$AC,$1B; 0x67cb $A7BB 6B 29 7B 39 1B 39 AC 1B  ;
.byt    $09,$0B,$09,$0B,$49,$0B,$49,$0B; 0x67d3 $A7C3 09 0B 09 0B 49 0B 49 0B  ;
.byt    $09,$5B,$6B,$01,$3B,$19,$3B,$01; 0x67db $A7CB 09 5B 6B 01 3B 19 3B 01  ;
.byt    $3B,$39,$BC,$1B,$09,$0B,$09,$2B; 0x67e3 $A7D3 3B 39 BC 1B 09 0B 09 2B  ;
.byt    $09,$6B,$09,$0B,$09,$0B,$29,$1B; 0x67eb $A7DB 09 6B 09 0B 09 0B 29 1B  ;
.byt    $19,$9B,$29,$01,$6B,$39,$AC,$2B; 0x67f3 $A7E3 19 9B 29 01 6B 39 AC 2B  ;
.byt    $09,$0B,$A9,$0B,$09,$0B,$29,$02; 0x67fb $A7EB 09 0B A9 0B 09 0B 29 02  ;
.byt    $09,$1B,$29,$01,$6B,$39,$7B,$29; 0x6803 $A7F3 09 1B 29 01 6B 39 7B 29  ;
.byt    $BC,$2B,$09,$8B,$09,$0D,$03,$4D; 0x680b $A7FB BC 2B 09 8B 09 0D 03 4D  ;
.byt    $29,$1B,$0B,$19,$9B,$01,$2B,$01; 0x6813 $A803 29 1B 0B 19 9B 01 2B 01  ;
.byt    $5B,$01,$0B,$BC,$2B,$A9,$0D,$09; 0x681b $A80B 5B 01 0B BC 2B A9 0D 09  ;
.byt    $0B,$29,$5B,$FB,$0B,$19,$6B,$CC; 0x6823 $A813 0B 29 5B FB 0B 19 6B CC  ;
.byt    $AB,$2D,$09,$0B,$09,$7B,$FB,$29; 0x682b $A81B AB 2D 09 0B 09 7B FB 29  ;
.byt    $5B,$DC,$3B,$69,$0D,$29,$0B    ; 0x6833 $A823 5B DC 3B 69 0D 29 0B     ;
LA82A:                                                                          ;
.byt    $29,$5B,$6B,$49,$5B,$01,$2B,$01; 0x683a $A82A 29 5B 6B 49 5B 01 2B 01  ;
.byt    $1B,$DC,$3B,$09                ; 0x6842 $A832 1B DC 3B 09              ;
LA836:                                                                          ;
.byt    $4B,$09,$0D,$09,$4B,$09,$5B,$6B; 0x6846 $A836 4B 09 0D 09 4B 09 5B 6B  ;
.byt    $09,$0E,$09,$01,$19,$09,$5B,$24; 0x684e $A83E 09 0E 09 01 19 09 5B 24  ;
.byt    $FC,$0C,$2B,$49,$0B,$09,$03,$09; 0x6856 $A846 FC 0C 2B 49 0B 09 03 09  ;
.byt    $0B,$29,$0B,$09,$5B,$6B,$49,$0B; 0x685e $A84E 0B 29 0B 09 5B 6B 49 0B  ;
.byt    $09,$1B,$01,$2B,$14,$FC,$1C,$6D; 0x6866 $A856 09 1B 01 2B 14 FC 1C 6D  ;
.byt    $03,$2D,$09,$0B,$09,$0B,$09,$0B; 0x686e $A85E 03 2D 09 0B 09 0B 09 0B  ;
.byt    $09,$4B,$0C,$CB,$74,$FC,$3C,$1B; 0x6876 $A866 09 4B 0C CB 74 FC 3C 1B  ;
.byt    $09,$0B,$29,$0B,$29,$0B,$09,$0B; 0x687e $A86E 09 0B 29 0B 29 0B 09 0B  ;
.byt    $09,$0B,$09,$4B,$0C,$1B,$38,$6B; 0x6886 $A876 09 0B 09 4B 0C 1B 38 6B  ;
.byt    $74,$AC,$83,$29,$0B,$09,$2B,$09; 0x688e $A87E 74 AC 83 29 0B 09 2B 09  ;
.byt    $0B,$09,$0B,$09,$0B,$09,$0B,$09; 0x6896 $A886 0B 09 0B 09 0B 09 0B 09  ;
.byt    $3B,$1C,$1B,$38,$3B,$B4,$FC,$2C; 0x689e $A88E 3B 1C 1B 38 3B B4 FC 2C  ;
.byt    $1B,$09,$0B,$49,$0B,$29,$0B,$09; 0x68a6 $A896 1B 09 0B 49 0B 29 0B 09  ;
.byt    $0B,$09,$2B,$2C,$1B,$38,$F4,$FC; 0x68ae $A89E 0B 09 2B 2C 1B 38 F4 FC  ;
.byt    $2C,$1B,$09,$2B,$09,$6B,$09,$0B; 0x68b6 $A8A6 2C 1B 09 2B 09 6B 09 0B  ;
.byt    $09,$1B,$3C,$1B,$38,$94,$2C,$44; 0x68be $A8AE 09 1B 3C 1B 38 94 2C 44  ;
.byt    $FC,$0C,$1B,$E9,$2B,$2C,$5B,$56; 0x68c6 $A8B6 FC 0C 1B E9 2B 2C 5B 56  ;
.byt    $14,$4C,$04,$26,$04,$FC,$1C,$FB; 0x68ce $A8BE 14 4C 04 26 04 FC 1C FB  ;
.byt    $1B,$3C,$5B,$56,$14,$2C,$24,$1C; 0x68d6 $A8C6 1B 3C 5B 56 14 2C 24 1C  ;
.byt    $06,$04,$FC,$2C,$CB,$7C,$5B,$56; 0x68de $A8CE 06 04 FC 2C CB 7C 5B 56  ;
.byt    $34,$0C,$64,$FC,$2C,$AB,$9C,$5B; 0x68e6 $A8D6 34 0C 64 FC 2C AB 9C 5B  ;
.byt    $56,$34,$0C,$44,$FC,$5C,$2B,$0C; 0x68ee $A8DE 56 34 0C 44 FC 5C 2B 0C  ;
.byt    $4B,$AC,$BB,$FC,$FC,$FC,$3C,$BB; 0x68f6 $A8E6 4B AC BB FC FC FC 3C BB  ;
.byt    $FC,$FC,$FC,$3C,$BB,$FC,$FC,$FC; 0x68fe $A8EE FC FC FC 3C BB FC FC FC  ;
.byt    $3C,$BB,$FC,$FC,$FC,$3C,$BB,$FC; 0x6906 $A8F6 3C BB FC FC FC 3C BB FC  ;
.byt    $FC,$FC,$3C,$BB,$FC,$FC,$FC,$3C; 0x690e $A8FE FC FC 3C BB FC FC FC 3C  ;
.byt    $BB,$FC,$FC,$FC,$3C,$BB,$FC,$FC; 0x6916 $A906 BB FC FC FC 3C BB FC FC  ;
.byt    $FC,$3C,$BB,$FC,$FC,$FC,$3C,$BB; 0x691e $A90E FC 3C BB FC FC FC 3C BB  ;
.byt    $FC,$FC,$FC,$3C,$BB,$FC,$FC,$FC; 0x6926 $A916 FC FC FC 3C BB FC FC FC  ;
.byt    $3C,$BB,$FC,$FC,$FC,$3C,$BB,$FC; 0x692e $A91E 3C BB FC FC FC 3C BB FC  ;
.byt    $FC,$FC,$3C,$BB,$FC,$FC,$FC,$3C; 0x6936 $A926 FC FC 3C BB FC FC FC 3C  ;
.byt    $BB,$FC,$FC,$FC,$3C            ; 0x693e $A92E BB FC FC FC 3C           ;
bank1_UNUSED_A933:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6943 $A933 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x694b $A93B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6953 $A943 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x695b $A94B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6963 $A953 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x696b $A95B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6973 $A963 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x697b $A96B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6983 $A973 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x698b $A97B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6993 $A983 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x699b $A98B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69a3 $A993 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69ab $A99B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69b3 $A9A3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69bb $A9AB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69c3 $A9B3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69cb $A9BB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69d3 $A9C3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69db $A9CB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69e3 $A9D3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69eb $A9DB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69f3 $A9E3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x69fb $A9EB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a03 $A9F3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a0b $A9FB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0x6a13 $AA03 FF FF FF FF FF           ;
LAA08:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a18 $AA08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a20 $AA10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a28 $AA18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a30 $AA20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a38 $AA28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a40 $AA30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a48 $AA38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a50 $AA40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a58 $AA48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a60 $AA50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a68 $AA58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a70 $AA60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a78 $AA68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a80 $AA70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a88 $AA78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a90 $AA80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6a98 $AA88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6aa0 $AA90 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6aa8 $AA98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ab0 $AAA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ab8 $AAA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ac0 $AAB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ac8 $AAB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ad0 $AAC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ad8 $AAC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ae0 $AAD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ae8 $AAD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6af0 $AAE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6af8 $AAE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b00 $AAF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b08 $AAF8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b10 $AB00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b18 $AB08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b20 $AB10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b28 $AB18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b30 $AB20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b38 $AB28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b40 $AB30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b48 $AB38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b50 $AB40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b58 $AB48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b60 $AB50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b68 $AB58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b70 $AB60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b78 $AB68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b80 $AB70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b88 $AB78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b90 $AB80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6b98 $AB88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ba0 $AB90 FF FF FF FF FF FF FF FF  ;
bank1_Enemy_Routines1_unknown0:                                                 ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ba8 $AB98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6bb0 $ABA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6bb8 $ABA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6bc0 $ABB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6bc8 $ABB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6bd0 $ABC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6bd8 $ABC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6be0 $ABD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6be8 $ABD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6bf0 $ABE0 FF FF FF FF FF FF FF FF  ; A = 30
.byt    $FF                            ; 0x6bf8 $ABE8 FF                       ;
bank1_Enemy_Routines1_unknown1:                                                 ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6bf9 $ABE9 FF FF FF FF FF FF FF FF  ; A = D0
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c01 $ABF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c09 $ABF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c11 $AC01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c19 $AC09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c21 $AC11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c29 $AC19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c31 $AC21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c39 $AC29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c41 $AC31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c49 $AC39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c51 $AC41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c59 $AC49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c61 $AC51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c69 $AC59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c71 $AC61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c79 $AC69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c81 $AC71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c89 $AC79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c91 $AC81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6c99 $AC89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ca1 $AC91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ca9 $AC99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6cb1 $ACA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6cb9 $ACA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6cc1 $ACB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6cc9 $ACB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6cd1 $ACC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6cd9 $ACC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ce1 $ACD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ce9 $ACD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6cf1 $ACE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6cf9 $ACE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d01 $ACF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d09 $ACF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d11 $AD01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d19 $AD09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d21 $AD11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d29 $AD19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d31 $AD21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d39 $AD29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d41 $AD31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d49 $AD39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d51 $AD41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d59 $AD49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d61 $AD51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d69 $AD59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d71 $AD61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d79 $AD69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d81 $AD71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d89 $AD79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d91 $AD81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6d99 $AD89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6da1 $AD91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6da9 $AD99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6db1 $ADA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6db9 $ADA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6dc1 $ADB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6dc9 $ADB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6dd1 $ADC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6dd9 $ADC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6de1 $ADD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6de9 $ADD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6df1 $ADE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6df9 $ADE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e01 $ADF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e09 $ADF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e11 $AE01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e19 $AE09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e21 $AE11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e29 $AE19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e31 $AE21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e39 $AE29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e41 $AE31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e49 $AE39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e51 $AE41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e59 $AE49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e61 $AE51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e69 $AE59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e71 $AE61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e79 $AE69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e81 $AE71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e89 $AE79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e91 $AE81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6e99 $AE89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ea1 $AE91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ea9 $AE99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6eb1 $AEA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6eb9 $AEA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ec1 $AEB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ec9 $AEB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ed1 $AEC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ed9 $AEC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ee1 $AED1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ee9 $AED9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ef1 $AEE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ef9 $AEE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f01 $AEF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f09 $AEF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f11 $AF01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f19 $AF09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f21 $AF11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f29 $AF19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f31 $AF21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f39 $AF29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f41 $AF31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f49 $AF39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f51 $AF41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f59 $AF49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f61 $AF51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f69 $AF59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f71 $AF61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f79 $AF69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f81 $AF71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f89 $AF79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f91 $AF81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6f99 $AF89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fa1 $AF91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fa9 $AF99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fb1 $AFA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fb9 $AFA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fc1 $AFB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fc9 $AFB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fd1 $AFC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fd9 $AFC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fe1 $AFD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6fe9 $AFD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ff1 $AFE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x6ff9 $AFE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7001 $AFF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7009 $AFF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7011 $B001 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7019 $B009 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7021 $B011 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7029 $B019 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7031 $B021 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7039 $B029 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7041 $B031 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7049 $B039 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7051 $B041 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7059 $B049 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7061 $B051 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7069 $B059 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7071 $B061 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7079 $B069 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7081 $B071 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7089 $B079 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0x7091 $B081 FF                       ;
LB082:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7092 $B082 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x709a $B08A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70a2 $B092 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70aa $B09A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70b2 $B0A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70ba $B0AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70c2 $B0B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70ca $B0BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70d2 $B0C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70da $B0CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70e2 $B0D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70ea $B0DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70f2 $B0E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x70fa $B0EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7102 $B0F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x710a $B0FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7112 $B102 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x711a $B10A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7122 $B112 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x712a $B11A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7132 $B122 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x713a $B12A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7142 $B132 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x714a $B13A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7152 $B142 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x715a $B14A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7162 $B152 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x716a $B15A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7172 $B162 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x717a $B16A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7182 $B172 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x718a $B17A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7192 $B182 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x719a $B18A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71a2 $B192 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71aa $B19A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71b2 $B1A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71ba $B1AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71c2 $B1B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71ca $B1BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71d2 $B1C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71da $B1CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71e2 $B1D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71ea $B1DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71f2 $B1E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x71fa $B1EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7202 $B1F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x720a $B1FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7212 $B202 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x721a $B20A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7222 $B212 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x722a $B21A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7232 $B222 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x723a $B22A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7242 $B232 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x724a $B23A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7252 $B242 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x725a $B24A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7262 $B252 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x726a $B25A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7272 $B262 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x727a $B26A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7282 $B272 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x728a $B27A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7292 $B282 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x729a $B28A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72a2 $B292 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72aa $B29A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72b2 $B2A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72ba $B2AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72c2 $B2B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72ca $B2BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72d2 $B2C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72da $B2CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72e2 $B2D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72ea $B2DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72f2 $B2E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x72fa $B2EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7302 $B2F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x730a $B2FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7312 $B302 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x731a $B30A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7322 $B312 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x732a $B31A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7332 $B322 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x733a $B32A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7342 $B332 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x734a $B33A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7352 $B342 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x735a $B34A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7362 $B352 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x736a $B35A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7372 $B362 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x737a $B36A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7382 $B372 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x738a $B37A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7392 $B382 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x739a $B38A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73a2 $B392 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73aa $B39A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73b2 $B3A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73ba $B3AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73c2 $B3B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73ca $B3BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73d2 $B3C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73da $B3CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73e2 $B3D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73ea $B3DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73f2 $B3E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x73fa $B3EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7402 $B3F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x740a $B3FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7412 $B402 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x741a $B40A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7422 $B412 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x742a $B41A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7432 $B422 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x743a $B42A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7442 $B432 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x744a $B43A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7452 $B442 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x745a $B44A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7462 $B452 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x746a $B45A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7472 $B462 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x747a $B46A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7482 $B472 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x748a $B47A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7492 $B482 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x749a $B48A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74a2 $B492 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74aa $B49A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74b2 $B4A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74ba $B4AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74c2 $B4B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74ca $B4BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74d2 $B4C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74da $B4CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74e2 $B4D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74ea $B4DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74f2 $B4E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x74fa $B4EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7502 $B4F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x750a $B4FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7512 $B502 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x751a $B50A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7522 $B512 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x752a $B51A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7532 $B522 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x753a $B52A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7542 $B532 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x754a $B53A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7552 $B542 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x755a $B54A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7562 $B552 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x756a $B55A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7572 $B562 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x757a $B56A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7582 $B572 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x758a $B57A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7592 $B582 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x759a $B58A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75a2 $B592 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75aa $B59A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75b2 $B5A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75ba $B5AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75c2 $B5B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75ca $B5BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75d2 $B5C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75da $B5CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75e2 $B5D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75ea $B5DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75f2 $B5E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x75fa $B5EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7602 $B5F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x760a $B5FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7612 $B602 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x761a $B60A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7622 $B612 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x762a $B61A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7632 $B622 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x763a $B62A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7642 $B632 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x764a $B63A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7652 $B642 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x765a $B64A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7662 $B652 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x766a $B65A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7672 $B662 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x767a $B66A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7682 $B672 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x768a $B67A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7692 $B682 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x769a $B68A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76a2 $B692 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76aa $B69A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76b2 $B6A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76ba $B6AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76c2 $B6B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76ca $B6BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76d2 $B6C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76da $B6CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76e2 $B6D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76ea $B6DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76f2 $B6E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x76fa $B6EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7702 $B6F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x770a $B6FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7712 $B702 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x771a $B70A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7722 $B712 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x772a $B71A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7732 $B722 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x773a $B72A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7742 $B732 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x774a $B73A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7752 $B742 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x775a $B74A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7762 $B752 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x776a $B75A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7772 $B762 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x777a $B76A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7782 $B772 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x778a $B77A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7792 $B782 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x779a $B78A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77a2 $B792 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77aa $B79A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77b2 $B7A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77ba $B7AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77c2 $B7B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77ca $B7BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77d2 $B7C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77da $B7CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77e2 $B7D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77ea $B7DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77f2 $B7E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x77fa $B7EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7802 $B7F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x780a $B7FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7812 $B802 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x781a $B80A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7822 $B812 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x782a $B81A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7832 $B822 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x783a $B82A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7842 $B832 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x784a $B83A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7852 $B842 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x785a $B84A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7862 $B852 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x786a $B85A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7872 $B862 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x787a $B86A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7882 $B872 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x788a $B87A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7892 $B882 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x789a $B88A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78a2 $B892 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78aa $B89A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78b2 $B8A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78ba $B8AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78c2 $B8B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78ca $B8BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78d2 $B8C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78da $B8CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78e2 $B8D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78ea $B8DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78f2 $B8E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x78fa $B8EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7902 $B8F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x790a $B8FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7912 $B902 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x791a $B90A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7922 $B912 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x792a $B91A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7932 $B922 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x793a $B92A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7942 $B932 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x794a $B93A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7952 $B942 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x795a $B94A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7962 $B952 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x796a $B95A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7972 $B962 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x797a $B96A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7982 $B972 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x798a $B97A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7992 $B982 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x799a $B98A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79a2 $B992 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79aa $B99A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79b2 $B9A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79ba $B9AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79c2 $B9B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79ca $B9BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79d2 $B9C2 FF FF FF FF FF FF FF FF  ;
LB9CA:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79da $B9CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79e2 $B9D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79ea $B9DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79f2 $B9E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x79fa $B9EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a02 $B9F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a0a $B9FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a12 $BA02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a1a $BA0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a22 $BA12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a2a $BA1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a32 $BA22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a3a $BA2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a42 $BA32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a4a $BA3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a52 $BA42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a5a $BA4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a62 $BA52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a6a $BA5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a72 $BA62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a7a $BA6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a82 $BA72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a8a $BA7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a92 $BA82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7a9a $BA8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7aa2 $BA92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7aaa $BA9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ab2 $BAA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7aba $BAAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ac2 $BAB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7aca $BABA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ad2 $BAC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ada $BACA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ae2 $BAD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7aea $BADA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7af2 $BAE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7afa $BAEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b02 $BAF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b0a $BAFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b12 $BB02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b1a $BB0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b22 $BB12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b2a $BB1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b32 $BB22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b3a $BB2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b42 $BB32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b4a $BB3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b52 $BB42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b5a $BB4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b62 $BB52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b6a $BB5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b72 $BB62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b7a $BB6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b82 $BB72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b8a $BB7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b92 $BB82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7b9a $BB8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ba2 $BB92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7baa $BB9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bb2 $BBA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bba $BBAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bc2 $BBB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bca $BBBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bd2 $BBC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bda $BBCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7be2 $BBD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bea $BBDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bf2 $BBE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7bfa $BBEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c02 $BBF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c0a $BBFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c12 $BC02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c1a $BC0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c22 $BC12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c2a $BC1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c32 $BC22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c3a $BC2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c42 $BC32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c4a $BC3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c52 $BC42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c5a $BC4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c62 $BC52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c6a $BC5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c72 $BC62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c7a $BC6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c82 $BC72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c8a $BC7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c92 $BC82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7c9a $BC8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ca2 $BC92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7caa $BC9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cb2 $BCA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cba $BCAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cc2 $BCB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cca $BCBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cd2 $BCC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cda $BCCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ce2 $BCD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cea $BCDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cf2 $BCE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7cfa $BCEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d02 $BCF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d0a $BCFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d12 $BD02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d1a $BD0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d22 $BD12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d2a $BD1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d32 $BD22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d3a $BD2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d42 $BD32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d4a $BD3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d52 $BD42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d5a $BD4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d62 $BD52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d6a $BD5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d72 $BD62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d7a $BD6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d82 $BD72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d8a $BD7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d92 $BD82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7d9a $BD8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7da2 $BD92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7daa $BD9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7db2 $BDA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7dba $BDAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7dc2 $BDB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7dca $BDBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7dd2 $BDC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7dda $BDCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7de2 $BDD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7dea $BDDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7df2 $BDE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7dfa $BDEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e02 $BDF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e0a $BDFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e12 $BE02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e1a $BE0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e22 $BE12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e2a $BE1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e32 $BE22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e3a $BE2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e42 $BE32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e4a $BE3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e52 $BE42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e5a $BE4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e62 $BE52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e6a $BE5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e72 $BE62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e7a $BE6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e82 $BE72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e8a $BE7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e92 $BE82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7e9a $BE8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ea2 $BE92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7eaa $BE9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7eb2 $BEA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7eba $BEAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ec2 $BEB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7eca $BEBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ed2 $BEC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7eda $BECA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ee2 $BED2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7eea $BEDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ef2 $BEE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7efa $BEEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f02 $BEF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0x7f0a $BEFA FF FF FF FF FF FF        ;
LBF00:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f10 $BF00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f18 $BF08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f20 $BF10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f28 $BF18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f30 $BF20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f38 $BF28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f40 $BF30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f48 $BF38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f50 $BF40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f58 $BF48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f60 $BF50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f68 $BF58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f70 $BF60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7f78 $BF68 FF FF FF FF FF FF FF FF  ;
; ---------------------------------------------------------------------------- ;
bank1_codeEND:                                                                  ;
    SEI                                ; 0x7f80 $BF70 78                       ;
    CLD                                ; 0x7f81 $BF71 D8                       ;
    LDX      #$00                      ; 0x7f82 $BF72 A2 00                    ; X = 00
    STX      $2000                     ; 0x7f84 $BF74 8E 00 20                 ;
    INX                                ; 0x7f87 $BF77 E8                       ;
LBF78:                                                                          ;
    LDA      $2002                     ; 0x7f88 $BF78 AD 02 20                 ;
    BPL      LBF78                     ; 0x7f8b $BF7B 10 FB                    ;
    DEX                                ; 0x7f8d $BF7D CA                       ;
    BEQ      LBF78                     ; 0x7f8e $BF7E F0 F8                    ;
    TXS                                ; 0x7f90 $BF80 9A                       ;
    STX      bank1_Pointer_table_for_Background_Areas_Data; 0x7f91 $BF81 8E 00 80  ;
    STX      bank1_Area_Pointers_Death_Mountain; 0x7f94 $BF84 8E 00 A0             ;
    STX      bank7_PowerON_code        ; 0x7f97 $BF87 8E 00 C0                 ;
    STX      LE000                     ; 0x7f9a $BF8A 8E 00 E0                 ;
    LDA      #$0F                      ; 0x7f9d $BF8D A9 0F                    ; A = 0F
    JSR      LBF9D                     ; 0x7f9f $BF8F 20 9D BF                 ;
    JSR      LBFB1                     ; 0x7fa2 $BF92 20 B1 BF                 ;
    LDA      #$07                      ; 0x7fa5 $BF95 A9 07                    ; A = 07
    JSR      LBFCC                     ; 0x7fa7 $BF97 20 CC BF                 ;
    JMP      bank7_PowerON_code        ; 0x7faa $BF9A 4C 00 C0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBF9D:                                                                          ;
    STA      bank1_Pointer_table_for_Background_Areas_Data; 0x7fad $BF9D 8D 00 80  ;
    LSR                                ; 0x7fb0 $BFA0 4A                       ;
    STA      bank1_Pointer_table_for_Background_Areas_Data; 0x7fb1 $BFA1 8D 00 80  ;
    LSR                                ; 0x7fb4 $BFA4 4A                       ;
    STA      bank1_Pointer_table_for_Background_Areas_Data; 0x7fb5 $BFA5 8D 00 80  ;
    LSR                                ; 0x7fb8 $BFA8 4A                       ;
    STA      bank1_Pointer_table_for_Background_Areas_Data; 0x7fb9 $BFA9 8D 00 80  ;
    LSR                                ; 0x7fbc $BFAC 4A                       ;
    STA      bank1_Pointer_table_for_Background_Areas_Data; 0x7fbd $BFAD 8D 00 80  ;
    RTS                                ; 0x7fc0 $BFB0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBFB1:                                                                          ;
    STA      bank1_Area_Pointers_Death_Mountain; 0x7fc1 $BFB1 8D 00 A0             ;
    LSR                                ; 0x7fc4 $BFB4 4A                       ;
    STA      bank1_Area_Pointers_Death_Mountain; 0x7fc5 $BFB5 8D 00 A0             ;
    LSR                                ; 0x7fc8 $BFB8 4A                       ;
    STA      bank1_Area_Pointers_Death_Mountain; 0x7fc9 $BFB9 8D 00 A0             ;
    LSR                                ; 0x7fcc $BFBC 4A                       ;
    STA      bank1_Area_Pointers_Death_Mountain; 0x7fcd $BFBD 8D 00 A0             ;
    LSR                                ; 0x7fd0 $BFC0 4A                       ;
    STA      bank1_Area_Pointers_Death_Mountain; 0x7fd1 $BFC1 8D 00 A0             ;
    RTS                                ; 0x7fd4 $BFC4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      #$00                      ; 0x7fd5 $BFC5 A9 00                    ; A = 00
    BEQ      LBFCC                     ; 0x7fd7 $BFC7 F0 03                    ;
    LDA      $0769                     ; 0x7fd9 $BFC9 AD 69 07                 ;; Bank to switch to (other than 0 or 7)
LBFCC:                                                                          ;
    STA      LE000                     ; 0x7fdc $BFCC 8D 00 E0                 ;
    LSR                                ; 0x7fdf $BFCF 4A                       ;
    STA      LE000                     ; 0x7fe0 $BFD0 8D 00 E0                 ;
    LSR                                ; 0x7fe3 $BFD3 4A                       ;
    STA      LE000                     ; 0x7fe4 $BFD4 8D 00 E0                 ;
    LSR                                ; 0x7fe7 $BFD7 4A                       ;
    STA      LE000                     ; 0x7fe8 $BFD8 8D 00 E0                 ;
    LSR                                ; 0x7feb $BFDB 4A                       ;
    STA      LE000                     ; 0x7fec $BFDC 8D 00 E0                 ;
    RTS                                ; 0x7fef $BFDF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_tableEND:                                                                 ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ff0 $BFE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x7ff8 $BFE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8000 $BFF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$7B,$C0,$70,$BF,$F0,$FF; 0x8008 $BFF8 FF FF 7B C0 70 BF F0 FF  ;
; ---------------------------------------------------------------------------- ;
