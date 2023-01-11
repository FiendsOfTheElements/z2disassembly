; DISASSEMBLY ORIGINALLY WROTE BY TRAX (99.9% of his work)
 * = $8000                                                                      ;
; da65 V2.18 
; Created     2021-04-12 11 24 23                                              ;
; Input file  bank2_and_7.nes                                                  ;
; Page        1                                                                ;
                                                                               ;
                                                                               ;
;.setcpu  "6502"                                                               ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L0000     = $0000                                                              ;
L000E     = $000E                                                              ;
L0302     = $0302                                                              ;
L0363     = $0363                                                              ;
L03A4     = $03A4                                                              ;
L05C9     = $05C9                                                              ;
L0600     = $0600                                                              ;
L0620     = $0620                                                              ;
L0640     = $0640                                                              ;
L0660     = $0660                                                              ;
L0680     = $0680                                                              ;
L06A0     = $06A0                                                              ;
L06C0     = $06C0                                                              ;
L6060     = $6060                                                              ;
L6261     = $6261                                                              ;
L696C     = $696C                                                              ;
L7000     = $7000                                                              ;
L7002     = $7002                                                              ;
L7020     = $7020                                                              ;
L702E     = $702E                                                              ;
L7050     = $7050                                                              ;
L7060     = $7060                                                              ;
L7076     = $7076                                                              ;
L7088     = $7088                                                              ;
L7094     = $7094                                                              ;
L709E     = $709E                                                              ;
L70A0     = $70A0                                                              ;
L70A2     = $70A2                                                              ;
L70BA     = $70BA                                                              ;
L70D8     = $70D8                                                              ;
L70DC     = $70DC                                                              ;
L70F6     = $70F6                                                              ;
L70FE     = $70FE                                                              ;
L7102     = $7102                                                              ;
L7110     = $7110                                                              ;
L7128     = $7128                                                              ;
L7132     = $7132                                                              ;
L7138     = $7138                                                              ;
L7142     = $7142                                                              ;
L7148     = $7148                                                              ;
L7150     = $7150                                                              ;
L7154     = $7154                                                              ;
L715E     = $715E                                                              ;
L7168     = $7168                                                              ;
L7172     = $7172                                                              ;
L717C     = $717C                                                              ;
L718A     = $718A                                                              ;
L718E     = $718E                                                              ;
L719C     = $719C                                                              ;
L71A6     = $71A6                                                              ;
L71AC     = $71AC                                                              ;
L71C8     = $71C8                                                              ;
L71CE     = $71CE                                                              ;
L71DC     = $71DC                                                              ;
L71EA     = $71EA                                                              ;
L71F7     = $71F7                                                              ;
L71FA     = $71FA                                                              ;
L71FD     = $71FD                                                              ;
L7200     = $7200                                                              ;
L7202     = $7202                                                              ;
L7213     = $7213                                                              ;
L7222     = $7222                                                              ;
L7240     = $7240                                                              ;
L724B     = $724B                                                              ;
L7250     = $7250                                                              ;
L725F     = $725F                                                              ;
L7270     = $7270                                                              ;
L7279     = $7279                                                              ;
L7282     = $7282                                                              ;
L7287     = $7287                                                              ;
L7294     = $7294                                                              ;
L72A1     = $72A1                                                              ;
L72B2     = $72B2                                                              ;
L72BF     = $72BF                                                              ;
L72CE     = $72CE                                                              ;
L72DD     = $72DD                                                              ;
L72EC     = $72EC                                                              ;
L72F7     = $72F7                                                              ;
L72FC     = $72FC                                                              ;
L730B     = $730B                                                              ;
L7314     = $7314                                                              ;
L7317     = $7317                                                              ;
L7320     = $7320                                                              ;
L7329     = $7329                                                              ;
L733F     = $733F                                                              ;
L734A     = $734A                                                              ;
L7351     = $7351                                                              ;
L7356     = $7356                                                              ;
L735F     = $735F                                                              ;
L736A     = $736A                                                              ;
L7371     = $7371                                                              ;
L7374     = $7374                                                              ;
L738C     = $738C                                                              ;
L73A4     = $73A4                                                              ;
L7D0A     = $7D0A                                                              ;
L7DA6     = $7DA6                                                              ;
L7F08     = $7F08                                                              ;
; ---------------------------------------------------------------------------- ;
bank2_Pointer_table_for_background_level_data                                  ;
.word    bank2_Background_Areas_Data   ; 0x8010 $8000 62 8C                    ;
.word    L8C7A                         ; 0x8012 $8002 7A 8C                    ;
.word    L8C8E                         ; 0x8014 $8004 8E 8C                    ;
.word    L8CA2                         ; 0x8016 $8006 A2 8C                    ;
.word    L8CBC                         ; 0x8018 $8008 BC 8C                    ;
.word    L8CCE                         ; 0x801a $800A CE 8C                    ;
.word    L0000                         ; 0x801c $800C 00 00                    ;
; ---------------------------------------------------------------------------- ;
bank2_Palettes_for_East_Hyrule                                                 ;
.byt    $0F,$30,$12,$16,$0F,$36,$16,$07; 0x801e $800E 0F 30 12 16 0F 36 16 07  ;? (Palette Type 0)
.byt    $0F,$00,$10,$30,$0F,$23,$03,$0F; 0x8026 $8016 0F 00 10 30 0F 23 03 0F  ;
.byt    $0F,$30,$12,$16,$0F,$37,$27,$06; 0x802e $801E 0F 30 12 16 0F 37 27 06  ;Grotto (Palette Type 1)
.byt    $0F,$27,$16,$0F,$0F,$30,$10,$00; 0x8036 $8026 0F 27 16 0F 0F 30 10 00  ;
.byt    $22,$30,$12,$16,$22,$29,$17,$09; 0x803e $802E 22 30 12 16 22 29 17 09  ;Desert (Palette Type 2)
.byt    $22,$30,$36,$27,$22,$30,$10,$00; 0x8046 $8036 22 30 36 27 22 30 10 00  ;
.byt    $21,$30,$12,$16,$21,$30,$00,$0F; 0x804e $803E 21 30 12 16 21 30 00 0F  ;Grass (Palette Type 3)
.byt    $21,$29,$19,$09,$21,$30,$10,$00; 0x8056 $8046 21 29 19 09 21 30 10 00  ;
.byt    $0F,$30,$12,$16,$0F,$17,$07,$08; 0x805e $804E 0F 30 12 16 0F 17 07 08  ;Forest (Palette Type 4)
.byt    $0F,$29,$19,$09,$0F,$30,$10,$00; 0x8066 $8056 0F 29 19 09 0F 30 10 00  ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x806e $805E 21 30 12 16 21 37 18 0F  ;Swamp (Palette Type 5)
.byt    $21,$29,$1C,$0C,$21,$30,$10,$00; 0x8076 $8066 21 29 1C 0C 21 30 10 00  ;
.byt    $03,$30,$12,$16,$03,$19,$09,$0F; 0x807e $806E 03 30 12 16 03 19 09 0F  ;Graveyard (Palette Type 6)
.byt    $03,$27,$16,$0F,$03,$30,$00,$0F; 0x8086 $8076 03 27 16 0F 03 30 00 0F  ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x808e $807E 21 30 12 16 21 37 18 0F  ;Bridge (Palette Type 7)
.byt    $21,$30,$11,$01,$21,$30,$10,$00; 0x8096 $8086 21 30 11 01 21 30 10 00  ;
.byt    $0F,$30,$12,$16,$0F,$12,$01,$0F; 0x809e $808E 0F 30 12 16 0F 12 01 0F  ;Grotto without Candle
.byt    $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F; 0x80a6 $8096 0F 0F 0F 0F 0F 0F 0F 0F  ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x80ae $809E FF 18 36 2A FF 16 27 30  ;Palettes for Sprites in Grass, Desert, Swamp, Graveyard
.byt    $FF,$0F,$16,$30,$FF,$0F,$2C,$30; 0x80b6 $80A6 FF 0F 16 30 FF 0F 2C 30  ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x80be $80AE FF 18 36 2A FF 16 27 30  ;Palettes for Sprites in Palisade Pass
.byt    $FF,$07,$16,$30,$FF,$0C,$2C,$30; 0x80c6 $80B6 FF 07 16 30 FF 0C 2C 30  ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0x80ce $80BE FF 18 36 2A FF 16 27 30  ;
.byt    $FF,$0F,$1C                    ; 0x80d6 $80C6 FF 0F 1C                 ;
L80C9                                                                          ;
.byt    $2C,$FF,$0F,$15,$25,$FF,$18,$36; 0x80d9 $80C9 2C FF 0F 15 25 FF 18 36  ;
.byt    $2A,$FF,$16,$27,$30,$FF,$0F,$2A; 0x80e1 $80D1 2A FF 16 27 30 FF 0F 2A  ;
.byt    $30,$FF,$0F,$16,$26,$FF,$01,$21; 0x80e9 $80D9 30 FF 0F 16 26 FF 01 21  ;
.byt    $11,$FF,$16,$27                ; 0x80f1 $80E1 11 FF 16 27              ;
L80E5                                                                          ;
.byt    $30,$FF,$0F,$0F,$0F,$FF,$0F,$0F; 0x80f5 $80E5 30 FF 0F 0F 0F FF 0F 0F  ;
.byt    $0F                            ; 0x80fd $80ED 0F                       ;
; ---------------------------------------------------------------------------- ;
bank2_code0                                                                    ;
txa                                    ; 0x80fe $80EE 8A                       ;
lsr                                    ; 0x80ff $80EF 4A                       ;
lsr                                    ; 0x8100 $80F0 4A                       ;
lsr                                    ; 0x8101 $80F1 4A                       ;
lsr                                    ; 0x8102 $80F2 4A                       ;
tax                                    ; 0x8103 $80F3 AA                       ;
dex                                    ; 0x8104 $80F4 CA                       ;
lda      $0730                         ; 0x8105 $80F5 AD 30 07                 ; Position of Object Placement
and      #$F0                          ; 0x8108 $80F8 29 F0                    ; keep bits xxxx ....
cmp      #$F0                          ; 0x810a $80FA C9 F0                    ;
bne      L8103                         ; 0x810c $80FC D0 05                    ;
txa                                    ; 0x810e $80FE 8A                       ;
clc                                    ; 0x810f $80FF 18                       ;
adc      #$0F                          ; 0x8110 $8100 69 0F                    ;
tax                                    ; 0x8112 $8102 AA                       ;
L8103                                                                          ;
txa                                    ; 0x8113 $8103 8A                       ;
jsr      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x8114 $8104 20 85 D3;
bank2_Pointer_table_for_Objects_Construction_Routines                          ;
.word    bank2_Used_for_Palisade_Pass  ; 0x8117 $8107 8F 93                    ;
.word    bank2_Objects_Construction_Object_2high_Xwide; 0x8119 $8109 F3 81     ;
.word    bank2_Objects_Construction_Object_2high_Xwide; 0x811b $810B F3 81     ;
.word    bank2_Objects_Construction_Object_2high_Xwide; 0x811d $810D F3 81     ;
.word    bank2_Objects_Construction_Object_1high_Xwide; 0x811f $810F 01 82     ;
.word    bank2_Objects_Construction_Object_1high_Xwide; 0x8121 $8111 01 82     ;
.word    bank2_Objects_Construction_Object_1high_Xwide; 0x8123 $8113 01 82     ;
.word    bank2_Objects_Construction_Object_1high_Xwide; 0x8125 $8115 01 82     ;
.word    bank2_Objects_Construction_Object_1high_Xwide; 0x8127 $8117 01 82     ;
.word    bank2_Objects_Construction_Object_1high_Xwide; 0x8129 $8119 01 82     ;
.word    bank2_Objects_Construction_Object_1high_Xwide; 0x812b $811B 01 82     ;
.word    bank2_Objects_Construction_Object_1high_Xwide; 0x812d $811D 01 82     ;
.word    bank2_Objects_Construction_Object_Xhigh_1wide_SingleTileType; 0x812f $811F 17 82;
.word    bank2_Objects_Construction_Object_Xhigh_1wide; 0x8131 $8121 1D 82     ;
.word    bank2_Objects_Construction_Object_Xhigh_1wide; 0x8133 $8123 1D 82     ;
.word    bank2_Objects_Construction_Object_Xhigh_1wide; 0x8135 $8125 1D 82     ;
bank2_Special_Objects__Y_Position_F                                            ;
.word    bank2_Objects_Construction_Object_LavaPit; 0x8137 $8127 8A 82         ;
.word    bank2_Objects_Construction_Object_Cactus; 0x8139 $8129 65 82          ;
.word    bank2_Objects_Construction_Object_Cactus_with_Stem; 0x813b $812B D5 82;
.word    bank2_Objects_Construction_Object_Elevator; 0x813d $812D BA 82        ;
; ---------------------------------------------------------------------------- ;
bank2_code1                                                                    ;
txa                                    ; 0x813f $812F 8A                       ;
jsr      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x8140 $8130 20 85 D3;
bank2_Pointer_table_for_Small_Objects_Construction_Routines                    ;
.word    bank2_Small_Objects_Construction_Gravestone; 0x8143 $8133 F9 82       ;
.word    bank2_Small_Objects_Construction_Cross; 0x8145 $8135 EE 82            ;
.word    bank2_Small_Objects_Construction_SlantedCross; 0x8147 $8137 F2 82     ;
.word    bank2_Small_Objects_Construction_TreeStump; 0x8149 $8139 C8 82        ;
.word    bank2_Small_Objects_Construction_Dolmen; 0x814b $813B 13 83           ;
.word    bank2_Small_Objects_Construction_LockedDoor_Ypos8; 0x814d $813D C1 82 ;
L8140     = * + $0001                                                          ;
.word    bank2_Small_Objects_Construction_Zelda; 0x814f $813F 40 83            ;
.word    bank2_Small_Objects_Construction_Zelda; 0x8151 $8141 40 83            ;
.word    bank2_Small_Objects_Construction_PitExtendingToGround; 0x8153 $8143 31 83;
.word    bank2_Small_Objects_Construction_LongCloud; 0x8155 $8145 52 83        ;
.word    bank2_Small_Objects_Construction_ShortCloud; 0x8157 $8147 58 83       ;
L8149                                                                          ;
.word    bank2_Small_Objects_Construction_ShortCloud; 0x8159 $8149 58 83       ;
.word    bank2_Small_Objects_Construction_ShortCloud; 0x815b $814B 58 83       ;
.word    bank2_Small_Objects_Construction_ShortCloud; 0x815d $814D 58 83       ;
.word    bank2_Small_Objects_Construction_ShortCloud; 0x815f $814F 58 83       ;
.word    bank2_Small_Objects_Construction_ShortCloud; 0x8161 $8151 58 83       ;
; ---------------------------------------------------------------------------- ;
bank2_Tables_for_Level_Layers_Data                                             ;
.byt    $42,$42,$54,$52,$42,$42,$55,$53; 0x8163 $8153 42 42 54 52 42 42 55 53  ;
.byt    $53,$40,$40,$8D,$90,$40,$40,$8D; 0x816b $815B 53 40 40 8D 90 40 40 8D  ;
.byt    $8C,$90,$40,$40                ; 0x8173 $8163 8C 90 40 40              ;
L8167                                                                          ;
.byt    $40,$80,$40,$40,$40,$89,$89,$40; 0x8177 $8167 40 80 40 40 40 89 89 40  ;
.byt    $40,$40,$87,$40,$40,$40,$91,$91; 0x817f $816F 40 40 87 40 40 40 91 91  ;
.byt    $40,$40,$40,$8A                ; 0x8187 $8177 40 40 40 8A              ;
L817B                                                                          ;
.byt    $40,$40,$40,$8F,$8F,$51,$51,$54; 0x818b $817B 40 40 40 8F 8F 51 51 54  ;
.byt    $52,$51,$51,$55,$53,$53,$40,$40; 0x8193 $8183 52 51 51 55 53 53 40 40  ;
.byt    $40,$C9,$40,$40,$8B,$8B,$C9,$40; 0x819b $818B 40 C9 40 40 8B 8B C9 40  ;
.byt    $40,$54,$52,$40,$40,$55,$53,$53; 0x81a3 $8193 40 54 52 40 40 55 53 53  ;
bank2_Table_for_Level_Layers_Data_pointers                                     ;
.byt    $53,$5C,$65,$6E,$77,$80,$89,$92; 0x81ab $819B 53 5C 65 6E 77 80 89 92  ;
; ---------------------------------------------------------------------------- ;
bank2_Build_A_Pointer_With_81                                                  ;
;Pointer created from 81 ($81AC?) and a value from this table                  ;
ldx      $010C                         ; 0x81b3 $81A3 AE 0C 01                 ;; Area Palette Group (Type of Area)	; Area Ground Type (0-7)
lda      bank2_Table_for_Level_Layers_Data_pointers,x; 0x81b6 $81A6 BD 9B 81   ;
sta      $0C                           ; 0x81b9 $81A9 85 0C                    ;
lda      #$81                          ; 0x81bb $81AB A9 81                    ; A = 81
sta      $0D                           ; 0x81bd $81AD 85 0D                    ;
ldy      #$08                          ; 0x81bf $81AF A0 08                    ; Y = 08
L81B1                                                                          ;
lda      ($0C),y                       ; 0x81c1 $81B1 B1 0C                    ;
sta      $010D                         ; 0x81c3 $81B3 8D 0D 01                 ;; Area Bottom Row Tile Code
rts                                    ; 0x81c6 $81B6 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Tile_Codes_for_Objects_Set0_BackgroundSky                                ;
;xx.. ....	Table selector, from pointer table at $8500                         ;
;..xx xxxx	Tile Code                                                           ;
.byt    $40                            ; 0x81c7 $81B7 40                       ;
L81B8                                                                          ;
.byt    $40                            ; 0x81c8 $81B8 40                       ;
bank2_Tile_Codes_for_Objects_Set0_ForestLeaves_2high                           ;
.byt    $8C,$8D,$8C,$8D                ; 0x81c9 $81B9 8C 8D 8C 8D              ;
bank2_Tile_Codes_for_Objects_Set0_Curtains_2high                               ;
.byt    $C0,$C1                        ; 0x81cd $81BD C0 C1                    ;
bank2_Tile_Codes_for_Objects_Set0_ForestLeaves_1high                           ;
.byt    $8D,$8E                        ; 0x81cf $81BF 8D 8E                    ;
bank2_Tile_Codes_for_Objects_Set0_BreakableBlocks_1high_invisible              ;
.byt    $61,$61                        ; 0x81d1 $81C1 61 61                    ;
bank2_Tile_Codes_for_Objects_Set0_HorizontalPit_1high                          ;
.byt    $40,$40                        ; 0x81d3 $81C3 40 40                    ;
bank2_Tile_Codes_for_Objects_Set0_SingleWeed_1high                             ;
.byt    $81,$81                        ; 0x81d5 $81C5 81 81                    ;
bank2_Tile_Codes_for_Objects_Set0_DoubleWeed_1high                             ;
.byt    $82,$82                        ; 0x81d7 $81C7 82 82                    ;
bank2_Tile_Codes_for_Objects_Set0_NorthCastleCarpet_1high                      ;
.byt    $50,$50                        ; 0x81d9 $81C9 50 50                    ;
bank2_Tile_Codes_for_Objects_Set0_NorthCastleBricks_1high                      ;
.byt    $8B,$8B                        ; 0x81db $81CB 8B 8B                    ;
bank2_Tile_Codes_for_Objects_Set0_VolcanoBackground_1high                      ;
.byt    $51,$51                        ; 0x81dd $81CD 51 51                    ;
bank2_Tile_Codes_for_Objects_Set0_BreakableBlocks_1wide_invisible              ;
.byt    $61,$61                        ; 0x81df $81CF 61 61                    ;
bank2_Tile_Codes_for_Objects_Set0_BreakableBlocks_TreeTrunk_1wide              ;
.byt    $4C,$4B                        ; 0x81e1 $81D1 4C 4B                    ;
bank2_Tile_Codes_for_Objects_Set0_BreakableBlocks_Column_1wide                 ;
.byt    $86,$85                        ; 0x81e3 $81D3 86 85                    ;
bank2_Tile_Codes_for_Objects_Set1_BackgroundSky                                ;
.byt    $40                            ; 0x81e5 $81D5 40                       ;
L81D6                                                                          ;
.byt    $40                            ; 0x81e6 $81D6 40                       ;
bank2_Tile_Codes_for_Objects_Set1_WideRockFloor_2high                          ;
.byt    $52,$53                        ; 0x81e7 $81D7 52 53                    ;
bank2_Tile_Codes_for_Objects_Set1_WideRockCeiling_2high                        ;
.byt    $53,$55                        ; 0x81e9 $81D9 53 55                    ;
bank2_Tile_Codes_for_Objects_Set1_Bridge_2high                                 ;
.byt    $4D,$5D                        ; 0x81eb $81DB 4D 5D                    ;
bank2_Tile_Codes_for_Objects_Set1_RockPlatform_1high                           ;
.byt    $54,$54                        ; 0x81ed $81DD 54 54                    ;
bank2_Tile_Codes_for_Objects_Set1_BreakableBlocks_1high_invisible              ;
.byt    $61,$61                        ; 0x81ef $81DF 61 61                    ;
bank2_Tile_Codes_for_Objects_Set1_BreakingBridge_1high                         ;
.byt    $60,$60                        ; 0x81f1 $81E1 60 60                    ;
bank2_Tile_Codes_for_Objects_Set1_SingleWeed_1high                             ;
.byt    $81,$81                        ; 0x81f3 $81E3 81 81                    ;
bank2_Tile_Codes_for_Objects_Set1_DoubleWeed_1high                             ;
.byt    $82,$82                        ; 0x81f5 $81E5 82 82                    ;
bank2_Tile_Codes_for_Objects_Set1_HorizontalPit_1high                          ;
.byt    $40,$40                        ; 0x81f7 $81E7 40 40                    ;
bank2_Tile_Codes_for_Objects_Set1_NorthCastleBricks_1high                      ;
.byt    $8B,$8B                        ; 0x81f9 $81E9 8B 8B                    ;
bank2_Tile_Codes_for_Objects_Set1_VolcanoBackground_1high                      ;
.byt    $51,$51                        ; 0x81fb $81EB 51 51                    ;
bank2_Tile_Codes_for_Objects_Set1_BreakingBlocks_1wide                         ;
.byt    $61,$61                        ; 0x81fd $81ED 61 61                    ;
bank2_Tile_Codes_for_Objects_Set1_RockFloor_1wide                              ;
.byt    $52,$53                        ; 0x81ff $81EF 52 53                    ;
bank2_Tile_Codes_for_Objects_Set1_VerticalDolmen_1wide                         ;
.byt    $59,$5A                        ; 0x8201 $81F1 59 5A                    ;
; ---------------------------------------------------------------------------- ;
bank2_Objects_Construction_Object_2high_Xwide                                  ;
jsr      bank2_Objects_Construction_Object_1high_Xwide; 0x8203 $81F3 20 01 82  ;
lda      L0000                         ; 0x8206 $81F6 A5 00                    ;
sta      $0112                         ; 0x8208 $81F8 8D 12 01                 ;; Tile Code 0 for Object
jsr      LDF4C                         ; 0x820b $81FB 20 4C DF                 ;
jmp      L8204                         ; 0x820e $81FE 4C 04 82                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Objects_Construction_Object_1high_Xwide                                  ;
jsr      L8247                         ; 0x8211 $8201 20 47 82                 ;
L8204                                                                          ;
lda      $0731                         ; 0x8214 $8204 AD 31 07                 ;; Level Object Type and Size
L8207                                                                          ;
and      #$0F                          ; 0x8217 $8207 29 0F                    ; keep bits .... xxxx
tax                                    ; 0x8219 $8209 AA                       ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x821a $820A 20 44 C9           ;
L820D                                                                          ;
lda      $0112                         ; 0x821d $820D AD 12 01                 ;; Tile Code 0 for Object
jsr      bank7_Set_tile_and_move_right_1_column; 0x8220 $8210 20 E7 DE         ; Set tile and move right 1 column
dex                                    ; 0x8223 $8213 CA                       ;
bpl      L820D                         ; 0x8224 $8214 10 F7                    ;
rts                                    ; 0x8226 $8216 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Objects_Construction_Object_Xhigh_1wide_SingleTileType                   ;
jsr      L8247                         ; 0x8227 $8217 20 47 82                 ;
jmp      L8234                         ; 0x822a $821A 4C 34 82                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Objects_Construction_Object_Xhigh_1wide                                  ;
jsr      L8247                         ; 0x822d $821D 20 47 82                 ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x8230 $8220 20 44 C9           ;
lda      $0112                         ; 0x8233 $8223 AD 12 01                 ;; Tile Code 0 for Object
jsr      LDF56                         ; 0x8236 $8226 20 56 DF                 ;
sta      $0730                         ; 0x8239 $8229 8D 30 07                 ;; Position of Object Placement
dec      $0731                         ; 0x823c $822C CE 31 07                 ;; Level Object Type and Size
lda      L0000                         ; 0x823f $822F A5 00                    ;
sta      $0112                         ; 0x8241 $8231 8D 12 01                 ;; Tile Code 0 for Object
L8234                                                                          ;
lda      $0731                         ; 0x8244 $8234 AD 31 07                 ;; Level Object Type and Size
and      #$0F                          ; 0x8247 $8237 29 0F                    ; keep bits .... xxxx
tax                                    ; 0x8249 $8239 AA                       ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x824a $823A 20 44 C9           ;
L823D                                                                          ;
lda      $0112                         ; 0x824d $823D AD 12 01                 ;; Tile Code 0 for Object
jsr      LDF56                         ; 0x8250 $8240 20 56 DF                 ; Set tile and go down 1 row
dex                                    ; 0x8253 $8243 CA                       ;
bpl      L823D                         ; 0x8254 $8244 10 F7                    ;
rts                                    ; 0x8256 $8246 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8247                                                                          ;
txa                                    ; 0x8257 $8247 8A                       ;
asl                                    ; 0x8258 $8248 0A                       ;
tax                                    ; 0x8259 $8249 AA                       ;
ldy      #$01                          ; 0x825a $824A A0 01                    ; Y = 01
lda      ($D4),y                       ; 0x825c $824C B1 D4                    ;
asl                                    ; 0x825e $824E 0A                       ;
lda      bank2_Tile_Codes_for_Objects_Set1_BackgroundSky,x; 0x825f $824F BD D5 81; Table for Objects Set 1 Tile Codes
bcs      L8257                         ; 0x8262 $8252 B0 03                    ;
lda      bank2_Tile_Codes_for_Objects_Set0_BackgroundSky,x; 0x8264 $8254 BD B7 81; Table for Objects Set 0 Tile Codes
L8257                                                                          ;
sta      $0112                         ; 0x8267 $8257 8D 12 01                 ;; Tile Code 0 for Object
lda      L81D6,x                       ; 0x826a $825A BD D6 81                 ;
bcs      L8262                         ; 0x826d $825D B0 03                    ;
lda      L81B8,x                       ; 0x826f $825F BD B8 81                 ;
L8262                                                                          ;
sta      L0000                         ; 0x8272 $8262 85 00                    ;
rts                                    ; 0x8274 $8264 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Objects_Construction_Object_Cactus                                       ;
jsr      bank7_Set_Ram_Addy_for_Object__0E_0F; 0x8275 $8265 20 47 C9           ;
lda      $0730                         ; 0x8278 $8268 AD 30 07                 ;; Position of Object Placement
and      #$0F                          ; 0x827b $826B 29 0F                    ; keep bits .... xxxx
ora      #$90                          ; 0x827d $826D 09 90                    ; set  bits x..x .... (default Y position)
sta      $0730                         ; 0x827f $826F 8D 30 07                 ;; Position of Object Placement
tay                                    ; 0x8282 $8272 A8                       ;
lda      $0731                         ; 0x8283 $8273 AD 31 07                 ;; Level Object Type and Size
and      #$0F                          ; 0x8286 $8276 29 0F                    ; keep bits .... xxxx
tax                                    ; 0x8288 $8278 AA                       ;
L8279                                                                          ;
lda      #$47                          ; 0x8289 $8279 A9 47                    ; A = 47 (Cactus Base Tile Code)
sta      (L000E),y                     ; 0x828b $827B 91 0E                    ;
tya                                    ; 0x828d $827D 98                       ;
sec                                    ; 0x828e $827E 38                       ;
sbc      #$10                          ; 0x828f $827F E9 10                    ; Go up 1 row
tay                                    ; 0x8291 $8281 A8                       ;
dex                                    ; 0x8292 $8282 CA                       ;
bne      L8279                         ; 0x8293 $8283 D0 F4                    ; loop to $8279
lda      #$46                          ; 0x8295 $8285 A9 46                    ; A = 46 (Cactus Top Tile Code)
sta      (L000E),y                     ; 0x8297 $8287 91 0E                    ;
rts                                    ; 0x8299 $8289 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Objects_Construction_Object_LavaPit                                      ;
lda      $0730                         ; 0x829a $828A AD 30 07                 ;; Position of Object Placement
and      #$0F                          ; 0x829d $828D 29 0F                    ; keep bits .... xxxx
ora      #$A0                          ; 0x829f $828F 09 A0                    ; set  bits x.x. ....
sta      $0730                         ; 0x82a1 $8291 8D 30 07                 ;; Position of Object Placement
lda      #$80                          ; 0x82a4 $8294 A9 80                    ; A = 80 (Lava Surface Tile Code)
sta      $0112                         ; 0x82a6 $8296 8D 12 01                 ;; Tile Code 0 for Object
L8299                                                                          ;
lda      $0731                         ; 0x82a9 $8299 AD 31 07                 ;; Level Object Type and Size
and      #$0F                          ; 0x82ac $829C 29 0F                    ; keep bits .... xxxx
tax                                    ; 0x82ae $829E AA                       ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x82af $829F 20 44 C9           ;
L82A2                                                                          ;
lda      $0112                         ; 0x82b2 $82A2 AD 12 01                 ;
jsr      bank7_Set_tile_and_move_right_1_column; 0x82b5 $82A5 20 E7 DE         ; Set tile and move right 1 column
dex                                    ; 0x82b8 $82A8 CA                       ;
bpl      L82A2                         ; 0x82b9 $82A9 10 F7                    ; loop to $82A2
lda      #$89                          ; 0x82bb $82AB A9 89                    ; A = 89 (Lava Tile Code)
sta      $0112                         ; 0x82bd $82AD 8D 12 01                 ;; Tile Code 0 for Object
jsr      LDF4C                         ; 0x82c0 $82B0 20 4C DF                 ; Go down 1 row
and      #$F0                          ; 0x82c3 $82B3 29 F0                    ; keep bits xxxx ....
cmp      #$D0                          ; 0x82c5 $82B5 C9 D0                    ;
bcc      L8299                         ; 0x82c7 $82B7 90 E0                    ;
rts                                    ; 0x82c9 $82B9 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Objects_Construction_Object_Elevator                                     ;
lda      $010A                         ; 0x82ca $82BA AD 0A 01                 ;
sta      $0757                         ; 0x82cd $82BD 8D 57 07                 ;; Position of Elevator in Map
rts                                    ; 0x82d0 $82C0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_LockedDoor_Ypos8                              ;
lda      $010A                         ; 0x82d1 $82C1 AD 0A 01                 ;
sta      $0758                         ; 0x82d4 $82C4 8D 58 07                 ;; Position of Locked Door in Map
rts                                    ; 0x82d7 $82C7 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_TreeStump                                     ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x82d8 $82C8 20 44 C9           ;
lda      #$5B                          ; 0x82db $82CB A9 5B                    ; A = 5B
jsr      LDF56                         ; 0x82dd $82CD 20 56 DF                 ; Set tile and go down 1 row
lda      #$5C                          ; 0x82e0 $82D0 A9 5C                    ; A = 5C
sta      (L000E),y                     ; 0x82e2 $82D2 91 0E                    ;
rts                                    ; 0x82e4 $82D4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Objects_Construction_Object_Cactus_with_Stem                             ;
jsr      bank7_Set_Ram_Addy_for_Object__0E_0F; 0x82e5 $82D5 20 47 C9           ;
lda      $0730                         ; 0x82e8 $82D8 AD 30 07                 ;; Position of Object Placement
and      #$0F                          ; 0x82eb $82DB 29 0F                    ; keep bits .... xxxx
ora      #$90                          ; 0x82ed $82DD 09 90                    ; set  bits x..x .... (default Y position)
tay                                    ; 0x82ef $82DF A8                       ;
lda      #$49                          ; 0x82f0 $82E0 A9 49                    ; A = 49 (Cactus with Arm Bottom Tile Code)
sta      (L000E),y                     ; 0x82f2 $82E2 91 0E                    ;
tya                                    ; 0x82f4 $82E4 98                       ;
sec                                    ; 0x82f5 $82E5 38                       ;
sbc      #$10                          ; 0x82f6 $82E6 E9 10                    ; Go up 1 row
tay                                    ; 0x82f8 $82E8 A8                       ;
lda      #$48                          ; 0x82f9 $82E9 A9 48                    ; A = 48 (Cactus with Arm Top Tile Code)
sta      (L000E),y                     ; 0x82fb $82EB 91 0E                    ;
rts                                    ; 0x82fd $82ED 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_Cross                                         ;
ldx      #$00                          ; 0x82fe $82EE A2 00                    ; X = 00
beq      L82FB                         ; 0x8300 $82F0 F0 09                    ;
bank2_Small_Objects_Construction_SlantedCross                                  ;
ldx      #$01                          ; 0x8302 $82F2 A2 01                    ; X = 01
bne      L82FB                         ; 0x8304 $82F4 D0 05                    ;
bank2_Table_for_Cross__Slanted_Cross_and_Gravestone                            ;
.byt    $C6,$C7,$C5                    ; 0x8306 $82F6 C6 C7 C5                 ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_Gravestone                                    ;
ldx      #$02                          ; 0x8309 $82F9 A2 02                    ; X = 02
L82FB                                                                          ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x830b $82FB 20 44 C9           ;
lda      bank2_Table_for_Cross__Slanted_Cross_and_Gravestone,x; 0x830e $82FE BD F6 82;
sta      (L000E),y                     ; 0x8311 $8301 91 0E                    ;
L8303                                                                          ;
rts                                    ; 0x8313 $8303 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Dolmen_Tile_Codes_High                                         ;
.byt    $56,$57,$57,$58,$FF            ; 0x8314 $8304 56 57 57 58 FF           ;
bank2_Table_for_Dolmen_Tile_Codes_Middle                                       ;
.byt    $59,$40,$40,$59,$FF            ; 0x8319 $8309 59 40 40 59 FF           ;
bank2_Table_for_Dolmen_Tile_Codes_Low                                          ;
.byt    $5A,$40,$40,$5A,$FF            ; 0x831e $830E 5A 40 40 5A FF           ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_Dolmen                                        ;
ldx      #$00                          ; 0x8323 $8313 A2 00                    ; X = 00
L8315                                                                          ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x8325 $8315 20 44 C9           ;
L8318                                                                          ;
lda      bank2_Table_for_Dolmen_Tile_Codes_High,x; 0x8328 $8318 BD 04 83       ; refer to table at $8304
cmp      #$FF                          ; 0x832b $831B C9 FF                    ;
beq      L8326                         ; 0x832d $831D F0 07                    ;
jsr      bank7_Set_tile_and_move_right_1_column; 0x832f $831F 20 E7 DE         ; Set tile and move right 1 column
inx                                    ; 0x8332 $8322 E8                       ;
jmp      L8318                         ; 0x8333 $8323 4C 18 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8326                                                                          ;
cpx      #$0E                          ; 0x8336 $8326 E0 0E                    ;
beq      L8303                         ; 0x8338 $8328 F0 D9                    ;
jsr      LDF4C                         ; 0x833a $832A 20 4C DF                 ; Go down 1 row
inx                                    ; 0x833d $832D E8                       ;
jmp      L8315                         ; 0x833e $832E 4C 15 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_PitExtendingToGround                          ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x8341 $8331 20 44 C9           ;
L8334                                                                          ;
lda      #$40                          ; 0x8344 $8334 A9 40                    ; A = 40 (Empty Tile)
jsr      LDF56                         ; 0x8346 $8336 20 56 DF                 ; Set tile and go down 1 row
and      #$F0                          ; 0x8349 $8339 29 F0                    ; keep bits xxxx ....
cmp      #$D0                          ; 0x834b $833B C9 D0                    ; stop at bottom of screen
bcc      L8334                         ; 0x834d $833D 90 F5                    ;
rts                                    ; 0x834f $833F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_Zelda                                         ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x8350 $8340 20 44 C9           ;
ldx      #$01                          ; 0x8353 $8343 A2 01                    ; X = 01
lda      #$4E                          ; 0x8355 $8345 A9 4E                    ; A = 4E (Zelda's Head Tile Code)
bne      L834B                         ; 0x8357 $8347 D0 02                    ;
L8349                                                                          ;
lda      #$4F                          ; 0x8359 $8349 A9 4F                    ; A = 4F (Zelda's Body Tile Code)
L834B                                                                          ;
sta      (L000E),y                     ; 0x835b $834B 91 0E                    ;
iny                                    ; 0x835d $834D C8                       ;
dex                                    ; 0x835e $834E CA                       ;
bpl      L8349                         ; 0x835f $834F 10 F8                    ;
rts                                    ; 0x8361 $8351 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_LongCloud                                     ;
ldx      #$00                          ; 0x8362 $8352 A2 00                    ; X = 00
beq      L835A                         ; 0x8364 $8354 F0 04                    ;
bank2_Table_for_Right_End_of_Clouds_Tile_Codes                                 ;
;C3	Long Cloud                                                                 ;
;C4	Short Cloud                                                                ;
.byt    $C3,$C4                        ; 0x8366 $8356 C3 C4                    ;
; ---------------------------------------------------------------------------- ;
bank2_Small_Objects_Construction_ShortCloud                                    ;
ldx      #$01                          ; 0x8368 $8358 A2 01                    ; X = 01
L835A                                                                          ;
jsr      bank7_Set_RAM_Address_for_Object0E0F; 0x836a $835A 20 44 C9           ;
lda      #$C2                          ; 0x836d $835D A9 C2                    ; A = C2
sta      (L000E),y                     ; 0x836f $835F 91 0E                    ;
iny                                    ; 0x8371 $8361 C8                       ;
lda      bank2_Table_for_Right_End_of_Clouds_Tile_Codes,x; 0x8372 $8362 BD 56 83;
sta      (L000E),y                     ; 0x8375 $8365 91 0E                    ;
rts                                    ; 0x8377 $8367 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Check_for_Hidden_Palace_spot                                             ;
lda      $0706                         ; 0x8378 $8368 AD 06 07                 ; Current Region
cmp      #$02                          ; 0x837b $836B C9 02                    ; Region 02 = East Hyrule
bne      L838E                         ; 0x837d $836D D0 1F                    ; if NOT 02, return
lda      $73                           ; 0x837f $836F A5 73                    ; Y position on map
cmp      #$64                          ; 0x8381 $8371 C9 64                    ; Y position of Hidden Palace call spot
bne      bank2_Check_for_Spider_in_OW  ; 0x8383 $8373 D0 12                    ;
lda      $74                           ; 0x8385 $8375 A5 74                    ; X position on map
cmp      #$2D                          ; 0x8387 $8377 C9 2D                    ; X position of Hidden Palace call spot
bne      bank2_Check_for_Spider_in_OW  ; 0x8389 $8379 D0 0C                    ;
lda      #$0B                          ; 0x838b $837B A9 0B                    ; A = 0B
sta      $0725                         ; 0x838d $837D 8D 25 07                 ;; PPU Macro Selector	
inc      $01                           ; 0x8390 $8380 E6 01                    ; 2 tiles
inc      $01                           ; 0x8392 $8382 E6 01                    ; south...
jmp      bank7_forest_chop_with_hammer ; 0x8394 $8384 4C 79 DF                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Check_for_Spider_in_OW                                                   ;
lda      $0563                         ; 0x8397 $8387 AD 63 05                 ; Type of terrain Link is facing
cmp      #$0F                          ; 0x839a $838A C9 0F                    ; Terrain Type F = Spider
beq      L838F                         ; 0x839c $838C F0 01                    ;
L838E                                                                          ;
rts                                    ; 0x839e $838E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L838F                                                                          ;
jsr      bank2_code5                   ; 0x839f $838F 20 A1 83                 ;
jmp      bank7_forest_chop_with_hammer ; 0x83a2 $8392 4C 79 DF                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_table0                                                                   ;
.byt    $0A,$00,$00,$82,$6C,$6C,$00,$00; 0x83a5 $8395 0A 00 00 82 6C 6C 00 00  ;
.byt    $82,$6C,$6C,$FF                ; 0x83ad $839D 82 6C 6C FF              ;
; ---------------------------------------------------------------------------- ;
bank2_code5                                                                    ;
jsr      LDF01                         ; 0x83b1 $83A1 20 01 DF                 ;
lda      #$00                          ; 0x83b4 $83A4 A9 00                    ; A = 00
sta      $7D                           ; 0x83b6 $83A6 85 7D                    ;;number of pixels to move? automove? on overworld, only partially, causes bug
ldy      #$0B                          ; 0x83b8 $83A8 A0 0B                    ; Y = 0B
L83AA                                                                          ;
lda      bank2_table0,y                ; 0x83ba $83AA B9 95 83                 ; refer to table at $8395
sta      $0301,y                       ; 0x83bd $83AD 99 01 03                 ;
dey                                    ; 0x83c0 $83B0 88                       ;
bpl      L83AA                         ; 0x83c1 $83B1 10 F7                    ;
lda      $79                           ; 0x83c3 $83B3 A5 79                    ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
sta      L0302                         ; 0x83c5 $83B5 8D 02 03                 ;; Used when writing text to screen
sta      $0307                         ; 0x83c8 $83B8 8D 07 03                 ;; Text memory offset?
lda      $7A                           ; 0x83cb $83BB A5 7A                    ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
sta      $0303                         ; 0x83cd $83BD 8D 03 03                 ;; Letter position when writing to screen
clc                                    ; 0x83d0 $83C0 18                       ;
adc      #$01                          ; 0x83d1 $83C1 69 01                    ;
sta      $0308                         ; 0x83d3 $83C3 8D 08 03                 ;
lda      $76                           ; 0x83d6 $83C6 A5 76                    ; X position on map (Link)
sta      L0000                         ; 0x83d8 $83C8 85 00                    ;
lda      $75                           ; 0x83da $83CA A5 75                    ; Y position on map (Link)
sta      $01                           ; 0x83dc $83CC 85 01                    ;
rts                                    ; 0x83de $83CE 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L83CF                                                                          ;
lda      L0000                         ; 0x83df $83CF A5 00                    ;
cmp      #$40                          ; 0x83e1 $83D1 C9 40                    ; Check if at the extreme right of the map
bcs      L8404                         ; 0x83e3 $83D3 B0 2F                    ; Overworld width here too (east boundary)
lda      $01                           ; 0x83e5 $83D5 A5 01                    ;
sec                                    ; 0x83e7 $83D7 38                       ;
sbc      #$1E                          ; 0x83e8 $83D8 E9 1E                    ;
sta      $04                           ; 0x83ea $83DA 85 04                    ;
cmp      #$4B                          ; 0x83ec $83DC C9 4B                    ;
bcs      L8404                         ; 0x83ee $83DE B0 24                    ;
jsr      L93BA                         ; 0x83f0 $83E0 20 BA 93                 ;
inc      L0000                         ; 0x83f3 $83E3 E6 00                    ;
lda      #$00                          ; 0x83f5 $83E5 A9 00                    ; A = 00
sta      $03                           ; 0x83f7 $83E7 85 03                    ;
ldx      #$03                          ; 0x83f9 $83E9 A2 03                    ; X = 03
L83EB                                                                          ;
lda      (L000E),y                     ; 0x83fb $83EB B1 0E                    ;
and      #$0F                          ; 0x83fd $83ED 29 0F                    ; keep bits .... xxxx
sta      $02                           ; 0x83ff $83EF 85 02                    ;
lda      (L000E),y                     ; 0x8401 $83F1 B1 0E                    ;
lsr                                    ; 0x8403 $83F3 4A                       ;
lsr                                    ; 0x8404 $83F4 4A                       ;
lsr                                    ; 0x8405 $83F5 4A                       ;
lsr                                    ; 0x8406 $83F6 4A                       ;
sec                                    ; 0x8407 $83F7 38                       ;
adc      $03                           ; 0x8408 $83F8 65 03                    ;
sta      $03                           ; 0x840a $83FA 85 03                    ;
cmp      L0000                         ; 0x840c $83FC C5 00                    ;
bcs      L8408                         ; 0x840e $83FE B0 08                    ;
iny                                    ; 0x8410 $8400 C8                       ;
jmp      L83EB                         ; 0x8411 $8401 4C EB 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8404                                                                          ;
lda      #$0C                          ; 0x8414 $8404 A9 0C                    ; A = 0C
sta      $02                           ; 0x8416 $8406 85 02                    ;
L8408                                                                          ;
rts                                    ; 0x8418 $8408 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Code_values_for_Random_Battle_Areas_Desert                               ;
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
.byt    $5D,$5E                        ; 0x8419 $8409 5D 5E                    ;
bank2_Code_values_for_Random_Battle_Areas_Grass                                ;
.byt    $62,$63                        ; 0x841b $840B 62 63                    ;
bank2_Code_values_for_Random_Battle_Areas_Forest                               ;
.byt    $67,$68                        ; 0x841d $840D 67 68                    ;
bank2_Code_values_for_Random_Battle_Areas_Swamp                                ;
.byt    $6F,$70                        ; 0x841f $840F 6F 70                    ;
bank2_Code_values_for_Random_Battle_Areas_Graveyard                            ;
.byt    $74,$75                        ; 0x8421 $8411 74 75                    ;
bank2_Code_values_for_Random_Battle_Areas_Road                                 ;
.byt    $79,$7A                        ; 0x8423 $8413 79 7A                    ;
bank2_Code_values_for_Random_Battle_Areas_Lava                                 ;
.byt    $7B,$7C                        ; 0x8425 $8415 7B 7C                    ;
bank2_Table_0_1_for_Area_Objects_Tile_Mappings                                 ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x8427 $8417 F4 F4 F4 F4 F4 F4 F4 F4  ;
.byt    $38,$39,$3A,$3B,$FD,$FD,$FD,$FD; 0x842f $841F 38 39 3A 3B FD FD FD FD  ;
.byt    $FF,$FF,$FF,$FF,$53,$53,$54,$54; 0x8437 $8427 FF FF FF FF 53 53 54 54  ;
.byt    $3C,$3D,$F4,$F4,$3D,$3D,$F4,$F4; 0x843f $842F 3C 3D F4 F4 3D 3D F4 F4  ;
.byt    $3C,$3D,$F4,$3E,$3D,$3D,$3F,$F4; 0x8447 $8437 3C 3D F4 3E 3D 3D 3F F4  ;
.byt    $6E,$6E,$6F,$6F,$44,$45,$46,$47; 0x844f $843F 6E 6E 6F 6F 44 45 46 47  ;
.byt    $33,$45,$34,$47,$F4,$7C,$F4,$7C; 0x8457 $8447 33 45 34 47 F4 7C F4 7C  ;
.byt    $28,$2C,$29,$2C,$2A,$2C,$2B,$2C; 0x845f $844F 28 2C 29 2C 2A 2C 2B 2C  ;
.byt    $7F,$FE,$7F,$FE,$2C,$2D,$2E,$2F; 0x8467 $8457 7F FE 7F FE 2C 2D 2E 2F  ;
.byt    $A1,$9F,$A2,$A0,$9D,$9E,$9F,$A0; 0x846f $845F A1 9F A2 A0 9D 9E 9F A0  ;
.byt    $A1,$A3,$A2,$A4,$9D,$A3,$9E,$A4; 0x8477 $8467 A1 A3 A2 A4 9D A3 9E A4  ;
.byt    $88                            ; 0x847f $846F 88                       ;
L8470                                                                          ;
.byt    $89,$8A,$8B,$8A,$8B,$8A,$8B,$8A; 0x8480 $8470 89 8A 8B 8A 8B 8A 8B 8A  ;
.byt    $8B,$8C,$8D,$A7,$A8,$A9,$AA,$A8; 0x8488 $8478 8B 8C 8D A7 A8 A9 AA A8  ;
.byt    $A8,$AA,$AA,$40,$40,$42,$42,$40; 0x8490 $8480 A8 AA AA 40 40 42 42 40  ;
.byt    $41,$42,$43,$7D,$F4,$7D,$F4,$87; 0x8498 $8488 41 42 43 7D F4 7D F4 87  ;
.byt    $F4,$87,$F4,$87,$6D,$87,$6F,$92; 0x84a0 $8490 F4 87 F4 87 6D 87 6F 92  ;
.byt    $93,$92,$93,$68,$69,$68,$69    ; 0x84a8 $8498 93 92 93 68 69 68 69     ;
bank2_Table_2_for_Area_Objects_Tile_Mappings                                   ;
.byt    $98,$99,$98,$99,$4E,$4F,$F4,$F4; 0x84af $849F 98 99 98 99 4E 4F F4 F4  ;
.byt    $4E,$4F,$4E,$4F,$4C,$4D,$4C,$4D; 0x84b7 $84A7 4E 4F 4E 4F 4C 4D 4C 4D  ;
.byt    $78,$79,$78,$79,$A5,$A5,$A6,$A6; 0x84bf $84AF 78 79 78 79 A5 A5 A6 A6  ;
.byt    $8E,$8F,$90,$91,$98,$99,$98,$99; 0x84c7 $84B7 8E 8F 90 91 98 99 98 99  ;
.byt    $98,$99,$98,$99,$FE,$FE,$FE,$FE; 0x84cf $84BF 98 99 98 99 FE FE FE FE  ;
.byt    $F4,$F4,$F4,$35,$9A,$9B,$9A,$9B; 0x84d7 $84C7 F4 F4 F4 35 9A 9B 9A 9B  ;
.byt    $50,$51,$52,$53,$50,$54,$52,$55; 0x84df $84CF 50 51 52 53 50 54 52 55  ;
.byt    $7A                            ; 0x84e7 $84D7 7A                       ;
L84D8                                                                          ;
.byt    $7F,$7C,$81,$36,$36,$37,$37,$48; 0x84e8 $84D8 7F 7C 81 36 36 37 37 48  ;
.byt    $49,$4A,$4B,$99,$99,$99,$99    ; 0x84f0 $84E0 49 4A 4B 99 99 99 99     ;
bank2_UNUSED_84E7                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x84f7 $84E7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x84ff $84EF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8507 $84F7 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0x850f $84FF FF                       ;
; ---------------------------------------------------------------------------- ;
bank2_Pointer_table_for_Objects_Tile_Mappings_                                 ;
.word    bank2_Table_0_1_for_Area_Objects_Tile_Mappings; 0x8510 $8500 17 84    ;
.word    bank2_Table_0_1_for_Area_Objects_Tile_Mappings; 0x8512 $8502 17 84    ;
.word    bank2_Table_2_for_Area_Objects_Tile_Mappings; 0x8514 $8504 9F 84      ;
.word    bank2_Table_3_for_Area_Objects_Tile_Mappings; 0x8516 $8506 60 93      ;
bank2_Pointer_table_for_Overworld_Map_Data                                     ;
.word    bank2_East_Hyrule_Overworld_Map_Data; 0x8518 $8508 46 90              ;
.word    bank2_Maze_Island_Overworld_Map_Data; 0x851a $850A 4C A6              ;
; ---------------------------------------------------------------------------- ;
bank2_code6                                                                    ;
pha                                    ; 0x851c $850C 48                       ;
and      #$C0                          ; 0x851d $850D 29 C0                    ; keep bits xx.. ....
clc                                    ; 0x851f $850F 18                       ;
rol                                    ; 0x8520 $8510 2A                       ;
rol                                    ; 0x8521 $8511 2A                       ;
rol                                    ; 0x8522 $8512 2A                       ;
tay                                    ; 0x8523 $8513 A8                       ;
dey                                    ; 0x8524 $8514 88                       ;
pla                                    ; 0x8525 $8515 68                       ;
cmp      L938C,y                       ; 0x8526 $8516 D9 8C 93                 ;
rts                                    ; 0x8529 $8519 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_table1                                                                   ;
.byt    $00                            ; 0x852a $851A 00                       ;
L851B                                                                          ;
.byt    $00                            ; 0x852b $851B 00                       ;
L851C                                                                          ;
.byt    $00,$00                        ; 0x852c $851C 00 00                    ;
L851E                                                                          ;
.byt    $61                            ; 0x852e $851E 61                       ;
L851F                                                                          ;
.byt    $60                            ; 0x852f $851F 60                       ;
L8520                                                                          ;
.byt    $80                            ; 0x8530 $8520 80                       ;
L8521                                                                          ;
.byt    $87                            ; 0x8531 $8521 87                       ;
L8522                                                                          ;
.byt    $91                            ; 0x8532 $8522 91                       ;
; ---------------------------------------------------------------------------- ;
bank2_Area_Pointers_East_Hyrule                                                ;
.word    L8D80                         ; 0x8533 $8523 80 8D                    ;
.word    L8D80                         ; 0x8535 $8525 80 8D                    ;
.word    L8F84                         ; 0x8537 $8527 84 8F                    ;
.word    L8F84                         ; 0x8539 $8529 84 8F                    ;
.word    L8F84                         ; 0x853b $852B 84 8F                    ;
.word    L8F84                         ; 0x853d $852D 84 8F                    ;
.word    L8F0B                         ; 0x853f $852F 0B 8F                    ;
.word    L8F8A                         ; 0x8541 $8531 8A 8F                    ;
.word    L8E7E                         ; 0x8543 $8533 7E 8E                    ;
.word    L8E62                         ; 0x8545 $8535 62 8E                    ;
.word    L8EB4                         ; 0x8547 $8537 B4 8E                    ;
.word    L8E2E                         ; 0x8549 $8539 2E 8E                    ;
.word    L8F9B                         ; 0x854b $853B 9B 8F                    ;
.word    L8E96                         ; 0x854d $853D 96 8E                    ;
.word    L8E62                         ; 0x854f $853F 62 8E                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x8551 $8541 D8 8C                    ;
.word    L8E7E                         ; 0x8553 $8543 7E 8E                    ;
.word    L8E96                         ; 0x8555 $8545 96 8E                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x8557 $8547 D8 8C                    ;
.word    L8E7E                         ; 0x8559 $8549 7E 8E                    ;
.word    L8E62                         ; 0x855b $854B 62 8E                    ;
.word    L8E62                         ; 0x855d $854D 62 8E                    ;
.word    L8FA6                         ; 0x855f $854F A6 8F                    ;
.word    L8F0B                         ; 0x8561 $8551 0B 8F                    ;
.word    L8EBF                         ; 0x8563 $8553 BF 8E                    ;
.word    L8EBF                         ; 0x8565 $8555 BF 8E                    ;
L8558     = * + $0001                                                          ;
.word    L8EBF                         ; 0x8567 $8557 BF 8E                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x8569 $8559 D8 8C                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x856b $855B D8 8C                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x856d $855D D8 8C                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x856f $855F D8 8C                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x8571 $8561 D8 8C                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x8573 $8563 D8 8C                    ;
.word    L8DB5                         ; 0x8575 $8565 B5 8D                    ;
.word    L8CF4                         ; 0x8577 $8567 F4 8C                    ;
.word    L8CF4                         ; 0x8579 $8569 F4 8C                    ;
.word    L8CF4                         ; 0x857b $856B F4 8C                    ;
.word    L8CF4                         ; 0x857d $856D F4 8C                    ;
.word    L8DA0                         ; 0x857f $856F A0 8D                    ;
.word    L8D0E                         ; 0x8581 $8571 0E 8D                    ;
.word    L8D0E                         ; 0x8583 $8573 0E 8D                    ;
.word    L8D0E                         ; 0x8585 $8575 0E 8D                    ;
.word    L8D0E                         ; 0x8587 $8577 0E 8D                    ;
.word    bank2_Area_Data_East_Hyrule   ; 0x8589 $8579 D8 8C                    ;
.word    L8DF7                         ; 0x858b $857B F7 8D                    ;
.word    L9004                         ; 0x858d $857D 04 90                    ;
.word    L8FF9                         ; 0x858f $857F F9 8F                    ;
.word    L8D30                         ; 0x8591 $8581 30 8D                    ;
.word    L8D30                         ; 0x8593 $8583 30 8D                    ;
.word    L8D30                         ; 0x8595 $8585 30 8D                    ;
.word    L8D30                         ; 0x8597 $8587 30 8D                    ;
.word    L8DDC                         ; 0x8599 $8589 DC 8D                    ;
.word    L8D52                         ; 0x859b $858B 52 8D                    ;
.word    L8D52                         ; 0x859d $858D 52 8D                    ;
.word    L8D52                         ; 0x859f $858F 52 8D                    ;
.word    L8D52                         ; 0x85a1 $8591 52 8D                    ;
.word    L8F27                         ; 0x85a3 $8593 27 8F                    ;
.word    L8F71                         ; 0x85a5 $8595 71 8F                    ;
.word    L8F71                         ; 0x85a7 $8597 71 8F                    ;
.word    L8FBA                         ; 0x85a9 $8599 BA 8F                    ;
.word    L8FBA                         ; 0x85ab $859B BA 8F                    ;
.word    L8FBA                         ; 0x85ad $859D BA 8F                    ;
.word    L9019                         ; 0x85af $859F 19 90                    ;
bank2_Enemy_Pointers__East_Hyrule                                              ;
.word    L70F6                         ; 0x85b1 $85A1 F6 70                    ;Base Offset is 88A0
.word    L7110                         ; 0x85b3 $85A3 10 71                    ;
.word    L715E                         ; 0x85b5 $85A5 5E 71                    ;
.word    L7168                         ; 0x85b7 $85A7 68 71                    ;
.word    L7172                         ; 0x85b9 $85A9 72 71                    ;
.word    L717C                         ; 0x85bb $85AB 7C 71                    ;
.word    L7102                         ; 0x85bd $85AD 02 71                    ;
.word    L7000                         ; 0x85bf $85AF 00 70                    ;; Enemy Data
.word    L7128                         ; 0x85c1 $85B1 28 71                    ;
.word    L7132                         ; 0x85c3 $85B3 32 71                    ;
.word    L71FD                         ; 0x85c5 $85B5 FD 71                    ;
.word    L7138                         ; 0x85c7 $85B7 38 71                    ;
.word    L7150                         ; 0x85c9 $85B9 50 71                    ;
.word    L7148                         ; 0x85cb $85BB 48 71                    ;
.word    L7142                         ; 0x85cd $85BD 42 71                    ;
.word    L7000                         ; 0x85cf $85BF 00 70                    ;; Enemy Data
.word    L71A6                         ; 0x85d1 $85C1 A6 71                    ;
.word    L719C                         ; 0x85d3 $85C3 9C 71                    ;
.word    L7154                         ; 0x85d5 $85C5 54 71                    ;
.word    L71C8                         ; 0x85d7 $85C7 C8 71                    ;
.word    L71AC                         ; 0x85d9 $85C9 AC 71                    ;
.word    L8CF4                         ; 0x85db $85CB F4 8C                    ;
.word    L7020                         ; 0x85dd $85CD 20 70                    ;
.word    L718E                         ; 0x85df $85CF 8E 71                    ;
.word    L71CE                         ; 0x85e1 $85D1 CE 71                    ;
.word    L71DC                         ; 0x85e3 $85D3 DC 71                    ;
.word    L71EA                         ; 0x85e5 $85D5 EA 71                    ;
.word    L7000                         ; 0x85e7 $85D7 00 70                    ;; Enemy Data
.word    L7000                         ; 0x85e9 $85D9 00 70                    ;; Enemy Data
.word    L7002                         ; 0x85eb $85DB 02 70                    ;
.word    L7050                         ; 0x85ed $85DD 50 70                    ;
.word    L7050                         ; 0x85ef $85DF 50 70                    ;
.word    L7050                         ; 0x85f1 $85E1 50 70                    ;
.word    L7088                         ; 0x85f3 $85E3 88 70                    ;
.word    L7020                         ; 0x85f5 $85E5 20 70                    ;
.word    L7060                         ; 0x85f7 $85E7 60 70                    ;
.word    L7060                         ; 0x85f9 $85E9 60 70                    ;
.word    L7060                         ; 0x85fb $85EB 60 70                    ;
.word    L7094                         ; 0x85fd $85ED 94 70                    ;
.word    L702E                         ; 0x85ff $85EF 2E 70                    ;
.word    L7076                         ; 0x8601 $85F1 76 70                    ;
.word    L7076                         ; 0x8603 $85F3 76 70                    ;
.word    L7076                         ; 0x8605 $85F5 76 70                    ;
.word    L7000                         ; 0x8607 $85F7 00 70                    ;; Enemy Data
.word    L709E                         ; 0x8609 $85F9 9E 70                    ;
.word    L718A                         ; 0x860b $85FB 8A 71                    ;
.word    L7000                         ; 0x860d $85FD 00 70                    ;; Enemy Data
.word    L70A2                         ; 0x860f $85FF A2 70                    ;
.word    L70A2                         ; 0x8611 $8601 A2 70                    ;
.word    L70A2                         ; 0x8613 $8603 A2 70                    ;
.word    L70A2                         ; 0x8615 $8605 A2 70                    ;
.word    L70D8                         ; 0x8617 $8607 D8 70                    ;
.word    L70BA                         ; 0x8619 $8609 BA 70                    ;
.word    L70BA                         ; 0x861b $860B BA 70                    ;
.word    L70BA                         ; 0x861d $860D BA 70                    ;
.word    L70BA                         ; 0x861f $860F BA 70                    ;
.word    L70BA                         ; 0x8621 $8611 BA 70                    ;
.word    L71F7                         ; 0x8623 $8613 F7 71                    ;
.word    L71F7                         ; 0x8625 $8615 F7 71                    ;
.word    L70DC                         ; 0x8627 $8617 DC 70                    ;
.word    L70DC                         ; 0x8629 $8619 DC 70                    ;
.word    L70FE                         ; 0x862b $861B FE 70                    ;
.word    L71FA                         ; 0x862d $861D FA 71                    ;
; ---------------------------------------------------------------------------- ;
bank2_East_Hyrule_Key_Areas_Y_Location_                                        ;
.byt    $3A,$5B,$4C,$51,$54,$60,$5D,$64; 0x862f $861F 3A 5B 4C 51 54 60 5D 64  ;
.byt    $24,$26,$38,$34,$30,$47,$4E,$4E; 0x8637 $8627 24 26 38 34 30 47 4E 4E  ;
.byt    $4E,$4B,$4B,$4D,$4D,$51,$5B,$40; 0x863f $862F 4E 4B 4B 4D 4D 51 5B 40  ;
.byt    $38,$2C,$63,$44,$5B,$63,$53,$56; 0x8647 $8637 38 2C 63 44 5B 63 53 56  ;
.byt    $63,$00,$00,$00,$00,$00,$00,$00; 0x864f $863F 63 00 00 00 00 00 00 00  ;
L8647                                                                          ;
.byt    $A8,$B4,$80,$80,$00,$BC,$00,$A1; 0x8657 $8647 A8 B4 80 80 00 BC 00 A1  ;
.byt    $00,$00,$00,$E3,$BC,$00,$C9,$00; 0x865f $864F 00 00 00 E3 BC 00 C9 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x8667 $8657 00 00 00 00 00 00 00     ;
bank2_East_Hyrule_Key_Areas_X_Location_                                        ;
.byt    $0A,$36,$15,$11,$13,$18,$23,$25; 0x866e $865E 0A 36 15 11 13 18 23 25  ;
.byt    $09,$0A,$3F,$18,$5B,$19,$1F,$31; 0x8676 $8666 09 0A 3F 18 5B 19 1F 31  ;
.byt    $79,$02,$44,$06,$4A,$1A,$04,$35; 0x867e $866E 79 02 44 06 4A 1A 04 35  ;
.byt    $22,$30,$39,$0D,$04,$1B,$03,$08; 0x8686 $8676 22 30 39 0D 04 1B 03 08  ;
.byt    $08,$00,$00,$00,$00,$00,$00,$00; 0x868e $867E 08 00 00 00 00 00 00 00  ;
.byt    $34,$07,$00,$00,$00,$57,$00,$43; 0x8696 $8686 34 07 00 00 00 57 00 43  ;
.byt    $00,$3D,$00,$62,$3E,$2D,$04,$00; 0x869e $868E 00 3D 00 62 3E 2D 04 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x86a6 $8696 00 00 00 00 00 00 00     ;
bank2_East_Hyrule_Key_Areas_Map_Number                                         ;
.byt    $66,$6C,$02,$03,$04,$05,$00,$01; 0x86ad $869D 66 6C 02 03 04 05 00 01  ;
.byt    $06,$17,$07,$08,$C8,$09,$0B,$0D; 0x86b5 $86A5 06 17 07 08 C8 09 0B 0D  ;
.byt    $CE,$10,$D0,$13,$D4,$73,$7D,$61; 0x86bd $86AD CE 10 D0 13 D4 73 7D 61  ;
.byt    $F9,$B9,$6E,$6D,$7E,$BE,$19,$18; 0x86c5 $86B5 F9 B9 6E 6D 7E BE 19 18  ;
.byt    $1A,$00,$00,$00,$00,$00,$00,$00; 0x86cd $86BD 1A 00 00 00 00 00 00 00  ;
.byt    $28,$29,$2A,$2B,$00,$CE,$00,$D1; 0x86d5 $86C5 28 29 2A 2B 00 CE 00 D1  ;
.byt    $00,$12,$00,$D7,$23,$24,$00,$00; 0x86dd $86CD 00 12 00 D7 23 24 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x86e5 $86D5 00 00 00 00 00 00 00     ;
bank2_East_Hyrule_Key_Areas_World_Number                                       ;
.byt    $00,$00,$40,$40,$40,$40,$40,$40; 0x86ec $86DC 00 00 40 40 40 40 40 40  ;
.byt    $40,$40,$00,$00,$00,$00,$00,$00; 0x86f4 $86E4 40 40 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x86fc $86EC 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$40,$40; 0x8704 $86F4 00 00 00 00 00 00 40 40  ;
.byt    $40,$00,$00,$00,$00,$00,$00,$00; 0x870c $86FC 40 00 00 00 00 00 00 00  ;
.byt    $41,$00,$00,$00,$0A,$0A,$0A,$0A; 0x8714 $8704 41 00 00 00 0A 0A 0A 0A  ;
.byt    $0A,$0A,$0A,$0A,$0E,$12,$16,$00; 0x871c $870C 0A 0A 0A 0A 0E 12 16 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x8724 $8714 00 00 00 00 00 00 00     ;
bank2_Room_Connectivity_Data                                                   ;
.byt    $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC; 0x872b $871B FC FC FC FC FC FC FC FC  ;
.byt    $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC; 0x8733 $8723 FC FC FC FC FC FC FC FC  ;
.byt    $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC; 0x873b $872B FC FC FC FC FC FC FC FC  ;
.byt    $FC,$FC,$FC,$FC,$FC,$FF,$FF,$FC; 0x8743 $8733 FC FC FC FC FC FF FF FC  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$28; 0x874b $873B FC FF FF FD FC FF FF 28  ;
.byt    $27,$FF,$FF,$FC,$FC,$FF,$FF,$30; 0x8753 $8743 27 FF FF FC FC FF FF 30  ;
.byt    $2F,$FF,$FF,$FD,$FC,$FF,$FF,$38; 0x875b $874B 2F FF FF FD FC FF FF 38  ;
.byt    $37,$FF,$FF,$FD,$FC,$FF,$FF,$40; 0x8763 $8753 37 FF FF FD FC FF FF 40  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$48; 0x876b $875B FC FF FF FD FC FF FF 48  ;
.byt    $47,$FF,$FF,$FD,$FC,$FF,$FF,$50; 0x8773 $8763 47 FF FF FD FC FF FF 50  ;
.byt    $4F,$FF,$FF,$FD,$FC,$FF,$FF,$FC; 0x877b $876B 4F FF FF FD FC FF FF FC  ;
.byt    $FC,$FF,$FF,$FC,$FC,$FF,$FF,$FC; 0x8783 $8773 FC FF FF FC FC FF FF FC  ;
.byt    $FC,$FF,$FF,$FC,$FC,$FF,$FF,$FC; 0x878b $877B FC FF FF FC FC FF FF FC  ;
.byt    $FC,$FF,$FF,$FC,$FC,$FF,$FF,$FC; 0x8793 $8783 FC FF FF FC FC FF FF FC  ;
.byt    $FC,$FF,$FF,$FC                ; 0x879b $878B FC FF FF FC              ;
; ---------------------------------------------------------------------------- ;
bank2_Pointer_table_for_Palaces_offsets_in_Saved_RAM                           ;
.word    L7D0A                         ; 0x879f $878F 0A 7D                    ;
.word    L7F08                         ; 0x87a1 $8791 08 7F                    ;
.word    L0000                         ; 0x87a3 $8793 00 00                    ;
.word    L7DA6                         ; 0x87a5 $8795 A6 7D                    ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Palaces_to_test_for_completion                                 ;
;FF = don't test                                                               ;
;04 = check for item at $0785 + offset 04                                      ;
;                                                                              ;
;00 = Candle                                                                   ;
;01 = Glove                                                                    ;
;02 = Raft                                                                     ;
;03 = Boot                                                                     ;
;04 = Flute                                                                    ;
;05 = Cross                                                                    ;
.byt    $04,$05,$FF,$03                ; 0x87a7 $8797 04 05 FF 03              ;
; ---------------------------------------------------------------------------- ;
bank2_Transform_completed_palaces_into_stone                                   ;
ldx      #$03                          ; 0x87ab $879B A2 03                    ; X = 03
lda      $0706                         ; 0x87ad $879D AD 06 07                 ; Current Region
cmp      #$02                          ; 0x87b0 $87A0 C9 02                    ;
bne      L87A6                         ; 0x87b2 $87A2 D0 02                    ;
ldx      #$01                          ; 0x87b4 $87A4 A2 01                    ; X = 01
L87A6                                                                          ;
lda      bank2_Table_for_Palaces_to_test_for_completion,x; 0x87b6 $87A6 BD 97 87; refer to table at $8797
cmp      #$FF                          ; 0x87b9 $87A9 C9 FF                    ;
beq      L87CB                         ; 0x87bb $87AB F0 1E                    ;
tay                                    ; 0x87bd $87AD A8                       ;
lda      $0785,y                       ; 0x87be $87AE B9 85 07                 ; Item Collected?
beq      L87CB                         ; 0x87c1 $87B1 F0 18                    ;
lda      $078D,y                       ; 0x87c3 $87B3 B9 8D 07                 ; Crystal Placed?
beq      L87CB                         ; 0x87c6 $87B6 F0 13                    ;
txa                                    ; 0x87c8 $87B8 8A                       ;
asl                                    ; 0x87c9 $87B9 0A                       ;
tay                                    ; 0x87ca $87BA A8                       ;
lda      bank2_Pointer_table_for_Palaces_offsets_in_Saved_RAM,y; 0x87cb $87BB B9 8F 87;
sta      L000E                         ; 0x87ce $87BE 85 0E                    ;
lda      bank2_Pointer_table_for_Palaces_offsets_in_Saved_RAM+$01,y; 0x87d0 $87C0 B9 90 87;
sta      $0F                           ; 0x87d3 $87C3 85 0F                    ;
ldy      #$00                          ; 0x87d5 $87C5 A0 00                    ; Y = 00
lda      #$0B                          ; 0x87d7 $87C7 A9 0B                    ; A = 0B (0B = 1 Unit of Mountain)
sta      (L000E),y                     ; 0x87d9 $87C9 91 0E                    ;
L87CB                                                                          ;
cpx      #$03                          ; 0x87db $87CB E0 03                    ;
beq      L87D2                         ; 0x87dd $87CD F0 03                    ;
dex                                    ; 0x87df $87CF CA                       ;
bpl      L87A6                         ; 0x87e0 $87D0 10 D4                    ;
L87D2                                                                          ;
rts                                    ; 0x87e2 $87D2 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_UNUSED_87D3                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x87e3 $87D3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x87eb $87DB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x87f3 $87E3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x87fb $87EB FF FF FF FF FF FF FF FF  ;
L87F3                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8803 $87F3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x880b $87FB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8813 $8803 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x881b $880B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF                ; 0x8823 $8813 FF FF FF FF              ;
L8817                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8827 $8817 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x882f $881F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8837 $8827 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x883f $882F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8847 $8837 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x884f $883F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8857 $8847 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x885f $884F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8867 $8857 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x886f $885F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8877 $8867 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x887f $886F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8887 $8877 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x888f $887F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x8897 $8887 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x889f $888F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x88a7 $8897 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0x88af $889F FF                       ;
bank2_Enemy_Data_East_Hyrule_and_Maze_Island                                   ;
.byt    $01,$01,$11,$63,$16,$6A,$11,$6E; 0x88b0 $88A0 01 01 11 63 16 6A 11 6E  ;
.byt    $16,$61,$56,$6D,$56,$61,$91,$66; 0x88b8 $88A8 16 61 56 6D 56 61 91 66  ;
.byt    $96,$6B,$96,$0D,$66,$16,$6E,$16; 0x88c0 $88B0 96 6B 96 0D 66 16 6E 16  ;
.byt    $61,$58,$6E,$56,$63,$96,$6A,$96; 0x88c8 $88B8 61 58 6E 56 63 96 6A 96  ;
.byt    $07,$6D,$14,$62,$54,$69,$94,$07; 0x88d0 $88C0 07 6D 14 62 54 69 94 07  ;
.byt    $68,$14,$08,$57,$66,$94,$0D,$44; 0x88d8 $88C8 68 14 08 57 66 94 0D 44  ;
.byt    $15,$59,$15,$4D,$15,$5C,$55,$41; 0x88e0 $88D0 15 59 15 4D 15 5C 55 41  ;
.byt    $95,$49,$95,$15,$03,$0E,$47,$15; 0x88e8 $88D8 95 49 95 15 03 0E 47 15  ;
.byt    $09,$0D,$5D,$15,$02,$4E,$0F,$4D; 0x88f0 $88E0 09 0D 5D 15 02 4E 0F 4D  ;
.byt    $40,$95,$03,$8E,$59,$95,$0A,$8D; 0x88f8 $88E8 40 95 03 8E 59 95 0A 8D  ;
.byt    $05,$68,$19,$67,$99,$0B,$66,$16; 0x8900 $88F0 05 68 19 67 99 0B 66 16  ;
.byt    $68,$19,$63,$56,$6F,$56,$66,$99; 0x8908 $88F8 68 19 63 56 6F 56 66 99  ;
.byt    $0D,$72,$14,$78,$04,$70,$44,$72; 0x8910 $8900 0D 72 14 78 04 70 44 72  ;
.byt    $54,$73,$84,$76,$94,$09,$78,$14; 0x8918 $8908 54 73 84 76 94 09 78 14  ;
.byt    $7E,$18,$71,$94,$7C,$94,$09,$47; 0x8920 $8910 7E 18 71 94 7C 94 09 47  ;
.byt    $1B,$08,$0D,$45,$9B,$0A,$8D,$09; 0x8928 $8918 1B 08 0D 45 9B 0A 8D 09  ;
.byt    $47,$1A,$08,$0E,$04,$8E,$45,$9A; 0x8930 $8920 47 1A 08 0E 04 8E 45 9A  ;
.byt    $0B,$76,$16,$7E,$16,$70,$56,$75; 0x8938 $8928 0B 76 16 7E 16 70 56 75  ;
.byt    $56,$77,$D6,$01,$09,$5B,$15,$60; 0x8940 $8930 56 77 D6 01 09 5B 15 60  ;
.byt    $55,$4E,$55,$22,$95,$01,$03,$7B; 0x8948 $8938 55 4E 55 22 95 01 03 7B  ;
.byt    $5A,$01,$0F,$33,$15,$57,$15,$4E; 0x8950 $8940 5A 01 0F 33 15 57 15 4E  ;
.byt    $15,$03,$57,$4D,$55,$53,$95,$49; 0x8958 $8948 15 03 57 4D 55 53 95 49  ;
.byt    $95,$09,$64,$11,$05,$57,$63,$92; 0x8960 $8950 95 09 64 11 05 57 63 92  ;
.byt    $69,$91,$11,$45,$06,$5B,$06,$1E; 0x8968 $8958 69 91 11 45 06 5B 06 1E  ;
.byt    $06,$50,$46,$09,$46,$4D,$46,$60; 0x8970 $8960 06 50 46 09 46 4D 46 60  ;
.byt    $86,$36,$86,$0D,$44,$1C,$49,$06; 0x8978 $8968 86 36 86 0D 44 1C 49 06  ;
.byt    $43,$46,$3C,$46,$48,$86,$4B,$9C; 0x8980 $8970 43 46 3C 46 48 86 4B 9C  ;
.byt    $03,$00,$57,$01,$0D,$25,$06,$3B; 0x8988 $8978 03 00 57 01 0D 25 06 3B  ;
.byt    $15,$30,$46,$29,$46,$41,$95,$3A; 0x8990 $8980 15 30 46 29 46 41 95 3A  ;
.byt    $86,$0D,$45,$1C,$27,$06,$3E,$06; 0x8998 $8988 86 0D 45 1C 27 06 3E 06  ;
.byt    $2A,$46,$42,$9C,$36,$86,$07,$70; 0x89a0 $8990 2A 46 42 9C 36 86 07 70  ;
.byt    $0F,$1D,$58,$7F,$CF,$01,$03,$67; 0x89a8 $8998 0F 1D 58 7F CF 01 03 67  ;
L89A0                                                                          ;
.byt    $99,$01,$0D,$7F,$0B,$2D,$12,$32; 0x89b0 $89A0 99 01 0D 7F 0B 2D 12 32  ;
.byt    $52,$51,$92,$71,$D2,$7F,$CB,$01; 0x89b8 $89A8 52 51 92 71 D2 7F CB 01  ;
.byt    $07,$70,$0F,$1D,$58,$7F,$CF,$01; 0x89c0 $89B0 07 70 0F 1D 58 7F CF 01  ;
.byt    $09,$07,$06,$5A,$19,$3D,$46,$52; 0x89c8 $89B8 09 07 06 5A 19 3D 46 52  ;
.byt    $99,$07,$56,$1A,$08,$57,$46,$9C; 0x89d0 $89C0 99 07 56 1A 08 57 46 9C  ;
.byt    $09,$08,$0A,$06,$4A,$06,$8A,$70; 0x89d8 $89C8 09 08 0A 06 4A 06 8A 70  ;
.byt    $D8,$01,$05,$2C,$14,$4D,$54,$01; 0x89e0 $89D0 D8 01 05 2C 14 4D 54 01  ;
.byt    $09,$6C,$55,$31,$95,$0D,$95,$11; 0x89e8 $89D8 09 6C 55 31 95 0D 95 11  ;
.byt    $D5,$01,$05,$01,$5B,$44,$DA,$01; 0x89f0 $89E0 D5 01 05 01 5B 44 DA 01  ;
.byt    $07,$6D,$14,$69,$54,$63,$D4,$01; 0x89f8 $89E8 07 6D 14 69 54 63 D4 01  ;
.byt    $03,$79,$99,$01,$05,$7A,$1C,$7A; 0x8a00 $89F0 03 79 99 01 05 7A 1C 7A  ;
.byt    $99,$01,$03,$79,$99,$01,$09,$1F; 0x8a08 $89F8 99 01 03 79 99 01 09 1F  ;
.byt    $1D,$7C,$5B,$1F,$5D,$16,$DD,$01; 0x8a10 $8A00 1D 7C 5B 1F 5D 16 DD 01  ;
.byt    $09,$1F,$1D,$7D,$58,$1F,$5D,$16; 0x8a18 $8A08 09 1F 1D 7D 58 1F 5D 16  ;
.byt    $DD,$01,$09,$1F,$1D,$7C,$5B,$1F; 0x8a20 $8A10 DD 01 09 1F 1D 7C 5B 1F  ;
.byt    $5D,$16,$DD,$01,$0D,$1F,$1D,$60; 0x8a28 $8A18 5D 16 DD 01 0D 1F 1D 60  ;
.byt    $06,$1F,$5D,$3D,$46,$16,$DD,$45; 0x8a30 $8A20 06 1F 5D 3D 46 16 DD 45  ;
.byt    $C6,$01,$03,$58,$40,$01,$0D,$2D; 0x8a38 $8A28 C6 01 03 58 40 01 0D 2D  ;
.byt    $12,$34,$52,$4C,$52,$50,$92,$56; 0x8a40 $8A30 12 34 52 4C 52 50 92 56  ;
.byt    $92,$71,$D2,$01,$09,$52,$54,$6C; 0x8a48 $8A38 92 71 D2 01 09 52 54 6C  ;
.byt    $54,$58,$94,$60,$D4,$01,$05,$7A; 0x8a50 $8A40 54 58 94 60 D4 01 05 7A  ;
.byt    $1C,$7A,$9A,$01,$0F,$27,$15,$1C; 0x8a58 $8A48 1C 7A 9A 01 0F 27 15 1C  ;
.byt    $15,$2A,$55,$3E,$46,$11,$95,$23; 0x8a60 $8A50 15 2A 55 3E 46 11 95 23  ;
.byt    $D5,$41,$C6,$01,$0B,$27,$15,$1C; 0x8a68 $8A58 D5 41 C6 01 0B 27 15 1C  ;
.byt    $15,$2A,$55,$11,$95,$23,$D5,$01; 0x8a70 $8A60 15 2A 55 11 95 23 D5 01  ;
.byt    $05,$7A,$1C,$7A,$99,$01,$0D,$5B; 0x8a78 $8A68 05 7A 1C 7A 99 01 0D 5B  ;
.byt    $1B,$5A,$55,$30,$86,$47,$86,$6A; 0x8a80 $8A70 1B 5A 55 30 86 47 86 6A  ;
.byt    $86,$5D,$9B,$01,$0D,$5B,$1A,$5A; 0x8a88 $8A78 86 5D 9B 01 0D 5B 1A 5A  ;
.byt    $55,$60,$86,$46,$86,$59,$86,$5D; 0x8a90 $8A80 55 60 86 46 86 59 86 5D  ;
.byt    $9A,$01,$0D,$5B,$1B,$5A,$55,$30; 0x8a98 $8A88 9A 01 0D 5B 1B 5A 55 30  ;
.byt    $86,$47,$86,$6A,$86,$5D,$9B,$03; 0x8aa0 $8A90 86 47 86 6A 86 5D 9B 03  ;
.byt    $76,$C1,$03,$76,$81,$03,$79,$99; 0x8aa8 $8A98 76 C1 03 76 81 03 79 99  ;
L8AA0                                                                          ;
.byt    $01,$01,$11,$39,$1F,$3B,$1F,$3D; 0x8ab0 $8AA0 01 01 11 39 1F 3B 1F 3D  ;
.byt    $1F,$44,$5F,$5C,$5F,$64,$9F,$7C; 0x8ab8 $8AA8 1F 44 5F 5C 5F 64 9F 7C  ;
.byt    $9F,$7E,$9F,$0F,$6A,$04,$5C,$04; 0x8ac0 $8AB0 9F 7E 9F 0F 6A 04 5C 04  ;
.byt    $7D,$55,$6F,$44,$76,$95,$6C,$84; 0x8ac8 $8AB8 7D 55 6F 44 76 95 6C 84  ;
.byt    $74,$C4,$0F,$6C,$11,$4E,$11,$20; 0x8ad0 $8AC0 74 C4 0F 6C 11 4E 11 20  ;
.byt    $51,$70,$9B,$2F,$91,$41,$D1,$63; 0x8ad8 $8AC8 51 70 9B 2F 91 41 D1 63  ;
.byt    $D1,$0F,$0D,$07,$03,$47,$0A,$4A; 0x8ae0 $8AD0 D1 0F 0D 07 03 47 0A 4A  ;
.byt    $7B,$5C,$01,$C7,$74,$DC,$05,$CA; 0x8ae8 $8AD8 7B 5C 01 C7 74 DC 05 CA  ;
.byt    $0B,$7B,$12,$63,$52,$5B,$52,$43; 0x8af0 $8AE0 0B 7B 12 63 52 5B 52 43  ;
.byt    $92,$3D,$92,$05,$0F,$0F,$00,$CF; 0x8af8 $8AE8 92 3D 92 05 0F 0F 00 CF  ;
.byt    $0F,$7A,$5F,$7D,$5F,$7F,$5F,$70; 0x8b00 $8AF0 0F 7A 5F 7D 5F 7F 5F 70  ;
.byt    $9C,$00,$C7,$03,$C7,$75,$D7,$11; 0x8b08 $8AF8 9C 00 C7 03 C7 75 D7 11  ;
.byt    $60,$51,$63,$51,$66,$51,$69,$51; 0x8b10 $8B00 60 51 63 51 66 51 69 51  ;
.byt    $66,$91,$69,$91,$6C,$91,$6F,$91; 0x8b18 $8B08 66 91 69 91 6C 91 6F 91  ;
.byt    $09,$2D,$16,$4B,$52,$56,$92,$3C; 0x8b20 $8B10 09 2D 16 4B 52 56 92 3C  ;
.byt    $92,$09,$76,$5C,$79,$5A,$7C,$5C; 0x8b28 $8B18 92 09 76 5C 79 5A 7C 5C  ;
.byt    $70,$D7,$05,$0F,$0F,$00,$CF,$0D; 0x8b30 $8B20 70 D7 05 0F 0F 00 CF 0D  ;
.byt    $09,$07,$6B,$04,$0E,$07,$61,$44; 0x8b38 $8B28 09 07 6B 04 0E 07 61 44  ;
.byt    $04,$47,$75,$D7,$0D,$25,$44,$39; 0x8b40 $8B30 04 47 75 D7 0D 25 44 39  ;
.byt    $41,$2D,$44,$71,$98,$23,$84,$2B; 0x8b48 $8B38 41 2D 44 71 98 23 84 2B  ;
.byt    $84,$11,$60,$51,$63,$51,$66,$51; 0x8b50 $8B40 84 11 60 51 63 51 66 51  ;
.byt    $69,$51,$66,$91,$69,$91,$6C,$91; 0x8b58 $8B48 69 51 66 91 69 91 6C 91  ;
L8B50                                                                          ;
.byt    $6F,$91,$0D,$08,$07,$0E,$07,$5C; 0x8b60 $8B50 6F 91 0D 08 07 0E 07 5C  ;
.byt    $17,$02,$47,$06,$87,$7F,$9B,$0F; 0x8b68 $8B58 17 02 47 06 87 7F 9B 0F  ;
.byt    $3A,$05,$45,$45,$4E,$57,$64,$85; 0x8b70 $8B60 3A 05 45 45 4E 57 64 85  ;
.byt    $7E                            ; 0x8b78 $8B68 7E                       ;
L8B69                                                                          ;
.byt    $85,$63,$D7,$75,$C5,$0F,$76,$01; 0x8b79 $8B69 85 63 D7 75 C5 0F 76 01  ;
.byt    $7E,$04,$53,$57,$66,$44,$42,$84; 0x8b81 $8B71 7E 04 53 57 66 44 42 84  ;
.byt    $29,$97,$25,$C4,$0F,$7F,$11,$73; 0x8b89 $8B79 29 97 25 C4 0F 7F 11 73  ;
.byt    $51,$75,$51,$79,$81,$7C,$91,$7E; 0x8b91 $8B81 51 75 51 79 81 7C 91 7E  ;
.byt    $91,$71,$D1,$0B,$76,$58,$07,$8A; 0x8b99 $8B89 91 71 D1 0B 76 58 07 8A  ;
.byt    $79,$9C,$7D,$9C,$08,$CA,$05,$76; 0x8ba1 $8B91 79 9C 7D 9C 08 CA 05 76  ;
.byt    $57,$7F,$98,$0F,$78,$5F,$79    ; 0x8ba9 $8B99 57 7F 98 0F 78 5F 79     ;
L8BA0                                                                          ;
.byt    $5F,$7B,$5F,$73,$97,$7D,$9C,$7F; 0x8bb0 $8BA0 5F 7B 5F 73 97 7D 9C 7F  ;
.byt    $9C,$72,$DC,$09,$6D,$03,$50,$58; 0x8bb8 $8BA8 9C 72 DC 09 6D 03 50 58  ;
.byt    $76,$43,$7B,$D8,$03,$50,$83,$09; 0x8bc0 $8BB0 76 43 7B D8 03 50 83 09  ;
.byt    $32,$51,$3C,$51,$47,$91,$2D    ; 0x8bc8 $8BB8 32 51 3C 51 47 91 2D     ;
L8BBF                                                                          ;
.byt    $91,$09,$60,$52,$46,$92,$4E,$92; 0x8bcf $8BBF 91 09 60 52 46 92 4E 92  ;
.byt    $21,$D4,$07,$57,$58,$40,$94,$24; 0x8bd7 $8BC7 21 D4 07 57 58 40 94 24  ;
.byt    $D4,$0F,$6E,$14,$51,$54,$58,$54; 0x8bdf $8BCF D4 0F 6E 14 51 54 58 54  ;
.byt    $41,$94,$38,$94,$3C,$94,$23,$D4; 0x8be7 $8BD7 41 94 38 94 3C 94 23 D4  ;
.byt    $0B,$6A,$18,$68,$58,$6C,$58,$66; 0x8bef $8BDF 0B 6A 18 68 58 6C 58 66  ;
.byt    $98,$63,$D8,$07,$60,$98,$64,$98; 0x8bf7 $8BE7 98 63 D8 07 60 98 64 98  ;
.byt    $62,$D4,$05,$06,$57,$01,$D7,$09; 0x8bff $8BEF 62 D4 05 06 57 01 D7 09  ;
.byt    $3A,$04,$68,$58,$6A,$58,$60,$D4; 0x8c07 $8BF7 3A 04 68 58 6A 58 60 D4  ;
.byt    $0B,$1D,$11,$2F,$14,$50,$81,$3A; 0x8c0f $8BFF 0B 1D 11 2F 14 50 81 3A  ;
.byt    $91,$4D,$94,$07,$6A,$18,$64,$98; 0x8c17 $8C07 91 4D 94 07 6A 18 64 98  ;
.byt    $68,$98,$03,$78,$9B,$0B,$77,$15; 0x8c1f $8C0F 68 98 03 78 9B 0B 77 15  ;
.byt    $1B,$0E,$1D,$4D,$17,$8E,$79,$95; 0x8c27 $8C17 1B 0E 1D 4D 17 8E 79 95  ;
.byt    $0D,$0F,$1D,$75,$16,$17,$0E,$15; 0x8c2f $8C1F 0D 0F 1D 75 16 17 0E 15  ;
.byt    $8E,$79,$96,$00,$9D,$0F,$7F,$0C; 0x8c37 $8C27 8E 79 96 00 9D 0F 7F 0C  ;
.byt    $3A,$20,$3E,$20,$1A,$60,$31,$A0; 0x8c3f $8C2F 3A 20 3E 20 1A 60 31 A0  ;
.byt    $38,$A0,$70,$8C,$09,$67,$1C,$5A; 0x8c47 $8C37 38 A0 70 8C 09 67 1C 5A  ;
.byt    $1B,$56,$9B,$6A,$9C,$11,$72,$06; 0x8c4f $8C3F 1B 56 9B 6A 9C 11 72 06  ;
.byt    $48,$06,$7E,$06,$60,$46,$2D,$46; 0x8c57 $8C47 48 06 7E 06 60 46 2D 46  ;
.byt    $6F,$46,$49,$86,$5E,$86,$0D,$35; 0x8c5f $8C4F 6F 46 49 86 5E 86 0D 35  ;
.byt    $06,$79,$18,$6D,$06,$5F,$46,$45; 0x8c67 $8C57 06 79 18 6D 06 5F 46 45  ;
.byt    $98,$3A,$86                    ; 0x8c6f $8C5F 98 3A 86                 ;
bank2_Background_Areas_Data                                                    ;
.byt    $18,$60,$90,$00,$14,$09,$32,$0A; 0x8c72 $8C62 18 60 90 00 14 09 32 0A  ;
.byt    $28,$09,$06,$0A,$48,$09,$18,$09; 0x8c7a $8C6A 28 09 06 0A 48 09 18 09  ;
.byt    $32,$0A,$28,$09,$06,$0A,$48,$09; 0x8c82 $8C72 32 0A 28 09 06 0A 48 09  ;
L8C7A                                                                          ;
.byt    $14,$48,$90,$60,$06,$EA,$04,$EA; 0x8c8a $8C7A 14 48 90 60 06 EA 04 EA  ;
.byt    $02,$EA,$08,$EA,$06,$EA,$0A,$EA; 0x8c92 $8C82 02 EA 08 EA 06 EA 0A EA  ;
.byt    $04,$EA,$02,$EA                ; 0x8c9a $8C8A 04 EA 02 EA              ;
L8C8E                                                                          ;
.byt    $14,$48,$90,$60,$08,$EA,$06,$EA; 0x8c9e $8C8E 14 48 90 60 08 EA 06 EA  ;
.byt    $06,$EA,$02,$EA,$08,$EA,$06,$EA; 0x8ca6 $8C96 06 EA 02 EA 08 EA 06 EA  ;
.byt    $0A,$EA,$0A,$EA                ; 0x8cae $8C9E 0A EA 0A EA              ;
L8CA2                                                                          ;
.byt    $1A,$48,$90,$60,$14,$09,$32,$0A; 0x8cb2 $8CA2 1A 48 90 60 14 09 32 0A  ;
.byt    $28,$09,$06,$0A,$48,$09,$04,$EA; 0x8cba $8CAA 28 09 06 0A 48 09 04 EA  ;
.byt    $14,$09,$32,$0A,$28,$09,$06,$0A; 0x8cc2 $8CB2 14 09 32 0A 28 09 06 0A  ;
.byt    $48,$09                        ; 0x8cca $8CBA 48 09                    ;
L8CBC                                                                          ;
.byt    $12,$E0,$0E,$48,$D8,$09,$E1,$00; 0x8ccc $8CBC 12 E0 0E 48 D8 09 E1 00  ;
.byt    $D8,$0F,$E2,$00,$D8,$09,$E3,$00; 0x8cd4 $8CC4 D8 0F E2 00 D8 09 E3 00  ;
.byt    $D8,$0E                        ; 0x8cdc $8CCC D8 0E                    ;
L8CCE                                                                          ;
.byt    $0A,$E0,$0E,$08,$D8,$08,$E3,$00; 0x8cde $8CCE 0A E0 0E 08 D8 08 E3 00  ;
.byt    $D8,$0F                        ; 0x8ce6 $8CD6 D8 0F                    ;
bank2_Area_Data_East_Hyrule                                                    ;
.byt    $1C,$C0,$C2,$11,$F5,$32,$F2,$41; 0x8ce8 $8CD8 1C C0 C2 11 F5 32 F2 41  ;
.byt    $F6                            ; 0x8cf0 $8CE0 F6                       ;
L8CE1                                                                          ;
.byt    $32,$F4,$41,$F2,$32,$F2,$41,$F8; 0x8cf1 $8CE1 32 F4 41 F2 32 F2 41 F8  ;
.byt    $41,$F4,$41,$F2,$32,$F2,$32,$F1; 0x8cf9 $8CE9 41 F4 41 F2 32 F2 32 F1  ;
.byt    $41,$F4,$41                    ; 0x8d01 $8CF1 41 F4 41                 ;
L8CF4                                                                          ;
.byt    $1A,$44,$C2,$18,$86,$91,$53,$E4; 0x8d04 $8CF4 1A 44 C2 18 86 91 53 E4  ;
.byt    $62,$E3,$84,$92,$87,$91,$85,$92; 0x8d0c $8CFC 62 E3 84 92 87 91 85 92  ;
.byt    $53,$E4,$81,$90,$85,$91,$63,$E3; 0x8d14 $8D04 53 E4 81 90 85 91 63 E3  ;
.byt    $83,$90                        ; 0x8d1c $8D0C 83 90                    ;
L8D0E                                                                          ;
.byt    $22,$40,$F3,$60,$00,$3F,$10,$3F; 0x8d1e $8D0E 22 40 F3 60 00 3F 10 3F  ;
.byt    $20,$33,$28,$35,$32,$33,$06,$3F; 0x8d26 $8D16 20 33 28 35 32 33 06 3F  ;
.byt    $10,$3F,$22,$35,$2C,$31,$02,$3F; 0x8d2e $8D1E 10 3F 22 35 2C 31 02 3F  ;
.byt    $10,$3F,$20,$35,$30,$33,$2A,$35; 0x8d36 $8D26 10 3F 20 35 30 33 2A 35  ;
.byt    $32,$33                        ; 0x8d3e $8D2E 32 33                    ;
L8D30                                                                          ;
.byt    $22,$40,$B1,$29,$96,$80,$74,$E2; 0x8d40 $8D30 22 40 B1 29 96 80 74 E2  ;
.byt    $52,$E4,$92,$80,$74,$E2,$94,$80; 0x8d48 $8D38 52 E4 92 80 74 E2 94 80  ;
.byt    $92,$80,$74,$E2,$54,$E4,$92,$80; 0x8d50 $8D40 92 80 74 E2 54 E4 92 80  ;
.byt    $92,$91,$92,$82,$74,$E2,$72,$E2; 0x8d58 $8D48 92 91 92 82 74 E2 72 E2  ;
.byt    $92,$91                        ; 0x8d60 $8D50 92 91                    ;
L8D52                                                                          ;
.byt    $2E,$D0,$F2,$31,$80,$29,$70,$23; 0x8d62 $8D52 2E D0 F2 31 80 29 70 23  ;
.byt    $76,$01,$71,$01,$71,$01,$85,$02; 0x8d6a $8D5A 76 01 71 01 71 01 85 02  ;
.byt    $82,$00,$82,$01,$81,$01,$D2,$81; 0x8d72 $8D62 82 00 82 01 81 01 D2 81  ;
.byt    $92,$00,$94,$01,$91,$01,$D1,$82; 0x8d7a $8D6A 92 00 94 01 91 01 D1 82  ;
.byt    $82,$01,$84,$00,$82,$00,$82,$29; 0x8d82 $8D72 82 01 84 00 82 00 82 29  ;
.byt    $73,$00,$73,$23,$61,$02        ; 0x8d8a $8D7A 73 00 73 23 61 02        ;
L8D80                                                                          ;
.byt    $20,$E0,$A0,$39,$60,$E6,$61,$E6; 0x8d90 $8D80 20 E0 A0 39 60 E6 61 E6  ;
.byt    $61,$E6,$61,$E6,$71,$43,$76,$45; 0x8d98 $8D88 61 E6 61 E6 71 43 76 45  ;
.byt    $78,$4E,$7F,$48,$7B,$49,$7C,$43; 0x8da0 $8D90 78 4E 7F 48 7B 49 7C 43  ;
.byt    $64,$E6,$61,$E6,$61,$E6,$61,$E6; 0x8da8 $8D98 64 E6 61 E6 61 E6 61 E6  ;
L8DA0                                                                          ;
.byt    $15,$60,$C1,$19,$E1,$00,$DA,$83; 0x8db0 $8DA0 15 60 C1 19 E1 00 DA 83  ;
.byt    $D6,$85,$D4,$87,$46,$0F,$0C,$D4; 0x8db8 $8DA8 D6 85 D4 87 46 0F 0C D4  ;
.byt    $85,$D2,$83,$D2,$81            ; 0x8dc0 $8DB0 85 D2 83 D2 81           ;
L8DB5                                                                          ;
.byt    $27,$E0,$C2,$11,$F8,$32,$F2,$41; 0x8dc5 $8DB5 27 E0 C2 11 F8 32 F2 41  ;
.byt    $F8,$41,$88,$2F,$70,$2B        ; 0x8dcd $8DBD F8 41 88 2F 70 2B        ;
L8DC3                                                                          ;
.byt    $60,$29,$52,$27,$40,$23,$30,$23; 0x8dd3 $8DC3 60 29 52 27 40 23 30 23  ;
.byt    $7C,$0F,$0D,$82,$29,$70,$29,$60; 0x8ddb $8DCB 7C 0F 0D 82 29 70 29 60  ;
.byt    $29,$50,$27,$42,$25,$30,$23,$FE; 0x8de3 $8DD3 29 50 27 42 25 30 23 FE  ;
.byt    $41                            ; 0x8deb $8DDB 41                       ;
L8DDC                                                                          ;
.byt    $1B,$E0,$B1,$29,$98,$80,$93,$81; 0x8dec $8DDC 1B E0 B1 29 98 80 93 81  ;
.byt    $8F,$2F,$70,$2F,$62,$2D,$50,$2D; 0x8df4 $8DE4 8F 2F 70 2F 62 2D 50 2D  ;
.byt    $44,$27,$30,$27,$24,$0F,$12,$9E; 0x8dfc $8DEC 44 27 30 27 24 0F 12 9E  ;
.byt    $80,$94,$80                    ; 0x8e04 $8DF4 80 94 80                 ;
L8DF7                                                                          ;
.byt    $37,$E0,$1B,$60,$D4,$0A,$D2,$09; 0x8e07 $8DF7 37 E0 1B 60 D4 0A D2 09  ;
.byt    $91,$F1,$D3,$08,$80,$04,$D6,$09; 0x8e0f $8DFF 91 F1 D3 08 80 04 D6 09  ;
.byt    $90,$F1,$D2,$0A,$D2,$0C,$D2,$0D; 0x8e17 $8E07 90 F1 D2 0A D2 0C D2 0D  ;
.byt    $D4,$0C,$93,$F1,$D1,$0A,$D2,$09; 0x8e1f $8E0F D4 0C 93 F1 D1 0A D2 09  ;
.byt    $80,$04,$D2,$08,$A3,$0F,$0D,$D1; 0x8e27 $8E17 80 04 D2 08 A3 0F 0D D1  ;
.byt    $09,$90,$F1,$D2,$0A,$D2,$0B,$90; 0x8e2f $8E1F 09 90 F1 D2 0A D2 0B 90  ;
.byt    $F1,$D6,$0A,$D6,$0B,$D4,$0C    ; 0x8e37 $8E27 F1 D6 0A D6 0B D4 0C     ;
L8E2E                                                                          ;
.byt    $34,$E0,$0E,$08,$D4,$0B,$D4,$09; 0x8e3e $8E2E 34 E0 0E 08 D4 0B D4 09  ;
.byt    $A2,$2B,$90,$2B,$82,$27,$70,$27; 0x8e46 $8E36 A2 2B 90 2B 82 27 70 27  ;
.byt    $62,$23,$50,$23,$D8,$0C,$D2,$0E; 0x8e4e $8E3E 62 23 50 23 D8 0C D2 0E  ;
.byt    $D4,$0B,$D2,$09,$A0,$23,$90,$23; 0x8e56 $8E46 D4 0B D2 09 A0 23 90 23  ;
.byt    $82,$21,$70,$21,$D2,$04,$D2,$06; 0x8e5e $8E4E 82 21 70 21 D2 04 D2 06  ;
.byt    $DE,$04,$D2,$02,$02,$31,$10,$31; 0x8e66 $8E56 DE 04 D2 02 02 31 10 31  ;
.byt    $D2,$0B,$D4,$0D                ; 0x8e6e $8E5E D2 0B D4 0D              ;
L8E62                                                                          ;
.byt    $1C,$E0,$87,$08,$D6,$85,$D2,$83; 0x8e72 $8E62 1C E0 87 08 D6 85 D2 83  ;
.byt    $D4,$85,$D2,$87,$D6,$85,$D2,$83; 0x8e7a $8E6A D4 85 D2 87 D6 85 D2 83  ;
.byt    $DC,$85,$D2,$87,$D8,$85,$D4,$83; 0x8e82 $8E72 DC 85 D2 87 D8 85 D4 83  ;
.byt    $D6,$85,$D4,$87                ; 0x8e8a $8E7A D6 85 D4 87              ;
L8E7E                                                                          ;
.byt    $18,$E0,$0E,$08,$D4,$0B,$D4,$09; 0x8e8e $8E7E 18 E0 0E 08 D4 0B D4 09  ;
.byt    $D6,$00,$DA,$08,$D4,$09,$D2,$0B; 0x8e96 $8E86 D6 00 DA 08 D4 09 D2 0B  ;
.byt    $D2,$0D,$64,$39,$DE,$0C,$D6,$0E; 0x8e9e $8E8E D2 0D 64 39 DE 0C D6 0E  ;
L8E96                                                                          ;
.byt    $1E,$E0,$80,$08,$A6,$2F,$92,$23; 0x8ea6 $8E96 1E E0 80 08 A6 2F 92 23  ;
.byt    $98,$25,$A6,$2F,$90,$21,$94,$21; 0x8eae $8E9E 98 25 A6 2F 90 21 94 21  ;
.byt    $94,$23,$96,$21,$A2,$2F,$92,$27; 0x8eb6 $8EA6 94 23 96 21 A2 2F 92 27  ;
.byt    $9C,$21,$A2,$23,$90,$21        ; 0x8ebe $8EAE 9C 21 A2 23 90 21        ;
L8EB4                                                                          ;
.byt    $0B,$E0,$80,$0E,$E3,$00,$A7,$0F; 0x8ec4 $8EB4 0B E0 80 0E E3 00 A7 0F  ;
.byt    $0D,$D1,$0F                    ; 0x8ecc $8EBC 0D D1 0F                 ;
L8EBF                                                                          ;
.byt    $4C,$E0,$D2,$08,$00,$CB,$10,$CB; 0x8ecf $8EBF 4C E0 D2 08 00 CB 10 CB  ;
.byt    $D6,$80,$F0,$23,$D4,$82,$D2,$0D; 0x8ed7 $8EC7 D6 80 F0 23 D4 82 D2 0D  ;
.byt    $A0,$27,$90,$27,$D8,$82,$00,$CB; 0x8edf $8ECF A0 27 90 27 D8 82 00 CB  ;
.byt    $10,$CB,$82,$E1,$D1,$80,$F0,$22; 0x8ee7 $8ED7 10 CB 82 E1 D1 80 F0 22  ;
.byt    $D3,$82,$D2,$80,$F0,$22,$D3,$83; 0x8eef $8EDF D3 82 D2 80 F0 22 D3 83  ;
.byt    $01,$CB,$10,$CB,$D2,$80,$F0,$22; 0x8ef7 $8EE7 01 CB 10 CB D2 80 F0 22  ;
.byt    $D3,$82,$D2,$80,$F0,$22,$D3,$82; 0x8eff $8EEF D3 82 D2 80 F0 22 D3 82  ;
.byt    $D2,$0D,$A0,$27,$90,$27,$D8,$82; 0x8f07 $8EF7 D2 0D A0 27 90 27 D8 82  ;
.byt    $00,$CB,$10,$CB,$82,$E1,$D1,$80; 0x8f0f $8EFF 00 CB 10 CB 82 E1 D1 80  ;
.byt    $F0,$22,$D3,$82                ; 0x8f17 $8F07 F0 22 D3 82              ;
L8F0B                                                                          ;
.byt    $1C,$E0,$F7,$39,$D8,$80,$F0,$21; 0x8f1b $8F0B 1C E0 F7 39 D8 80 F0 21  ;
.byt    $D2,$86,$D6,$85,$D8,$84,$D8,$83; 0x8f23 $8F13 D2 86 D6 85 D8 84 D8 83  ;
.byt    $D8,$82,$D3,$80,$F0,$21,$D2,$82; 0x8f2b $8F1B D8 82 D3 80 F0 21 D2 82  ;
.byt    $D3,$81,$D8,$80                ; 0x8f33 $8F23 D3 81 D8 80              ;
L8F27                                                                          ;
.byt    $1C,$60,$F0,$31,$D8,$81,$DA,$82; 0x8f37 $8F27 1C 60 F0 31 D8 81 DA 82  ;
.byt    $52,$F3,$52,$F3,$52,$F3,$84,$B7; 0x8f3f $8F2F 52 F3 52 F3 52 F3 84 B7  ;
.byt    $74,$00,$56,$F3,$52,$F3,$52,$F3; 0x8f47 $8F37 74 00 56 F3 52 F3 52 F3  ;
.byt    $D4,$81,$DA,$80,$2E,$E0,$06,$49; 0x8f4f $8F3F D4 81 DA 80 2E E0 06 49  ;
.byt    $00,$35,$D4,$04,$D2,$0A,$90,$E3; 0x8f57 $8F47 00 35 D4 04 D2 0A 90 E3  ;
.byt    $91,$E3,$D1,$0C,$D2,$0D,$DC,$80; 0x8f5f $8F4F 91 E3 D1 0C D2 0D DC 80  ;
.byt    $D4,$0D,$DA,$00,$D2,$07,$30,$E1; 0x8f67 $8F57 D4 0D DA 00 D2 07 30 E1  ;
.byt    $31,$E1,$31,$E1,$31,$E1,$31,$E1; 0x8f6f $8F5F 31 E1 31 E1 31 E1 31 E1  ;
.byt    $31,$E1,$31,$E1,$31,$E1,$31,$E1; 0x8f77 $8F67 31 E1 31 E1 31 E1 31 E1  ;
.byt    $31,$E1                        ; 0x8f7f $8F6F 31 E1                    ;
L8F71                                                                          ;
.byt    $13,$01,$C2,$11,$96,$90,$98,$90; 0x8f81 $8F71 13 01 C2 11 96 90 98 90  ;
.byt    $92,$90,$98,$90,$98,$90,$92,$90; 0x8f89 $8F79 92 90 98 90 98 90 92 90  ;
.byt    $94,$0F,$12                    ; 0x8f91 $8F81 94 0F 12                 ;
L8F84                                                                          ;
.byt    $06,$60,$90,$60,$30,$17        ; 0x8f94 $8F84 06 60 90 60 30 17        ;
L8F8A                                                                          ;
.byt    $11,$E0,$B1,$39,$E1,$00,$80,$2B; 0x8f9a $8F8A 11 E0 B1 39 E1 00 80 2B  ;
.byt    $8C,$2D,$70,$29,$60,$29,$50,$0F; 0x8fa2 $8F92 8C 2D 70 29 60 29 50 0F  ;
.byt    $0F                            ; 0x8faa $8F9A 0F                       ;
L8F9B                                                                          ;
.byt    $0B,$E0,$80,$0E,$E3,$00,$A5,$0F; 0x8fab $8F9B 0B E0 80 0E E3 00 A5 0F  ;
.byt    $0D,$D3,$0F                    ; 0x8fb3 $8FA3 0D D3 0F                 ;
L8FA6                                                                          ;
.byt    $09,$E0,$80,$0E,$E3,$00,$A4,$0F; 0x8fb6 $8FA6 09 E0 80 0E E3 00 A4 0F  ;
.byt    $0D,$0B,$E0,$80,$0E,$E3,$00,$A3; 0x8fbe $8FAE 0D 0B E0 80 0E E3 00 A3  ;
.byt    $0F                            ; 0x8fc6 $8FB6 0F                       ;
L8FB7                                                                          ;
.byt    $0D,$D5,$0F                    ; 0x8fc7 $8FB7 0D D5 0F                 ;
L8FBA                                                                          ;
.byt    $34,$40,$D2,$08,$00,$CF,$10,$CF; 0x8fca $8FBA 34 40 D2 08 00 CF 10 CF  ;
.byt    $D4,$83,$D4,$84,$D2,$80,$F0,$21; 0x8fd2 $8FC2 D4 83 D4 84 D2 80 F0 21  ;
.byt    $D2,$84,$D4,$80,$00,$CF,$10,$CF; 0x8fda $8FCA D2 84 D4 80 00 CF 10 CF  ;
.byt    $F0,$21,$D2,$83,$D8,$80,$F0,$21; 0x8fe2 $8FD2 F0 21 D2 83 D8 80 F0 21  ;
.byt    $D2,$84,$D2,$83,$02,$CF,$10,$CF; 0x8fea $8FDA D2 84 D2 83 02 CF 10 CF  ;
.byt    $D4,$80,$F0,$21,$D2,$84,$D4,$80; 0x8ff2 $8FE2 D4 80 F0 21 D2 84 D4 80  ;
.byt    $F0,$21,$D2,$84,$0B,$E0,$80,$0E; 0x8ffa $8FEA F0 21 D2 84 0B E0 80 0E  ;
.byt    $E3,$00,$A3,$0F,$0A,$D5,$0F    ; 0x9002 $8FF2 E3 00 A3 0F 0A D5 0F     ;
L8FF9                                                                          ;
.byt    $0B,$80,$C2,$11,$E1,$00,$74    ; 0x9009 $8FF9 0B 80 C2 11 E1 00 74     ;
L9000                                                                          ;
.byt    $0F,$0F,$80,$21                ; 0x9010 $9000 0F 0F 80 21              ;
L9004                                                                          ;
.byt    $08,$08,$90,$61,$E1,$00,$64,$E4; 0x9014 $9004 08 08 90 61 E1 00 64 E4  ;
.byt    $0D,$E0,$0E,$08,$D8,$08,$E3,$00; 0x901c $900C 0D E0 0E 08 D8 08 E3 00  ;
.byt    $A6,$0F,$0D,$D2,$0F            ; 0x9024 $9014 A6 0F 0D D2 0F           ;
L9019                                                                          ;
.byt    $2D,$00,$D1,$48,$00,$CF,$10,$CF; 0x9029 $9019 2D 00 D1 48 00 CF 10 CF  ;
.byt    $E1,$00,$00,$CF,$10,$CF,$94,$0F; 0x9031 $9021 E1 00 00 CF 10 CF 94 0F  ;
.byt    $0D,$72,$F2,$72,$F2,$72,$F2,$72; 0x9039 $9029 0D 72 F2 72 F2 72 F2 72  ;
.byt    $F2,$E2,$00,$00,$CF,$10,$CF,$72; 0x9041 $9031 F2 E2 00 00 CF 10 CF 72  ;
.byt    $F2                            ; 0x9049 $9039 F2                       ;
L903A                                                                          ;
.byt    $72,$F2,$72,$F2,$72,$F2,$E3,$00; 0x904a $903A 72 F2 72 F2 72 F2 E3 00  ;
.byt    $00,$CF,$10,$CF                ; 0x9052 $9042 00 CF 10 CF              ;
bank2_East_Hyrule_Overworld_Map_Data                                           ;
.byt    $5C,$5B,$34,$FC,$3C,$54,$FC,$5C; 0x9056 $9046 5C 5B 34 FC 3C 54 FC 5C  ;
.byt    $1C,$24,$7B,$44,$FC,$0C,$84,$FC; 0x905e $904E 1C 24 7B 44 FC 0C 84 FC  ;
.byt    $3C,$0C,$34,$7B,$24,$26,$FC,$A4; 0x9066 $9056 3C 0C 34 7B 24 26 FC A4  ;
.byt    $FC,$1C,$24,$00,$14,$5B,$14,$66; 0x906e $905E FC 1C 24 00 14 5B 14 66  ;
.byt    $CC,$D4,$FC,$84,$2B,$14,$96,$8C; 0x9076 $9066 CC D4 FC 84 2B 14 96 8C  ;
.byt    $66,$84,$EC,$44,$2B,$14,$2B,$14; 0x907e $906E 66 84 EC 44 2B 14 2B 14  ;
.byt    $96,$5C,$C6,$54,$DC,$34,$4B,$04; 0x9086 $9076 96 5C C6 54 DC 34 4B 04  ;
.byt    $2B,$14,$F6,$E6,$44,$CC,$8B,$14; 0x908e $907E 2B 14 F6 E6 44 CC 8B 14  ;
.byt    $1B,$14,$0B,$F6,$D6,$54,$BC,$9B; 0x9096 $9086 1B 14 0B F6 D6 54 BC 9B  ;
.byt    $04,$0B,$24,$0B,$86,$35,$F6,$06; 0x909e $908E 04 0B 24 0B 86 35 F6 06  ;
.byt    $54,$BC,$9B,$44,$1B,$36,$85,$F6; 0x90a6 $9096 54 BC 9B 44 1B 36 85 F6  ;
.byt    $16,$34,$BC,$AB,$34,$1B,$26,$D5; 0x90ae $909E 16 34 BC AB 34 1B 26 D5  ;
.byt    $F6,$14,$B3,$BB,$14,$4B,$F5,$05; 0x90b6 $90A6 F6 14 B3 BB 14 4B F5 05  ;
.byt    $D6,$14,$BC,$1C,$FB,$2B,$A5,$F6; 0x90be $90AE D6 14 BC 1C FB 2B A5 F6  ;
.byt    $16,$14,$BC,$2C,$FB,$3B,$45,$2B; 0x90c6 $90B6 16 14 BC 2C FB 3B 45 2B  ;
.byt    $F6,$16,$14,$CC,$2C,$FB,$4B,$25; 0x90ce $90BE F6 16 14 CC 2C FB 4B 25  ;
.byt    $8B,$56,$5B,$24,$CC,$3C,$FB,$5B; 0x90d6 $90C6 8B 56 5B 24 CC 3C FB 5B  ;
.byt    $09,$FB,$3B,$3D,$CC,$4C,$FB,$4B; 0x90de $90CE 09 FB 3B 3D CC 4C FB 4B  ;
.byt    $19,$FB,$0B,$5D,$CC,$6C,$45,$EB; 0x90e6 $90D6 19 FB 0B 5D CC 6C 45 EB  ;
.byt    $09,$FB,$5D,$DC,$6C,$65,$CB,$01; 0x90ee $90DE 09 FB 5D DC 6C 65 CB 01  ;
.byt    $DB,$7D,$DC,$7C,$85,$FB,$6B,$9D; 0x90f6 $90E6 DB 7D DC 7C 85 FB 6B 9D  ;
.byt    $DC,$7C,$A5,$FB,$2B,$BD,$DC,$7C; 0x90fe $90EE DC 7C A5 FB 2B BD DC 7C  ;
.byt    $B5,$7B,$25,$6B,$BD,$DC,$6C,$03; 0x9106 $90F6 B5 7B 25 6B BD DC 6C 03  ;
.byt    $B5,$3B,$01,$1B,$35,$6B,$AD,$EC; 0x910e $90FE B5 3B 01 1B 35 6B AD EC  ;
.byt    $7C,$D5,$1B,$09,$65,$4B,$AD,$FC; 0x9116 $9106 7C D5 1B 09 65 4B AD FC  ;
.byt    $6C,$F5,$19,$55,$24,$2B,$AD,$FC; 0x911e $910E 6C F5 19 55 24 2B AD FC  ;
.byt    $5C,$F5,$05,$09,$55,$64,$AD,$FC; 0x9126 $9116 5C F5 05 09 55 64 AD FC  ;
.byt    $3C,$C5,$55,$09,$55,$74,$9D,$1C; 0x912e $911E 3C C5 55 09 55 74 9D 1C  ;
.byt    $DD,$1C,$2B,$B5,$55,$09,$45,$84; 0x9136 $9126 DD 1C 2B B5 55 09 45 84  ;
.byt    $9D,$2C,$0D,$BC,$0C,$4B,$35,$06; 0x913e $912E 9D 2C 0D BC 0C 4B 35 06  ;
.byt    $B5,$09,$35,$84,$AD,$2C,$0D,$BC; 0x9146 $9136 B5 09 35 84 AD 2C 0D BC  ;
.byt    $6B,$D5,$49,$15,$84,$AD,$2C,$0D; 0x914e $913E 6B D5 49 15 84 AD 2C 0D  ;
.byt    $8C,$29,$7B,$C5,$19,$00,$B9,$FD; 0x9156 $9146 8C 29 7B C5 19 00 B9 FD  ;
.byt    $8D,$09,$02,$09,$8B,$B5,$49,$15; 0x915e $914E 8D 09 02 09 8B B5 49 15  ;
.byt    $74,$BD,$CC,$29,$8B,$15,$36,$C5; 0x9166 $9156 74 BD CC 29 8B 15 36 C5  ;
.byt    $64,$FD,$CC,$9B,$56,$B5,$64,$FD; 0x916e $915E 64 FD CC 9B 56 B5 64 FD  ;
.byt    $54,$6C,$9B,$66,$A5,$54,$ED,$94; 0x9176 $9166 54 6C 9B 66 A5 54 ED 94  ;
.byt    $4C,$AB,$76,$85,$34,$ED,$24,$3B; 0x917e $916E 4C AB 76 85 34 ED 24 3B  ;
.byt    $54,$3C,$AB,$16,$1C,$46,$65,$34; 0x9186 $9176 54 3C AB 16 1C 46 65 34  ;
.byt    $ED,$24,$5B,$44,$3C,$AB,$16,$3C; 0x918e $917E ED 24 5B 44 3C AB 16 3C  ;
.byt    $26,$65,$24,$ED,$14,$BB,$4C,$BB; 0x9196 $9186 26 65 24 ED 14 BB 4C BB  ;
.byt    $16,$2C,$26,$65,$24,$DD,$14,$BB; 0x919e $918E 16 2C 26 65 24 DD 14 BB  ;
.byt    $5C,$CB,$16,$0C,$26,$75,$14,$0E; 0x91a6 $9196 5C CB 16 0C 26 75 14 0E  ;
.byt    $04,$BD,$14,$BB,$6C,$DB,$06,$0C; 0x91ae $919E 04 BD 14 BB 6C DB 06 0C  ;
.byt    $16,$85,$2B,$14,$AD,$04,$BB,$7C; 0x91b6 $91A6 16 85 2B 14 AD 04 BB 7C  ;
.byt    $EB,$0C,$55,$2B,$01,$4B,$14,$8D; 0x91be $91AE EB 0C 55 2B 01 4B 14 8D  ;
.byt    $14,$AB,$8C,$3B,$09,$9B,$0C,$35; 0x91c6 $91B6 14 AB 8C 3B 09 9B 0C 35  ;
.byt    $BB,$14,$6D,$14,$BB,$8C,$2B,$09; 0x91ce $91BE BB 14 6D 14 BB 8C 2B 09  ;
.byt    $02,$09,$8B,$1C,$25,$CB,$14,$4D; 0x91d6 $91C6 02 09 8B 1C 25 CB 14 4D  ;
.byt    $14,$DB,$7C,$3B,$09,$AB,$2C,$0F; 0x91de $91CE 14 DB 7C 3B 09 AB 2C 0F  ;
.byt    $7C,$5B,$24,$1D,$14,$EB,$7C,$1B; 0x91e6 $91D6 7C 5B 24 1D 14 EB 7C 1B  ;
.byt    $01,$0B,$01,$DB,$29,$DB,$34,$FB; 0x91ee $91DE 01 0B 01 DB 29 DB 34 FB  ;
.byt    $7C,$1B,$0A,$FB,$1B,$09,$FB,$FB; 0x91f6 $91E6 7C 1B 0A FB 1B 09 FB FB  ;
.byt    $2B,$6C,$1B,$1A,$1B,$01,$2B,$01; 0x91fe $91EE 2B 6C 1B 1A 1B 01 2B 01  ;
.byt    $8B,$19,$FB,$FB,$3B,$5C,$2B,$0A; 0x9206 $91F6 8B 19 FB FB 3B 5C 2B 0A  ;
.byt    $1B,$0A,$2B,$0A,$6B,$29,$9B,$01; 0x920e $91FE 1B 0A 2B 0A 6B 29 9B 01  ;
.byt    $FB,$0B,$01,$6B,$01,$24,$2C,$2B; 0x9216 $9206 FB 0B 01 6B 01 24 2C 2B  ;
.byt    $0A,$1B,$0A,$2B,$0A,$5B,$19,$AB; 0x921e $920E 0A 1B 0A 2B 0A 5B 19 AB  ;
.byt    $37,$DB,$36,$6B,$34,$0C,$2B,$0A; 0x9226 $9216 37 DB 36 6B 34 0C 2B 0A  ;
.byt    $1B,$0A,$2B,$1A,$4B,$09,$9B,$77; 0x922e $921E 1B 0A 2B 1A 4B 09 9B 77  ;
.byt    $5B,$26,$1B,$56,$5B,$14,$16,$04; 0x9236 $9226 5B 26 1B 56 5B 14 16 04  ;
.byt    $2B,$0A,$0B,$1A,$1B,$1A,$5B,$09; 0x923e $922E 2B 0A 0B 1A 1B 1A 5B 09  ;
.byt    $7B,$A7,$1B,$E6,$3B,$14,$06,$06; 0x9246 $9236 7B A7 1B E6 3B 14 06 06  ;
.byt    $16,$0C,$1B,$0A,$0B,$0A,$2B,$0A; 0x924e $923E 16 0C 1B 0A 0B 0A 2B 0A  ;
.byt    $6B,$09,$7B,$A7,$96,$2C,$36,$3B; 0x9256 $9246 6B 09 7B A7 96 2C 36 3B  ;
.byt    $04,$46,$0C,$1B,$0A,$0B,$0A,$2B; 0x925e $924E 04 46 0C 1B 0A 0B 0A 2B  ;
.byt    $0A,$6B,$19,$5B,$A7,$96,$4C,$36; 0x9266 $9256 0A 6B 19 5B A7 96 4C 36  ;
.byt    $3B,$46,$0C,$1B,$2A,$1B,$1A,$7B; 0x926e $925E 3B 46 0C 1B 2A 1B 1A 7B  ;
.byt    $09,$19,$3B,$A7,$86,$6C,$26,$3B; 0x9276 $9266 09 19 3B A7 86 6C 26 3B  ;
.byt    $46,$1C,$1B,$1A,$1B,$0A,$AB,$09; 0x927e $926E 46 1C 1B 1A 1B 0A AB 09  ;
.byt    $3B,$A7,$86,$7C,$26,$3B,$36,$1C; 0x9286 $9276 3B A7 86 7C 26 3B 36 1C  ;
.byt    $2B,$0A,$1B,$0A,$AB,$19,$3B,$77; 0x928e $927E 2B 0A 1B 0A AB 19 3B 77  ;
.byt    $66,$BC,$26,$4B,$26,$2C,$1B,$0B; 0x9296 $9286 66 BC 26 4B 26 2C 1B 0B  ;
.byt    $1B,$0A,$BB,$29,$1B,$57,$76,$1C; 0x929e $928E 1B 0A BB 29 1B 57 76 1C  ;
.byt    $26,$7C,$26,$7B,$2C,$1B,$0B,$1B; 0x92a6 $9296 26 7C 26 7B 2C 1B 0B 1B  ;
.byt    $0A,$BB,$18,$19,$57,$76,$1C,$66; 0x92ae $929E 0A BB 18 19 57 76 1C 66  ;
.byt    $3C,$36,$7B,$1C,$2B,$0B,$1B,$1A; 0x92b6 $92A6 3C 36 7B 1C 2B 0B 1B 1A  ;
.byt    $9B,$38,$29,$27,$56,$3C,$86,$1C; 0x92be $92AE 9B 38 29 27 56 3C 86 1C  ;
.byt    $56,$6B,$4B,$0A,$1B,$2A,$7B,$68; 0x92c6 $92B6 56 6B 4B 0A 1B 2A 7B 68  ;
.byt    $19,$76,$0C,$F6,$46,$5B,$3B,$2A; 0x92ce $92BE 19 76 0C F6 46 5B 3B 2A  ;
.byt    $1B,$1A,$7B,$78,$19,$56,$1C,$66; 0x92d6 $92C6 1B 1A 7B 78 19 56 1C 66  ;
.byt    $34,$A6,$3B,$0C,$5B,$4A,$8B,$78; 0x92de $92CE 34 A6 3B 0C 5B 4A 8B 78  ;
.byt    $29,$36,$0C,$56,$64,$96,$34,$0C; 0x92e6 $92D6 29 36 0C 56 64 96 34 0C  ;
.byt    $6B,$2A,$BB,$78,$49,$03,$46,$64; 0x92ee $92DE 6B 2A BB 78 49 03 46 64  ;
.byt    $86,$44,$1C,$7B,$1A,$CB,$68,$4B; 0x92f6 $92E6 86 44 1C 7B 1A CB 68 4B  ;
.byt    $1C,$36,$A4,$36,$54,$1C,$6B,$1A; 0x92fe $92EE 1C 36 A4 36 54 1C 6B 1A  ;
.byt    $EB,$08,$AB,$0C,$26,$C4,$16,$54; 0x9306 $92F6 EB 08 AB 0C 26 C4 16 54  ;
.byt    $2C,$5B,$1A,$FB,$09,$AB,$1C,$F4; 0x930e $92FE 2C 5B 1A FB 09 AB 1C F4  ;
.byt    $64,$2C,$0C,$3B,$1A,$8B,$3A,$3B; 0x9316 $9306 64 2C 0C 3B 1A 8B 3A 3B  ;
.byt    $0A,$BB,$0C,$F4,$54,$3C,$1C,$1B; 0x931e $930E 0A BB 0C F4 54 3C 1C 1B  ;
.byt    $2A,$1B,$FA,$1A,$3B,$59,$0C,$64; 0x9326 $9316 2A 1B FA 1A 3B 59 0C 64  ;
.byt    $0B,$C4,$4C,$2C,$2B,$FA,$5A,$2B; 0x932e $931E 0B C4 4C 2C 2B FA 5A 2B  ;
.byt    $29,$00,$19,$0C,$F4,$34,$5C,$2C; 0x9336 $9326 29 00 19 0C F4 34 5C 2C  ;
.byt    $8B,$7A,$3C,$2A,$2B,$69,$03,$44; 0x933e $932E 8B 7A 3C 2A 2B 69 03 44  ;
.byt    $0B,$24,$0B,$84,$6C,$3C,$8B,$4A; 0x9346 $9336 0B 24 0B 84 6C 3C 8B 4A  ;
.byt    $7C,$0A,$2B,$69,$0C,$F4,$14,$7C; 0x934e $933E 7C 0A 2B 69 0C F4 14 7C  ;
.byt    $3C,$9B,$2A,$AC,$1B,$59,$2C,$54; 0x9356 $9346 3C 9B 2A AC 1B 59 2C 54  ;
.byt    $04,$74,$9C,$4C,$9B,$EC,$49,$4C; 0x935e $934E 04 74 9C 4C 9B EC 49 4C  ;
.byt    $B4,$BC,$6C,$5B,$FC,$2C,$19,$7C; 0x9366 $9356 B4 BC 6C 5B FC 2C 19 7C  ;
.byt    $74,$DC                        ; 0x936e $935E 74 DC                    ;
bank2_Table_3_for_Area_Objects_Tile_Mappings                                   ;
.byt    $84,$84,$86,$86,$84,$85,$86,$87; 0x9370 $9360 84 84 86 86 84 85 86 87  ;
.byt    $B3,$B4,$B5,$B6,$B5,$B6,$B7,$B8; 0x9378 $9368 B3 B4 B5 B6 B5 B6 B7 B8  ;
.byt    $B7,$B8,$F4,$F4,$AF,$B0,$B1,$B2; 0x9380 $9370 B7 B8 F4 F4 AF B0 B1 B2  ;
.byt    $AD,$AE,$F4,$F4,$AB,$AC,$F4,$F4; 0x9388 $9378 AD AE F4 F4 AB AC F4 F4  ;
.byt    $FE,$FE,$FE,$FE,$7E,$7E,$7E,$7E; 0x9390 $9380 FE FE FE FE 7E 7E 7E 7E  ;
.byt    $BA,$BB,$BC,$BD                ; 0x9398 $9388 BA BB BC BD              ;
L938C                                                                          ;
.byt    $52,$8F,$C9                    ; 0x939c $938C 52 8F C9                 ;
; ---------------------------------------------------------------------------- ;
bank2_Used_for_Palisade_Pass                                                   ;
lda      #$03                          ; 0x939f $938F A9 03                    ; A = 03
sta      $05                           ; 0x93a1 $9391 85 05                    ;
lda      $0730                         ; 0x93a3 $9393 AD 30 07                 ; Position of Object Placement
sta      $04                           ; 0x93a6 $9396 85 04                    ;
L9398                                                                          ;
ldx      #$0D                          ; 0x93a8 $9398 A2 0D                    ; X = 0D (code used for Palisade)
jsr      bank2_Objects_Construction_Object_Xhigh_1wide; 0x93aa $939A 20 1D 82  ;
inc      $0731                         ; 0x93ad $939D EE 31 07                 ; Level Object Type and Size
inc      $04                           ; 0x93b0 $93A0 E6 04                    ;
lda      $04                           ; 0x93b2 $93A2 A5 04                    ;
sta      $0730                         ; 0x93b4 $93A4 8D 30 07                 ; Position of Object Placement
and      #$0F                          ; 0x93b7 $93A7 29 0F                    ; keep bits .... xxxx
bne      L9398                         ; 0x93b9 $93A9 D0 ED                    ;
lda      #$30                          ; 0x93bb $93AB A9 30                    ; A = 30
sta      $04                           ; 0x93bd $93AD 85 04                    ;
sta      $0730                         ; 0x93bf $93AF 8D 30 07                 ; Position of Object Placement
inc      $0717                         ; 0x93c2 $93B2 EE 17 07                 ; Screen Number for Objects (0-3)
dec      $05                           ; 0x93c5 $93B5 C6 05                    ;
bpl      L9398                         ; 0x93c7 $93B7 10 DF                    ;
rts                                    ; 0x93c9 $93B9 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L93BA                                                                          ;
asl                                    ; 0x93ca $93BA 0A                       ;
tay                                    ; 0x93cb $93BB A8                       ;
lda      $6000,y                       ; 0x93cc $93BC B9 00 60                 ;
sta      L000E                         ; 0x93cf $93BF 85 0E                    ;
lda      $6001,y                       ; 0x93d1 $93C1 B9 01 60                 ;
sta      $0F                           ; 0x93d4 $93C4 85 0F                    ;
ldy      #$00                          ; 0x93d6 $93C6 A0 00                    ; Y = 00
rts                                    ; 0x93d8 $93C8 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_UNUSED_93C9                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x93d9 $93C9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x93e1 $93D1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x93e9 $93D9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x93f1 $93E1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x93f9 $93E9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9401 $93F1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0x9409 $93F9 FF FF FF FF FF FF FF     ;
; ---------------------------------------------------------------------------- ;
bank2_Pointer_table_for_Projectile_routines                                    ;
.word    bank2_Projectiles_Routines_Energy_Ball_blue_and_Mace_and_Link_Doll; 0x9410 $9400 2F 96;Link Doll (Pwahaha!)
.word    bank2_Projectiles_Routines_Raising_Bubble_with_no_Y_Velocity; 0x9412 $9402 37 96;Raising Bubble (with no Y Velocity)
.word    bank2_Projectiles_Routines_Rock_moves_horizontally; 0x9414 $9404 4A 96;Rock (moves horizontally)
.word    bank2_Projectiles_Routines_Flame; 0x9416 $9406 27 96                  ;Flame
.word    bank2_Projectiles_Routines_Energy_Ball_blue_and_Mace_and_Link_Doll; 0x9418 $9408 2F 96;Energy Ball (blue, not flashing, causes less damage)
.word    bank2_Projectiles_Routines_Energy_Ball_blue_and_Mace_and_Link_Doll; 0x941a $940A 2F 96;Energy Ball (Tektite) (06)
.word    bank2_Projectiles_Routines_Energy_Ball_blue_and_Mace_and_Link_Doll; 0x941c $940C 2F 96;Mace (causes lots of damage)
.word    bank2_Projectiles_Routines_Rock_with_gravity; 0x941e $940E 5B 96      ;Rock with gravity
.word    L0000                         ; 0x9420 $9410 00 00                    ;Invalid
.word    L0000                         ; 0x9422 $9412 00 00                    ;Invalid
.word    L0000                         ; 0x9424 $9414 00 00                    ;Invalid
.word    L0000                         ; 0x9426 $9416 00 00                    ;Invalid
; ---------------------------------------------------------------------------- ;
bank2_table2                                                                   ;
.byt    $00,$80,$41,$83,$01,$03,$94,$81; 0x9428 $9418 00 80 41 83 01 03 94 81  ;Has something to do with projectiles collision test and shield absorption
.byt    $00                            ; 0x9430 $9420 00                       ;
bank2_Enemy_Hit_Points                                                         ;
.byt    $00,$00,$00,$03,$04,$04,$30,$08; 0x9431 $9421 00 00 00 03 04 04 30 08  ;
.byt    $00,$00,$08,$02,$02,$0C,$0C,$08; 0x9439 $9429 00 00 08 02 02 0C 0C 08  ;
.byt    $08,$0C,$0C,$00,$18,$10,$10,$08; 0x9441 $9431 08 0C 0C 00 18 10 10 08  ;
.byt    $30,$20,$30,$20,$38,$01,$00,$00; 0x9449 $9439 30 20 30 20 38 01 00 00  ;
.byt    $00,$00,$00,$00                ; 0x9451 $9441 00 00 00 00              ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Init_Routines_pointers                                             ;
.word    bank2_RTS                     ; 0x9455 $9445 AD 95                    ;Fairy				(00)
.word    bank1_Enemy_Init_Routines_Red_Jar; 0x9457 $9447 10 96                 ;Red Jar			(01)
.word    bank2_RTS                     ; 0x9459 $9449 AD 95                    ;Locked Door			(02)
.word    bank2_RTS                     ; 0x945b $944B AD 95                    ;Myu				(03)
.word    bank2_RTS                     ; 0x945d $944D AD 95                    ;Bot				(04)
.word    bank2_RTS                     ; 0x945f $944F AD 95                    ;Bit				(05)
.word    bank2_RTS                     ; 0x9461 $9451 AD 95                    ;Moa				(06)
.word    bank2_RTS                     ; 0x9463 $9453 AD 95                    ;Ache				(07)
.word    bank2_RTS                     ; 0x9465 $9455 AD 95                    ;?				(08)
.word    bank2_RTS                     ; 0x9467 $9457 AD 95                    ;?				(09)
.word    bank2_RTS                     ; 0x9469 $9459 AD 95                    ;Acheman			(0A)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Generator; 0x946b $945B 0A 97;Bubble Generator		(0B)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Generator; 0x946d $945D 0A 97;Rock Generator			(0C)
.word    bank1_Enemy_Init_Routines_Red_Blue_Deeler; 0x946f $945F 1B 96         ;Red Deeler			(0D)
.word    bank1_Enemy_Init_Routines_Red_Blue_Deeler; 0x9471 $9461 1B 96         ;Blue Deeler			(0E)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Generator; 0x9473 $9463 0A 97;Bago Bago Generator		(0F)
.word    bank2_RTS                     ; 0x9475 $9465 AD 95                    ;Bago Bago			(10)
.word    bank2_RTS                     ; 0x9477 $9467 AD 95                    ;Blue Octorok - Jumping		(11)
.word    bank2_RTS                     ; 0x9479 $9469 AD 95                    ;Blue Octorok - Moving		(12)
.word    bank2_RTS                     ; 0x947b $946B AD 95                    ;Elevator			(13)
.word    bank2_RTS                     ; 0x947d $946D AD 95                    ;Tektite			(14)
.word    bank2_RTS                     ; 0x947f $946F AD 95                    ;Girobokku			(15)
.word    bank1_Enemy_Init_Routines_Leever; 0x9481 $9471 F3 97                  ;Leever				(16)
.word    bank2_RTS                     ; 0x9483 $9473 AD 95                    ;Boon				(17)
.word    bank2_RTS                     ; 0x9485 $9475 AD 95                    ;Zora				(18)
.word    bank2_RTS                     ; 0x9487 $9477 AD 95                    ;Aru Lowder			(19)
.word    bank2_RTS                     ; 0x9489 $9479 AD 95                    ;Lizalfos - Red			(1A)
.word    bank2_RTS                     ; 0x948b $947B AD 95                    ;Lizalfos - Orange		(1B)
.word    bank2_RTS                     ; 0x948d $947D AD 95                    ;Lizalfos - Blue		(1C)
.word    bank2_RTS                     ; 0x948f $947F AD 95                    ;Lizalfos - Rock Tossing	(1D)
.word    bank2_RTS                     ; 0x9491 $9481 AD 95                    ;?				(1E)
.word    bank2_RTS                     ; 0x9493 $9483 AD 95                    ;?				(1F)
.word    L0000                         ; 0x9495 $9485 00 00                    ;?				(20)
.word    L0000                         ; 0x9497 $9487 00 00                    ;?				(21)
.word    L0000                         ; 0x9499 $9489 00 00                    ;?				(22)
.word    L0000                         ; 0x949b $948B 00 00                    ;?				(23)
bank2_Pointer_table_for_Enemy_Routines1                                        ;
.word    bank7_Enemy_Routines1_Fairy   ; 0x949d $948D 1E D9                    ;Fairy			(00)
.word    bank7_Enemy_Routines1_Red_Jar ; 0x949f $948F 59 D9                    ;Red Jar			(01)
.word    bank7_Enemy_Routines1_Locked_Door; 0x94a1 $9491 91 D9                 ;Locked Door		(02)
.word    bank7_Enemy_Routines1_Myu     ; 0x94a3 $9493 47 DA                    ;Myu			(03)
.word    bank7_Enemy_Routines1_Bot     ; 0x94a5 $9495 0C DA                    ;Bot			(04)
.word    bank7_Enemy_Routines1_Bit     ; 0x94a7 $9497 2B DA                    ;Bit			(05)
.word    bank7_Enemy_Routines1_Moa     ; 0x94a9 $9499 CF DA                    ;Moa			(06)
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0x94ab $949B 53 DB            ;Ache			(07)
.word    bank2_Enemy_Routines1_unknown0; 0x94ad $949D 98 AB                    ;?			(08)
.word    bank2_Enemy_Routines1_unknown1; 0x94af $949F E9 AB                    ;?			(09)
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0x94b1 $94A1 53 DB            ;Acheman			(0A)
.word    bank7_Enemy_Routines1_Raising_Bubbles; 0x94b3 $94A3 15 DC             ;Bubble Generator	(0B)
.word    bank7_Desert_Rocks_initialization_routine; 0x94b5 $94A5 4F DC         ;Rock Generator		(0C)
.word    bank7_Enemy_Routines1_Deeler  ; 0x94b7 $94A7 DF D6                    ;Red Deeler		(0D)
.word    bank7_Enemy_Routines1_Deeler  ; 0x94b9 $94A9 DF D6                    ;Blue Deeler		(0E)
.word    bank7_Enemy_Routines1_Bago_Bago_Generator; 0x94bb $94AB 8F D7         ;Bago Bago Generator	(0F)
.word    bank7_Enemy_Routines1_Bago_Bago0; 0x94bd $94AD E1 D7                  ;Bago Bago		(10)
.word    bank7_Enemy_Routines1_Bago_Bago1; 0x94bf $94AF 42 D8                  ;Blue Octorok - Jumping	(11)
.word    bank7_Enemy_Routines1_Octorok ; 0x94c1 $94B1 88 D8                    ;Blue Octorok - Moving	(12)
.word    bank7_Enemy_Routines1_Elevator; 0x94c3 $94B3 C2 D8                    ;Elevator		(13)
.word    bank2_Enemy_Routines1_Tektite ; 0x94c5 $94B5 05 98                    ;Tektite			(14)
.word    bank2_Enemy_Routines1_Girobokku; 0x94c7 $94B7 BC 98                   ;Girobokku		(15)
.word    bank2_Enemy_Routines1_Leever  ; 0x94c9 $94B9 10 99                    ;Leever			(16)
.word    bank2_Enemy_Routines1_Boon    ; 0x94cb $94BB 89 99                    ;Boon			(17)
.word    bank2_Enemy_Routines1_Zora    ; 0x94cd $94BD 2A 9A                    ;Zora			(18)
.word    bank2_Enemy_Routines1_Aru_Lowder; 0x94cf $94BF AE 9A                  ;Aru Lowder		(19)
.word    bank2_Enemy_Routines1_Lizalfos_Red_Blue; 0x94d1 $94C1 90 9B           ;Lizalfos - Red		(1A)
.word    bank2_Enemy_Routines1_Lizalfos_Orange; 0x94d3 $94C3 56 9B             ;Lizalfos - Orange	(1B)
.word    bank2_Enemy_Routines1_Lizalfos_Red_Blue; 0x94d5 $94C5 90 9B           ;Lizalfos - Blue		(1C)
.word    bank2_Enemy_Routines1_Lizalfos_Rock_Tossing; 0x94d7 $94C7 30 97       ;Lizalfos - Rock Tossing	(1D)
.word    L0000                         ; 0x94d9 $94C9 00 00                    ;?			(1E)
.word    L0000                         ; 0x94db $94CB 00 00                    ;?			(1F)
.word    L0000                         ; 0x94dd $94CD 00 00                    ;?			(20)
.word    L0000                         ; 0x94df $94CF 00 00                    ;?			(21)
.word    L0000                         ; 0x94e1 $94D1 00 00                    ;?			(22)
.word    L0000                         ; 0x94e3 $94D3 00 00                    ;?			(23)
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Attributes                                                         ;
;Enemy Attributes (Palette, Experience Code, etc.) (24 bytes)                  ;
;                                                                              ;
;xx.. ....	Palette Code (0-3)                                                  ;
;..x. ....	No Damage from Sword (needs Fire)                                   ;
;...x ....	Steals Experience Points                                            ;
;.... xxxx	Experience Code (0-F)                                               ;
.byt    $40,$40,$40,$C3,$C1,$81,$D7,$C4; 0x94e5 $94D5 40 40 40 C3 C1 81 D7 C4  ;
.byt    $80,$90,$84,$10,$10,$83,$C4,$10; 0x94ed $94DD 80 90 84 10 10 83 C4 10  ;
.byt    $93,$C5,$C5,$40,$E7,$85,$C4,$C7; 0x94f5 $94E5 93 C5 C5 40 E7 85 C4 C7  ;
.byt    $E7,$CA,$89,$4A,$CB,$87,$00,$00; 0x94fd $94ED E7 CA 89 4A CB 87 00 00  ;
.byt    $00,$00,$00,$00                ; 0x9505 $94F5 00 00 00 00              ;
bank2_Enemy_Vulnerability_Damage_Codes                                         ;
;xx.. ....	Strength Code (0 = gives no items, 1 = weak, 2 = strong)            ;
;..x. ....	Immune to Flying Blade and Fire                                     ;
;...x ....	?                                                                   ;
;.... xxxx	Damage Code                                                         ;
;                                                                              ;
;30	..xx ....	Fairy                                                            ;
;30	..xx ....	Red Jar                                                          ;
;30	..xx ....	Locked Door                                                      ;
;41	.x.. ...x	Myu                                                              ;
;41	.x.. ...x	Bot                                                              ;
;40	.x.. ....	Bit                                                              ;
;43	.x.. ..xx	Moa                                                              ;
;42	.x.. ..x.	Ache                                                             ;
;31	..xx ...x	?                                                                ;
;31	..xx ...x	?                                                                ;
;42	.x.. ..x.	Acheman                                                          ;
;30	..xx ....	Bubble Generator                                                 ;
;30	..xx ....	Rock Generator                                                   ;
;42	.x.. ..x.	Red Deeler                                                       ;
;42	.x.. ..x.	Blue Deeler                                                      ;
;32	..xx ..x.	Bago Bago Generator                                              ;
;42	.x.. ..x.	Bago Bago                                                        ;
;41	.x.. ...x	Blue Octorok - Jumping                                           ;
;41	.x.. ...x	Blue Octorok - Moving                                            ;
;30	..xx ....	Elevator                                                         ;
;82	x... ..x.	Tektite                                                          ;
;44	.x.. .x..	Girobokku                                                        ;
;44	.x.. .x..	Leever                                                           ;
;81	x... ...x	Boon                                                             ;
;83	x... ..xx	Zora                                                             ;
;A4	x.x. .x..	Aru Lowder                                                       ;
;34	..xx .x..	Lizalfos - Red                                                   ;
;B3	x.xx ..xx	Lizalfos - Orange                                                ;
;34	..xx .x..	Lizalfos - Blue                                                  ;
;22	..x. ..x.	Lizalfos - Rock Tossing                                          ;
;00	.... ....	?                                                                ;
;00	.... ....	?                                                                ;
;00	.... ....	?                                                                ;
;00	.... ....	?                                                                ;
;00	.... ....	?                                                                ;
;00	.... ....	?                                                                ;
.byt    $30,$30,$30,$41,$41,$40,$43,$42; 0x9509 $94F9 30 30 30 41 41 40 43 42  ;
.byt    $31,$31,$42,$30,$30,$42,$42,$32; 0x9511 $9501 31 31 42 30 30 42 42 32  ;
.byt    $42,$41,$41,$30,$82,$44,$44,$81; 0x9519 $9509 42 41 41 30 82 44 44 81  ;
.byt    $83,$A4,$34,$B3,$34,$22,$00,$00; 0x9521 $9511 83 A4 34 B3 34 22 00 00  ;
.byt    $00,$00,$00,$00                ; 0x9529 $9519 00 00 00 00              ;
bank2_Enemy_Size_Codes                                                         ;
.byt    $0F,$0F,$04,$02,$01,$01,$01,$01; 0x952d $951D 0F 0F 04 02 01 01 01 01  ;
.byt    $01,$01,$80,$01,$01,$01,$01,$01; 0x9535 $9525 01 01 80 01 01 01 01 01  ;
.byt    $01,$01,$01,$03,$81,$01,$01,$01; 0x953d $952D 01 01 01 03 81 01 01 01  ;
.byt    $81,$89,$80,$80,$80,$80,$00,$00; 0x9545 $9535 81 89 80 80 80 80 00 00  ;
.byt    $00,$00,$00,$00                ; 0x954d $953D 00 00 00 00              ;
bank2_Other_Enemy_Attributes_6E41_in_RAM                                       ;
;(is this suppose to be located here?)                                         ;
;x... ....	Immune to Thunder Spell                                             ;
;.x.. ....	Regenerates                                                         ;
;..x. ....	?                                                                   ;
;...x ....	Not hittable with sword                                             ;
;.... xxxx	?                                                                   ;
.byt    $96,$86,$96,$46,$46,$46,$06,$46; 0x9551 $9541 96 86 96 46 46 46 06 46  ;
.byt    $96,$86,$40,$90,$90,$06,$06,$90; 0x9559 $9549 96 86 40 90 90 06 06 90  ;
.byt    $06,$06,$06,$90,$00,$00,$00,$00; 0x9561 $9551 06 06 06 90 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x9569 $9559 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00                ; 0x9571 $9561 00 00 00 00              ;
; ---------------------------------------------------------------------------- ;
bank2_Pointer_table_for_Enemy_Routines2                                        ;
.word    bank7_Enemy_Routines2_Fairy   ; 0x9575 $9565 DD F0                    ;Fairy				(00)
.word    bank7_Enemy_Routines2_RedJar  ; 0x9577 $9567 12 F1                    ;Red Jar			(01)
.word    bank7_Enemy_Routines2_LockedDoor; 0x9579 $9569 3A F1                  ;Locked Door			(02)
.word    bank7_Enemy_Routines2_Myu     ; 0x957b $956B C2 EF                    ;Myu				(03)
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x957d $956D 91 EF                 ;Bot				(04)
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x957f $956F 91 EF                 ;Bit				(05)
.word    bank7_Enemy_Routines2_Moa     ; 0x9581 $9571 F2 EF                    ;Moa				(06)
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0x9583 $9573 7E F1            ;Ache				(07)
.word    bank7_Enemy_Routines2_unknown ; 0x9585 $9575 D2 EF                    ;?				(08)
.word    bank7_Enemy_Routines2_unknown ; 0x9587 $9577 D2 EF                    ;?				(09)
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0x9589 $9579 7E F1            ;Acheman			(0A)
.word    L0000                         ; 0x958b $957B 00 00                    ;Bubble Generator		(0B)
.word    L0000                         ; 0x958d $957D 00 00                    ;Rock Generator			(0C)
.word    bank7_Enemy_Routines2_Deeler  ; 0x958f $957F 27 F0                    ;
.word    bank7_Enemy_Routines2_Deeler  ; 0x9591 $9581 27 F0                    ;Blue Deeler			(0E)
.word    bank2_RTS                     ; 0x9593 $9583 AD 95                    ;Bago Bago Generator		(0F)
.word    bank7_Enemy_Routines2_BagoBago; 0x9595 $9585 B9 F0                    ;Bago Bago			(10)
.word    bank7_Enemy_Routines2_Octorok ; 0x9597 $9587 A8 F0                    ;Blue Octorok - Jumping		(11)
.word    bank7_Enemy_Routines2_Octorok ; 0x9599 $9589 A8 F0                    ;Blue Octorok - Moving		(12)
.word    bank7_Enemy_Routines2_Elevator; 0x959b $958B 47 EF                    ;Elevator			(13)
.word    bank2_Enemy_Routines2_Tektite ; 0x959d $958D AC 9D                    ;Tektite			(14)
.word    bank2_Enemy_Routines2_Girobokku; 0x959f $958F DE 9D                   ;Red Deeler			(0D);Girobokku			(15)
.word    bank2_Enemy_Routines2_Leever  ; 0x95a1 $9591 EB 9D                    ;Leever				(16)
.word    bank2_Enemy_Routines2_Boon    ; 0x95a3 $9593 01 9E                    ;Boon				(17)
.word    bank2_Enemy_Routines2_Zora    ; 0x95a5 $9595 13 9E                    ;Zora				(18)
.word    bank2_Enemy_Routines2_Aru_Lowder; 0x95a7 $9597 84 9E                  ;Aru Lowder			(19)
.word    bank2_Enemy_Routines2_Lizalfos_Red_Orange_Blue; 0x95a9 $9599 E1 9E    ;Lizalfos - Red			(1A)
.word    bank2_Enemy_Routines2_Lizalfos_Red_Orange_Blue; 0x95ab $959B E1 9E    ;Lizalfos - Orange		(1B)
.word    bank2_Enemy_Routines2_Lizalfos_Red_Orange_Blue; 0x95ad $959D E1 9E    ;Lizalfos - Blue		(1C)
.word    bank2_Enemy_Routines2_Lizalfos__Rock_Tossing; 0x95af $959F 32 9D      ;Lizalfos - Rock Tossing	(1D)
.word    L0000                         ; 0x95b1 $95A1 00 00                    ;?				(1E)
.word    L0000                         ; 0x95b3 $95A3 00 00                    ;?				(1F)
.word    L0000                         ; 0x95b5 $95A5 00 00                    ;?				(20)
.word    L0000                         ; 0x95b7 $95A7 00 00                    ;?				(21)
.word    L0000                         ; 0x95b9 $95A9 00 00                    ;?				(22)
.word    L0000                         ; 0x95bb $95AB 00 00                    ;?				(23)
; ---------------------------------------------------------------------------- ;
bank2_RTS                                                                      ;
rts                                    ; 0x95bd $95AD 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_table3                                                                   ;
.byt    $A8,$AA,$AE,$84,$CE,$CE,$27,$AE; 0x95be $95AE A8 AA AE 84 CE CE 27 AE  ;
.byt    $00,$01,$01,$02,$01,$03,$03,$03; 0x95c6 $95B6 00 01 01 02 01 03 03 03  ;
.byt    $02,$00,$00,$00                ; 0x95ce $95BE 02 00 00 00              ;
; ---------------------------------------------------------------------------- ;
bank2_Pointer_table_for_Projectiles_Routines                                   ;
.word    bank2_Projectiles_Routines2_Link_Doll; 0x95d2 $95C2 BF 96             ;Link Doll (Pwahaha!)
.word    bank2_Projectiles_Routines2_Raising_Bubble_with_no_Y_Velocity; 0x95d4 $95C4 E1 96;Raising Bubble (with no Y Velocity)
.word    bank2_Projectiles_Routines2_RockHori_Flame_RockGravity; 0x95d6 $95C6 D3 96;Rock (moves horizontally)
.word    bank2_Projectiles_Routines2_RockHori_Flame_RockGravity; 0x95d8 $95C8 D3 96;Flame
.word    bank2_Projectiles_Routines2_Energy_Ball_blue_not_flashing_causes_less_damage; 0x95da $95CA BA 96;Energy Ball (blue, not flashing, causes less damage)
.word    bank2_Projectiles_Routines2_Energy_Ball_Tektite; 0x95dc $95CC B3 96   ;Energy Ball (Tektite) (06)
.word    bank2_Projectiles_Routines2_Mace_causes_lots_of_damage; 0x95de $95CE F3 96;Mace (causes lots of damage)
.word    bank2_Projectiles_Routines2_RockHori_Flame_RockGravity; 0x95e0 $95D0 D3 96;Rock with gravity
.word    bank2_RTS                     ; 0x95e2 $95D2 AD 95                    ;RTS
; ---------------------------------------------------------------------------- ;
bank2_table4                                                                   ;
.byt    $D0,$D2,$D4,$D6,$D8,$DA,$D4,$D6; 0x95e4 $95D4 D0 D2 D4 D6 D8 DA D4 D6  ;
.byt    $01,$03,$05,$03,$07,$07,$09,$09; 0x95ec $95DC 01 03 05 03 07 07 09 09  ;
.byt    $0B,$0D,$0B,$0F,$DE,$E0,$E2,$E4; 0x95f4 $95E4 0B 0D 0B 0F DE E0 E2 E4  ;
.byt    $E6,$E8,$EA,$EC,$F0,$F4,$F6,$F8; 0x95fc $95EC E6 E8 EA EC F0 F4 F6 F8  ;
.byt    $F5,$F2,$FC,$FE,$11,$13,$15,$17; 0x9604 $95F4 F5 F2 FC FE 11 13 15 17  ;
.byt    $11,$13,$19,$1B,$1D,$13,$1F,$17; 0x960c $95FC 11 13 19 1B 1D 13 1F 17  ;
.byt    $1D,$13,$21,$1B,$23,$25,$F5,$27; 0x9614 $9604 1D 13 21 1B 23 25 F5 27  ;
.byt    $2B,$F5,$29,$2B                ; 0x961c $960C 2B F5 29 2B              ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Red_Jar                                              ;
lda      #$11                          ; 0x9620 $9610 A9 11                    ; A = 11
sta      $AF,x                         ; 0x9622 $9612 95 AF                    ;; Various enemy state variables
lda      $4E,x                         ; 0x9624 $9614 B5 4E                    ; Enemy X position (low byte)
adc      #$03                          ; 0x9626 $9616 69 03                    ;
sta      $4E,x                         ; 0x9628 $9618 95 4E                    ; Enemy X position (low byte)
rts                                    ; 0x962a $961A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Red_Blue_Deeler                                      ;
lda      $2A,x                         ; 0x962b $961B B5 2A                    ; Enemy Y Position
sta      $05DD                         ; 0x962d $961D 8D DD 05                 ;
clc                                    ; 0x9630 $9620 18                       ;
adc      #$60                          ; 0x9631 $9621 69 60                    ; Go down rope this many pixels
L9624     = * + $0001                                                          ;
L9625     = * + $0002                                                          ;
sta      $05DC                         ; 0x9633 $9623 8D DC 05                 ;
rts                                    ; 0x9636 $9626 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Projectiles_Routines_Flame                                               ;
lda      $ED                           ; 0x9637 $9627 A5 ED                    ; Sound Effects Type 2
ora      #$40                          ; 0x9639 $9629 09 40                    ; set  bits .x.. ....
sta      $ED                           ; 0x963b $962B 85 ED                    ;; Sound Effects Type 2; Sound Effects Type 2
bne      bank2_Projectiles_Routines_Energy_Ball_blue_and_Mace_and_Link_Doll; 0x963d $962D D0 00;
bank2_Projectiles_Routines_Energy_Ball_blue_and_Mace_and_Link_Doll             ;
lda      #$00                          ; 0x963f $962F A9 00                    ; A = 00
sta      $0584,x                       ; 0x9641 $9631 9D 84 05                 ; Projectile Y Velocity
jmp      L9665                         ; 0x9644 $9634 4C 65 96                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Projectiles_Routines_Raising_Bubble_with_no_Y_Velocity                   ;
ldy      #$04                          ; 0x9647 $9637 A0 04                    ; Y = 04
inc      $044C,x                       ; 0x9649 $9639 FE 4C 04                 ;
lda      $044C,x                       ; 0x964c $963C BD 4C 04                 ;
and      #$10                          ; 0x964f $963F 29 10                    ; keep bits ...x ....
beq      L9645                         ; 0x9651 $9641 F0 02                    ;
ldy      #$FC                          ; 0x9653 $9643 A0 FC                    ; Y = FC
L9645                                                                          ;
sty      $77,x                         ; 0x9655 $9645 94 77                    ; Projectile X Velocity
jmp      L9665                         ; 0x9657 $9647 4C 65 96                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Projectiles_Routines_Rock_moves_horizontally                             ;
ldy      #$02                          ; 0x965a $964A A0 02                    ; Y = 02
lda      $77,x                         ; 0x965c $964C B5 77                    ; Projectile X Velocity
bmi      L9651                         ; 0x965e $964E 30 01                    ;
dey                                    ; 0x9660 $9650 88                       ;
L9651                                                                          ;
tya                                    ; 0x9661 $9651 98                       ;
cmp      $66,x                         ; 0x9662 $9652 D5 66                    ; Projectile facing direction
beq      bank2_Projectiles_Routines_Energy_Ball_blue_and_Mace_and_Link_Doll; 0x9664 $9654 F0 D9;
inc      $0584,x                       ; 0x9666 $9656 FE 84 05                 ; Projectile Y Velocity
bne      L9662                         ; 0x9669 $9659 D0 07                    ;
bank2_Projectiles_Routines_Rock_with_gravity                                   ;
jsr      LEA1C                         ; 0x966b $965B 20 1C EA                 ;
lda      #$F3                          ; 0x966e $965E A9 F3                    ; A = F3
bcs      L9670                         ; 0x9670 $9660 B0 0E                    ;
L9662                                                                          ;
inc      $0584,x                       ; 0x9672 $9662 FE 84 05                 ; Projectile Y Velocity
L9665                                                                          ;
jsr      LDED4                         ; 0x9675 $9665 20 D4 DE                 ;
lda      $CA                           ; 0x9678 $9668 A5 CA                    ;
and      #$FC                          ; 0x967a $966A 29 FC                    ; keep bits xxxx xx..
beq      L9673                         ; 0x967c $966C F0 05                    ;
lda      #$00                          ; 0x967e $966E A9 00                    ; A = 00
L9670                                                                          ;
sta      $87,x                         ; 0x9680 $9670 95 87                    ; Projectile Type
rts                                    ; 0x9682 $9672 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9673                                                                          ;
jsr      bank2_code9                   ; 0x9683 $9673 20 7E 96                 ;
jsr      LE48A                         ; 0x9686 $9676 20 8A E4                 ;
L967B     = * + $0002                                                          ;
jmp      LE3B9                         ; 0x9689 $9679 4C B9 E3                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_table5                                                                   ;
.byt    $40,$00                        ; 0x968c $967C 40 00                    ;
; ---------------------------------------------------------------------------- ;
bank2_code9                                                                    ;
lda      $87,x                         ; 0x968e $967E B5 87                    ; Projectile Type
pha                                    ; 0x9690 $9680 48                       ;
asl                                    ; 0x9691 $9681 0A                       ;
tay                                    ; 0x9692 $9682 A8                       ;
lda      $6EC0,y                       ; 0x9693 $9683 B9 C0 6E                 ;
sta      L000E                         ; 0x9696 $9686 85 0E                    ;
lda      $6EC1,y                       ; 0x9698 $9688 B9 C1 6E                 ;
sta      $0F                           ; 0x969b $968B 85 0F                    ;
L968D                                                                          ;
ldy      $97,x                         ; 0x969d $968D B4 97                    ;
lda      $30,x                         ; 0x969f $968F B5 30                    ; Projectile Y Position
sta      $0200,y                       ; 0x96a1 $9691 99 00 02                 ;
lda      $CE                           ; 0x96a4 $9694 A5 CE                    ;
sta      $0203,y                       ; 0x96a6 $9696 99 03 02                 ;
pla                                    ; 0x96a9 $9699 68                       ;
tay                                    ; 0x96aa $969A A8                       ;
lda      $6EAD,y                       ; 0x96ab $969B B9 AD 6E                 ;
pha                                    ; 0x96ae $969E 48                       ;
lda      $6EB6,y                       ; 0x96af $969F B9 B6 6E                 ;
ldy      $66,x                         ; 0x96b2 $96A2 B4 66                    ; Projectile facing direction
ora      L967B,y                       ; 0x96b4 $96A4 19 7B 96                 ;
L96A8     = * + $0001                                                          ;
ldy      $97,x                         ; 0x96b7 $96A7 B4 97                    ;
sta      $0202,y                       ; 0x96b9 $96A9 99 02 02                 ;
pla                                    ; 0x96bc $96AC 68                       ;
sta      $0201,y                       ; 0x96bd $96AD 99 01 02                 ;
jmp      (L000E)                       ; 0x96c0 $96B0 6C 0E 00                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Projectiles_Routines2_Energy_Ball_Tektite                                ;
lda      $12                           ; 0x96c3 $96B3 A5 12                    ;; Frame Counter (ascending)
and      #$03                          ; 0x96c5 $96B5 29 03                    ; keep bits .... ..xx
sta      $0202,y                       ; 0x96c7 $96B7 99 02 02                 ;
bank2_Projectiles_Routines2_Energy_Ball_blue_not_flashing_causes_less_damage   ;
rts                                    ; 0x96ca $96BA 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_table6                                                                   ;
.byt    $00,$02,$00,$FE                ; 0x96cb $96BB 00 02 00 FE              ;
; ---------------------------------------------------------------------------- ;
bank2_Projectiles_Routines2_Link_Doll                                          ;
lda      $12                           ; 0x96cf $96BF A5 12                    ;; Frame Counter (ascending)
and      #$30                          ; 0x96d1 $96C1 29 30                    ; keep bits ..xx ....
lsr                                    ; 0x96d3 $96C3 4A                       ;
lsr                                    ; 0x96d4 $96C4 4A                       ;
lsr                                    ; 0x96d5 $96C5 4A                       ;
lsr                                    ; 0x96d6 $96C6 4A                       ;
tax                                    ; 0x96d7 $96C7 AA                       ;
lda      $0200,y                       ; 0x96d8 $96C8 B9 00 02                 ;
adc      bank2_table6,x                ; 0x96db $96CB 7D BB 96                 ;
sta      $0200,y                       ; 0x96de $96CE 99 00 02                 ;
ldx      $10                           ; 0x96e1 $96D1 A6 10                    ;; used as monster x register ;draw boss hp bar
bank2_Projectiles_Routines2_RockHori_Flame_RockGravity                         ;
lda      $12                           ; 0x96e3 $96D3 A5 12                    ;; Frame Counter (ascending)
asl                                    ; 0x96e5 $96D5 0A                       ;
asl                                    ; 0x96e6 $96D6 0A                       ;
asl                                    ; 0x96e7 $96D7 0A                       ;
asl                                    ; 0x96e8 $96D8 0A                       ;
asl                                    ; 0x96e9 $96D9 0A                       ;
and      #$80                          ; 0x96ea $96DA 29 80                    ; keep bits x... ....
ora      $0202,y                       ; 0x96ec $96DC 19 02 02                 ;
bne      L96EB                         ; 0x96ef $96DF D0 0A                    ;
bank2_Projectiles_Routines2_Raising_Bubble_with_no_Y_Velocity                  ;
lda      $12                           ; 0x96f1 $96E1 A5 12                    ;; Frame Counter (ascending)
asl                                    ; 0x96f3 $96E3 0A                       ;
asl                                    ; 0x96f4 $96E4 0A                       ;
asl                                    ; 0x96f5 $96E5 0A                       ;
sec                                    ; 0x96f6 $96E6 38                       ;
rol                                    ; 0x96f7 $96E7 2A                       ;
asl                                    ; 0x96f8 $96E8 0A                       ;
and      #$43                          ; 0x96f9 $96E9 29 43                    ; keep bits .x.. ..xx
L96EB                                                                          ;
sta      $0202,y                       ; 0x96fb $96EB 99 02 02                 ;
rts                                    ; 0x96fe $96EE 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_table7                                                                   ;
.byt    $03,$43,$C3,$83                ; 0x96ff $96EF 03 43 C3 83              ;
; ---------------------------------------------------------------------------- ;
bank2_Projectiles_Routines2_Mace_causes_lots_of_damage                         ;
lda      $12                           ; 0x9703 $96F3 A5 12                    ;; Frame Counter (ascending)
lsr                                    ; 0x9705 $96F5 4A                       ;
lsr                                    ; 0x9706 $96F6 4A                       ;
and      #$03                          ; 0x9707 $96F7 29 03                    ; keep bits .... ..xx
ldy      $66,x                         ; 0x9709 $96F9 B4 66                    ; Projectile facing direction
dey                                    ; 0x970b $96FB 88                       ;
bne      L9700                         ; 0x970c $96FC D0 02                    ;
eor      #$03                          ; 0x970e $96FE 49 03                    ; flip bits .... ..xx
L9700                                                                          ;
tay                                    ; 0x9710 $9700 A8                       ;
lda      bank2_table7,y                ; 0x9711 $9701 B9 EF 96                 ;
ldy      $97,x                         ; 0x9714 $9704 B4 97                    ;
sta      $0202,y                       ; 0x9716 $9706 99 02 02                 ;
rts                                    ; 0x9719 $9709 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Generator                       ;
ldy      #$05                          ; 0x971a $970A A0 05                    ; Y = 05
L970C                                                                          ;
cpy      $10                           ; 0x971c $970C C4 10                    ;; used as monster x register ;draw boss hp bar
beq      L971C                         ; 0x971e $970E F0 0C                    ;
lda      $B6,y                         ; 0x9720 $9710 B9 B6 00                 ; Generated Enemy Slot
beq      L971C                         ; 0x9723 $9713 F0 07                    ;
lda      $A1,y                         ; 0x9725 $9715 B9 A1 00                 ; Enemy Code
cmp      $A1,x                         ; 0x9728 $9718 D5 A1                    ;; Enemy Code
beq      L9720                         ; 0x972a $971A F0 04                    ;
L971C                                                                          ;
dey                                    ; 0x972c $971C 88                       ;
bpl      L970C                         ; 0x972d $971D 10 ED                    ;
rts                                    ; 0x972f $971F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9720                                                                          ;
tya                                    ; 0x9730 $9720 98                       ;
tax                                    ; 0x9731 $9721 AA                       ;
jsr      LDD3D                         ; 0x9732 $9722 20 3D DD                 ;
ldx      $10                           ; 0x9735 $9725 A6 10                    ;; used as monster x register ;draw boss hp bar
rts                                    ; 0x9737 $9727 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Tossed_Rocks_Y_Velocity_adjustment                             ;
.byt    $DC,$E4,$EC,$F4,$F8,$00,$00,$00; 0x9738 $9728 DC E4 EC F4 F8 00 00 00  ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Lizalfos_Rock_Tossing                                    ;
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x9740 $9730 20 91 DC; Determine Enemy Facing Direction
lda      $81,x                         ; 0x9743 $9733 B5 81                    ; Current Animation Frame for Enemy
beq      L977C                         ; 0x9745 $9735 F0 45                    ;
ldy      $0444,x                       ; 0x9747 $9737 BC 44 04                 ; Enemy Vulnerability
bne      L9773                         ; 0x974a $973A D0 37                    ;
inc       !$81,x                       ; 0x974c $973C FE 81 00                 ; Current Animation Frame for Enemy
cmp      #$02                          ; 0x974f $973F C9 02                    ;
beq      L9778                         ; 0x9751 $9741 F0 35                    ;
lda      #$10                          ; 0x9753 $9743 A9 10                    ; A = 10
sta      $0444,x                       ; 0x9755 $9745 9D 44 04                 ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
jsr      bank2_Spawn_Rock_with_Gravity__with_XY_Velocity_set_to_0; 0x9758 $9748 20 11 9A; Spawn Rock with Gravity
bcs      L977C                         ; 0x975b $974B B0 2F                    ;
lda      $0F                           ; 0x975d $974D A5 0F                    ;
bpl      L9753                         ; 0x975f $974F 10 02                    ;
eor      #$FF                          ; 0x9761 $9751 49 FF                    ; flip all bits
L9753                                                                          ;
lsr                                    ; 0x9763 $9753 4A                       ;
lsr                                    ; 0x9764 $9754 4A                       ;
ldx      $66,y                         ; 0x9765 $9755 B6 66                    ; Projectile facing direction
dex                                    ; 0x9767 $9757 CA                       ;
beq      L975C                         ; 0x9768 $9758 F0 02                    ;
eor      #$FF                          ; 0x976a $975A 49 FF                    ; flip all bits
L975C                                                                          ;
adc      $70                           ; 0x976c $975C 65 70                    ; Link's X Velocity
sta      $77,y                         ; 0x976e $975E 99 77 00                 ; Projectile X Velocity
lda      $29                           ; 0x9771 $9761 A5 29                    ; Link's Y position
lsr                                    ; 0x9773 $9763 4A                       ;
L9764                                                                          ;
lsr                                    ; 0x9774 $9764 4A                       ;
lsr                                    ; 0x9775 $9765 4A                       ;
lsr                                    ; 0x9776 $9766 4A                       ;
lsr                                    ; 0x9777 $9767 4A                       ;
tax                                    ; 0x9778 $9768 AA                       ;
lda      bank2_Table_for_Tossed_Rocks_Y_Velocity_adjustment,x; 0x9779 $9769 BD 28 97;
sta      $0584,y                       ; 0x977c $976C 99 84 05                 ; Projectile Y Velocity
ldx      $10                           ; 0x977f $976F A6 10                    ; adjust initial Y Velocity to Link's X position
bpl      L977C                         ; 0x9781 $9771 10 09                    ;
L9773                                                                          ;
dec      $0444,x                       ; 0x9783 $9773 DE 44 04                 ; Enemy Vulnerability
bpl      L977C                         ; 0x9786 $9776 10 04                    ;
L9778                                                                          ;
lda      #$00                          ; 0x9788 $9778 A9 00                    ; A = 00
sta      $81,x                         ; 0x978a $977A 95 81                    ; Current Animation Frame for Enemy
L977C                                                                          ;
jsr      bank7_Display                 ; 0x978c $977C 20 11 EF                 ; Display
lda      $AF,x                         ; 0x978f $977F B5 AF                    ;; Various enemy state variables
and      #$03                          ; 0x9791 $9781 29 03                    ; keep bits .... ..xx
jsr      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x9793 $9783 20 85 D3;
bank2_Pointer_table_for_Rock_Tossing_Lizalfos_routines                         ;
.word    bank2_code13                  ; 0x9796 $9786 8E 97                    ;
.word    L97B7                         ; 0x9798 $9788 B7 97                    ;
.word    L97C8                         ; 0x979a $978A C8 97                    ;
.word    L97DA                         ; 0x979c $978C DA 97                    ;
; ---------------------------------------------------------------------------- ;
bank2_code13                                                                   ;
lda      $0504,x                       ; 0x979e $978E BD 04 05                 ; Timer for Enemy AI
bne      L97B6                         ; 0x97a1 $9791 D0 23                    ;
lda      $051B,x                       ; 0x97a3 $9793 BD 1B 05                 ; Randomizer
lsr                                    ; 0x97a6 $9796 4A                       ;
adc      #$40                          ; 0x97a7 $9797 69 40                    ;
adc      $70                           ; 0x97a9 $9799 65 70                    ; Link's X Velocity
adc      $70                           ; 0x97ab $979B 65 70                    ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
adc      $70                           ; 0x97ad $979D 65 70                    ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
adc      $072C                         ; 0x97af $979F 6D 2C 07                 ; Scrolling Offset Low Byte
sta      $4E,x                         ; 0x97b2 $97A2 95 4E                    ; Enemy X position (low byte)
pha                                    ; 0x97b4 $97A4 48                       ;
lda      $072A                         ; 0x97b5 $97A5 AD 2A 07                 ; Scrolling Offset High Byte
adc      #$00                          ; 0x97b8 $97A8 69 00                    ;
sta      $3C,x                         ; 0x97ba $97AA 95 3C                    ; Enemy X position (high byte)
pla                                    ; 0x97bc $97AC 68                       ;
and      #$1F                          ; 0x97bd $97AD 29 1F                    ; keep bits ...x xxxx
adc      #$24                          ; 0x97bf $97AF 69 24                    ; calculate delay before get out and throw
L97B1                                                                          ;
sta      $0504,x                       ; 0x97c1 $97B1 9D 04 05                 ; Timer for Enemy AI
inc      $AF,x                         ; 0x97c4 $97B4 F6 AF                    ;; Various enemy state variables
L97B6                                                                          ;
rts                                    ; 0x97c6 $97B6 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97B7                                                                          ;
lda      $0504,x                       ; 0x97c7 $97B7 BD 04 05                 ; Timer for Enemy AI
beq      L97C5                         ; 0x97ca $97BA F0 09                    ;
lda      $2A,x                         ; 0x97cc $97BC B5 2A                    ; Enemy Y Position
cmp      #$4C                          ; 0x97ce $97BE C9 4C                    ;
bcc      L97C4                         ; 0x97d0 $97C0 90 02                    ;
dec      $2A,x                         ; 0x97d2 $97C2 D6 2A                    ; Enemy Y Position
L97C4                                                                          ;
rts                                    ; 0x97d4 $97C4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97C5                                                                          ;
inc      $AF,x                         ; 0x97d5 $97C5 F6 AF                    ;; Various enemy state variables
rts                                    ; 0x97d7 $97C7 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97C8                                                                          ;
lda      $2A,x                         ; 0x97d8 $97C8 B5 2A                    ; Enemy Y Position
cmp      #$45                          ; 0x97da $97CA C9 45                    ;
bcc      L97D1                         ; 0x97dc $97CC 90 03                    ;
dec      $2A,x                         ; 0x97de $97CE D6 2A                    ; Enemy Y Position
rts                                    ; 0x97e0 $97D0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97D1                                                                          ;
lda      $051B,x                       ; 0x97e1 $97D1 BD 1B 05                 ; Randomizer
lsr                                    ; 0x97e4 $97D4 4A                       ;
L97D5                                                                          ;
ora      #$40                          ; 0x97e5 $97D5 09 40                    ; set  bits .x.. ....
jmp      L97B1                         ; 0x97e7 $97D7 4C B1 97                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97DA                                                                          ;
lda      $0504,x                       ; 0x97ea $97DA BD 04 05                 ; Timer for Enemy AI
beq      L97D5                         ; 0x97ed $97DD F0 F6                    ;
cmp      #$11                          ; 0x97ef $97DF C9 11                    ;
bcc      L97F0                         ; 0x97f1 $97E1 90 0D                    ;
lda      $81,x                         ; 0x97f3 $97E3 B5 81                    ; Current Animation Frame for Enemy
bne      L97EF                         ; 0x97f5 $97E5 D0 08                    ;
inc       !$81,x                       ; 0x97f7 $97E7 FE 81 00                 ; Current Animation Frame for Enemy
lda      #$10                          ; 0x97fa $97EA A9 10                    ; A = 10
sta      $0444,x                       ; 0x97fc $97EC 9D 44 04                 ; Enemy Vulnerability
L97EF                                                                          ;
rts                                    ; 0x97ff $97EF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97F0                                                                          ;
inc      $2A,x                         ; 0x9800 $97F0 F6 2A                    ; Enemy Y Position
rts                                    ; 0x9802 $97F2 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Leever                                               ;
lda      $051B,x                       ; 0x9803 $97F3 BD 1B 05                 ; Randomizer
sta      $0504,x                       ; 0x9806 $97F6 9D 04 05                 ; Timer for Enemy AI
lda      $2A,x                         ; 0x9809 $97F9 B5 2A                    ; Enemy Y Position
clc                                    ; 0x980b $97FB 18                       ;
adc      #$1C                          ; 0x980c $97FC 69 1C                    ;
sta      $81,x                         ; 0x980e $97FE 95 81                    ; Current Animation Frame for Enemy
sta      $2A,x                         ; 0x9810 $9800 95 2A                    ; Enemy Y Position
rts                                    ; 0x9812 $9802 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Tektite_Jumping_X_Velocities                                   ;
;10 = Tektite Jumping X Velocity - Facing Right                                ;
;F0 = Tektite Jumping X Velocity - Facing Left                                 ;
.byt    $10,$F0                        ; 0x9813 $9803 10 F0                    ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Tektite                                                  ;
jsr      bank7_Enemy_Stops_when_Hit    ; 0x9815 $9805 20 02 DA                 ; Enemy Stops when Hit
jsr      bank7_Display                 ; 0x9818 $9808 20 11 EF                 ; Display
lda      $057E,x                       ; 0x981b $980B BD 7E 05                 ; Enemy Y Velocity
beq      L9814                         ; 0x981e $980E F0 04                    ;
and      #$02                          ; 0x9820 $9810 29 02                    ; keep bits .... ..x.
beq      L9820                         ; 0x9822 $9812 F0 0C                    ;
L9814                                                                          ;
inc      $AF,x                         ; 0x9824 $9814 F6 AF                    ;; Various enemy state variables
lda      $AF,x                         ; 0x9826 $9816 B5 AF                    ;; Various enemy state variables
cmp      #$11                          ; 0x9828 $9818 C9 11                    ;
bne      L9820                         ; 0x982a $981A D0 04                    ;
lda      #$F1                          ; 0x982c $981C A9 F1                    ; A = F1
sta      $AF,x                         ; 0x982e $981E 95 AF                    ;; Various enemy state variables
L9820                                                                          ;
cmp      #$F8                          ; 0x9830 $9820 C9 F8                    ;
bne      L9837                         ; 0x9832 $9822 D0 13                    ;
lda      $051B,x                       ; 0x9834 $9824 BD 1B 05                 ; Randomizer
lsr                                    ; 0x9837 $9827 4A                       ;
bcc      L9837                         ; 0x9838 $9828 90 0D                    ;
lda      $A8,x                         ; 0x983a $982A B5 A8                    ; Enemy State
and      #$04                          ; 0x983c $982C 29 04                    ; keep bits .... .x..
beq      L9837                         ; 0x983e $982E F0 07                    ;
lda      #$C5                          ; 0x9840 $9830 A9 C5                    ; A = C5 (Tektite jumping Y velocity)
sta      $057E,x                       ; 0x9842 $9832 9D 7E 05                 ; Enemy Y Velocity
dec      $2A,x                         ; 0x9845 $9835 D6 2A                    ; Enemy Y Position
L9837                                                                          ;
jsr      L9B42                         ; 0x9847 $9837 20 42 9B                 ;
lda      $A8,x                         ; 0x984a $983A B5 A8                    ; Enemy State
and      #$03                          ; 0x984c $983C 29 03                    ; keep bits .... ..xx
beq      L9843                         ; 0x984e $983E F0 03                    ;
jsr      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x9850 $9840 20 EB E8; Wall Hit Collision Test
L9843                                                                          ;
ldy      $60,x                         ; 0x9853 $9843 B4 60                    ;; Enemy facing direction
dey                                    ; 0x9855 $9845 88                       ;
L9847     = * + $0001                                                          ;
lda      $057E,x                       ; 0x9856 $9846 BD 7E 05                 ; Enemy Y Velocity
bne      L9854                         ; 0x9859 $9849 D0 09                    ;
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x985b $984B 20 91 DC; Determine Enemy Facing Direction
lda      $A8,x                         ; 0x985e $984E B5 A8                    ; Enemy State
and      #$04                          ; 0x9860 $9850 29 04                    ; keep bits .... .x.. (jump state)
bne      L985C                         ; 0x9862 $9852 D0 08                    ;
L9854                                                                          ;
lda      bank2_Table_for_Tektite_Jumping_X_Velocities,y; 0x9864 $9854 B9 03 98 ;
sta      $71,x                         ; 0x9867 $9857 95 71                    ; Enemy X Velocity
jsr      bank7_Simple_Horizontal_Movement; 0x9869 $9859 20 B8 DE               ; Simple Horizontal Movement
L985C                                                                          ;
lda      $12                           ; 0x986c $985C A5 12                    ;; Frame Counter (ascending)
and      #$3F                          ; 0x986e $985E 29 3F                    ; keep bits ..xx xxxx (attack window) (C0-F0)
bne      L987F                         ; 0x9870 $9860 D0 1D                    ;
lda      $051B,x                       ; 0x9872 $9862 BD 1B 05                 ; Randomizer
and      #$01                          ; 0x9875 $9865 29 01                    ; keep bits .... ...x (probability 50%)
bne      L987F                         ; 0x9877 $9867 D0 16                    ;
jsr      bank7_Spawn_New_Projectile    ; 0x9879 $9869 20 CE DB                 ; Spawn New Projectile
bcs      L987F                         ; 0x987c $986C B0 11                    ;
lda      #$06                          ; 0x987e $986E A9 06                    ; A = 06
sta      $87,y                         ; 0x9880 $9870 99 87 00                 ; Projectile Type (06 = Energy Ball)
sty      L0000                         ; 0x9883 $9873 84 00                    ;
ldy      $91,x                         ; 0x9885 $9875 B4 91                    ;
lda      $0200,y                       ; 0x9887 $9877 B9 00 02                 ;
ldy      L0000                         ; 0x988a $987A A4 00                    ;
sta      $30,y                         ; 0x988c $987C 99 30 00                 ; Projectile Y Position
L987F                                                                          ;
ldy      #$80                          ; 0x988f $987F A0 80                    ; Y = 80 (Tile Mapping 1)
lda      $AF,x                         ; 0x9891 $9881 B5 AF                    ;; Various enemy state variables
adc      #$08                          ; 0x9893 $9883 69 08                    ;
cmp      #$10                          ; 0x9895 $9885 C9 10                    ;
bcc      L988B                         ; 0x9897 $9887 90 02                    ;
ldy      #$89                          ; 0x9899 $9889 A0 89                    ; Y = 89 (Tile Mapping 2)
L988B                                                                          ;
sty      $6E31                         ; 0x989b $988B 8C 31 6E                 ;
ldy      #$01                          ; 0x989e $988E A0 01                    ; Y = 01
inx                                    ; 0x98a0 $9890 E8                       ;
jsr      bank7_code51                  ; 0x98a1 $9891 20 7D F2                 ;
ldx      $10                           ; 0x98a4 $9894 A6 10                    ;; used as monster x register ;draw boss hp bar
lda      $1A,x                         ; 0x98a6 $9896 B5 1A                    ;
cmp      #$02                          ; 0x98a8 $9898 C9 02                    ;
bcc      L989F                         ; 0x98aa $989A 90 03                    ;
jmp      LDD3D                         ; 0x98ac $989C 4C 3D DD                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L989F                                                                          ;
lda      $C9                           ; 0x98af $989F A5 C9                    ;
and      #$FC                          ; 0x98b1 $98A1 29 FC                    ; keep bits xxxx xx..
beq      L98AE                         ; 0x98b3 $98A3 F0 09                    ;
lda      $A8,x                         ; 0x98b5 $98A5 B5 A8                    ;; Enemy State
and      #$0F                          ; 0x98b7 $98A7 29 0F                    ; keep bits .... xxxx
sta      $A8,x                         ; 0x98b9 $98A9 95 A8                    ;; Enemy State
jmp      LDE6C                         ; 0x98bb $98AB 4C 6C DE                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98AE                                                                          ;
jsr      LE48B                         ; 0x98be $98AE 20 8B E4                 ;
jsr      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x98c1 $98B1 20 77 E6; Sword Hit Detection
jsr      LE4D9                         ; 0x98c4 $98B4 20 D9 E4                 ;
L98B9     = * + $0002                                                          ;
jmp      bank7_Link_Collision_Detection; 0x98c7 $98B7 4C C1 D6                 ; Link Collision Detection
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Girobokku_XY_Velocities                                        ;
.byt    $08,$F8                        ; 0x98ca $98BA 08 F8                    ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Girobokku                                                ;
jsr      bank7_Link_Collision_Detection; 0x98cc $98BC 20 C1 D6                 ; Link Collision Detection
lda      $0504,x                       ; 0x98cf $98BF BD 04 05                 ; Timer for Enemy AI
beq      L98C7                         ; 0x98d2 $98C2 F0 03                    ;
jmp      LDE40                         ; 0x98d4 $98C4 4C 40 DE                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98C7                                                                          ;
lda      $AF,x                         ; 0x98d7 $98C7 B5 AF                    ;; Various enemy state variables
and      #$20                          ; 0x98d9 $98C9 29 20                    ; keep bits ..x. .... (delay before stopping)
beq      L98DE                         ; 0x98db $98CB F0 11                    ;
lda      $AF,x                         ; 0x98dd $98CD B5 AF                    ;; Various enemy state variables
asl                                    ; 0x98df $98CF 0A                       ;
asl                                    ; 0x98e0 $98D0 0A                       ;
lda      #$00                          ; 0x98e1 $98D1 A9 00                    ; A = 00
rol                                    ; 0x98e3 $98D3 2A                       ;
tay                                    ; 0x98e4 $98D4 A8                       ;
lda      bank2_Table_for_Girobokku_XY_Velocities,y; 0x98e5 $98D5 B9 BA 98      ;
sta      $057E,x                       ; 0x98e8 $98D8 9D 7E 05                 ; Enemy Y Velocity
jsr      bank7_Simple_Vertical_Movement; 0x98eb $98DB 20 C8 DE                 ; Simple Vertical Movement
L98DE                                                                          ;
inc      $AF,x                         ; 0x98ee $98DE F6 AF                    ;; Various enemy state variables
lda      $AF,x                         ; 0x98f0 $98E0 B5 AF                    ;; Various enemy state variables
and      #$3F                          ; 0x98f2 $98E2 29 3F                    ; keep bits ..xx xxxx
bne      L98E9                         ; 0x98f4 $98E4 D0 03                    ; 3F = delay before changing direction
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x98f6 $98E6 20 91 DC; Determine Enemy Facing Direction
L98E9                                                                          ;
ldy      $60,x                         ; 0x98f9 $98E9 B4 60                    ;; Enemy facing direction
lda      L98B9,y                       ; 0x98fb $98EB B9 B9 98                 ;
sta      $71,x                         ; 0x98fe $98EE 95 71                    ; Enemy X Velocity
jsr      bank7_Simple_Horizontal_Movement; 0x9900 $98F0 20 B8 DE               ; Simple Horizontal Movement
jsr      bank7_Display                 ; 0x9903 $98F3 20 11 EF                 ; Display
lda      #$05                          ; 0x9906 $98F6 A9 05                    ; A = 05
sta      $0444,x                       ; 0x9908 $98F8 9D 44 04                 ; Enemy Vulnerability
jsr      LE617                         ; 0x990b $98FB 20 17 E6                 ;
jsr      LDE40                         ; 0x990e $98FE 20 40 DE                 ;
lda      $051B,x                       ; 0x9911 $9901 BD 1B 05                 ; Randomizer
and      #$1F                          ; 0x9914 $9904 29 1F                    ; keep bits ...x xxxx
bne      L990D                         ; 0x9916 $9906 D0 05                    ; 1F = probability of eye opening
lda      #$3F                          ; 0x9918 $9908 A9 3F                    ; A = 3F (delay for eye stay open)
sta      $0504,x                       ; 0x991a $990A 9D 04 05                 ; Timer for Enemy AI
L990D                                                                          ;
rts                                    ; 0x991d $990D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Leever_X_Velocities                                            ;
;10 = Leever X Velocity - Facing Right                                         ;
;F0 = Leever X Velocity - Facing Left                                          ;
.byt    $10,$F0                        ; 0x991e $990E 10 F0                    ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Leever                                                   ;
jsr      bank7_Enemy_Stops_when_Hit    ; 0x9920 $9910 20 02 DA                 ; Enemy Stops when Hit
jsr      LDE40                         ; 0x9923 $9913 20 40 DE                 ;
jsr      bank7_Link_Collision_Detection; 0x9926 $9916 20 C1 D6                 ; Link Collision Detection
lda      $AF,x                         ; 0x9929 $9919 B5 AF                    ;; Various enemy state variables
and      #$03                          ; 0x992b $991B 29 03                    ; keep bits .... ..xx
jsr      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x992d $991D 20 85 D3;
bank2_pointer_table_for_Leever_routines                                        ;
.word    bank2_Leever_routines_Lurking ; 0x9930 $9920 28 99                    ;
.word    bank2_Leever_routines_Emerging; 0x9932 $9922 50 99                    ;
.word    bank2_Leever_routines_Moving  ; 0x9934 $9924 6C 99                    ;
.word    bank2_Leever_routines_Retreating; 0x9936 $9926 7C 99                  ;
; ---------------------------------------------------------------------------- ;
bank2_Leever_routines_Lurking                                                  ;
lda      $0504,x                       ; 0x9938 $9928 BD 04 05                 ; Timer for Enemy AI
bne      L994F                         ; 0x993b $992B D0 22                    ;
lda      #$50                          ; 0x993d $992D A9 50                    ; A = 50 (delay for lurking before emerging)
sta      $0504,x                       ; 0x993f $992F 9D 04 05                 ; Timer for Enemy AI
lda      $051B,x                       ; 0x9942 $9932 BD 1B 05                 ; Randomizer
adc      $072C                         ; 0x9945 $9935 6D 2C 07                 ; Scrolling Offset Low Byte
sta      $4E,x                         ; 0x9948 $9938 95 4E                    ; Enemy X position (low byte)
lda      $072A                         ; 0x994a $993A AD 2A 07                 ; Scrolling Offset High Byte
adc      #$00                          ; 0x994d $993D 69 00                    ;
sta      $3C,x                         ; 0x994f $993F 95 3C                    ; Enemy X position (high byte)
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x9951 $9941 20 91 DC; Determine Enemy Facing Direction
lda      bank2_Table_for_Leever_X_Velocities,y; 0x9954 $9944 B9 0E 99          ;
sta      $71,x                         ; 0x9957 $9947 95 71                    ; Enemy X Velocity
lda      $81,x                         ; 0x9959 $9949 B5 81                    ; Current Animation Frame for Enemy
sta      $2A,x                         ; 0x995b $994B 95 2A                    ; Enemy Y Position
inc      $AF,x                         ; 0x995d $994D F6 AF                    ;; Various enemy state variables
L994F                                                                          ;
rts                                    ; 0x995f $994F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Leever_routines_Emerging                                                 ;
lda      $0504,x                       ; 0x9960 $9950 BD 04 05                 ; Timer for Enemy AI
beq      L9960                         ; 0x9963 $9953 F0 0B                    ;
cmp      #$1A                          ; 0x9965 $9955 C9 1A                    ; height at which Leever starts moving
bcs      L995F                         ; 0x9967 $9957 B0 06                    ;
and      #$01                          ; 0x9969 $9959 29 01                    ; keep bits .... ...x
bne      L995F                         ; 0x996b $995B D0 02                    ;
dec      $2A,x                         ; 0x996d $995D D6 2A                    ; Enemy Y Position
L995F                                                                          ;
rts                                    ; 0x996f $995F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9960                                                                          ;
inc      $AF,x                         ; 0x9970 $9960 F6 AF                    ;; Various enemy state variables
lda      $051B,x                       ; 0x9972 $9962 BD 1B 05                 ; Randomizer
lsr                                    ; 0x9975 $9965 4A                       ;
ora      #$30                          ; 0x9976 $9966 09 30                    ; set  bits ..xx ....
sta      $0504,x                       ; 0x9978 $9968 9D 04 05                 ; delay for movement (between 30 and 7F)
rts                                    ; 0x997b $996B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Leever_routines_Moving                                                   ;
jsr      bank7_Simple_Horizontal_Movement; 0x997c $996C 20 B8 DE               ; Simple Horizontal Movement
lda      $0504,x                       ; 0x997f $996F BD 04 05                 ; Timer for Enemy AI
bne      L997B                         ; 0x9982 $9972 D0 07                    ;
inc      $AF,x                         ; 0x9984 $9974 F6 AF                    ;; Various enemy state variables
lda      #$20                          ; 0x9986 $9976 A9 20                    ; A = 20 (delay for retreating to ground)
sta      $0504,x                       ; 0x9988 $9978 9D 04 05                 ;; Timer for Enemy
L997B                                                                          ;
rts                                    ; 0x998b $997B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Leever_routines_Retreating                                               ;
lda      $0504,x                       ; 0x998c $997C BD 04 05                 ; Timer for Enemy AI
beq      L9960                         ; 0x998f $997F F0 DF                    ;
lsr                                    ; 0x9991 $9981 4A                       ;
bcc      L9986                         ; 0x9992 $9982 90 02                    ;
L9985     = * + $0001                                                          ;
inc      $2A,x                         ; 0x9994 $9984 F6 2A                    ; Enemy Y Position
L9986                                                                          ;
rts                                    ; 0x9996 $9986 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Boon_XY_Velocities                                             ;
.byt    $20,$E0                        ; 0x9997 $9987 20 E0                    ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Boon                                                     ;
lda      $2A,x                         ; 0x9999 $9989 B5 2A                    ; Enemy Y Position
cmp      #$70                          ; 0x999b $998B C9 70                    ; minimum height for dropping rocks
bcs      L9998                         ; 0x999d $998D B0 09                    ;
lda      $12                           ; 0x999f $998F A5 12                    ;; Frame Counter (ascending)
and      #$1F                          ; 0x99a1 $9991 29 1F                    ; keep bits ...x xxxx
bne      L9998                         ; 0x99a3 $9993 D0 03                    ; delay before dropping a rock
jsr      bank2_Spawn_Rock_with_Gravity__with_XY_Velocity_set_to_0; 0x99a5 $9995 20 11 9A; Spawn Rock with Gravity, with Zero Velocity
L9998                                                                          ;
ldy      #$01                          ; 0x99a8 $9998 A0 01                    ; Y = 01
lda      $71,x                         ; 0x99aa $999A B5 71                    ; Enemy X Velocity
bpl      L999F                         ; 0x99ac $999C 10 01                    ;
iny                                    ; 0x99ae $999E C8                       ;
L999F                                                                          ;
sty      $60,x                         ; 0x99af $999F 94 60                    ;; Enemy facing direction
jsr      bank7_Enemy_Stops_when_Hit    ; 0x99b1 $99A1 20 02 DA                 ; Enemy Stops when Hit
jsr      LDE40                         ; 0x99b4 $99A4 20 40 DE                 ;
jsr      bank7_Link_Collision_Detection; 0x99b7 $99A7 20 C1 D6                 ; Link Collision Detection
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x99ba $99AA 20 91 DC; Determine Enemy Facing Direction
lda      $AF,x                         ; 0x99bd $99AD B5 AF                    ;; Various enemy state variables
bne      L99D2                         ; 0x99bf $99AF D0 21                    ;
sta      $81,x                         ; 0x99c1 $99B1 95 81                    ; Current Animation Frame for Enemy
lda      #$30                          ; 0x99c3 $99B3 A9 30                    ; A = 30
sta      $2A,x                         ; 0x99c5 $99B5 95 2A                    ; Enemy Y Position
lda      #$01                          ; 0x99c7 $99B7 A9 01                    ; A = 01
sta      $1A,x                         ; 0x99c9 $99B9 95 1A                    ;
lda      $051B,x                       ; 0x99cb $99BB BD 1B 05                 ; Randomizer
adc      $072C                         ; 0x99ce $99BE 6D 2C 07                 ; Scrolling Offset Low Byte
sta      $4E,x                         ; 0x99d1 $99C1 95 4E                    ; Enemy X position (low byte)
lda      $072A                         ; 0x99d3 $99C3 AD 2A 07                 ; Scrolling Offset High Byte
adc      #$00                          ; 0x99d6 $99C6 69 00                    ;
sta      $3C,x                         ; 0x99d8 $99C8 95 3C                    ; Enemy X position (high byte)
lda      #$20                          ; 0x99da $99CA A9 20                    ; A = 20
sta      $0504,x                       ; 0x99dc $99CC 9D 04 05                 ; Timer for Enemy AI
inc      $AF,x                         ; 0x99df $99CF F6 AF                    ;; Various enemy state variables
rts                                    ; 0x99e1 $99D1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99D2                                                                          ;
lda      $C9                           ; 0x99e2 $99D2 A5 C9                    ;
and      #$CC                          ; 0x99e4 $99D4 29 CC                    ; keep bits xx.. xx..
beq      L99DA                         ; 0x99e6 $99D6 F0 02                    ;
dec      $AF,x                         ; 0x99e8 $99D8 D6 AF                    ;; Various enemy state variables
L99DA                                                                          ;
lda      $0504,x                       ; 0x99ea $99DA BD 04 05                 ; Timer for Enemy AI
bne      L99EF                         ; 0x99ed $99DD D0 10                    ;
lda      $051B,x                       ; 0x99ef $99DF BD 1B 05                 ; Randomizer
pha                                    ; 0x99f2 $99E2 48                       ;
and      #$0F                          ; 0x99f3 $99E3 29 0F                    ; keep bits .... xxxx
L99E6     = * + $0001                                                          ;
ora      #$08                          ; 0x99f5 $99E5 09 08                    ; set  bits .... x...
sta      $0504,x                       ; 0x99f7 $99E7 9D 04 05                 ; Timer for Enemy AI
pla                                    ; 0x99fa $99EA 68                       ; delay before direction change (08-0F)
and      #$03                          ; 0x99fb $99EB 29 03                    ; keep bits .... ..xx
sta      $81,x                         ; 0x99fd $99ED 95 81                    ; Current Animation Frame for Enemy
L99EF                                                                          ;
lda      $81,x                         ; 0x99ff $99EF B5 81                    ;; Current Animation Frame for Enemys
jsr      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x9a01 $99F1 20 85 D3;
bank2_Pointer_table_for_Boon_routines                                          ;
.word    bank2_code16                  ; 0x9a04 $99F4 FC 99                    ;
.word    bank2_code16                  ; 0x9a06 $99F6 FC 99                    ;
.word    L9A07                         ; 0x9a08 $99F8 07 9A                    ;
.word    L9A07                         ; 0x9a0a $99FA 07 9A                    ;
; ---------------------------------------------------------------------------- ;
bank2_code16                                                                   ;
ldy      $81,x                         ; 0x9a0c $99FC B4 81                    ; Current Animation Frame for Enemy
lda      bank2_Table_for_Boon_XY_Velocities,y; 0x9a0e $99FE B9 87 99           ;
sta      $057E,x                       ; 0x9a11 $9A01 9D 7E 05                 ; Enemy Y Velocity
L9A04                                                                          ;
jmp      bank7_Simple_Vertical_Movement; 0x9a14 $9A04 4C C8 DE                 ; Simple Vertical Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A07                                                                          ;
ldy      $81,x                         ; 0x9a17 $9A07 B4 81                    ; Current Animation Frame for Enemy
lda      L9985,y                       ; 0x9a19 $9A09 B9 85 99                 ;
sta      $71,x                         ; 0x9a1c $9A0C 95 71                    ; Enemy X Velocity
jmp      bank7_Simple_Horizontal_Movement; 0x9a1e $9A0E 4C B8 DE               ; Simple Horizontal Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Spawn_Rock_with_Gravity__with_XY_Velocity_set_to_0                       ;
jsr      bank7_Spawn_New_Projectile    ; 0x9a21 $9A11 20 CE DB                 ; Spawn New Projectile
bcs      L9A23                         ; 0x9a24 $9A14 B0 0D                    ;
lda      #$08                          ; 0x9a26 $9A16 A9 08                    ; A = 08 (08 = Rock with gravity)
sta      $87,y                         ; 0x9a28 $9A18 99 87 00                 ; Projectile Type
lda      #$00                          ; 0x9a2b $9A1B A9 00                    ; A = 00
sta      $0584,y                       ; 0x9a2d $9A1D 99 84 05                 ; Projectile Y Velocity
sta      $77,y                         ; 0x9a30 $9A20 99 77 00                 ; Projectile X Velocity
L9A23                                                                          ;
rts                                    ; 0x9a33 $9A23 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Variables_for_Zora_Aru_Lowder                                            ;
;F8 = Velocity facing right, forward or backwards                              ;
;08 = Velocity facing left, forward or backwards                               ;
;0E =                                                                          ;
;F8 =                                                                          ;
;00 =                                                                          ;
;FF =                                                                          ;
.byt    $F8                            ; 0x9a34 $9A24 F8                       ;
L9A25                                                                          ;
.byt    $08,$0E                        ; 0x9a35 $9A25 08 0E                    ;
L9A27                                                                          ;
.byt    $F8,$00,$FF                    ; 0x9a37 $9A27 F8 00 FF                 ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Zora                                                     ;
lda      $12                           ; 0x9a3a $9A2A A5 12                    ;; Frame Counter (ascending)
and      #$3F                          ; 0x9a3c $9A2C 29 3F                    ; keep bits ..xx xxxx
bne      L9A3A                         ; 0x9a3e $9A2E D0 0A                    ; probability of shooting Energy Ball
lda      $051B,x                       ; 0x9a40 $9A30 BD 1B 05                 ; Randomizer
lsr                                    ; 0x9a43 $9A33 4A                       ;
bcc      L9A3A                         ; 0x9a44 $9A34 90 04                    ;
lda      #$0A                          ; 0x9a46 $9A36 A9 0A                    ; A = 0A
sta      $81,x                         ; 0x9a48 $9A38 95 81                    ; Current Animation Frame for Enemy
L9A3A                                                                          ;
jsr      L9B42                         ; 0x9a4a $9A3A 20 42 9B                 ;
lda      #$80                          ; 0x9a4d $9A3D A9 80                    ; A = 80 (vulnerability code standing up)
ldy      $0504,x                       ; 0x9a4f $9A3F BC 04 05                 ; Timer for Enemy AI
bne      L9A46                         ; 0x9a52 $9A42 D0 02                    ;
lda      #$89                          ; 0x9a54 $9A44 A9 89                    ; A = 89 (vulnerability code on four legs)
L9A46                                                                          ;
sta      $6E35                         ; 0x9a56 $9A46 8D 35 6E                 ; change Vulnerability Code
jsr      LDE40                         ; 0x9a59 $9A49 20 40 DE                 ;
jsr      bank7_Link_Collision_Detection; 0x9a5c $9A4C 20 C1 D6                 ; Link Collision Detection
jsr      L9B24                         ; 0x9a5f $9A4F 20 24 9B                 ;
lda      $12                           ; 0x9a62 $9A52 A5 12                    ;; Frame Counter (ascending)
and      #$3F                          ; 0x9a64 $9A54 29 3F                    ; keep bits ..xx xxxx
bne      L9A5B                         ; 0x9a66 $9A56 D0 03                    ;
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x9a68 $9A58 20 91 DC; Determine Enemy Facing Direction
L9A5B                                                                          ;
lda      #$00                          ; 0x9a6b $9A5B A9 00                    ; A = 00
sta      $71,x                         ; 0x9a6d $9A5D 95 71                    ; Enemy X Velocity
lda      $0504,x                       ; 0x9a6f $9A5F BD 04 05                 ; Timer for Enemy AI
bne      L9A70                         ; 0x9a72 $9A62 D0 0C                    ;
lda      $12                           ; 0x9a74 $9A64 A5 12                    ;; Frame Counter (ascending)
bne      L9A6D                         ; 0x9a76 $9A66 D0 05                    ;
lda      #$50                          ; 0x9a78 $9A68 A9 50                    ; A = 50 (delay for staying stand up)
sta      $0504,x                       ; 0x9a7a $9A6A 9D 04 05                 ; Timer for Enemy AI
L9A6D                                                                          ;
jsr      L9B09                         ; 0x9a7d $9A6D 20 09 9B                 ;
L9A70                                                                          ;
lda      $81,x                         ; 0x9a80 $9A70 B5 81                    ; Current Animation Frame for Enemy
beq      L9AAD                         ; 0x9a82 $9A72 F0 39                    ;
dec      $81,x                         ; 0x9a84 $9A74 D6 81                    ; Current Animation Frame for Enemy
bne      L9AAD                         ; 0x9a86 $9A76 D0 35                    ;
jsr      bank7_Spawn_New_Projectile    ; 0x9a88 $9A78 20 CE DB                 ; Spawn New Projectile
bcs      L9AAD                         ; 0x9a8b $9A7B B0 30                    ;
lda      #$06                          ; 0x9a8d $9A7D A9 06                    ; A = 06
sta      $87,y                         ; 0x9a8f $9A7F 99 87 00                 ; Projectile Type
lda      $30,y                         ; 0x9a92 $9A82 B9 30 00                 ; Projectile Y Position
adc      #$04                          ; 0x9a95 $9A85 69 04                    ;
sta      $30,y                         ; 0x9a97 $9A87 99 30 00                 ; Projectile Y Position
lda      $0504,x                       ; 0x9a9a $9A8A BD 04 05                 ; Timer for Enemy AI
bne      L9A99                         ; 0x9a9d $9A8D D0 0A                    ;
lda      $30,y                         ; 0x9a9f $9A8F B9 30 00                 ; Projectile Y Position
clc                                    ; 0x9aa2 $9A92 18                       ;
adc      #$0C                          ; 0x9aa3 $9A93 69 0C                    ;
sta      $30,y                         ; 0x9aa5 $9A95 99 30 00                 ; Projectile Y Position
rts                                    ; 0x9aa8 $9A98 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A99                                                                          ;
ldx      $66,y                         ; 0x9aa9 $9A99 B6 66                    ; Projectile facing direction
lda      $54,y                         ; 0x9aab $9A9B B9 54 00                 ; Projectile X Position (low byte)
adc      L9A25,x                       ; 0x9aae $9A9E 7D 25 9A                 ;
sta      $54,y                         ; 0x9ab1 $9AA1 99 54 00                 ;
lda      $42,y                         ; 0x9ab4 $9AA4 B9 42 00                 ; Projectile X Position (high byte)
adc      L9A27,x                       ; 0x9ab7 $9AA7 7D 27 9A                 ;
sta      $42,y                         ; 0x9aba $9AAA 99 42 00                 ;
L9AAD                                                                          ;
rts                                    ; 0x9abd $9AAD 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Aru_Lowder                                               ;
jsr      L9B42                         ; 0x9abe $9AAE 20 42 9B                 ;
lda      $81,x                         ; 0x9ac1 $9AB1 B5 81                    ; Current Animation Frame for Enemy
bne      L9AC3                         ; 0x9ac3 $9AB3 D0 0E                    ;
jsr      bank7_Display                 ; 0x9ac5 $9AB5 20 11 EF                 ; Display
lda      #$03                          ; 0x9ac8 $9AB8 A9 03                    ; A = 03
sta      $0444,x                       ; 0x9aca $9ABA 9D 44 04                 ; Enemy Vulnerability
jsr      LE617                         ; 0x9acd $9ABD 20 17 E6                 ;
jmp      L9AC5                         ; 0x9ad0 $9AC0 4C C5 9A                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9AC3                                                                          ;
dec      $81,x                         ; 0x9ad3 $9AC3 D6 81                    ; Current Animation Frame for Enemy
L9AC5                                                                          ;
jsr      LDE40                         ; 0x9ad5 $9AC5 20 40 DE                 ;
jsr      bank7_Link_Collision_Detection; 0x9ad8 $9AC8 20 C1 D6                 ; Link Collision Detection
jsr      L9B24                         ; 0x9adb $9ACB 20 24 9B                 ;
lda      $12                           ; 0x9ade $9ACE A5 12                    ;; Frame Counter (ascending)
and      #$3F                          ; 0x9ae0 $9AD0 29 3F                    ; keep bits ..xx xxxx
bne      L9AD7                         ; 0x9ae2 $9AD2 D0 03                    ; delay before changing direction (towards Link)
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x9ae4 $9AD4 20 91 DC; Determine Enemy Facing Direction
L9AD7                                                                          ;
lda      $051B,x                       ; 0x9ae7 $9AD7 BD 1B 05                 ; Randomizer
eor      #$FF                          ; 0x9aea $9ADA 49 FF                    ; flip all bits
and      #$FC                          ; 0x9aec $9ADC 29 FC                    ; keep bits xxxx xx..
bne      L9AE4                         ; 0x9aee $9ADE D0 04                    ; used to calculate delay for eye open
lda      #$20                          ; 0x9af0 $9AE0 A9 20                    ; A = 20
sta      $81,x                         ; 0x9af2 $9AE2 95 81                    ; Current Animation Frame for Enemy
L9AE4                                                                          ;
lda      $051C,x                       ; 0x9af4 $9AE4 BD 1C 05                 ; Alternate Randomizer ?
and      #$3F                          ; 0x9af7 $9AE7 29 3F                    ; keep bits ..xx xxxx
bne      L9AF0                         ; 0x9af9 $9AE9 D0 05                    ; flame shooting frequency
lda      #$10                          ; 0x9afb $9AEB A9 10                    ; A = 10 (delay during which tail is pointed)
sta      $0504,x                       ; 0x9afd $9AED 9D 04 05                 ; Timer for Enemy AI
L9AF0                                                                          ;
lda      #$00                          ; 0x9b00 $9AF0 A9 00                    ; A = 00
sta      $71,x                         ; 0x9b02 $9AF2 95 71                    ; Enemy X Velocity
jsr      L9B09                         ; 0x9b04 $9AF4 20 09 9B                 ;
lda      $0504,x                       ; 0x9b07 $9AF7 BD 04 05                 ; Timer for Enemy AI
cmp      #$08                          ; 0x9b0a $9AFA C9 08                    ; (when timer reaches 08, shoot flame)
bne      L9B08                         ; 0x9b0c $9AFC D0 0A                    ;
jsr      bank7_Spawn_New_Projectile    ; 0x9b0e $9AFE 20 CE DB                 ; Spawn New Projectile
bcs      L9B08                         ; 0x9b11 $9B01 B0 05                    ;
lda      #$04                          ; 0x9b13 $9B03 A9 04                    ; A = 04
sta      $87,y                         ; 0x9b15 $9B05 99 87 00                 ; Projectile Type (04 = Flame)
L9B08                                                                          ;
rts                                    ; 0x9b18 $9B08 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B09                                                                          ;
inc      $AF,x                         ; 0x9b19 $9B09 F6 AF                    ;; Various enemy state variables
ldy      $60,x                         ; 0x9b1b $9B0B B4 60                    ; Enemy facing direction
lda      $AF,x                         ; 0x9b1d $9B0D B5 AF                    ;; Various enemy state variables
and      #$C0                          ; 0x9b1f $9B0F 29 C0                    ; keep bits xx.. ....
bne      L9B18                         ; 0x9b21 $9B11 D0 05                    ;
lda      L9A23,y                       ; 0x9b23 $9B13 B9 23 9A                 ;
bne      L9B21                         ; 0x9b26 $9B16 D0 09                    ;
L9B18                                                                          ;
asl                                    ; 0x9b28 $9B18 0A                       ;
bne      L9B23                         ; 0x9b29 $9B19 D0 08                    ;
lda      L9A23,y                       ; 0x9b2b $9B1B B9 23 9A                 ;
asl                                    ; 0x9b2e $9B1E 0A                       ;
eor      #$FF                          ; 0x9b2f $9B1F 49 FF                    ; flip all bits
L9B21                                                                          ;
sta      $71,x                         ; 0x9b31 $9B21 95 71                    ; Enemy X Velocity
L9B23                                                                          ;
rts                                    ; 0x9b33 $9B23 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B24                                                                          ;
lda      $043E,x                       ; 0x9b34 $9B24 BD 3E 04                 ;
beq      L9B39                         ; 0x9b37 $9B27 F0 10                    ;
dec      $043E,x                       ; 0x9b39 $9B29 DE 3E 04                 ;
bpl      L9B34                         ; 0x9b3c $9B2C 10 06                    ;
inc      $043E,x                       ; 0x9b3e $9B2E FE 3E 04                 ;
inc      $043E,x                       ; 0x9b41 $9B31 FE 3E 04                 ;
L9B34                                                                          ;
sta      $71,x                         ; 0x9b44 $9B34 95 71                    ; Enemy X Velocity
jsr      LEA32                         ; 0x9b46 $9B36 20 32 EA                 ;
L9B39                                                                          ;
lda      $A8,x                         ; 0x9b49 $9B39 B5 A8                    ; Enemy State ?
and      #$03                          ; 0x9b4b $9B3B 29 03                    ; keep bits .... ..xx
bne      L9B23                         ; 0x9b4d $9B3D D0 E4                    ;
jmp      bank7_Simple_Horizontal_Movement; 0x9b4f $9B3F 4C B8 DE               ; Simple Horizontal Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B42                                                                          ;
jsr      LEA32                         ; 0x9b52 $9B42 20 32 EA                 ;
lda      $057E,x                       ; 0x9b55 $9B45 BD 7E 05                 ; Enemy Y Velocity
bmi      L9B53                         ; 0x9b58 $9B48 30 09                    ;
lda      $A8,x                         ; 0x9b5a $9B4A B5 A8                    ; Enemy State ?
and      #$04                          ; 0x9b5c $9B4C 29 04                    ; keep bits .... .x..
beq      L9B53                         ; 0x9b5e $9B4E F0 03                    ;
jmp      bank7_Floor_Y_Position        ; 0x9b60 $9B50 4C C1 DA                 ; Floor Enemy Y Position
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B53                                                                          ;
jmp      bank7_Gravity                 ; 0x9b63 $9B53 4C BE DE                 ; Gravity
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Lizalfos_Orange                                          ;
jsr      bank7_Display                 ; 0x9b66 $9B56 20 11 EF                 ; Display
lda      $81,x                         ; 0x9b69 $9B59 B5 81                    ; Current Animation Frame for Enemy
beq      L9B7E                         ; 0x9b6b $9B5B F0 21                    ;
cmp      #$02                          ; 0x9b6d $9B5D C9 02                    ;
beq      L9B65                         ; 0x9b6f $9B5F F0 04                    ;
cmp      #$05                          ; 0x9b71 $9B61 C9 05                    ;
bne      L9B68                         ; 0x9b73 $9B63 D0 03                    ;
L9B65                                                                          ;
jsr      LE563                         ; 0x9b75 $9B65 20 63 E5                 ;
L9B68                                                                          ;
lda      $0504,x                       ; 0x9b78 $9B68 BD 04 05                 ; Timer for Enemy AI
bne      L9B7E                         ; 0x9b7b $9B6B D0 11                    ;
L9B6E     = * + $0001                                                          ;
inc      $81,x                         ; 0x9b7d $9B6D F6 81                    ; Current Animation Frame for Enemy
lda      $81,x                         ; 0x9b7f $9B6F B5 81                    ;; Current Animation Frame for Enemys
cmp      #$04                          ; 0x9b81 $9B71 C9 04                    ;
L9B73                                                                          ;
beq      L9B81                         ; 0x9b83 $9B73 F0 0C                    ;
cmp      #$07                          ; 0x9b85 $9B75 C9 07                    ;
bcs      L9B81                         ; 0x9b87 $9B77 B0 08                    ;
lda      #$0C                          ; 0x9b89 $9B79 A9 0C                    ; A = 0C (delay for attack Front Swing Frame 1)
sta      $0504,x                       ; 0x9b8b $9B7B 9D 04 05                 ; Timer for Enemy AI
L9B7E                                                                          ;
jmp      L9B85                         ; 0x9b8e $9B7E 4C 85 9B                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B81                                                                          ;
lda      #$00                          ; 0x9b91 $9B81 A9 00                    ; A = 00
sta      $81,x                         ; 0x9b93 $9B83 95 81                    ; Current Animation Frame for Enemy
L9B85                                                                          ;
L9B86     = * + $0001                                                          ;
jmp      L9B96                         ; 0x9b95 $9B85 4C 96 9B                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Various_Lizalfos_variables                                               ;
;3F = Delay between attacks - Red Lizalfos                                     ;
;1F = Delay between attacks - Orange Lizalfos                                  ;
;3F = Delay between attacks - Blue Lizalfos                                    ;
;08 = X Velocity for Approach - Facing Right - All Lizalfos                    ;
;F8 = X Velocity for Approach - Facing Left - All Lizalfos                     ;
;18 = Distance kept from Link - Red Lizalfos                                   ;
;18 = Distance kept from Link - Orange Lizalfos                                ;
;40 = Distance kept from Link - Blue Lizalfos                                  ;
.byt    $3F,$1F                        ; 0x9b98 $9B88 3F 1F                    ;
L9B8A                                                                          ;
.byt    $3F                            ; 0x9b9a $9B8A 3F                       ;
L9B8B                                                                          ;
.byt    $08,$F8,$18,$18,$40            ; 0x9b9b $9B8B 08 F8 18 18 40           ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines1_Lizalfos_Red_Blue                                        ;
jsr      bank7_Display                 ; 0x9ba0 $9B90 20 11 EF                 ; Display
jsr      bank2_code17                  ; 0x9ba3 $9B93 20 BE 9C                 ;
L9B96                                                                          ;
ldy      $A1,x                         ; 0x9ba6 $9B96 B4 A1                    ; Enemy Code
lda      L9B73,y                       ; 0x9ba8 $9B98 B9 73 9B                 ; Distance kept from Link
sta      $05E4                         ; 0x9bab $9B9B 8D E4 05                 ;
asl                                    ; 0x9bae $9B9E 0A                       ;
sta      $05E5                         ; 0x9baf $9B9F 8D E5 05                 ;
lda      $F5                           ; 0x9bb2 $9BA2 A5 F5                    ; Controller 1 buttons pressed
and      #$40                          ; 0x9bb4 $9BA4 29 40                    ; keep bits .x.. .... (B button)
beq      L9BB4                         ; 0x9bb6 $9BA6 F0 0C                    ;
lda      $051B,x                       ; 0x9bb8 $9BA8 BD 1B 05                 ; Randomizer
and      #$03                          ; 0x9bbb $9BAB 29 03                    ; keep bits .... ..xx
beq      L9BB4                         ; 0x9bbd $9BAD F0 05                    ;
;1 chance out of 4 that the enemy will NOT move its shield                     ;
;according to Link's attack height                                             ;
;Something like that...                                                        ;
lda      $17                           ; 0x9bbf $9BAF A5 17                    ; Link's Shield Position (0 = Link ducked)
sta      $0444,x                       ; 0x9bc1 $9BB1 9D 44 04                 ; Enemy Vulnerability
L9BB4                                                                          ;
jsr      LE617                         ; 0x9bc4 $9BB4 20 17 E6                 ;
jsr      LEA32                         ; 0x9bc7 $9BB7 20 32 EA                 ;
ldy      #$01                          ; 0x9bca $9BBA A0 01                    ; Y = 01
inx                                    ; 0x9bcc $9BBC E8                       ;
jsr      bank7_code51                  ; 0x9bcd $9BBD 20 7D F2                 ;
ldx      $10                           ; 0x9bd0 $9BC0 A6 10                    ;; used as monster x register ;draw boss hp bar
lda      $1A,x                         ; 0x9bd2 $9BC2 B5 1A                    ;
cmp      #$02                          ; 0x9bd4 $9BC4 C9 02                    ;
bcc      L9BCB                         ; 0x9bd6 $9BC6 90 03                    ;
jmp      LDD3D                         ; 0x9bd8 $9BC8 4C 3D DD                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BCB                                                                          ;
lda      $C9                           ; 0x9bdb $9BCB A5 C9                    ;
and      #$FC                          ; 0x9bdd $9BCD 29 FC                    ; keep bits xxxx xx..
beq      L9BDD                         ; 0x9bdf $9BCF F0 0C                    ;
lda      $A8,x                         ; 0x9be1 $9BD1 B5 A8                    ;; Enemy State
and      #$0F                          ; 0x9be3 $9BD3 29 0F                    ; keep bits .... xxxx
sta      $A8,x                         ; 0x9be5 $9BD5 95 A8                    ;; Enemy State
jsr      LDE6C                         ; 0x9be7 $9BD7 20 6C DE                 ;
jmp      L9BE6                         ; 0x9bea $9BDA 4C E6 9B                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BDD                                                                          ;
jsr      LE48B                         ; 0x9bed $9BDD 20 8B E4                 ;
jsr      bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least; 0x9bf0 $9BE0 20 77 E6; Sword Hit Detection
jsr      LE4D9                         ; 0x9bf3 $9BE3 20 D9 E4                 ;
L9BE6                                                                          ;
jsr      bank7_Link_Collision_Detection; 0x9bf6 $9BE6 20 C1 D6                 ; Link Collision Detection
jsr      bank7_Gravity                 ; 0x9bf9 $9BE9 20 BE DE                 ; Gravity
lda      $A8,x                         ; 0x9bfc $9BEC B5 A8                    ;; Enemy State
and      #$04                          ; 0x9bfe $9BEE 29 04                    ; keep bits .... .x..
beq      L9BF5                         ; 0x9c00 $9BF0 F0 03                    ;
jsr      bank7_Floor_Y_Position        ; 0x9c02 $9BF2 20 C1 DA                 ; Floor Enemy Y Position
L9BF5                                                                          ;
jsr      bank2_code18                  ; 0x9c05 $9BF5 20 13 9D                 ;
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x9c08 $9BF8 20 91 DC; Determine Enemy Facing Direction
lda      $0F                           ; 0x9c0b $9BFB A5 0F                    ;
clc                                    ; 0x9c0d $9BFD 18                       ;
adc      $05E4                         ; 0x9c0e $9BFE 6D E4 05                 ;
cmp      $05E5                         ; 0x9c11 $9C01 CD E5 05                 ;
bcc      L9C1C                         ; 0x9c14 $9C04 90 16                    ;
lda      $0F                           ; 0x9c16 $9C06 A5 0F                    ;
clc                                    ; 0x9c18 $9C08 18                       ;
adc      #$50                          ; 0x9c19 $9C09 69 50                    ;
cmp      #$A0                          ; 0x9c1b $9C0B C9 A0                    ;
bcs      L9C15                         ; 0x9c1d $9C0D B0 06                    ;
jsr      L9C1C                         ; 0x9c1f $9C0F 20 1C 9C                 ;
jsr      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x9c22 $9C12 20 91 DC; Determine Enemy Facing Direction
L9C15                                                                          ;
lda      L9B8B,y                       ; 0x9c25 $9C15 B9 8B 9B                 ;
asl                                    ; 0x9c28 $9C18 0A                       ;
sta      $71,x                         ; 0x9c29 $9C19 95 71                    ; Enemy X Velocity
rts                                    ; 0x9c2b $9C1B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C1C                                                                          ;
lda      $81,x                         ; 0x9c2c $9C1C B5 81                    ; Current Animation Frame for Enemy
bne      L9C66                         ; 0x9c2e $9C1E D0 46                    ;
lda      $0479                         ; 0x9c30 $9C20 AD 79 04                 ; Link is in mid-air ? (1 = mid-air)
beq      L9C34                         ; 0x9c33 $9C23 F0 0F                    ;
ldy      #$01                          ; 0x9c35 $9C25 A0 01                    ; Y = 01
lda      $29                           ; 0x9c37 $9C27 A5 29                    ; Link's Y Position
adc      #$0A                          ; 0x9c39 $9C29 69 0A                    ;
cmp      $2A,x                         ; 0x9c3b $9C2B D5 2A                    ; Enemy Y Position
bcc      L9C30                         ; 0x9c3d $9C2D 90 01                    ;
;If Link's Y Position + 0A is lower than Enemy's Y Position,                   ;
;the Enemy lowers its shield                                                   ;
;Something like that...                                                        ;
dey                                    ; 0x9c3f $9C2F 88                       ; Y-1 means lower shield
L9C30                                                                          ;
tya                                    ; 0x9c40 $9C30 98                       ;
sta      $0444,x                       ; 0x9c41 $9C31 9D 44 04                 ; Enemy Vulnerability
L9C34                                                                          ;
inc      $AF,x                         ; 0x9c44 $9C34 F6 AF                    ;; Various enemy state variables
ldy      $A1,x                         ; 0x9c46 $9C36 B4 A1                    ; Enemy Code
lda      L9B6E,y                       ; 0x9c48 $9C38 B9 6E 9B                 ;
and      $AF,x                         ; 0x9c4b $9C3B 35 AF                    ;; Various enemy state variables
bne      L9C66                         ; 0x9c4d $9C3D D0 27                    ;
lda      $051B,x                       ; 0x9c4f $9C3F BD 1B 05                 ; Randomizer
and      #$03                          ; 0x9c52 $9C42 29 03                    ; keep bits .... ..xx
bne      L9C4A                         ; 0x9c54 $9C44 D0 04                    ;
lda      #$C0                          ; 0x9c56 $9C46 A9 C0                    ; A = C0
sta      $AF,x                         ; 0x9c58 $9C48 95 AF                    ;; Various enemy state variables
L9C4A                                                                          ;
ldy      #$01                          ; 0x9c5a $9C4A A0 01                    ; Y = 01
lda      $A1,x                         ; 0x9c5c $9C4C B5 A1                    ; Enemy Code
cmp      #$1B                          ; 0x9c5e $9C4E C9 1B                    ; 1B = Orange Lizalfos
bne      L9C5F                         ; 0x9c60 $9C50 D0 0D                    ;
lda      $051B,x                       ; 0x9c62 $9C52 BD 1B 05                 ; Randomizer
lsr                                    ; 0x9c65 $9C55 4A                       ;
bcs      L9C5C                         ; 0x9c66 $9C56 B0 04                    ;
lda      $17                           ; 0x9c68 $9C58 A5 17                    ; Link's Shield Position (0 = Link ducked)
bne      L9C5F                         ; 0x9c6a $9C5A D0 03                    ;
L9C5C                                                                          ;
iny                                    ; 0x9c6c $9C5C C8                       ;
iny                                    ; 0x9c6d $9C5D C8                       ;
iny                                    ; 0x9c6e $9C5E C8                       ;
L9C5F                                                                          ;
sty      $81,x                         ; 0x9c6f $9C5F 94 81                    ; Current Animation Frame for Enemy
lda      #$18                          ; 0x9c71 $9C61 A9 18                    ; A = 18
sta      $0504,x                       ; 0x9c73 $9C63 9D 04 05                 ; Timer for Enemy AI
L9C66                                                                          ;
lda      #$00                          ; 0x9c76 $9C66 A9 00                    ; A = 00
sta      $71,x                         ; 0x9c78 $9C68 95 71                    ; Enemy X Velocity
lda      $A7                           ; 0x9c7a $9C6A A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
and      #$03                          ; 0x9c7c $9C6C 29 03                    ; keep bits .... ..xx
bne      L9C89                         ; 0x9c7e $9C6E D0 19                    ;
lda      $0742                         ; 0x9c80 $9C70 AD 42 07                 ; Left/Right buttons held
beq      L9C79                         ; 0x9c83 $9C73 F0 04                    ;
lda      $70                           ; 0x9c85 $9C75 A5 70                    ; Link's X Velocity
bne      L9C84                         ; 0x9c87 $9C77 D0 0B                    ;
L9C79                                                                          ;
ldy      #$04                          ; 0x9c89 $9C79 A0 04                    ; Y = 04
lda      $12                           ; 0x9c8b $9C7B A5 12                    ;; Frame Counter (ascending)
and      #$40                          ; 0x9c8d $9C7D 29 40                    ; keep bits .x.. ....
bne      L9C83                         ; 0x9c8f $9C7F D0 02                    ;
ldy      #$FC                          ; 0x9c91 $9C81 A0 FC                    ; Y = FC
L9C83                                                                          ;
tya                                    ; 0x9c93 $9C83 98                       ;
L9C84                                                                          ;
sta      $71,x                         ; 0x9c94 $9C84 95 71                    ; Enemy X Velocity
asl                                    ; 0x9c96 $9C86 0A                       ;
ror      $71,x                         ; 0x9c97 $9C87 76 71                    ;; Enemy X Velocity
L9C89                                                                          ;
rts                                    ; 0x9c99 $9C89 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
lda      $AF,x                         ; 0x9c9a $9C8A B5 AF                    ;; Various enemy state variables
lsr                                    ; 0x9c9c $9C8C 4A                       ;
bcs      L9CA3                         ; 0x9c9d $9C8D B0 14                    ;
lda      $0504,x                       ; 0x9c9f $9C8F BD 04 05                 ; Timer for Enemy AI
bne      L9C9B                         ; 0x9ca2 $9C92 D0 07                    ;
inc      $AF,x                         ; 0x9ca4 $9C94 F6 AF                    ;; Various enemy state variables
lda      #$40                          ; 0x9ca6 $9C96 A9 40                    ; A = 40
sta      $0504,x                       ; 0x9ca8 $9C98 9D 04 05                 ; Timer for Enemy AI
L9C9B                                                                          ;
ldy      $60,x                         ; 0x9cab $9C9B B4 60                    ; Enemy facing direction
lda      L9B8A,y                       ; 0x9cad $9C9D B9 8A 9B                 ;
sta      $71,x                         ; 0x9cb0 $9CA0 95 71                    ; Enemy X Velocity
rts                                    ; 0x9cb2 $9CA2 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9CA3                                                                          ;
lda      #$00                          ; 0x9cb3 $9CA3 A9 00                    ; A = 00
sta      $71,x                         ; 0x9cb5 $9CA5 95 71                    ; Enemy X Velocity
lda      $0504,x                       ; 0x9cb7 $9CA7 BD 04 05                 ; Timer for Enemy AI
bne      L9CB9                         ; 0x9cba $9CAA D0 0D                    ;
inc      $AF,x                         ; 0x9cbc $9CAC F6 AF                    ;; Various enemy state variables
lda      #$80                          ; 0x9cbe $9CAE A9 80                    ; A = 80
sta      $0504,x                       ; 0x9cc0 $9CB0 9D 04 05                 ; Timer for Enemy AI
lda      $60,x                         ; 0x9cc3 $9CB3 B5 60                    ; Enemy facing direction
eor      #$03                          ; 0x9cc5 $9CB5 49 03                    ; flip bits .... ..xx
sta      $60,x                         ; 0x9cc7 $9CB7 95 60                    ;; Enemy facing direction
L9CB9                                                                          ;
rts                                    ; 0x9cc9 $9CB9 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Blue_Lizalfos_Mace                                             ;
;10 = Mace Initial X Position, facing right (low byte)                         ;
;F8 = Mace Initial X Position, facing left (low byte)                          ;
;00 = Mace Initial X Position, facing right (high byte)                        ;
;FF = Mace Initial X Position, facing left (high byte)                         ;
.byt    $10                            ; 0x9cca $9CBA 10                       ;
L9CBB                                                                          ;
.byt    $F8,$00,$FF                    ; 0x9ccb $9CBB F8 00 FF                 ;
; ---------------------------------------------------------------------------- ;
bank2_code17                                                                   ;
lda      $81,x                         ; 0x9cce $9CBE B5 81                    ; Current Animation Frame for Enemy
beq      L9D07                         ; 0x9cd0 $9CC0 F0 45                    ;
lda      $0504,x                       ; 0x9cd2 $9CC2 BD 04 05                 ; Timer for Enemy AI
bne      L9D07                         ; 0x9cd5 $9CC5 D0 40                    ;
inc      $81,x                         ; 0x9cd7 $9CC7 F6 81                    ; Current Animation Frame for Enemy
lda      $81,x                         ; 0x9cd9 $9CC9 B5 81                    ;; Current Animation Frame for Enemys
cmp      #$04                          ; 0x9cdb $9CCB C9 04                    ;
beq      L9D08                         ; 0x9cdd $9CCD F0 39                    ;
cmp      #$02                          ; 0x9cdf $9CCF C9 02                    ;
bne      L9D02                         ; 0x9ce1 $9CD1 D0 2F                    ;
jsr      bank7_Display                 ; 0x9ce3 $9CD3 20 11 EF                 ; Display
jsr      bank7_code39                  ; 0x9ce6 $9CD6 20 58 E5                 ; Related to shield protection
lda      $A1,x                         ; 0x9ce9 $9CD9 B5 A1                    ; Enemy Code
cmp      #$1C                          ; 0x9ceb $9CDB C9 1C                    ; 1C = Blue Lizalfos
bne      L9D02                         ; 0x9ced $9CDD D0 23                    ;
jsr      bank7_Spawn_New_Projectile    ; 0x9cef $9CDF 20 CE DB                 ; Spawn New Projectile
bcs      L9D02                         ; 0x9cf2 $9CE2 B0 1E                    ;
ldx      $66,y                         ; 0x9cf4 $9CE4 B6 66                    ; Projectile facing direction
lda      $54,y                         ; 0x9cf6 $9CE6 B9 54 00                 ; Projectile X Position (low byte)
adc      L9CB9,x                       ; 0x9cf9 $9CE9 7D B9 9C                 ;
sta      $54,y                         ; 0x9cfc $9CEC 99 54 00                 ;
lda      $42,y                         ; 0x9cff $9CEF B9 42 00                 ; Projectile X Position (high byte)
adc      L9CBB,x                       ; 0x9d02 $9CF2 7D BB 9C                 ;
sta      $42,y                         ; 0x9d05 $9CF5 99 42 00                 ;
lda      #$07                          ; 0x9d08 $9CF8 A9 07                    ; A = 07
sta      $87,y                         ; 0x9d0a $9CFA 99 87 00                 ; Projectile Type
ldx      $10                           ; 0x9d0d $9CFD A6 10                    ;; used as monster x register ;draw boss hp bar
jmp      L9D08                         ; 0x9d0f $9CFF 4C 08 9D                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9D02                                                                          ;
lda      #$05                          ; 0x9d12 $9D02 A9 05                    ; A = 05
sta      $0504,x                       ; 0x9d14 $9D04 9D 04 05                 ; Timer for Enemy AI
L9D07                                                                          ;
rts                                    ; 0x9d17 $9D07 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9D08                                                                          ;
lda      #$00                          ; 0x9d18 $9D08 A9 00                    ; A = 00
sta      $81,x                         ; 0x9d1a $9D0A 95 81                    ; Current Animation Frame for Enemy
rts                                    ; 0x9d1c $9D0C 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_table9                                                                   ;
.byt    $00,$00,$00,$00,$00,$00        ; 0x9d1d $9D0D 00 00 00 00 00 00        ;
; ---------------------------------------------------------------------------- ;
bank2_code18                                                                   ;
lda      $043E,x                       ; 0x9d23 $9D13 BD 3E 04                 ;
beq      L9D27                         ; 0x9d26 $9D16 F0 0F                    ;
dec      $043E,x                       ; 0x9d28 $9D18 DE 3E 04                 ;
bpl      L9D23                         ; 0x9d2b $9D1B 10 06                    ;
inc      $043E,x                       ; 0x9d2d $9D1D FE 3E 04                 ;
inc      $043E,x                       ; 0x9d30 $9D20 FE 3E 04                 ;
L9D23                                                                          ;
sta      $71,x                         ; 0x9d33 $9D23 95 71                    ; Enemy X Velocity
pla                                    ; 0x9d35 $9D25 68                       ;
pla                                    ; 0x9d36 $9D26 68                       ;
L9D27                                                                          ;
L9D29     = * + $0002                                                          ;
jmp      L9B39                         ; 0x9d37 $9D27 4C 39 9B                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Tile_Offsets_for_Rock_Tossing_Lizalfos                                   ;
;08 = X Offset for arm back swing tile - Facing Left                           ;
;FC = X Offset for arm front swing tile - Facing Left                          ;
;FC = X Offset for arm back swing tile - Facing Right                          ;
;08 = X Offset for arm front swing tile - Facing Right                         ;
;F0 = Y Offset for arm back swing tile                                         ;
;F3 = Y Offset for arm front swing tile                                        ;
;FA = X Offset for rock before throw - Facing Right                            ;
;06 = X Offset for rock before throw - Facing Left                             ;
.byt    $08,$FC,$FC                    ; 0x9d3a $9D2A 08 FC FC                 ;
L9D2D                                                                          ;
.byt    $08,$F0                        ; 0x9d3d $9D2D 08 F0                    ;
L9D2F                                                                          ;
.byt    $F3,$FA,$06                    ; 0x9d3f $9D2F F3 FA 06                 ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines2_Lizalfos__Rock_Tossing                                   ;
lda      $03                           ; 0x9d42 $9D32 A5 03                    ;
ora      #$20                          ; 0x9d44 $9D34 09 20                    ; set  bits ..x. ....
sta      $03                           ; 0x9d46 $9D36 85 03                    ;
ldx      #$2C                          ; 0x9d48 $9D38 A2 2C                    ; X = 2C
jsr      LF0D7                         ; 0x9d4a $9D3A 20 D7 F0                 ;
lda      $C9                           ; 0x9d4d $9D3D A5 C9                    ;
bne      L9DA9                         ; 0x9d4f $9D3F D0 68                    ;
lda      $81,x                         ; 0x9d51 $9D41 B5 81                    ; Current Animation Frame for Enemy
beq      L9DA9                         ; 0x9d53 $9D43 F0 64                    ;
tax                                    ; 0x9d55 $9D45 AA                       ;
lda      #$23                          ; 0x9d56 $9D46 A9 23                    ; A = 23
sta      $0201,y                       ; 0x9d58 $9D48 99 01 02                 ;
lda      L0000                         ; 0x9d5b $9D4B A5 00                    ;
adc      L9D2D,x                       ; 0x9d5d $9D4D 7D 2D 9D                 ;
sta      $0200,y                       ; 0x9d60 $9D50 99 00 02                 ;
L9D54     = * + $0001                                                          ;
lda      $01FA,y                       ; 0x9d63 $9D53 B9 FA 01                 ;
cpx      #$02                          ; 0x9d66 $9D56 E0 02                    ;
bne      L9D5C                         ; 0x9d68 $9D58 D0 02                    ;
eor      #$C0                          ; 0x9d6a $9D5A 49 C0                    ; flip bits xx.. ....
L9D5C                                                                          ;
sta      $0202,y                       ; 0x9d6c $9D5C 99 02 02                 ;
sta      $0206,y                       ; 0x9d6f $9D5F 99 06 02                 ;
lda      $02                           ; 0x9d72 $9D62 A5 02                    ;
lsr                                    ; 0x9d74 $9D64 4A                       ;
bne      L9D69                         ; 0x9d75 $9D65 D0 02                    ;
inx                                    ; 0x9d77 $9D67 E8                       ;
inx                                    ; 0x9d78 $9D68 E8                       ;
L9D69                                                                          ;
stx      L000E                         ; 0x9d79 $9D69 86 0E                    ;
sty      $0F                           ; 0x9d7b $9D6B 84 0F                    ;
lda      L9D29,x                       ; 0x9d7d $9D6D BD 29 9D                 ;
cpx      #$01                          ; 0x9d80 $9D70 E0 01                    ;
beq      L9D78                         ; 0x9d82 $9D72 F0 04                    ;
cpx      #$03                          ; 0x9d84 $9D74 E0 03                    ;
bne      L9D81                         ; 0x9d86 $9D76 D0 09                    ;
L9D78                                                                          ;
ldx      $10                           ; 0x9d88 $9D78 A6 10                    ;; used as monster x register ;draw boss hp bar
ldy      $0444,x                       ; 0x9d8a $9D7A BC 44 04                 ; Enemy Vulnerability
cpy      #$07                          ; 0x9d8d $9D7D C0 07                    ;
bcs      L9D82                         ; 0x9d8f $9D7F B0 01                    ;
L9D81                                                                          ;
asl                                    ; 0x9d91 $9D81 0A                       ;
L9D82                                                                          ;
clc                                    ; 0x9d92 $9D82 18                       ;
adc      $01                           ; 0x9d93 $9D83 65 01                    ;
ldy      $0F                           ; 0x9d95 $9D85 A4 0F                    ;
sta      $0203,y                       ; 0x9d97 $9D87 99 03 02                 ;
lda      L000E                         ; 0x9d9a $9D8A A5 0E                    ;
and      #$01                          ; 0x9d9c $9D8C 29 01                    ; keep bits .... ...x
beq      L9DA9                         ; 0x9d9e $9D8E F0 19                    ;
L9D91     = * + $0001                                                          ;
ldx      $02                           ; 0x9da0 $9D90 A6 02                    ;
lda      $0203,y                       ; 0x9da2 $9D92 B9 03 02                 ;
clc                                    ; 0x9da5 $9D95 18                       ;
adc      L9D2F,x                       ; 0x9da6 $9D96 7D 2F 9D                 ;
sta      $0207,y                       ; 0x9da9 $9D99 99 07 02                 ;
lda      #$AE                          ; 0x9dac $9D9C A9 AE                    ; A = AE
sta      $0205,y                       ; 0x9dae $9D9E 99 05 02                 ;
lda      $0200,y                       ; 0x9db1 $9DA1 B9 00 02                 ;
sbc      #$03                          ; 0x9db4 $9DA4 E9 03                    ;
sta      $0204,y                       ; 0x9db6 $9DA6 99 04 02                 ;
L9DA9                                                                          ;
ldx      $10                           ; 0x9db9 $9DA9 A6 10                    ;; used as monster x register ;draw boss hp bar
rts                                    ; 0x9dbb $9DAB 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines2_Tektite                                                  ;
ldx      #$00                          ; 0x9dbc $9DAC A2 00                    ; X = 00
lda      $6E31                         ; 0x9dbe $9DAE AD 31 6E                 ;
cmp      #$89                          ; 0x9dc1 $9DB1 C9 89                    ;
bne      L9DB7                         ; 0x9dc3 $9DB3 D0 02                    ;
ldx      #$04                          ; 0x9dc5 $9DB5 A2 04                    ; X = 04
L9DB7                                                                          ;
jsr      LF1F4                         ; 0x9dc7 $9DB7 20 F4 F1                 ;
jsr      LF0D7                         ; 0x9dca $9DBA 20 D7 F0                 ;
lda      $AF,x                         ; 0x9dcd $9DBD B5 AF                    ;; Various enemy state variables
bpl      L9DC3                         ; 0x9dcf $9DBF 10 02                    ;
eor      #$FF                          ; 0x9dd1 $9DC1 49 FF                    ; flip all bits
L9DC3                                                                          ;
sta      L0000                         ; 0x9dd3 $9DC3 85 00                    ;
lda      $01F0,y                       ; 0x9dd5 $9DC5 B9 F0 01                 ;
cmp      #$F0                          ; 0x9dd8 $9DC8 C9 F0                    ;
bcs      L9DD1                         ; 0x9dda $9DCA B0 05                    ;
adc      L0000                         ; 0x9ddc $9DCC 65 00                    ;
sta      $01F0,y                       ; 0x9dde $9DCE 99 F0 01                 ;
L9DD1                                                                          ;
lda      $01F4,y                       ; 0x9de1 $9DD1 B9 F4 01                 ;
cmp      #$F0                          ; 0x9de4 $9DD4 C9 F0                    ;
bcs      L9DDD                         ; 0x9de6 $9DD6 B0 05                    ;
adc      L0000                         ; 0x9de8 $9DD8 65 00                    ;
sta      $01F4,y                       ; 0x9dea $9DDA 99 F4 01                 ;
L9DDD                                                                          ;
rts                                    ; 0x9ded $9DDD 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines2_Girobokku                                                ;
lda      $0504,x                       ; 0x9dee $9DDE BD 04 05                 ; Timer for Enemy AI
ldx      #$0A                          ; 0x9df1 $9DE1 A2 0A                    ; X = 0A (Code when eye is closed)
asl                                    ; 0x9df3 $9DE3 0A                       ;
beq      L9DE8                         ; 0x9df4 $9DE4 F0 02                    ;
ldx      #$08                          ; 0x9df6 $9DE6 A2 08                    ; X = 08 (Code when eye is open)
L9DE8                                                                          ;
jmp      LF0D7                         ; 0x9df8 $9DE8 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines2_Leever                                                   ;
ldx      #$02                          ; 0x9dfb $9DEB A2 02                    ; X = 02 (related to H mirroring)
stx      $02                           ; 0x9dfd $9DED 86 02                    ;
lda      #$23                          ; 0x9dff $9DEF A9 23                    ; A = 23 (related to V mirroring and palette)
sta      $03                           ; 0x9e01 $9DF1 85 03                    ;
lda      #$0C                          ; 0x9e03 $9DF3 A9 0C                    ; A = 0C
jsr      LF0CC                         ; 0x9e05 $9DF5 20 CC F0                 ;
lda      $01FE,y                       ; 0x9e08 $9DF8 B9 FE 01                 ;
ora      #$40                          ; 0x9e0b $9DFB 09 40                    ; set  bits .x.. ....
sta      $01FE,y                       ; 0x9e0d $9DFD 99 FE 01                 ;
rts                                    ; 0x9e10 $9E00 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines2_Boon                                                     ;
ldx      #$10                          ; 0x9e11 $9E01 A2 10                    ; X = 10
lda      $12                           ; 0x9e13 $9E03 A5 12                    ;; Frame Counter (ascending)
lsr                                    ; 0x9e15 $9E05 4A                       ;
bcc      L9E0A                         ; 0x9e16 $9E06 90 02                    ;
inx                                    ; 0x9e18 $9E08 E8                       ;
inx                                    ; 0x9e19 $9E09 E8                       ;
L9E0A                                                                          ;
L9E0C     = * + $0002                                                          ;
jmp      LF0D7                         ; 0x9e1a $9E0A 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Tile_Offsets_for_Zora                                                    ;
;10 = X Offset for Zora head - Facing Right                                    ;
;F8 = X Offset for Zora head - Facing Left                                     ;
;FF = X Offset for Zora head when attacking - Facing Right                     ;
;01 = X Offset for Zora head when attacking - Facing Left                      ;
;02 = ?                                                                        ;
;08 = ?                                                                        ;
.byt    $10                            ; 0x9e1d $9E0D 10                       ;
L9E0E                                                                          ;
.byt    $F8,$FF                        ; 0x9e1e $9E0E F8 FF                    ;
L9E10                                                                          ;
.byt    $01,$02,$08                    ; 0x9e20 $9E10 01 02 08                 ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines2_Zora                                                     ;
lda      $03                           ; 0x9e23 $9E13 A5 03                    ;
ora      $0753                         ; 0x9e25 $9E15 0D 53 07                 ;
sta      $03                           ; 0x9e28 $9E18 85 03                    ;
lda      $0504,x                       ; 0x9e2a $9E1A BD 04 05                 ; Timer for Enemy AI
bne      L9E7C                         ; 0x9e2d $9E1D D0 5D                    ;
lda      L0000                         ; 0x9e2f $9E1F A5 00                    ;
clc                                    ; 0x9e31 $9E21 18                       ;
adc      #$10                          ; 0x9e32 $9E22 69 10                    ;
sta      L0000                         ; 0x9e34 $9E24 85 00                    ;
lda      $71,x                         ; 0x9e36 $9E26 B5 71                    ; Enemy X Velocity
ldx      #$14                          ; 0x9e38 $9E28 A2 14                    ; X = 14
cmp      #$00                          ; 0x9e3a $9E2A C9 00                    ;
beq      L9E3F                         ; 0x9e3c $9E2C F0 11                    ;
bpl      L9E32                         ; 0x9e3e $9E2E 10 02                    ;
eor      #$FF                          ; 0x9e40 $9E30 49 FF                    ; flip all bits
L9E32                                                                          ;
cmp      #$09                          ; 0x9e42 $9E32 C9 09                    ;
lda      #$04                          ; 0x9e44 $9E34 A9 04                    ; A = 04
bcs      L9E39                         ; 0x9e46 $9E36 B0 01                    ;
asl                                    ; 0x9e48 $9E38 0A                       ;
L9E39                                                                          ;
and      $12                           ; 0x9e49 $9E39 25 12                    ;; Frame Counter (ascending)
bne      L9E3F                         ; 0x9e4b $9E3B D0 02                    ;
ldx      #$16                          ; 0x9e4d $9E3D A2 16                    ; X = 16
L9E3F                                                                          ;
jsr      LF0D7                         ; 0x9e4f $9E3F 20 D7 F0                 ;
ldx      $02                           ; 0x9e52 $9E42 A6 02                    ;
lda      $C9                           ; 0x9e54 $9E44 A5 C9                    ;
and      L9E10,x                       ; 0x9e56 $9E46 3D 10 9E                 ;
bne      L9E79                         ; 0x9e59 $9E49 D0 2E                    ;
lda      L0000                         ; 0x9e5b $9E4B A5 00                    ;
sec                                    ; 0x9e5d $9E4D 38                       ;
sbc      #$10                          ; 0x9e5e $9E4E E9 10                    ;
sta      $0200,y                       ; 0x9e60 $9E50 99 00 02                 ;
lda      $01FE,y                       ; 0x9e63 $9E53 B9 FE 01                 ;
sta      $0202,y                       ; 0x9e66 $9E56 99 02 02                 ;
lda      #$DC                          ; 0x9e69 $9E59 A9 DC                    ; A = DC
sta      $0201,y                       ; 0x9e6b $9E5B 99 01 02                 ;
lda      $01                           ; 0x9e6e $9E5E A5 01                    ;
clc                                    ; 0x9e70 $9E60 18                       ;
adc      L9E0C,x                       ; 0x9e71 $9E61 7D 0C 9E                 ;
sta      $0203,y                       ; 0x9e74 $9E64 99 03 02                 ;
ldx      $10                           ; 0x9e77 $9E67 A6 10                    ;; used as monster x register ;draw boss hp bar
lda      $81,x                         ; 0x9e79 $9E69 B5 81                    ;; Current Animation Frame for Enemys
beq      L9E79                         ; 0x9e7b $9E6B F0 0C                    ;
ldx      $02                           ; 0x9e7d $9E6D A6 02                    ;
lda      $0203,y                       ; 0x9e7f $9E6F B9 03 02                 ;
clc                                    ; 0x9e82 $9E72 18                       ;
adc      L9E0E,x                       ; 0x9e83 $9E73 7D 0E 9E                 ;
sta      $0203,y                       ; 0x9e86 $9E76 99 03 02                 ;
L9E79                                                                          ;
ldx      $10                           ; 0x9e89 $9E79 A6 10                    ;; used as monster x register ;draw boss hp bar
rts                                    ; 0x9e8b $9E7B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E7C                                                                          ;
ldx      #$18                          ; 0x9e8c $9E7C A2 18                    ; X = 18 (18 = Zora Enemy Code)
jsr      LF1F4                         ; 0x9e8e $9E7E 20 F4 F1                 ;
jmp      LF0D7                         ; 0x9e91 $9E81 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines2_Aru_Lowder                                               ;
lda      $0504,x                       ; 0x9e94 $9E84 BD 04 05                 ; Timer for Enemy AI
ldx      #$20                          ; 0x9e97 $9E87 A2 20                    ; X = 20
asl                                    ; 0x9e99 $9E89 0A                       ;
beq      L9E8E                         ; 0x9e9a $9E8A F0 02                    ;
ldx      #$22                          ; 0x9e9c $9E8C A2 22                    ; X = 22
L9E8E                                                                          ;
jsr      LF0D7                         ; 0x9e9e $9E8E 20 D7 F0                 ;
lda      $71,x                         ; 0x9ea1 $9E91 B5 71                    ; Enemy X Velocity
ldx      #$1C                          ; 0x9ea3 $9E93 A2 1C                    ; X = 1C
asl                                    ; 0x9ea5 $9E95 0A                       ;
beq      L9EA0                         ; 0x9ea6 $9E96 F0 08                    ;
lda      $12                           ; 0x9ea8 $9E98 A5 12                    ;; Frame Counter (ascending)
and      #$04                          ; 0x9eaa $9E9A 29 04                    ; keep bits .... .x..
bne      L9EA0                         ; 0x9eac $9E9C D0 02                    ;
ldx      #$1E                          ; 0x9eae $9E9E A2 1E                    ; X = 1E
L9EA0                                                                          ;
jsr      LF0D7                         ; 0x9eb0 $9EA0 20 D7 F0                 ;
ldx      $02                           ; 0x9eb3 $9EA3 A6 02                    ;
lda      $C9                           ; 0x9eb5 $9EA5 A5 C9                    ;
and      L9E10,x                       ; 0x9eb7 $9EA7 3D 10 9E                 ;
bne      L9ED2                         ; 0x9eba $9EAA D0 26                    ;
lda      L0000                         ; 0x9ebc $9EAC A5 00                    ;
sec                                    ; 0x9ebe $9EAE 38                       ;
sbc      #$10                          ; 0x9ebf $9EAF E9 10                    ;
sta      $0200,y                       ; 0x9ec1 $9EB1 99 00 02                 ;
lda      $01FE,y                       ; 0x9ec4 $9EB4 B9 FE 01                 ;
sta      $0202,y                       ; 0x9ec7 $9EB7 99 02 02                 ;
lda      $01                           ; 0x9eca $9EBA A5 01                    ;
clc                                    ; 0x9ecc $9EBC 18                       ;
adc      L9E0C,x                       ; 0x9ecd $9EBD 7D 0C 9E                 ;
sta      $0203,y                       ; 0x9ed0 $9EC0 99 03 02                 ;
ldx      $10                           ; 0x9ed3 $9EC3 A6 10                    ;; used as monster x register ;draw boss hp bar
lda      $81,x                         ; 0x9ed5 $9EC5 B5 81                    ;; Current Animation Frame for Enemys
ldx      #$EE                          ; 0x9ed7 $9EC7 A2 EE                    ; X = EE
asl                                    ; 0x9ed9 $9EC9 0A                       ;
beq      L9ECE                         ; 0x9eda $9ECA F0 02                    ;
ldx      #$FA                          ; 0x9edc $9ECC A2 FA                    ; X = FA
L9ECE                                                                          ;
txa                                    ; 0x9ede $9ECE 8A                       ;
sta      $0201,y                       ; 0x9edf $9ECF 99 01 02                 ;
L9ED2                                                                          ;
ldx      $10                           ; 0x9ee2 $9ED2 A6 10                    ;; used as monster x register ;draw boss hp bar
L9ED4                                                                          ;
rts                                    ; 0x9ee4 $9ED4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_Table_for_Lizalfos_Tile_Offsets                                          ;
;08 = X Offset for Back Swing Tile, facing left (Red, Orange, Blue)            ;
;FA = X Offset for Front Swing Frame 1, facing left (Red, Orange)              ;
;FE = X Offset for Front Swing Frame 2, facing left (Red, Orange)              ;
;                                                                              ;
;F8 = X Offset for Back Swing Tile, facing right (Red, Orange, Blue)           ;
;06 = X Offset for Front Swing Frame 1, facing right (Red, Orange)             ;
;02 = X Offset for Front Swing Frame 2, facing right (Red, Orange)             ;
;                                                                              ;
;34 = Tile Mapping for Back Swing, both directions (Red, Blue)                 ;
;34 = Tile Mapping for Front Swing Frame 1, both directions (Red, Blue)        ;
;36 = Tile Mapping for Front Swing Frame 2, both directions (Red)              ;
;                                                                              ;
;38 = Tile Mapping for Back Swing, both directions (Orange)                    ;
;3A = Tile Mapping for Front Swing Frame 1, both directions (Orange)           ;
;3A = Tile Mapping for Front Swing Frame 2, both directions (Orange)           ;
.byt    $08,$FA,$FE,$F8,$06            ; 0x9ee5 $9ED5 08 FA FE F8 06           ;
L9EDA                                                                          ;
.byt    $02,$34,$34,$36,$38,$3A,$3A    ; 0x9eea $9EDA 02 34 34 36 38 3A 3A     ;
; ---------------------------------------------------------------------------- ;
bank2_Enemy_Routines2_Lizalfos_Red_Orange_Blue                                 ;
lda      $A8,x                         ; 0x9ef1 $9EE1 B5 A8                    ; Enemy State ?
sta      $D9                           ; 0x9ef3 $9EE3 85 D9                    ;; Thunder Spell modifier ?
lda      $71,x                         ; 0x9ef5 $9EE5 B5 71                    ; Enemy X Velocity
pha                                    ; 0x9ef7 $9EE7 48                       ;
lda      $0444,x                       ; 0x9ef8 $9EE8 BD 44 04                 ; Enemy Vulnerability
ldx      #$24                          ; 0x9efb $9EEB A2 24                    ; X = 24 (time mapping code, shield up)
asl                                    ; 0x9efd $9EED 0A                       ;
bne      L9EF2                         ; 0x9efe $9EEE D0 02                    ;
ldx      #$2C                          ; 0x9f00 $9EF0 A2 2C                    ; X = 2C (time mapping code, shield down)
L9EF2                                                                          ;
pla                                    ; 0x9f02 $9EF2 68                       ;
beq      L9F05                         ; 0x9f03 $9EF3 F0 10                    ;
lda      $D9                           ; 0x9f05 $9EF5 A5 D9                    ;; Thunder Spell modifier ?
and      #$04                          ; 0x9f07 $9EF7 29 04                    ; keep bits .... .x..
beq      L9F05                         ; 0x9f09 $9EF9 F0 0A                    ;
lda      $12                           ; 0x9f0b $9EFB A5 12                    ;; Frame Counter (ascending)
and      #$08                          ; 0x9f0d $9EFD 29 08                    ; keep bits .... x... (footwork frequency)
bne      L9F05                         ; 0x9f0f $9EFF D0 04                    ;
inx                                    ; 0x9f11 $9F01 E8                       ;
inx                                    ; 0x9f12 $9F02 E8                       ;
inx                                    ; 0x9f13 $9F03 E8                       ;
inx                                    ; 0x9f14 $9F04 E8                       ;
L9F05                                                                          ;
jsr      LF1F4                         ; 0x9f15 $9F05 20 F4 F1                 ;
jsr      LF0D7                         ; 0x9f18 $9F08 20 D7 F0                 ;
lda      $C9                           ; 0x9f1b $9F0B A5 C9                    ;
and      #$FC                          ; 0x9f1d $9F0D 29 FC                    ; keep bits xxxx xx..
bne      L9F84_RTS                     ; 0x9f1f $9F0F D0 73                    ;
lda      $A1,x                         ; 0x9f21 $9F11 B5 A1                    ; Enemy Code
sta      $D9                           ; 0x9f23 $9F13 85 D9                    ;; Thunder Spell modifier ?
lda      $2A,x                         ; 0x9f25 $9F15 B5 2A                    ; Enemy Y Position
sta      L0000                         ; 0x9f27 $9F17 85 00                    ;
lda      $81,x                         ; 0x9f29 $9F19 B5 81                    ; Current Animation Frame for Enemy
beq      L9F84_RTS                     ; 0x9f2b $9F1B F0 67                    ;
tax                                    ; 0x9f2d $9F1D AA                       ;
cpx      #$04                          ; 0x9f2e $9F1E E0 04                    ;
bcc      L9F2B                         ; 0x9f30 $9F20 90 09                    ;
dex                                    ; 0x9f32 $9F22 CA                       ;
dex                                    ; 0x9f33 $9F23 CA                       ;
dex                                    ; 0x9f34 $9F24 CA                       ;
lda      L0000                         ; 0x9f35 $9F25 A5 00                    ;
adc      #$08                          ; 0x9f37 $9F27 69 08                    ;
sta      L0000                         ; 0x9f39 $9F29 85 00                    ;
L9F2B                                                                          ;
stx      $0F                           ; 0x9f3b $9F2B 86 0F                    ;
lda      $02                           ; 0x9f3d $9F2D A5 02                    ;
lsr                                    ; 0x9f3f $9F2F 4A                       ;
bcc      L9F35                         ; 0x9f40 $9F30 90 03                    ;
inx                                    ; 0x9f42 $9F32 E8                       ;
inx                                    ; 0x9f43 $9F33 E8                       ;
inx                                    ; 0x9f44 $9F34 E8                       ;
L9F35                                                                          ;
lda      L9ED4,x                       ; 0x9f45 $9F35 BD D4 9E                 ;
sty      $07                           ; 0x9f48 $9F38 84 07                    ;
ldx      $10                           ; 0x9f4a $9F3A A6 10                    ;; used as monster x register ;draw boss hp bar
ldy      $A1,x                         ; 0x9f4c $9F3C B4 A1                    ; Enemy Code
cpy      #$1A                          ; 0x9f4e $9F3E C0 1A                    ; 1A = Red Lizalfos
beq      L9F4D                         ; 0x9f50 $9F40 F0 0B                    ;
ldy      $0504,x                       ; 0x9f52 $9F42 BC 04 05                 ; Timer for Enemy AI
cpy      #$03                          ; 0x9f55 $9F45 C0 03                    ;
bcc      L9F4E                         ; 0x9f57 $9F47 90 05                    ;
cpy      #$09                          ; 0x9f59 $9F49 C0 09                    ;
bcs      L9F4E                         ; 0x9f5b $9F4B B0 01                    ;
L9F4D                                                                          ;
asl                                    ; 0x9f5d $9F4D 0A                       ;
L9F4E                                                                          ;
clc                                    ; 0x9f5e $9F4E 18                       ;
adc      $01                           ; 0x9f5f $9F4F 65 01                    ;
sta      $01                           ; 0x9f61 $9F51 85 01                    ;
ldy      $07                           ; 0x9f63 $9F53 A4 07                    ;
ldx      $0F                           ; 0x9f65 $9F55 A6 0F                    ;
lda      $D9                           ; 0x9f67 $9F57 A5 D9                    ;; Thunder Spell modifier ?
cmp      #$1B                          ; 0x9f69 $9F59 C9 1B                    ;
beq      L9F7A                         ; 0x9f6b $9F5B F0 1D                    ;
cpx      #$03                          ; 0x9f6d $9F5D E0 03                    ;
bne      L9F67                         ; 0x9f6f $9F5F D0 06                    ;
lda      L0000                         ; 0x9f71 $9F61 A5 00                    ;
adc      #$0D                          ; 0x9f73 $9F63 69 0D                    ;
sta      L0000                         ; 0x9f75 $9F65 85 00                    ;
L9F67                                                                          ;
cpx      #$02                          ; 0x9f77 $9F67 E0 02                    ;
bne      L9F7D                         ; 0x9f79 $9F69 D0 12                    ;
lda      $02                           ; 0x9f7b $9F6B A5 02                    ;
eor      #$03                          ; 0x9f7d $9F6D 49 03                    ; flip bits .... ..xx
sta      $02                           ; 0x9f7f $9F6F 85 02                    ;
lda      $03                           ; 0x9f81 $9F71 A5 03                    ;
ora      #$80                          ; 0x9f83 $9F73 09 80                    ; set  bits x... ....
sta      $03                           ; 0x9f85 $9F75 85 03                    ;
jmp      L9F7D                         ; 0x9f87 $9F77 4C 7D 9F                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9F7A                                                                          ;
inx                                    ; 0x9f8a $9F7A E8                       ;
inx                                    ; 0x9f8b $9F7B E8                       ;
inx                                    ; 0x9f8c $9F7C E8                       ;
L9F7D                                                                          ;
lda      L9EDA,x                       ; 0x9f8d $9F7D BD DA 9E                 ;
tax                                    ; 0x9f90 $9F80 AA                       ;
jmp      LF0D7                         ; 0x9f91 $9F81 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9F84_RTS                                                                      ;
rts                                    ; 0x9f94 $9F84 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_UNUSED_9F85                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9f95 $9F85 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9f9d $9F8D FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fa5 $9F95 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fad $9F9D FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fb5 $9FA5 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fbd $9FAD FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fc5 $9FB5 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fcd $9FBD FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fd5 $9FC5 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fdd $9FCD FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fe5 $9FD5 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9fed $9FDD FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9ff5 $9FE5 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x9ffd $9FED FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa005 $9FF5 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF                    ; 0xa00d $9FFD FF FF FF                 ;
; ---------------------------------------------------------------------------- ;
bank2_Area_Pointers_Maze_Island                                                ;
.word    bank2_Area_Data_Maze_Island   ; 0xa010 $A000 6C A2                    ;
.word    LA33E                         ; 0xa012 $A002 3E A3                    ;
.word    LA398                         ; 0xa014 $A004 98 A3                    ;
.word    LA3DC                         ; 0xa016 $A006 DC A3                    ;
.word    LA31E                         ; 0xa018 $A008 1E A3                    ;
.word    LA5B6                         ; 0xa01a $A00A B6 A5                    ;
.word    LA362                         ; 0xa01c $A00C 62 A3                    ;
.word    LA3B8                         ; 0xa01e $A00E B8 A3                    ;
.word    LA5B6                         ; 0xa020 $A010 B6 A5                    ;
.word    LA4A4                         ; 0xa022 $A012 A4 A4                    ;
.word    LA362                         ; 0xa024 $A014 62 A3                    ;
.word    LA4C0                         ; 0xa026 $A016 C0 A4                    ;
.word    LA33E                         ; 0xa028 $A018 3E A3                    ;
.word    LA31E                         ; 0xa02a $A01A 1E A3                    ;
.word    LA3B8                         ; 0xa02c $A01C B8 A3                    ;
.word    LA4D4                         ; 0xa02e $A01E D4 A4                    ;
.word    LA408                         ; 0xa030 $A020 08 A4                    ;
.word    L8CBC                         ; 0xa032 $A022 BC 8C                    ;
.word    L8CBC                         ; 0xa034 $A024 BC 8C                    ;
.word    LA432                         ; 0xa036 $A026 32 A4                    ;
.word    LA458                         ; 0xa038 $A028 58 A4                    ;
.word    LA4EC                         ; 0xa03a $A02A EC A4                    ;
.word    LA5F6                         ; 0xa03c $A02C F6 A5                    ;
.word    LA408                         ; 0xa03e $A02E 08 A4                    ;
.word    LA408                         ; 0xa040 $A030 08 A4                    ;
.word    LA432                         ; 0xa042 $A032 32 A4                    ;
.word    LA59B                         ; 0xa044 $A034 9B A5                    ;
.word    bank2_Area_Data_Maze_Island   ; 0xa046 $A036 6C A2                    ;
.word    bank2_Area_Data_Maze_Island   ; 0xa048 $A038 6C A2                    ;
.word    LA26E                         ; 0xa04a $A03A 6E A2                    ;
.word    LA26E                         ; 0xa04c $A03C 6E A2                    ;
.word    LA26E                         ; 0xa04e $A03E 6E A2                    ;
.word    LA26E                         ; 0xa050 $A040 6E A2                    ;
.word    LA26E                         ; 0xa052 $A042 6E A2                    ;
.word    LA52B                         ; 0xa054 $A044 2B A5                    ;
.word    LA52B                         ; 0xa056 $A046 2B A5                    ;
.word    LA57E                         ; 0xa058 $A048 7E A5                    ;
.word    LA55F                         ; 0xa05a $A04A 5F A5                    ;
.word    LA515                         ; 0xa05c $A04C 15 A5                    ;
.word    LA298                         ; 0xa05e $A04E 98 A2                    ;
.word    LA298                         ; 0xa060 $A050 98 A2                    ;
.word    LA298                         ; 0xa062 $A052 98 A2                    ;
.word    LA298                         ; 0xa064 $A054 98 A2                    ;
.word    LA298                         ; 0xa066 $A056 98 A2                    ;
.word    LA298                         ; 0xa068 $A058 98 A2                    ;
.word    LA298                         ; 0xa06a $A05A 98 A2                    ;
.word    LA298                         ; 0xa06c $A05C 98 A2                    ;
.word    LA515                         ; 0xa06e $A05E 15 A5                    ;
.word    LA53B                         ; 0xa070 $A060 3B A5                    ;
.word    LA53B                         ; 0xa072 $A062 3B A5                    ;
.word    LA53B                         ; 0xa074 $A064 3B A5                    ;
.word    LA515                         ; 0xa076 $A066 15 A5                    ;
.word    LA2DC                         ; 0xa078 $A068 DC A2                    ;
.word    LA2DC                         ; 0xa07a $A06A DC A2                    ;
.word    LA2DC                         ; 0xa07c $A06C DC A2                    ;
.word    LA2DC                         ; 0xa07e $A06E DC A2                    ;
.word    LA2DC                         ; 0xa080 $A070 DC A2                    ;
.word    LA505                         ; 0xa082 $A072 05 A5                    ;
.word    LA505                         ; 0xa084 $A074 05 A5                    ;
.word    LA2BA                         ; 0xa086 $A076 BA A2                    ;
.word    LA2BA                         ; 0xa088 $A078 BA A2                    ;
.word    LA2BA                         ; 0xa08a $A07A BA A2                    ;
.word    LA2BA                         ; 0xa08c $A07C BA A2                    ;
bank2_Enemy_Pointers_Maze_Island                                               ;
.word    L7200                         ; 0xa08e $A07E 00 72                    ;Base Offset is 88A0
.word    L7202                         ; 0xa090 $A080 02 72                    ;
.word    L7213                         ; 0xa092 $A082 13 72                    ;
.word    L7222                         ; 0xa094 $A084 22 72                    ;
.word    L7240                         ; 0xa096 $A086 40 72                    ;
.word    L724B                         ; 0xa098 $A088 4B 72                    ;
.word    L725F                         ; 0xa09a $A08A 5F 72                    ;
.word    L7270                         ; 0xa09c $A08C 70 72                    ;
.word    L7282                         ; 0xa09e $A08E 82 72                    ;
.word    L7294                         ; 0xa0a0 $A090 94 72                    ;
.word    L72A1                         ; 0xa0a2 $A092 A1 72                    ;
.word    L72B2                         ; 0xa0a4 $A094 B2 72                    ;
.word    L72BF                         ; 0xa0a6 $A096 BF 72                    ;
.word    L72CE                         ; 0xa0a8 $A098 CE 72                    ;
.word    L7317                         ; 0xa0aa $A09A 17 73                    ;
.word    L72EC                         ; 0xa0ac $A09C EC 72                    ;
.word    L72FC                         ; 0xa0ae $A09E FC 72                    ;
.word    L72DD                         ; 0xa0b0 $A0A0 DD 72                    ;
.word    L72DD                         ; 0xa0b2 $A0A2 DD 72                    ;
.word    L730B                         ; 0xa0b4 $A0A4 0B 73                    ;
.word    L7314                         ; 0xa0b6 $A0A6 14 73                    ;
.word    L72F7                         ; 0xa0b8 $A0A8 F7 72                    ;
.word    L724B                         ; 0xa0ba $A0AA 4B 72                    ;
.word    L7250                         ; 0xa0bc $A0AC 50 72                    ;
.word    L7279                         ; 0xa0be $A0AE 79 72                    ;
.word    L7287                         ; 0xa0c0 $A0B0 87 72                    ;
.word    L7200                         ; 0xa0c2 $A0B2 00 72                    ;
.word    L7200                         ; 0xa0c4 $A0B4 00 72                    ;
.word    L7200                         ; 0xa0c6 $A0B6 00 72                    ;
.word    L738C                         ; 0xa0c8 $A0B8 8C 73                    ;
.word    L738C                         ; 0xa0ca $A0BA 8C 73                    ;
.word    L7200                         ; 0xa0cc $A0BC 00 72                    ;
.word    L7200                         ; 0xa0ce $A0BE 00 72                    ;
.word    L7200                         ; 0xa0d0 $A0C0 00 72                    ;
.word    L7320                         ; 0xa0d2 $A0C2 20 73                    ;
.word    L7329                         ; 0xa0d4 $A0C4 29 73                    ;
.word    L7200                         ; 0xa0d6 $A0C6 00 72                    ;
.word    L7371                         ; 0xa0d8 $A0C8 71 73                    ;
.word    L733F                         ; 0xa0da $A0CA 3F 73                    ;
.word    L7374                         ; 0xa0dc $A0CC 74 73                    ;
.word    L7374                         ; 0xa0de $A0CE 74 73                    ;
.word    L7200                         ; 0xa0e0 $A0D0 00 72                    ;
.word    L7200                         ; 0xa0e2 $A0D2 00 72                    ;
.word    L7200                         ; 0xa0e4 $A0D4 00 72                    ;
.word    L7200                         ; 0xa0e6 $A0D6 00 72                    ;
.word    L7200                         ; 0xa0e8 $A0D8 00 72                    ;
.word    L7200                         ; 0xa0ea $A0DA 00 72                    ;
.word    L734A                         ; 0xa0ec $A0DC 4A 73                    ;
.word    L7351                         ; 0xa0ee $A0DE 51 73                    ;
.word    L7356                         ; 0xa0f0 $A0E0 56 73                    ;
.word    L735F                         ; 0xa0f2 $A0E2 5F 73                    ;
.word    L736A                         ; 0xa0f4 $A0E4 6A 73                    ;
.word    L73A4                         ; 0xa0f6 $A0E6 A4 73                    ;
.word    L73A4                         ; 0xa0f8 $A0E8 A4 73                    ;
.word    L7200                         ; 0xa0fa $A0EA 00 72                    ;
.word    L7200                         ; 0xa0fc $A0EC 00 72                    ;
.word    L7200                         ; 0xa0fe $A0EE 00 72                    ;
.word    L7200                         ; 0xa100 $A0F0 00 72                    ;
.word    L7200                         ; 0xa102 $A0F2 00 72                    ;
.word    L7200                         ; 0xa104 $A0F4 00 72                    ;
.word    L7200                         ; 0xa106 $A0F6 00 72                    ;
.word    L7200                         ; 0xa108 $A0F8 00 72                    ;
.word    L7200                         ; 0xa10a $A0FA 00 72                    ;
; ---------------------------------------------------------------------------- ;
bank2_Maze_Island_Key_Areas_Y_Location                                         ;
.byt    $2A,$29,$28,$2A,$2B,$27,$2D,$2D; 0xa10c $A0FC 2A 29 28 2A 2B 27 2D 2D  ;
.byt    $30,$2F,$2F,$30,$33,$36,$30,$32; 0xa114 $A104 30 2F 2F 30 33 36 30 32  ;
.byt    $34,$36,$3B,$39,$3A,$39,$3C,$3C; 0xa11c $A10C 34 36 3B 39 3A 39 3C 3C  ;
.byt    $41,$3F,$3F,$3C,$40,$36,$36,$2F; 0xa124 $A114 41 3F 3F 3C 40 36 36 2F  ;
.byt    $30,$34,$33,$28,$2C,$3E,$44,$3A; 0xa12c $A11C 30 34 33 28 2C 3E 44 3A  ;
.byt    $C3,$7F,$A5,$A5,$80,$80,$80,$80; 0xa134 $A124 C3 7F A5 A5 80 80 80 80  ;
.byt    $80,$80,$80,$80,$BA,$80,$80,$3C; 0xa13c $A12C 80 80 80 80 BA 80 80 3C  ;
.byt    $40,$3A,$31,$32,$2E,$2A,$00    ; 0xa144 $A134 40 3A 31 32 2E 2A 00     ;
bank2_Maze_Island_Key_Areas_X_Location                                         ;
.byt    $00,$44,$09,$4B,$10,$4E,$03,$47; 0xa14b $A13B 00 44 09 4B 10 4E 03 47  ;
.byt    $03,$45,$0E,$50,$04,$45,$14,$54; 0xa153 $A143 03 45 0E 50 04 45 14 54  ;
.byt    $16,$54,$03,$47,$0F,$52,$0D,$51; 0xa15b $A14B 16 54 03 47 0F 52 0D 51  ;
.byt    $10,$52,$16,$58,$0A,$0B,$4E,$89; 0xa163 $A153 10 52 16 58 0A 0B 4E 89  ;
.byt    $CB,$08,$4A,$92,$D2,$2D,$30,$29; 0xa16b $A15B CB 08 4A 92 D2 2D 30 29  ;
.byt    $28,$00,$07,$17,$00,$40,$00,$40; 0xa173 $A163 28 00 07 17 00 40 00 40  ;
.byt    $00,$40,$00,$40,$3C,$00,$00,$39; 0xa17b $A16B 00 40 00 40 3C 00 00 39  ;
.byt    $08,$30,$33,$2E,$30,$32,$00    ; 0xa183 $A173 08 30 33 2E 30 32 00     ;
bank2_Maze_Island_Key_Areas_Map_Number                                         ;
.byt    $01,$C1,$02,$C2,$03,$C3,$04,$C4; 0xa18a $A17A 01 C1 02 C2 03 C3 04 C4  ;
.byt    $05,$C5,$06,$C6,$07,$C7,$08,$C8; 0xa192 $A182 05 C5 06 C6 07 C7 08 C8  ;
.byt    $09,$C9,$0A,$CA,$0B,$CB,$0C,$CC; 0xa19a $A18A 09 C9 0A CA 0B CB 0C CC  ;
.byt    $0D,$CD,$0E,$CE,$0F,$16,$D6    ; 0xa1a2 $A192 0D CD 0E CE 0F 16 D6     ;
LA199                                                                          ;
.byt    $17,$D7,$18                    ; 0xa1a9 $A199 17 D7 18                 ;
LA19C                                                                          ;
.byt    $D8,$19,$D9,$62,$63,$64,$28,$29; 0xa1ac $A19C D8 19 D9 62 63 64 28 29  ;
.byt    $2A,$2B,$06,$C8,$06,$C8,$06,$C8; 0xa1b4 $A1A4 2A 2B 06 C8 06 C8 06 C8  ;
.byt    $06,$C8,$0F,$00,$00,$65,$5A,$6F; 0xa1bc $A1AC 06 C8 0F 00 00 65 5A 6F  ;
.byt    $70,$71,$72,$73,$00            ; 0xa1c4 $A1B4 70 71 72 73 00           ;
bank2_Maze_Island_Key_Areas_World_Number                                       ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xa1c9 $A1B9 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xa1d1 $A1C1 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xa1d9 $A1C9 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xa1e1 $A1D1 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$40,$40,$80; 0xa1e9 $A1D9 00 00 00 00 00 40 40 80  ;
.byt    $42,$00,$00,$00,$00,$00,$00,$00; 0xa1f1 $A1E1 42 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$11,$00,$00,$80; 0xa1f9 $A1E9 00 00 00 00 11 00 00 80  ;
.byt    $80,$40,$40,$40,$40,$40,$00    ; 0xa201 $A1F1 80 40 40 40 40 40 00     ;
bank2_Maze_Island_Room_Connectivity_Data                                       ;
.byt    $FC,$FC,$FC,$FC,$FC,$FF,$FF,$FD; 0xa208 $A1F8 FC FC FC FC FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0xa210 $A200 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0xa218 $A208 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0xa220 $A210 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0xa228 $A218 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0xa230 $A220 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$FD; 0xa238 $A228 FC FF FF FD FC FF FF FD  ;
.byt    $FC,$FF,$FF,$FD,$FC,$FF,$FF,$40; 0xa240 $A230 FC FF FF FD FC FF FF 40  ;
.byt    $3F,$4E,$FF,$44,$43,$FF,$FF,$FC; 0xa248 $A238 3F 4E FF 44 43 FF FF FC  ;
.byt    $FC,$FF,$FF,$4C,$4B,$FF,$42,$50; 0xa250 $A240 FC FF FF 4C 4B FF 42 50  ;
.byt    $4F,$FF,$FF,$54,$53,$FF,$FF,$FC; 0xa258 $A248 4F FF FF 54 53 FF FF FC  ;
.byt    $FC,$FF,$5E,$FD,$FE,$5A        ; 0xa260 $A250 FC FF 5E FD FE 5A        ;
LA256                                                                          ;
.byt    $FF,$FF,$FC,$66,$FF,$FD,$FE,$FF; 0xa266 $A256 FF FF FC 66 FF FD FE FF  ;
.byt    $62,$FF,$FC,$FF,$FF,$FC,$FC,$FF; 0xa26e $A25E 62 FF FC FF FF FC FC FF  ;
.byt    $FF,$FC,$FC,$FF,$FF,$FC        ; 0xa276 $A266 FF FC FC FF FF FC        ;
bank2_Area_Data_Maze_Island                                                    ;
.byt    $02,$00                        ; 0xa27c $A26C 02 00                    ;
LA26E                                                                          ;
.byt    $10,$C0,$C3,$11,$D4,$02,$DE,$03; 0xa27e $A26E 10 C0 C3 11 D4 02 DE 03  ;
.byt    $D4,$04,$D8,$03,$D2,$02,$DC,$03; 0xa286 $A276 D4 04 D8 03 D2 02 DC 03  ;
.byt    $1A,$44,$C2,$19,$82,$80,$82,$91; 0xa28e $A27E 1A 44 C2 19 82 80 82 91  ;
.byt    $84,$80,$84,$91,$84,$80,$84,$80; 0xa296 $A286 84 80 84 91 84 80 84 80  ;
.byt    $82,$95,$8C,$80,$83,$92,$87,$91; 0xa29e $A28E 82 95 8C 80 83 92 87 91  ;
.byt    $82,$80                        ; 0xa2a6 $A296 82 80                    ;
LA298                                                                          ;
.byt    $22,$48,$1E,$62,$D2,$0D,$D4,$0C; 0xa2a8 $A298 22 48 1E 62 D2 0D D4 0C  ;
.byt    $D2,$0B,$D2,$0C,$D2,$0D,$D2,$0E; 0xa2b0 $A2A0 D2 0B D2 0C D2 0D D2 0E  ;
.byt    $D2,$0D,$D4,$0E,$D4,$0D,$D2,$0E; 0xa2b8 $A2A8 D2 0D D4 0E D4 0D D2 0E  ;
.byt    $D2,$0D,$D4,$0C,$D2,$0B,$D6,$0C; 0xa2c0 $A2B0 D2 0D D4 0C D2 0B D6 0C  ;
.byt    $D4,$0D                        ; 0xa2c8 $A2B8 D4 0D                    ;
LA2BA                                                                          ;
.byt    $22,$40,$B1,$21,$96,$80,$74,$E2; 0xa2ca $A2BA 22 40 B1 21 96 80 74 E2  ;
.byt    $52,$E4,$92,$80,$74,$E2,$94,$80; 0xa2d2 $A2C2 52 E4 92 80 74 E2 94 80  ;
.byt    $92,$80,$74,$E2,$54,$E4,$92,$80; 0xa2da $A2CA 92 80 74 E2 54 E4 92 80  ;
.byt    $92,$91,$92,$82,$74,$E2,$72,$E2; 0xa2e2 $A2D2 92 91 92 82 74 E2 72 E2  ;
.byt    $92,$91                        ; 0xa2ea $A2DA 92 91                    ;
LA2DC                                                                          ;
.byt    $42,$70,$F0,$31,$A4,$00,$A2,$00; 0xa2ec $A2DC 42 70 F0 31 A4 00 A2 00  ;
.byt    $A2,$01,$A2,$00,$A2,$01,$A1,$01; 0xa2f4 $A2E4 A2 01 A2 00 A2 01 A1 01  ;
.byt    $D3,$81,$91,$02,$91,$00,$92,$01; 0xa2fc $A2EC D3 81 91 02 91 00 92 01  ;
.byt    $92,$00,$92,$01,$91,$01,$91,$01; 0xa304 $A2F4 92 00 92 01 91 01 91 01  ;
.byt    $91,$01,$91,$00,$D4,$82,$82,$00; 0xa30c $A2FC 91 01 91 00 D4 82 82 00  ;
.byt    $82,$00,$82,$01,$D2,$81,$91,$02; 0xa314 $A304 82 00 82 01 D2 81 91 02  ;
.byt    $91,$01,$92                    ; 0xa31c $A30C 91 01 92                 ;
LA30F                                                                          ;
.byt    $00,$D4,$80,$A2,$00,$A2        ; 0xa31f $A30F 00 D4 80 A2 00 A2        ;
LA315                                                                          ;
.byt    $00,$A2,$02,$A2,$00,$A2,$01,$A1; 0xa325 $A315 00 A2 02 A2 00 A2 01 A1  ;
.byt    $01                            ; 0xa32d $A31D 01                       ;
LA31E                                                                          ;
.byt    $20,$E0,$0D,$48,$D6,$0C,$A2,$2F; 0xa32e $A31E 20 E0 0D 48 D6 0C A2 2F  ;
.byt    $D6,$0B,$92                    ; 0xa336 $A326 D6 0B 92                 ;
LA329                                                                          ;
.byt    $27,$D6,$0A,$A2,$2F,$90,$2F,$80; 0xa339 $A329 27 D6 0A A2 2F 90 2F 80  ;
.byt    $2F,$D6,$09                    ; 0xa341 $A331 2F D6 09                 ;
LA334                                                                          ;
.byt    $72,$27,$D6,$08                ; 0xa344 $A334 72 27 D6 08              ;
LA338                                                                          ;
.byt    $D2,$05,$00,$39,$DC,$06        ; 0xa348 $A338 D2 05 00 39 DC 06        ;
LA33E                                                                          ;
.byt    $24,$E0,$06,$48,$D8,$05,$02,$35; 0xa34e $A33E 24 E0 06 48 D8 05 02 35  ;
.byt    $D6,$84,$00,$3F,$12,$3D,$D6,$83; 0xa356 $A346 D6 84 00 3F 12 3D D6 83  ;
.byt    $22,$35,$D6,$0A,$A0,$21,$90,$21; 0xa35e $A34E 22 35 D6 0A A0 21 90 21  ;
.byt    $D2,$0B,$A0,$27,$90,$25,$D8,$0C; 0xa366 $A356 D2 0B A0 27 90 25 D8 0C  ;
.byt    $A0,$29,$DC,$0D                ; 0xa36e $A35E A0 29 DC 0D              ;
LA362                                                                          ;
.byt    $36,$E0,$03,$48,$00,$33,$10,$33; 0xa372 $A362 36 E0 03 48 00 33 10 33  ;
.byt    $20,$33,$30,$33,$E1,$00,$D0,$02; 0xa37a $A36A 20 33 30 33 E1 00 D0 02  ;
.byt    $81,$E1,$81,$E1,$82,$E1,$81,$E1; 0xa382 $A372 81 E1 81 E1 82 E1 81 E1  ;
.byt    $82,$E1,$81,$E1,$D2,$03,$DC,$02; 0xa38a $A37A 82 E1 81 E1 D2 03 DC 02  ;
.byt    $81,$E1,$81,$E1,$82,$E1,$81,$E1; 0xa392 $A382 81 E1 81 E1 82 E1 81 E1  ;
.byt    $82,$E1,$81,$E1,$D2,$03,$0C,$33; 0xa39a $A38A 82 E1 81 E1 D2 03 0C 33  ;
.byt    $10,$33,$20,$33,$30,$33        ; 0xa3a2 $A392 10 33 20 33 30 33        ;
LA398                                                                          ;
.byt    $20,$E0,$0E,$48,$D2,$0B,$D5,$00; 0xa3a8 $A398 20 E0 0E 48 D2 0B D5 00  ;
.byt    $D3,$02,$D2,$03,$D2,$00,$D8,$09; 0xa3b0 $A3A0 D3 02 D2 03 D2 00 D8 09  ;
.byt    $D4,$0B,$D6,$09,$D8,$00,$94,$E2; 0xa3b8 $A3A8 D4 0B D6 09 D8 00 94 E2  ;
.byt    $91,$E2,$D5,$09,$D8,$0B,$D4,$0E; 0xa3c0 $A3B0 91 E2 D5 09 D8 0B D4 0E  ;
LA3B8                                                                          ;
.byt    $24,$E0,$05,$48,$DE,$00,$F0,$21; 0xa3c8 $A3B8 24 E0 05 48 DE 00 F0 21  ;
.byt    $D2,$04,$D5,$00,$F0,$22,$D3,$04; 0xa3d0 $A3C0 D2 04 D5 00 F0 22 D3 04  ;
.byt    $D8,$00,$F0,$22,$D3,$03,$D7,$05; 0xa3d8 $A3C8 D8 00 F0 22 D3 03 D7 05  ;
.byt    $D8,$00,$F0,$22,$D3,$05,$D3,$00; 0xa3e0 $A3D0 D8 00 F0 22 D3 05 D3 00  ;
.byt    $F0,$21,$D2,$06                ; 0xa3e8 $A3D8 F0 21 D2 06              ;
LA3DC                                                                          ;
.byt    $2C,$E0,$0E,$48,$D4,$0B,$D4,$00; 0xa3ec $A3DC 2C E0 0E 48 D4 0B D4 00  ;
.byt    $D4,$02,$D2,$04,$D2,$06,$D6,$04; 0xa3f4 $A3E4 D4 02 D2 04 D2 06 D6 04  ;
.byt    $D2,$02,$D2,$00,$D2,$0A,$D2,$0C; 0xa3fc $A3EC D2 02 D2 00 D2 0A D2 0C  ;
.byt    $D4,$0A,$D2,$00,$D2,$02,$D2,$04; 0xa404 $A3F4 D4 0A D2 00 D2 02 D2 04  ;
.byt    $D2,$06,$D6,$04,$D2,$02,$D2,$00; 0xa40c $A3FC D2 06 D6 04 D2 02 D2 00  ;
.byt    $D4,$0B,$D4,$0E                ; 0xa414 $A404 D4 0B D4 0E              ;
LA408                                                                          ;
.byt    $2A,$E0,$06,$48,$00,$3D,$DA,$04; 0xa418 $A408 2A E0 06 48 00 3D DA 04  ;
.byt    $D2,$02,$D2,$08,$D6,$0E,$E2,$00; 0xa420 $A410 D2 02 D2 08 D6 0E E2 00  ;
.byt    $A5,$E1,$A1,$E1,$81,$08,$F0,$50; 0xa428 $A418 A5 E1 A1 E1 81 08 F0 50  ;
.byt    $81,$08,$A1,$E1,$A1,$E1,$D2,$0C; 0xa430 $A420 81 08 A1 E1 A1 E1 D2 0C  ;
.byt    $D2,$08,$D8,$02,$00,$39,$D2,$04; 0xa438 $A428 D2 08 D8 02 00 39 D2 04  ;
.byt    $D2,$06                        ; 0xa440 $A430 D2 06                    ;
LA432                                                                          ;
.byt    $26,$E0,$0E,$48,$D4,$09,$D4,$02; 0xa442 $A432 26 E0 0E 48 D4 09 D4 02  ;
.byt    $00,$33,$10,$33,$04,$37,$D8,$08; 0xa44a $A43A 00 33 10 33 04 37 D8 08  ;
.byt    $D8,$0C,$D9,$0E,$02,$08,$F0,$50; 0xa452 $A442 D8 0C D9 0E 02 08 F0 50  ;
.byt    $B0,$E1,$01,$08,$B0,$E1,$D3,$0C; 0xa45a $A44A B0 E1 01 08 B0 E1 D3 0C  ;
.byt    $D5,$09,$D8,$0C,$D4,$0E        ; 0xa462 $A452 D5 09 D8 0C D4 0E        ;
LA458                                                                          ;
.byt    $4C,$E0,$06,$48,$D8,$00,$F0,$21; 0xa468 $A458 4C E0 06 48 D8 00 F0 21  ;
.byt    $D2,$05,$D2,$00,$F0,$21,$D2,$05; 0xa470 $A460 D2 05 D2 00 F0 21 D2 05  ;
.byt    $D2,$00,$F0,$21,$D2,$04,$D2,$00; 0xa478 $A468 D2 00 F0 21 D2 04 D2 00  ;
.byt    $F0,$21,$D2,$04,$D2,$00,$F0,$21; 0xa480 $A470 F0 21 D2 04 D2 00 F0 21  ;
.byt    $D2,$03,$D2,$00,$F0,$21,$D2,$03; 0xa488 $A478 D2 03 D2 00 F0 21 D2 03  ;
.byt    $D4,$00,$F0,$21,$D2,$03,$D2,$00; 0xa490 $A480 D4 00 F0 21 D2 03 D2 00  ;
.byt    $F0,$21,$D2,$04,$D2,$00,$F0,$21; 0xa498 $A488 F0 21 D2 04 D2 00 F0 21  ;
.byt    $D2,$04,$D2,$00,$F0,$21,$D2,$05; 0xa4a0 $A490 D2 04 D2 00 F0 21 D2 05  ;
.byt    $D2,$00,$F0,$21,$D2,$05,$D2,$00; 0xa4a8 $A498 D2 00 F0 21 D2 05 D2 00  ;
.byt    $F0,$21,$D2,$06                ; 0xa4b0 $A4A0 F0 21 D2 06              ;
LA4A4                                                                          ;
.byt    $1C,$E0,$06,$48,$DA,$04,$D2,$02; 0xa4b4 $A4A4 1C E0 06 48 DA 04 D2 02  ;
.byt    $D2,$00,$66,$51,$64,$51,$64,$51; 0xa4bc $A4AC D2 00 66 51 64 51 64 51  ;
.byt    $66,$51,$64,$51,$64,$51,$D8,$02; 0xa4c4 $A4B4 66 51 64 51 64 51 D8 02  ;
.byt    $D2,$04,$D2,$06                ; 0xa4cc $A4BC D2 04 D2 06              ;
LA4C0                                                                          ;
.byt    $14,$E0,$0E,$48,$D4,$09,$D8,$02; 0xa4d0 $A4C0 14 E0 0E 48 D4 09 D8 02  ;
.byt    $DE,$04,$D4,$02,$D4,$09,$DA,$00; 0xa4d8 $A4C8 DE 04 D4 02 D4 09 DA 00  ;
.byt    $DA,$09,$D6,$0E                ; 0xa4e0 $A4D0 DA 09 D6 0E              ;
LA4D4                                                                          ;
.byt    $18,$60,$0E,$48,$D4,$08,$94,$F1; 0xa4e4 $A4D4 18 60 0E 48 D4 08 94 F1  ;
.byt    $94,$F1,$94,$F1,$94,$F1,$94,$F1; 0xa4ec $A4DC 94 F1 94 F1 94 F1 94 F1  ;
.byt    $D4,$0E,$D8,$08,$E3,$00,$DC,$0E; 0xa4f4 $A4E4 D4 0E D8 08 E3 00 DC 0E  ;
LA4EC                                                                          ;
.byt    $19,$60,$0E,$48,$E2,$00,$D4,$00; 0xa4fc $A4EC 19 60 0E 48 E2 00 D4 00  ;
.byt    $AC,$B7,$51,$F4,$52,$F4,$52,$F4; 0xa504 $A4F4 AC B7 51 F4 52 F4 52 F4  ;
.byt    $D3,$01,$D2,$02,$80,$0F,$06,$D4; 0xa50c $A4FC D3 01 D2 02 80 0F 06 D4  ;
.byt    $0F                            ; 0xa514 $A504 0F                       ;
LA505                                                                          ;
.byt    $10,$01,$C2,$11,$96,$90,$98,$90; 0xa515 $A505 10 01 C2 11 96 90 98 90  ;
.byt    $92,$90,$98,$90,$98,$90,$92,$90; 0xa51d $A50D 92 90 98 90 98 90 92 90  ;
LA515                                                                          ;
.byt    $16,$E0,$F1,$39,$DC,$83,$D2,$85; 0xa525 $A515 16 E0 F1 39 DC 83 D2 85  ;
.byt    $D2,$83,$D2,$81,$E2,$00,$DC,$83; 0xa52d $A51D D2 83 D2 81 E2 00 DC 83  ;
.byt    $D4,$81,$D6,$83,$D2,$81        ; 0xa535 $A525 D4 81 D6 83 D2 81        ;
LA52B                                                                          ;
.byt    $10,$E0,$F0,$39,$D8,$81,$D8,$82; 0xa53b $A52B 10 E0 F0 39 D8 81 D8 82  ;
.byt    $DC,$83,$D8,$84,$DC,$85,$D8,$86; 0xa543 $A533 DC 83 D8 84 DC 85 D8 86  ;
LA53B                                                                          ;
.byt    $24,$E0,$F1,$39,$D8,$83,$D2,$85; 0xa54b $A53B 24 E0 F1 39 D8 83 D2 85  ;
.byt    $D2,$87,$D2,$85,$D2,$83,$D2,$81; 0xa553 $A543 D2 87 D2 85 D2 83 D2 81  ;
.byt    $DC,$83,$D4,$81,$D6,$83,$D2,$85; 0xa55b $A54B DC 83 D4 81 D6 83 D2 85  ;
.byt    $D2,$83,$D2,$81,$D4,$83,$D2,$85; 0xa563 $A553 D2 83 D2 81 D4 83 D2 85  ;
.byt    $D2,$83,$D2,$81                ; 0xa56b $A55B D2 83 D2 81              ;
LA55F                                                                          ;
.byt    $1F,$E0,$06,$48,$00,$37,$D4,$84; 0xa56f $A55F 1F E0 06 48 00 37 D4 84  ;
.byt    $D2,$82,$10,$31,$20,$31,$D2,$0C; 0xa577 $A567 D2 82 10 31 20 31 D2 0C  ;
.byt    $D2,$0E,$D8,$0A,$D4,$80,$D4,$0A; 0xa57f $A56F D2 0E D8 0A D4 80 D4 0A  ;
.byt    $E3,$00,$AC,$0F,$13,$D2,$0F    ; 0xa587 $A577 E3 00 AC 0F 13 D2 0F     ;
LA57E                                                                          ;
.byt    $1D,$E0,$06,$48,$00,$37,$D4,$84; 0xa58e $A57E 1D E0 06 48 00 37 D4 84  ;
.byt    $D2,$82,$10,$31,$20,$31,$D2,$0C; 0xa596 $A586 D2 82 10 31 20 31 D2 0C  ;
.byt    $D2,$0E,$D8,$0A,$D4,$80,$D4,$0A; 0xa59e $A58E D2 0E D8 0A D4 80 D4 0A  ;
.byt    $A2,$0F,$0E,$D2,$0F            ; 0xa5a6 $A596 A2 0F 0E D2 0F           ;
LA59B                                                                          ;
.byt    $1B,$E0,$06,$48,$00,$37,$D4,$84; 0xa5ab $A59B 1B E0 06 48 00 37 D4 84  ;
.byt    $D2,$82,$10,$31,$20,$31,$D2,$0C; 0xa5b3 $A5A3 D2 82 10 31 20 31 D2 0C  ;
.byt    $A0,$2D,$90,$2D,$DE,$80,$A3,$0F; 0xa5bb $A5AB A0 2D 90 2D DE 80 A3 0F  ;
.byt    $0E,$D1,$0F                    ; 0xa5c3 $A5B3 0E D1 0F                 ;
LA5B6                                                                          ;
.byt    $40,$E0,$03,$48,$D4,$00,$80,$4B; 0xa5c6 $A5B6 40 E0 03 48 D4 00 80 4B  ;
.byt    $F0,$2B,$06,$3F,$10,$3F,$24,$3B; 0xa5ce $A5BE F0 2B 06 3F 10 3F 24 3B  ;
.byt    $30,$33,$40,$33,$82,$4F,$F0,$2F; 0xa5d6 $A5C6 30 33 40 33 82 4F F0 2F  ;
.byt    $26,$33,$30,$33,$40,$33,$04,$31; 0xa5de $A5CE 26 33 30 33 40 33 04 31  ;
.byt    $10,$31,$86,$4F,$F0,$2F,$04,$3B; 0xa5e6 $A5D6 10 31 86 4F F0 2F 04 3B  ;
.byt    $10,$3B,$22,$37,$30,$37,$40,$37; 0xa5ee $A5DE 10 3B 22 37 30 37 40 37  ;
.byt    $8A,$4B,$F0,$2B,$04,$37,$10,$37; 0xa5f6 $A5E6 8A 4B F0 2B 04 37 10 37  ;
.byt    $22,$33,$30,$33,$40,$33,$D6,$03; 0xa5fe $A5EE 22 33 30 33 40 33 D6 03  ;
LA5F6                                                                          ;
.byt    $56,$E0,$03,$48,$D4,$00,$80,$4B; 0xa606 $A5F6 56 E0 03 48 D4 00 80 4B  ;
.byt    $F0,$2B,$02,$37,$10,$37,$22,$33; 0xa60e $A5FE F0 2B 02 37 10 37 22 33  ;
.byt    $32,$31,$40,$31,$86,$4D,$F0,$2D; 0xa616 $A606 32 31 40 31 86 4D F0 2D  ;
.byt    $02,$39                        ; 0xa61e $A60E 02 39                    ;
LA610                                                                          ;
.byt    $10,$39,$20,$39,$32,$33,$40,$33; 0xa620 $A610 10 39 20 39 32 33 40 33  ;
.byt    $DA,$03,$D4,$01,$D2,$0E,$A0,$27; 0xa628 $A618 DA 03 D4 01 D2 0E A0 27  ;
.byt    $03,$08,$F0,$50,$A0,$E2,$01,$08; 0xa630 $A620 03 08 F0 50 A0 E2 01 08  ;
.byt    $A0,$E2,$D4,$0B,$A0,$E2,$A1,$E2; 0xa638 $A628 A0 E2 D4 0B A0 E2 A1 E2  ;
.byt    $81,$E4,$81,$E4,$D1,$00,$80,$4B; 0xa640 $A630 81 E4 81 E4 D1 00 80 4B  ;
.byt    $F0,$2B,$00,$33,$10,$33,$20,$31; 0xa648 $A638 F0 2B 00 33 10 33 20 31  ;
.byt    $30,$31,$08,$37,$10,$37,$22,$35; 0xa650 $A640 30 31 08 37 10 37 22 35  ;
.byt    $30,$35,$D2,$83                ; 0xa658 $A648 30 35 D2 83              ;
bank2_Maze_Island_Overworld_Map_Data                                           ;
.byt    $FB,$7B,$FC,$FC,$7C,$FB,$6B,$FC; 0xa65c $A64C FB 7B FC FC 7C FB 6B FC  ;
.byt    $FC,$8C,$FB,$6B,$FC,$FC,$8C,$FB; 0xa664 $A654 FC 8C FB 6B FC FC 8C FB  ;
.byt    $5B,$FC,$FC,$9C,$FB,$7B,$FC,$5C; 0xa66c $A65C 5B FC FC 9C FB 7B FC 5C  ;
.byt    $1B,$FC,$FB,$8B,$FC,$2C,$5B,$DC; 0xa674 $A664 1B FC FB 8B FC 2C 5B DC  ;
.byt    $FB,$9B,$FC,$8B,$0C,$0B,$AC,$6B; 0xa67c $A66C FB 9B FC 8B 0C 0B AC 6B  ;
.byt    $01,$EB,$01,$1B,$EC,$CB,$9C,$5B; 0xa684 $A674 01 EB 01 1B EC CB 9C 5B  ;
.byt    $19,$6B,$29,$2B,$29,$1B,$DC,$DB; 0xa68c $A67C 19 6B 29 2B 29 1B DC DB  ;
.byt    $9C,$4B,$39,$4B,$01,$29,$1B,$49; 0xa694 $A684 9C 4B 39 4B 01 29 1B 49  ;
.byt    $EC,$EB,$8C,$4B,$39,$01,$5B,$19; 0xa69c $A68C EC EB 8C 4B 39 01 5B 19  ;
.byt    $01,$0B,$19,$0B,$19,$EC,$0B,$C9; 0xa6a4 $A694 01 0B 19 0B 19 EC 0B C9  ;
.byt    $0B,$8C,$3B,$01                ; 0xa6ac $A69C 0B 8C 3B 01              ;
LA6A0                                                                          ;
.byt    $39,$AB,$49,$EC,$0B,$09,$8B,$09; 0xa6b0 $A6A0 39 AB 49 EC 0B 09 8B 09  ;
.byt    $3B,$7C,$01,$4B,$2C,$1B,$01,$19; 0xa6b8 $A6A8 3B 7C 01 4B 2C 1B 01 19  ;
.byt    $6B,$39,$DC,$1B,$C9,$2B,$6C,$19; 0xa6c0 $A6B0 6B 39 DC 1B C9 2B 6C 19  ;
.byt    $9B,$39,$01,$6B,$09,$DC,$1B,$09; 0xa6c8 $A6B8 9B 39 01 6B 09 DC 1B 09  ;
.byt    $6B,$09,$2B,$09,$3B,$5C,$29,$8B; 0xa6d0 $A6C0 6B 09 2B 09 3B 5C 29 8B  ;
.byt    $39,$1B,$01,$4B,$09,$DC,$1B,$09; 0xa6d8 $A6C8 39 1B 01 4B 09 DC 1B 09  ;
.byt    $0B,$49                        ; 0xa6e0 $A6D0 0B 49                    ;
LA6D2                                                                          ;
.byt    $0B,$29,$0B,$09,$3B,$5C,$29,$01; 0xa6e2 $A6D2 0B 29 0B 09 3B 5C 29 01  ;
.byt    $2B,$01,$9B,$16,$2B,$19,$DC,$1B; 0xa6ea $A6DA 2B 01 9B 16 2B 19 DC 1B  ;
.byt    $09,$0B,$09,$2B,$09,$0B,$09,$0B; 0xa6f2 $A6E2 09 0B 09 2B 09 0B 09 0B  ;
.byt    $09,$0B,$09,$4B,$4C,$5B,$19,$9B; 0xa6fa $A6EA 09 0B 09 4B 4C 5B 19 9B  ;
.byt    $16,$1B,$19,$EC,$1B,$09,$0B,$29; 0xa702 $A6F2 16 1B 19 EC 1B 09 0B 29  ;
.byt    $0B,$29,$0B,$09,$0B,$09,$5B,$3C; 0xa70a $A6FA 0B 29 0B 09 0B 09 5B 3C  ;
.byt    $4B,$01,$29,$01,$3B,$01,$1B,$29; 0xa712 $A702 4B 01 29 01 3B 01 1B 29  ;
.byt    $1B,$09,$EC,$2B,$09,$2B,$09,$0B; 0xa71a $A70A 1B 09 EC 2B 09 2B 09 0B  ;
.byt    $09,$2B,$09,$0B,$09,$5B,$3C,$2B; 0xa722 $A712 09 2B 09 0B 09 5B 3C 2B  ;
.byt    $01,$1B,$29,$1B,$01,$29,$0B,$01; 0xa72a $A71A 01 1B 29 1B 01 29 0B 01  ;
.byt    $29,$01,$0B,$19,$DC,$2B,$49,$0B; 0xa732 $A722 29 01 0B 19 DC 2B 49 0B  ;
.byt    $29,$0B,$09,$0B,$09,$6B,$2C,$1B; 0xa73a $A72A 29 0B 09 0B 09 6B 2C 1B  ;
.byt    $19,$7B,$29,$1B,$19,$3B,$19,$CC; 0xa742 $A732 19 7B 29 1B 19 3B 19 CC  ;
.byt    $AB,$09,$0B,$09,$0B,$09,$7B,$1C; 0xa74a $A73A AB 09 0B 09 0B 09 7B 1C  ;
.byt    $0B,$29,$6B,$29,$5B,$01,$2B,$19; 0xa752 $A742 0B 29 6B 29 5B 01 2B 19  ;
.byt    $BC,$2B,$89,$0B,$09,$0B,$09,$7B; 0xa75a $A74A BC 2B 89 0B 09 0B 09 7B  ;
.byt    $1C,$39,$01,$4B,$01,$29,$5B,$19; 0xa762 $A752 1C 39 01 4B 01 29 5B 19  ;
.byt    $2B,$09,$BC,$2B,$09,$6B,$09,$0B; 0xa76a $A75A 2B 09 BC 2B 09 6B 09 0B  ;
.byt    $09,$0B,$09,$7B,$1C,$29,$4B,$01; 0xa772 $A762 09 0B 09 7B 1C 29 4B 01  ;
.byt    $AB,$19,$01,$1B,$19,$AC,$2B,$69; 0xa77a $A76A AB 19 01 1B 19 AC 2B 69  ;
.byt    $0B,$09,$0B,$69,$2B,$2C,$29,$2B; 0xa782 $A772 0B 09 0B 69 2B 2C 29 2B  ;
.byt    $39,$5B,$19,$7B,$19,$AC,$5B,$09; 0xa78a $A77A 39 5B 19 7B 19 AC 5B 09  ;
.byt    $2B,$09,$6B,$09,$1B,$3C,$0B,$19; 0xa792 $A782 2B 09 6B 09 1B 3C 0B 19  ;
.byt    $1B,$01,$19,$0B,$19,$01,$1B,$01; 0xa79a $A78A 1B 01 19 0B 19 01 1B 01  ;
.byt    $29,$1B,$01,$5B,$09,$BC,$0B,$29; 0xa7a2 $A792 29 1B 01 5B 09 BC 0B 29  ;
.byt    $0B,$09,$0B,$49,$0B,$29,$0B,$09; 0xa7aa $A79A 0B 09 0B 49 0B 29 0B 09  ;
.byt    $2B,$2C,$5B,$49,$4B,$06,$1B,$19; 0xa7b2 $A7A2 2B 2C 5B 49 4B 06 1B 19  ;
.byt    $5B                            ; 0xa7ba $A7AA 5B                       ;
LA7AB                                                                          ;
.byt    $09,$BC,$0B,$09,$0B,$09,$0B,$09; 0xa7bb $A7AB 09 BC 0B 09 0B 09 0B 09  ;
.byt    $4B,$09,$2B,$09,$0B,$09,$4B,$0C; 0xa7c3 $A7B3 4B 09 2B 09 0B 09 4B 0C  ;
.byt    $6B,$29,$7B,$39,$1B,$39,$AC,$1B; 0xa7cb $A7BB 6B 29 7B 39 1B 39 AC 1B  ;
.byt    $09,$0B,$09,$0B,$49,$0B,$49,$0B; 0xa7d3 $A7C3 09 0B 09 0B 49 0B 49 0B  ;
.byt    $09,$5B,$6B,$01,$3B,$19,$3B,$01; 0xa7db $A7CB 09 5B 6B 01 3B 19 3B 01  ;
.byt    $3B,$39,$BC,$1B,$09,$0B,$09,$2B; 0xa7e3 $A7D3 3B 39 BC 1B 09 0B 09 2B  ;
.byt    $09,$6B,$09,$0B,$09,$0B,$29,$1B; 0xa7eb $A7DB 09 6B 09 0B 09 0B 29 1B  ;
.byt    $19,$9B,$29,$01,$6B,$39,$AC,$2B; 0xa7f3 $A7E3 19 9B 29 01 6B 39 AC 2B  ;
.byt    $09,$0B,$A9,$0B,$09,$0B,$29,$02; 0xa7fb $A7EB 09 0B A9 0B 09 0B 29 02  ;
.byt    $09,$1B,$29,$01,$6B,$39,$7B,$29; 0xa803 $A7F3 09 1B 29 01 6B 39 7B 29  ;
.byt    $BC,$2B,$09,$8B,$09,$0D,$03,$4D; 0xa80b $A7FB BC 2B 09 8B 09 0D 03 4D  ;
.byt    $29,$1B,$0B,$19,$9B,$01,$2B,$01; 0xa813 $A803 29 1B 0B 19 9B 01 2B 01  ;
.byt    $5B,$01,$0B,$BC,$2B,$A9,$0D,$09; 0xa81b $A80B 5B 01 0B BC 2B A9 0D 09  ;
.byt    $0B,$29,$5B,$FB,$0B,$19,$6B,$CC; 0xa823 $A813 0B 29 5B FB 0B 19 6B CC  ;
.byt    $AB,$2D,$09,$0B,$09,$7B,$FB,$29; 0xa82b $A81B AB 2D 09 0B 09 7B FB 29  ;
.byt    $5B,$DC,$3B,$69,$0D,$29,$0B    ; 0xa833 $A823 5B DC 3B 69 0D 29 0B     ;
LA82A                                                                          ;
.byt    $29,$5B,$6B,$49,$5B,$01,$2B,$01; 0xa83a $A82A 29 5B 6B 49 5B 01 2B 01  ;
.byt    $1B,$DC,$3B,$09                ; 0xa842 $A832 1B DC 3B 09              ;
LA836                                                                          ;
.byt    $4B,$09,$0D,$09,$4B,$09,$5B,$6B; 0xa846 $A836 4B 09 0D 09 4B 09 5B 6B  ;
.byt    $09,$0E,$09,$01,$19,$09,$5B,$24; 0xa84e $A83E 09 0E 09 01 19 09 5B 24  ;
.byt    $FC,$0C,$2B,$49,$0B,$09,$03,$09; 0xa856 $A846 FC 0C 2B 49 0B 09 03 09  ;
.byt    $0B,$29,$0B,$09,$5B,$6B,$49,$0B; 0xa85e $A84E 0B 29 0B 09 5B 6B 49 0B  ;
.byt    $09,$1B,$01,$2B,$14,$FC,$1C,$6D; 0xa866 $A856 09 1B 01 2B 14 FC 1C 6D  ;
.byt    $03,$2D,$09,$0B,$09,$0B,$09,$0B; 0xa86e $A85E 03 2D 09 0B 09 0B 09 0B  ;
.byt    $09,$4B,$0C,$CB,$74,$FC,$3C,$1B; 0xa876 $A866 09 4B 0C CB 74 FC 3C 1B  ;
.byt    $09,$0B,$29,$0B,$29,$0B,$09,$0B; 0xa87e $A86E 09 0B 29 0B 29 0B 09 0B  ;
.byt    $09,$0B,$09,$4B,$0C,$1B,$38,$6B; 0xa886 $A876 09 0B 09 4B 0C 1B 38 6B  ;
.byt    $74,$AC,$83,$29,$0B,$09,$2B,$09; 0xa88e $A87E 74 AC 83 29 0B 09 2B 09  ;
.byt    $0B,$09,$0B,$09,$0B,$09,$0B,$09; 0xa896 $A886 0B 09 0B 09 0B 09 0B 09  ;
.byt    $3B,$1C,$1B,$38,$3B,$B4,$FC,$2C; 0xa89e $A88E 3B 1C 1B 38 3B B4 FC 2C  ;
.byt    $1B,$09,$0B,$49,$0B,$29,$0B,$09; 0xa8a6 $A896 1B 09 0B 49 0B 29 0B 09  ;
.byt    $0B,$09,$2B,$2C,$1B,$38,$F4,$FC; 0xa8ae $A89E 0B 09 2B 2C 1B 38 F4 FC  ;
.byt    $2C,$1B,$09,$2B,$09,$6B,$09,$0B; 0xa8b6 $A8A6 2C 1B 09 2B 09 6B 09 0B  ;
.byt    $09,$1B,$3C,$1B,$38,$94,$2C,$44; 0xa8be $A8AE 09 1B 3C 1B 38 94 2C 44  ;
.byt    $FC,$0C,$1B,$E9,$2B,$2C,$5B,$56; 0xa8c6 $A8B6 FC 0C 1B E9 2B 2C 5B 56  ;
.byt    $14,$4C,$04,$26,$04,$FC,$1C,$FB; 0xa8ce $A8BE 14 4C 04 26 04 FC 1C FB  ;
.byt    $1B,$3C,$5B,$56,$14,$2C,$24,$1C; 0xa8d6 $A8C6 1B 3C 5B 56 14 2C 24 1C  ;
.byt    $06,$04,$FC,$2C,$CB,$7C,$5B,$56; 0xa8de $A8CE 06 04 FC 2C CB 7C 5B 56  ;
.byt    $34,$0C,$64,$FC,$2C,$AB,$9C,$5B; 0xa8e6 $A8D6 34 0C 64 FC 2C AB 9C 5B  ;
.byt    $56,$34,$0C,$44,$FC,$5C,$2B,$0C; 0xa8ee $A8DE 56 34 0C 44 FC 5C 2B 0C  ;
.byt    $4B,$AC,$BB,$FC,$FC,$FC,$3C,$BB; 0xa8f6 $A8E6 4B AC BB FC FC FC 3C BB  ;
.byt    $FC,$FC,$FC,$3C,$BB,$FC,$FC,$FC; 0xa8fe $A8EE FC FC FC 3C BB FC FC FC  ;
.byt    $3C,$BB,$FC,$FC,$FC,$3C,$BB,$FC; 0xa906 $A8F6 3C BB FC FC FC 3C BB FC  ;
.byt    $FC,$FC,$3C,$BB,$FC,$FC,$FC,$3C; 0xa90e $A8FE FC FC 3C BB FC FC FC 3C  ;
.byt    $BB,$FC,$FC,$FC,$3C,$BB,$FC,$FC; 0xa916 $A906 BB FC FC FC 3C BB FC FC  ;
.byt    $FC,$3C,$BB,$FC,$FC,$FC,$3C,$BB; 0xa91e $A90E FC 3C BB FC FC FC 3C BB  ;
.byt    $FC,$FC,$FC,$3C,$BB,$FC,$FC,$FC; 0xa926 $A916 FC FC FC 3C BB FC FC FC  ;
.byt    $3C,$BB,$FC,$FC,$FC,$3C,$BB,$FC; 0xa92e $A91E 3C BB FC FC FC 3C BB FC  ;
.byt    $FC,$FC,$3C,$BB,$FC,$FC,$FC,$3C; 0xa936 $A926 FC FC 3C BB FC FC FC 3C  ;
.byt    $BB,$FC,$FC,$FC,$3C            ; 0xa93e $A92E BB FC FC FC 3C           ;
bank2_UNUSED_A933                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa943 $A933 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa94b $A93B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa953 $A943 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa95b $A94B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa963 $A953 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa96b $A95B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa973 $A963 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa97b $A96B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa983 $A973 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa98b $A97B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa993 $A983 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa99b $A98B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9a3 $A993 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9ab $A99B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9b3 $A9A3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9bb $A9AB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9c3 $A9B3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9cb $A9BB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9d3 $A9C3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9db $A9CB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9e3 $A9D3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9eb $A9DB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9f3 $A9E3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xa9fb $A9EB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa03 $A9F3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa0b $A9FB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0xaa13 $AA03 FF FF FF FF FF           ;
LAA08                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa18 $AA08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa20 $AA10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa28 $AA18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa30 $AA20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa38 $AA28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa40 $AA30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa48 $AA38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa50 $AA40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa58 $AA48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa60 $AA50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa68 $AA58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa70 $AA60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa78 $AA68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa80 $AA70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa88 $AA78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa90 $AA80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaa98 $AA88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaaa0 $AA90 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaaa8 $AA98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaab0 $AAA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaab8 $AAA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaac0 $AAB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaac8 $AAB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaad0 $AAC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaad8 $AAC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaae0 $AAD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaae8 $AAD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaaf0 $AAE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaaf8 $AAE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab00 $AAF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab08 $AAF8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab10 $AB00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab18 $AB08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab20 $AB10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab28 $AB18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab30 $AB20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab38 $AB28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab40 $AB30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab48 $AB38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab50 $AB40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab58 $AB48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab60 $AB50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab68 $AB58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab70 $AB60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab78 $AB68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab80 $AB70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab88 $AB78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab90 $AB80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xab98 $AB88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaba0 $AB90 FF FF FF FF FF FF FF FF  ;
bank2_Enemy_Routines1_unknown0                                                 ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaba8 $AB98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabb0 $ABA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabb8 $ABA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabc0 $ABB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabc8 $ABB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabd0 $ABC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabd8 $ABC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabe0 $ABD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabe8 $ABD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabf0 $ABE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0xabf8 $ABE8 FF                       ;
bank2_Enemy_Routines1_unknown1                                                 ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xabf9 $ABE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac01 $ABF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac09 $ABF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac11 $AC01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac19 $AC09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac21 $AC11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac29 $AC19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac31 $AC21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac39 $AC29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac41 $AC31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac49 $AC39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac51 $AC41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac59 $AC49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac61 $AC51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac69 $AC59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac71 $AC61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac79 $AC69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac81 $AC71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac89 $AC79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac91 $AC81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xac99 $AC89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaca1 $AC91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaca9 $AC99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xacb1 $ACA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xacb9 $ACA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xacc1 $ACB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xacc9 $ACB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xacd1 $ACC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xacd9 $ACC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xace1 $ACD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xace9 $ACD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xacf1 $ACE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xacf9 $ACE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad01 $ACF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad09 $ACF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad11 $AD01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad19 $AD09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad21 $AD11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad29 $AD19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad31 $AD21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad39 $AD29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad41 $AD31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad49 $AD39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad51 $AD41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad59 $AD49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad61 $AD51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad69 $AD59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad71 $AD61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad79 $AD69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad81 $AD71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad89 $AD79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad91 $AD81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xad99 $AD89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xada1 $AD91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xada9 $AD99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xadb1 $ADA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xadb9 $ADA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xadc1 $ADB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xadc9 $ADB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xadd1 $ADC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xadd9 $ADC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xade1 $ADD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xade9 $ADD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xadf1 $ADE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xadf9 $ADE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae01 $ADF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae09 $ADF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae11 $AE01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae19 $AE09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae21 $AE11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae29 $AE19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae31 $AE21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae39 $AE29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae41 $AE31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae49 $AE39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae51 $AE41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae59 $AE49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae61 $AE51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae69 $AE59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae71 $AE61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae79 $AE69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae81 $AE71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae89 $AE79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae91 $AE81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xae99 $AE89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaea1 $AE91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaea9 $AE99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaeb1 $AEA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaeb9 $AEA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaec1 $AEB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaec9 $AEB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaed1 $AEC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaed9 $AEC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaee1 $AED1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaee9 $AED9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaef1 $AEE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaef9 $AEE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf01 $AEF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf09 $AEF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf11 $AF01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf19 $AF09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf21 $AF11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf29 $AF19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf31 $AF21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf39 $AF29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf41 $AF31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf49 $AF39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf51 $AF41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf59 $AF49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf61 $AF51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf69 $AF59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf71 $AF61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf79 $AF69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf81 $AF71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf89 $AF79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf91 $AF81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaf99 $AF89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafa1 $AF91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafa9 $AF99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafb1 $AFA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafb9 $AFA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafc1 $AFB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafc9 $AFB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafd1 $AFC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafd9 $AFC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafe1 $AFD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xafe9 $AFD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaff1 $AFE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xaff9 $AFE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb001 $AFF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb009 $AFF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb011 $B001 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb019 $B009 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb021 $B011 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb029 $B019 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb031 $B021 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb039 $B029 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb041 $B031 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb049 $B039 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb051 $B041 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb059 $B049 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb061 $B051 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb069 $B059 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb071 $B061 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb079 $B069 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb081 $B071 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb089 $B079 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0xb091 $B081 FF                       ;
LB082                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb092 $B082 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb09a $B08A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0a2 $B092 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0aa $B09A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0b2 $B0A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0ba $B0AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0c2 $B0B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0ca $B0BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0d2 $B0C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0da $B0CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0e2 $B0D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0ea $B0DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0f2 $B0E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb0fa $B0EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb102 $B0F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb10a $B0FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb112 $B102 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb11a $B10A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb122 $B112 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb12a $B11A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb132 $B122 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb13a $B12A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb142 $B132 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb14a $B13A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb152 $B142 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb15a $B14A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb162 $B152 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb16a $B15A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb172 $B162 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb17a $B16A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb182 $B172 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb18a $B17A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb192 $B182 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb19a $B18A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1a2 $B192 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1aa $B19A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1b2 $B1A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1ba $B1AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1c2 $B1B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1ca $B1BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1d2 $B1C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1da $B1CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1e2 $B1D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1ea $B1DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1f2 $B1E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb1fa $B1EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb202 $B1F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb20a $B1FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb212 $B202 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb21a $B20A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb222 $B212 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb22a $B21A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb232 $B222 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb23a $B22A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb242 $B232 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb24a $B23A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb252 $B242 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb25a $B24A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb262 $B252 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb26a $B25A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb272 $B262 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb27a $B26A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb282 $B272 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb28a $B27A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb292 $B282 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb29a $B28A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2a2 $B292 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2aa $B29A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2b2 $B2A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2ba $B2AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2c2 $B2B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2ca $B2BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2d2 $B2C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2da $B2CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2e2 $B2D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2ea $B2DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2f2 $B2E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb2fa $B2EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb302 $B2F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb30a $B2FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb312 $B302 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb31a $B30A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb322 $B312 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb32a $B31A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb332 $B322 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb33a $B32A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb342 $B332 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb34a $B33A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb352 $B342 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb35a $B34A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb362 $B352 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb36a $B35A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb372 $B362 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb37a $B36A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb382 $B372 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb38a $B37A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb392 $B382 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb39a $B38A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3a2 $B392 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3aa $B39A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3b2 $B3A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3ba $B3AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3c2 $B3B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3ca $B3BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3d2 $B3C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3da $B3CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3e2 $B3D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3ea $B3DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3f2 $B3E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb3fa $B3EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb402 $B3F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb40a $B3FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb412 $B402 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb41a $B40A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb422 $B412 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb42a $B41A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb432 $B422 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb43a $B42A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb442 $B432 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb44a $B43A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb452 $B442 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb45a $B44A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb462 $B452 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb46a $B45A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb472 $B462 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb47a $B46A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb482 $B472 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb48a $B47A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb492 $B482 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb49a $B48A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4a2 $B492 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4aa $B49A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4b2 $B4A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4ba $B4AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4c2 $B4B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4ca $B4BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4d2 $B4C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4da $B4CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4e2 $B4D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4ea $B4DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4f2 $B4E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb4fa $B4EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb502 $B4F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb50a $B4FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb512 $B502 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb51a $B50A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb522 $B512 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb52a $B51A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb532 $B522 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb53a $B52A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb542 $B532 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb54a $B53A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb552 $B542 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb55a $B54A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb562 $B552 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb56a $B55A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb572 $B562 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb57a $B56A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb582 $B572 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb58a $B57A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb592 $B582 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb59a $B58A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5a2 $B592 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5aa $B59A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5b2 $B5A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5ba $B5AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5c2 $B5B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5ca $B5BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5d2 $B5C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5da $B5CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5e2 $B5D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5ea $B5DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5f2 $B5E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb5fa $B5EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb602 $B5F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb60a $B5FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb612 $B602 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb61a $B60A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb622 $B612 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb62a $B61A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb632 $B622 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb63a $B62A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb642 $B632 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb64a $B63A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb652 $B642 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb65a $B64A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb662 $B652 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb66a $B65A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb672 $B662 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb67a $B66A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb682 $B672 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb68a $B67A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb692 $B682 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb69a $B68A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6a2 $B692 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6aa $B69A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6b2 $B6A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6ba $B6AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6c2 $B6B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6ca $B6BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6d2 $B6C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6da $B6CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6e2 $B6D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6ea $B6DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6f2 $B6E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb6fa $B6EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb702 $B6F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb70a $B6FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb712 $B702 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb71a $B70A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb722 $B712 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb72a $B71A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb732 $B722 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb73a $B72A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb742 $B732 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb74a $B73A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb752 $B742 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb75a $B74A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb762 $B752 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb76a $B75A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb772 $B762 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb77a $B76A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb782 $B772 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb78a $B77A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb792 $B782 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb79a $B78A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7a2 $B792 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7aa $B79A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7b2 $B7A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7ba $B7AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7c2 $B7B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7ca $B7BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7d2 $B7C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7da $B7CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7e2 $B7D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7ea $B7DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7f2 $B7E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb7fa $B7EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb802 $B7F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb80a $B7FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb812 $B802 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb81a $B80A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb822 $B812 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb82a $B81A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb832 $B822 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb83a $B82A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb842 $B832 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb84a $B83A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb852 $B842 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb85a $B84A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb862 $B852 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb86a $B85A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb872 $B862 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb87a $B86A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb882 $B872 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb88a $B87A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb892 $B882 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb89a $B88A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8a2 $B892 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8aa $B89A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8b2 $B8A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8ba $B8AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8c2 $B8B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8ca $B8BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8d2 $B8C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8da $B8CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8e2 $B8D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8ea $B8DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8f2 $B8E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb8fa $B8EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb902 $B8F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb90a $B8FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb912 $B902 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb91a $B90A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb922 $B912 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb92a $B91A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb932 $B922 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb93a $B92A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb942 $B932 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb94a $B93A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb952 $B942 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb95a $B94A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb962 $B952 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb96a $B95A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb972 $B962 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb97a $B96A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb982 $B972 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb98a $B97A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb992 $B982 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb99a $B98A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9a2 $B992 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9aa $B99A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9b2 $B9A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9ba $B9AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9c2 $B9B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9ca $B9BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9d2 $B9C2 FF FF FF FF FF FF FF FF  ;
LB9CA                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9da $B9CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9e2 $B9D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9ea $B9DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9f2 $B9E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xb9fa $B9EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba02 $B9F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba0a $B9FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba12 $BA02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba1a $BA0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba22 $BA12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba2a $BA1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba32 $BA22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba3a $BA2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba42 $BA32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba4a $BA3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba52 $BA42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba5a $BA4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba62 $BA52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba6a $BA5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba72 $BA62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba7a $BA6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba82 $BA72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba8a $BA7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba92 $BA82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xba9a $BA8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbaa2 $BA92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbaaa $BA9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbab2 $BAA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbaba $BAAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbac2 $BAB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbaca $BABA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbad2 $BAC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbada $BACA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbae2 $BAD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbaea $BADA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbaf2 $BAE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbafa $BAEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb02 $BAF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb0a $BAFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb12 $BB02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb1a $BB0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb22 $BB12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb2a $BB1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb32 $BB22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb3a $BB2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb42 $BB32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb4a $BB3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb52 $BB42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb5a $BB4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb62 $BB52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb6a $BB5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb72 $BB62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb7a $BB6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb82 $BB72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb8a $BB7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb92 $BB82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbb9a $BB8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbba2 $BB92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbaa $BB9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbb2 $BBA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbba $BBAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbc2 $BBB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbca $BBBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbd2 $BBC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbda $BBCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbe2 $BBD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbea $BBDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbf2 $BBE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbbfa $BBEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc02 $BBF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc0a $BBFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc12 $BC02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc1a $BC0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc22 $BC12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc2a $BC1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc32 $BC22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc3a $BC2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc42 $BC32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc4a $BC3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc52 $BC42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc5a $BC4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc62 $BC52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc6a $BC5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc72 $BC62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc7a $BC6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc82 $BC72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc8a $BC7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc92 $BC82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbc9a $BC8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbca2 $BC92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcaa $BC9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcb2 $BCA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcba $BCAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcc2 $BCB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcca $BCBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcd2 $BCC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcda $BCCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbce2 $BCD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcea $BCDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcf2 $BCE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbcfa $BCEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd02 $BCF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd0a $BCFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd12 $BD02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd1a $BD0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd22 $BD12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd2a $BD1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd32 $BD22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd3a $BD2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd42 $BD32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd4a $BD3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd52 $BD42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd5a $BD4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd62 $BD52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd6a $BD5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd72 $BD62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd7a $BD6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd82 $BD72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd8a $BD7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd92 $BD82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbd9a $BD8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbda2 $BD92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdaa $BD9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdb2 $BDA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdba $BDAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdc2 $BDB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdca $BDBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdd2 $BDC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdda $BDCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbde2 $BDD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdea $BDDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdf2 $BDE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbdfa $BDEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe02 $BDF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe0a $BDFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe12 $BE02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe1a $BE0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe22 $BE12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe2a $BE1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe32 $BE22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe3a $BE2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe42 $BE32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe4a $BE3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe52 $BE42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe5a $BE4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe62 $BE52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe6a $BE5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe72 $BE62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe7a $BE6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe82 $BE72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe8a $BE7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe92 $BE82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbe9a $BE8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbea2 $BE92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbeaa $BE9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbeb2 $BEA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbeba $BEAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbec2 $BEB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbeca $BEBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbed2 $BEC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbeda $BECA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbee2 $BED2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbeea $BEDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbef2 $BEE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbefa $BEEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf02 $BEF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0xbf0a $BEFA FF FF FF FF FF FF        ;
LBF00                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf10 $BF00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf18 $BF08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf20 $BF10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf28 $BF18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf30 $BF20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf38 $BF28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf40 $BF30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf48 $BF38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf50 $BF40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf58 $BF48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf60 $BF50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf68 $BF58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf70 $BF60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbf78 $BF68 FF FF FF FF FF FF FF FF  ;
; ---------------------------------------------------------------------------- ;
bank2_codeEND                                                                  ;
sei                                    ; 0xbf80 $BF70 78                       ;
cld                                    ; 0xbf81 $BF71 D8                       ;
ldx      #$00                          ; 0xbf82 $BF72 A2 00                    ; X = 00
stx      $2000                         ; 0xbf84 $BF74 8E 00 20                 ;
inx                                    ; 0xbf87 $BF77 E8                       ;
LBF78                                                                          ;
lda      $2002                         ; 0xbf88 $BF78 AD 02 20                 ;
bpl      LBF78                         ; 0xbf8b $BF7B 10 FB                    ;
dex                                    ; 0xbf8d $BF7D CA                       ;
beq      LBF78                         ; 0xbf8e $BF7E F0 F8                    ;
txs                                    ; 0xbf90 $BF80 9A                       ;
stx      bank2_Pointer_table_for_background_level_data; 0xbf91 $BF81 8E 00 80  ;
stx      bank2_Area_Pointers_Maze_Island; 0xbf94 $BF84 8E 00 A0                ;
stx      bank7_PowerON_code            ; 0xbf97 $BF87 8E 00 C0                 ;
stx      LE000                         ; 0xbf9a $BF8A 8E 00 E0                 ;
lda      #$0F                          ; 0xbf9d $BF8D A9 0F                    ; A = 0F
jsr      LBF9D                         ; 0xbf9f $BF8F 20 9D BF                 ;
jsr      LBFB1                         ; 0xbfa2 $BF92 20 B1 BF                 ;
lda      #$07                          ; 0xbfa5 $BF95 A9 07                    ; A = 07
jsr      LBFCC                         ; 0xbfa7 $BF97 20 CC BF                 ;
jmp      bank7_PowerON_code            ; 0xbfaa $BF9A 4C 00 C0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBF9D                                                                          ;
sta      bank2_Pointer_table_for_background_level_data; 0xbfad $BF9D 8D 00 80  ;
lsr                                    ; 0xbfb0 $BFA0 4A                       ;
sta      bank2_Pointer_table_for_background_level_data; 0xbfb1 $BFA1 8D 00 80  ;
lsr                                    ; 0xbfb4 $BFA4 4A                       ;
sta      bank2_Pointer_table_for_background_level_data; 0xbfb5 $BFA5 8D 00 80  ;
lsr                                    ; 0xbfb8 $BFA8 4A                       ;
sta      bank2_Pointer_table_for_background_level_data; 0xbfb9 $BFA9 8D 00 80  ;
lsr                                    ; 0xbfbc $BFAC 4A                       ;
sta      bank2_Pointer_table_for_background_level_data; 0xbfbd $BFAD 8D 00 80  ;
rts                                    ; 0xbfc0 $BFB0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBFB1                                                                          ;
sta      bank2_Area_Pointers_Maze_Island; 0xbfc1 $BFB1 8D 00 A0                ;
lsr                                    ; 0xbfc4 $BFB4 4A                       ;
sta      bank2_Area_Pointers_Maze_Island; 0xbfc5 $BFB5 8D 00 A0                ;
lsr                                    ; 0xbfc8 $BFB8 4A                       ;
sta      bank2_Area_Pointers_Maze_Island; 0xbfc9 $BFB9 8D 00 A0                ;
lsr                                    ; 0xbfcc $BFBC 4A                       ;
sta      bank2_Area_Pointers_Maze_Island; 0xbfcd $BFBD 8D 00 A0                ;
lsr                                    ; 0xbfd0 $BFC0 4A                       ;
sta      bank2_Area_Pointers_Maze_Island; 0xbfd1 $BFC1 8D 00 A0                ;
rts                                    ; 0xbfd4 $BFC4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
lda      #$00                          ; 0xbfd5 $BFC5 A9 00                    ; A = 00
beq      LBFCC                         ; 0xbfd7 $BFC7 F0 03                    ;
lda      $0769                         ; 0xbfd9 $BFC9 AD 69 07                 ;; Bank to switch to (other than 0 or 7)
LBFCC                                                                          ;
sta      LE000                         ; 0xbfdc $BFCC 8D 00 E0                 ;
lsr                                    ; 0xbfdf $BFCF 4A                       ;
sta      LE000                         ; 0xbfe0 $BFD0 8D 00 E0                 ;
lsr                                    ; 0xbfe3 $BFD3 4A                       ;
sta      LE000                         ; 0xbfe4 $BFD4 8D 00 E0                 ;
lsr                                    ; 0xbfe7 $BFD7 4A                       ;
sta      LE000                         ; 0xbfe8 $BFD8 8D 00 E0                 ;
lsr                                    ; 0xbfeb $BFDB 4A                       ;
sta      LE000                         ; 0xbfec $BFDC 8D 00 E0                 ;
rts                                    ; 0xbfef $BFDF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank2_UNUSED_BFE0                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbff0 $BFE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xbff8 $BFE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xc000 $BFF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF                        ; 0xc008 $BFF8 FF FF                    ;
bank2_tableEND                                                                 ;
.byt    $7B,$C0,$70,$BF,$F0,$FF        ; 0xc00a $BFFA 7B C0 70 BF F0 FF        ;
; ---------------------------------------------------------------------------- ;
