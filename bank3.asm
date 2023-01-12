; DISASSEMBLY ORIGINALLY WROTE BY TRAX (99.9% of his work)
 * = $8000                                                                      ;
; da65 V2.18 
; Created     2021-04-12 11 24 27                                              ;
; Input file  bank3_and_7.nes                                                  ;
; Page        1                                                                ;
                                                                               ;
                                                                               ;
;.setcpu  "6502"                                                               ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L0000     = $0000                                                              ;
L0002     = $0002                                                              ;
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
L700D     = $700D                                                              ;
L7018     = $7018                                                              ;
L7025     = $7025                                                              ;
L7032     = $7032                                                              ;
L7033     = $7033                                                              ;
L7036     = $7036                                                              ;
L7041     = $7041                                                              ;
L704C     = $704C                                                              ;
L7057     = $7057                                                              ;
L7062     = $7062                                                              ;
L706D     = $706D                                                              ;
L7070     = $7070                                                              ;
L7075     = $7075                                                              ;
L7078     = $7078                                                              ;
L707B     = $707B                                                              ;
L7080     = $7080                                                              ;
L7085     = $7085                                                              ;
L708E     = $708E                                                              ;
L7091     = $7091                                                              ;
L709C     = $709C                                                              ;
L70A0     = $70A0                                                              ;
L70A9     = $70A9                                                              ;
L70B2     = $70B2                                                              ;
L70BF     = $70BF                                                              ;
L70C8     = $70C8                                                              ;
L70D5     = $70D5                                                              ;
L70E4     = $70E4                                                              ;
L70EF     = $70EF                                                              ;
L70F0     = $70F0                                                              ;
L7101     = $7101                                                              ;
L7106     = $7106                                                              ;
L7109     = $7109                                                              ;
L710C     = $710C                                                              ;
L710F     = $710F                                                              ;
L711A     = $711A                                                              ;
L711D     = $711D                                                              ;
; ---------------------------------------------------------------------------- ;
bank3_Pointer_table_for_Background_Areas_Data:                                  ;
.word    L9B5C                         ; 0xc010 $8000 5C 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc012 $8002 48 9B                    ;
.word    L0000                         ; 0xc014 $8004 00 00                    ;
.word    L0000                         ; 0xc016 $8006 00 00                    ;
.word    L0000                         ; 0xc018 $8008 00 00                    ;
.word    L0000                         ; 0xc01a $800A 00 00                    ;
.word    L0000                         ; 0xc01c $800C 00 00                    ;
; ---------------------------------------------------------------------------- ;
bank3_Palettes_for_Towns:                                                       ;
;The first byte of 0x10 sets the background color                              ;
;FF = transparency                                                             ;
.byt    $22,$30,$12,$16,$22,$30,$29,$0F; 0xc01e $800E 22 30 12 16 22 30 29 0F  ;
.byt    $22,$27,$17,$0F,$22,$30,$10,$0F; 0xc026 $8016 22 27 17 0F 22 30 10 0F  ;
.byt    $22,$30,$12,$16,$22,$30,$28,$0F; 0xc02e $801E 22 30 12 16 22 30 28 0F  ;
.byt    $22,$28,$18,$0F,$22,$30,$26,$0F; 0xc036 $8026 22 28 18 0F 22 30 26 0F  ;
.byt    $22,$30,$12,$16,$22,$37,$2A,$0F; 0xc03e $802E 22 30 12 16 22 37 2A 0F  ;
.byt    $22,$30,$1C,$0F,$22,$30,$1A,$0F; 0xc046 $8036 22 30 1C 0F 22 30 1A 0F  ;
.byt    $22,$30,$12,$16,$22,$30,$30,$30; 0xc04e $803E 22 30 12 16 22 30 30 30  ;
.byt    $22,$30,$27,$0F,$22,$30,$10,$0F; 0xc056 $8046 22 30 27 0F 22 30 10 0F  ;
.byt    $13,$30,$12,$16,$13,$30,$27,$0F; 0xc05e $804E 13 30 12 16 13 30 27 0F  ;
.byt    $13,$39,$19,$0F,$13,$30,$12,$0F; 0xc066 $8056 13 39 19 0F 13 30 12 0F  ;
.byt    $02,$30,$12,$16,$02,$01,$17,$0F; 0xc06e $805E 02 30 12 16 02 01 17 0F  ;
.byt    $02,$10,$00,$0F,$02,$30,$10,$0F; 0xc076 $8066 02 10 00 0F 02 30 10 0F  ;
.byt    $0F,$30,$12,$16,$0F,$30,$29,$17; 0xc07e $806E 0F 30 12 16 0F 30 29 17  ;
.byt    $0F,$30,$16,$21,$0F,$26,$16,$0F; 0xc086 $8076 0F 30 16 21 0F 26 16 0F  ;
.byt    $0F,$30,$12,$16,$0F,$2C,$1C,$0C; 0xc08e $807E 0F 30 12 16 0F 2C 1C 0C  ;
.byt    $0F,$30,$16,$21,$0F,$26,$16,$07; 0xc096 $8086 0F 30 16 21 0F 26 16 07  ;
.byt    $0F,$30,$12,$16,$0F,$30,$29,$17; 0xc09e $808E 0F 30 12 16 0F 30 29 17  ;
.byt    $0F,$30,$16,$21,$0F,$26,$16,$0F; 0xc0a6 $8096 0F 30 16 21 0F 26 16 0F  ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0xc0ae $809E FF 18 36 2A FF 16 27 30  ;
.byt    $FF,$0F,$16,$36,$FF,$0F,$13,$36; 0xc0b6 $80A6 FF 0F 16 36 FF 0F 13 36  ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0xc0be $80AE FF 18 36 2A FF 16 27 30  ;
.byt    $FF,$06,$16,$36,$FF,$03,$10,$36; 0xc0c6 $80B6 FF 06 16 36 FF 03 10 36  ;
.byt    $FF,$18,$36,$2A,$FF,$16,$27,$30; 0xc0ce $80BE FF 18 36 2A FF 16 27 30  ;
.byt    $FF,$0F,$1C                    ; 0xc0d6 $80C6 FF 0F 1C                 ;
L80C9:                                                                          ;
.byt    $2C,$FF,$0F,$15,$25,$FF,$18,$36; 0xc0d9 $80C9 2C FF 0F 15 25 FF 18 36  ;
.byt    $2A,$FF,$16,$27,$30,$FF,$0F,$2A; 0xc0e1 $80D1 2A FF 16 27 30 FF 0F 2A  ;
.byt    $30,$FF,$0F,$16,$26,$FF,$18,$36; 0xc0e9 $80D9 30 FF 0F 16 26 FF 18 36  ;
.byt    $2A,$FF,$16,$27                ; 0xc0f1 $80E1 2A FF 16 27              ;
L80E5:                                                                          ;
.byt    $30,$FF,$11,$21,$30,$FF,$07,$16; 0xc0f5 $80E5 30 FF 11 21 30 FF 07 16  ;
.byt    $30                            ; 0xc0fd $80ED 30                       ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Cross_Hatched_Roof_2_high_X_wide_1x:        ;
    LDX      #$00                      ; 0xc0fe $80EE A2 00                    ;;X = #$00 0000_0000
    BEQ      L8104                     ; 0xc100 $80F0 F0 12                    ;
bank3_Objects_Construction_Routines_White_Shingle_Roof_2_high_X_wide_3x:        ;
    LDX      #$01                      ; 0xc102 $80F2 A2 01                    ;;X = #$01 0000_0001
    BNE      L8104                     ; 0xc104 $80F4 D0 0E                    ;
bank3_Objects_Construction_Routines_Green_Shingle_Roof_2_high_X_wide_4x:        ;
    LDX      #$02                      ; 0xc106 $80F6 A2 02                    ;;X = #$02 0000_0010
    BNE      L8104                     ; 0xc108 $80F8 D0 0A                    ;
bank3_Tile_Codes_for_House_Roofs:                                               ;
.byt    $84,$CF,$57,$55                ; 0xc10a $80FA 84 CF 57 55              ;
L80FE:                                                                          ;
.byt    $85,$D0,$52,$55                ; 0xc10e $80FE 85 D0 52 55              ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Blocks_wall_in_caves_2_high_X_wide_Dx:      ;
    LDX      #$03                      ; 0xc112 $8102 A2 03                    ; X = 03
L8104:                                                                          ;
    LDA      bank3_Tile_Codes_for_House_Roofs,x; 0xc114 $8104 BD FA 80             ; refer to table at $C0FA
    STA      L0000                     ; 0xc117 $8107 85 00                    ;
    LDA      L80FE,x                   ; 0xc119 $8109 BD FE 80                 ; refer to table at $C0FA (offset +4)
    STA      $01                       ; 0xc11c $810C 85 01                    ;
    LDA      #$01                      ; 0xc11e $810E A9 01                    ; A = 01
    PHA                                ; 0xc120 $8110 48                       ;
    LDA      L0000                     ; 0xc121 $8111 A5 00                    ;
    STA      $0112                     ; 0xc123 $8113 8D 12 01                 ;; Tile Code 0 for Object
L8116:                                                                          ;
    LDA      $0731                     ; 0xc126 $8116 AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xc129 $8119 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xc12b $811B AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc12c $811C 20 44 C9           ; Set RAM Address for Object (0E-0F)
L811F:                                                                          ;
    LDA      $0112                     ; 0xc12f $811F AD 12 01                 ;; Tile Code 0 for Object
    JSR      bank7_Set_tile_and_move_right_1_column; 0xc132 $8122 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0xc135 $8125 CA                       ;
    BPL      L811F                     ; 0xc136 $8126 10 F7                    ;
    JSR      LDF4C                     ; 0xc138 $8128 20 4C DF                 ; Go down 1 row
    PLA                                ; 0xc13b $812B 68                       ;
    TAX                                ; 0xc13c $812C AA                       ;
    DEX                                ; 0xc13d $812D CA                       ;
L812F     = * + $0001                                                          ;
    BMI      L813A                     ; 0xc13e $812E 30 0A                    ;
    TXA                                ; 0xc140 $8130 8A                       ;
    PHA                                ; 0xc141 $8131 48                       ;
    LDA      $01                       ; 0xc142 $8132 A5 01                    ;
    STA      $0112                     ; 0xc144 $8134 8D 12 01                 ;; Tile Code 0 for Object
    JMP      L8116                     ; 0xc147 $8137 4C 16 81                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L813A:                                                                          ;
    RTS                                ; 0xc14a $813A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_House_Facade__Bricks_X_wide__5x:            ;
    LDX      #$00                      ; 0xc14b $813B A2 00                    ; X = 00
    BEQ      L8157                     ; 0xc14d $813D F0 18                    ;
bank3_Objects_Construction_Routines_House_Facade__Small_bricks_X_wide_6x:       ;
L8140     = * + $0001                                                          ;
    LDX      #$01                      ; 0xc14f $813F A2 01                    ; X = 01
    BNE      L8157                     ; 0xc151 $8141 D0 14                    ;
bank3_Objects_Construction_Routines_House_Facade__Grass_X_wide__7x:             ;
    LDX      #$02                      ; 0xc153 $8143 A2 02                    ; X = 02
    BNE      L8157                     ; 0xc155 $8145 D0 10                    ;
bank3_Objects_Construction_Routines_House_Facade__White_bricks_X_wide_8x:       ;
    LDX      #$03                      ; 0xc157 $8147 A2 03                    ; X = 03
L8149:                                                                          ;
    BNE      L8157                     ; 0xc159 $8149 D0 0C                    ;
bank3_Tile_Codes_for_House_Facades:                                             ;
;First byte sets all columns except the rightmost one                          ;
;Second byte sets the rightmost column                                         ;
.byt    $80,$CD,$4E,$CB,$82            ; 0xc15b $814B 80 CD 4E CB 82           ;
L8150:                                                                          ;
.byt    $81,$CE,$4F,$CB,$83            ; 0xc160 $8150 81 CE 4F CB 83           ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_House_Facade__Logs_X_wide__9x:              ;
    LDX      #$04                      ; 0xc165 $8155 A2 04                    ; X = 04
L8157:                                                                          ;
    LDA      bank3_Tile_Codes_for_House_Facades,x; 0xc167 $8157 BD 4B 81           ; refer to table at $C14B
    STA      L0000                     ; 0xc16a $815A 85 00                    ;
    LDA      L8150,x                   ; 0xc16c $815C BD 50 81                 ; refer to table at $C14B (offset +5)
    STA      $01                       ; 0xc16f $815F 85 01                    ;
L8161:                                                                          ;
    LDA      $0731                     ; 0xc171 $8161 AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xc174 $8164 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xc176 $8166 AA                       ;
L8167:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc177 $8167 20 44 C9           ;
L816A:                                                                          ;
    LDA      L0000                     ; 0xc17a $816A A5 00                    ;
    JSR      bank7_Set_tile_and_move_right_1_column; 0xc17c $816C 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0xc17f $816F CA                       ;
    BNE      L816A                     ; 0xc180 $8170 D0 F8                    ;
    LDA      $01                       ; 0xc182 $8172 A5 01                    ;
    JSR      bank7_Set_tile_and_go_down_1_row_in_2x2_tiles_units; 0xc184 $8174 20 4A DF;
    AND      #$F0                      ; 0xc187 $8177 29 F0                    ; keep bits xxxx ....
    CMP      #$B0                      ; 0xc189 $8179 C9 B0                    ; B0 = normal ground level
L817B:                                                                          ;
    BNE      L8161                     ; 0xc18b $817B D0 E4                    ;
    RTS                                ; 0xc18d $817D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Square_Window_1_wide_2_high_repeat_down_Ax: ;
    LDX      #$00                      ; 0xc18e $817E A2 00                    ; X = 00
    BEQ      L818E                     ; 0xc190 $8180 F0 0C                    ;
bank3_Objects_Construction_Routines_Rounded_Window_1_wide_2_high_repeat_down_Bx: ;
    LDX      #$01                      ; 0xc192 $8182 A2 01                    ; X = 01
    BNE      L818E                     ; 0xc194 $8184 D0 08                    ;
bank3_Tile_Codes_for_House_Windows:                                             ;
.byt    $86,$D1,$87                    ; 0xc196 $8186 86 D1 87                 ;
L8189:                                                                          ;
.byt    $86,$D2,$88                    ; 0xc199 $8189 86 D2 88                 ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Hatched_Window_1_wide_2_high_repeat_down_Cx: ;
    LDX      #$02                      ; 0xc19c $818C A2 02                    ; X = 02
L818E:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc19e $818E 20 44 C9           ; Set RAM Address for Object (0E-0F)
L8191:                                                                          ;
    LDA      bank3_Tile_Codes_for_House_Windows,x; 0xc1a1 $8191 BD 86 81           ;
    JSR      LDF56                     ; 0xc1a4 $8194 20 56 DF                 ; Set tile and go down 1 row
    LDA      L8189,x                   ; 0xc1a7 $8197 BD 89 81                 ; refer to table at $C186 (offset +3)
    STA      (L000E),y                 ; 0xc1aa $819A 91 0E                    ;
    TYA                                ; 0xc1ac $819C 98                       ;
    CLC                                ; 0xc1ad $819D 18                       ;
    ADC      #$20                      ; 0xc1ae $819E 69 20                    ;
    TAY                                ; 0xc1b0 $81A0 A8                       ;
    AND      #$F0                      ; 0xc1b1 $81A1 29 F0                    ; keep bits xxxx ....
L81A3:                                                                          ;
    CMP      #$A0                      ; 0xc1b3 $81A3 C9 A0                    ;
    BCC      L8191                     ; 0xc1b5 $81A5 90 EA                    ;
    RTS                                ; 0xc1b7 $81A7 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Indoor_Ceiling_3Step_Stairs_3_high_X_wide_3x: ;
    LDA      #$02                      ; 0xc1b8 $81A8 A9 02                    ; A = 02
    STA      $04                       ; 0xc1ba $81AA 85 04                    ;
    LDA      $0730                     ; 0xc1bc $81AC AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xc1bf $81AF 29 0F                    ; keep bits .... xxxx
L81B1:                                                                          ;
    ORA      #$20                      ; 0xc1c1 $81B1 09 20                    ; set bits  ..x. ....
    STA      $0730                     ; 0xc1c3 $81B3 8D 30 07                 ; Position of Object Placement
L81B6:                                                                          ;
    LDA      $0731                     ; 0xc1c6 $81B6 AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xc1c9 $81B9 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xc1cb $81BB AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc1cc $81BC 20 44 C9           ; Set RAM Address for Object (0E-0F)
L81BF:                                                                          ;
    LDA      #$44                      ; 0xc1cf $81BF A9 44                    ; A = 44
    JSR      bank7_Set_tile_and_move_right_1_column; 0xc1d1 $81C1 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0xc1d4 $81C4 CA                       ;
    BPL      L81BF                     ; 0xc1d5 $81C5 10 F8                    ;
    JSR      LDF4C                     ; 0xc1d7 $81C7 20 4C DF                 ; Go down 1 row
    INC      $0730                     ; 0xc1da $81CA EE 30 07                 ; Position of Object Placement
    DEC      $04                       ; 0xc1dd $81CD C6 04                    ;
    BPL      L81B6                     ; 0xc1df $81CF 10 E5                    ;
    RTS                                ; 0xc1e1 $81D1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Indoor_Ceiling_3Step_Stairs_3_high_X_wide_4x: ;
    LDA      #$02                      ; 0xc1e2 $81D2 A9 02                    ;  A = 02
    STA      $04                       ; 0xc1e4 $81D4 85 04                    ;
    LDA      $0730                     ; 0xc1e6 $81D6 AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xc1e9 $81D9 29 0F                    ; keep bits .... xxxx
    ORA      #$20                      ; 0xc1eb $81DB 09 20                    ; set bits  ..x. ....
    STA      $0730                     ; 0xc1ed $81DD 8D 30 07                 ; Position of Object Placement
L81E0:                                                                          ;
    LDA      $0731                     ; 0xc1f0 $81E0 AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xc1f3 $81E3 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xc1f5 $81E5 AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc1f6 $81E6 20 44 C9           ; Set RAM Address for Object (0E-0F)
L81E9:                                                                          ;
    LDA      #$44                      ; 0xc1f9 $81E9 A9 44                    ; A = 44
    JSR      bank7_Set_tile_and_move_right_1_column; 0xc1fb $81EB 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0xc1fe $81EE CA                       ;
    BPL      L81E9                     ; 0xc1ff $81EF 10 F8                    ;
    JSR      LDF4C                     ; 0xc201 $81F1 20 4C DF                 ; Go down 1 row
    DEC      $0731                     ; 0xc204 $81F4 CE 31 07                 ; Level Object Type and Size
    DEC      $04                       ; 0xc207 $81F7 C6 04                    ;
    BPL      L81E0                     ; 0xc209 $81F9 10 E5                    ;
    RTS                                ; 0xc20b $81FB 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Tile_Codes_for_Portals_and_Walls:                                         ;
.byt    $C1,$C1,$C1,$C1,$C1,$C1,$C0,$44; 0xc20c $81FC C1 C1 C1 C1 C1 C1 C0 44  ;
.byt    $44,$D6,$D6                    ; 0xc214 $8204 44 D6 D6                 ;
L8207:                                                                          ;
.byt    $D6,$C2,$C1,$C1,$C1,$C0,$44,$D6; 0xc217 $8207 D6 C2 C1 C1 C1 C0 44 D6  ;
.byt    $D6,$D6,$C3,$C1,$C1,$C1,$C1,$C0; 0xc21f $820F D6 D6 C3 C1 C1 C1 C1 C0  ;
.byt    $D6,$D6,$D6,$CA,$C8,$C8,$C8,$C8; 0xc227 $8217 D6 D6 D6 CA C8 C8 C8 C8  ;
.byt    $C7,$D6,$D6,$D6,$C9,$C8,$C8,$C8; 0xc22f $821F C7 D6 D6 D6 C9 C8 C8 C8  ;
.byt    $C7,$44,$C8,$C8,$C8,$C8,$C8,$C8; 0xc237 $8227 C7 44 C8 C8 C8 C8 C8 C8  ;
.byt    $C7,$44,$44,$C1,$C1,$C1,$C1,$C1; 0xc23f $822F C7 44 44 C1 C1 C1 C1 C1  ;
.byt    $C1,$E7,$44,$44,$C1,$C1,$C1,$C1; 0xc247 $8237 C1 E7 44 44 C1 C1 C1 C1  ;
.byt    $C1,$C1,$C1,$E7,$44,$E8,$E8,$E8; 0xc24f $823F C1 C1 C1 E7 44 E8 E8 E8  ;
.byt    $E8,$E8,$E8,$E8,$E8,$E7,$E6,$E6; 0xc257 $8247 E8 E8 E8 E8 E8 E7 E6 E6  ;
.byt    $E6,$E6,$E6,$E6,$E6,$E6,$E5,$C8; 0xc25f $824F E6 E6 E6 E6 E6 E6 E5 C8  ;
.byt    $C8,$C8,$C8,$C8,$C8,$C8,$E5,$44; 0xc267 $8257 C8 C8 C8 C8 C8 C8 E5 44  ;
.byt    $C8,$C8,$C8,$C8,$C8,$C8,$E5,$44; 0xc26f $825F C8 C8 C8 C8 C8 C8 E5 44  ;
.byt    $44                            ; 0xc277 $8267 44                       ;
bank3_Table_for_Portal_Wall_Tile_Codes_Offset:                                  ;
.byt    $1A,$35,$50,$6B                ; 0xc278 $8268 1A 35 50 6B              ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Portal_to_Left_00:                       ;
    LDY      #$00                      ; 0xc27c $826C A0 00                    ; Y = 00
    BEQ      L827A                     ; 0xc27e $826E F0 0A                    ;
bank3_SmallObjectsConstructionRoutines_Portal_to_Right_01:                      ;
    LDY      #$01                      ; 0xc280 $8270 A0 01                    ; Y = 01
    BNE      L827A                     ; 0xc282 $8272 D0 06                    ;
bank3_SmallObjectsConstructionRoutines_Wall_to_Left_02:                         ;
    LDY      #$02                      ; 0xc284 $8274 A0 02                    ; Y = 02
    BNE      L827A                     ; 0xc286 $8276 D0 02                    ;
bank3_SmallObjectsConstructionRoutines_Wall_to_Right_03:                        ;
    LDY      #$03                      ; 0xc288 $8278 A0 03                    ; Y = 03
L827A:                                                                          ;
    LDX      bank3_Table_for_Portal_Wall_Tile_Codes_Offset,y; 0xc28a $827A BE 68 82; refer to table at $C268		03:827A
    LDA      #$1A                      ; 0xc28d $827D A9 1A                    ; A = 1A
    STA      L0000                     ; 0xc28f $827F 85 00                    ;
    LDA      $0730                     ; 0xc291 $8281 AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xc294 $8284 29 0F                    ; keep bits .... xxxx
    ORA      #$20                      ; 0xc296 $8286 09 20                    ; set bits  ..x. ....
    STA      $0730                     ; 0xc298 $8288 8D 30 07                 ; Position of Object Placement
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc29b $828B 20 44 C9           ; Set RAM Address for Object (0E-0F)
L828E:                                                                          ;
    LDA      bank3_Tile_Codes_for_Portals_and_Walls,x; 0xc29e $828E BD FC 81       ;
    CMP      #$44                      ; 0xc2a1 $8291 C9 44                    ;
    BEQ      L8297                     ; 0xc2a3 $8293 F0 02                    ;
    STA      (L000E),y                 ; 0xc2a5 $8295 91 0E                    ;
L8297:                                                                          ;
    DEC      L0000                     ; 0xc2a7 $8297 C6 00                    ;
    DEX                                ; 0xc2a9 $8299 CA                       ;
    JSR      LDF58                     ; 0xc2aa $829A 20 58 DF                 ; Go down 1 row
    CMP      #$B0                      ; 0xc2ad $829D C9 B0                    ;
    BCC      L828E                     ; 0xc2af $829F 90 ED                    ;
    INC      $0730                     ; 0xc2b1 $82A1 EE 30 07                 ; Position of Object Placement
    LDY      $0730                     ; 0xc2b4 $82A4 AC 30 07                 ;; Position of Object Placement
    LDA      L0000                     ; 0xc2b7 $82A7 A5 00                    ;
    CMP      #$FF                      ; 0xc2b9 $82A9 C9 FF                    ;
    BNE      L828E                     ; 0xc2bb $82AB D0 E1                    ;
    RTS                                ; 0xc2bd $82AD 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_table0:                                                                   ;
.byt    $4D,$4C,$4B,$4B                ; 0xc2be $82AE 4D 4C 4B 4B              ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Table__08:                               ;
    LDX      #$03                      ; 0xc2c2 $82B2 A2 03                    ; X = 03
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc2c4 $82B4 20 44 C9           ; Set RAM Address for Object (0E-0F)
L82B7:                                                                          ;
    LDA      bank3_table0,x            ; 0xc2c7 $82B7 BD AE 82                 ; refer to table at $C2AE
    STA      (L000E),y                 ; 0xc2ca $82BA 91 0E                    ;
    INY                                ; 0xc2cc $82BC C8                       ;
    DEX                                ; 0xc2cd $82BD CA                       ;
    LDA      bank3_table0,x            ; 0xc2ce $82BE BD AE 82                 ;
    JSR      bank7_Set_tile_and_go_down_1_row_in_2x2_tiles_units; 0xc2d1 $82C1 20 4A DF; Set tile and go down 1 row
    TAY                                ; 0xc2d4 $82C4 A8                       ;
    DEX                                ; 0xc2d5 $82C5 CA                       ;
    BPL      L82B7                     ; 0xc2d6 $82C6 10 EF                    ;
    RTS                                ; 0xc2d8 $82C8 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_table1:                                                                   ;
.byt    $EA,$90,$8F,$EA,$8E,$8D        ; 0xc2d9 $82C9 EA 90 8F EA 8E 8D        ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Fireplace_04:                            ;
    LDX      #$05                      ; 0xc2df $82CF A2 05                    ; X = 05				;$82CF
    LDA      $0730                     ; 0xc2e1 $82D1 AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xc2e4 $82D4 29 0F                    ; keep bits .... xxxx
    ORA      #$90                      ; 0xc2e6 $82D6 09 90                    ; set bits  x..x ....
    STA      $0730                     ; 0xc2e8 $82D8 8D 30 07                 ; Position of Object Placement
L82DB:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc2eb $82DB 20 44 C9           ; Set RAM Address for Object (0E-0F)
L82DE:                                                                          ;
    LDA      bank3_table1,x            ; 0xc2ee $82DE BD C9 82                 ; refer to table at $C2C9
    STA      (L000E),y                 ; 0xc2f1 $82E1 91 0E                    ;
    DEX                                ; 0xc2f3 $82E3 CA                       ;
    JSR      LDF58                     ; 0xc2f4 $82E4 20 58 DF                 ; Go down 1 row
    AND      #$F0                      ; 0xc2f7 $82E7 29 F0                    ; keep bits xxxx ....
    CMP      #$C0                      ; 0xc2f9 $82E9 C9 C0                    ;
    BCC      L82DE                     ; 0xc2fb $82EB 90 F1                    ;
    INC      $0730                     ; 0xc2fd $82ED EE 30 07                 ; Position of Object Placement
    CPX      #$FF                      ; 0xc300 $82F0 E0 FF                    ;
    BNE      L82DB                     ; 0xc302 $82F2 D0 E7                    ;
    RTS                                ; 0xc304 $82F4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Undefined_Object_2_wide_extending_to_ground_04: ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc305 $82F5 20 44 C9           ; Set RAM Address for Object (0E-0F)
L82F8:                                                                          ;
    LDA      #$49                      ; 0xc308 $82F8 A9 49                    ; A = 49
    STA      (L000E),y                 ; 0xc30a $82FA 91 0E                    ;
    INY                                ; 0xc30c $82FC C8                       ;
    LDA      #$49                      ; 0xc30d $82FD A9 49                    ; A = 49
    JSR      bank7_Set_tile_and_go_down_1_row_in_2x2_tiles_units; 0xc30f $82FF 20 4A DF; Go down 1 row
    TAY                                ; 0xc312 $8302 A8                       ;
    AND      #$F0                      ; 0xc313 $8303 29 F0                    ; keep bits xxxx ....
    CMP      #$B0                      ; 0xc315 $8305 C9 B0                    ;
    BCC      L82F8                     ; 0xc317 $8307 90 EF                    ;
    RTS                                ; 0xc319 $8309 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Water_X_wide_Y_Position_A___7x:             ;
    LDA      $0730                     ; 0xc31a $830A AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xc31d $830D 29 0F                    ; keep bits .... xxxx
    ORA      #$B0                      ; 0xc31f $830F 09 B0                    ; set bits  x.xx ....
    STA      $0730                     ; 0xc321 $8311 8D 30 07                 ; Position of Object Placement
    LDA      #$40                      ; 0xc324 $8314 A9 40                    ; A = 40
    STA      L0000                     ; 0xc326 $8316 85 00                    ;
L8318:                                                                          ;
    LDA      $0731                     ; 0xc328 $8318 AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xc32b $831B 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xc32d $831D AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc32e $831E 20 44 C9           ;
L8321:                                                                          ;
    LDA      L0000                     ; 0xc331 $8321 A5 00                    ;
    JSR      bank7_Set_tile_and_move_right_1_column; 0xc333 $8323 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0xc336 $8326 CA                       ;
    BPL      L8321                     ; 0xc337 $8327 10 F8                    ;
    LDA      #$92                      ; 0xc339 $8329 A9 92                    ; A = 92
    STA      L0000                     ; 0xc33b $832B 85 00                    ;
    JSR      LDF4C                     ; 0xc33d $832D 20 4C DF                 ;
    AND      #$F0                      ; 0xc340 $8330 29 F0                    ; keep bits xxxx ....
    CMP      #$D0                      ; 0xc342 $8332 C9 D0                    ;
    BCC      L8318                     ; 0xc344 $8334 90 E2                    ;
    RTS                                ; 0xc346 $8336 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Tile_Codes_for_Special_Object_2x:                                         ;
.byt    $D3,$CC,$CC                    ; 0xc347 $8337 D3 CC CC                 ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Background_wall_3_wide_X_high_Y_Position_4_2x: ;
    LDA      $0731                     ; 0xc34a $833A AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xc34d $833D 29 0F                    ; keep bits .... xxxx
    STA      $0731                     ; 0xc34f $833F 8D 31 07                 ;; Level Object Type and Size
    LDA      $0730                     ; 0xc352 $8342 AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xc355 $8345 29 0F                    ; keep bits .... xxxx
    ORA      #$40                      ; 0xc357 $8347 09 40                    ; set bits  .x.. ....
    STA      $0730                     ; 0xc359 $8349 8D 30 07                 ;; Position of Object Placement
L834C:                                                                          ;
    LDX      #$02                      ; 0xc35c $834C A2 02                    ; X = 02
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc35e $834E 20 44 C9           ; Set RAM Address for Object (0E-0F)
L8351:                                                                          ;
    LDA      bank3_Tile_Codes_for_Special_Object_2x,x; 0xc361 $8351 BD 37 83       ; refer to table at $C337
    STA      (L000E),y                 ; 0xc364 $8354 91 0E                    ;
    INY                                ; 0xc366 $8356 C8                       ;
    DEX                                ; 0xc367 $8357 CA                       ;
    BPL      L8351                     ; 0xc368 $8358 10 F7                    ;
    JSR      LDF4C                     ; 0xc36a $835A 20 4C DF                 ; Go down 1 row
    DEC      $0731                     ; 0xc36d $835D CE 31 07                 ; Level Object Type and Size
    BPL      L834C                     ; 0xc370 $8360 10 EA                    ;
    RTS                                ; 0xc372 $8362 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Tile_Codes_for_Bridge_with_Water:                                         ;
.byt    $92,$56,$51                    ; 0xc373 $8363 92 56 51                 ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Bridge_with_Water_X_wide_Y_Position_A_6x:   ;
    LDA      #$02                      ; 0xc376 $8366 A9 02                    ; A = 02
L8368:                                                                          ;
    STA      L0000                     ; 0xc378 $8368 85 00                    ;
    LDA      $0730                     ; 0xc37a $836A AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xc37d $836D 29 0F                    ; keep bits .... xxxx
    ORA      #$A0                      ; 0xc37f $836F 09 A0                    ; set  bits x.x. ....
    STA      $0730                     ; 0xc381 $8371 8D 30 07                 ; Position of Object Placement
L8374:                                                                          ;
    LDX      L0000                     ; 0xc384 $8374 A6 00                    ;
    LDA      bank3_Tile_Codes_for_Bridge_with_Water,x; 0xc386 $8376 BD 63 83       ;
    STA      $01                       ; 0xc389 $8379 85 01                    ;
    LDA      $0731                     ; 0xc38b $837B AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xc38e $837E 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xc390 $8380 AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc391 $8381 20 44 C9           ; Set RAM Address for Object (0E-0F)
L8384:                                                                          ;
    LDA      $01                       ; 0xc394 $8384 A5 01                    ;
    JSR      bank7_Set_tile_and_move_right_1_column; 0xc396 $8386 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0xc399 $8389 CA                       ;
    BPL      L8384                     ; 0xc39a $838A 10 F8                    ;
    JSR      LDF4C                     ; 0xc39c $838C 20 4C DF                 ; Go down 1 row
    DEC      L0000                     ; 0xc39f $838F C6 00                    ;
    BPL      L8374                     ; 0xc3a1 $8391 10 E1                    ;
    RTS                                ; 0xc3a3 $8393 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Tile_Codes_for_Doors:                                                     ;
.byt    $53,$8B,$8A,$89,$54,$91,$91,$8C; 0xc3a4 $8394 53 8B 8A 89 54 91 91 8C  ;
.byt    $EA,$91,$91,$8C,$58            ; 0xc3ac $839C EA 91 91 8C 58           ;
L83A1:                                                                          ;
.byt    $91,$91,$8C                    ; 0xc3b1 $83A1 91 91 8C                 ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Closed_Door_with_Grass_00:               ;
    LDA      #$00                      ; 0xc3b4 $83A4 A9 00                    ; A = 00
    BEQ      L83B2                     ; 0xc3b6 $83A6 F0 0A                    ;
bank3_SmallObjectsConstructionRoutines_Open_Door_with_Grass_01:                 ;
    LDA      #$01                      ; 0xc3b8 $83A8 A9 01                    ; A = 01
    BNE      L83B2                     ; 0xc3ba $83AA D0 06                    ;
bank3_SmallObjectsConstructionRoutines_Open_Door_with_Lines_02:                 ;
    LDA      #$02                      ; 0xc3bc $83AC A9 02                    ; A = 02
    BNE      L83B2                     ; 0xc3be $83AE D0 02                    ;
bank3_SmallObjectsConstructionRoutines_Open_Door_with_Bricks_03:                ;
    LDA      #$03                      ; 0xc3c0 $83B0 A9 03                    ; A = 03
L83B2:                                                                          ;
    ASL                                ; 0xc3c2 $83B2 0A                       ;
    ASL                                ; 0xc3c3 $83B3 0A                       ;
    ORA      #$03                      ; 0xc3c4 $83B4 09 03                    ; set  bits .... ..xx
    TAX                                ; 0xc3c6 $83B6 AA                       ;
    LDA      #$03                      ; 0xc3c7 $83B7 A9 03                    ; A = 03
    STA      L0000                     ; 0xc3c9 $83B9 85 00                    ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc3cb $83BB 20 44 C9           ; Set RAM Address for Object (0E-0F)
L83BE:                                                                          ;
    LDA      bank3_Tile_Codes_for_Doors,x; 0xc3ce $83BE BD 94 83                 ;
    JSR      LDF56                     ; 0xc3d1 $83C1 20 56 DF                 ; Set tile and go down 1 row
    DEX                                ; 0xc3d4 $83C4 CA                       ;
    DEC      L0000                     ; 0xc3d5 $83C5 C6 00                    ;
    BPL      L83BE                     ; 0xc3d7 $83C7 10 F5                    ;
    RTS                                ; 0xc3d9 $83C9 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Table_2_for_Area_Objects_Tile_Mappings:                                   ;
.byt    $42,$42,$42,$42,$42            ; 0xc3da $83CA 42 42 42 42 42           ;
L83CF:                                                                          ;
.byt    $42,$FF,$FF,$37,$37,$37,$37,$37; 0xc3df $83CF 42 FF FF 37 37 37 37 37  ;
.byt    $37,$FF,$FF,$45,$45,$45,$45,$45; 0xc3e7 $83D7 37 FF FF 45 45 45 45 45  ;
.byt    $FF,$45,$FF,$5F,$5F,$5F,$5F,$3C; 0xc3ef $83DF FF 45 FF 5F 5F 5F 5F 3C  ;
.byt    $3D,$3E,$3F,$3D,$3D,$3F,$3F,$49; 0xc3f7 $83E7 3D 3E 3F 3D 3D 3F 3F 49  ;
.byt    $40,$4A,$40,$40,$41,$40,$40,$40; 0xc3ff $83EF 40 4A 40 40 41 40 40 40  ;
.byt    $47,$40,$48,$49,$FF,$4A,$FF,$55; 0xc407 $83F7 47 40 48 49 FF 4A FF 55  ;
.byt    $55,$55,$F4,$55,$55,$F4,$F4,$55; 0xc40f $83FF 55 55 F4 55 55 F4 F4 55  ;
.byt    $F4,$55                        ; 0xc417 $8407 F4 55                    ;
L8409:                                                                          ;
.byt    $55,$F4,$F4,$55,$55,$FF,$FF,$FF; 0xc419 $8409 55 F4 F4 55 55 FF FF FF  ;
.byt    $FF,$98,$99,$98,$99,$A5,$A5,$A6; 0xc421 $8411 FF 98 99 98 99 A5 A5 A6  ;
.byt    $A6,$8E,$8F,$90,$91,$AF,$B0,$B1; 0xc429 $8419 A6 8E 8F 90 91 AF B0 B1  ;
.byt    $B2,$2C,$2D,$F5,$F5,$F5,$F5,$2E; 0xc431 $8421 B2 2C 2D F5 F5 F5 F5 2E  ;
.byt    $2F,$9A,$9B,$9A,$9B            ; 0xc439 $8429 2F 9A 9B 9A 9B           ;
bank3_Table_3_for_Area_Objects_Tile_Mappings:                                   ;
.byt    $57,$56,$F4,$57,$56,$56,$56,$56; 0xc43e $842E 57 56 F4 57 56 56 56 56  ;
.byt    $56,$58,$56,$59,$58,$FF,$59,$FF; 0xc446 $8436 56 58 56 59 58 FF 59 FF  ;
.byt    $B3,$B4,$B5,$B6,$B5,$B6,$B7,$B8; 0xc44e $843E B3 B4 B5 B6 B5 B6 B7 B8  ;
.byt    $B7,$B8,$F4,$F4,$F4,$5B,$5B,$5A; 0xc456 $8446 B7 B8 F4 F4 F4 5B 5B 5A  ;
.byt    $5A,$5A,$5A,$5A,$5A,$5C,$5A,$5D; 0xc45e $844E 5A 5A 5A 5A 5A 5C 5A 5D  ;
.byt    $5C,$FF,$5D,$FF,$54,$54,$54,$54; 0xc466 $8456 5C FF 5D FF 54 54 54 54  ;
.byt    $55,$55,$55,$55,$43,$43,$43,$43; 0xc46e $845E 55 55 55 55 43 43 43 43  ;
.byt    $43,$43,$FF,$FF,$46,$46,$46,$46; 0xc476 $8466 43 43 FF FF 46 46 46 46  ;
.byt    $46,$FF                        ; 0xc47e $846E 46 FF                    ;
L8470:                                                                          ;
.byt    $46,$FF,$38,$39,$3A,$3B,$39,$39; 0xc480 $8470 46 FF 38 39 3A 3B 39 39  ;
.byt    $3B,$3B,$F4,$F4,$F4,$F4,$FD,$FD; 0xc488 $8478 3B 3B F4 F4 F4 F4 FD FD  ;
.byt    $FD,$FD,$FE,$FE,$FE,$FE,$FF,$FF; 0xc490 $8480 FD FD FE FE FE FE FF FF  ;
.byt    $FF,$FF,$F4,$74,$F4,$75,$F4,$75; 0xc498 $8488 FF FF F4 74 F4 75 F4 75  ;
.byt    $F4,$75,$F4,$7A,$77,$78,$7B,$75; 0xc4a0 $8490 F4 75 F4 7A 77 78 7B 75  ;
.byt    $79,$75,$F4,$75,$F4,$76,$AD,$AE; 0xc4a8 $8498 79 75 F4 75 F4 76 AD AE  ;
.byt    $F4,$F4,$28,$29,$2A,$2B,$F4,$F4; 0xc4b0 $84A0 F4 F4 28 29 2A 2B F4 F4  ;
.byt    $F4,$30,$30,$31,$31,$30,$30,$49; 0xc4b8 $84A8 F4 30 30 31 31 30 30 49  ;
.byt    $31,$4A,$F4,$31,$F4,$F4,$30,$30; 0xc4c0 $84B0 31 4A F4 31 F4 F4 30 30  ;
.byt    $31,$31,$F4,$50,$F4,$51,$60,$60; 0xc4c8 $84B8 31 31 F4 50 F4 51 60 60  ;
.byt    $61,$61,$F4,$5B,$5B,$5A,$5A,$5A; 0xc4d0 $84C0 61 61 F4 5B 5B 5A 5A 5A  ;
.byt    $5A,$5A,$57,$56,$F4,$57,$56,$56; 0xc4d8 $84C8 5A 5A 57 56 F4 57 56 56  ;
.byt    $56,$56,$5E,$5E,$5E,$5E,$5E,$5E; 0xc4e0 $84D0 56 56 5E 5E 5E 5E 5E 5E  ;
L84D8:                                                                          ;
.byt    $5E,$5E                        ; 0xc4e8 $84D8 5E 5E                    ;
bank3_UNUSED_84DA:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xc4ea $84DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xc4f2 $84E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xc4fa $84EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xc502 $84F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0xc50a $84FA FF FF FF FF FF FF        ;
; ---------------------------------------------------------------------------- ;
bank3_Pointer_table_for_Objects_Tile_Mappings:                                  ;
.word    bank3_Table_0_1_for_Area_Objects_Tile_Mappings; 0xc510 $8500 A2 86    ;
.word    bank3_Table_0_1_for_Area_Objects_Tile_Mappings; 0xc512 $8502 A2 86    ;
.word    bank3_Table_2_for_Area_Objects_Tile_Mappings; 0xc514 $8504 CA 83      ;
.word    bank3_Table_3_for_Area_Objects_Tile_Mappings; 0xc516 $8506 2E 84      ;
; ---------------------------------------------------------------------------- ;
bank3_unused_table:                                                             ;
.byt    $FF                            ; 0xc518 $8508 FF                       ;
L8509:                                                                          ;
.byt    $FF,$FF,$FF                    ; 0xc519 $8509 FF FF FF                 ;
; ---------------------------------------------------------------------------- ;
bank3_code7:                                                                    ;
    PHA                                ; 0xc51c $850C 48                       ;
    AND      #$C0                      ; 0xc51d $850D 29 C0                    ; keep bits xx.. ....
    CLC                                ; 0xc51f $850F 18                       ;
    ROL                                ; 0xc520 $8510 2A                       ;
    ROL                                ; 0xc521 $8511 2A                       ;
    ROL                                ; 0xc522 $8512 2A                       ;
    TAY                                ; 0xc523 $8513 A8                       ;
    DEY                                ; 0xc524 $8514 88                       ;
    PLA                                ; 0xc525 $8515 68                       ;
    CMP      L870E,y                   ; 0xc526 $8516 D9 0E 87                 ;
    RTS                                ; 0xc529 $8519 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_table3:                                                                   ;
.byt    $54                            ; 0xc52a $851A 54                       ;
L851B:                                                                          ;
.byt    $EA                            ; 0xc52b $851B EA                       ;
L851C:                                                                          ;
.byt    $58,$59                        ; 0xc52c $851C 58 59                    ;
L851E:                                                                          ;
.byt    $00                            ; 0xc52e $851E 00                       ;
L851F:                                                                          ;
.byt    $00                            ; 0xc52f $851F 00                       ;
L8520:                                                                          ;
.byt    $92                            ; 0xc530 $8520 92                       ;
L8521:                                                                          ;
.byt    $00                            ; 0xc531 $8521 00                       ;
L8522:                                                                          ;
.byt    $00                            ; 0xc532 $8522 00                       ;
; ---------------------------------------------------------------------------- ;
bank3_Area_Pointers__Towns:                                                     ;
.word    bank3_Area_Data_Towns1        ; 0xc533 $8523 C0 89                    ;
.word    bank3_Area_Data_Towns1        ; 0xc535 $8525 C0 89                    ;
.word    L89F6                         ; 0xc537 $8527 F6 89                    ;
.word    L8A28                         ; 0xc539 $8529 28 8A                    ;
.word    L8A28                         ; 0xc53b $852B 28 8A                    ;
.word    L8A48                         ; 0xc53d $852D 48 8A                    ;
.word    L8A76                         ; 0xc53f $852F 76 8A                    ;
.word    L8A90                         ; 0xc541 $8531 90 8A                    ;
.word    L8AC4                         ; 0xc543 $8533 C4 8A                    ;
.word    L8AE8                         ; 0xc545 $8535 E8 8A                    ;
.word    L8B10                         ; 0xc547 $8537 10 8B                    ;
.word    L8B48                         ; 0xc549 $8539 48 8B                    ;
.word    bank3_Area_Data_Towns4        ; 0xc54b $853B 00 A0                    ;
.word    LA02C                         ; 0xc54d $853D 2C A0                    ;
.word    LA05A                         ; 0xc54f $853F 5A A0                    ;
.word    LA08C                         ; 0xc551 $8541 8C A0                    ;
.word    LA0C4                         ; 0xc553 $8543 C4 A0                    ;
.word    LA100                         ; 0xc555 $8545 00 A1                    ;
.word    LA144                         ; 0xc557 $8547 44 A1                    ;
.word    LA180                         ; 0xc559 $8549 80 A1                    ;
.word    LA1BC                         ; 0xc55b $854B BC A1                    ;
.word    LA1C6                         ; 0xc55d $854D C6 A1                    ;
.word    LA1EA                         ; 0xc55f $854F EA A1                    ;
.word    LA214                         ; 0xc561 $8551 14 A2                    ;
.word    L8B82                         ; 0xc563 $8553 82 8B                    ;
.word    bank3_Area_Data_Towns3        ; 0xc565 $8555 C2 9C                    ;
L8558     = * + $0001                                                          ;
.word    bank3_Area_Data               ; 0xc567 $8557 F0 90                    ;
.word    bank3_Area_Data               ; 0xc569 $8559 F0 90                    ;
.word    bank3_Area_Data_Towns3        ; 0xc56b $855B C2 9C                    ;
.word    bank3_Area_Data_Towns3        ; 0xc56d $855D C2 9C                    ;
.word    bank3_Area_Data_Towns3        ; 0xc56f $855F C2 9C                    ;
.word    bank3_Area_Data_Towns3        ; 0xc571 $8561 C2 9C                    ;
.word    bank3_Area_Data_Towns3        ; 0xc573 $8563 C2 9C                    ;
.word    bank3_Area_Data_Towns3        ; 0xc575 $8565 C2 9C                    ;
.word    bank3_Area_Data_Towns3        ; 0xc577 $8567 C2 9C                    ;
.word    bank3_Area_Data_Towns3        ; 0xc579 $8569 C2 9C                    ;
.word    bank3_Background_Areas_Data   ; 0xc57b $856B 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc57d $856D 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc57f $856F 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc581 $8571 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc583 $8573 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc585 $8575 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc587 $8577 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc589 $8579 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc58b $857B 48 9B                    ;
.word    bank3_Background_Areas_Data   ; 0xc58d $857D 48 9B                    ;
.word    bank3_Area_Data_Towns2        ; 0xc58f $857F 74 9B                    ;
.word    L9B7D                         ; 0xc591 $8581 7D 9B                    ;
.word    bank3_Area_Data               ; 0xc593 $8583 F0 90                    ;
.word    bank3_Area_Data               ; 0xc595 $8585 F0 90                    ;
.word    bank3_Area_Data               ; 0xc597 $8587 F0 90                    ;
.word    bank3_Area_Data               ; 0xc599 $8589 F0 90                    ;
.word    bank3_Area_Data               ; 0xc59b $858B F0 90                    ;
.word    bank3_Area_Data               ; 0xc59d $858D F0 90                    ;
.word    bank3_Area_Data               ; 0xc59f $858F F0 90                    ;
.word    bank3_Area_Data               ; 0xc5a1 $8591 F0 90                    ;
.word    bank3_Area_Data               ; 0xc5a3 $8593 F0 90                    ;
.word    bank3_Area_Data               ; 0xc5a5 $8595 F0 90                    ;
.word    bank3_Area_Data               ; 0xc5a7 $8597 F0 90                    ;
.word    bank3_Area_Data               ; 0xc5a9 $8599 F0 90                    ;
.word    L8A66                         ; 0xc5ab $859B 66 8A                    ;
.word    bank3_Area_Data_Towns3        ; 0xc5ad $859D C2 9C                    ;
.word    bank3_Area_Data_Towns3        ; 0xc5af $859F C2 9C                    ;
bank3_Enemy_Pointers__Towns:                                                    ;
.word    L7000                         ; 0xc5b1 $85A1 00 70                    ;; Enemy Data
.word    L7000                         ; 0xc5b3 $85A3 00 70                    ;; Enemy Data
.word    L700D                         ; 0xc5b5 $85A5 0D 70                    ;
.word    L7018                         ; 0xc5b7 $85A7 18 70                    ;
.word    L7018                         ; 0xc5b9 $85A9 18 70                    ;
.word    L7025                         ; 0xc5bb $85AB 25 70                    ;
.word    L7033                         ; 0xc5bd $85AD 33 70                    ;
.word    L7036                         ; 0xc5bf $85AF 36 70                    ;
.word    L7041                         ; 0xc5c1 $85B1 41 70                    ;
.word    L704C                         ; 0xc5c3 $85B3 4C 70                    ;
.word    L7057                         ; 0xc5c5 $85B5 57 70                    ;
.word    L7062                         ; 0xc5c7 $85B7 62 70                    ;
.word    L7091                         ; 0xc5c9 $85B9 91 70                    ;
.word    L709C                         ; 0xc5cb $85BB 9C 70                    ;
.word    L70A9                         ; 0xc5cd $85BD A9 70                    ;
.word    L70B2                         ; 0xc5cf $85BF B2 70                    ;
.word    L70BF                         ; 0xc5d1 $85C1 BF 70                    ;
.word    L70C8                         ; 0xc5d3 $85C3 C8 70                    ;
.word    L70D5                         ; 0xc5d5 $85C5 D5 70                    ;
.word    L70E4                         ; 0xc5d7 $85C7 E4 70                    ;
.word    L70EF                         ; 0xc5d9 $85C9 EF 70                    ;
.word    L70F0                         ; 0xc5db $85CB F0 70                    ;
.word    L70F0                         ; 0xc5dd $85CD F0 70                    ;
.word    L710F                         ; 0xc5df $85CF 0F 71                    ;
.word    L7032                         ; 0xc5e1 $85D1 32 70                    ;
.word    L7032                         ; 0xc5e3 $85D3 32 70                    ;
.word    L710C                         ; 0xc5e5 $85D5 0C 71                    ;
.word    L70EF                         ; 0xc5e7 $85D7 EF 70                    ;
.word    L707B                         ; 0xc5e9 $85D9 7B 70                    ;
.word    L7080                         ; 0xc5eb $85DB 80 70                    ;
.word    L7085                         ; 0xc5ed $85DD 85 70                    ;
.word    L7070                         ; 0xc5ef $85DF 70 70                    ;
.word    L7101                         ; 0xc5f1 $85E1 01 71                    ;
.word    L7106                         ; 0xc5f3 $85E3 06 71                    ;
.word    L7109                         ; 0xc5f5 $85E5 09 71                    ;
.word    L711D                         ; 0xc5f7 $85E7 1D 71                    ;
.word    L7075                         ; 0xc5f9 $85E9 75 70                    ;
.word    L7075                         ; 0xc5fb $85EB 75 70                    ;
.word    L7075                         ; 0xc5fd $85ED 75 70                    ;
.word    L7075                         ; 0xc5ff $85EF 75 70                    ;
.word    L7075                         ; 0xc601 $85F1 75 70                    ;
.word    L7075                         ; 0xc603 $85F3 75 70                    ;
.word    L7075                         ; 0xc605 $85F5 75 70                    ;
.word    L7075                         ; 0xc607 $85F7 75 70                    ;
.word    L7078                         ; 0xc609 $85F9 78 70                    ;
.word    L7078                         ; 0xc60b $85FB 78 70                    ;
.word    L70EF                         ; 0xc60d $85FD EF 70                    ;
.word    L70EF                         ; 0xc60f $85FF EF 70                    ;
.word    L706D                         ; 0xc611 $8601 6D 70                    ;
.word    L7032                         ; 0xc613 $8603 32 70                    ;
.word    L7032                         ; 0xc615 $8605 32 70                    ;
.word    L7032                         ; 0xc617 $8607 32 70                    ;
.word    L70EF                         ; 0xc619 $8609 EF 70                    ;
.word    L70EF                         ; 0xc61b $860B EF 70                    ;
.word    L70EF                         ; 0xc61d $860D EF 70                    ;
.word    L70EF                         ; 0xc61f $860F EF 70                    ;
.word    L7032                         ; 0xc621 $8611 32 70                    ;
.word    L70EF                         ; 0xc623 $8613 EF 70                    ;
.word    L711A                         ; 0xc625 $8615 1A 71                    ;
.word    L70EF                         ; 0xc627 $8617 EF 70                    ;
.word    L708E                         ; 0xc629 $8619 8E 70                    ;
.word    L7000                         ; 0xc62b $861B 00 70                    ;; Enemy Data
.word    L7000                         ; 0xc62d $861D 00 70                    ;; Enemy Data
; ---------------------------------------------------------------------------- ;
bank3_Tables_for_Level_Layers_Data:                                             ;
.byt    $42,$42,$42,$55,$42,$42,$55,$55; 0xc62f $861F 42 42 42 55 42 42 55 55  ;
.byt    $55,$40,$40,$40,$E9,$40,$40,$CB; 0xc637 $8627 55 40 40 40 E9 40 40 CB  ;
.byt    $CB,$E9,$40,$40,$40,$53,$40,$40; 0xc63f $862F CB E9 40 40 40 53 40 40  ;
.byt    $53,$53,$53,$40,$40,$40,$53,$40; 0xc647 $8637 53 53 53 40 40 40 53 40  ;
.byt    $40,$53,$53,$53                ; 0xc64f $863F 40 53 53 53              ;
bank3_Table_for_Level_Layers_Data_pointers:                                     ;
.byt    $1F,$28,$31,$3A                ; 0xc653 $8643 1F 28 31 3A              ;Pointer created from 86 (C650) and a value from this table
; ---------------------------------------------------------------------------- ;
bank3_Build_a_pointer_with_86_and_a_value_from_C643:                            ;
    LDX      $010C                     ; 0xc657 $8647 AE 0C 01                 ;; Area Palette Group (Type of Area)	; Area Ground Type (0-7)
    LDA      bank3_Table_for_Level_Layers_Data_pointers,x; 0xc65a $864A BD 43 86   ;
    STA      $0C                       ; 0xc65d $864D 85 0C                    ;
    LDA      #$86                      ; 0xc65f $864F A9 86                    ; A = 86
    STA      $0D                       ; 0xc661 $8651 85 0D                    ;
    LDY      #$08                      ; 0xc663 $8653 A0 08                    ; Y = 08
    LDA      ($0C),y                   ; 0xc665 $8655 B1 0C                    ;
    STA      $010D                     ; 0xc667 $8657 8D 0D 01                 ;; Area Bottom Row Tile Code
    RTS                                ; 0xc66a $865A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Bagu_maybe_confused_red_lumberjack__5x:     ;
    LDA      $010A                     ; 0xc66b $865B AD 0A 01                 ;
    STA      $0757                     ; 0xc66e $865E 8D 57 07                 ;; Position of Elevator in Map
    RTS                                ; 0xc671 $8661 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Cloud__Long_06:                          ;
    LDX      #$00                      ; 0xc672 $8662 A2 00                    ; X = 00
    BEQ      L866A                     ; 0xc674 $8664 F0 04                    ;
bank3_Tile_Codes_for_Clouds_LongShort:                                          ;
.byt    $C5,$C6                        ; 0xc676 $8666 C5 C6                    ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Cloud__Short_07:                         ;
    LDX      #$01                      ; 0xc678 $8668 A2 01                    ; X = 01
L866A:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc67a $866A 20 44 C9           ;
    LDA      #$C4                      ; 0xc67d $866D A9 C4                    ; A = C4
    STA      (L000E),y                 ; 0xc67f $866F 91 0E                    ;
    INY                                ; 0xc681 $8671 C8                       ;
    LDA      bank3_Tile_Codes_for_Clouds_LongShort,x; 0xc682 $8672 BD 66 86        ;
    STA      (L000E),y                 ; 0xc685 $8675 91 0E                    ;
    RTS                                ; 0xc687 $8677 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Churchbell_0D:                           ;
    LDX      #$02                      ; 0xc688 $8678 A2 02                    ; X = 02
    BNE      L8685                     ; 0xc68a $867A D0 09                    ;
bank3_SmallObjectsConstructionRoutines_Cross__0A:                               ;
    LDX      #$00                      ; 0xc68c $867C A2 00                    ; X = 00
    BEQ      L8685                     ; 0xc68e $867E F0 05                    ;
L8680:                                                                          ;
.byt    $DC                            ; 0xc690 $8680 DC                       ;
bank3_table4:                                                                   ;
.byt    $4A,$DD                        ; 0xc691 $8681 4A DD                    ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Chair__05:                               ;
    LDX      #$01                      ; 0xc693 $8683 A2 01                    ; X = 01
L8685:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc695 $8685 20 44 C9           ; Set RAM Address for Object (0E-0F)
    LDA      L8680,x                   ; 0xc698 $8688 BD 80 86                 ;
    STA      (L000E),y                 ; 0xc69b $868B 91 0E                    ;
    RTS                                ; 0xc69d $868D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Tile_Codes_for_Bench:                                                     ;
.byt    $48,$48,$47,$46,$46            ; 0xc69e $868E 48 48 47 46 46           ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Bench__09:                               ;
    LDX      #$04                      ; 0xc6a3 $8693 A2 04                    ; X = 04
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xc6a5 $8695 20 44 C9           ; Set RAM Address for Object (0E-0F)
L8698:                                                                          ;
    LDA      bank3_Tile_Codes_for_Bench,x; 0xc6a8 $8698 BD 8E 86                 ;
    STA      (L000E),y                 ; 0xc6ab $869B 91 0E                    ;
    INY                                ; 0xc6ad $869D C8                       ;
    DEX                                ; 0xc6ae $869E CA                       ;
    BPL      L8698                     ; 0xc6af $869F 10 F7                    ;
    RTS                                ; 0xc6b1 $86A1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Table_0_1_for_Area_Objects_Tile_Mappings:                                 ;
.byt    $F4,$F4,$F4,$F4,$F0,$F0,$F1,$F1; 0xc6b2 $86A2 F4 F4 F4 F4 F0 F0 F1 F1  ;
.byt    $52,$53,$53,$52,$53,$53,$54,$54; 0xc6ba $86AA 52 53 53 52 53 53 54 54  ;
.byt    $F4,$F4,$F4,$F4,$4C,$4D,$4E,$4F; 0xc6c2 $86B2 F4 F4 F4 F4 4C 4D 4E 4F  ;
.byt    $62,$63,$62,$F4,$62,$F4,$62,$F4; 0xc6ca $86BA 62 63 62 F4 62 F4 62 F4  ;
.byt    $62,$F4,$62,$63,$60,$61,$60,$61; 0xc6d2 $86C2 62 F4 62 63 60 61 60 61  ;
.byt    $6C,$6D,$6E,$6F,$69,$68,$69,$68; 0xc6da $86CA 6C 6D 6E 6F 69 68 69 68  ;
.byt    $6A,$6B,$6A,$F4,$6A,$F4,$6A,$6B; 0xc6e2 $86D2 6A 6B 6A F4 6A F4 6A 6B  ;
.byt    $44,$44,$44,$44,$44,$44,$FF,$FF; 0xc6ea $86DA 44 44 44 44 44 44 FF FF  ;
.byt    $C3,$C3,$C4,$C4,$F4,$7C,$F4,$7C; 0xc6f2 $86E2 C3 C3 C4 C4 F4 7C F4 7C  ;
.byt    $46,$FF,$46,$FF,$4B,$4B,$4B,$4B; 0xc6fa $86EA 46 FF 46 FF 4B 4B 4B 4B  ;
.byt    $4B,$4B,$4B,$4B,$70,$71,$72,$73; 0xc702 $86F2 4B 4B 4B 4B 70 71 72 73  ;
.byt    $7D,$F4,$7D,$F4,$46,$46,$46,$46; 0xc70a $86FA 7D F4 7D F4 46 46 46 46  ;
.byt    $46,$46,$46,$46,$42,$42,$42,$42; 0xc712 $8702 46 46 46 46 42 42 42 42  ;
.byt    $42,$42,$42,$42                ; 0xc71a $870A 42 42 42 42              ;
L870E:                                                                          ;
.byt    $53,$FF,$E5,$FF,$FF,$FF,$FF,$FF; 0xc71e $870E 53 FF E5 FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0xc726 $8716 FF FF FF FF FF           ;
bank3_Room_Connectivity_Data_size_unknown:                                      ;
.byt    $FD,$FC,$FC,$FC,$FD,$00,$00,$08; 0xc72b $871B FD FC FC FC FD 00 00 08  ;
.byt    $07,$00,$00,$FD,$FD,$FC,$FC,$FC; 0xc733 $8723 07 00 00 FD FD FC FC FC  ;
.byt    $FD,$00,$00,$14,$13,$00,$00,$FD; 0xc73b $872B FD 00 00 14 13 00 00 FD  ;
.byt    $FC,$00,$00,$1C,$1B,$00,$00,$20; 0xc743 $8733 FC 00 00 1C 1B 00 00 20  ;
.byt    $1F,$00,$00,$FD,$FD,$00,$00,$28; 0xc74b $873B 1F 00 00 FD FD 00 00 28  ;
.byt    $27,$00,$00,$2C,$2B,$00,$00,$FD; 0xc753 $8743 27 00 00 2C 2B 00 00 FD  ;
.byt    $FD,$00,$00,$34,$33,$00,$00,$38; 0xc75b $874B FD 00 00 34 33 00 00 38  ;
.byt    $37,$00,$00,$FD,$FD,$00,$00,$40; 0xc763 $8753 37 00 00 FD FD 00 00 40  ;
.byt    $3F,$00,$00,$44,$43,$00,$00,$FD; 0xc76b $875B 3F 00 00 44 43 00 00 FD  ;
.byt    $FC,$00,$00,$4C,$4B,$00,$00,$50; 0xc773 $8763 FC 00 00 4C 4B 00 00 50  ;
.byt    $4F,$00,$00,$FD,$FD,$00,$00,$58; 0xc77b $876B 4F 00 00 FD FD 00 00 58  ;
.byt    $57,$00,$00,$5C,$5B,$00,$00,$FD; 0xc783 $8773 57 00 00 5C 5B 00 00 FD  ;
.byt    $FC,$00,$00,$FC,$00,$00,$00,$00; 0xc78b $877B FC 00 00 FC 00 00 00 00  ;
.byt    $00,$00,$4D,$4D,$00,$00,$00,$00; 0xc793 $8783 00 00 4D 4D 00 00 00 00  ;
.byt    $00,$05,$00,$09,$00,$12,$14,$00; 0xc79b $878B 00 05 00 09 00 12 14 00  ;
.byt    $1F,$1B,$1D,$1A,$00,$60,$2C,$00; 0xc7a3 $8793 1F 1B 1D 1A 00 60 2C 00  ;
L879B:                                                                          ;
.byt    $00,$39,$32,$00,$00,$56,$46,$00; 0xc7ab $879B 00 39 32 00 00 56 46 00  ;
.byt    $57,$58,$50,$4A,$5D,$5A,$59,$58; 0xc7b3 $87A3 57 58 50 4A 5D 5A 59 58  ;
.byt    $C1,$00,$00,$00,$C5,$00,$00,$00; 0xc7bb $87AB C1 00 00 00 C5 00 00 00  ;
.byt    $C9,$00,$00,$00,$CD,$00,$00,$00; 0xc7c3 $87B3 C9 00 00 00 CD 00 00 00  ;
.byt    $D1,$00,$00,$00,$D5,$00,$00,$00; 0xc7cb $87BB D1 00 00 00 D5 00 00 00  ;
.byt    $6A,$00,$00,$00,$DD,$00,$00,$00; 0xc7d3 $87C3 6A 00 00 00 DD 00 00 00  ;
.byt    $E1,$00,$00,$00,$E5,$00,$00,$00; 0xc7db $87CB E1 00 00 00 E5 00 00 00  ;
.byt    $E9,$00,$00,$00,$50,$00,$00,$00; 0xc7e3 $87D3 E9 00 00 00 50 00 00 00  ;
.byt    $07,$90,$00,$00,$13,$94,$00,$00; 0xc7eb $87DB 07 90 00 00 13 94 00 00  ;
.byt    $21,$98,$00,$00,$27,$9C,$00,$00; 0xc7f3 $87E3 21 98 00 00 27 9C 00 00  ;
.byt    $37,$A0,$00,$00,$3F,$A4,$00,$00; 0xc7fb $87EB 37 A0 00 00 3F A4 00 00  ;
L87F3:                                                                          ;
.byt    $00,$00,$00,$00,$5E,$AC,$00,$00; 0xc803 $87F3 00 00 00 00 5E AC 00 00  ;
.byt    $29,$B0,$00,$00,$43,$B4,$00,$00; 0xc80b $87FB 29 B0 00 00 43 B4 00 00  ;
.byt    $49,$B8,$00,$00,$00,$00,$00,$00; 0xc813 $8803 49 B8 00 00 00 00 00 00  ;
.byt    $FC,$FC,$FC,$FC,$00,$00,$00,$00; 0xc81b $880B FC FC FC FC 00 00 00 00  ;
.byt    $00,$00,$00,$00                ; 0xc823 $8813 00 00 00 00              ;
bank3_Door_Destinations_in_Towns:                                               ;
.byt    $00,$00,$00,$00,$00,$71,$C0,$00; 0xc827 $8817 00 00 00 00 00 71 C0 00  ;
.byt    $00,$73,$00,$00,$00,$00,$00,$00; 0xc82f $881F 00 73 00 00 00 00 00 00  ;
.byt    $00,$00,$75,$C4,$76,$00,$00,$00; 0xc837 $8827 00 00 75 C4 76 00 00 00  ;
.byt    $00,$00,$7B,$79,$00,$7A,$00,$78; 0xc83f $882F 00 00 7B 79 00 7A 00 78  ;
.byt    $00,$C8,$00,$00,$00,$00,$00,$CC; 0xc847 $8837 00 C8 00 00 00 00 00 CC  ;
.byt    $00,$E0,$00,$00,$7E,$00,$00,$00; 0xc84f $883F 00 E0 00 00 7E 00 00 00  ;
.byt    $00,$00,$82,$00,$00,$00,$00,$D0; 0xc857 $8847 00 00 82 00 00 00 00 D0  ;
.byt    $00,$81,$00,$00,$00,$00,$00,$D4; 0xc85f $884F 00 81 00 00 00 00 00 D4  ;
.byt    $00,$00,$00,$E4,$00,$00,$86,$00; 0xc867 $8857 00 00 00 E4 00 00 86 00  ;
.byt    $00,$E8,$8B,$00,$00,$6A,$00,$00; 0xc86f $885F 00 E8 8B 00 00 6A 00 00  ;
.byt    $BC,$00,$00,$00,$00,$00,$85,$88; 0xc877 $8867 BC 00 00 00 00 00 85 88  ;
.byt    $8F,$8E,$00,$8D,$00,$8C,$DC,$00; 0xc87f $886F 8F 8E 00 8D 00 8C DC 00  ;
.byt    $7D,$00,$00,$00,$00,$00,$00,$00; 0xc887 $8877 7D 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$A8,$00,$00,$00,$00; 0xc88f $887F 00 00 00 A8 00 00 00 00  ;
bank3_UNUSED_8887:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xc897 $8887 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xc89f $888F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xc8a7 $8897 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0xc8af $889F FF                       ;
bank3_Enemy_Data_Towns_:                                                        ;
.byt    $0D,$7A,$22,$7F,$23,$79,$60,$72; 0xc8b0 $88A0 0D 7A 22 7F 23 79 60 72  ;
.byt    $94,$70,$E3,$7A,$DF,$0B,$7D,$17; 0xc8b8 $88A8 94 70 E3 7A DF 0B 7D 17  ;
.byt    $7F,$23,$72,$92,$70,$E3,$75,$E2; 0xc8c0 $88B0 7F 23 72 92 70 E3 75 E2  ;
.byt    $0D,$78,$22,$7F,$23,$7D,$51,$70; 0xc8c8 $88B8 0D 78 22 7F 23 7D 51 70  ;
.byt    $E3,$73,$D6,$7A,$DD,$0D,$7F,$23; 0xc8d0 $88C0 E3 73 D6 7A DD 0D 7F 23  ;
.byt    $79,$58,$7E,$5F,$75,$97,$70,$E3; 0xc8d8 $88C8 79 58 7E 5F 75 97 70 E3  ;
.byt    $76,$E2,$01,$03,$7C,$22,$0B,$79; 0xc8e0 $88D0 76 E2 01 03 7C 22 0B 79  ;
.byt    $17,$7F,$23,$7B,$58,$74,$A0,$70; 0xc8e8 $88D8 17 7F 23 7B 58 74 A0 70  ;
.byt    $E3,$0B,$7F,$23,$75,$54,$71,$D0; 0xc8f0 $88E0 E3 0B 7F 23 75 54 71 D0  ;
.byt    $70,$E3,$7A,$E2,$0B,$78,$21,$7F; 0xc8f8 $88E8 70 E3 7A E2 0B 78 21 7F  ;
.byt    $23,$70,$5F,$70,$E3,$71,$D5,$0B; 0xc900 $88F0 23 70 5F 70 E3 71 D5 0B  ;
.byt    $78,$18,$7F,$23,$7E,$62,$79,$9D; 0xc908 $88F8 78 18 7F 23 7E 62 79 9D  ;
.byt    $70,$E3,$0B,$7F,$23,$73,$60,$73; 0xc910 $8900 70 E3 0B 7F 23 73 60 73  ;
.byt    $97,$70,$E3,$79,$E1,$03,$74,$51; 0xc918 $8908 97 70 E3 79 E1 03 74 51  ;
.byt    $05,$73,$50,$7C,$8E,$03,$7C,$4F; 0xc920 $8910 05 73 50 7C 8E 03 7C 4F  ;
.byt    $03,$7C,$4D,$05,$75,$50,$75,$CE; 0xc928 $8918 03 7C 4D 05 75 50 75 CE  ;
.byt    $05,$75,$52,$7A,$8E,$09,$7A,$21; 0xc930 $8920 05 75 52 7A 8E 09 7A 21  ;
.byt    $75,$4D,$7A,$8B,$75,$CD,$03,$7C; 0xc938 $8928 75 4D 7A 8B 75 CD 03 7C  ;
.byt    $0D,$0B,$7F,$23,$70,$62,$75,$9F; 0xc940 $8930 0D 0B 7F 23 70 62 75 9F  ;
.byt    $70,$E3,$76,$D1,$0D,$7B,$17,$7F; 0xc948 $8938 70 E3 76 D1 0D 7B 17 7F  ;
.byt    $23,$79,$5D,$72,$A1,$70,$E3,$72; 0xc950 $8940 23 79 5D 72 A1 70 E3 72  ;
.byt    $D6,$09,$7D,$18,$7F,$23,$70,$E3; 0xc958 $8948 D6 09 7D 18 7F 23 70 E3  ;
.byt    $76,$E2,$0D,$74,$21,$7F,$23,$74; 0xc960 $8950 76 E2 0D 74 21 7F 23 74  ;
.byt    $60,$76,$90,$70,$E3,$73,$D5,$09; 0xc968 $8958 60 76 90 70 E3 73 D5 09  ;
.byt    $7F,$23,$77,$9D,$70,$E3,$78,$CC; 0xc970 $8960 7F 23 77 9D 70 E3 78 CC  ;
.byt    $0D,$79,$18,$7F,$23,$79,$57,$7C; 0xc978 $8968 0D 79 18 7F 23 79 57 7C  ;
.byt    $A0,$70,$E3,$78,$E1,$0F,$74,$22; 0xc980 $8970 A0 70 E3 78 E1 0F 74 22  ;
.byt    $7F,$23,$75,$55,$71,$51,$7C,$9E; 0xc988 $8978 7F 23 75 55 71 51 7C 9E  ;
.byt    $70,$E3,$75,$D8,$0B,$79,$17,$7F; 0xc990 $8980 70 E3 75 D8 0B 79 17 7F  ;
.byt    $23,$77,$5F,$76,$DD,$70,$E3,$01; 0xc998 $8988 23 77 5F 76 DD 70 E3 01  ;
.byt    $11,$78,$06,$5A,$06,$68,$46,$5A; 0xc9a0 $8990 11 78 06 5A 06 68 46 5A  ;
.byt    $46,$68,$86,$5A,$86,$68,$C6,$78; 0xc9a8 $8998 46 68 86 5A 86 68 C6 78  ;
L89A0:                                                                          ;
.byt    $C6,$05,$75,$4E,$38,$8A,$03,$6D; 0xc9b0 $89A0 C6 05 75 4E 38 8A 03 6D  ;
.byt    $A2,$03,$79,$CC,$03,$76,$E1,$0B; 0xc9b8 $89A8 A2 03 79 CC 03 76 E1 0B  ;
.byt    $78,$06,$5A,$46,$68,$86,$76,$C6; 0xc9c0 $89B0 78 06 5A 46 68 86 76 C6  ;
.byt    $77,$E1,$03,$79,$52,$03,$79,$E2; 0xc9c8 $89B8 77 E1 03 79 52 03 79 E2  ;
bank3_Area_Data_Towns1:                                                         ;
.byt    $36,$60,$A0,$01,$F7,$10,$F2,$10; 0xc9d0 $89C0 36 60 A0 01 F7 10 F2 10  ;
.byt    $F1,$06,$F2,$11,$24,$26,$40,$56; 0xc9d8 $89C8 F1 06 F2 11 24 26 40 56  ;
.byt    $51,$C1,$52,$C0,$80,$01,$52,$C1; 0xc9e0 $89D0 51 C1 52 C0 80 01 52 C1  ;
.byt    $F3,$11,$62,$3C,$80,$6C,$81,$B0; 0xc9e8 $89D8 F3 11 62 3C 80 6C 81 B0  ;
.byt    $82,$B0,$85,$00,$F6,$13,$34,$2C; 0xc9f0 $89E0 82 B0 85 00 F6 13 34 2C  ;
.byt    $50,$5C,$51,$C1,$52,$C1,$52,$C1; 0xc9f8 $89E8 50 5C 51 C1 52 C1 52 C1  ;
.byt    $52,$C1,$83,$00,$F7,$01        ; 0xca00 $89F0 52 C1 83 00 F7 01        ;
L89F6:                                                                          ;
.byt    $32,$60,$A0,$01,$F0,$00,$F4,$13; 0xca06 $89F6 32 60 A0 01 F0 00 F4 13  ;
.byt    $66,$36,$80,$66,$81,$B0,$82,$00; 0xca0e $89FE 66 36 80 66 81 B0 82 00  ;
.byt    $82,$B0,$F3,$11,$64,$28,$80,$58; 0xca16 $8A06 82 B0 F3 11 64 28 80 58  ;
.byt    $81,$C0,$82,$C0,$83,$01,$F4,$11; 0xca1e $8A0E 81 C0 82 C0 83 01 F4 11  ;
.byt    $68,$28,$80,$58,$81,$C0,$83,$00; 0xca26 $8A16 68 28 80 58 81 C0 83 00  ;
.byt    $83,$C0,$F3,$11,$F3,$06,$F3,$11; 0xca2e $8A1E 83 C0 F3 11 F3 06 F3 11  ;
.byt    $F3,$10                        ; 0xca36 $8A26 F3 10                    ;
L8A28:                                                                          ;
.byt    $20,$60,$A0,$09,$F8,$06,$5A,$29; 0xca38 $8A28 20 60 A0 09 F8 06 5A 29  ;
.byt    $60,$29,$81,$97,$84,$00,$5B,$27; 0xca40 $8A30 60 29 81 97 84 00 5B 27  ;
.byt    $60,$27,$81,$95,$83,$01,$58,$29; 0xca48 $8A38 60 27 81 95 83 01 58 29  ;
.byt    $60,$29,$81,$97,$84,$00,$FA,$01; 0xca50 $8A40 60 29 81 97 84 00 FA 01  ;
L8A48:                                                                          ;
.byt    $1E,$60,$A0,$09,$F0,$00,$78,$73; 0xca58 $8A48 1E 60 A0 09 F0 00 78 73  ;
.byt    $82,$01,$5C,$27,$60,$27,$81,$95; 0xca60 $8A50 82 01 5C 27 60 27 81 95  ;
.byt    $82,$00,$57,$29,$60,$29,$81,$97; 0xca68 $8A58 82 00 57 29 60 29 81 97  ;
.byt    $84,$00,$E3,$00,$F6,$06        ; 0xca70 $8A60 84 00 E3 00 F6 06        ;
L8A66:                                                                          ;
.byt    $10,$00,$A0,$11,$82,$E2,$A3,$F6; 0xca76 $8A66 10 00 A0 11 82 E2 A3 F6  ;
.byt    $F2,$08,$F1,$07,$F1,$09,$85,$E2; 0xca7e $8A6E F2 08 F1 07 F1 09 85 E2  ;
L8A76:                                                                          ;
.byt    $1A,$60,$A0,$11,$FC,$06,$F8,$15; 0xca86 $8A76 1A 60 A0 11 FC 06 F8 15  ;
.byt    $E2,$00,$6C,$22,$80,$72,$81,$01; 0xca8e $8A7E E2 00 6C 22 80 72 81 01  ;
.byt    $F3,$77,$69,$22,$80,$72,$81,$01; 0xca96 $8A86 F3 77 69 22 80 72 81 01  ;
.byt    $F3,$01                        ; 0xca9e $8A8E F3 01                    ;
L8A90:                                                                          ;
.byt    $34,$60,$A0,$11,$F0,$00,$36,$24; 0xcaa0 $8A90 34 60 A0 11 F0 00 36 24  ;
.byt    $50,$54,$51,$C1,$82,$00,$F3,$63; 0xcaa8 $8A98 50 54 51 C1 82 00 F3 63  ;
L8AA0:                                                                          ;
.byt    $36,$24,$50,$54,$51,$C1,$82,$01; 0xcab0 $8AA0 36 24 50 54 51 C1 82 01  ;
.byt    $63,$24,$80,$74,$83,$00,$F3,$67; 0xcab8 $8AA8 63 24 80 74 83 00 F3 67  ;
.byt    $A9,$0A,$A1,$0A,$A2,$0A,$A1,$0A; 0xcac0 $8AB0 A9 0A A1 0A A2 0A A1 0A  ;
.byt    $A1,$0A,$A2,$0A,$F2,$63,$66,$74; 0xcac8 $8AB8 A1 0A A2 0A F2 63 66 74  ;
.byt    $83,$01,$F4,$01                ; 0xcad0 $8AC0 83 01 F4 01              ;
L8AC4:                                                                          ;
.byt    $24,$60,$A0,$11,$F0,$00,$F6,$69; 0xcad4 $8AC4 24 60 A0 11 F0 00 F6 69  ;
.byt    $3C,$2A,$50,$5A,$51,$C1,$52,$C0; 0xcadc $8ACC 3C 2A 50 5A 51 C1 52 C0  ;
.byt    $80,$00,$52,$C1,$52,$C1,$52,$C1; 0xcae4 $8AD4 80 00 52 C1 52 C1 52 C1  ;
.byt    $F4,$67,$6A,$26,$80,$76,$83,$00; 0xcaec $8ADC F4 67 6A 26 80 76 83 00  ;
.byt    $F5,$67,$F9,$06                ; 0xcaf4 $8AE4 F5 67 F9 06              ;
L8AE8:                                                                          ;
.byt    $28,$60,$A0,$19,$F8,$06,$6A,$78; 0xcaf8 $8AE8 28 60 A0 19 F8 06 6A 78  ;
.byt    $81,$A0,$83,$00,$83,$A0,$37,$2C; 0xcb00 $8AF0 81 A0 83 00 83 A0 37 2C  ;
.byt    $50,$7C,$51,$C1,$52,$C1,$82,$00; 0xcb08 $8AF8 50 7C 51 C1 52 C1 82 00  ;
.byt    $52,$C1,$52,$C1,$52,$C1,$65,$7A; 0xcb10 $8B00 52 C1 52 C1 52 C1 65 7A  ;
.byt    $81,$00,$84,$A0,$82,$A0,$F6,$01; 0xcb18 $8B08 81 00 84 A0 82 A0 F6 01  ;
L8B10:                                                                          ;
.byt    $38,$60,$A0,$19,$F0,$00,$34,$28; 0xcb20 $8B10 38 60 A0 19 F0 00 34 28  ;
.byt    $50,$78,$51,$C1,$53,$C0,$80,$00; 0xcb28 $8B18 50 78 51 C1 53 C0 80 00  ;
.byt    $53,$C1,$63,$28,$80,$68,$81,$C0; 0xcb30 $8B20 53 C1 63 28 80 68 81 C0  ;
.byt    $82,$C0,$82,$C0,$82,$C0,$18,$72; 0xcb38 $8B28 82 C0 82 C0 82 C0 18 72  ;
.byt    $01,$0D,$E1,$00,$6B,$46,$80,$76; 0xcb40 $8B30 01 0D E1 00 6B 46 80 76  ;
.byt    $81,$C0,$82,$00,$30,$03,$82,$C0; 0xcb48 $8B38 81 C0 82 00 30 03 82 C0  ;
.byt    $6A,$28,$80,$78,$87,$00,$FC,$01; 0xcb50 $8B40 6A 28 80 78 87 00 FC 01  ;
L8B48:                                                                          ;
.byt    $3A,$60,$A0,$19,$F0,$00,$66,$7C; 0xcb58 $8B48 3A 60 A0 19 F0 00 66 7C  ;
L8B50:                                                                          ;
.byt    $81,$A0,$82,$A0,$82,$01,$84,$A0; 0xcb60 $8B50 81 A0 82 A0 82 01 84 A0  ;
.byt    $82,$A0,$35,$36,$50,$66,$51,$A1; 0xcb68 $8B58 82 A0 35 36 50 66 51 A1  ;
.byt    $52,$A0,$80,$00,$52,$A1,$62,$32; 0xcb70 $8B60 52 A0 80 00 52 A1 62 32  ;
.byt    $80                            ; 0xcb78 $8B68 80                       ;
L8B69:                                                                          ;
.byt    $62,$81,$00,$32,$36,$50,$66,$51; 0xcb79 $8B69 62 81 00 32 36 50 66 51  ;
.byt    $A1,$52,$A0,$80,$00,$52,$A1,$67; 0xcb81 $8B71 A1 52 A0 80 00 52 A1 67  ;
.byt    $76,$81,$A0,$82,$A0,$82,$00,$F8; 0xcb89 $8B79 76 81 A0 82 A0 82 00 F8  ;
.byt    $06                            ; 0xcb91 $8B81 06                       ;
L8B82:                                                                          ;
.byt    $0C,$00,$A0,$09,$F0,$1F,$64,$27; 0xcb92 $8B82 0C 00 A0 09 F0 1F 64 27  ;
.byt    $80,$97,$83,$01                ; 0xcb9a $8B8A 80 97 83 01              ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Locked_Door_glitched_tiles_0E:           ;
    LDA      $010A                     ; 0xcb9e $8B8E AD 0A 01                 ;
    STA      $0758                     ; 0xcba1 $8B91 8D 58 07                 ;; Position of Locked Door in Map
    RTS                                ; 0xcba4 $8B94 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Bushes_1_high_X_wide_Y_Position_A__1x:      ;
    LDA      $0731                     ; 0xcba5 $8B95 AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xcba8 $8B98 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xcbaa $8B9A AA                       ;
    LDA      $0730                     ; 0xcbab $8B9B AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xcbae $8B9E 29 0F                    ; keep bits .... xxxx
L8BA0:                                                                          ;
    ORA      #$A0                      ; 0xcbb0 $8BA0 09 A0                    ; set  bits x.x. .... (height of bushes layer)
    STA      $0730                     ; 0xcbb2 $8BA2 8D 30 07                 ;; Position of Object Placement
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xcbb5 $8BA5 20 44 C9           ;
L8BA8:                                                                          ;
    LDA      #$45                      ; 0xcbb8 $8BA8 A9 45                    ; A = 45 (Tile Code for bushes)
    JSR      bank7_Set_tile_and_move_right_1_column; 0xcbba $8BAA 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0xcbbd $8BAD CA                       ;
    BPL      L8BA8                     ; 0xcbbe $8BAE 10 F8                    ;
    RTS                                ; 0xcbc0 $8BB0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_UNUSED_8BB1:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcbc1 $8BB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0xcbc9 $8BB9 FF FF FF FF FF FF        ;
L8BBF:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcbcf $8BBF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcbd7 $8BC7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcbdf $8BCF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcbe7 $8BD7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcbef $8BDF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcbf7 $8BE7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcbff $8BEF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc07 $8BF7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc0f $8BFF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc17 $8C07 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc1f $8C0F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc27 $8C17 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc2f $8C1F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc37 $8C27 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc3f $8C2F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc47 $8C37 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc4f $8C3F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc57 $8C47 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc5f $8C4F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc67 $8C57 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc6f $8C5F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc77 $8C67 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc7f $8C6F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc87 $8C77 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc8f $8C7F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc97 $8C87 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcc9f $8C8F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcca7 $8C97 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xccaf $8C9F FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xccb7 $8CA7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xccbf $8CAF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xccc7 $8CB7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcccf $8CBF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xccd7 $8CC7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xccdf $8CCF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcce7 $8CD7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF                        ; 0xccef $8CDF FF FF                    ;
L8CE1:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xccf1 $8CE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xccf9 $8CE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd01 $8CF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd09 $8CF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd11 $8D01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd19 $8D09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd21 $8D11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd29 $8D19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd31 $8D21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd39 $8D29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd41 $8D31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd49 $8D39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd51 $8D41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd59 $8D49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd61 $8D51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd69 $8D59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd71 $8D61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd79 $8D69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd81 $8D71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd89 $8D79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd91 $8D81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcd99 $8D89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcda1 $8D91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcda9 $8D99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcdb1 $8DA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcdb9 $8DA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcdc1 $8DB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcdc9 $8DB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF                        ; 0xcdd1 $8DC1 FF FF                    ;
L8DC3:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcdd3 $8DC3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcddb $8DCB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcde3 $8DD3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcdeb $8DDB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcdf3 $8DE3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcdfb $8DEB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce03 $8DF3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce0b $8DFB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce13 $8E03 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce1b $8E0B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce23 $8E13 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce2b $8E1B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce33 $8E23 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce3b $8E2B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce43 $8E33 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce4b $8E3B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce53 $8E43 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce5b $8E4B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce63 $8E53 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce6b $8E5B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce73 $8E63 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce7b $8E6B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce83 $8E73 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce8b $8E7B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce93 $8E83 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xce9b $8E8B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcea3 $8E93 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xceab $8E9B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xceb3 $8EA3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcebb $8EAB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcec3 $8EB3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcecb $8EBB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xced3 $8EC3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcedb $8ECB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcee3 $8ED3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xceeb $8EDB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcef3 $8EE3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcefb $8EEB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf03 $8EF3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf0b $8EFB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf13 $8F03 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf1b $8F0B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf23 $8F13 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf2b $8F1B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf33 $8F23 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf3b $8F2B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf43 $8F33 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf4b $8F3B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf53 $8F43 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf5b $8F4B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf63 $8F53 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf6b $8F5B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf73 $8F63 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf7b $8F6B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf83 $8F73 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf8b $8F7B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf93 $8F83 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcf9b $8F8B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfa3 $8F93 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfab $8F9B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfb3 $8FA3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfbb $8FAB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF                ; 0xcfc3 $8FB3 FF FF FF FF              ;
L8FB7:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfc7 $8FB7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfcf $8FBF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfd7 $8FC7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfdf $8FCF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfe7 $8FD7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfef $8FDF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcff7 $8FE7 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xcfff $8FEF FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd007 $8FF7 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0xd00f $8FFF FF                       ;
L9000:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd010 $9000 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd018 $9008 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd020 $9010 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd028 $9018 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd030 $9020 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd038 $9028 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd040 $9030 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF                        ; 0xd048 $9038 FF FF                    ;
L903A:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd04a $903A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd052 $9042 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd05a $904A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd062 $9052 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd06a $905A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd072 $9062 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd07a $906A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd082 $9072 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd08a $907A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd092 $9082 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd09a $908A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0a2 $9092 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0aa $909A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0b2 $90A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0ba $90AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0c2 $90B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0ca $90BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0d2 $90C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0da $90CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0e2 $90D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0ea $90DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd0f2 $90E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0xd0fa $90EA FF FF FF FF FF FF        ;
bank3_Area_Data:                                                                ;
.byt    $44,$20,$18,$30,$F0,$00,$F1,$3F; 0xd100 $90F0 44 20 18 30 F0 00 F1 3F  ;
.byt    $52,$8F,$71,$A0,$72,$A0,$F4,$26; 0xd108 $90F8 52 8F 71 A0 72 A0 F4 26  ;
.byt    $74,$A0,$A1,$05,$F1,$4E,$70,$A0; 0xd110 $9100 74 A0 A1 05 F1 4E 70 A0  ;
.byt    $90,$08,$A2,$05,$51,$89,$F1,$26; 0xd118 $9108 90 08 A2 05 51 89 F1 26  ;
.byt    $F9,$01,$F3,$00,$F1,$3F,$52,$8C; 0xd120 $9110 F9 01 F3 00 F1 3F 52 8C  ;
.byt    $A1,$09,$72,$A0,$74,$A0,$74,$A0; 0xd128 $9118 A1 09 72 A0 74 A0 74 A0  ;
.byt    $A1,$05,$F1,$4E,$50,$8C,$90,$08; 0xd130 $9120 A1 05 F1 4E 50 8C 90 08  ;
.byt    $72,$A0,$A0,$05,$F4,$26,$F0,$04; 0xd138 $9128 72 A0 A0 05 F4 26 F0 04  ;
.byt    $A3,$09,$F4,$03                ; 0xd140 $9130 A3 09 F4 03              ;
bank3_UNUSED_9134:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd144 $9134 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd14c $913C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd154 $9144 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd15c $914C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd164 $9154 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd16c $915C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd174 $9164 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd17c $916C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd184 $9174 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd18c $917C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd194 $9184 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd19c $918C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1a4 $9194 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1ac $919C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1b4 $91A4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1bc $91AC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1c4 $91B4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1cc $91BC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1d4 $91C4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1dc $91CC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1e4 $91D4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1ec $91DC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1f4 $91E4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd1fc $91EC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd204 $91F4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd20c $91FC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd214 $9204 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd21c $920C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd224 $9214 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd22c $921C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd234 $9224 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd23c $922C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd244 $9234 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd24c $923C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd254 $9244 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd25c $924C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd264 $9254 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd26c $925C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd274 $9264 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd27c $926C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd284 $9274 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd28c $927C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd294 $9284 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd29c $928C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2a4 $9294 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2ac $929C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2b4 $92A4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2bc $92AC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2c4 $92B4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2cc $92BC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2d4 $92C4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2dc $92CC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2e4 $92D4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2ec $92DC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2f4 $92E4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd2fc $92EC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd304 $92F4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd30c $92FC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd314 $9304 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd31c $930C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd324 $9314 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd32c $931C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd334 $9324 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd33c $932C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd344 $9334 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd34c $933C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd354 $9344 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd35c $934C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd364 $9354 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd36c $935C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd374 $9364 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd37c $936C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd384 $9374 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd38c $937C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd394 $9384 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd39c $938C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3a4 $9394 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3ac $939C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3b4 $93A4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3bc $93AC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3c4 $93B4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3cc $93BC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3d4 $93C4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3dc $93CC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3e4 $93D4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3ec $93DC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3f4 $93E4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd3fc $93EC FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xd404 $93F4 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF                ; 0xd40c $93FC FF FF FF FF              ;
; ---------------------------------------------------------------------------- ;
bank3_pointer_table2:                                                           ;
.word    bank3_rts                     ; 0xd410 $9400 AD 95                    ;
.word    bank3_rts                     ; 0xd412 $9402 AD 95                    ;
.word    bank3_rts                     ; 0xd414 $9404 AD 95                    ;
.word    bank3_rts                     ; 0xd416 $9406 AD 95                    ;
.word    bank3_rts                     ; 0xd418 $9408 AD 95                    ;
.word    bank3_rts                     ; 0xd41a $940A AD 95                    ;
.word    bank3_rts                     ; 0xd41c $940C AD 95                    ;
.word    bank3_rts                     ; 0xd41e $940E AD 95                    ;
.word    bank3_rts                     ; 0xd420 $9410 AD 95                    ;
.word    bank3_rts                     ; 0xd422 $9412 AD 95                    ;
.word    bank3_rts                     ; 0xd424 $9414 AD 95                    ;
.word    bank3_rts                     ; 0xd426 $9416 AD 95                    ;
; ---------------------------------------------------------------------------- ;
bank3_table5:                                                                   ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xd428 $9418 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$30; 0xd430 $9420 00 00 00 00 00 00 00 30  ;
.byt    $00,$00,$00,$08,$00,$00,$00,$00; 0xd438 $9428 00 00 00 08 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xd440 $9430 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xd448 $9438 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00            ; 0xd450 $9440 00 00 00 00 00           ;
; ---------------------------------------------------------------------------- ;
bank3_pointer_table3:                                                           ;
.word    bank3_rts                     ; 0xd455 $9445 AD 95                    ;
.word    bank3_rts                     ; 0xd457 $9447 AD 95                    ;
.word    bank3_rts                     ; 0xd459 $9449 AD 95                    ;
.word    bank3_rts                     ; 0xd45b $944B AD 95                    ;
.word    bank3_rts                     ; 0xd45d $944D AD 95                    ;
.word    bank3_rts                     ; 0xd45f $944F AD 95                    ;
.word    bank3_rts                     ; 0xd461 $9451 AD 95                    ;
.word    bank3_rts                     ; 0xd463 $9453 AD 95                    ;
.word    L976B                         ; 0xd465 $9455 6B 97                    ;
.word    L976B                         ; 0xd467 $9457 6B 97                    ;
.word    L976B                         ; 0xd469 $9459 6B 97                    ;
.word    L976B                         ; 0xd46b $945B 6B 97                    ;
.word    L976B                         ; 0xd46d $945D 6B 97                    ;
.word    L976B                         ; 0xd46f $945F 6B 97                    ;
.word    L976B                         ; 0xd471 $9461 6B 97                    ;
.word    L976B                         ; 0xd473 $9463 6B 97                    ;
.word    L976B                         ; 0xd475 $9465 6B 97                    ;
.word    L976B                         ; 0xd477 $9467 6B 97                    ;
.word    L976B                         ; 0xd479 $9469 6B 97                    ;
.word    L9756                         ; 0xd47b $946B 56 97                    ;
.word    L9756                         ; 0xd47d $946D 56 97                    ;
.word    L9756                         ; 0xd47f $946F 56 97                    ;
.word    L9756                         ; 0xd481 $9471 56 97                    ;
.word    L976B                         ; 0xd483 $9473 6B 97                    ;
.word    L976B                         ; 0xd485 $9475 6B 97                    ;
.word    L976B                         ; 0xd487 $9477 6B 97                    ;
.word    L976B                         ; 0xd489 $9479 6B 97                    ;
.word    L976B                         ; 0xd48b $947B 6B 97                    ;
.word    L976B                         ; 0xd48d $947D 6B 97                    ;
.word    bank3_code15                  ; 0xd48f $947F 43 97                    ;
.word    bank3_code15                  ; 0xd491 $9481 43 97                    ;
.word    bank3_code15                  ; 0xd493 $9483 43 97                    ;
.word    bank3_code15                  ; 0xd495 $9485 43 97                    ;
.word    L976B                         ; 0xd497 $9487 6B 97                    ;
.word    L976B                         ; 0xd499 $9489 6B 97                    ;
.word    L96B2                         ; 0xd49b $948B B2 96                    ;
.word    bank7_Enemy_Routines1_Fairy   ; 0xd49d $948D 1E D9                    ;
.word    bank7_Enemy_Routines1_Red_Jar ; 0xd49f $948F 59 D9                    ;
.word    bank7_Enemy_Routines1_Locked_Door; 0xd4a1 $9491 91 D9                 ;
.word    bank3_code13                  ; 0xd4a3 $9493 A8 96                    ;
.word    bank7_Enemy_Routines1_Bot     ; 0xd4a5 $9495 0C DA                    ;
.word    bank7_Enemy_Routines1_Bit     ; 0xd4a7 $9497 2B DA                    ;
.word    bank7_Enemy_Routines1_Moa     ; 0xd4a9 $9499 CF DA                    ;
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0xd4ab $949B 53 DB            ;
.word    L9878                         ; 0xd4ad $949D 78 98                    ;
.word    L9878                         ; 0xd4af $949F 78 98                    ;
.word    L9793                         ; 0xd4b1 $94A1 93 97                    ;
.word    bank3_code16                  ; 0xd4b3 $94A3 83 97                    ;
.word    L9ABD                         ; 0xd4b5 $94A5 BD 9A                    ;
.word    L9793                         ; 0xd4b7 $94A7 93 97                    ;
.word    L9793                         ; 0xd4b9 $94A9 93 97                    ;
.word    L97A9                         ; 0xd4bb $94AB A9 97                    ;
.word    L9793                         ; 0xd4bd $94AD 93 97                    ;
.word    L9793                         ; 0xd4bf $94AF 93 97                    ;
.word    L9793                         ; 0xd4c1 $94B1 93 97                    ;
.word    L97D4                         ; 0xd4c3 $94B3 D4 97                    ;
.word    L97D4                         ; 0xd4c5 $94B5 D4 97                    ;
.word    L97D4                         ; 0xd4c7 $94B7 D4 97                    ;
.word    L97D4                         ; 0xd4c9 $94B9 D4 97                    ;
.word    L97D4                         ; 0xd4cb $94BB D4 97                    ;
.word    L97D4                         ; 0xd4cd $94BD D4 97                    ;
.word    L9878                         ; 0xd4cf $94BF 78 98                    ;
.word    L9878                         ; 0xd4d1 $94C1 78 98                    ;
.word    L9878                         ; 0xd4d3 $94C3 78 98                    ;
.word    L9878                         ; 0xd4d5 $94C5 78 98                    ;
.word    L9878                         ; 0xd4d7 $94C7 78 98                    ;
.word    L9878                         ; 0xd4d9 $94C9 78 98                    ;
.word    L9878                         ; 0xd4db $94CB 78 98                    ;
.word    L9878                         ; 0xd4dd $94CD 78 98                    ;
.word    L9ABD                         ; 0xd4df $94CF BD 9A                    ;
.word    L9ABD                         ; 0xd4e1 $94D1 BD 9A                    ;
.word    bank3_code14                  ; 0xd4e3 $94D3 E0 96                    ;
; ---------------------------------------------------------------------------- ;
bank3_Enemy_Attributes_Tile_Mapping_Codes_6DD5_in_RAM:                          ;
;x... ....	? (enemies have bit 7 set, including talkers)                       ;
;.xxx xxxx	Tile Mappings Code (offset)                                         ;
.byt    $40,$40,$40,$C2,$C0,$80,$C6,$C3; 0xd4e5 $94D5 40 40 40 C2 C0 80 C6 C3  ;
.byt    $00,$00,$80,$C0,$00,$18,$10,$20; 0xd4ed $94DD 00 00 80 C0 00 18 10 20  ;
.byt    $34,$08,$18,$10,$08,$18,$00,$00; 0xd4f5 $94E5 34 08 18 10 08 18 00 00  ;
.byt    $18,$10,$08,$18,$00,$10,$2C,$2C; 0xd4fd $94ED 18 10 08 18 00 10 2C 2C  ;
.byt    $00,$00,$00,$00                ; 0xd505 $94F5 00 00 00 00              ;
bank3_Enemy_Palette_Codes_and_Animation_6DF9_in_RAM:                            ;
;x... ....	Enemy is Immobile (0 = 2-Frame Animation)                           ;
;.xxx xx..	? (not used)                                                        ;
;.... ..xx	Palette Code                                                        ;
.byt    $00,$00,$00,$02,$00,$00,$03,$00; 0xd509 $94F9 00 00 00 02 00 00 03 00  ;
.byt    $01,$02,$00,$00,$00,$83,$83,$01; 0xd511 $9501 01 02 00 00 00 83 83 01  ;
.byt    $82,$83,$82,$02,$03,$03,$02,$02; 0xd519 $9509 82 83 82 02 03 03 02 02  ;
.byt    $01,$03,$02,$02,$03,$03,$02,$02; 0xd521 $9511 01 03 02 02 03 03 02 02  ;
.byt    $03,$00,$00,$00                ; 0xd529 $9519 03 00 00 00              ;
bank3_Enemy_Size_Codes_6E1D_in_RAM:                                             ;
.byt    $01,$01,$04,$00,$01,$01,$01,$01; 0xd52d $951D 01 01 04 00 01 01 01 01  ;
.byt    $0C,$0C,$0C,$0C,$00,$0C,$0C,$0C; 0xd535 $9525 0C 0C 0C 0C 00 0C 0C 0C  ;
.byt    $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C; 0xd53d $952D 0C 0C 0C 0C 0C 0C 0C 0C  ;
.byt    $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C; 0xd545 $9535 0C 0C 0C 0C 0C 0C 0C 0C  ;
.byt    $0C,$00,$00,$00                ; 0xd54d $953D 0C 00 00 00              ;
bank3_Other_Enemy_Attributes_6E41_in_RAM:                                       ;
;x... ....	Immune to Thunder Spell                                             ;
;.x.. ....	Regenerates                                                         ;
;..x. ....	?                                                                   ;
;...x ....	Not hittable with sword                                             ;
;.... xxxx	?                                                                   ;
.byt    $86,$86,$86,$06,$06,$06,$06,$00; 0xd551 $9541 86 86 86 06 06 06 06 00  ;
.byt    $80,$80,$80,$80,$80,$80,$80,$80; 0xd559 $9549 80 80 80 80 80 80 80 80  ;
.byt    $80,$80,$80,$80,$80,$80,$80,$80; 0xd561 $9551 80 80 80 80 80 80 80 80  ;
.byt    $80,$80,$80,$80,$80,$80,$80,$80; 0xd569 $9559 80 80 80 80 80 80 80 80  ;
.byt    $80,$80,$80,$80                ; 0xd571 $9561 80 80 80 80              ;
; ---------------------------------------------------------------------------- ;
bank3_Pointer_table_for_Enemy_Routines:                                         ;
.word    bank7_Enemy_Routines2_Fairy   ; 0xd575 $9565 DD F0                    ;Fairy
.word    bank7_Enemy_Routines2_RedJar  ; 0xd577 $9567 12 F1                    ;Red Jar
.word    bank7_Enemy_Routines2_LockedDoor; 0xd579 $9569 3A F1                  ;Locked Door
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0xd57b $956B 7E F1            ;Ache
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0xd57d $956D 91 EF                 ;Bit
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0xd57f $956F 91 EF                 ;Bot
.word    bank7_Enemy_Routines2_Moa     ; 0xd581 $9571 F2 EF                    ;Moa
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0xd583 $9573 7E F1            ;Acheman
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd585 $9575 E8 9A                    ;Orange Lady - Walking
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd587 $9577 E8 9A                    ;Orange Lady - Walking
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0xd589 $9579 7E F1            ;Ache (talker)
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0xd58b $957B 91 EF                 ;Bit (talker)
.word    bank3_rts                     ; 0xd58d $957D AD 95                    ;Invisible Dialog ("Welcome" sign)
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd58f $957F E8 9A                    ;Blue Old Woman - Immobile
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd591 $9581 E8 9A                    ;Blue Lumberjack - Immobile
.word    bank3_Enemy_Routines1_Wise_Man; 0xd593 $9583 C8 9A                    ;Wise Man
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd595 $9585 E8 9A                    ;Little Kid - Immobile
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd597 $9587 E8 9A                    ;Blue Lady with Bowl - Immobile
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd599 $9589 E8 9A                    ;Red Old Woman - Immobile
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd59b $958B E8 9A                    ;Red Lumberjack - Idle
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd59d $958D E8 9A                    ;Blue Lady with Bowl - Idle
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd59f $958F E8 9A                    ;Blue Old Woman - Idle
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5a1 $9591 E8 9A                    ;Red Lady - Idle
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5a3 $9593 E8 9A                    ;Red Lady - Idle (healing lady)
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5a5 $9595 E8 9A                    ;Orange Old Woman - Idle (magic woman)
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5a7 $9597 E8 9A                    ;Blue Lumberjack - Walking (default random Townfolk)
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5a9 $9599 E8 9A                    ;Red Lady with Bowl - Walking (default random Townfolk)
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5ab $959B E8 9A                    ;Red Old Woman - Walking (default random Townfolk)
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5ad $959D E8 9A                    ;Blue Lady - Walking (default random Townfolk)
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5af $959F E8 9A                    ;Blue Lumberjack - Walking
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5b1 $95A1 E8 9A                    ;Red Young Lad - Walking
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5b3 $95A3 E8 9A                    ;Red Young Lad - Walking
.word    bank3_Enemy_Routines1_ManyNPC ; 0xd5b5 $95A5 E8 9A                    ;Blue Lady - Walking
.word    bank3_rts                     ; 0xd5b7 $95A7 AD 95                    ;Invisible Dialog (Mirror)
.word    bank3_rts                     ; 0xd5b9 $95A9 AD 95                    ;Invisible Dialog ("Welcome" sign)
.word    bank3_rts                     ; 0xd5bb $95AB AD 95                    ;Townfolks Generator
; ---------------------------------------------------------------------------- ;
bank3_rts:                                                                      ;
    RTS                                ; 0xd5bd $95AD 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_table6:                                                                   ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xd5be $95AE 00 00 00 00 00 00 00 00  ;Padding ? (12 bytes)
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0xd5c6 $95B6 00 00 00 00 00 00 00 00  ;
.byt    $00,$00                        ; 0xd5ce $95BE 00 00                    ;
; ---------------------------------------------------------------------------- ;
bank3_pointer_table4:                                                           ;
.word    bank3_rts                     ; 0xd5d0 $95C0 AD 95                    ;
.word    bank3_rts                     ; 0xd5d2 $95C2 AD 95                    ;
.word    bank3_rts                     ; 0xd5d4 $95C4 AD 95                    ;
.word    bank3_rts                     ; 0xd5d6 $95C6 AD 95                    ;
.word    bank3_rts                     ; 0xd5d8 $95C8 AD 95                    ;
.word    bank3_rts                     ; 0xd5da $95CA AD 95                    ;
.word    bank3_rts                     ; 0xd5dc $95CC AD 95                    ;
.word    bank3_rts                     ; 0xd5de $95CE AD 95                    ;
.word    bank3_rts                     ; 0xd5e0 $95D0 AD 95                    ;
.word    bank3_rts                     ; 0xd5e2 $95D2 AD 95                    ;
; ---------------------------------------------------------------------------- ;
bank3_Townfolks_Tile_Mappings_Lady__Walking_Frame_1:                            ;
.byt    $D8,$DA,$E0,$E2                ; 0xd5e4 $95D4 D8 DA E0 E2              ;
bank3_Townfolks_Tile_Mappings_Lady__Walking_Frame_2:                            ;
.byt    $D8,$DA,$E4,$E6                ; 0xd5e8 $95D8 D8 DA E4 E6              ;
bank3_Townfolks_Tile_Mappings_Lady_with_Bowl__Walking_Frame_1:                  ;
.byt    $DC,$DE,$E0,$E2                ; 0xd5ec $95DC DC DE E0 E2              ;
bank3_Townfolks_Tile_Mappings_Lady_with_Bowl__Walking_Frame_2:                  ;
.byt    $DC,$DE,$E4,$E6                ; 0xd5f0 $95E0 DC DE E4 E6              ;
bank3_Townfolks_Tile_Mappings_Lumberjack__Walking_Frame_1:                      ;
.byt    $E8,$EA,$F0,$F2                ; 0xd5f4 $95E4 E8 EA F0 F2              ;
bank3_Townfolks_Tile_Mappings_Lumberjack__Walking_Frame_2:                      ;
.byt    $E8,$EA,$EC,$EE                ; 0xd5f8 $95E8 E8 EA EC EE              ;
bank3_Townfolks_Tile_Mappings_Old_Woman__Walking_Frame_1:                       ;
.byt    $F4,$F6,$F8,$FA                ; 0xd5fc $95EC F4 F6 F8 FA              ;
bank3_Townfolks_Tile_Mappings_Old_Woman__Walking_Frame_2:                       ;
.byt    $F4,$F6,$FC,$FE                ; 0xd600 $95F0 F4 F6 FC FE              ;
bank3_Townfolks_Tile_Mappings_Wise_Man__Frame_1:                                ;
.byt    $D0,$D2,$D4,$D6                ; 0xd604 $95F4 D0 D2 D4 D6              ;
bank3_Townfolks_Tile_Mappings_Wise_Man__Frame_2:                                ;
.byt    $74,$76,$D4,$D6                ; 0xd608 $95F8 74 76 D4 D6              ;
bank3_Townfolks_Tile_Mappings_Guard_from_Japanese_Version_never_used:           ;
.byt    $65,$67,$F0,$F2                ; 0xd60c $95FC 65 67 F0 F2              ;
bank3_Townfolks_Tile_Mappings_Young_Lad__Walking_Frame_1:                       ;
.byt    $C0,$C2,$C4,$C6                ; 0xd610 $9600 C0 C2 C4 C6              ;
bank3_Townfolks_Tile_Mappings_Young_Lad__Walking_Frame_2:                       ;
.byt    $C0,$C2,$C8,$CA                ; 0xd614 $9604 C0 C2 C8 CA              ;
bank3_Townfolks_Tile_Mappings_Little_Kid__Walking_Frame_1:                      ;
.byt    $F5,$F5,$B0,$BA                ; 0xd618 $9608 F5 F5 B0 BA              ;
bank3_Townfolks_Tile_Mappings_Little_Kid__Walking_Frame_2:                      ;
.byt    $F5,$F5,$BC,$BE                ; 0xd61c $960C F5 F5 BC BE              ;
bank3_Townfolks_Tile_Mappings_Fat_Woman__Walking_Frame_1:                       ;
.byt    $11,$13,$15,$17                ; 0xd620 $9610 11 13 15 17              ;
bank3_Townfolks_Tile_Mappings_Fat_Woman__Walking_Frame_2:                       ;
.byt    $19,$1B,$1D,$1F                ; 0xd624 $9614 19 1B 1D 1F              ;
bank3_Townfolks_Tile_Mappings_River_Guard:                                      ;
.byt    $01,$03,$05,$07                ; 0xd628 $9618 01 03 05 07              ;
bank3_Townfolks_Tile_Mappings_Knight_2_with_spear:                              ;
.byt    $09,$0B,$0D,$0F                ; 0xd62c $961C 09 0B 0D 0F              ;
bank3_Townfolks_Tile_Mappings_Wise_Man__Spell_Frame:                            ;
.byt    $62,$64,$CC,$CE                ; 0xd630 $9620 62 64 CC CE              ;
bank3_Townfolks_Tile_Mappings_unknown0:                                         ;
.byt    $30                            ; 0xd634 $9624 30                       ;
L9625:                                                                          ;
.byt    $96,$44,$96                    ; 0xd635 $9625 96 44 96                 ;
bank3_Townfolks_Tile_Mappings_unknown1:                                         ;
.byt    $58,$96,$6C,$96                ; 0xd638 $9628 58 96 6C 96              ;
bank3_Townfolks_Tile_Mappings_unknown2:                                         ;
.byt    $80,$96,$94,$96                ; 0xd63c $962C 80 96 94 96              ;
bank3_Related_to_Enemy_Velocities_in_Towns:                                     ;
.byt    $28,$10,$20,$10,$08,$3C,$10,$08; 0xd640 $9630 28 10 20 10 08 3C 10 08  ;
.byt    $18,$00,$00,$18,$10,$08,$18,$00; 0xd648 $9638 18 00 00 18 10 08 18 00  ;
.byt    $2C,$08,$18,$00,$44,$10,$20,$2C; 0xd650 $9640 2C 08 18 00 44 10 20 2C  ;
.byt    $2C,$2C,$2C,$08,$2C,$2C,$00,$18; 0xd658 $9648 2C 2C 2C 08 2C 2C 00 18  ;
.byt    $10,$08,$18,$00,$2C,$2C,$18,$3C; 0xd660 $9650 10 08 18 00 2C 2C 18 3C  ;
.byt    $44,$2C,$20,$10,$3C,$3C,$3C,$3C; 0xd668 $9658 44 2C 20 10 3C 3C 3C 3C  ;
.byt    $18,$3C,$00,$18,$10,$08,$18,$00; 0xd670 $9660 18 3C 00 18 10 08 18 00  ;
.byt    $34,$08,$18,$00,$28,$2C,$20,$10; 0xd678 $9668 34 08 18 00 28 2C 20 10  ;
.byt    $08,$18,$10,$08,$18,$00,$00,$18; 0xd680 $9670 08 18 10 08 18 00 00 18  ;
.byt    $10,$08,$18,$00,$34,$08,$3C,$00; 0xd688 $9678 10 08 18 00 34 08 3C 00  ;
.byt    $48,$34,$20,$34,$34,$34,$34,$34; 0xd690 $9680 48 34 20 34 34 34 34 34  ;
.byt    $18,$34,$00,$18,$10            ; 0xd698 $9688 18 34 00 18 10           ;
L968D:                                                                          ;
.byt    $08,$18,$00,$10,$08,$18,$3C,$28; 0xd69d $968D 08 18 00 10 08 18 3C 28  ;
.byt    $10,$20,$10,$08,$18            ; 0xd6a5 $9695 10 20 10 08 18           ;
L969A:                                                                          ;
.byt    $10,$08,$18,$00,$00,$18,$10,$08; 0xd6aa $969A 10 08 18 00 00 18 10 08  ;
.byt    $18,$00,$10,$3C,$18,$00        ; 0xd6b2 $96A2 18 00 10 3C 18 00        ;
; ---------------------------------------------------------------------------- ;
bank3_code13:                                                                   ;
    LDA      $C9                       ; 0xd6b8 $96A8 A5 C9                    ;
    BEQ      L96AF                     ; 0xd6ba $96AA F0 03                    ;
    JMP      LDD3D                     ; 0xd6bc $96AC 4C 3D DD                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L96AF:                                                                          ;
    JMP      bank7_Enemy_Routines1_Ache_and_Acheman; 0xd6bf $96AF 4C 53 DB         ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L96B2:                                                                          ;
    LDY      #$05                      ; 0xd6c2 $96B2 A0 05                    ; Y = 05
L96B4:                                                                          ;
    CPY      $10                       ; 0xd6c4 $96B4 C4 10                    ;; used as monster x register ;draw boss hp bar
    BEQ      L96C4                     ; 0xd6c6 $96B6 F0 0C                    ;
    LDA      $B6,y                     ; 0xd6c8 $96B8 B9 B6 00                 ; Generated Enemy Slot
    BEQ      L96C4                     ; 0xd6cb $96BB F0 07                    ;
    LDA      $A1,y                     ; 0xd6cd $96BD B9 A1 00                 ; Enemy Code
    CMP      $A1,x                     ; 0xd6d0 $96C0 D5 A1                    ;; Enemy Code
    BEQ      L96C8                     ; 0xd6d2 $96C2 F0 04                    ;
L96C4:                                                                          ;
    DEY                                ; 0xd6d4 $96C4 88                       ;
    BPL      L96B4                     ; 0xd6d5 $96C5 10 ED                    ;
    RTS                                ; 0xd6d7 $96C7 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L96C8:                                                                          ;
    TYA                                ; 0xd6d8 $96C8 98                       ;
    TAX                                ; 0xd6d9 $96C9 AA                       ;
    JSR      LDD3D                     ; 0xd6da $96CA 20 3D DD                 ;
    LDX      $10                       ; 0xd6dd $96CD A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0xd6df $96CF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Table_for_Random_Townfolks_Codes:                                         ;
;19	Blue Lumberjack                                                            ;
;1A	Red Lady with Bowl                                                         ;
;1B	Red Old Woman                                                              ;
;1C	Blue Lady                                                                  ;
.byt    $19,$1A,$1B                    ; 0xd6e0 $96D0 19 1A 1B                 ;
L96D3:                                                                          ;
.byt    $1C                            ; 0xd6e3 $96D3 1C                       ;
bank3_Table_for_Random_Townfolks_X_Velocities:                                  ;
;10 F0	Blue Lumberjack                                                         ;
;0C F4	Red Lady with Bowl                                                      ;
;08 F8	Red Old Woman                                                           ;
;0C F4	Blue Lady                                                               ;
.byt    $10,$F0,$0C,$F4,$08,$F8,$0C,$F4; 0xd6e4 $96D4 10 F0 0C F4 08 F8 0C F4  ;
bank3_Townfolks_initial_X_Position_adjustment_2low_then_2high:                  ;
.byt    $E0,$08                        ; 0xd6ec $96DC E0 08                    ;Townfolks initial X Position adjustment, low byte (2 bytes)
L96DE:                                                                          ;
.byt    $FF,$01                        ; 0xd6ee $96DE FF 01                    ;Townfolks initial X Position adjustment, high byte (2 bytes)
; ---------------------------------------------------------------------------- ;
bank3_code14:                                                                   ;
    INC      $AF,x                     ; 0xd6f0 $96E0 F6 AF                    ;; Various enemy state variables
    BNE      L96EF                     ; 0xd6f2 $96E2 D0 0B                    ;
    LDX      #$05                      ; 0xd6f4 $96E4 A2 05                    ; X = 05
L96E6:                                                                          ;
    LDA      $B6,x                     ; 0xd6f6 $96E6 B5 B6                    ;; Generated Enemy Slot
    BEQ      L96F0                     ; 0xd6f8 $96E8 F0 06                    ;
    DEX                                ; 0xd6fa $96EA CA                       ;
    BPL      L96E6                     ; 0xd6fb $96EB 10 F9                    ;
    LDX      $10                       ; 0xd6fd $96ED A6 10                    ;; used as monster x register ;draw boss hp bar
L96EF:                                                                          ;
    RTS                                ; 0xd6ff $96EF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L96F0:                                                                          ;
    LDA      $051B,x                   ; 0xd700 $96F0 BD 1B 05                 ; Randomizer
    STA      L0002                     ; 0xd703 $96F3 85 02                    ;
    AND      #$03                      ; 0xd705 $96F5 29 03                    ; keep bits .... ..xx
    TAY                                ; 0xd707 $96F7 A8                       ;
    ASL                                ; 0xd708 $96F8 0A                       ;
    STA      L0000                     ; 0xd709 $96F9 85 00                    ;
    LDA      bank3_Table_for_Random_Townfolks_Codes,y; 0xd70b $96FB B9 D0 96       ;
    STA      $A1,x                     ; 0xd70e $96FE 95 A1                    ; Enemy Code
    LDA      #$01                      ; 0xd710 $9700 A9 01                    ; A = 01
    STA      $B6,x                     ; 0xd712 $9702 95 B6                    ; Generated Enemy Slot
    LDA      #$FF                      ; 0xd714 $9704 A9 FF                    ; A = FF
    STA      $BC,x                     ; 0xd716 $9706 95 BC                    ;; Generated Enemy Y Position ?
    LDA      #$01                      ; 0xd718 $9708 A9 01                    ; A = 01
    STA      $1A,x                     ; 0xd71a $970A 95 1A                    ;
    LSR                                ; 0xd71c $970C 4A                       ;
    STA      $AF,x                     ; 0xd71d $970D 95 AF                    ;; Various enemy state variables
    LDA      #$B0                      ; 0xd71f $970F A9 B0                    ; A = B0
    STA      $2A,x                     ; 0xd721 $9711 95 2A                    ; Enemy Y Position
    LDA      $F7                       ; 0xd723 $9713 A5 F7                    ; Controller 1 buttons held
    AND      #$03                      ; 0xd725 $9715 29 03                    ; keep bits .... ..xx (Right and Left)
    BNE      L971B                     ; 0xd727 $9717 D0 02                    ;
    LDA      L0002                     ; 0xd729 $9719 A5 02                    ;
L971B:                                                                          ;
    AND      #$01                      ; 0xd72b $971B 29 01                    ; keep bits .... ...x
    TAY                                ; 0xd72d $971D A8                       ;
    LDA      $072C                     ; 0xd72e $971E AD 2C 07                 ; Scrolling Offset Low Byte
    CLC                                ; 0xd731 $9721 18                       ;
    ADC      bank3_Townfolks_initial_X_Position_adjustment_2low_then_2high,y; 0xd732 $9722 79 DC 96;
    STA      $4E,x                     ; 0xd735 $9725 95 4E                    ; Enemy X Position (low byte)
    LDA      $072A                     ; 0xd737 $9727 AD 2A 07                 ; Scrolling Offset High Byte
    ADC      L96DE,y                   ; 0xd73a $972A 79 DE 96                 ;
    STA      $3C,x                     ; 0xd73d $972D 95 3C                    ; Enemy X Position (high byte)
    INY                                ; 0xd73f $972F C8                       ;
    STY      $60,x                     ; 0xd740 $9730 94 60                    ; Enemy facing direction
    TYA                                ; 0xd742 $9732 98                       ;
    ADC      L0000                     ; 0xd743 $9733 65 00                    ;
    TAY                                ; 0xd745 $9735 A8                       ;
    LDA      L96D3,y                   ; 0xd746 $9736 B9 D3 96                 ;
    STA      $71,x                     ; 0xd749 $9739 95 71                    ; Enemy X Velocity
    JSR      L976B                     ; 0xd74b $973B 20 6B 97                 ;
    LDX      $10                       ; 0xd74e $973E A6 10                    ;; used as monster x register ;draw boss hp bar
L9740:                                                                          ;
    RTS                                ; 0xd750 $9740 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_table8:                                                                   ;
.byt    $F2,$0E                        ; 0xd751 $9741 F2 0E                    ;
; ---------------------------------------------------------------------------- ;
bank3_code15:                                                                   ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0xd753 $9743 20 91 DC; Determine Enemy Facing Direction
    STY      L0000                     ; 0xd756 $9746 84 00                    ;
    LDA      $A1,x                     ; 0xd758 $9748 B5 A1                    ; Enemy Code
    ASL                                ; 0xd75a $974A 0A                       ;
    ADC      L0000                     ; 0xd75b $974B 65 00                    ;
    TAY                                ; 0xd75d $974D A8                       ;
    LDA      L969A,y                   ; 0xd75e $974E B9 9A 96                 ;
    STA      $71,x                     ; 0xd761 $9751 95 71                    ; Enemy X Velocity
    JMP      L976B                     ; 0xd763 $9753 4C 6B 97                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9756:                                                                          ;
    LDA      $2A,x                     ; 0xd766 $9756 B5 2A                    ; Enemy Y Position
    SEC                                ; 0xd768 $9758 38                       ;
    SBC      #$08                      ; 0xd769 $9759 E9 08                    ; Y Offset when Townfolk gets out of house
    STA      $2A,x                     ; 0xd76b $975B 95 2A                    ;; Enemy Y Position
L975D:                                                                          ;
    LDA      #$80                      ; 0xd76d $975D A9 80                    ; A = 80
    STA      $AF,x                     ; 0xd76f $975F 95 AF                    ;; Various enemy state variables
    LDY      $60,x                     ; 0xd771 $9761 B4 60                    ; Enemy Facing Direction
L9764     = * + $0001                                                          ;
    LDA      $4E,x                     ; 0xd773 $9763 B5 4E                    ; Enemy X Position (low byte)
    CLC                                ; 0xd775 $9765 18                       ;
    ADC      L9740,y                   ; 0xd776 $9766 79 40 97                 ;
    STA      $4E,x                     ; 0xd779 $9769 95 4E                    ; Enemy X Position (low byte)
L976B:                                                                          ;
    LDA      #$00                      ; 0xd77b $976B A9 00                    ; A = 00
    STA      $05A5,x                   ; 0xd77d $976D 9D A5 05                 ;;town npc chat counter
    STA      $05B7,x                   ; 0xd780 $9770 9D B7 05                 ;
    STA      $05AB,x                   ; 0xd783 $9773 9D AB 05                 ;
    LDA      #$10                      ; 0xd786 $9776 A9 10                    ; A = 10
    STA      $05B1,x                   ; 0xd788 $9778 9D B1 05                 ;
    LDA      #$90                      ; 0xd78b $977B A9 90                    ; A = 90 (delay before leaving house)
    STA      $05BD,x                   ; 0xd78d $977D 9D BD 05                 ;
L9780:                                                                          ;
    RTS                                ; 0xd790 $9780 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_table9:                                                                   ;
.byt    $10,$00                        ; 0xd791 $9781 10 00                    ;
; ---------------------------------------------------------------------------- ;
bank3_code16:                                                                   ;
    LDA      $12                       ; 0xd793 $9783 A5 12                    ;; Frame Counter (ascending)
    AND      #$80                      ; 0xd795 $9785 29 80                    ; keep bits x... ....
    BNE      L9791                     ; 0xd797 $9787 D0 08                    ;
    LDA      $12                       ; 0xd799 $9789 A5 12                    ;; Frame Counter (ascending)
    AND      #$18                      ; 0xd79b $978B 29 18                    ; keep bits ...x x...
    STA      $81,x                     ; 0xd79d $978D 95 81                    ; Current Animation Frame for Enemy
    LDA      #$00                      ; 0xd79f $978F A9 00                    ; A = 00
L9791:                                                                          ;
    STA      $AF,x                     ; 0xd7a1 $9791 95 AF                    ;; Various enemy state variables
L9793:                                                                          ;
    JSR      bank3_code17              ; 0xd7a3 $9793 20 9B 9A                 ;
    JSR      L9A8D                     ; 0xd7a6 $9796 20 8D 9A                 ;
    LDA      $12                       ; 0xd7a9 $9799 A5 12                    ;; Frame Counter (ascending)
    AND      #$3F                      ; 0xd7ab $979B 29 3F                    ; keep bits ..xx xxxx
    BNE      L97A2                     ; 0xd7ad $979D D0 03                    ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0xd7af $979F 20 91 DC; Determine Enemy Facing Direction
L97A2:                                                                          ;
    LDA      #$00                      ; 0xd7b2 $97A2 A9 00                    ; A = 00
    STA      $AF,x                     ; 0xd7b4 $97A4 95 AF                    ;; Various enemy state variables
    JMP      L99B9                     ; 0xd7b6 $97A6 4C B9 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97A9:                                                                          ;
    JSR      bank3_code17              ; 0xd7b9 $97A9 20 9B 9A                 ;
    JSR      L9A8D                     ; 0xd7bc $97AC 20 8D 9A                 ;
    LDA      $C9                       ; 0xd7bf $97AF A5 C9                    ;
    BNE      L97D3                     ; 0xd7c1 $97B1 D0 20                    ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0xd7c3 $97B3 20 91 DC; Determine Enemy Facing Direction
    LDA      $05A5,x                   ; 0xd7c6 $97B6 BD A5 05                 ;;town npc chat counter
    BNE      L97D3                     ; 0xd7c9 $97B9 D0 18                    ;
    LDA      $0F                       ; 0xd7cb $97BB A5 0F                    ;
    ADC      #$20                      ; 0xd7cd $97BD 69 20                    ;
    CMP      #$40                      ; 0xd7cf $97BF C9 40                    ;
    BCS      L97D3                     ; 0xd7d1 $97C1 B0 10                    ;
    LDA      $A7                       ; 0xd7d3 $97C3 A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    LDA      $0479                     ; 0xd7d5 $97C5 AD 79 04                 ; Link is in mid-air ? (1 = mid-air)
    BNE      L97D3                     ; 0xd7d8 $97C8 D0 09                    ;
    STX      $048B                     ; 0xd7da $97CA 8E 8B 04                 ;; Conversation Pointer; Townfolk Slot				used as X position for monster ID
    JMP      L9A33                     ; 0xd7dd $97CD 4C 33 9A                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    INC      $05C3,x                   ; 0xd7e0 $97D0 FE C3 05                 ;
L97D3:                                                                          ;
    RTS                                ; 0xd7e3 $97D3 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97D4:                                                                          ;
    JSR      bank3_code17              ; 0xd7e4 $97D4 20 9B 9A                 ;
    LDA      $AF,x                     ; 0xd7e7 $97D7 B5 AF                    ;; Various enemy state variables
    BEQ      L983F                     ; 0xd7e9 $97D9 F0 64                    ;
    BPL      L983C                     ; 0xd7eb $97DB 10 5F                    ;
    CMP      #$80                      ; 0xd7ed $97DD C9 80                    ;
    BNE      L9808                     ; 0xd7ef $97DF D0 27                    ;
    JSR      L9A90                     ; 0xd7f1 $97E1 20 90 9A                 ;
    LDA      $C9                       ; 0xd7f4 $97E4 A5 C9                    ;
    ORA      $05BD,x                   ; 0xd7f6 $97E6 1D BD 05                 ;
    BNE      L983B                     ; 0xd7f9 $97E9 D0 50                    ;
    LDA      $CC                       ; 0xd7fb $97EB A5 CC                    ; Link's X Position on Screen
    SBC      $CD                       ; 0xd7fd $97ED E5 CD                    ;
    ADC      #$60                      ; 0xd7ff $97EF 69 60                    ;
    CMP      #$C0                      ; 0xd801 $97F1 C9 C0                    ;
    BCS      L983B                     ; 0xd803 $97F3 B0 46                    ;
    JSR      LEA32                     ; 0xd805 $97F5 20 32 EA                 ;
    JSR      L989F                     ; 0xd808 $97F8 20 9F 98                 ;
    LDY      $60,x                     ; 0xd80b $97FB B4 60                    ; Enemy facing direction
    LDA      $4E,x                     ; 0xd80d $97FD B5 4E                    ; Enemy X position (low byte)
    SEC                                ; 0xd80f $97FF 38                       ;
    SBC      L9740,y                   ; 0xd810 $9800 F9 40 97                 ;
    STA      $4E,x                     ; 0xd813 $9803 95 4E                    ; Enemy X Position (low byte)
    JMP      bank3_Related_to_woman_opening_door; 0xd815 $9805 4C 46 99            ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9808:                                                                          ;
    INC      $AF,x                     ; 0xd818 $9808 F6 AF                    ;; Various enemy state variables
    CMP      #$90                      ; 0xd81a $980A C9 90                    ;
    BCC      L981B                     ; 0xd81c $980C 90 0D                    ;
    LDA      $AF,x                     ; 0xd81e $980E B5 AF                    ;; Various enemy state variables
    PHA                                ; 0xd820 $9810 48                       ;
    LDA      #$01                      ; 0xd821 $9811 A9 01                    ; A = 01
    STA      $AF,x                     ; 0xd823 $9813 95 AF                    ;; Various enemy state variables
    JSR      L9A8A                     ; 0xd825 $9815 20 8A 9A                 ;
    PLA                                ; 0xd828 $9818 68                       ;
    STA      $AF,x                     ; 0xd829 $9819 95 AF                    ;; Various enemy state variables
L981B:                                                                          ;
    LDA      $AF,x                     ; 0xd82b $981B B5 AF                    ;; Various enemy state variables
    CMP      #$90                      ; 0xd82d $981D C9 90                    ;
    BNE      L9824                     ; 0xd82f $981F D0 03                    ;
    JMP      L994A                     ; 0xd831 $9821 4C 4A 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9824:                                                                          ;
    CMP      #$A0                      ; 0xd834 $9824 C9 A0                    ;
    BNE      L982B                     ; 0xd836 $9826 D0 03                    ;
    JMP      bank3_Related_to_woman_opening_door; 0xd838 $9828 4C 46 99            ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L982B:                                                                          ;
    CMP      #$B0                      ; 0xd83b $982B C9 B0                    ;
    BNE      L983B                     ; 0xd83d $982D D0 0C                    ;
    LDA      #$00                      ; 0xd83f $982F A9 00                    ; A = 00
    STA      $AF,x                     ; 0xd841 $9831 95 AF                    ;; Various enemy state variables
    LDA      #$90                      ; 0xd843 $9833 A9 90                    ; A = 90
    STA      $05BD,x                   ; 0xd845 $9835 9D BD 05                 ;
    JMP      L994E                     ; 0xd848 $9838 4C 4E 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L983B:                                                                          ;
    RTS                                ; 0xd84b $983B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L983C:                                                                          ;
    JMP      L9878                     ; 0xd84c $983C 4C 78 98                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L983F:                                                                          ;
    LDA      $2A,x                     ; 0xd84f $983F B5 2A                    ; Enemy Y Position
    CMP      #$B0                      ; 0xd851 $9841 C9 B0                    ;
    BCS      L9851                     ; 0xd853 $9843 B0 0C                    ;
    LDA      $12                       ; 0xd855 $9845 A5 12                    ;; Frame Counter (ascending)
L9847:                                                                          ;
    AND      #$0F                      ; 0xd857 $9847 29 0F                    ; keep bits .... xxxx
    BNE      L9851                     ; 0xd859 $9849 D0 06                    ;
    LDA      $2A,x                     ; 0xd85b $984B B5 2A                    ; Enemy Y Position
    ADC      #$04                      ; 0xd85d $984D 69 04                    ;
    STA      $2A,x                     ; 0xd85f $984F 95 2A                    ;; Enemy Y Position
L9851:                                                                          ;
    LDA      $05BD,x                   ; 0xd861 $9851 BD BD 05                 ;
    BEQ      L9868                     ; 0xd864 $9854 F0 12                    ;
    CMP      #$40                      ; 0xd866 $9856 C9 40                    ;
    BCS      L9870                     ; 0xd868 $9858 B0 16                    ;
    LDA      $71,x                     ; 0xd86a $985A B5 71                    ; Enemy X Velocity
    PHA                                ; 0xd86c $985C 48                       ;
    LDA      #$00                      ; 0xd86d $985D A9 00                    ; A = 00
    STA      $71,x                     ; 0xd86f $985F 95 71                    ;; Enemy X Velocity
    JSR      L9870                     ; 0xd871 $9861 20 70 98                 ;
    PLA                                ; 0xd874 $9864 68                       ;
    STA      $71,x                     ; 0xd875 $9865 95 71                    ;; Enemy X Velocity
    RTS                                ; 0xd877 $9867 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9868:                                                                          ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0xd878 $9868 20 EB E8;
    LDA      #$E0                      ; 0xd87b $986B A9 E0                    ; A = E0
    STA      $05BD,x                   ; 0xd87d $986D 9D BD 05                 ;
L9870:                                                                          ;
    LDA      $05B7,x                   ; 0xd880 $9870 BD B7 05                 ;
    BNE      L983C                     ; 0xd883 $9873 D0 C7                    ;
    JMP      L99B0                     ; 0xd885 $9875 4C B0 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9878:                                                                          ;
    JSR      bank3_code17              ; 0xd888 $9878 20 9B 9A                 ;
    JSR      L99B9                     ; 0xd88b $987B 20 B9 99                 ;
    JSR      L9A8A                     ; 0xd88e $987E 20 8A 9A                 ;
    LDA      $AF,x                     ; 0xd891 $9881 B5 AF                    ;; Various enemy state variables
    BNE      L98BC                     ; 0xd893 $9883 D0 37                    ;
    JSR      L9A68                     ; 0xd895 $9885 20 68 9A                 ;
    LDA      $A1,x                     ; 0xd898 $9888 B5 A1                    ; Enemy Code
    CMP      #$0A                      ; 0xd89a $988A C9 0A                    ;
    BCC      L98BB                     ; 0xd89c $988C 90 2D                    ;
    CMP      #$19                      ; 0xd89e $988E C9 19                    ;
    BCC      L9896                     ; 0xd8a0 $9890 90 04                    ;
    CMP      #$21                      ; 0xd8a2 $9892 C9 21                    ;
    BCC      L98BB                     ; 0xd8a4 $9894 90 25                    ;
L9896:                                                                          ;
    JSR      LEA32                     ; 0xd8a6 $9896 20 32 EA                 ;
    LDA      $D9                       ; 0xd8a9 $9899 A5 D9                    ; Thunder Spell modifier ?
    CMP      #$8B                      ; 0xd8ab $989B C9 8B                    ;
    BNE      L98BB                     ; 0xd8ad $989D D0 1C                    ;
L989F:                                                                          ;
    INC      $AF,x                     ; 0xd8af $989F F6 AF                    ;; Various enemy state variables
    LDA      $DC                       ; 0xd8b1 $98A1 A5 DC                    ;
    STA      $058D,x                   ; 0xd8b3 $98A3 9D 8D 05                 ;
    LDA      $DD                       ; 0xd8b6 $98A6 A5 DD                    ;
    STA      $0593,x                   ; 0xd8b8 $98A8 9D 93 05                 ;
    LDY      $60,x                     ; 0xd8bb $98AB B4 60                    ;; Enemy facing direction
    LDA      $4E,x                     ; 0xd8bd $98AD B5 4E                    ; Enemy X position (low byte)
    CLC                                ; 0xd8bf $98AF 18                       ;
    ADC      L9780,y                   ; 0xd8c0 $98B0 79 80 97                 ;
    STA      $0599,x                   ; 0xd8c3 $98B3 9D 99 05                 ;
    LDA      $3C,x                     ; 0xd8c6 $98B6 B5 3C                    ; Enemy X position (high byte)
    STA      $059F,x                   ; 0xd8c8 $98B8 9D 9F 05                 ;
L98BB:                                                                          ;
    RTS                                ; 0xd8cb $98BB 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98BC:                                                                          ;
    INC      $AF,x                     ; 0xd8cc $98BC F6 AF                    ;; Various enemy state variables
    CMP      #$10                      ; 0xd8ce $98BE C9 10                    ;
    BNE      L98C5                     ; 0xd8d0 $98C0 D0 03                    ;
    JMP      bank3_Related_to_woman_opening_door; 0xd8d2 $98C2 4C 46 99            ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98C5:                                                                          ;
    CMP      #$20                      ; 0xd8d5 $98C5 C9 20                    ;
    BNE      L98CC                     ; 0xd8d7 $98C7 D0 03                    ;
    JMP      L994A                     ; 0xd8d9 $98C9 4C 4A 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98CC:                                                                          ;
    CMP      #$40                      ; 0xd8dc $98CC C9 40                    ;
    BNE      L98D8                     ; 0xd8de $98CE D0 08                    ;
    JSR      L98F9                     ; 0xd8e0 $98D0 20 F9 98                 ;
    LDA      #$54                      ; 0xd8e3 $98D3 A9 54                    ; A = 54
    STA      (L0000),y                 ; 0xd8e5 $98D5 91 00                    ;
    RTS                                ; 0xd8e7 $98D7 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98D8:                                                                          ;
    CMP      #$70                      ; 0xd8e8 $98D8 C9 70                    ;
    BNE      L98DF                     ; 0xd8ea $98DA D0 03                    ;
    JMP      bank3_Related_to_woman_opening_door; 0xd8ec $98DC 4C 46 99            ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98DF:                                                                          ;
    CMP      #$7E                      ; 0xd8ef $98DF C9 7E                    ;
    BNE      L990A                     ; 0xd8f1 $98E1 D0 27                    ;
    JSR      L994E                     ; 0xd8f3 $98E3 20 4E 99                 ;
    LDA      $A1,x                     ; 0xd8f6 $98E6 B5 A1                    ; Enemy Code
    CMP      #$17                      ; 0xd8f8 $98E8 C9 17                    ;
    BCC      L98F6                     ; 0xd8fa $98EA 90 0A                    ;
    JSR      L975D                     ; 0xd8fc $98EC 20 5D 97                 ;
    LDA      #$FF                      ; 0xd8ff $98EF A9 FF                    ; A = FF
    STA      $05BD,x                   ; 0xd901 $98F1 9D BD 05                 ;
    BNE      L98F9                     ; 0xd904 $98F4 D0 03                    ;
L98F6:                                                                          ;
    JSR      LDD3D                     ; 0xd906 $98F6 20 3D DD                 ;
L98F9:                                                                          ;
    LDA      $058D,x                   ; 0xd909 $98F9 BD 8D 05                 ;
    STA      L0000                     ; 0xd90c $98FC 85 00                    ;
    LDA      $0593,x                   ; 0xd90e $98FE BD 93 05                 ;
    STA      $01                       ; 0xd911 $9901 85 01                    ;
    LDY      #$B0                      ; 0xd913 $9903 A0 B0                    ; Y = B0
    LDA      #$53                      ; 0xd915 $9905 A9 53                    ; A = 53
    STA      (L0000),y                 ; 0xd917 $9907 91 00                    ;
    RTS                                ; 0xd919 $9909 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L990A:                                                                          ;
    CMP      #$20                      ; 0xd91a $990A C9 20                    ;
    BCC      L9921                     ; 0xd91c $990C 90 13                    ;
    CMP      #$40                      ; 0xd91e $990E C9 40                    ;
    BCS      L9921                     ; 0xd920 $9910 B0 0F                    ;
    AND      #$0F                      ; 0xd922 $9912 29 0F                    ; keep bits .... xxxx
    CMP      #$07                      ; 0xd924 $9914 C9 07                    ;
    BNE      L991E                     ; 0xd926 $9916 D0 06                    ;
    LDA      $2A,x                     ; 0xd928 $9918 B5 2A                    ; Enemy Y Position
    SBC      #$04                      ; 0xd92a $991A E9 04                    ;
    STA      $2A,x                     ; 0xd92c $991C 95 2A                    ;; Enemy Y Position
L991E:                                                                          ;
    JMP      L9A68                     ; 0xd92e $991E 4C 68 9A                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9921:                                                                          ;
    RTS                                ; 0xd931 $9921 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Tile_Mappings_for_Opening_Door:                                           ;
.byt    $49,$FF,$FF                    ; 0xd932 $9922 49 FF FF                 ;
L9925:                                                                          ;
.byt    $FF,$FF,$47,$49,$FF,$FF,$FF,$FF; 0xd935 $9925 FF FF 47 49 FF FF FF FF  ;
.byt    $47,$49,$40,$40,$41,$40,$47    ; 0xd93d $992D 47 49 40 40 41 40 47     ;
L9934:                                                                          ;
.byt    $4A,$40,$40,$41,$40,$48,$4A,$FF; 0xd944 $9934 4A 40 40 41 40 48 4A FF  ;
.byt    $FF,$FF,$FF,$48,$4A,$40,$40,$40; 0xd94c $993C FF FF FF 48 4A 40 40 40  ;
.byt    $40,$48                        ; 0xd954 $9944 40 48                    ;
; ---------------------------------------------------------------------------- ;
bank3_Related_to_woman_opening_door:                                            ;
    LDX      #$00                      ; 0xd956 $9946 A2 00                    ; X = 00
    BEQ      L9950                     ; 0xd958 $9948 F0 06                    ;
L994A:                                                                          ;
    LDX      #$06                      ; 0xd95a $994A A2 06                    ; X = 06
    BNE      L9950                     ; 0xd95c $994C D0 02                    ;
L994E:                                                                          ;
    LDX      #$0C                      ; 0xd95e $994E A2 0C                    ; X = 0C
L9950:                                                                          ;
    LDA      $C9                       ; 0xd960 $9950 A5 C9                    ;
    AND      #$0C                      ; 0xd962 $9952 29 0C                    ; keep bits .... xx..
    CMP      #$0C                      ; 0xd964 $9954 C9 0C                    ;
    BNE      L995A                     ; 0xd966 $9956 D0 02                    ;
    LDX      #$0C                      ; 0xd968 $9958 A2 0C                    ; X = 0C
L995A:                                                                          ;
    LDA      #$05                      ; 0xd96a $995A A9 05                    ; A = 05
    STA      L0000                     ; 0xd96c $995C 85 00                    ;
    LDY      $0301                     ; 0xd96e $995E AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
L9961:                                                                          ;
    LDA      bank3_Tile_Mappings_for_Opening_Door,x; 0xd971 $9961 BD 22 99         ;
    STA      $0305,y                   ; 0xd974 $9964 99 05 03                 ;
    LDA      L9934,x                   ; 0xd977 $9967 BD 34 99                 ;
    STA      $030E,y                   ; 0xd97a $996A 99 0E 03                 ;
    INX                                ; 0xd97d $996D E8                       ;
    INY                                ; 0xd97e $996E C8                       ;
    DEC      L0000                     ; 0xd97f $996F C6 00                    ;
    BPL      L9961                     ; 0xd981 $9971 10 EE                    ;
    LDX      $10                       ; 0xd983 $9973 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDY      $0301                     ; 0xd985 $9975 AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDA      $0599,x                   ; 0xd988 $9978 BD 99 05                 ;
    LSR                                ; 0xd98b $997B 4A                       ;
    LSR                                ; 0xd98c $997C 4A                       ;
    LSR                                ; 0xd98d $997D 4A                       ;
    LSR                                ; 0xd98e $997E 4A                       ;
    ASL                                ; 0xd98f $997F 0A                       ;
    ADC      #$80                      ; 0xd990 $9980 69 80                    ;
    STA      $0303,y                   ; 0xd992 $9982 99 03 03                 ;
    ADC      #$01                      ; 0xd995 $9985 69 01                    ;
    STA      $030C,y                   ; 0xd997 $9987 99 0C 03                 ;
    LDA      $059F,x                   ; 0xd99a $998A BD 9F 05                 ;
    AND      #$01                      ; 0xd99d $998D 29 01                    ; keep bits .... ...x
    ASL                                ; 0xd99f $998F 0A                       ;
    ASL                                ; 0xd9a0 $9990 0A                       ;
    ORA      #$22                      ; 0xd9a1 $9991 09 22                    ; set  bits ..x. ..x.
    STA      L0302,y                   ; 0xd9a3 $9993 99 02 03                 ;
    STA      $030B,y                   ; 0xd9a6 $9996 99 0B 03                 ;
    LDA      #$86                      ; 0xd9a9 $9999 A9 86                    ; A = 86
    STA      $0304,y                   ; 0xd9ab $999B 99 04 03                 ;
    STA      $030D,y                   ; 0xd9ae $999E 99 0D 03                 ;
    LDA      #$FF                      ; 0xd9b1 $99A1 A9 FF                    ; A = FF
    STA      $0314,y                   ; 0xd9b3 $99A3 99 14 03                 ;
    TYA                                ; 0xd9b6 $99A6 98                       ;
    CLC                                ; 0xd9b7 $99A7 18                       ;
    ADC      #$12                      ; 0xd9b8 $99A8 69 12                    ;
    STA      $0301                     ; 0xd9ba $99AA 8D 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDX      $10                       ; 0xd9bd $99AD A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0xd9bf $99AF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99B0:                                                                          ;
    JSR      bank3_code17              ; 0xd9c0 $99B0 20 9B 9A                 ;
    JSR      L9A8A                     ; 0xd9c3 $99B3 20 8A 9A                 ;
    JSR      L9A68                     ; 0xd9c6 $99B6 20 68 9A                 ;
L99B9:                                                                          ;
    LDA      $C9                       ; 0xd9c9 $99B9 A5 C9                    ;
    ORA      $074C                     ; 0xd9cb $99BB 0D 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    BNE      L9A1C                     ; 0xd9ce $99BE D0 5C                    ;
    LDA      $A1,x                     ; 0xd9d0 $99C0 B5 A1                    ; Enemy Code
    CMP      #$0A                      ; 0xd9d2 $99C2 C9 0A                    ;
    BEQ      L99CB                     ; 0xd9d4 $99C4 F0 05                    ;
    LDA      $0479                     ; 0xd9d6 $99C6 AD 79 04                 ; Link is in mid-air ? (1 = mid-air)
    BNE      L9A1C                     ; 0xd9d9 $99C9 D0 51                    ;
L99CB:                                                                          ;
    JSR      LE4D9                     ; 0xd9db $99CB 20 D9 E4                 ;
    LDA      $A8,x                     ; 0xd9de $99CE B5 A8                    ;; Enemy State
    AND      #$10                      ; 0xd9e0 $99D0 29 10                    ; keep bits ...x ....
    BEQ      L9A1C                     ; 0xd9e2 $99D2 F0 48                    ;
    STX      $048B                     ; 0xd9e4 $99D4 8E 8B 04                 ;; Conversation Pointer; Townfolk Slot				used as X position for monster ID
    LDA      $0736                     ; 0xd9e7 $99D7 AD 36 07                 ; Game Mode
    CMP      #$16                      ; 0xd9ea $99DA C9 16                    ;
    BNE      L9A1D                     ; 0xd9ec $99DC D0 3F                    ;
    LDA      $AF,x                     ; 0xd9ee $99DE B5 AF                    ;; Various enemy state variables
    CMP      #$40                      ; 0xd9f0 $99E0 C9 40                    ;
    BCC      L9A1C                     ; 0xd9f2 $99E2 90 38                    ;
    LDA      $A1,x                     ; 0xd9f4 $99E4 B5 A1                    ; Enemy Code
L99E6:                                                                          ;
    CMP      #$17                      ; 0xd9f6 $99E6 C9 17                    ;healer lady?
    BCC      L9A1C                     ; 0xd9f8 $99E8 90 32                    ;
    JSR      L98F9                     ; 0xd9fa $99EA 20 F9 98                 ;
    LDY      #$04                      ; 0xd9fd $99ED A0 04                    ; Y = 04
    STY      $074C                     ; 0xd9ff $99EF 8C 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    STY      $DE                       ; 0xda02 $99F2 84 DE                    ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    INC      $05C3,x                   ; 0xda04 $99F4 FE C3 05                 ;
    LDA      #$0B                      ; 0xda07 $99F7 A9 0B                    ; A = 0B
    STA      $0736                     ; 0xda09 $99F9 8D 36 07                 ; Game Mode
    DEC      $075B                     ; 0xda0c $99FC CE 5B 07                 ;
    INC      $048D                     ; 0xda0f $99FF EE 8D 04                 ;; Related to Link's flicker after being hit ?
    LDA      #$00                      ; 0xda12 $9A02 A9 00                    ; A = 00
L9A04:                                                                          ;
    STA      $0726                     ; 0xda14 $9A04 8D 26 07                 ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    LDX      #$05                      ; 0xda17 $9A07 A2 05                    ; X = 05
L9A09:                                                                          ;
    LDA      $B6,x                     ; 0xda19 $9A09 B5 B6                    ; Generated Enemy Slot
    BEQ      L9A17                     ; 0xda1b $9A0B F0 0A                    ;
    LDY      $BC,x                     ; 0xda1d $9A0D B4 BC                    ;; Generated Enemy Y Position ?
    BMI      L9A17                     ; 0xda1f $9A0F 30 06                    ;
    LDA      ($D6),y                   ; 0xda21 $9A11 B1 D6                    ;
    ORA      #$80                      ; 0xda23 $9A13 09 80                    ; set bits x... ....
    STA      ($D6),y                   ; 0xda25 $9A15 91 D6                    ;
L9A17:                                                                          ;
    DEX                                ; 0xda27 $9A17 CA                       ;
    BPL      L9A09                     ; 0xda28 $9A18 10 EF                    ;
    LDX      $10                       ; 0xda2a $9A1A A6 10                    ;; used as monster x register ;draw boss hp bar
L9A1C:                                                                          ;
    RTS                                ; 0xda2c $9A1C 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A1D:                                                                          ;
    LDA      $05BD,x                   ; 0xda2d $9A1D BD BD 05                 ;
    CMP      #$65                      ; 0xda30 $9A20 C9 65                    ;
    BCC      L9A28                     ; 0xda32 $9A22 90 04                    ;
    CMP      #$AC                      ; 0xda34 $9A24 C9 AC                    ;
    BCC      L9A4F                     ; 0xda36 $9A26 90 27                    ;
L9A28:                                                                          ;
    LDA      $AF,x                     ; 0xda38 $9A28 B5 AF                    ;; Various enemy state variables
    BNE      L9A4F                     ; 0xda3a $9A2A D0 23                    ;
bank3_Check_for_B_button_to_talk_to_people:                                     ;
    LDA       !$F5                     ; 0xda3c $9A2C AD F5 00                 ; Controller 1 buttons pressed
    AND      #$40                      ; 0xda3f $9A2F 29 40                    ; keep bits .x.. .... (B button)
    BEQ      L9A4F                     ; 0xda41 $9A31 F0 1C                    ;
L9A33:                                                                          ;
    LDA      #$02                      ; 0xda43 $9A33 A9 02                    ; A = 02
    STA      $074C                     ; 0xda45 $9A35 8D 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    STA      $DE                       ; 0xda48 $9A38 85 DE                    ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    INC      $05C3,x                   ; 0xda4a $9A3A FE C3 05                 ;
    LDA      #$00                      ; 0xda4d $9A3D A9 00                    ; A = 00
    STA      $0400                     ; 0xda4f $9A3F 8D 00 04                 ; Sword slash frame code
    LDA      #$03                      ; 0xda52 $9A42 A9 03                    ; A = 03 (Link set to stand when talking)
    STA      $80                       ; 0xda54 $9A44 85 80                    ; Current Animation Frame for Link
L9A46:                                                                          ;
    LDA      $29                       ; 0xda56 $9A46 A5 29                    ; Link's Y position
    AND      #$F0                      ; 0xda58 $9A48 29 F0                    ; keep bits xxxx ....
    STA      $29                       ; 0xda5a $9A4A 85 29                    ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    INC      $05A5,x                   ; 0xda5c $9A4C FE A5 05                 ;;town npc chat counter
L9A4F:                                                                          ;
    RTS                                ; 0xda5f $9A4F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A50:                                                                          ;
    LDA      #$FF                      ; 0xda60 $9A50 A9 FF                    ; A = FF
    STA      $05BD,x                   ; 0xda62 $9A52 9D BD 05                 ;
    LDA      #$02                      ; 0xda65 $9A55 A9 02                    ; A = 02
    STA      $05B7,x                   ; 0xda67 $9A57 9D B7 05                 ;
    LDY      $05AB,x                   ; 0xda6a $9A5A BC AB 05                 ;
    BPL      L9A60                     ; 0xda6d $9A5D 10 01                    ;
    LSR                                ; 0xda6f $9A5F 4A                       ;
L9A60:                                                                          ;
    CMP      $60,x                     ; 0xda70 $9A60 D5 60                    ;; Enemy facing direction
    BEQ      L9A67                     ; 0xda72 $9A62 F0 03                    ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0xda74 $9A64 20 EB E8;
L9A67:                                                                          ;
    RTS                                ; 0xda77 $9A67 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A68:                                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0xda78 $9A68 20 B8 DE               ;
    INC      $05B1,x                   ; 0xda7b $9A6B FE B1 05                 ;
    LDA      $05B1,x                   ; 0xda7e $9A6E BD B1 05                 ;
    AND      #$0F                      ; 0xda81 $9A71 29 0F                    ; keep bits .... xxxx
    BNE      L9A89                     ; 0xda83 $9A73 D0 14                    ;
    LDA      #$01                      ; 0xda85 $9A75 A9 01                    ; A = 01
    LDY      $71,x                     ; 0xda87 $9A77 B4 71                    ;; Enemy X Velocity
    BEQ      L9A89                     ; 0xda89 $9A79 F0 0E                    ;
    BPL      L9A84                     ; 0xda8b $9A7B 10 07                    ;
    ASL                                ; 0xda8d $9A7D 0A                       ;
    DEC      $05AB,x                   ; 0xda8e $9A7E DE AB 05                 ;
    DEC      $05AB,x                   ; 0xda91 $9A81 DE AB 05                 ;
L9A84:                                                                          ;
    INC      $05AB,x                   ; 0xda94 $9A84 FE AB 05                 ;
    STA      $60,x                     ; 0xda97 $9A87 95 60                    ;; Enemy facing direction
L9A89:                                                                          ;
    RTS                                ; 0xda99 $9A89 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A8A:                                                                          ;
    JSR      LDE6C                     ; 0xda9a $9A8A 20 6C DE                 ;
L9A8D:                                                                          ;
    JSR      bank7_Display             ; 0xda9d $9A8D 20 11 EF                 ;
L9A90:                                                                          ;
    LDA      $05BD,x                   ; 0xdaa0 $9A90 BD BD 05                 ;
    BEQ      L9A98                     ; 0xdaa3 $9A93 F0 03                    ;
    DEC      $05BD,x                   ; 0xdaa5 $9A95 DE BD 05                 ;
L9A98:                                                                          ;
    RTS                                ; 0xdaa8 $9A98 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_table10:                                                                  ;
.byt    $02,$01                        ; 0xdaa9 $9A99 02 01                    ;
; ---------------------------------------------------------------------------- ;
bank3_code17:                                                                   ;
    LDA      $05C3,x                   ; 0xdaab $9A9B BD C3 05                 ;
    BEQ      L9A98                     ; 0xdaae $9A9E F0 F8                    ;
    LDA      $60,x                     ; 0xdab0 $9AA0 B5 60                    ;; Enemy facing direction
    PHA                                ; 0xdab2 $9AA2 48                       ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0xdab3 $9AA3 20 91 DC;
    LDA      bank3_table10,y           ; 0xdab6 $9AA6 B9 99 9A                 ;
    STA      $9F                       ; 0xdab9 $9AA9 85 9F                    ;;link facedir SideScroll		; Direction arrow pressed (1 = right, 2 = left)
    PLA                                ; 0xdabb $9AAB 68                       ;
    LDY      $A1,x                     ; 0xdabc $9AAC B4 A1                    ; Enemy Code
    CPY      #$13                      ; 0xdabe $9AAE C0 13                    ;
    BCC      L9AB8                     ; 0xdac0 $9AB0 90 06                    ;
    CPY      #$19                      ; 0xdac2 $9AB2 C0 19                    ;
    BCS      L9AB8                     ; 0xdac4 $9AB4 B0 02                    ;
    STA      $60,x                     ; 0xdac6 $9AB6 95 60                    ;; Enemy facing direction
L9AB8:                                                                          ;
    PLA                                ; 0xdac8 $9AB8 68                       ;
    PLA                                ; 0xdac9 $9AB9 68                       ;
    JMP      bank7_Display             ; 0xdaca $9ABA 4C 11 EF                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9ABD:                                                                          ;
    LDA      #$00                      ; 0xdacd $9ABD A9 00                    ; A = 00
    STA      $05BD,x                   ; 0xdacf $9ABF 9D BD 05                 ;
    JSR      L99B9                     ; 0xdad2 $9AC2 20 B9 99                 ;
    JMP      LDE6C                     ; 0xdad5 $9AC5 4C 6C DE                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Enemy_Routines1_Wise_Man:                                                 ;
    LDA      $049E                     ; 0xdad8 $9AC8 AD 9E 04                 ;
    BEQ      bank3_Enemy_Routines1_ManyNPC; 0xdadb $9ACB F0 1B                    ;
    DEC      $049E                     ; 0xdadd $9ACD CE 9E 04                 ;
    LDA      #$00                      ; 0xdae0 $9AD0 A9 00                    ; A = 00
    STA      $05C3,x                   ; 0xdae2 $9AD2 9D C3 05                 ;
    DEC      L0000                     ; 0xdae5 $9AD5 C6 00                    ;
    DEC      L0000                     ; 0xdae7 $9AD7 C6 00                    ;
    DEC      L0000                     ; 0xdae9 $9AD9 C6 00                    ;
    DEC      L0000                     ; 0xdaeb $9ADB C6 00                    ;
    LDA      #$01                      ; 0xdaed $9ADD A9 01                    ; A = 01
    STA      $03                       ; 0xdaef $9ADF 85 03                    ;
    LDY      $91,x                     ; 0xdaf1 $9AE1 B4 91                    ;
    LDX      #$4C                      ; 0xdaf3 $9AE3 A2 4C                    ; X = 4C
    JMP      L9B3F                     ; 0xdaf5 $9AE5 4C 3F 9B                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Enemy_Routines1_ManyNPC:                                                  ;
    LDA      $71,x                     ; 0xdaf8 $9AE8 B5 71                    ; Enemy X Velocity
    STA      $09                       ; 0xdafa $9AEA 85 09                    ;
    LDA      $AF,x                     ; 0xdafc $9AEC B5 AF                    ;; Various enemy state variables
    PHA                                ; 0xdafe $9AEE 48                       ;
    LDA      $05C3,x                   ; 0xdaff $9AEF BD C3 05                 ;
    STA      $05                       ; 0xdb02 $9AF2 85 05                    ;
    LDY      $A1,x                     ; 0xdb04 $9AF4 B4 A1                    ; Enemy Code
    LDA      $6DF9,y                   ; 0xdb06 $9AF6 B9 F9 6D                 ;
    STA      $03                       ; 0xdb09 $9AF9 85 03                    ;
    LDA      $6DD5,y                   ; 0xdb0b $9AFB B9 D5 6D                 ;
    LDY      $91,x                     ; 0xdb0e $9AFE B4 91                    ;
    STY      $0F                       ; 0xdb10 $9B00 84 0F                    ;
    TAX                                ; 0xdb12 $9B02 AA                       ;
    PLA                                ; 0xdb13 $9B03 68                       ;
    ASL      $03                       ; 0xdb14 $9B04 06 03                    ;
    BCC      L9B0A                     ; 0xdb16 $9B06 90 02                    ;
    BCS      L9B3B                     ; 0xdb18 $9B08 B0 31                    ;
L9B0A:                                                                          ;
    CMP      #$40                      ; 0xdb1a $9B0A C9 40                    ;
    BCS      L9B45                     ; 0xdb1c $9B0C B0 37                    ;
    ASL      $05                       ; 0xdb1e $9B0E 06 05                    ;
    BNE      L9B3B                     ; 0xdb20 $9B10 D0 29                    ;
    CMP      #$00                      ; 0xdb22 $9B12 C9 00                    ;
    BEQ      L9B20                     ; 0xdb24 $9B14 F0 0A                    ;
    CMP      #$40                      ; 0xdb26 $9B16 C9 40                    ;
    BCC      L9B1C                     ; 0xdb28 $9B18 90 02                    ;
    BCS      L9B45                     ; 0xdb2a $9B1A B0 29                    ;
L9B1C:                                                                          ;
    CMP      #$20                      ; 0xdb2c $9B1C C9 20                    ;
    BCC      L9B37                     ; 0xdb2e $9B1E 90 17                    ;
L9B20:                                                                          ;
    LDA      $09                       ; 0xdb30 $9B20 A5 09                    ;
    BEQ      L9B3B                     ; 0xdb32 $9B22 F0 17                    ;
    BPL      L9B2B                     ; 0xdb34 $9B24 10 05                    ;
    EOR      #$FF                      ; 0xdb36 $9B26 49 FF                    ; flip all bits
    CLC                                ; 0xdb38 $9B28 18                       ;
    ADC      #$01                      ; 0xdb39 $9B29 69 01                    ;
L9B2B:                                                                          ;
    TAY                                ; 0xdb3b $9B2B A8                       ;
    LDA      #$08                      ; 0xdb3c $9B2C A9 08                    ; A = 08
    CPY      #$10                      ; 0xdb3e $9B2E C0 10                    ;
    BCS      L9B33                     ; 0xdb40 $9B30 B0 01                    ;
    ASL                                ; 0xdb42 $9B32 0A                       ;
L9B33:                                                                          ;
    AND      $12                       ; 0xdb43 $9B33 25 12                    ;; Frame Counter (ascending)
    BNE      L9B3B                     ; 0xdb45 $9B35 D0 04                    ;
L9B37:                                                                          ;
    INX                                ; 0xdb47 $9B37 E8                       ;
    INX                                ; 0xdb48 $9B38 E8                       ;
    INX                                ; 0xdb49 $9B39 E8                       ;
    INX                                ; 0xdb4a $9B3A E8                       ;
L9B3B:                                                                          ;
    LSR      $03                       ; 0xdb4b $9B3B 46 03                    ;
    LDY      $0F                       ; 0xdb4d $9B3D A4 0F                    ;
L9B3F:                                                                          ;
    JSR      LF1F4                     ; 0xdb4f $9B3F 20 F4 F1                 ;
    JMP      LF0D7                     ; 0xdb52 $9B42 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B45:                                                                          ;
    LDX      $10                       ; 0xdb55 $9B45 A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0xdb57 $9B47 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Background_Areas_Data:                                                    ;
.byt    $14,$20,$06,$78,$00,$D7,$D2,$04; 0xdb58 $9B48 14 20 06 78 00 D7 D2 04  ;
.byt    $D2,$02,$20,$D3,$D2,$0C,$D2,$0E; 0xdb60 $9B50 D2 02 20 D3 D2 0C D2 0E  ;
.byt    $D8,$00,$DE,$0F                ; 0xdb68 $9B58 D8 00 DE 0F              ;
L9B5C:                                                                          ;
.byt    $18,$60,$90,$00,$14,$06,$32,$07; 0xdb6c $9B5C 18 60 90 00 14 06 32 07  ;
.byt    $21,$06,$0D,$07,$48,$06,$18,$06; 0xdb74 $9B64 21 06 0D 07 48 06 18 06  ;
.byt    $32,$07,$28,$06,$06,$07,$46,$06; 0xdb7c $9B6C 32 07 28 06 06 07 46 06  ;
bank3_Area_Data_Towns2:                                                         ;
.byt    $09,$20,$08,$7A,$E1,$00,$AB,$0F; 0xdb84 $9B74 09 20 08 7A E1 00 AB 0F  ;
.byt    $0E                            ; 0xdb8c $9B7C 0E                       ;
L9B7D:                                                                          ;
.byt    $09,$20,$08,$7A,$E1,$00,$AB,$0F; 0xdb8d $9B7D 09 20 08 7A E1 00 AB 0F  ;
.byt    $07                            ; 0xdb95 $9B85 07                       ;
; ---------------------------------------------------------------------------- ;
bank3_code18:                                                                   ;
    TXA                                ; 0xdb96 $9B86 8A                       ;
    LSR                                ; 0xdb97 $9B87 4A                       ;
    LSR                                ; 0xdb98 $9B88 4A                       ;
    LSR                                ; 0xdb99 $9B89 4A                       ;
    LSR                                ; 0xdb9a $9B8A 4A                       ;
    TAX                                ; 0xdb9b $9B8B AA                       ;
    DEX                                ; 0xdb9c $9B8C CA                       ;
    LDA      $0730                     ; 0xdb9d $9B8D AD 30 07                 ; Position of Object Placement
    AND      #$F0                      ; 0xdba0 $9B90 29 F0                    ; keep bits xxxx ....
    CMP      #$F0                      ; 0xdba2 $9B92 C9 F0                    ;
    BNE      L9B9B                     ; 0xdba4 $9B94 D0 05                    ;
    TXA                                ; 0xdba6 $9B96 8A                       ;
    CLC                                ; 0xdba7 $9B97 18                       ;
    ADC      #$0F                      ; 0xdba8 $9B98 69 0F                    ;
    TAX                                ; 0xdbaa $9B9A AA                       ;
L9B9B:                                                                          ;
    TXA                                ; 0xdbab $9B9B 8A                       ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0xdbac $9B9C 20 85 D3; Set Object Construction Address
bank3_Pointer_table_for_Objects_Construction_Routines:                          ;
.word    bank3_Objects_Construction_Routines_Cross_Hatched_Roof_2_high_X_wide_1x; 0xdbaf $9B9F EE 80;Cross Hatched Roof, 2 high, X wide	(1x)
.word    bank3_Objects_Construction_Routines_Cross_Hatched_Roof_2_high_X_wide_1x; 0xdbb1 $9BA1 EE 80;Cross Hatched Roof, 2 high, X wide	(2x)
.word    bank3_Objects_Construction_Routines_White_Shingle_Roof_2_high_X_wide_3x; 0xdbb3 $9BA3 F2 80;White Shingle Roof, 2 high, X wide	(3x)
.word    bank3_Objects_Construction_Routines_Green_Shingle_Roof_2_high_X_wide_4x; 0xdbb5 $9BA5 F6 80;Green Shingle Roof, 2 high, X wide	(4x)
.word    bank3_Objects_Construction_Routines_House_Facade__Bricks_X_wide__5x; 0xdbb7 $9BA7 3B 81;House Facade - Bricks, X wide		(5x)
.word    bank3_Objects_Construction_Routines_House_Facade__Small_bricks_X_wide_6x; 0xdbb9 $9BA9 3F 81;House Facade - Small bricks, X wide	(6x)
.word    bank3_Objects_Construction_Routines_House_Facade__Grass_X_wide__7x; 0xdbbb $9BAB 43 81;House Facade - Grass, X wide		(7x)
.word    bank3_Objects_Construction_Routines_House_Facade__White_bricks_X_wide_8x; 0xdbbd $9BAD 47 81;House Facade - White bricks, X wide	(8x)
.word    bank3_Objects_Construction_Routines_House_Facade__Logs_X_wide__9x; 0xdbbf $9BAF 55 81;House Facade - Logs, X wide		(9x)
.word    bank3_Objects_Construction_Routines_Square_Window_1_wide_2_high_repeat_down_Ax; 0xdbc1 $9BB1 7E 81;Square Window, 1 wide, 2 high, repeat down	(Ax)
.word    bank3_Objects_Construction_Routines_Rounded_Window_1_wide_2_high_repeat_down_Bx; 0xdbc3 $9BB3 82 81;Rounded Window, 1 wide, 2 high, repeat down	(Bx)
.word    bank3_Objects_Construction_Routines_Hatched_Window_1_wide_2_high_repeat_down_Cx; 0xdbc5 $9BB5 8C 81;Hatched Window, 1 wide, 2 high, repeat down	(Cx)
.word    bank3_Objects_Construction_Routines_Blocks_wall_in_caves_2_high_X_wide_Dx; 0xdbc7 $9BB7 02 81;Blocks wall in caves, 2 high, X wide	(Dx)
.word    bank3_Objects_Construction_Routines_Column_X_high_1_wide___Ex; 0xdbc9 $9BB9 6D 9C;Column, X high, 1 wide			(Ex)
.word    bank3_Objects_Construction_Routines_Square_brick_wall_1_high_X_wide_Fx; 0xdbcb $9BBB 8C 9C;Square brick wall, 1 high, X wide	(Fx)
.word    bank3_Objects_Construction_Routines_Bushes_1_high_X_wide_Y_Position_A__1x; 0xdbcd $9BBD 95 8B;Bushes, 1 high, X wide (Y Position A)		(1x)
.word    bank3_Objects_Construction_Routines_Background_wall_3_wide_X_high_Y_Position_4_2x; 0xdbcf $9BBF 3A 83;Background wall, 3 wide, X high (Y Position 4)	(2x)
.word    bank3_Objects_Construction_Routines_Indoor_Ceiling_3Step_Stairs_3_high_X_wide_3x; 0xdbd1 $9BC1 A8 81;Indoor Ceiling (3-Step Stairs), 3 high, X wide	(3x)
.word    bank3_Objects_Construction_Routines_Indoor_Ceiling_3Step_Stairs_3_high_X_wide_4x; 0xdbd3 $9BC3 D2 81;Indoor Ceiling (3-Step Stairs), 3 high, X wide	(4x)
.word    bank3_Objects_Construction_Routines_Bagu_maybe_confused_red_lumberjack__5x; 0xdbd5 $9BC5 5B 86;Bagu ? (confused red lumberjack)		(5x)
.word    bank3_Objects_Construction_Routines_Bridge_with_Water_X_wide_Y_Position_A_6x; 0xdbd7 $9BC7 66 83;Bridge with Water, X wide (Y Position A)	(6x)
.word    bank3_Objects_Construction_Routines_Water_X_wide_Y_Position_A___7x; 0xdbd9 $9BC9 0A 83;Water, X wide (Y Position A)			(7x)
; ---------------------------------------------------------------------------- ;
bank3_code19:                                                                   ;
    LDA      $0730                     ; 0xdbdb $9BCB AD 30 07                 ; Position of Object Placement
    AND      #$F0                      ; 0xdbde $9BCE 29 F0                    ; keep bits xxxx ....
    CMP      #$F0                      ; 0xdbe0 $9BD0 C9 F0                    ;
    BNE      L9BD9                     ; 0xdbe2 $9BD2 D0 05                    ;
    TXA                                ; 0xdbe4 $9BD4 8A                       ;
    CLC                                ; 0xdbe5 $9BD5 18                       ;
    ADC      #$10                      ; 0xdbe6 $9BD6 69 10                    ;
    TAX                                ; 0xdbe8 $9BD8 AA                       ;
L9BD9:                                                                          ;
    TXA                                ; 0xdbe9 $9BD9 8A                       ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0xdbea $9BDA 20 85 D3;
bank3_Table_for_Small_Objects_Construction_Routines:                            ;
.word    bank3_SmallObjectsConstructionRoutines_Closed_Door_with_Grass_00; 0xdbed $9BDD A4 83;Closed Door with Grass	(00)
.word    bank3_SmallObjectsConstructionRoutines_Open_Door_with_Grass_01; 0xdbef $9BDF A8 83;Open Door with Grass	(01)
.word    bank3_SmallObjectsConstructionRoutines_Open_Door_with_Lines_02; 0xdbf1 $9BE1 AC 83;Open Door with Lines	(02)
.word    bank3_SmallObjectsConstructionRoutines_Open_Door_with_Bricks_03; 0xdbf3 $9BE3 B0 83;Open Door with Bricks	(03)
.word    bank3_SmallObjectsConstructionRoutines_Undefined_Object_2_wide_extending_to_ground_04; 0xdbf5 $9BE5 F5 82;Undefined Object, 2 wide, extending to ground (04)
.word    bank3_SmallObjectsConstructionRoutines_Chair__05; 0xdbf7 $9BE7 83 86  ;Chair		(05)
.word    bank3_SmallObjectsConstructionRoutines_Cloud__Long_06; 0xdbf9 $9BE9 62 86;Cloud - Long	(06)
.word    bank3_SmallObjectsConstructionRoutines_Cloud__Short_07; 0xdbfb $9BEB 68 86;Cloud - Short	(07)
.word    bank3_SmallObjectsConstructionRoutines_Table__08; 0xdbfd $9BED B2 82  ;Table		(08)
.word    bank3_SmallObjectsConstructionRoutines_Bench__09; 0xdbff $9BEF 93 86  ;Bench		(09)
.word    bank3_SmallObjectsConstructionRoutines_Cross__0A; 0xdc01 $9BF1 7C 86  ;Cross		(0A)
.word    bank3_SmallObjectsConstructionRoutines_Chimney_2_wide_1_high_can_crouch_in_it_0B; 0xdc03 $9BF3 56 9C;Chimney, 2 wide, 1 high (can crouch in it)	(0B)
.word    bank3_SmallObjectsConstructionRoutines_Chimney_2_wide_1_high_cant_go_in__0C; 0xdc05 $9BF5 5C 9C;Chimney, 2 wide, 1 high (can't go in)		(0C)
.word    bank3_SmallObjectsConstructionRoutines_Churchbell_0D; 0xdc07 $9BF7 78 86;Churchbell	(0D)
.word    bank3_SmallObjectsConstructionRoutines_Locked_Door_glitched_tiles_0E; 0xdc09 $9BF9 8E 8B;Locked Door (glitched tiles)	(0E)
.word    bank3_SmallObjectsConstructionRoutines_Locked_Door_glitched_tiles_0E; 0xdc0b $9BFB 8E 8B;Crash	(0F)
.word    bank3_SmallObjectsConstructionRoutines_Portal_to_Left_00; 0xdc0d $9BFD 6C 82;Portal to Left	(00)
.word    bank3_SmallObjectsConstructionRoutines_Portal_to_Right_01; 0xdc0f $9BFF 70 82;Portal to Right	(01)
.word    bank3_SmallObjectsConstructionRoutines_Wall_to_Left_02; 0xdc11 $9C01 74 82;Wall to Left	(02)
.word    bank3_SmallObjectsConstructionRoutines_Wall_to_Right_03; 0xdc13 $9C03 78 82;Wall to Right	(03)
.word    bank3_SmallObjectsConstructionRoutines_Fireplace_04; 0xdc15 $9C05 CF 82;Fireplace	(04)
.word    bank3_SmallObjectsConstructionRoutines_Fountain_05; 0xdc17 $9C07 32 9C;Fountain	(05)
.word    bank3_SmallObjectsConstructionRoutines_Sign__06; 0xdc19 $9C09 11 9C   ;Sign		(06)
.word    bank3_SmallObjectsConstructionRoutines_Gravestone_07; 0xdc1b $9C0B A1 9C;Gravestone	(07)
.word    bank3_SmallObjectsConstructionRoutines_Tomb_Decoration__Left_08; 0xdc1d $9C0D A5 9C;Tomb Decoration - Left	(08)
.word    bank3_SmallObjectsConstructionRoutines_Tomb_Decoration__Right_09; 0xdc1f $9C0F AC 9C;Tomb Decoration - Right	(09)
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Sign__06:                                ;
    LDA      $0730                     ; 0xdc21 $9C11 AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xdc24 $9C14 29 0F                    ; keep bits .... xxxx
    ORA      #$90                      ; 0xdc26 $9C16 09 90                    ; set  bits x..x ....
    STA      $0730                     ; 0xdc28 $9C18 8D 30 07                 ;; Position of Object Placement
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xdc2b $9C1B 20 44 C9           ;
    LDA      #$E3                      ; 0xdc2e $9C1E A9 E3                    ; A = E3
    JSR      LDF56                     ; 0xdc30 $9C20 20 56 DF                 ;
    LDA      #$E4                      ; 0xdc33 $9C23 A9 E4                    ; A = E4
    STA      (L000E),y                 ; 0xdc35 $9C25 91 0E                    ;
    RTS                                ; 0xdc37 $9C27 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Tile_Codes_for_Fountain:                                                  ;
.byt    $DB,$D8,$DA,$D8,$D7,$40,$40,$D9; 0xdc38 $9C28 DB D8 DA D8 D7 40 40 D9  ;
.byt    $40,$40                        ; 0xdc40 $9C30 40 40                    ;
bank3_SmallObjectsConstructionRoutines_Fountain_05:                             ;
.byt    $A2,$09,$AD,$30,$07,$29,$0F,$09; 0xdc42 $9C32 A2 09 AD 30 07 29 0F 09  ; X = 09
.byt    $90,$8D,$30,$07,$20,$44,$C9,$BD; 0xdc4a $9C3A 90 8D 30 07 20 44 C9 BD  ;
.byt    $28,$9C,$20,$E7,$DE,$CA,$30,$0B; 0xdc52 $9C42 28 9C 20 E7 DE CA 30 0B  ;
.byt    $E0,$04,$D0,$F3,$20,$4C,$DF,$A8; 0xdc5a $9C4A E0 04 D0 F3 20 4C DF A8  ;
.byt    $4C,$41,$9C,$60                ; 0xdc62 $9C52 4C 41 9C 60              ;
bank3_SmallObjectsConstructionRoutines_Chimney_2_wide_1_high_can_crouch_in_it_0B: ;
.byt    $A2,$00,$F0,$04                ; 0xdc66 $9C56 A2 00 F0 04              ; X = 00
bank3_table11:                                                                  ;
.byt    $59,$5A                        ; 0xdc6a $9C5A 59 5A                    ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Chimney_2_wide_1_high_cant_go_in__0C:    ;
    LDX      #$01                      ; 0xdc6c $9C5C A2 01                    ; X = 01
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xdc6e $9C5E 20 44 C9           ; Set RAM Address for Object (0E-0F)
    LDA      bank3_table11,x           ; 0xdc71 $9C61 BD 5A 9C                 ;
    JSR      bank7_Set_tile_and_move_right_1_column; 0xdc74 $9C64 20 E7 DE         ; Set tile and move right 1 column
    LDA      bank3_table11,x           ; 0xdc77 $9C67 BD 5A 9C                 ;
    STA      (L000E),y                 ; 0xdc7a $9C6A 91 0E                    ;
    RTS                                ; 0xdc7c $9C6C 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Column_X_high_1_wide___Ex:                  ;
    LDA      $0731                     ; 0xdc7d $9C6D AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xdc80 $9C70 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xdc82 $9C72 AA                       ;
    LDY      $0730                     ; 0xdc83 $9C73 AC 30 07                 ; Position of Object Placement
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xdc86 $9C76 20 44 C9           ;
    LDA      #$94                      ; 0xdc89 $9C79 A9 94                    ; A = 94
    STA      (L000E),y                 ; 0xdc8b $9C7B 91 0E                    ;
    BNE      L9C83                     ; 0xdc8d $9C7D D0 04                    ;
L9C7F:                                                                          ;
    LDA      #$93                      ; 0xdc8f $9C7F A9 93                    ; A = 93
    STA      (L000E),y                 ; 0xdc91 $9C81 91 0E                    ;
L9C83:                                                                          ;
    TYA                                ; 0xdc93 $9C83 98                       ;
    CLC                                ; 0xdc94 $9C84 18                       ;
    ADC      #$10                      ; 0xdc95 $9C85 69 10                    ;
    TAY                                ; 0xdc97 $9C87 A8                       ;
    DEX                                ; 0xdc98 $9C88 CA                       ;
    BPL      L9C7F                     ; 0xdc99 $9C89 10 F4                    ;
    RTS                                ; 0xdc9b $9C8B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Objects_Construction_Routines_Square_brick_wall_1_high_X_wide_Fx:         ;
    LDA      $0731                     ; 0xdc9c $9C8C AD 31 07                 ; Level Object Type and Size
    AND      #$0F                      ; 0xdc9f $9C8F 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0xdca1 $9C91 AA                       ;
    LDY      $0730                     ; 0xdca2 $9C92 AC 30 07                 ; Position of Object Placement
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xdca5 $9C95 20 44 C9           ;
L9C98:                                                                          ;
    LDA      #$98                      ; 0xdca8 $9C98 A9 98                    ; A = 98
    JSR      bank7_Set_tile_and_move_right_1_column; 0xdcaa $9C9A 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0xdcad $9C9D CA                       ;
    BPL      L9C98                     ; 0xdcae $9C9E 10 F8                    ;
    RTS                                ; 0xdcb0 $9CA0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Gravestone_07:                           ;
    LDX      #$00                      ; 0xdcb1 $9CA1 A2 00                    ; X = 00
    BEQ      L9CAE                     ; 0xdcb3 $9CA3 F0 09                    ;
bank3_SmallObjectsConstructionRoutines_Tomb_Decoration__Left_08:                ;
    LDX      #$01                      ; 0xdcb5 $9CA5 A2 01                    ; X = 01
    BNE      L9CAE                     ; 0xdcb7 $9CA7 D0 05                    ;
bank3_Tile_Codes_for_Gravestone_and_Decorations:                                ;
.byt    $95,$96,$97                    ; 0xdcb9 $9CA9 95 96 97                 ;
; ---------------------------------------------------------------------------- ;
bank3_SmallObjectsConstructionRoutines_Tomb_Decoration__Right_09:               ;
    LDX      #$02                      ; 0xdcbc $9CAC A2 02                    ; X = 02
L9CAE:                                                                          ;
    LDA      $0730                     ; 0xdcbe $9CAE AD 30 07                 ; Position of Object Placement
    AND      #$0F                      ; 0xdcc1 $9CB1 29 0F                    ; keep bits .... xxxx
    ORA      #$90                      ; 0xdcc3 $9CB3 09 90                    ; set  bits x..x ....
    STA      $0730                     ; 0xdcc5 $9CB5 8D 30 07                 ;; Position of Object Placement
    TAY                                ; 0xdcc8 $9CB8 A8                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0xdcc9 $9CB9 20 44 C9           ;
    LDA      bank3_Tile_Codes_for_Gravestone_and_Decorations,x; 0xdccc $9CBC BD A9 9C;
    STA      (L000E),y                 ; 0xdccf $9CBF 91 0E                    ;
    RTS                                ; 0xdcd1 $9CC1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Area_Data_Towns3:                                                         ;
.byt    $48,$00,$18,$30,$F0,$00,$F1,$38; 0xdcd2 $9CC2 48 00 18 30 F0 00 F1 38  ;
.byt    $52,$89,$71,$A0,$72,$A0,$A3,$05; 0xdcda $9CCA 52 89 71 A0 72 A0 A3 05  ;
.byt    $F1,$45,$90,$08,$A2,$05,$F1,$03; 0xdce2 $9CD2 F1 45 90 08 A2 05 F1 03  ;
.byt    $F3,$02,$F1,$38,$52,$89,$71,$A0; 0xdcea $9CDA F3 02 F1 38 52 89 71 A0  ;
.byt    $F4,$26,$F2,$44,$F3,$01,$F3,$00; 0xdcf2 $9CE2 F4 26 F2 44 F3 01 F3 00  ;
.byt    $F1,$39,$52,$89,$71,$A0,$72,$A0; 0xdcfa $9CEA F1 39 52 89 71 A0 72 A0  ;
.byt    $72,$A0,$A0,$09,$72,$A0,$F0,$44; 0xdd02 $9CF2 72 A0 A0 09 72 A0 F0 44  ;
.byt    $F3,$03,$F3,$02,$F1,$38,$52,$89; 0xdd0a $9CFA F3 03 F3 02 F1 38 52 89  ;
.byt    $71,$A0,$F4,$26,$F2,$44,$F3,$01; 0xdd12 $9D02 71 A0 F4 26 F2 44 F3 01  ;
bank3_UNUSED_9D0A:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd1a $9D0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd22 $9D12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd2a $9D1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd32 $9D22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd3a $9D2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd42 $9D32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd4a $9D3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd52 $9D42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd5a $9D4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF                        ; 0xdd62 $9D52 FF FF                    ;
L9D54:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd64 $9D54 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd6c $9D5C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd74 $9D64 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd7c $9D6C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd84 $9D74 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd8c $9D7C FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdd94 $9D84 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF            ; 0xdd9c $9D8C FF FF FF FF FF           ;
L9D91:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdda1 $9D91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdda9 $9D99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xddb1 $9DA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xddb9 $9DA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xddc1 $9DB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xddc9 $9DB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xddd1 $9DC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xddd9 $9DC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdde1 $9DD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdde9 $9DD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xddf1 $9DE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xddf9 $9DE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde01 $9DF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde09 $9DF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde11 $9E01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde19 $9E09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde21 $9E11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde29 $9E19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde31 $9E21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde39 $9E29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde41 $9E31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde49 $9E39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde51 $9E41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde59 $9E49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde61 $9E51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde69 $9E59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde71 $9E61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde79 $9E69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde81 $9E71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde89 $9E79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde91 $9E81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xde99 $9E89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdea1 $9E91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdea9 $9E99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdeb1 $9EA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdeb9 $9EA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdec1 $9EB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdec9 $9EB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xded1 $9EC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xded9 $9EC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdee1 $9ED1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdee9 $9ED9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdef1 $9EE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdef9 $9EE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf01 $9EF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf09 $9EF9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf11 $9F01 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf19 $9F09 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf21 $9F11 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf29 $9F19 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf31 $9F21 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf39 $9F29 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf41 $9F31 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf49 $9F39 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf51 $9F41 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf59 $9F49 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf61 $9F51 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf69 $9F59 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf71 $9F61 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf79 $9F69 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf81 $9F71 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf89 $9F79 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf91 $9F81 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdf99 $9F89 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfa1 $9F91 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfa9 $9F99 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfb1 $9FA1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfb9 $9FA9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfc1 $9FB1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfc9 $9FB9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfd1 $9FC1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfd9 $9FC9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfe1 $9FD1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdfe9 $9FD9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdff1 $9FE1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xdff9 $9FE9 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xe001 $9FF1 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0xe009 $9FF9 FF FF FF FF FF FF FF     ;
bank3_Area_Data_Towns4:                                                         ;
.byt    $2C,$60,$A0,$01,$F4,$11,$62,$26; 0xe010 $A000 2C 60 A0 01 F4 11 62 26  ;
.byt    $80,$56,$81,$C0,$82,$00,$82,$C0; 0xe018 $A008 80 56 81 C0 82 00 82 C0  ;
.byt    $F5,$06,$32,$3B,$50,$6B,$83,$00; 0xe020 $A010 F5 06 32 3B 50 6B 83 00  ;
.byt    $FB,$13,$36,$26,$50,$56,$51,$C0; 0xe028 $A018 FB 13 36 26 50 56 51 C0  ;
.byt    $52,$C0,$80,$01,$52,$C0,$F7,$05; 0xe030 $A020 52 C0 80 01 52 C0 F7 05  ;
.byt    $F6,$13,$F5,$01                ; 0xe038 $A028 F6 13 F5 01              ;
LA02C:                                                                          ;
.byt    $2E,$60,$A0,$01,$F0,$00,$66,$38; 0xe03c $A02C 2E 60 A0 01 F0 00 66 38  ;
.byt    $80,$68,$81,$B0,$82,$B0,$82,$00; 0xe044 $A034 80 68 81 B0 82 B0 82 00  ;
.byt    $82,$B0,$33,$66,$51,$B1,$52,$B1; 0xe04c $A03C 82 B0 33 66 51 B1 52 B1  ;
.byt    $52,$B0,$80,$00,$F5,$14,$F6,$05; 0xe054 $A044 52 B0 80 00 F5 14 F6 05  ;
.byt    $F6,$14,$3A,$28,$50,$58,$82,$00; 0xe05c $A04C F6 14 3A 28 50 58 82 00  ;
.byt    $53,$C1,$52,$C1,$F6,$01        ; 0xe064 $A054 53 C1 52 C1 F6 01        ;
LA05A:                                                                          ;
.byt    $32,$60,$A0,$01,$F0,$00,$F4,$13; 0xe06a $A05A 32 60 A0 01 F0 00 F4 13  ;
.byt    $66,$36,$80,$66,$81,$B0,$82,$00; 0xe072 $A062 66 36 80 66 81 B0 82 00  ;
.byt    $82,$B0,$F3,$11,$64,$28,$80,$58; 0xe07a $A06A 82 B0 F3 11 64 28 80 58  ;
.byt    $81,$A0,$82,$A0,$83,$01,$F4,$11; 0xe082 $A072 81 A0 82 A0 83 01 F4 11  ;
.byt    $68,$28,$80,$58                ; 0xe08a $A07A 68 28 80 58              ;
LA07E:                                                                          ;
.byt    $81,$A0,$83,$00,$83,$A0,$F3,$11; 0xe08e $A07E 81 A0 83 00 83 A0 F3 11  ;
.byt    $F4,$06,$F2,$11,$F1,$10        ; 0xe096 $A086 F4 06 F2 11 F1 10        ;
LA08C:                                                                          ;
.byt    $38,$60,$A0,$21,$F4,$06,$64,$36; 0xe09c $A08C 38 60 A0 21 F4 06 64 36  ;
.byt    $80,$66,$81,$B0,$82,$00,$82,$B0; 0xe0a4 $A094 80 66 81 B0 82 00 82 B0  ;
.byt    $33,$36,$50,$66,$51,$B1,$52,$B0; 0xe0ac $A09C 33 36 50 66 51 B1 52 B0  ;
.byt    $80,$00,$52,$B1,$69,$4E,$80,$5E; 0xe0b4 $A0A4 80 00 52 B1 69 4E 80 5E  ;
.byt    $81,$C0,$51,$0C,$81,$C0,$82,$C0; 0xe0bc $A0AC 81 C0 51 0C 81 C0 82 C0  ;
.byt    $86,$00,$67,$48,$80,$58,$83,$00; 0xe0c4 $A0B4 86 00 67 48 80 58 83 00  ;
.byt    $82,$C0,$51,$0C,$81,$C0,$F6,$01; 0xe0cc $A0BC 82 C0 51 0C 81 C0 F6 01  ;
LA0C4:                                                                          ;
.byt    $3C,$60,$A0,$21,$F0,$00,$38,$48; 0xe0d4 $A0C4 3C 60 A0 21 F0 00 38 48  ;
.byt    $50,$58,$51,$C1,$52,$C0,$80,$00; 0xe0dc $A0CC 50 58 51 C1 52 C0 80 00  ;
.byt    $52,$C1,$21,$0C,$51,$C1,$67,$44; 0xe0e4 $A0D4 52 C1 21 0C 51 C1 67 44  ;
.byt    $80,$74,$58,$48,$70,$78,$81,$A0; 0xe0ec $A0DC 80 74 58 48 70 78 81 A0  ;
.byt    $82,$A0,$82,$00,$35,$48,$50,$58; 0xe0f4 $A0E4 82 A0 82 00 35 48 50 58  ;
.byt    $51,$C1,$52,$C0,$80,$00,$52,$C1; 0xe0fc $A0EC 51 C1 52 C0 80 00 52 C1  ;
.byt    $52,$C1,$55,$46,$70,$56,$44,$0B; 0xe104 $A0F4 52 C1 55 46 70 56 44 0B  ;
LA0FC:                                                                          ;
.byt    $80,$00,$F5,$01                ; 0xe10c $A0FC 80 00 F5 01              ;
LA100:                                                                          ;
.byt    $44,$60,$A0,$21,$F0,$00,$36,$46; 0xe110 $A100 44 60 A0 21 F0 00 36 46  ;
.byt    $50,$56,$51,$C0,$52,$C0,$80,$00; 0xe118 $A108 50 56 51 C0 52 C0 80 00  ;
.byt    $21,$0C,$51,$C0,$33,$46,$50,$56; 0xe120 $A110 21 0C 51 C0 33 46 50 56  ;
.byt    $51,$C0,$52,$C0,$80,$00,$21,$0C; 0xe128 $A118 51 C0 52 C0 80 00 21 0C  ;
.byt    $51,$C0,$33,$46,$50,$56,$51,$C0; 0xe130 $A120 51 C0 33 46 50 56 51 C0  ;
.byt    $52,$C0,$80,$00,$21,$0C,$51,$C0; 0xe138 $A128 52 C0 80 00 21 0C 51 C0  ;
.byt    $67,$48,$80,$58,$81,$C0,$82,$01; 0xe140 $A130 67 48 80 58 81 C0 82 01  ;
.byt    $82,$C0,$51,$0C,$81,$C0,$65,$34; 0xe148 $A138 82 C0 51 0C 81 C0 65 34  ;
.byt    $80,$74,$FA,$06                ; 0xe150 $A140 80 74 FA 06              ;
LA144:                                                                          ;
.byt    $3C,$60,$A0,$11,$F0,$1F,$F4,$06; 0xe154 $A144 3C 60 A0 11 F0 1F F4 06  ;
.byt    $72,$76,$81,$A0,$82,$00,$82,$A0; 0xe15c $A14C 72 76 81 A0 82 00 82 A0  ;
.byt    $65,$38,$80,$78,$81,$A0,$82,$A0; 0xe164 $A154 65 38 80 78 81 A0 82 A0  ;
.byt    $82,$00,$82,$A0,$F2,$18,$31,$34; 0xe16c $A15C 82 00 82 A0 F2 18 31 34  ;
.byt    $50,$74,$51,$A1,$82,$00,$63,$7A; 0xe174 $A164 50 74 51 A1 82 00 63 7A  ;
.byt    $85,$01,$F6,$1F,$45,$78,$51,$A1; 0xe17c $A16C 85 01 F6 1F 45 78 51 A1  ;
.byt    $52,$A1,$52,$A0,$80,$00,$52,$A1; 0xe184 $A174 52 A1 52 A0 80 00 52 A1  ;
.byt    $F2,$13,$F4,$01                ; 0xe18c $A17C F2 13 F4 01              ;
LA180:                                                                          ;
.byt    $3C,$60,$A0,$11,$F0,$00,$F3,$1F; 0xe190 $A180 3C 60 A0 11 F0 00 F3 1F  ;
.byt    $31,$3A,$50,$7A,$51,$A1,$52,$A1; 0xe198 $A188 31 3A 50 7A 51 A1 52 A1  ;
.byt    $52,$A0,$80,$00,$52,$A0,$52,$A1; 0xe1a0 $A190 52 A0 80 00 52 A0 52 A1  ;
.byt    $55                            ; 0xe1a8 $A198 55                       ;
LA199:                                                                          ;
.byt    $76,$81,$00                    ; 0xe1a9 $A199 76 81 00                 ;
LA19C:                                                                          ;
.byt    $82,$A0,$82,$A0,$F2,$1F,$61,$78; 0xe1ac $A19C 82 A0 82 A0 F2 1F 61 78  ;
.byt    $81,$A0,$82,$01,$82,$A0,$82,$A0; 0xe1b4 $A1A4 81 A0 82 01 82 A0 82 A0  ;
.byt    $35,$78,$51,$A1,$52,$A1,$82,$00; 0xe1bc $A1AC 35 78 51 A1 52 A1 82 00  ;
.byt    $52,$A1,$F2,$1F,$F2,$05,$FC,$01; 0xe1c4 $A1B4 52 A1 F2 1F F2 05 FC 01  ;
LA1BC:                                                                          ;
.byt    $0A,$60,$A0,$11,$F0,$00,$E1,$00; 0xe1cc $A1BC 0A 60 A0 11 F0 00 E1 00  ;
.byt    $D5,$0F                        ; 0xe1d4 $A1C4 D5 0F                    ;
LA1C6:                                                                          ;
.byt    $24,$60,$A0,$29,$F6,$06,$84,$63; 0xe1d6 $A1C6 24 60 A0 29 F6 06 84 63  ;
.byt    $92,$61,$A4,$61,$45,$62,$51,$B1; 0xe1de $A1CE 92 61 A4 61 45 62 51 B1  ;
.byt    $01,$61,$89,$6B,$66,$65,$81,$01; 0xe1e6 $A1D6 01 61 89 6B 66 65 81 01  ;
.byt    $41,$33,$68,$68,$52,$66,$42,$64; 0xe1ee $A1DE 41 33 68 68 52 66 42 64  ;
.byt    $81,$01,$F8,$01                ; 0xe1f6 $A1E6 81 01 F8 01              ;
LA1EA:                                                                          ;
.byt    $2A,$60,$A0,$29,$F0,$00,$26,$38; 0xe1fa $A1EA 2A 60 A0 29 F0 00 26 38  ;
.byt    $40,$68,$84,$01,$1C,$61,$41,$62; 0xe202 $A1F2 40 68 84 01 1C 61 41 62  ;
.byt    $80,$01,$67,$63,$83,$62,$A2,$6A; 0xe20a $A1FA 80 01 67 63 83 62 A2 6A  ;
.byt    $95,$65,$62,$63,$80,$00,$11,$32; 0xe212 $A202 95 65 62 63 80 00 11 32  ;
.byt    $31,$61,$54,$37,$70,$67,$84,$01; 0xe21a $A20A 31 61 54 37 70 67 84 01  ;
.byt    $F9,$01                        ; 0xe222 $A212 F9 01                    ;
LA214:                                                                          ;
.byt    $24,$60,$A0,$29,$F0,$00,$1E,$36; 0xe224 $A214 24 60 A0 29 F0 00 1E 36  ;
.byt    $30,$66,$85,$01,$51,$63,$95,$62; 0xe22c $A21C 30 66 85 01 51 63 95 62  ;
.byt    $82,$65,$32,$61,$40,$B1,$61,$62; 0xe234 $A224 82 65 32 61 40 B1 61 62  ;
.byt    $87,$6B,$66,$62,$81,$01,$51,$33; 0xe23c $A22C 87 6B 66 62 81 01 51 33  ;
.byt    $70,$63,$FA,$06                ; 0xe244 $A234 70 63 FA 06              ;
bank3_related_to_dialog_indexes1:                                               ;
.byt    $31,$31,$31,$31,$31,$31,$31,$31; 0xe248 $A238 31 31 31 31 31 31 31 31  ;
.byt    $0B,$14,$1F,$2A,$33,$19,$24,$2F; 0xe250 $A240 0B 14 1F 2A 33 19 24 2F  ;
.byt    $1E,$19,$1C,$2D,$0F,$18,$23,$2E; 0xe258 $A248 1E 19 1C 2D 0F 18 23 2E  ;
.byt    $0C,$0F,$1C,$30,$08,$12        ; 0xe260 $A250 0C 0F 1C 30 08 12        ;
LA256:                                                                          ;
.byt    $1C,$26,$20,$21,$1C,$26,$0A,$16; 0xe266 $A256 1C 26 20 21 1C 26 0A 16  ;
.byt    $1C,$26,$22,$16,$16,$26,$0A,$0F; 0xe26e $A25E 1C 26 22 16 16 26 0A 0F  ;
.byt    $1C,$2B,$0D,$0D,$1C,$26,$00,$00; 0xe276 $A266 1C 2B 0D 0D 1C 26 00 00  ;
.byt    $00,$00,$02,$02,$02,$02,$04,$04; 0xe27e $A26E 00 00 02 02 02 02 04 04  ;
.byt    $04,$04,$05,$05,$05,$05,$06,$06; 0xe286 $A276 04 04 05 05 05 05 06 06  ;
.byt    $06,$06,$07,$07,$07,$07,$10,$13; 0xe28e $A27E 06 06 07 07 07 07 10 13  ;
.byt    $1C,$27,$09,$12,$1C,$26,$0A,$11; 0xe296 $A286 1C 27 09 12 1C 26 0A 11  ;
.byt    $20,$28,$09,$12,$1B,$26,$15,$15; 0xe29e $A28E 20 28 09 12 1B 26 15 15  ;
.byt    $15,$29,$0B,$14,$1D,$2A        ; 0xe2a6 $A296 15 29 0B 14 1D 2A        ;
bank3_related_to_dialog_indexes2:                                               ;
.byt    $32,$32,$32,$32,$32,$32,$32,$32; 0xe2ac $A29C 32 32 32 32 32 32 32 32  ;
.byt    $32,$32,$32,$32,$33,$0F,$25,$10; 0xe2b4 $A2A4 32 32 32 32 33 0F 25 10  ;
.byt    $1E,$1A,$1C,$2B,$0F,$18,$23,$2E; 0xe2bc $A2AC 1E 1A 1C 2B 0F 18 23 2E  ;
.byt    $0A,$0F,$1C,$26,$0A,$0F,$1C,$26; 0xe2c4 $A2B4 0A 0F 1C 26 0A 0F 1C 26  ;
.byt    $0A,$21,$1C,$26,$0A,$17,$1C,$26; 0xe2cc $A2BC 0A 21 1C 26 0A 17 1C 26  ;
.byt    $22,$17,$17,$26,$0A,$0F,$1C,$2C; 0xe2d4 $A2C4 22 17 17 26 0A 0F 1C 2C  ;
.byt    $0E,$0E,$1C,$26,$01,$01,$01,$01; 0xe2dc $A2CC 0E 0E 1C 26 01 01 01 01  ;
.byt    $03,$03,$03,$03,$10,$10,$10,$10; 0xe2e4 $A2D4 03 03 03 03 10 10 10 10  ;
bank3_related_to_dialog_indexes3:                                               ;
.byt    $21,$21,$21,$21,$21,$21,$21,$21; 0xe2ec $A2DC 21 21 21 21 21 21 21 21  ;
.byt    $0A,$1A,$10,$2A,$0A,$1E,$1F,$00; 0xe2f4 $A2E4 0A 1A 10 2A 0A 1E 1F 00  ;
.byt    $0F,$15,$1F,$00,$11,$11,$11,$2B; 0xe2fc $A2EC 0F 15 1F 00 11 11 11 2B  ;
.byt    $0A,$15,$10,$00,$0C,$15,$1F,$00; 0xe304 $A2F4 0A 15 10 00 0C 15 1F 00  ;
.byt    $0A,$15,$28,$00,$0A,$15,$1F,$00; 0xe30c $A2FC 0A 15 28 00 0A 15 1F 00  ;
.byt    $0A,$15,$1F,$00,$0A,$1B,$26,$00; 0xe314 $A304 0A 15 1F 00 0A 1B 26 00  ;
.byt    $0D,$15,$1F                    ; 0xe31c $A30C 0D 15 1F                 ;
LA30F:                                                                          ;
.byt    $00,$00,$00,$00,$00,$02        ; 0xe31f $A30F 00 00 00 00 00 02        ;
LA315:                                                                          ;
.byt    $02,$02,$02,$04,$04,$04,$04,$05; 0xe325 $A315 02 02 02 04 04 04 04 05  ;
.byt    $05,$05,$05,$06,$06,$06,$06,$07; 0xe32d $A31D 05 05 05 06 06 06 06 07  ;
.byt    $07,$07,$07,$09                ; 0xe335 $A325 07 07 07 09              ;
LA329:                                                                          ;
.byt    $17,$24,$00,$0C,$17,$20,$00,$08; 0xe339 $A329 17 24 00 0C 17 20 00 08  ;
.byt    $16,$25,$00                    ; 0xe341 $A331 16 25 00                 ;
LA334:                                                                          ;
.byt    $0A,$14,$1F,$00                ; 0xe344 $A334 0A 14 1F 00              ;
LA338:                                                                          ;
.byt    $0B,$18,$23,$2A,$0A,$19,$22,$16; 0xe348 $A338 0B 18 23 2A 0A 19 22 16  ;
bank3_related_to_dialog_indexes4:                                               ;
.byt    $2D,$2D,$2D,$2D,$2D,$2D,$2D,$2D; 0xe350 $A340 2D 2D 2D 2D 2D 2D 2D 2D  ;
.byt    $00,$00,$00,$00,$0A,$15,$1F,$00; 0xe358 $A348 00 00 00 00 0A 15 1F 00  ;
.byt    $0F,$15,$1F,$00,$12,$1D,$29,$2C; 0xe360 $A350 0F 15 1F 00 12 1D 29 2C  ;
.byt    $0A,$15,$10,$00,$0A,$15,$1F,$00; 0xe368 $A358 0A 15 10 00 0A 15 1F 00  ;
.byt    $0A,$15,$1F,$00,$0A,$15,$1F,$00; 0xe370 $A360 0A 15 1F 00 0A 15 1F 00  ;
.byt    $0A,$15,$1F,$00,$0A,$1C,$27,$00; 0xe378 $A368 0A 15 1F 00 0A 1C 27 00  ;
.byt    $0E,$15,$1F,$00,$01,$01,$01,$01; 0xe380 $A370 0E 15 1F 00 01 01 01 01  ;
.byt    $03,$03,$03,$03,$13,$13,$13,$13; 0xe388 $A378 03 03 03 03 13 13 13 13  ;
bank3_Dialogs_Text_Table:                                                       ;
.byt    $E9,$E5,$DE,$DA,$EC,$DE,$F4,$E5; 0xe390 $A380 E9 E5 DE DA EC DE F4 E5  ;
.byt    $DE,$ED,$FD,$E6,$DE,$F4,$E1,$DE; 0xe398 $A388 DE ED FD E6 DE F4 E1 DE  ;
.byt    $E5,$E9,$FD,$F2,$E8,$EE,$CF,$F4; 0xe3a0 $A390 E5 E9 FD F2 E8 EE CF F4  ;
.byt    $DC,$E8,$E6,$DE,$FD,$E2,$E7,$EC; 0xe3a8 $A398 DC E8 E6 DE FD E2 E7 EC  ;
.byt    $E2,$DD,$DE,$CF,$FF            ; 0xe3b0 $A3A0 E2 DD DE CF FF           ;
LA3A5:                                                                          ;
.byt    $E2,$F4,$DC,$DA,$E7,$FD,$EB,$DE; 0xe3b5 $A3A5 E2 F4 DC DA E7 FD EB DE  ;
.byt    $EC,$ED,$E8,$EB,$DE,$FD,$F2,$E8; 0xe3bd $A3AD EC ED E8 EB DE FD F2 E8  ;
.byt    $EE,$EB,$F4,$E5,$E2,$DF,$DE,$CF; 0xe3c5 $A3B5 EE EB F4 E5 E2 DF DE CF  ;
.byt    $FF                            ; 0xe3cd $A3BD FF                       ;
LA3BE:                                                                          ;
.byt    $EC,$ED,$E8,$E9,$F4,$DA,$E7,$DD; 0xe3ce $A3BE EC ED E8 E9 F4 DA E7 DD  ;
.byt    $FD,$EB,$DE,$EC,$ED,$F4,$E1,$DE; 0xe3d6 $A3C6 FD EB DE EC ED F4 E1 DE  ;
.byt    $EB,$DE,$CF,$FF                ; 0xe3de $A3CE EB DE CF FF              ;
LA3D2:                                                                          ;
.byt    $E2,$F4,$DC,$DA,$E7,$F4,$E0,$E2; 0xe3e2 $A3D2 E2 F4 DC DA E7 F4 E0 E2  ;
.byt    $EF,$DE,$FD,$F2,$E8,$EE,$F4,$E6; 0xe3ea $A3DA EF DE FD F2 E8 EE F4 E6  ;
.byt    $DA,$E0,$E2,$DC,$CF,$FE,$DC,$E8; 0xe3f2 $A3E2 DA E0 E2 DC CF FE DC E8  ;
.byt    $E6,$DE,$F4,$DB,$DA,$DC,$E4,$FD; 0xe3fa $A3EA E6 DE F4 DB DA DC E4 FD  ;
.byt    $DA,$E7,$F2,$ED,$E2,$E6,$DE,$CF; 0xe402 $A3F2 DA E7 F2 ED E2 E6 DE CF  ;
.byt    $FF                            ; 0xe40a $A3FA FF                       ;
LA3FB:                                                                          ;
.byt    $E2,$F4,$DA,$E6,$F4,$E6,$EE,$DC; 0xe40b $A3FB E2 F4 DA E6 F4 E6 EE DC  ;
.byt    $E1,$FD,$ED,$E8,$E8,$F4,$DB,$EE; 0xe413 $A403 E1 FD ED E8 E8 F4 DB EE  ;
.byt    $EC,$F2,$FD,$ED,$E8,$F4,$ED,$DA; 0xe41b $A40B EC F2 FD ED E8 F4 ED DA  ;
.byt    $E5,$E4,$F4,$ED,$E8,$FD,$DA,$F4; 0xe423 $A413 E5 E4 F4 ED E8 FD DA F4  ;
.byt    $EC,$ED,$EB,$DA,$E7,$E0,$DE,$EB; 0xe42b $A41B EC ED EB DA E7 E0 DE EB  ;
.byt    $CF,$FF                        ; 0xe433 $A423 CF FF                    ;
LA425:                                                                          ;
.byt    $E1,$DE,$E5,$E5,$E8,$36,$FF    ; 0xe435 $A425 E1 DE E5 E5 E8 36 FF     ;
LA42C:                                                                          ;
.byt    $E1,$DE,$E5,$E5,$E8,$FD,$F2,$E8; 0xe43c $A42C E1 DE E5 E5 E8 FD F2 E8  ;
.byt    $EE,$E7,$E0,$FD,$DF,$DE,$E5,$E5; 0xe444 $A434 EE E7 E0 FD DF DE E5 E5  ;
.byt    $E8,$F0,$CF,$FF                ; 0xe44c $A43C E8 F0 CF FF              ;
LA440:                                                                          ;
.byt    $EC,$E8,$EB,$EB,$F2,$CF,$FD,$E2; 0xe450 $A440 EC E8 EB EB F2 CF FD E2  ;
.byt    $F4,$E4,$E7,$E8,$F0,$FD,$E7,$E8; 0xe458 $A448 F4 E4 E7 E8 F0 FD E7 E8  ;
.byt    $ED,$E1,$E2,$E7,$E0,$CF,$FF    ; 0xe460 $A450 ED E1 E2 E7 E0 CF FF     ;
LA457:                                                                          ;
.byt    $DE,$DA,$DC,$E1,$F4,$ED,$E8,$F0; 0xe467 $A457 DE DA DC E1 F4 ED E8 F0  ;
.byt    $E7,$FD,$E1,$DA,$EC,$F4,$DA,$F4; 0xe46f $A45F E7 FD E1 DA EC F4 DA F4  ;
.byt    $F0,$E2,$EC,$DE,$FD,$E6,$DA,$E7; 0xe477 $A467 F0 E2 EC DE FD E6 DA E7  ;
.byt    $CF,$F4,$E5,$DE,$DA,$EB,$E7,$FD; 0xe47f $A46F CF F4 E5 DE DA EB E7 FD  ;
.byt    $DF,$EB,$E8,$E6,$F4,$E1,$E2,$E6; 0xe487 $A477 DF EB E8 E6 F4 E1 E2 E6  ;
.byt    $CF,$FF                        ; 0xe48f $A47F CF FF                    ;
LA481:                                                                          ;
.byt    $DF,$E2,$E7,$DD,$F4,$ED,$E1,$DE; 0xe491 $A481 DF E2 E7 DD F4 ED E1 DE  ;
.byt    $FD,$E1,$DE,$DA,$EB,$ED,$F4,$E2; 0xe499 $A489 FD E1 DE DA EB ED F4 E2  ;
.byt    $E7,$FD,$EC,$E8,$EE,$ED,$E1,$DE; 0xe4a1 $A491 E7 FD EC E8 EE ED E1 DE  ;
.byt    $EB,$E7,$FD,$E9,$DA,$EB,$DA,$E9; 0xe4a9 $A499 EB E7 FD E9 DA EB DA E9  ;
.byt    $DA,$CF,$FF                    ; 0xe4b1 $A4A1 DA CF FF                 ;
LA4A4:                                                                          ;
.byt    $E8,$E7,$E5,$F2,$F4,$ED,$E1,$DE; 0xe4b4 $A4A4 E8 E7 E5 F2 F4 ED E1 DE  ;
.byt    $FD,$E1,$DA,$E6,$E6,$DE,$EB,$F4; 0xe4bc $A4AC FD E1 DA E6 E6 DE EB F4  ;
.byt    $DC,$DA,$E7,$FD,$DD,$DE,$EC,$ED; 0xe4c4 $A4B4 DC DA E7 FD DD DE EC ED  ;
.byt    $EB,$E8,$F2,$F4,$DA,$FD,$EB,$E8; 0xe4cc $A4BC EB E8 F2 F4 DA FD EB E8  ;
.byt    $DA,$DD,$DB,$E5,$E8,$DC,$E4,$CF; 0xe4d4 $A4C4 DA DD DB E5 E8 DC E4 CF  ;
.byt    $FF                            ; 0xe4dc $A4CC FF                       ;
LA4CD:                                                                          ;
.byt    $F0,$DE,$E5,$DC,$E8,$E6,$DE,$FD; 0xe4dd $A4CD F0 DE E5 DC E8 E6 DE FD  ;
.byt    $F4,$F4,$ED,$E8,$FD,$F4,$EB,$DA; 0xe4e5 $A4D5 F4 F4 ED E8 FD F4 EB DA  ;
.byt    $EE,$EB,$EE,$FF                ; 0xe4ed $A4DD EE EB EE FF              ;
LA4E1:                                                                          ;
.byt    $E0,$DE,$ED,$F4,$DC,$DA,$E7,$DD; 0xe4f1 $A4E1 E0 DE ED F4 DC DA E7 DD  ;
.byt    $E5,$DE,$FD,$E2,$E7,$F4,$E9,$DA; 0xe4f9 $A4E9 E5 DE FD E2 E7 F4 E9 DA  ;
.byt    $EB,$DA,$E9,$DA,$FD,$E9,$DA,$E5; 0xe501 $A4F1 EB DA E9 DA FD E9 DA E5  ;
.byt    $DA,$DC,$DE,$CF,$FD,$E0,$E8,$F4; 0xe509 $A4F9 DA DC DE CF FD E0 E8 F4  ;
.byt    $F0,$DE,$EC,$ED,$CF,$FF        ; 0xe511 $A501 F0 DE EC ED CF FF        ;
LA507:                                                                          ;
.byt    $E0,$E8,$EB,$E2,$F2,$DA,$F4,$E8; 0xe517 $A507 E0 E8 EB E2 F2 DA F4 E8  ;
.byt    $DF,$FD,$ED,$DA,$E7,$ED,$DA,$EB; 0xe51f $A50F DF FD ED DA E7 ED DA EB  ;
.byt    $E2,$FD,$EC,$ED,$E8,$E5,$DE,$F4; 0xe527 $A517 E2 FD EC ED E8 E5 DE F4  ;
.byt    $E8,$EE,$EB,$FD,$ED,$EB,$E8,$E9; 0xe52f $A51F E8 EE EB FD ED EB E8 E9  ;
.byt    $E1,$F2,$CF,$FF                ; 0xe537 $A527 E1 F2 CF FF              ;
LA52B:                                                                          ;
.byt    $F2,$E8,$EE,$F4,$EC,$DA,$EF,$DE; 0xe53b $A52B F2 E8 EE F4 EC DA EF DE  ;
.byt    $DD,$FD,$ED,$E1,$DE,$F4,$ED,$EB; 0xe543 $A533 DD FD ED E1 DE F4 ED EB  ;
.byt    $E8,$E9,$E1,$F2,$FE,$DC,$E8,$E6; 0xe54b $A53B E8 E9 E1 F2 FE DC E8 E6  ;
.byt    $DE,$F4,$EC,$DE,$DE,$FD,$E6,$F2; 0xe553 $A543 DE F4 EC DE DE FD E6 F2  ;
.byt    $F4,$EE,$E7,$DC,$E5,$DE,$CF,$FF; 0xe55b $A54B F4 EE E7 DC E5 DE CF FF  ;
LA553:                                                                          ;
.byt    $E2,$E7,$F4,$E9,$DA,$EB,$DA,$E9; 0xe563 $A553 E2 E7 F4 E9 DA EB DA E9  ;
.byt    $DA,$FD,$DD,$DE,$EC,$DE,$EB,$ED; 0xe56b $A55B DA FD DD DE EC DE EB ED  ;
.byt    $F4,$EE,$EC,$DE,$FD,$ED,$E1,$E2; 0xe573 $A563 F4 EE EC DE FD ED E1 E2  ;
.byt    $EC,$F4,$E6,$DA,$E0,$E2,$DC,$FD; 0xe57b $A56B EC F4 E6 DA E0 E2 DC FD  ;
.byt    $ED,$E8,$F4,$EC,$EE,$EB,$EF,$E2; 0xe583 $A573 ED E8 F4 EC EE EB EF E2  ;
.byt    $EF,$DE,$FF                    ; 0xe58b $A57B EF DE FF                 ;
LA57E:                                                                          ;
.byt    $E2,$F4,$DC,$DA,$E7,$E7,$E8,$ED; 0xe58e $A57E E2 F4 DC DA E7 E7 E8 ED  ;
.byt    $FD,$E1,$DE,$E5,$E9,$F4,$F2,$E8; 0xe596 $A586 FD E1 DE E5 E9 F4 F2 E8  ;
.byt    $EE,$FD,$DA,$E7,$F2,$E6,$E8,$EB; 0xe59e $A58E EE FD DA E7 F2 E6 E8 EB  ;
.byt    $DE,$CF,$FD,$E0,$E8,$F4,$E7,$E8; 0xe5a6 $A596 DE CF FD E0 E8 F4 E7 E8  ;
.byt    $F0,$CF,$FF                    ; 0xe5ae $A59E F0 CF FF                 ;
LA5A1:                                                                          ;
.byt    $E1,$DA,$E6,$E6,$DE,$EB,$CF,$CF; 0xe5b1 $A5A1 E1 DA E6 E6 DE EB CF CF  ;
.byt    $CF,$FE,$EC,$E9,$DE,$DC,$ED,$DA; 0xe5b9 $A5A9 CF FE EC E9 DE DC ED DA  ;
.byt    $DC,$E5,$DE,$FD,$EB,$E8,$DC,$E4; 0xe5c1 $A5B1 DC E5 DE FD EB E8 DC E4  ;
.byt    $CF,$CF,$CF,$FD,$DD,$DE,$DA,$ED; 0xe5c9 $A5B9 CF CF CF FD DD DE DA ED  ;
.byt    $E1,$F4,$E6,$ED,$E7,$CF,$FF    ; 0xe5d1 $A5C1 E1 F4 E6 ED E7 CF FF     ;
LA5C8:                                                                          ;
.byt    $DD,$E8,$F4,$E7,$E8,$ED,$F4,$E0; 0xe5d8 $A5C8 DD E8 F4 E7 E8 ED F4 E0  ;
.byt    $E8,$FD,$EC,$E8,$EE,$ED,$E1,$FD; 0xe5e0 $A5D0 E8 FD EC E8 EE ED E1 FD  ;
.byt    $F0,$E2,$ED,$E1,$E8,$EE,$ED,$F4; 0xe5e8 $A5D8 F0 E2 ED E1 E8 EE ED F4  ;
.byt    $DA,$FD,$DC,$DA,$E7,$DD,$E5,$DE; 0xe5f0 $A5E0 DA FD DC DA E7 DD E5 DE  ;
.byt    $CF,$FF                        ; 0xe5f8 $A5E8 CF FF                    ;
LA5EA:                                                                          ;
.byt    $DF,$E2,$E7,$DD,$F4,$E6,$DA,$E0; 0xe5fa $A5EA DF E2 E7 DD F4 E6 DA E0  ;
.byt    $E2,$DC,$FD,$E2,$E7,$F4,$DA,$F4; 0xe602 $A5F2 E2 DC FD E2 E7 F4 DA F4  ;
.byt    $DC,$DA,$EF,$DE,$FD,$EC,$E8,$EE; 0xe60a $A5FA DC DA EF DE FD EC E8 EE  ;
.byt    $ED,$E1,$F4,$E8,$DF,$FD,$ED,$E1; 0xe612 $A602 ED E1 F4 E8 DF FD ED E1  ;
.byt    $DE,$F4,$DC,$DA,$EC,$ED        ; 0xe61a $A60A DE F4 DC DA EC ED        ;
LA610:                                                                          ;
.byt    $E5,$DE,$CF,$FF                ; 0xe620 $A610 E5 DE CF FF              ;
LA614:                                                                          ;
.byt    $ED,$E8,$F0,$E7,$FD,$F4,$E8,$DF; 0xe624 $A614 ED E8 F0 E7 FD F4 E8 DF  ;
.byt    $FD,$EB,$EE,$ED,$E8,$FF        ; 0xe62c $A61C FD EB EE ED E8 FF        ;
LA622:                                                                          ;
.byt    $E2,$F4,$DF,$E8,$EE,$E7,$DD,$F4; 0xe632 $A622 E2 F4 DF E8 EE E7 DD F4  ;
.byt    $DA,$FD,$E6,$E2,$EB,$EB,$E8,$EB; 0xe63a $A62A DA FD E6 E2 EB EB E8 EB  ;
.byt    $FD,$EE,$E7,$DD,$DE,$EB,$F4,$ED; 0xe642 $A632 FD EE E7 DD DE EB F4 ED  ;
.byt    $E1,$DE,$FD,$ED,$DA,$DB,$E5,$DE; 0xe64a $A63A E1 DE FD ED DA DB E5 DE  ;
.byt    $CF,$FF                        ; 0xe652 $A642 CF FF                    ;
LA644:                                                                          ;
.byt    $E2,$F4,$E5,$E8,$EC,$ED,$FD,$E6; 0xe654 $A644 E2 F4 E5 E8 EC ED FD E6  ;
.byt    $F2,$F4,$E6,$E2,$EB,$EB,$E8,$EB; 0xe65c $A64C F2 F4 E6 E2 EB EB E8 EB  ;
.byt    $CF,$FF                        ; 0xe664 $A654 CF FF                    ;
LA656:                                                                          ;
.byt    $E8,$E1,$36,$F4,$F2,$E8,$EE,$FD; 0xe666 $A656 E8 E1 36 F4 F2 E8 EE FD  ;
.byt    $DF,$E8,$EE,$E7,$DD,$F4,$E6,$F2; 0xe66e $A65E DF E8 EE E7 DD F4 E6 F2  ;
.byt    $FD,$E6,$E2,$EB,$EB,$E8,$EB,$36; 0xe676 $A666 FD E6 E2 EB EB E8 EB 36  ;
.byt    $FD,$DF,$E8,$E5,$E5,$E8,$F0,$F4; 0xe67e $A66E FD DF E8 E5 E5 E8 F0 F4  ;
.byt    $E6,$DE,$CF,$FF                ; 0xe686 $A676 E6 DE CF FF              ;
LA67A:                                                                          ;
.byt    $F0,$E2,$ED,$E1,$F4,$ED,$E1,$E2; 0xe68a $A67A F0 E2 ED E1 F4 ED E1 E2  ;
.byt    $EC,$FD,$F2,$E8,$EE,$F4,$DC,$DA; 0xe692 $A682 EC FD F2 E8 EE F4 DC DA  ;
.byt    $E7,$FD,$E3,$EE,$E6,$E9,$F4,$EF; 0xe69a $A68A E7 FD E3 EE E6 E9 F4 EF  ;
.byt    $DE,$EB,$F2,$FD,$E1,$E2,$E0,$E1; 0xe6a2 $A692 DE EB F2 FD E1 E2 E0 E1  ;
.byt    $CF,$FF                        ; 0xe6aa $A69A CF FF                    ;
LA69C:                                                                          ;
.byt    $E2,$F4,$DA,$E6                ; 0xe6ac $A69C E2 F4 DA E6              ;
LA6A0:                                                                          ;
.byt    $FD,$DE,$EB,$EB,$E8,$EB,$CF,$FF; 0xe6b0 $A6A0 FD DE EB EB E8 EB CF FF  ;
LA6A8:                                                                          ;
.byt    $EC,$E8,$EE,$ED,$E1,$F4,$E8,$DF; 0xe6b8 $A6A8 EC E8 EE ED E1 F4 E8 DF  ;
.byt    $FD,$E4,$E2,$E7,$E0,$EC,$F4,$ED; 0xe6c0 $A6B0 FD E4 E2 E7 E0 EC F4 ED  ;
.byt    $E8,$E6,$DB,$FD,$E2,$E7,$F4,$E6; 0xe6c8 $A6B8 E8 E6 DB FD E2 E7 F4 E6  ;
.byt    $E2,$DD,$E8,$F4,$E2,$EC,$FD,$DA; 0xe6d0 $A6C0 E2 DD E8 F4 E2 EC FD DA  ;
.byt    $F4,$ED,$EE,$E7,$E7,$DE,$E5,$CF; 0xe6d8 $A6C8 F4 ED EE E7 E7 DE E5 CF  ;
.byt    $FF                            ; 0xe6e0 $A6D0 FF                       ;
LA6D1:                                                                          ;
.byt    $E2                            ; 0xe6e1 $A6D1 E2                       ;
LA6D2:                                                                          ;
.byt    $E7,$F4,$E6,$E2,$DD,$E8,$EB,$E8; 0xe6e2 $A6D2 E7 F4 E6 E2 DD E8 EB E8  ;
.byt    $FD,$EC,$F0,$DA,$E6,$E9,$F4,$DF; 0xe6ea $A6DA FD EC F0 DA E6 E9 F4 DF  ;
.byt    $E2,$E7,$DD,$FD,$DA,$F4,$E1,$DA; 0xe6f2 $A6E2 E2 E7 DD FD DA F4 E1 DA  ;
.byt    $E7,$DD,$F2,$FD,$E0,$E5,$E8,$EF; 0xe6fa $A6EA E7 DD F2 FD E0 E5 E8 EF  ;
.byt    $DE,$CF,$FF                    ; 0xe702 $A6F2 DE CF FF                 ;
LA6F5:                                                                          ;
.byt    $DE,$F2,$DE,$EC,$F4,$E8,$DF,$FD; 0xe705 $A6F5 DE F2 DE EC F4 E8 DF FD  ;
.byt    $E0,$DA,$E7,$E8,$E7,$F4,$DA,$EB; 0xe70d $A6FD E0 DA E7 E8 E7 F4 DA EB  ;
.byt    $DE,$FD,$DE,$EF,$DE,$EB,$F2,$F0; 0xe715 $A705 DE FD DE EF DE EB F2 F0  ;
.byt    $E1,$DE,$EB,$DE,$FD,$DB,$DE,$F4; 0xe71d $A70D E1 DE EB DE FD DB DE F4  ;
.byt    $DC,$DA,$EB,$DE,$DF,$EE,$E5,$FF; 0xe725 $A715 DC DA EB DE DF EE E5 FF  ;
LA71D:                                                                          ;
.byt    $F0,$DA,$ED,$DE,$EB,$F4,$ED,$E8; 0xe72d $A71D F0 DA ED DE EB F4 ED E8  ;
.byt    $F0,$E7,$FD,$F4,$F4,$F4,$F4,$E8; 0xe735 $A725 F0 E7 FD F4 F4 F4 F4 E8  ;
.byt    $DF,$FD,$F4,$F4,$EC,$DA,$EB,$E2; 0xe73d $A72D DF FD F4 F4 EC DA EB E2  ;
.byt    $DA,$FF                        ; 0xe745 $A735 DA FF                    ;
LA737:                                                                          ;
.byt    $E2,$DF,$F4,$DA,$E5,$E5,$FD,$DE; 0xe747 $A737 E2 DF F4 DA E5 E5 FD DE  ;
.byt    $E5,$EC,$DE,$F4,$DF,$DA,$E2,$E5; 0xe74f $A73F E5 EC DE F4 DF DA E2 E5  ;
.byt    $EC,$FD,$EE,$EC,$DE,$F4,$DF,$E2; 0xe757 $A747 EC FD EE EC DE F4 DF E2  ;
.byt    $EB,$DE,$CF,$FF                ; 0xe75f $A74F EB DE CF FF              ;
LA753:                                                                          ;
.byt    $E7,$E8,$ED,$E1,$E2,$E7,$E0,$CF; 0xe763 $A753 E7 E8 ED E1 E2 E7 E0 CF  ;
.byt    $FF                            ; 0xe76b $A75B FF                       ;
LA75C:                                                                          ;
.byt    $EB,$DE,$ED,$EE,$EB,$E7,$F4,$ED; 0xe76c $A75C EB DE ED EE EB E7 F4 ED  ;
.byt    $E1,$DE,$FD,$DC,$EB,$F2,$EC,$ED; 0xe774 $A764 E1 DE FD DC EB F2 EC ED  ;
.byt    $DA,$E5,$F4,$ED,$E8,$FD,$ED,$E1; 0xe77c $A76C DA E5 F4 ED E8 FD ED E1  ;
.byt    $DE,$F4,$E9,$DA,$E5,$DA,$DC,$DE; 0xe784 $A774 DE F4 E9 DA E5 DA DC DE  ;
.byt    $FD,$E2,$E7,$F4,$E9,$DA,$EB,$DA; 0xe78c $A77C FD E2 E7 F4 E9 DA EB DA  ;
.byt    $E9,$DA,$CF,$FF                ; 0xe794 $A784 E9 DA CF FF              ;
LA788:                                                                          ;
.byt    $EE,$EC,$DE,$F4,$E4,$DE,$F2,$EC; 0xe798 $A788 EE EC DE F4 E4 DE F2 EC  ;
.byt    $FD,$E2,$E7,$F4,$E9,$DA,$E5,$DA; 0xe7a0 $A790 FD E2 E7 F4 E9 DA E5 DA  ;
.byt    $DC,$DE,$EC,$FD,$ED,$E1,$DE,$F2; 0xe7a8 $A798 DC DE EC FD ED E1 DE F2  ;
.byt    $F4,$DA,$EB,$DE,$FD,$DF,$E8,$EE; 0xe7b0 $A7A0 F4 DA EB DE FD DF E8 EE  ;
.byt    $E7,$DD,$F4                    ; 0xe7b8 $A7A8 E7 DD F4                 ;
LA7AB:                                                                          ;
.byt    $E2,$E7,$CF,$FF                ; 0xe7bb $A7AB E2 E7 CF FF              ;
LA7AF:                                                                          ;
.byt    $ED,$DA,$E5,$E4,$F4,$F0,$E2,$ED; 0xe7bf $A7AF ED DA E5 E4 F4 F0 E2 ED  ;
.byt    $E1,$FD,$E6,$F2,$F4,$DF,$DA,$ED; 0xe7c7 $A7B7 E1 FD E6 F2 F4 DF DA ED  ;
.byt    $E1,$DE,$EB,$FD,$DB,$DE,$DF,$E8; 0xe7cf $A7BF E1 DE EB FD DB DE DF E8  ;
.byt    $EB,$DE,$F4,$F2,$E8,$EE,$FD,$E5; 0xe7d7 $A7C7 EB DE F4 F2 E8 EE FD E5  ;
.byt    $DE,$DA,$EF,$DE,$F4,$ED,$E8,$F0; 0xe7df $A7CF DE DA EF DE F4 ED E8 F0  ;
.byt    $E7,$FF                        ; 0xe7e7 $A7D7 E7 FF                    ;
LA7D9:                                                                          ;
.byt    $EE,$EC,$DE,$F4,$ED,$E1,$E2,$EC; 0xe7e9 $A7D9 EE EC DE F4 ED E1 E2 EC  ;
.byt    $FD,$E6,$DA,$E0,$E2,$DC,$F4,$ED; 0xe7f1 $A7E1 FD E6 DA E0 E2 DC F4 ED  ;
.byt    $E8,$FD,$EB,$DE,$EC,$ED,$E8,$EB; 0xe7f9 $A7E9 E8 FD EB DE EC ED E8 EB  ;
.byt    $DE,$FD,$F2,$E8,$EE,$EB,$F4,$E5; 0xe801 $A7F1 DE FD F2 E8 EE EB F4 E5  ;
.byt    $E2,$DF,$DE,$CF,$FF            ; 0xe809 $A7F9 E2 DF DE CF FF           ;
LA7FE:                                                                          ;
.byt    $E8,$E7,$E5,$F2,$F4,$ED,$E8,$F0; 0xe80e $A7FE E8 E7 E5 F2 F4 ED E8 F0  ;
.byt    $E7,$FD,$DF,$E8,$E5,$E4,$F4,$E6; 0xe816 $A806 E7 FD DF E8 E5 E4 F4 E6  ;
.byt    $DA,$F2,$FD,$DC,$EB,$E8,$EC,$EC; 0xe81e $A80E DA F2 FD DC EB E8 EC EC  ;
.byt    $F4,$ED,$E1,$E2,$EC,$FD,$EB,$E2; 0xe826 $A816 F4 ED E1 E2 EC FD EB E2  ;
.byt    $EF,$DE,$EB,$36,$FF            ; 0xe82e $A81E EF DE EB 36 FF           ;
LA823:                                                                          ;
.byt    $F2,$E8,$EE,$F4,$E4,$E7,$E8    ; 0xe833 $A823 F2 E8 EE F4 E4 E7 E8     ;
LA82A:                                                                          ;
.byt    $F0,$FD,$DB,$DA,$E0,$EE,$34,$F4; 0xe83a $A82A F0 FD DB DA E0 EE 34 F4  ;
.byt    $ED,$E1,$DE,$E7                ; 0xe842 $A832 ED E1 DE E7              ;
LA836:                                                                          ;
.byt    $FD,$E2,$F4,$DC,$DA,$E7,$F4,$E1; 0xe846 $A836 FD E2 F4 DC DA E7 F4 E1  ;
.byt    $DE,$E5,$E9,$FD,$F2,$E8,$EE,$F4; 0xe84e $A83E DE E5 E9 FD F2 E8 EE F4  ;
.byt    $DC,$EB,$E8,$EC,$EC,$CF,$FF    ; 0xe856 $A846 DC EB E8 EC EC CF FF     ;
LA84D:                                                                          ;
.byt    $E7,$E8,$F4,$E8,$E7,$DE,$F4,$E2; 0xe85d $A84D E7 E8 F4 E8 E7 DE F4 E2  ;
.byt    $EC,$FD,$E1,$DE,$EB,$DE,$F4,$DB; 0xe865 $A855 EC FD E1 DE EB DE F4 DB  ;
.byt    $EE,$ED,$F4,$DA,$FD,$DC,$E1,$EE; 0xe86d $A85D EE ED F4 DA FD DC E1 EE  ;
.byt    $EB,$DC,$E1,$DB,$DE,$E5,$E5,$FD; 0xe875 $A865 EB DC E1 DB DE E5 E5 FD  ;
.byt    $F0,$E2,$E5,$E5,$F4,$EB,$E2,$E7; 0xe87d $A86D F0 E2 E5 E5 F4 EB E2 E7  ;
.byt    $E0,$CF,$FF                    ; 0xe885 $A875 E0 CF FF                 ;
LA878:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$E2,$EC,$E5,$DA; 0xe888 $A878 ED E1 DE F4 E2 EC E5 DA  ;
.byt    $E7,$DD,$FD,$E9,$DA,$E5,$DA,$DC; 0xe890 $A880 E7 DD FD E9 DA E5 DA DC  ;
.byt    $DE,$F4,$E2,$E7,$FD,$ED,$E1,$DE; 0xe898 $A888 DE F4 E2 E7 FD ED E1 DE  ;
.byt    $F4,$EC,$E8,$EE,$ED,$E1,$FD,$E1; 0xe8a0 $A890 F4 EC E8 EE ED E1 FD E1  ;
.byt    $DA,$EC,$F4,$DA,$F4,$EB,$DA,$DF; 0xe8a8 $A898 DA EC F4 DA F4 EB DA DF  ;
.byt    $ED,$FF                        ; 0xe8b0 $A8A0 ED FF                    ;
LA8A2:                                                                          ;
.byt    $DF,$E2,$E7,$DD,$F4,$E6,$DA,$E0; 0xe8b2 $A8A2 DF E2 E7 DD F4 E6 DA E0  ;
.byt    $E2,$DC,$FD,$E2,$E7,$F4,$DA,$F4; 0xe8ba $A8AA E2 DC FD E2 E7 F4 DA F4  ;
.byt    $DC,$DA,$EF,$DE,$FD,$E2,$E7,$F4; 0xe8c2 $A8B2 DC DA EF DE FD E2 E7 F4  ;
.byt    $E6,$E8,$EB,$EE,$E0,$DE,$FD,$EC; 0xe8ca $A8BA E6 E8 EB EE E0 DE FD EC  ;
.byt    $F0,$DA,$E6,$E9,$CF,$FF        ; 0xe8d2 $A8C2 F0 DA E6 E9 CF FF        ;
LA8C8:                                                                          ;
.byt    $E1,$DA,$EB,$DB,$E8,$EB,$FD,$F4; 0xe8d8 $A8C8 E1 DA EB DB E8 EB FD F4  ;
.byt    $ED,$E8,$F0,$E7,$FD,$F4,$F4,$E8; 0xe8e0 $A8D0 ED E8 F0 E7 FD F4 F4 E8  ;
.byt    $DF,$FD,$F4,$E6,$E2,$DD,$E8,$FF; 0xe8e8 $A8D8 DF FD F4 E6 E2 DD E8 FF  ;
LA8E0:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$DD,$E8,$E8,$EB; 0xe8f0 $A8E0 ED E1 DE F4 DD E8 E8 EB  ;
.byt    $FD,$F0,$E2,$E5,$E5,$F4,$E7,$E8; 0xe8f8 $A8E8 FD F0 E2 E5 E5 F4 E7 E8  ;
.byt    $ED,$FD,$E8,$E9,$DE,$E7,$CF,$F4; 0xe900 $A8F0 ED FD E8 E9 DE E7 CF F4  ;
.byt    $E2,$ED,$EC,$FD,$EF,$DE,$EB,$F2; 0xe908 $A8F8 E2 ED EC FD EF DE EB F2  ;
.byt    $F4,$EA,$EE,$E2,$DE,$ED,$FF    ; 0xe910 $A900 F4 EA EE E2 DE ED FF     ;
LA907:                                                                          ;
.byt    $E9,$E5,$DE,$DA,$EC,$DE,$CF,$F4; 0xe917 $A907 E9 E5 DE DA EC DE CF F4  ;
.byt    $E6,$F2,$FD,$DD,$DA,$EE,$E0,$E1; 0xe91f $A90F E6 F2 FD DD DA EE E0 E1  ;
.byt    $ED,$DE,$EB,$FD,$E2,$EC,$F4,$EC; 0xe927 $A917 ED DE EB FD E2 EC F4 EC  ;
.byt    $E2,$DC,$E4,$CF,$FD,$E1,$DE,$E5; 0xe92f $A91F E2 DC E4 CF FD E1 DE E5  ;
.byt    $E9,$F4,$E1,$DE,$EB,$36,$FF    ; 0xe937 $A927 E9 F4 E1 DE EB 36 FF     ;
LA92E:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$F0,$DA,$ED,$DE; 0xe93e $A92E ED E1 DE F4 F0 DA ED DE  ;
.byt    $EB,$FD,$E8,$DF,$F4,$E5,$E2,$DF; 0xe946 $A936 EB FD E8 DF F4 E5 E2 DF  ;
.byt    $DE,$36,$FD,$EA,$EE,$E2,$DC,$E4; 0xe94e $A93E DE 36 FD EA EE E2 DC E4  ;
.byt    $F4,$DC,$E8,$E6,$DE,$FD,$F0,$E2; 0xe956 $A946 F4 DC E8 E6 DE FD F0 E2  ;
.byt    $ED,$E1,$F4,$E6,$DE,$CF,$FF    ; 0xe95e $A94E ED E1 F4 E6 DE CF FF     ;
LA955:                                                                          ;
.byt    $DA,$EC,$E4,$F4,$DE,$EB,$EB,$E8; 0xe965 $A955 DA EC E4 F4 DE EB EB E8  ;
.byt    $EB,$FD,$E8,$DF,$F4,$EB,$EE,$ED; 0xe96d $A95D EB FD E8 DF F4 EB EE ED  ;
.byt    $E8,$FD,$DA,$DB,$E8,$EE,$ED,$F4; 0xe975 $A965 E8 FD DA DB E8 EE ED F4  ;
.byt    $ED,$E1,$DE,$FD,$E9,$DA,$E5,$DA; 0xe97d $A96D ED E1 DE FD E9 DA E5 DA  ;
.byt    $DC,$DE,$CF,$FF                ; 0xe985 $A975 DC DE CF FF              ;
LA979:                                                                          ;
.byt    $ED,$E1,$E2,$EC,$F4,$E6,$DA,$E0; 0xe989 $A979 ED E1 E2 EC F4 E6 DA E0  ;
.byt    $E2,$DC,$FD,$F0,$E8,$EB,$DD,$F4; 0xe991 $A981 E2 DC FD F0 E8 EB DD F4  ;
.byt    $F0,$E2,$E5,$E5,$FD,$E0,$E2,$EF; 0xe999 $A989 F0 E2 E5 E5 FD E0 E2 EF  ;
.byt    $DE,$F4,$F2,$E8,$EE,$FD,$E9,$E8; 0xe9a1 $A991 DE F4 F2 E8 EE FD E9 E8  ;
.byt    $F0,$DE,$EB,$CF,$FF            ; 0xe9a9 $A999 F0 DE EB CF FF           ;
LA99E:                                                                          ;
.byt    $F0,$E1,$DE,$E7,$F4,$F2,$E8,$EE; 0xe9ae $A99E F0 E1 DE E7 F4 F2 E8 EE  ;
.byt    $FD,$E3,$EE,$E6,$E9,$F4,$E9,$EB; 0xe9b6 $A9A6 FD E3 EE E6 E9 F4 E9 EB  ;
.byt    $DE,$EC,$EC,$FD,$DD,$E8,$F0,$E7; 0xe9be $A9AE DE EC EC FD DD E8 F0 E7  ;
.byt    $F0,$DA,$EB,$DD,$FD,$ED,$E8,$F4; 0xe9c6 $A9B6 F0 DA EB DD FD ED E8 F4  ;
.byt    $EC,$ED,$DA,$DB,$CF,$FF        ; 0xe9ce $A9BE EC ED DA DB CF FF        ;
LA9C4:                                                                          ;
.byt    $DB,$DA,$E0,$EE,$F4,$E2,$EC,$F4; 0xe9d4 $A9C4 DB DA E0 EE F4 E2 EC F4  ;
.byt    $E6,$F2,$FD,$E7,$DA,$E6,$DE,$CF; 0xe9dc $A9CC E6 F2 FD E7 DA E6 DE CF  ;
.byt    $F4,$EC,$E1,$E8,$F0,$FD,$E6,$F2; 0xe9e4 $A9D4 F4 EC E1 E8 F0 FD E6 F2  ;
.byt    $F4,$E7,$E8,$ED,$DE,$F4,$ED,$E8; 0xe9ec $A9DC F4 E7 E8 ED DE F4 ED E8  ;
.byt    $FD,$EB,$E2,$EF,$DE,$EB,$F4,$E6; 0xe9f4 $A9E4 FD EB E2 EF DE EB F4 E6  ;
.byt    $DA,$E7,$CF,$FF                ; 0xe9fc $A9EC DA E7 CF FF              ;
LA9F0:                                                                          ;
.byt    $F3,$F3,$F3,$CF,$CF,$CF,$FF    ; 0xea00 $A9F0 F3 F3 F3 CF CF CF FF     ;
LA9F7:                                                                          ;
.byt    $E5,$DE,$ED,$F4,$E6,$DE,$F4,$DB; 0xea07 $A9F7 E5 DE ED F4 E6 DE F4 DB  ;
.byt    $DE,$36,$FD,$E6,$DA,$EC,$ED,$DE; 0xea0f $A9FF DE 36 FD E6 DA EC ED DE  ;
.byt    $EB                            ; 0xea17 $AA07 EB                       ;
LAA08:                                                                          ;
.byt    $F4,$E2,$EC,$FD,$E2,$E7,$F4,$F0; 0xea18 $AA08 F4 E2 EC FD E2 E7 F4 F0  ;
.byt    $E8,$E8,$DD,$EC,$FD,$E7,$F4,$E8; 0xea20 $AA10 E8 E8 DD EC FD E7 F4 E8  ;
.byt    $DF,$F4,$EB,$E2,$EF,$DE,$EB,$FF; 0xea28 $AA18 DF F4 EB E2 EF DE EB FF  ;
LAA20:                                                                          ;
.byt    $ED,$E1,$E2,$EC,$F4,$E2,$EC,$FD; 0xea30 $AA20 ED E1 E2 EC F4 E2 EC FD  ;
.byt    $E4,$E2,$E7,$E0,$EC,$F4,$ED,$E8; 0xea38 $AA28 E4 E2 E7 E0 EC F4 ED E8  ;
.byt    $E6,$DB,$FF                    ; 0xea40 $AA30 E6 DB FF                 ;
LAA33:                                                                          ;
.byt    $EC,$ED,$E8,$E9,$F4,$DB,$F2,$FD; 0xea43 $AA33 EC ED E8 E9 F4 DB F2 FD  ;
.byt    $DF,$E8,$EB,$F4,$DA,$F0,$E1,$E2; 0xea4b $AA3B DF E8 EB F4 DA F0 E1 E2  ;
.byt    $E5,$DE,$FF                    ; 0xea53 $AA43 E5 DE FF                 ;
LAA46:                                                                          ;
.byt    $EB,$DE,$EF,$E2,$EF,$DE,$DD,$36; 0xea56 $AA46 EB DE EF E2 EF DE DD 36  ;
.byt    $FF                            ; 0xea5e $AA4E FF                       ;
LAA4F:                                                                          ;
.byt    $EB,$DE,$EC,$ED,$F4,$E1,$DE,$EB; 0xea5f $AA4F EB DE EC ED F4 E1 DE EB  ;
.byt    $DE,$CF,$FF                    ; 0xea67 $AA57 DE CF FF                 ;
LAA5A:                                                                          ;
.byt    $E1,$E8,$F0,$F4,$DA,$DB,$E8,$EE; 0xea6a $AA5A E1 E8 F0 F4 DA DB E8 EE  ;
.byt    $ED,$FD,$ED,$E1,$DA,$ED,$34,$F4; 0xea72 $AA62 ED FD ED E1 DA ED 34 F4  ;
.byt    $E2,$ED,$EC,$FD,$E6,$F2,$F4,$EC; 0xea7a $AA6A E2 ED EC FD E6 F2 F4 EC  ;
.byt    $E9,$DE,$DC,$E2,$DA,$E5,$FD,$E6; 0xea82 $AA72 E9 DE DC E2 DA E5 FD E6  ;
.byt    $DE,$DD,$E2,$DC,$E2,$E7,$DE,$CF; 0xea8a $AA7A DE DD E2 DC E2 E7 DE CF  ;
.byt    $FF                            ; 0xea92 $AA82 FF                       ;
LAA83:                                                                          ;
.byt    $E2,$F4,$E4,$E7,$E8,$F0,$FD,$E7; 0xea93 $AA83 E2 F4 E4 E7 E8 F0 FD E7  ;
.byt    $E8,$ED,$E1,$E2,$E7,$E0,$CF,$FF; 0xea9b $AA8B E8 ED E1 E2 E7 E0 CF FF  ;
LAA93:                                                                          ;
.byt    $E9,$E5,$DE,$DA,$EC,$DE,$FD,$EC; 0xeaa3 $AA93 E9 E5 DE DA EC DE FD EC  ;
.byt    $DA,$EF,$DE,$F4,$E8,$EE,$EB,$FD; 0xeaab $AA9B DA EF DE F4 E8 EE EB FD  ;
.byt    $ED,$E8,$F0,$E7,$36,$FF        ; 0xeab3 $AAA3 ED E8 F0 E7 36 FF        ;
LAAA9:                                                                          ;
.byt    $F2,$E8,$EE,$F4,$E6,$EE,$EC,$ED; 0xeab9 $AAA9 F2 E8 EE F4 E6 EE EC ED  ;
.byt    $FD,$EC,$DA,$EF,$DE,$FD,$E1,$F2; 0xeac1 $AAB1 FD EC DA EF DE FD E1 F2  ;
.byt    $EB,$EE,$E5,$DE,$36,$FF        ; 0xeac9 $AAB9 EB EE E5 DE 36 FF        ;
LAABF:                                                                          ;
.byt    $E2,$F4,$DC,$DA,$E7,$F4,$E7,$E8; 0xeacf $AABF E2 F4 DC DA E7 F4 E7 E8  ;
.byt    $ED,$FD,$E1,$DE,$E5,$E9,$F4,$F2; 0xead7 $AAC7 ED FD E1 DE E5 E9 F4 F2  ;
.byt    $E8,$EE,$CF,$FF                ; 0xeadf $AACF E8 EE CF FF              ;
LAAD3:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$EB,$E2,$EF,$DE; 0xeae3 $AAD3 ED E1 DE F4 EB E2 EF DE  ;
.byt    $EB,$FD,$DD,$DE,$EF,$E2,$E5,$F4; 0xeaeb $AADB EB FD DD DE EF E2 E5 F4  ;
.byt    $DE,$DA,$ED,$EC,$FD,$ED,$E1,$E8; 0xeaf3 $AAE3 DE DA ED EC FD ED E1 E8  ;
.byt    $EC,$DE,$F4,$F0,$E1,$E8,$FD,$DA; 0xeafb $AAEB EC DE F4 F0 E1 E8 FD DA  ;
.byt    $EB,$DE,$F4,$F0,$DE,$DA,$E4,$CF; 0xeb03 $AAF3 EB DE F4 F0 DE DA E4 CF  ;
.byt    $FF                            ; 0xeb0b $AAFB FF                       ;
LAAFC:                                                                          ;
.byt    $E3,$EE,$E6,$E9,$F4,$E2,$E7,$F4; 0xeb0c $AAFC E3 EE E6 E9 F4 E2 E7 F4  ;
.byt    $DA,$FD,$E1,$E8,$E5,$DE,$F4,$E2; 0xeb14 $AB04 DA FD E1 E8 E5 DE F4 E2  ;
.byt    $E7,$FD,$ED,$E1,$DE,$F4,$E9,$DA; 0xeb1c $AB0C E7 FD ED E1 DE F4 E9 DA  ;
.byt    $E5,$DA,$DC,$DE,$FD,$E2,$DF,$F4; 0xeb24 $AB14 E5 DA DC DE FD E2 DF F4  ;
.byt    $F2,$E8,$EE,$F4,$E0,$E8,$CF,$FF; 0xeb2c $AB1C F2 E8 EE F4 E0 E8 CF FF  ;
LAB24:                                                                          ;
.byt    $F0,$DE,$E5,$DC,$E8,$E6,$DE,$FD; 0xeb34 $AB24 F0 DE E5 DC E8 E6 DE FD  ;
.byt    $F4,$F4,$ED,$E8,$FD,$E7,$DA,$DB; 0xeb3c $AB2C F4 F4 ED E8 FD E7 DA DB  ;
.byt    $E8,$E8,$EB,$EE,$FF            ; 0xeb44 $AB34 E8 E8 EB EE FF           ;
LAB39:                                                                          ;
.byt    $F0,$DA,$E7,$ED,$F4,$ED,$E8,$FD; 0xeb49 $AB39 F0 DA E7 ED F4 ED E8 FD  ;
.byt    $E0,$DE,$ED,$F4,$EC,$E8,$E6,$DE; 0xeb51 $AB41 E0 DE ED F4 EC E8 E6 DE  ;
.byt    $FD,$F0,$DA,$ED,$DE,$EB,$34,$FF; 0xeb59 $AB49 FD F0 DA ED DE EB 34 FF  ;
LAB51:                                                                          ;
.byt    $EC,$DE,$DE,$F4,$DA,$F4,$E6,$DA; 0xeb61 $AB51 EC DE DE F4 DA F4 E6 DA  ;
.byt    $E7,$FD,$E2,$E7,$F4,$DD,$DA,$EB; 0xeb69 $AB59 E7 FD E2 E7 F4 DD DA EB  ;
.byt    $EE,$E7,$E2,$DA,$FD,$DB,$DE,$DF; 0xeb71 $AB61 EE E7 E2 DA FD DB DE DF  ;
.byt    $E8,$EB,$DE,$F4,$ED,$E1,$DE,$FD; 0xeb79 $AB69 E8 EB DE F4 ED E1 DE FD  ;
.byt    $E2,$EC,$E5,$DA,$E7,$DD,$EC,$CF; 0xeb81 $AB71 E2 EC E5 DA E7 DD EC CF  ;
.byt    $FF                            ; 0xeb89 $AB79 FF                       ;
LAB7A:                                                                          ;
.byt    $E2,$F4,$DA,$E6,$FD,$ED,$E1,$E2; 0xeb8a $AB7A E2 F4 DA E6 FD ED E1 E2  ;
.byt    $EB,$EC,$ED,$F2,$CF,$FF        ; 0xeb92 $AB82 EB EC ED F2 CF FF        ;
LAB88:                                                                          ;
.byt    $F2,$E8,$EE,$F4,$E1,$DA,$EF,$DE; 0xeb98 $AB88 F2 E8 EE F4 E1 DA EF DE  ;
.byt    $FD,$F0,$DA,$ED,$DE,$EB,$CF,$FD; 0xeba0 $AB90 FD F0 DA ED DE EB CF FD  ;
.byt    $DC,$E8,$E6,$DE,$F4,$ED,$E8,$FD; 0xeba8 $AB98 DC E8 E6 DE F4 ED E8 FD  ;
.byt    $E6,$F2,$F4,$E1,$E8,$EE,$EC,$DE; 0xebb0 $ABA0 E6 F2 F4 E1 E8 EE EC DE  ;
.byt    $CF,$FF                        ; 0xebb8 $ABA8 CF FF                    ;
LABAA:                                                                          ;
.byt    $F0,$E2,$ED,$E1,$F4,$DB,$E8,$E8; 0xebba $ABAA F0 E2 ED E1 F4 DB E8 E8  ;
.byt    $ED,$EC,$FD,$E2,$F4,$DC,$E8,$EE; 0xebc2 $ABB2 ED EC FD E2 F4 DC E8 EE  ;
.byt    $E5,$DD,$FD,$F0,$DA,$E5,$E4,$F4; 0xebca $ABBA E5 DD FD F0 DA E5 E4 F4  ;
.byt    $E8,$E7,$FD,$ED,$E1,$DE,$F4,$F0; 0xebd2 $ABC2 E8 E7 FD ED E1 DE F4 F0  ;
.byt    $DA,$ED,$DE,$EB,$CF,$FF        ; 0xebda $ABCA DA ED DE EB CF FF        ;
LABD0:                                                                          ;
.byt    $DE,$DA,$EC,$ED,$F4,$E8,$DF,$FD; 0xebe0 $ABD0 DE DA EC ED F4 E8 DF FD  ;
.byt    $ED,$EB,$E2,$E9,$E5,$DE,$F4,$DE; 0xebe8 $ABD8 ED EB E2 E9 E5 DE F4 DE  ;
.byt    $F2,$DE,$FD,$EB,$E8,$DC,$E4,$F4; 0xebf0 $ABE0 F2 DE FD EB E8 DC E4 F4  ;
.byt    $DA,$ED,$FD,$EC,$DE,$DA,$EC,$E1; 0xebf8 $ABE8 DA ED FD EC DE DA EC E1  ;
.byt    $E8,$EB,$DE,$CF,$FF            ; 0xec00 $ABF0 E8 EB DE CF FF           ;
LABF5:                                                                          ;
.byt    $DC,$E8,$E6,$DE,$F4,$DB,$DA,$DC; 0xec05 $ABF5 DC E8 E6 DE F4 DB DA DC  ;
.byt    $E4,$FD,$F0,$E1,$DE,$E7,$F4,$F2; 0xec0d $ABFD E4 FD F0 E1 DE E7 F4 F2  ;
.byt    $E8,$EE,$FD,$DA,$EB,$DE,$F4,$EB; 0xec15 $AC05 E8 EE FD DA EB DE F4 EB  ;
.byt    $DE,$DA,$DD,$F2,$CF,$FF        ; 0xec1d $AC0D DE DA DD F2 CF FF        ;
LAC13:                                                                          ;
.byt    $ED,$E1,$E2,$EC,$F4,$E6,$DA,$E0; 0xec23 $AC13 ED E1 E2 EC F4 E6 DA E0  ;
.byt    $E2,$DC,$FD,$F0,$E2,$E5,$E5,$F4; 0xec2b $AC1B E2 DC FD F0 E2 E5 E5 F4  ;
.byt    $E6,$DA,$E4,$DE,$FD,$F2,$E8,$EE; 0xec33 $AC23 E6 DA E4 DE FD F2 E8 EE  ;
.byt    $EB,$F4,$EC,$F0,$E8,$EB,$DD,$FD; 0xec3b $AC2B EB F4 EC F0 E8 EB DD FD  ;
.byt    $EC,$E1,$E8,$E8,$ED,$F4,$DF,$E2; 0xec43 $AC33 EC E1 E8 E8 ED F4 DF E2  ;
.byt    $EB,$DE,$FF                    ; 0xec4b $AC3B EB DE FF                 ;
LAC3E:                                                                          ;
.byt    $F2,$E8,$EE,$F4,$E4,$E7,$E8,$F0; 0xec4e $AC3E F2 E8 EE F4 E4 E7 E8 F0  ;
.byt    $FD,$DA,$E5,$E5,$F4,$E2,$F4,$DC; 0xec56 $AC46 FD DA E5 E5 F4 E2 F4 DC  ;
.byt    $DA,$E7,$FD,$ED,$DE,$DA,$DC,$E1; 0xec5e $AC4E DA E7 FD ED DE DA DC E1  ;
.byt    $F4,$F2,$E8,$EE,$CF,$FD,$E0,$E8; 0xec66 $AC56 F4 F2 E8 EE CF FD E0 E8  ;
.byt    $CF,$FF                        ; 0xec6e $AC5E CF FF                    ;
LAC60:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$DD,$DE,$EF,$E2; 0xec70 $AC60 ED E1 DE F4 DD DE EF E2  ;
.byt    $E5,$FD,$DD,$E8,$DE,$EC,$F4,$E7; 0xec78 $AC68 E5 FD DD E8 DE EC F4 E7  ;
.byt    $E8,$ED,$FD,$E5,$E2,$E4,$DE,$F4; 0xec80 $AC70 E8 ED FD E5 E2 E4 DE F4  ;
.byt    $E7,$E8,$E2,$EC,$DE,$FF        ; 0xec88 $AC78 E7 E8 E2 EC DE FF        ;
LAC7E:                                                                          ;
.byt    $DA,$F4,$E9,$E8,$F0,$DE,$EB,$DF; 0xec8e $AC7E DA F4 E9 E8 F0 DE EB DF  ;
.byt    $EE,$E5,$FD,$E4,$E7,$E2,$E0,$E1; 0xec96 $AC86 EE E5 FD E4 E7 E2 E0 E1  ;
.byt    $ED,$FD,$E5,$E2,$EF,$DE,$EC,$F4; 0xec9e $AC8E ED FD E5 E2 EF DE EC F4  ;
.byt    $E2,$E7,$FD,$ED,$E1,$E2,$EC,$F4; 0xeca6 $AC96 E2 E7 FD ED E1 E2 EC F4  ;
.byt    $ED,$E8,$F0,$E7,$CF,$FF        ; 0xecae $AC9E ED E8 F0 E7 CF FF        ;
LACA4:                                                                          ;
.byt    $E6,$DA,$E0,$E2,$DC,$F4,$E4,$DE; 0xecb4 $ACA4 E6 DA E0 E2 DC F4 E4 DE  ;
.byt    $F2,$FD,$EB,$DE,$DA,$DD,$EC,$CF; 0xecbc $ACAC F2 FD EB DE DA DD EC CF  ;
.byt    $CF,$CF,$FE,$ED,$EB,$DE,$DA,$EC; 0xecc4 $ACB4 CF CF FE ED EB DE DA EC  ;
.byt    $EE,$EB,$DE,$FD,$E8,$DF,$F4,$E4; 0xeccc $ACBC EE EB DE FD E8 DF F4 E4  ;
.byt    $DA,$EC,$EE,$ED,$E8,$FF        ; 0xecd4 $ACC4 DA EC EE ED E8 FF        ;
LACCA:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$E9,$DA,$E5,$DA; 0xecda $ACCA ED E1 DE F4 E9 DA E5 DA  ;
.byt    $DC,$DE,$FD,$E1,$DA,$EC,$F4,$DA; 0xece2 $ACD2 DC DE FD E1 DA EC F4 DA  ;
.byt    $FD,$DF,$DA,$E5,$EC,$DE,$F4,$F0; 0xecea $ACDA FD DF DA E5 EC DE F4 F0  ;
.byt    $DA,$E5,$E5,$FF                ; 0xecf2 $ACE2 DA E5 E5 FF              ;
LACE6:                                                                          ;
.byt    $E6,$E8,$EE,$E7,$ED,$DA,$E2,$E7; 0xecf6 $ACE6 E6 E8 EE E7 ED DA E2 E7  ;
.byt    $FD,$F4,$ED,$E8,$F0,$E7,$F4,$E8; 0xecfe $ACEE FD F4 ED E8 F0 E7 F4 E8  ;
.byt    $DF,$FD,$F4,$DD,$DA,$EB,$EE,$E7; 0xed06 $ACF6 DF FD F4 DD DA EB EE E7  ;
.byt    $E2,$DA,$FF                    ; 0xed0e $ACFE E2 DA FF                 ;
LAD01:                                                                          ;
.byt    $E2,$ED,$F4,$E2,$EC,$F4,$EC,$DA; 0xed11 $AD01 E2 ED F4 E2 EC F4 EC DA  ;
.byt    $E2,$DD,$FD,$ED,$E1,$DE,$F4,$DE; 0xed19 $AD09 E2 DD FD ED E1 DE F4 DE  ;
.byt    $DA,$EC,$ED,$FD,$E8,$DF,$F4,$E7; 0xed21 $AD11 DA EC ED FD E8 DF F4 E7  ;
.byt    $DA,$DB,$E8,$E8,$EB,$EE,$FD,$E1; 0xed29 $AD19 DA DB E8 E8 EB EE FD E1  ;
.byt    $DA,$EC,$CF,$CF,$CF,$FF        ; 0xed31 $AD21 DA EC CF CF CF FF        ;
LAD27:                                                                          ;
.byt    $ED,$E1,$DE,$EB,$DE,$F4,$E2,$EC; 0xed37 $AD27 ED E1 DE EB DE F4 E2 EC  ;
.byt    $FD,$EC,$E8,$E6,$DE,$E8,$E7,$DE; 0xed3f $AD2F FD EC E8 E6 DE E8 E7 DE  ;
.byt    $FD,$DB,$DE,$E1,$E2,$E7,$DD,$F4; 0xed47 $AD37 FD DB DE E1 E2 E7 DD F4  ;
.byt    $ED,$E1,$DE,$FD,$DD,$E8,$E8,$EB; 0xed4f $AD3F ED E1 DE FD DD E8 E8 EB  ;
.byt    $36,$FF                        ; 0xed57 $AD47 36 FF                    ;
LAD49:                                                                          ;
.byt    $EB,$DE,$EC,$DC,$EE,$DE,$F4,$ED; 0xed59 $AD49 EB DE EC DC EE DE F4 ED  ;
.byt    $E1,$DE,$FD,$E4,$E2,$DD,$E7,$DA; 0xed61 $AD51 E1 DE FD E4 E2 DD E7 DA  ;
.byt    $E9,$E9,$DE,$DD,$FD,$DC,$E1,$E2; 0xed69 $AD59 E9 E9 DE DD FD DC E1 E2  ;
.byt    $E5,$DD,$F4,$E8,$E7,$FD,$ED,$E1; 0xed71 $AD61 E5 DD F4 E8 E7 FD ED E1  ;
.byt    $DE,$F4,$E2,$EC,$E5,$DA,$E7,$DD; 0xed79 $AD69 DE F4 E2 EC E5 DA E7 DD  ;
.byt    $FF                            ; 0xed81 $AD71 FF                       ;
LAD72:                                                                          ;
.byt    $F2,$E8,$EE,$F4,$DA,$EB,$DE,$F4; 0xed82 $AD72 F2 E8 EE F4 DA EB DE F4  ;
.byt    $DA,$FD,$E1,$DE,$EB,$E8,$F4,$DF; 0xed8a $AD7A DA FD E1 DE EB E8 F4 DF  ;
.byt    $E8,$EB,$FD,$EC,$DA,$EF,$E2,$E7; 0xed92 $AD82 E8 EB FD EC DA EF E2 E7  ;
.byt    $E0,$F4,$E6,$F2,$FD,$DC,$E1,$E2; 0xed9a $AD8A E0 F4 E6 F2 FD DC E1 E2  ;
.byt    $E5,$DD,$CF,$DC,$E8,$E6,$DE,$FF; 0xeda2 $AD92 E5 DD CF DC E8 E6 DE FF  ;
LAD9A:                                                                          ;
.byt    $ED,$E1,$E2,$EC,$F4,$E6,$DA,$E0; 0xedaa $AD9A ED E1 E2 EC F4 E6 DA E0  ;
.byt    $E2,$DC,$FD,$F0,$E2,$E5,$E5,$FD; 0xedb2 $ADA2 E2 DC FD F0 E2 E5 E5 FD  ;
.byt    $EC,$ED,$EB,$DE,$E7,$E0,$ED,$E1; 0xedba $ADAA EC ED EB DE E7 E0 ED E1  ;
.byt    $DE,$E7,$FD,$DA,$F4,$EC,$E1,$E2; 0xedc2 $ADB2 DE E7 FD DA F4 EC E1 E2  ;
.byt    $DE,$E5,$DD,$CF,$FF            ; 0xedca $ADBA DE E5 DD CF FF           ;
LADBF:                                                                          ;
.byt    $F0,$E1,$DE,$E7,$F4,$F2,$E8,$EE; 0xedcf $ADBF F0 E1 DE E7 F4 F2 E8 EE  ;
.byt    $FD,$E3,$EE,$E6,$E9,$F4,$E9,$EB; 0xedd7 $ADC7 FD E3 EE E6 E9 F4 E9 EB  ;
.byt    $DE,$EC,$EC,$FD,$EE,$E9,$F4,$ED; 0xeddf $ADCF DE EC EC FD EE E9 F4 ED  ;
.byt    $E8,$F4,$EC,$ED,$DA,$DB,$CF,$FF; 0xede7 $ADD7 E8 F4 EC ED DA DB CF FF  ;
LADDF:                                                                          ;
.byt    $F0,$DE,$F4,$E1,$DA,$DD,$FD,$ED; 0xedef $ADDF F0 DE F4 E1 DA DD FD ED  ;
.byt    $E8,$F4,$DF,$E5,$DE,$DE,$FD,$E4; 0xedf7 $ADE7 E8 F4 DF E5 DE DE FD E4  ;
.byt    $DA,$EC,$EE,$ED,$E8,$CF,$FF    ; 0xedff $ADEF DA EC EE ED E8 CF FF     ;
LADF6:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$E8,$E5,$DD,$FD; 0xee06 $ADF6 ED E1 DE F4 E8 E5 DD FD  ;
.byt    $E6,$DA,$E7,$F4,$F0,$E1,$E8,$FD; 0xee0e $ADFE E6 DA E7 F4 F0 E1 E8 FD  ;
.byt    $EB,$DE,$E6,$DA,$E2,$E7,$EC,$FD; 0xee16 $AE06 EB DE E6 DA E2 E7 EC FD  ;
.byt    $E1,$DA,$EC,$F4,$E6,$DA,$E0,$E2; 0xee1e $AE0E E1 DA EC F4 E6 DA E0 E2  ;
.byt    $DC,$CF,$FF                    ; 0xee26 $AE16 DC CF FF                 ;
LAE19:                                                                          ;
.byt    $32,$32,$32,$32,$32,$FF        ; 0xee29 $AE19 32 32 32 32 32 FF        ;
LAE1F:                                                                          ;
.byt    $E1,$E2,$DD,$DD,$DE,$E7,$FD,$F4; 0xee2f $AE1F E1 E2 DD DD DE E7 FD F4  ;
.byt    $ED,$E8,$F0,$E7,$FD,$F4,$F4,$E8; 0xee37 $AE27 ED E8 F0 E7 FD F4 F4 E8  ;
.byt    $DF,$FD,$E4,$DA,$EC,$EE,$ED,$E8; 0xee3f $AE2F DF FD E4 DA EC EE ED E8  ;
.byt    $FF                            ; 0xee47 $AE37 FF                       ;
LAE38:                                                                          ;
.byt    $E5,$E8,$E8,$E4,$EC,$F4,$E5,$E2; 0xee48 $AE38 E5 E8 E8 E4 EC F4 E5 E2  ;
.byt    $E4,$DE,$FD,$E2,$F4,$DC,$DA,$E7; 0xee50 $AE40 E4 DE FD E2 F4 DC DA E7  ;
.byt    $F4,$E0,$DE,$ED,$FD,$E2,$E7,$F4; 0xee58 $AE48 F4 E0 DE ED FD E2 E7 F4  ;
.byt    $ED,$E1,$DE,$FD,$DF,$E2,$EB,$DE; 0xee60 $AE50 ED E1 DE FD DF E2 EB DE  ;
.byt    $E9,$E5,$DA,$DC,$DE,$CF,$FF    ; 0xee68 $AE58 E9 E5 DA DC DE CF FF     ;
LAE5F:                                                                          ;
.byt    $DC,$DA,$E5,$E5,$F4,$DF,$E8,$EB; 0xee6f $AE5F DC DA E5 E5 F4 DF E8 EB  ;
.byt    $FD,$E1,$DE,$E5,$E9,$F4,$DA,$ED; 0xee77 $AE67 FD E1 DE E5 E9 F4 DA ED  ;
.byt    $FD,$ED,$E1,$DE,$F4,$ED,$E1,$EB; 0xee7f $AE6F FD ED E1 DE F4 ED E1 EB  ;
.byt    $DE,$DE,$FD,$DE,$F2,$DE,$F4,$EB; 0xee87 $AE77 DE DE FD DE F2 DE F4 EB  ;
.byt    $E8,$DC,$E4,$EC,$CF,$FF        ; 0xee8f $AE7F E8 DC E4 EC CF FF        ;
LAE85:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$E1,$E8,$E5,$DE; 0xee95 $AE85 ED E1 DE F4 E1 E8 E5 DE  ;
.byt    $FD,$E2,$E7,$F4,$E9,$DA,$E5,$DA; 0xee9d $AE8D FD E2 E7 F4 E9 DA E5 DA  ;
.byt    $DC,$DE,$FD,$E2,$EC,$F4,$DE,$E7; 0xeea5 $AE95 DC DE FD E2 EC F4 DE E7  ;
.byt    $DD,$E5,$DE,$EC,$EC,$FD,$ED,$EB; 0xeead $AE9D DD E5 DE EC EC FD ED EB  ;
.byt    $DA,$E9,$CF,$FF                ; 0xeeb5 $AEA5 DA E9 CF FF              ;
LAEA9:                                                                          ;
.byt    $DD,$E8,$F4,$F2,$E8,$EE,$FD,$E1; 0xeeb9 $AEA9 DD E8 F4 F2 E8 EE FD E1  ;
.byt    $DA,$EF,$DE,$F4,$ED,$E1,$DE,$FD; 0xeec1 $AEB1 DA EF DE F4 ED E1 DE FD  ;
.byt    $D7,$F4,$E6,$DA,$E0,$E2,$DC,$FD; 0xeec9 $AEB9 D7 F4 E6 DA E0 E2 DC FD  ;
.byt    $DC,$E8,$E7,$ED,$DA,$E2,$E7,$DE; 0xeed1 $AEC1 DC E8 E7 ED DA E2 E7 DE  ;
.byt    $EB,$EC,$FF                    ; 0xeed9 $AEC9 EB EC FF                 ;
LAECC:                                                                          ;
.byt    $F2,$E8,$EE,$FD,$DD,$DE,$EC,$DE; 0xeedc $AECC F2 E8 EE FD DD DE EC DE  ;
.byt    $EB,$EF,$DE,$FD,$E6,$F2,$F4,$E1; 0xeee4 $AED4 EB EF DE FD E6 F2 F4 E1  ;
.byt    $DE,$E5,$E9,$CF,$FD,$DF,$E8,$E5; 0xeeec $AEDC DE E5 E9 CF FD DF E8 E5  ;
.byt    $E5,$E8,$F0,$F4,$E6,$DE,$CF,$FF; 0xeef4 $AEE4 E5 E8 F0 F4 E6 DE CF FF  ;
LAEEC:                                                                          ;
.byt    $ED,$E1,$DE,$EB,$DE,$F4,$E2,$EC; 0xeefc $AEEC ED E1 DE EB DE F4 E2 EC  ;
.byt    $FD,$DA,$F4,$EC,$DE,$DC,$EB,$DE; 0xef04 $AEF4 FD DA F4 EC DE DC EB DE  ;
.byt    $ED,$FD,$DA,$ED,$F4,$DE,$DD,$E0; 0xef0c $AEFC ED FD DA ED F4 DE DD E0  ;
.byt    $DE,$FD,$E8,$DF,$F4,$ED,$E8,$F0; 0xef14 $AF04 DE FD E8 DF F4 ED E8 F0  ;
.byt    $E7,$CF,$FF                    ; 0xef1c $AF0C E7 CF FF                 ;
LAF0F:                                                                          ;
.byt    $EB,$DE,$E6,$DE,$E6,$DB,$DE,$EB; 0xef1f $AF0F EB DE E6 DE E6 DB DE EB  ;
.byt    $FD,$ED,$E1,$DE,$F4,$E6,$DA,$E0; 0xef27 $AF17 FD ED E1 DE F4 E6 DA E0  ;
.byt    $E2,$DC,$FD,$F0,$E8,$EB,$DD,$CF; 0xef2f $AF1F E2 DC FD F0 E8 EB DD CF  ;
.byt    $FF                            ; 0xef37 $AF27 FF                       ;
LAF28:                                                                          ;
.byt    $E4,$DA,$EC,$EE,$ED,$E8,$CF,$FD; 0xef38 $AF28 E4 DA EC EE ED E8 CF FD  ;
.byt    $EC,$ED,$EB,$DA,$E7,$E0,$DE,$CF; 0xef40 $AF30 EC ED EB DA E7 E0 DE CF  ;
.byt    $CF,$CF,$FE,$E2,$ED,$F4,$E2,$EC; 0xef48 $AF38 CF CF FE E2 ED F4 E2 EC  ;
.byt    $FD,$DD,$DE,$EC,$DE,$EB,$ED,$DE; 0xef50 $AF40 FD DD DE EC DE EB ED DE  ;
.byt    $DD,$CF,$FF                    ; 0xef58 $AF48 DD CF FF                 ;
LAF4B:                                                                          ;
.byt    $ED,$E1,$DE,$F4,$ED,$E8,$F0,$E7; 0xef5b $AF4B ED E1 DE F4 ED E8 F0 E7  ;
.byt    $FD,$E2,$EC,$F4,$DD,$DE,$DA,$DD; 0xef63 $AF53 FD E2 EC F4 DD DE DA DD  ;
.byt    $CF,$FE,$E5,$E8,$E8,$E4,$F4,$DE; 0xef6b $AF5B CF FE E5 E8 E8 E4 F4 DE  ;
.byt    $DA,$EC,$ED,$FD,$E2,$E7,$F4,$F0; 0xef73 $AF63 DA EC ED FD E2 E7 F4 F0  ;
.byt    $E8,$E8,$DD,$EC,$CF,$FF        ; 0xef7b $AF6B E8 E8 DD EC CF FF        ;
LAF71:                                                                          ;
.byt    $E2,$F4,$DC,$DA,$E7,$F4,$E0,$E2; 0xef81 $AF71 E2 F4 DC DA E7 F4 E0 E2  ;
.byt    $EF,$DE,$FD,$F2,$E8,$EE,$F4,$E6; 0xef89 $AF79 EF DE FD F2 E8 EE F4 E6  ;
.byt    $E8,$EC,$ED,$FD,$E9,$E8,$F0,$DE; 0xef91 $AF81 E8 EC ED FD E9 E8 F0 DE  ;
.byt    $EB,$DF,$EE,$E5,$FD,$E6,$DA,$E0; 0xef99 $AF89 EB DF EE E5 FD E6 DA E0  ;
.byt    $E2,$DC,$CF,$FF                ; 0xefa1 $AF91 E2 DC CF FF              ;
LAF95:                                                                          ;
.byt    $F2,$E8,$EE,$F4,$DA,$EB,$DE,$FD; 0xefa5 $AF95 F2 E8 EE F4 DA EB DE FD  ;
.byt    $E9,$DE,$EB,$EC,$E2,$EC,$ED,$DE; 0xefad $AF9D E9 DE EB EC E2 EC ED DE  ;
.byt    $E7,$ED,$FD,$DF,$E2,$E7,$DD,$F4; 0xefb5 $AFA5 E7 ED FD DF E2 E7 DD F4  ;
.byt    $E1,$DE,$DA,$EB,$ED,$FD,$E8,$EF; 0xefbd $AFAD E1 DE DA EB ED FD E8 EF  ;
.byt    $DE,$EB,$F4,$E8,$DC,$DE,$DA,$E7; 0xefc5 $AFB5 DE EB F4 E8 DC DE DA E7  ;
.byt    $FF                            ; 0xefcd $AFBD FF                       ;
; ---------------------------------------------------------------------------- ;
bank3_Dialogs_Pointer_Table_Towns_in_West_Hyrule:                               ;
.word    bank3_Dialogs_Text_Table      ; 0xefce $AFBE 80 A3                    ;*007
.word    LA3A5                         ; 0xefd0 $AFC0 A5 A3                    ;
.word    LA3BE                         ; 0xefd2 $AFC2 BE A3                    ;
.word    LA3D2                         ; 0xefd4 $AFC4 D2 A3                    ;
.word    LA3FB                         ; 0xefd6 $AFC6 FB A3                    ;
.word    LA425                         ; 0xefd8 $AFC8 25 A4                    ;
.word    LA42C                         ; 0xefda $AFCA 2C A4                    ;
.word    LA440                         ; 0xefdc $AFCC 40 A4                    ;
.word    LA457                         ; 0xefde $AFCE 57 A4                    ;
.word    LA481                         ; 0xefe0 $AFD0 81 A4                    ;
.word    LA4A4                         ; 0xefe2 $AFD2 A4 A4                    ;
.word    LA4CD                         ; 0xefe4 $AFD4 CD A4                    ;
.word    LA4E1                         ; 0xefe6 $AFD6 E1 A4                    ;
.word    LA507                         ; 0xefe8 $AFD8 07 A5                    ;
.word    LA52B                         ; 0xefea $AFDA 2B A5                    ;
.word    LA553                         ; 0xefec $AFDC 53 A5                    ;
.word    LA57E                         ; 0xefee $AFDE 7E A5                    ;
.word    LA5A1                         ; 0xeff0 $AFE0 A1 A5                    ;
.word    LA5C8                         ; 0xeff2 $AFE2 C8 A5                    ;
.word    LA5EA                         ; 0xeff4 $AFE4 EA A5                    ;
.word    LA614                         ; 0xeff6 $AFE6 14 A6                    ;
.word    LA622                         ; 0xeff8 $AFE8 22 A6                    ;
.word    LA644                         ; 0xeffa $AFEA 44 A6                    ;
.word    LA656                         ; 0xeffc $AFEC 56 A6                    ;
.word    LA67A                         ; 0xeffe $AFEE 7A A6                    ;
.word    LA69C                         ; 0xf000 $AFF0 9C A6                    ;
.word    LA6A8                         ; 0xf002 $AFF2 A8 A6                    ;
.word    LA6D1                         ; 0xf004 $AFF4 D1 A6                    ;
.word    LA6F5                         ; 0xf006 $AFF6 F5 A6                    ;
.word    LA71D                         ; 0xf008 $AFF8 1D A7                    ;
.word    LA737                         ; 0xf00a $AFFA 37 A7                    ;
.word    LA753                         ; 0xf00c $AFFC 53 A7                    ;
.word    LA75C                         ; 0xf00e $AFFE 5C A7                    ;
.word    LA788                         ; 0xf010 $B000 88 A7                    ;
.word    LA7AF                         ; 0xf012 $B002 AF A7                    ;
.word    LA7D9                         ; 0xf014 $B004 D9 A7                    ;
.word    LA7FE                         ; 0xf016 $B006 FE A7                    ;
.word    LA823                         ; 0xf018 $B008 23 A8                    ;
.word    LA84D                         ; 0xf01a $B00A 4D A8                    ;
.word    LA878                         ; 0xf01c $B00C 78 A8                    ;
.word    LA8A2                         ; 0xf01e $B00E A2 A8                    ;
.word    LA8C8                         ; 0xf020 $B010 C8 A8                    ;
.word    LA8E0                         ; 0xf022 $B012 E0 A8                    ;
.word    LA907                         ; 0xf024 $B014 07 A9                    ;
.word    LA92E                         ; 0xf026 $B016 2E A9                    ;
.word    LA955                         ; 0xf028 $B018 55 A9                    ;
.word    LA979                         ; 0xf02a $B01A 79 A9                    ;
.word    LA99E                         ; 0xf02c $B01C 9E A9                    ;
.word    LA9C4                         ; 0xf02e $B01E C4 A9                    ;
.word    LA9F0                         ; 0xf030 $B020 F0 A9                    ;
.word    LA9F7                         ; 0xf032 $B022 F7 A9                    ;
.word    LAA20                         ; 0xf034 $B024 20 AA                    ;
bank3_Dialogs_Pointer_Table_Towns_in_East_Hyrule:                               ;
.word    LAA33                         ; 0xf036 $B026 33 AA                    ;
.word    LAA46                         ; 0xf038 $B028 46 AA                    ;
.word    LAA4F                         ; 0xf03a $B02A 4F AA                    ;
.word    LAA5A                         ; 0xf03c $B02C 5A AA                    ;
.word    LAA83                         ; 0xf03e $B02E 83 AA                    ;
.word    LAA93                         ; 0xf040 $B030 93 AA                    ;
.word    LAAA9                         ; 0xf042 $B032 A9 AA                    ;
.word    LAABF                         ; 0xf044 $B034 BF AA                    ;
.word    LAAD3                         ; 0xf046 $B036 D3 AA                    ;
.word    LAAFC                         ; 0xf048 $B038 FC AA                    ;
.word    LAB24                         ; 0xf04a $B03A 24 AB                    ;
.word    LAB39                         ; 0xf04c $B03C 39 AB                    ;
.word    LAB51                         ; 0xf04e $B03E 51 AB                    ;
.word    LAB7A                         ; 0xf050 $B040 7A AB                    ;
.word    LAB88                         ; 0xf052 $B042 88 AB                    ;
.word    LABAA                         ; 0xf054 $B044 AA AB                    ;
.word    LABD0                         ; 0xf056 $B046 D0 AB                    ;
.word    LABF5                         ; 0xf058 $B048 F5 AB                    ;
.word    LAC13                         ; 0xf05a $B04A 13 AC                    ;
.word    LAC3E                         ; 0xf05c $B04C 3E AC                    ;
.word    LAC60                         ; 0xf05e $B04E 60 AC                    ;
.word    LAC7E                         ; 0xf060 $B050 7E AC                    ;
.word    LACA4                         ; 0xf062 $B052 A4 AC                    ;
.word    LACCA                         ; 0xf064 $B054 CA AC                    ;
.word    LACE6                         ; 0xf066 $B056 E6 AC                    ;
.word    LAD01                         ; 0xf068 $B058 01 AD                    ;
.word    LAD27                         ; 0xf06a $B05A 27 AD                    ;
.word    LAD49                         ; 0xf06c $B05C 49 AD                    ;
.word    LAD72                         ; 0xf06e $B05E 72 AD                    ;
.word    LAD9A                         ; 0xf070 $B060 9A AD                    ;
.word    LADBF                         ; 0xf072 $B062 BF AD                    ;
.word    LADDF                         ; 0xf074 $B064 DF AD                    ;
.word    LADF6                         ; 0xf076 $B066 F6 AD                    ;
.word    LAE19                         ; 0xf078 $B068 19 AE                    ;
.word    LAE1F                         ; 0xf07a $B06A 1F AE                    ;
.word    LAE38                         ; 0xf07c $B06C 38 AE                    ;
.word    LAE5F                         ; 0xf07e $B06E 5F AE                    ;
.word    LAE85                         ; 0xf080 $B070 85 AE                    ;
.word    LAEA9                         ; 0xf082 $B072 A9 AE                    ;
.word    LAECC                         ; 0xf084 $B074 CC AE                    ;
.word    LAEEC                         ; 0xf086 $B076 EC AE                    ;
.word    LAF0F                         ; 0xf088 $B078 0F AF                    ;
.word    LAF28                         ; 0xf08a $B07A 28 AF                    ;
.word    LAF4B                         ; 0xf08c $B07C 4B AF                    ;
.word    LAF71                         ; 0xf08e $B07E 71 AF                    ;
.word    LAF95                         ; 0xf090 $B080 95 AF                    ;
; ---------------------------------------------------------------------------- ;
bank3_code20:                                                                   ;
    LDA      $0524                     ; 0xf092 $B082 AD 24 05                 ; Routine Counter
    CMP      #$0C                      ; 0xf095 $B085 C9 0C                    ;
    BEQ      LB0AE                     ; 0xf097 $B087 F0 25                    ;
    LDY      #$F0                      ; 0xf099 $B089 A0 F0                    ; Y = F0
LB08B:                                                                          ;
    NOP                                ; 0xf09b $B08B EA                       ;
    DEY                                ; 0xf09c $B08C 88                       ;
    BNE      LB08B                     ; 0xf09d $B08D D0 FC                    ; delay loop ?
LB08F:                                                                          ;
    BIT      $2002                     ; 0xf09f $B08F 2C 02 20                 ;
    BVC      LB08F                     ; 0xf0a2 $B092 50 FB                    ;
    LDA      $FF                       ; 0xf0a4 $B094 A5 FF                    ;; Sprite Bank ?
    ORA      $0746                     ; 0xf0a6 $B096 0D 46 07                 ;
    STA      $FF                       ; 0xf0a9 $B099 85 FF                    ;; Sprite Bank ?
    LDX      $FD                       ; 0xf0ab $B09B A6 FD                    ;
    LDY      #$10                      ; 0xf0ad $B09D A0 10                    ; Y = 10
LB09F:                                                                          ;
    DEY                                ; 0xf0af $B09F 88                       ;
    BNE      LB09F                     ; 0xf0b0 $B0A0 D0 FD                    ;
    STA      $2000                     ; 0xf0b2 $B0A2 8D 00 20                 ;
    STX      $2005                     ; 0xf0b5 $B0A5 8E 05 20                 ;
    STY      $2005                     ; 0xf0b8 $B0A8 8C 05 20                 ;
    LDA      $0524                     ; 0xf0bb $B0AB AD 24 05                 ;;menu control	(and) ; OVERWORLD: 	set to 1 to pause (will change to 2) , set to 3 to unpause (will change to 0); Routine Index
LB0AE:                                                                          ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0xf0be $B0AE 20 85 D3;
bank3_Pointer_table_for_Dialog_Routines:                                        ;
.word    bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2; 0xf0c1 $B0B1 07 B1;advance to next routine in this table;advance to next routine in this table
.word    bank3_Dialog_Routines_play_sound__R0; 0xf0c3 $B0B3 CB B0              ;play sound
.word    bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2_duplicate; 0xf0c5 $B0B5 21 B6;
.word    bank3_Dialog_Routines_save_palette_mappings_to_memory__R4; 0xf0c7 $B0B7 50 B3;save palette mappings to memory
.word    bank3_Dialog_Routines_load_tiles_to_draw_the_dialog_box_lines_and_more__R1; 0xf0c9 $B0B9 D2 B0;load tiles to draw the dialog box lines (and more)
.word    bank3_Dialog_Routines_Set_text_pointer_according_to_Townfolk_type__R5; 0xf0cb $B0BB 80 B4;Set text pointer according to Townfolk type (has the jmp $02)
.word    bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2_duplicate; 0xf0cd $B0BD 21 B6;
.word    LB6A2                         ; 0xf0cf $B0BF A2 B6                    ;
.word    bank3_Dialog_Routines_life_magic_restore; 0xf0d1 $B0C1 5B B7          ;life/magic restore
.word    bank3_Dialog_Routines_wait_for_B_button; 0xf0d3 $B0C3 A6 B7           ;wait for B button
.word    bank3_Dialog_Routines_save_palette_mappings_to_memory__R4; 0xf0d5 $B0C5 50 B3;
.word    bank3_Dialog_Routines_decrease_the_line_count_when_erasing_the_box__R3; 0xf0d7 $B0C7 83 B1;decrease the line count when erasing the box
.word    LB7B2                         ; 0xf0d9 $B0C9 B2 B7                    ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Routines_play_sound__R0:                                           ;
    LDA      #$08                      ; 0xf0db $B0CB A9 08                    ; 08 = Dialog Box Sound
    STA      $EE                       ; 0xf0dd $B0CD 85 EE                    ; Sound Effects Type 3
    JMP      bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2_duplicate; 0xf0df $B0CF 4C 21 B6; Advance to Next Routine
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Routines_load_tiles_to_draw_the_dialog_box_lines_and_more__R1:     ;
    LDA      $0525                     ; 0xf0e2 $B0D2 AD 25 05                 ; Routine Delay
    ASL                                ; 0xf0e5 $B0D5 0A                       ;
    TAY                                ; 0xf0e6 $B0D6 A8                       ;
    LDA      bank3_Pointer_table_for_rows_of_dialog_box,y; 0xf0e7 $B0D7 B9 F3 B3   ;
    STA      L0002                     ; 0xf0ea $B0DA 85 02                    ;
    LDA      bank3_Pointer_table_for_rows_of_dialog_box+$01,y; 0xf0ec $B0DC B9 F4 B3;
    STA      $03                       ; 0xf0ef $B0DF 85 03                    ;
    LDA      bank3_Pointer_table_for_rows_of_dialog_box+$01+$09,y; 0xf0f1 $B0E1 B9 FD B3;
    STA      $04                       ; 0xf0f4 $B0E4 85 04                    ;
    LDA      bank3_Pointer_table_for_rows_of_dialog_box+$01+$09+$01,y; 0xf0f6 $B0E6 B9 FE B3;
    STA      $05                       ; 0xf0f9 $B0E9 85 05                    ;
    LDY      #$0D                      ; 0xf0fb $B0EB A0 0D                    ; Y = 0D
LB0ED:                                                                          ;
    LDA      (L0002),y                 ; 0xf0fd $B0ED B1 02                    ;
    STA      $053E,y                   ; 0xf0ff $B0EF 99 3E 05                 ;;temp area used to copy from to generate the ppu macro for the spell menu 
    LDA      ($04),y                   ; 0xf102 $B0F2 B1 04                    ;
    STA      $054C,y                   ; 0xf104 $B0F4 99 4C 05                 ;
    DEY                                ; 0xf107 $B0F7 88                       ;
    BPL      LB0ED                     ; 0xf108 $B0F8 10 F3                    ;
    JSR      bank3_Palette_modification_routine; 0xf10a $B0FA 20 0B B1             ; Palette modification routine
    INC      $0525                     ; 0xf10d $B0FD EE 25 05                 ; Routine Delay
    LDA      $0525                     ; 0xf110 $B100 AD 25 05                 ;; Routine Delay
    CMP      #$05                      ; 0xf113 $B103 C9 05                    ;
    BCC      LB10A                     ; 0xf115 $B105 90 03                    ; if A < 05, return
bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2:                ;
    INC      $0524                     ; 0xf117 $B107 EE 24 05                 ; advance to next routine...
LB10A:                                                                          ;
    RTS                                ; 0xf11a $B10A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Palette_modification_routine:                                             ;
    JSR      bank3_draw_tiles_for_2_rows; 0xf11b $B10B 20 F2 B2                 ; draw tiles for 2 rows
LB10E:                                                                          ;
    JSR      LB15F                     ; 0xf11e $B10E 20 5F B1                 ;
;$02 = Routine Delay + 1                                                       ;
    AND      #$FE                      ; 0xf121 $B111 29 FE                    ;;Keep Bits:1111_1110
    ASL                                ; 0xf123 $B113 0A                       ;
    ASL                                ; 0xf124 $B114 0A                       ;
    ADC      #$C8                      ; 0xf125 $B115 69 C8                    ;
;A = $02 rounded to lower even * 4 + C8                                        ;
    JSR      LB304                     ; 0xf127 $B117 20 04 B3                 ;
;From here, X = $02 rounded to lower even * 2 + $04                            ;
    LDA      #$0F                      ; 0xf12a $B11A A9 0F                    ; A = 0F
    STA      $05                       ; 0xf12c $B11C 85 05                    ;
    JSR      bank3_check_if_Scrolling_Offset__bits_4_to_7__is_even; 0xf12e $B11E 20 17 B3; check if Scrolling Offset (bits 4-7) is even
    BEQ      LB12F                     ; 0xf131 $B121 F0 0C                    ;
;Scrolling Offset (bits 4-7) is Odd                                            ;
    LDA      $04                       ; 0xf133 $B123 A5 04                    ;
    BNE      LB13D                     ; 0xf135 $B125 D0 16                    ;
;$04 == 0 (first Palette Mapping block from left)                              ;
;Use Top-Left Corner Mask                                                      ;
    LDA      #$3F                      ; 0xf137 $B127 A9 3F                    ; A = 3F
    STA      $05                       ; 0xf139 $B129 85 05                    ;
    LDA      #$F3                      ; 0xf13b $B12B A9 F3                    ; A = F3
    BNE      LB13B                     ; 0xf13d $B12D D0 0C                    ;
;Scrolling Offset (bits 4-7) is Even                                           ;
LB12F:                                                                          ;
    LDA      $04                       ; 0xf13f $B12F A5 04                    ;
    CMP      #$03                      ; 0xf141 $B131 C9 03                    ;
    BNE      LB13D                     ; 0xf143 $B133 D0 08                    ;
;$04 == 03 (right end of box)                                                  ;
;Use Top-Right Corner Mask                                                     ;
    LDA      #$CF                      ; 0xf145 $B135 A9 CF                    ; A = CF
    STA      $05                       ; 0xf147 $B137 85 05                    ;
    LDA      #$FC                      ; 0xf149 $B139 A9 FC                    ; A = FC
LB13B:                                                                          ;
    STA      $06                       ; 0xf14b $B13B 85 06                    ;
;$04 > 0 and Scrolling Offset (bits 4-7) is Odd                                ;
LB13D:                                                                          ;
    LDA      L0002                     ; 0xf14d $B13D A5 02                    ;
    LSR                                ; 0xf14f $B13F 4A                       ;
    LDA      $05                       ; 0xf150 $B140 A5 05                    ;
    BCS      LB146                     ; 0xf152 $B142 B0 02                    ;
    LDA      $06                       ; 0xf154 $B144 A5 06                    ;
LB146:                                                                          ;
    AND      $0526,x                   ; 0xf156 $B146 3D 26 05                 ;
    STA      $0526,x                   ; 0xf159 $B149 9D 26 05                 ;
    JSR      LB335                     ; 0xf15c $B14C 20 35 B3                 ;
    BCC      LB10E                     ; 0xf15f $B14F 90 BD                    ;
;End PPU Macro                                                                 ;
bank3_End_PPU_Macro:                                                            ;
    LDA      #$FF                      ; 0xf161 $B151 A9 FF                    ; A = FF
    STA      L0363,y                   ; 0xf163 $B153 99 63 03                 ;
    STY      $0362                     ; 0xf166 $B156 8C 62 03                 ;; PPU Macro Offset
    LDA      #$01                      ; 0xf169 $B159 A9 01                    ; A = 01
    STA      $0725                     ; 0xf16b $B15B 8D 25 07                 ;; PPU Macro Selector	
    RTS                                ; 0xf16e $B15E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB15F:                                                                          ;
    LDA      $01                       ; 0xf16f $B15F A5 01                    ;
    CLC                                ; 0xf171 $B161 18                       ;
    ADC      #$78                      ; 0xf172 $B162 69 78                    ; Dialog Box Offset
    PHP                                ; 0xf174 $B164 08                       ;
    LSR                                ; 0xf175 $B165 4A                       ;
    LSR                                ; 0xf176 $B166 4A                       ;
    LSR                                ; 0xf177 $B167 4A                       ;
    LSR                                ; 0xf178 $B168 4A                       ;
    LSR                                ; 0xf179 $B169 4A                       ;
    STA      $03                       ; 0xf17a $B16A 85 03                    ;
    PLP                                ; 0xf17c $B16C 28                       ;
    LDA      L0000                     ; 0xf17d $B16D A5 00                    ;
    ADC      #$00                      ; 0xf17f $B16F 69 00                    ;
    AND      #$01                      ; 0xf181 $B171 29 01                    ; keep bits .... ...x
    ASL                                ; 0xf183 $B173 0A                       ;
    ASL                                ; 0xf184 $B174 0A                       ;
    ADC      #$23                      ; 0xf185 $B175 69 23                    ;
    STA      L0363,y                   ; 0xf187 $B177 99 63 03                 ;
    LDA      $0525                     ; 0xf18a $B17A AD 25 05                 ; Routine Delay
    CLC                                ; 0xf18d $B17D 18                       ;
    ADC      #$01                      ; 0xf18e $B17E 69 01                    ;
    STA      L0002                     ; 0xf190 $B180 85 02                    ;
    RTS                                ; 0xf192 $B182 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Routines_decrease_the_line_count_when_erasing_the_box__R3:         ;
    DEC      $0525                     ; 0xf193 $B183 CE 25 05                 ; Routine Delay
    BPL      bank3_Redraw_over_Dialog_Box_row; 0xf196 $B186 10 03                  ;
    JMP      bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2; 0xf198 $B188 4C 07 B1;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Redraw_over_Dialog_Box_row:                                               ;
    LDA      $072C                     ; 0xf19b $B18B AD 2C 07                 ; Scrolling Offset Low Byte
    CLC                                ; 0xf19e $B18E 18                       ;
    ADC      #$78                      ; 0xf19f $B18F 69 78                    ; Dialog Box Offset
    TAX                                ; 0xf1a1 $B191 AA                       ;
    LDA      $072A                     ; 0xf1a2 $B192 AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0xf1a5 $B195 69 00                    ;
    JSR      bank3_Set_RAM_address_according_to_screen_number; 0xf1a7 $B197 20 E5 B3; Set 0E-0F according to screen number
    TXA                                ; 0xf1aa $B19A 8A                       ;
    LSR                                ; 0xf1ab $B19B 4A                       ;
    LSR                                ; 0xf1ac $B19C 4A                       ;
    LSR                                ; 0xf1ad $B19D 4A                       ;
    LSR                                ; 0xf1ae $B19E 4A                       ;
    TAY                                ; 0xf1af $B19F A8                       ;
    LDA      $0525                     ; 0xf1b0 $B1A0 AD 25 05                 ; Routine Delay
    ASL                                ; 0xf1b3 $B1A3 0A                       ;
    ASL                                ; 0xf1b4 $B1A4 0A                       ;
    ASL                                ; 0xf1b5 $B1A5 0A                       ;
    ASL                                ; 0xf1b6 $B1A6 0A                       ;
    ADC      #$10                      ; 0xf1b7 $B1A7 69 10                    ;
    JSR      LB32A                     ; 0xf1b9 $B1A9 20 2A B3                 ; Advance 0E-0F pointer with the value of A
    LDX      #$00                      ; 0xf1bc $B1AC A2 00                    ; X = 00
LB1AE:                                                                          ;
    LDA      (L000E),y                 ; 0xf1be $B1AE B1 0E                    ;
    STA      $055A,x                   ; 0xf1c0 $B1B0 9D 5A 05                 ;
    INY                                ; 0xf1c3 $B1B3 C8                       ;
    TYA                                ; 0xf1c4 $B1B4 98                       ;
    AND      #$0F                      ; 0xf1c5 $B1B5 29 0F                    ; keep bits .... xxxx
    BNE      LB1C4                     ; 0xf1c7 $B1B7 D0 0B                    ;
;If Dialog Box overlaps on screen boundaries                                   ;
;Add D0 to 0E-0F and subtract 10 from Y                                        ;
    LDA      #$D0                      ; 0xf1c9 $B1B9 A9 D0                    ; A = D0 (add D0 to 0E-0F if across screens)
    CLC                                ; 0xf1cb $B1BB 18                       ;
    JSR      LB32A                     ; 0xf1cc $B1BC 20 2A B3                 ; Advance 0E-0F pointer with the value of A
    TYA                                ; 0xf1cf $B1BF 98                       ;
    SEC                                ; 0xf1d0 $B1C0 38                       ;
    SBC      #$10                      ; 0xf1d1 $B1C1 E9 10                    ;
    TAY                                ; 0xf1d3 $B1C3 A8                       ;
LB1C4:                                                                          ;
    INX                                ; 0xf1d4 $B1C4 E8                       ;
    CPX      #$07                      ; 0xf1d5 $B1C5 E0 07                    ; number of TSAs to draw per row
    BCC      LB1AE                     ; 0xf1d7 $B1C7 90 E5                    ;
    LDA      #$00                      ; 0xf1d9 $B1C9 A9 00                    ; A = 00
    STA      L0000                     ; 0xf1db $B1CB 85 00                    ;
    STA      $01                       ; 0xf1dd $B1CD 85 01                    ;
LB1CF:                                                                          ;
    LDX      L0000                     ; 0xf1df $B1CF A6 00                    ;
    LDA      $055A,x                   ; 0xf1e1 $B1D1 BD 5A 05                 ;
    AND      #$C0                      ; 0xf1e4 $B1D4 29 C0                    ; keep bits xx.. ....
    ASL                                ; 0xf1e6 $B1D6 0A                       ;
    ROL                                ; 0xf1e7 $B1D7 2A                       ;
    ROL                                ; 0xf1e8 $B1D8 2A                       ;
    ASL                                ; 0xf1e9 $B1D9 0A                       ;
    TAY                                ; 0xf1ea $B1DA A8                       ;
    JSR      bank7_Set_0E_0F_pointer_according_to_Object_Group; 0xf1eb $B1DB 20 E4 DF; Set 0E-0F pointer according to Object Group
;Store the 4 Tile Codes according to TSA codes in 53E,X and 54C,X              ;
    LDA      $055A,x                   ; 0xf1ee $B1DE BD 5A 05                 ;
    ASL                                ; 0xf1f1 $B1E1 0A                       ;
    ASL                                ; 0xf1f2 $B1E2 0A                       ;
    TAY                                ; 0xf1f3 $B1E3 A8                       ;
    LDX      $01                       ; 0xf1f4 $B1E4 A6 01                    ;
    JSR      LC258                     ; 0xf1f6 $B1E6 20 58 C2                 ;
    INY                                ; 0xf1f9 $B1E9 C8                       ;
    JSR      LC258                     ; 0xf1fa $B1EA 20 58 C2                 ;
    STX      $01                       ; 0xf1fd $B1ED 86 01                    ;
    INC      L0000                     ; 0xf1ff $B1EF E6 00                    ;
    CPX      #$0E                      ; 0xf201 $B1F1 E0 0E                    ; row width (in 8x8 tiles)
    BCC      LB1CF                     ; 0xf203 $B1F3 90 DA                    ;
    JSR      bank3_draw_tiles_for_2_rows; 0xf205 $B1F5 20 F2 B2                 ;
LB1F8:                                                                          ;
    JSR      LB15F                     ; 0xf208 $B1F8 20 5F B1                 ;
    LSR                                ; 0xf20b $B1FB 4A                       ;
    CLC                                ; 0xf20c $B1FC 18                       ;
    ADC      #$01                      ; 0xf20d $B1FD 69 01                    ;
    ASL                                ; 0xf20f $B1FF 0A                       ;
    ASL                                ; 0xf210 $B200 0A                       ;
    ASL                                ; 0xf211 $B201 0A                       ;
    ADC      #$C0                      ; 0xf212 $B202 69 C0                    ;
    JSR      LB304                     ; 0xf214 $B204 20 04 B3                 ;
    JSR      bank3_check_if_Scrolling_Offset__bits_4_to_7__is_even; 0xf217 $B207 20 17 B3; redundant routine call ?
    LDA      #$F0                      ; 0xf21a $B20A A9 F0                    ; A = F0
    STA      $06                       ; 0xf21c $B20C 85 06                    ;
    LDA      $072C                     ; 0xf21e $B20E AD 2C 07                 ;; Scrolling Offset Low Byte
    CLC                                ; 0xf221 $B211 18                       ;
    ADC      #$78                      ; 0xf222 $B212 69 78                    ; Dialog Box Offset
    AND      #$F0                      ; 0xf224 $B214 29 F0                    ; keep bits xxxx ....
    STA      $07                       ; 0xf226 $B216 85 07                    ;
    AND      #$E0                      ; 0xf228 $B218 29 E0                    ; keep bits xxx. ....
    CMP      $07                       ; 0xf22a $B21A C5 07                    ;
    BEQ      LB226                     ; 0xf22c $B21C F0 08                    ;
    LDA      $04                       ; 0xf22e $B21E A5 04                    ;
    BNE      LB230                     ; 0xf230 $B220 D0 0E                    ;
    LDA      #$F3                      ; 0xf232 $B222 A9 F3                    ; A = F3
    BNE      LB22E                     ; 0xf234 $B224 D0 08                    ;
LB226:                                                                          ;
    LDA      $04                       ; 0xf236 $B226 A5 04                    ;
    CMP      #$03                      ; 0xf238 $B228 C9 03                    ;
    BNE      LB230                     ; 0xf23a $B22A D0 04                    ;
    LDA      #$FC                      ; 0xf23c $B22C A9 FC                    ; A = FC
LB22E:                                                                          ;
    STA      $06                       ; 0xf23e $B22E 85 06                    ;
LB230:                                                                          ;
    CPX      #$04                      ; 0xf240 $B230 E0 04                    ;
    BCC      LB23B                     ; 0xf242 $B232 90 07                    ;
    LDA      L0002                     ; 0xf244 $B234 A5 02                    ;
    LSR                                ; 0xf246 $B236 4A                       ;
    LDA      $06                       ; 0xf247 $B237 A5 06                    ;
    BCS      LB23D                     ; 0xf249 $B239 B0 02                    ;
LB23B:                                                                          ;
    LDA      #$FF                      ; 0xf24b $B23B A9 FF                    ; A = FF
LB23D:                                                                          ;
    AND      $0526,x                   ; 0xf24d $B23D 3D 26 05                 ;
    JSR      LB335                     ; 0xf250 $B240 20 35 B3                 ;
    BCS      LB248                     ; 0xf253 $B243 B0 03                    ;
    JMP      LB1F8                     ; 0xf255 $B245 4C F8 B1                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB248:                                                                          ;
    JMP      bank3_End_PPU_Macro       ; 0xf258 $B248 4C 51 B1                 ; End PPU Macro
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB24B:                                                                          ;
    LDY      $0362                     ; 0xf25b $B24B AC 62 03                 ; PPU Macro Offset
    LDA      #$C0                      ; 0xf25e $B24E A9 C0                    ; A = C0
    STA      $07                       ; 0xf260 $B250 85 07                    ;
    LDA      #$02                      ; 0xf262 $B252 A9 02                    ; A = 02 (loop 2 times)
    STA      $08                       ; 0xf264 $B254 85 08                    ;
    LDX      #$00                      ; 0xf266 $B256 A2 00                    ; X = 00
LB258:                                                                          ;
    LDA      $072C                     ; 0xf268 $B258 AD 2C 07                 ; Scrolling Offset Low Byte
    CLC                                ; 0xf26b $B25B 18                       ;
    ADC      #$78                      ; 0xf26c $B25C 69 78                    ; Dialog Box Offset
    AND      #$F0                      ; 0xf26e $B25E 29 F0                    ; keep bits xxxx .... (round to next tile)
    STA      $01                       ; 0xf270 $B260 85 01                    ;
    LDA      $072A                     ; 0xf272 $B262 AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0xf275 $B265 69 00                    ;
    STA      L0000                     ; 0xf277 $B267 85 00                    ;
    LDA      $01                       ; 0xf279 $B269 A5 01                    ;
    EOR      #$FF                      ; 0xf27b $B26B 49 FF                    ; flip all bits
    CLC                                ; 0xf27d $B26D 18                       ;
    ADC      #$01                      ; 0xf27e $B26E 69 01                    ;
    LSR                                ; 0xf280 $B270 4A                       ;
    LSR                                ; 0xf281 $B271 4A                       ;
    LSR                                ; 0xf282 $B272 4A                       ;
    LSR                                ; 0xf283 $B273 4A                       ;
    BEQ      LB27A                     ; 0xf284 $B274 F0 04                    ;
    CMP      #$07                      ; 0xf286 $B276 C9 07                    ;
    BCC      LB27C                     ; 0xf288 $B278 90 02                    ;
LB27A:                                                                          ;
    LDA      #$07                      ; 0xf28a $B27A A9 07                    ; A = 07
LB27C:                                                                          ;
    STA      $06                       ; 0xf28c $B27C 85 06                    ;
    LDA      #$07                      ; 0xf28e $B27E A9 07                    ; A = 07
    STA      $03                       ; 0xf290 $B280 85 03                    ;
LB282:                                                                          ;
    LDA      $0525                     ; 0xf292 $B282 AD 25 05                 ; Routine Delay
    ASL                                ; 0xf295 $B285 0A                       ;
    ASL                                ; 0xf296 $B286 0A                       ;
    ASL                                ; 0xf297 $B287 0A                       ;
    ASL                                ; 0xf298 $B288 0A                       ;
    ASL                                ; 0xf299 $B289 0A                       ;
    ROL      $04                       ; 0xf29a $B28A 26 04                    ;
    ASL                                ; 0xf29c $B28C 0A                       ;
    ROL      $04                       ; 0xf29d $B28D 26 04                    ;
    CLC                                ; 0xf29f $B28F 18                       ;
    ADC      $07                       ; 0xf2a0 $B290 65 07                    ;
    STA      $05                       ; 0xf2a2 $B292 85 05                    ;
    LDA      $04                       ; 0xf2a4 $B294 A5 04                    ;
    ADC      #$00                      ; 0xf2a6 $B296 69 00                    ;
    AND      #$03                      ; 0xf2a8 $B298 29 03                    ; keep bits .... ..xx
    STA      $04                       ; 0xf2aa $B29A 85 04                    ;
    LDA      $01                       ; 0xf2ac $B29C A5 01                    ;
    LSR                                ; 0xf2ae $B29E 4A                       ;
    LSR                                ; 0xf2af $B29F 4A                       ;
    LSR                                ; 0xf2b0 $B2A0 4A                       ;
    ADC      $05                       ; 0xf2b1 $B2A1 65 05                    ;
    STA      $0364,y                   ; 0xf2b3 $B2A3 99 64 03                 ;
    LDA      L0000                     ; 0xf2b6 $B2A6 A5 00                    ;
    AND      #$01                      ; 0xf2b8 $B2A8 29 01                    ; keep bits .... ...x
    ASL                                ; 0xf2ba $B2AA 0A                       ;
    ASL                                ; 0xf2bb $B2AB 0A                       ;
    ADC      #$20                      ; 0xf2bc $B2AC 69 20                    ;
    ADC      $04                       ; 0xf2be $B2AE 65 04                    ;
    STA      L0363,y                   ; 0xf2c0 $B2B0 99 63 03                 ;
    LDA      $06                       ; 0xf2c3 $B2B3 A5 06                    ;
    ASL                                ; 0xf2c5 $B2B5 0A                       ;
    STA      $0365,y                   ; 0xf2c6 $B2B6 99 65 03                 ;
    INY                                ; 0xf2c9 $B2B9 C8                       ;
    INY                                ; 0xf2ca $B2BA C8                       ;
    INY                                ; 0xf2cb $B2BB C8                       ;
LB2BC:                                                                          ;
    LDA      $053E,x                   ; 0xf2cc $B2BC BD 3E 05                 ;; Tiles for Dialog Box Rows
    STA      L0363,y                   ; 0xf2cf $B2BF 99 63 03                 ;
    INX                                ; 0xf2d2 $B2C2 E8                       ;
    LDA      $053E,x                   ; 0xf2d3 $B2C3 BD 3E 05                 ;; Tiles for Dialog Box Rows
    STA      $0364,y                   ; 0xf2d6 $B2C6 99 64 03                 ;
    INX                                ; 0xf2d9 $B2C9 E8                       ;
    LDA      $01                       ; 0xf2da $B2CA A5 01                    ;
    CLC                                ; 0xf2dc $B2CC 18                       ;
    ADC      #$10                      ; 0xf2dd $B2CD 69 10                    ;
    STA      $01                       ; 0xf2df $B2CF 85 01                    ;
    BCC      LB2D5                     ; 0xf2e1 $B2D1 90 02                    ;
    INC      L0000                     ; 0xf2e3 $B2D3 E6 00                    ;
LB2D5:                                                                          ;
    INY                                ; 0xf2e5 $B2D5 C8                       ;
    INY                                ; 0xf2e6 $B2D6 C8                       ;
    DEC      $03                       ; 0xf2e7 $B2D7 C6 03                    ;
    BEQ      LB2E6                     ; 0xf2e9 $B2D9 F0 0B                    ;
    DEC      $06                       ; 0xf2eb $B2DB C6 06                    ;
    BNE      LB2BC                     ; 0xf2ed $B2DD D0 DD                    ;
    LDA      $03                       ; 0xf2ef $B2DF A5 03                    ;
    STA      $06                       ; 0xf2f1 $B2E1 85 06                    ;
    JMP      LB282                     ; 0xf2f3 $B2E3 4C 82 B2                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB2E6:                                                                          ;
    LDA      #$E0                      ; 0xf2f6 $B2E6 A9 E0                    ; A = E0
    STA      $07                       ; 0xf2f8 $B2E8 85 07                    ;
    DEC      $08                       ; 0xf2fa $B2EA C6 08                    ;
    BEQ      LB2F1                     ; 0xf2fc $B2EC F0 03                    ;
    JMP      LB258                     ; 0xf2fe $B2EE 4C 58 B2                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB2F1:                                                                          ;
    RTS                                ; 0xf301 $B2F1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_draw_tiles_for_2_rows:                                                    ;
    JSR      LB24B                     ; 0xf302 $B2F2 20 4B B2                 ;
    LDA      $072A                     ; 0xf305 $B2F5 AD 2A 07                 ; Scrolling Offset High Byte
    STA      L0000                     ; 0xf308 $B2F8 85 00                    ;
    LDA      $072C                     ; 0xf30a $B2FA AD 2C 07                 ; Scrolling Offset Low Byte
    STA      $01                       ; 0xf30d $B2FD 85 01                    ;
    LDA      #$00                      ; 0xf30f $B2FF A9 00                    ; A = 00
    STA      $04                       ; 0xf311 $B301 85 04                    ;
    RTS                                ; 0xf313 $B303 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB304:                                                                          ;
    ADC      $03                       ; 0xf314 $B304 65 03                    ;
    STA      $0364,y                   ; 0xf316 $B306 99 64 03                 ;
    LDA      #$01                      ; 0xf319 $B309 A9 01                    ; A = 01
    STA      $0365,y                   ; 0xf31b $B30B 99 65 03                 ;
    LDA      L0002                     ; 0xf31e $B30E A5 02                    ;
    AND      #$FE                      ; 0xf320 $B310 29 FE                    ; keep bits xxxx xxx.
    ASL                                ; 0xf322 $B312 0A                       ;
    ADC      $04                       ; 0xf323 $B313 65 04                    ;
    TAX                                ; 0xf325 $B315 AA                       ;
    RTS                                ; 0xf326 $B316 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_check_if_Scrolling_Offset__bits_4_to_7__is_even:                          ;
    LDA      #$F0                      ; 0xf327 $B317 A9 F0                    ; A = F0
    STA      $06                       ; 0xf329 $B319 85 06                    ;
    LDA      $072C                     ; 0xf32b $B31B AD 2C 07                 ; Scrolling Offset Low Byte
    CLC                                ; 0xf32e $B31E 18                       ;
    ADC      #$78                      ; 0xf32f $B31F 69 78                    ; Dialog Box Offset
    AND      #$F0                      ; 0xf331 $B321 29 F0                    ; keep bits xxxx ....
    STA      $07                       ; 0xf333 $B323 85 07                    ;
    AND      #$E0                      ; 0xf335 $B325 29 E0                    ; keep bits xxx. ....
    CMP      $07                       ; 0xf337 $B327 C5 07                    ;
    RTS                                ; 0xf339 $B329 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB32A:                                                                          ;
    ADC      L000E                     ; 0xf33a $B32A 65 0E                    ;
    STA      L000E                     ; 0xf33c $B32C 85 0E                    ;
    LDA      $0F                       ; 0xf33e $B32E A5 0F                    ;
    ADC      #$00                      ; 0xf340 $B330 69 00                    ;
    STA      $0F                       ; 0xf342 $B332 85 0F                    ;
    RTS                                ; 0xf344 $B334 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB335:                                                                          ;
    STA      $0366,y                   ; 0xf345 $B335 99 66 03                 ;
    INY                                ; 0xf348 $B338 C8                       ;
    INY                                ; 0xf349 $B339 C8                       ;
    INY                                ; 0xf34a $B33A C8                       ;
    INY                                ; 0xf34b $B33B C8                       ;
    LDA      $01                       ; 0xf34c $B33C A5 01                    ;
    CLC                                ; 0xf34e $B33E 18                       ;
    ADC      #$20                      ; 0xf34f $B33F 69 20                    ;
    STA      $01                       ; 0xf351 $B341 85 01                    ;
    LDA      L0000                     ; 0xf353 $B343 A5 00                    ;
    ADC      #$00                      ; 0xf355 $B345 69 00                    ;
    STA      L0000                     ; 0xf357 $B347 85 00                    ;
    INC      $04                       ; 0xf359 $B349 E6 04                    ;
    LDA      $04                       ; 0xf35b $B34B A5 04                    ;
    CMP      #$04                      ; 0xf35d $B34D C9 04                    ;
    RTS                                ; 0xf35f $B34F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Routines_save_palette_mappings_to_memory__R4:                      ;
;Save Palette Mappings to memory, to restore after box is erased               ;
    LDA      $072C                     ; 0xf360 $B350 AD 2C 07                 ; Scrolling Offset Low Byte
    CLC                                ; 0xf363 $B353 18                       ;
    ADC      #$78                      ; 0xf364 $B354 69 78                    ; Dialog Box Offset
    TAX                                ; 0xf366 $B356 AA                       ;
    LDA      $072A                     ; 0xf367 $B357 AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0xf36a $B35A 69 00                    ;
    JSR      bank3_Set_RAM_address_according_to_screen_number; 0xf36c $B35C 20 E5 B3; Set RAM address offset using screen number
    TXA                                ; 0xf36f $B35F 8A                       ;
    AND      #$E0                      ; 0xf370 $B360 29 E0                    ; keep bits xxx. .... (round to nearest 20)
    LSR                                ; 0xf372 $B362 4A                       ;
    LSR                                ; 0xf373 $B363 4A                       ;
    LSR                                ; 0xf374 $B364 4A                       ;
    LSR                                ; 0xf375 $B365 4A                       ;
    TAY                                ; 0xf376 $B366 A8                       ;
    LDX      #$00                      ; 0xf377 $B367 A2 00                    ; X = 00
    LDA      #$04                      ; 0xf379 $B369 A9 04                    ; A = 04
    STA      L0000                     ; 0xf37b $B36B 85 00                    ;
LB36D:                                                                          ;
    LDA      #$00                      ; 0xf37d $B36D A9 00                    ; A = 00
    STA      $01                       ; 0xf37f $B36F 85 01                    ;
LB371:                                                                          ;
    LDA      #$0C                      ; 0xf381 $B371 A9 0C                    ; A = 0C
    STA      L0002                     ; 0xf383 $B373 85 02                    ;
LB375:                                                                          ;
    JSR      LB3B9                     ; 0xf385 $B375 20 B9 B3                 ;
    TYA                                ; 0xf388 $B378 98                       ;
    CLC                                ; 0xf389 $B379 18                       ;
    ADC      #$10                      ; 0xf38a $B37A 69 10                    ;
    TAY                                ; 0xf38c $B37C A8                       ;
    ASL                                ; 0xf38d $B37D 0A                       ;
    ASL                                ; 0xf38e $B37E 0A                       ;
    ASL                                ; 0xf38f $B37F 0A                       ;
    ASL                                ; 0xf390 $B380 0A                       ;
    BCS      LB387                     ; 0xf391 $B381 B0 04                    ;
    INX                                ; 0xf393 $B383 E8                       ;
    INX                                ; 0xf394 $B384 E8                       ;
    INX                                ; 0xf395 $B385 E8                       ;
    INX                                ; 0xf396 $B386 E8                       ;
LB387:                                                                          ;
    DEC      L0002                     ; 0xf397 $B387 C6 02                    ;
    BNE      LB375                     ; 0xf399 $B389 D0 EA                    ;
    TYA                                ; 0xf39b $B38B 98                       ;
    SEC                                ; 0xf39c $B38C 38                       ;
    SBC      #$BF                      ; 0xf39d $B38D E9 BF                    ;
    TAY                                ; 0xf39f $B38F A8                       ;
    AND      #$0F                      ; 0xf3a0 $B390 29 0F                    ; keep bits .... xxxx
    BNE      LB3A4                     ; 0xf3a2 $B392 D0 10                    ;
    LDA      L000E                     ; 0xf3a4 $B394 A5 0E                    ;
    CLC                                ; 0xf3a6 $B396 18                       ;
    ADC      #$D0                      ; 0xf3a7 $B397 69 D0                    ;
    STA      L000E                     ; 0xf3a9 $B399 85 0E                    ;
    BCC      LB39F                     ; 0xf3ab $B39B 90 02                    ;
    INC      $0F                       ; 0xf3ad $B39D E6 0F                    ;
LB39F:                                                                          ;
    TYA                                ; 0xf3af $B39F 98                       ;
    SEC                                ; 0xf3b0 $B3A0 38                       ;
    SBC      #$10                      ; 0xf3b1 $B3A1 E9 10                    ;
    TAY                                ; 0xf3b3 $B3A3 A8                       ;
LB3A4:                                                                          ;
    TXA                                ; 0xf3b4 $B3A4 8A                       ;
    SEC                                ; 0xf3b5 $B3A5 38                       ;
    SBC      #$18                      ; 0xf3b6 $B3A6 E9 18                    ;
    TAX                                ; 0xf3b8 $B3A8 AA                       ;
    LDA      $01                       ; 0xf3b9 $B3A9 A5 01                    ;
    EOR      #$80                      ; 0xf3bb $B3AB 49 80                    ; flip bits x... ....
    STA      $01                       ; 0xf3bd $B3AD 85 01                    ;
    BNE      LB371                     ; 0xf3bf $B3AF D0 C0                    ;
    INX                                ; 0xf3c1 $B3B1 E8                       ;
    DEC      L0000                     ; 0xf3c2 $B3B2 C6 00                    ;
    BNE      LB36D                     ; 0xf3c4 $B3B4 D0 B7                    ;
    JMP      bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2; 0xf3c6 $B3B6 4C 07 B1;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB3B9:                                                                          ;
    TYA                                ; 0xf3c9 $B3B9 98                       ;
    ASL                                ; 0xf3ca $B3BA 0A                       ;
    ASL                                ; 0xf3cb $B3BB 0A                       ;
    ASL                                ; 0xf3cc $B3BC 0A                       ;
    ASL                                ; 0xf3cd $B3BD 0A                       ;
    LDA      (L000E),y                 ; 0xf3ce $B3BE B1 0E                    ;
    AND      #$C0                      ; 0xf3d0 $B3C0 29 C0                    ; keep bits xx.. ....
    BCS      LB3D0                     ; 0xf3d2 $B3C2 B0 0C                    ;
    ASL                                ; 0xf3d4 $B3C4 0A                       ;
    ROL                                ; 0xf3d5 $B3C5 2A                       ;
    ROL                                ; 0xf3d6 $B3C6 2A                       ;
    BIT      $01                       ; 0xf3d7 $B3C7 24 01                    ;
    BPL      LB3D9                     ; 0xf3d9 $B3C9 10 0E                    ;
    ASL                                ; 0xf3db $B3CB 0A                       ;
    ASL                                ; 0xf3dc $B3CC 0A                       ;
    JMP      LB3D6                     ; 0xf3dd $B3CD 4C D6 B3                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB3D0:                                                                          ;
    BIT      $01                       ; 0xf3e0 $B3D0 24 01                    ;
    BMI      LB3D6                     ; 0xf3e2 $B3D2 30 02                    ;
    LSR                                ; 0xf3e4 $B3D4 4A                       ;
    LSR                                ; 0xf3e5 $B3D5 4A                       ;
LB3D6:                                                                          ;
    ORA      $0526,x                   ; 0xf3e6 $B3D6 1D 26 05                 ;
LB3D9:                                                                          ;
    STA      $0526,x                   ; 0xf3e9 $B3D9 9D 26 05                 ;
    RTS                                ; 0xf3ec $B3DC 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Pointer_table_for_location_of_the_4_screens_in_RAM_:                      ;
.word    LD000                         ; 0xf3ed $B3DD 00 D0                    ;
.word    L70A0                         ; 0xf3ef $B3DF A0 70                    ;
.word    L6060                         ; 0xf3f1 $B3E1 60 60                    ;
.word    L6261                         ; 0xf3f3 $B3E3 61 62                    ;
; ---------------------------------------------------------------------------- ;
bank3_Set_RAM_address_according_to_screen_number:                               ;
    AND      #$03                      ; 0xf3f5 $B3E5 29 03                    ; keep bits .... ..xx
    TAY                                ; 0xf3f7 $B3E7 A8                       ;
    LDA      bank3_Pointer_table_for_location_of_the_4_screens_in_RAM_,y; 0xf3f8 $B3E8 B9 DD B3; refer to table at $F3DD
    STA      L000E                     ; 0xf3fb $B3EB 85 0E                    ;
    LDA      bank3_Pointer_table_for_location_of_the_4_screens_in_RAM_+$04,y; 0xf3fd $B3ED B9 E1 B3; refer to table at $F3E1
    STA      $0F                       ; 0xf400 $B3F0 85 0F                    ;
    RTS                                ; 0xf402 $B3F2 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Pointer_table_for_rows_of_dialog_box:                                     ;
.word    bank3_Tables_for_dialog_box_rows_tile_mappings; 0xf403 $B3F3 07 B4    ;
.word    LB415                         ; 0xf405 $B3F5 15 B4                    ;
.word    LB415                         ; 0xf407 $B3F7 15 B4                    ;
.word    LB415                         ; 0xf409 $B3F9 15 B4                    ;
.word    LB415                         ; 0xf40b $B3FB 15 B4                    ;
.word    LB415                         ; 0xf40d $B3FD 15 B4                    ;
.word    LB415                         ; 0xf40f $B3FF 15 B4                    ;
.word    LB415                         ; 0xf411 $B401 15 B4                    ;
.word    LB415                         ; 0xf413 $B403 15 B4                    ;
.word    bank3_Tables_for_dialog_box_rows_tile_mappings; 0xf415 $B405 07 B4    ;
; ---------------------------------------------------------------------------- ;
bank3_Tables_for_dialog_box_rows_tile_mappings:                                 ;
.byt    $CA,$CB,$CB,$CB,$CB,$CB,$CB,$CB; 0xf417 $B407 CA CB CB CB CB CB CB CB  ;
.byt    $CB,$CB,$CB,$CB,$CB,$CA        ; 0xf41f $B40F CB CB CB CB CB CA        ;
LB415:                                                                          ;
.byt    $CC,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0xf425 $B415 CC F4 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$F4,$F4,$F4                ; 0xf42d $B41D F4 F4 F4 F4              ;
LB421:                                                                          ;
.byt    $F4                            ; 0xf431 $B421 F4                       ;
LB422:                                                                          ;
.byt    $CC                            ; 0xf432 $B422 CC                       ;
; ---------------------------------------------------------------------------- ;
bank3_Pointer_table_for_Dialogs_Pointer_Table:                                  ;
.word    bank3_Dialogs_Pointer_Table_Towns_in_West_Hyrule; 0xf433 $B423 BE AF  ;
.word    bank3_Dialogs_Pointer_Table_Towns_in_East_Hyrule; 0xf435 $B425 26 B0  ;
; ---------------------------------------------------------------------------- ;
bank3_table12:                                                                  ;
.byt    $80,$40,$20,$10                ; 0xf437 $B427 80 40 20 10              ;
bank3_Related_to_Collectable_Objects_conditions:                                ;
.byt    $08,$04,$02                    ; 0xf43b $B42B 08 04 02                 ;
LB42E:                                                                          ;
.byt    $00,$40,$00,$00,$00,$00,$00,$00; 0xf43e $B42E 00 40 00 00 00 00 00 00  ;
.byt    $01,$00,$01,$00,$00,$00,$00,$00; 0xf446 $B436 01 00 01 00 00 00 00 00  ;
.byt    $00,$00,$00,$40,$00,$20,$08,$00; 0xf44e $B43E 00 00 00 40 00 20 08 00  ;
.byt    $00,$10,$00,$00,$01,$00,$00,$00; 0xf456 $B446 00 10 00 00 01 00 00 00  ;
; ---------------------------------------------------------------------------- ;
bank3_Pointer_table_for_Dialog_Conditions:                                      ;
.word    bank3_Dialog_Conditions_Ache_Bit_talker; 0xf45e $B44E B9 B5           ;0	Ache (talker)
.word    bank3_Dialog_Conditions_Ache_Bit_talker; 0xf460 $B450 B9 B5           ;1	Bit (talker)
.word    bank3_Dialog_Conditions_default; 0xf462 $B452 C7 B5                   ;2	Invisible Dialog ("Welcome" sign)
.word    bank3_Dialog_Conditions_Blue_Old_Woman__Immobile___River_Man; 0xf464 $B454 A3 B4;3	Blue Old Woman - Immobile / River Man
.word    bank3_Dialog_Conditions_Blue_Lumberjack__Immobile; 0xf466 $B456 EE B4 ;4	Blue Lumberjack - Immobile
.word    bank3_Dialog_Conditions_Wise_Man; 0xf468 $B458 18 B5                  ;5	Wise Man
.word    bank3_Dialog_Conditions_Immobile; 0xf46a $B45A 4E B5                  ;6	Little Kid - Immobile
.word    bank3_Dialog_Conditions_Immobile; 0xf46c $B45C 4E B5                  ;7	Blue Lady with Bowl - Immobile
.word    bank3_Dialog_Conditions_Immobile; 0xf46e $B45E 4E B5                  ;8	Red Old Woman - Immobile
.word    bank3_Dialog_Conditions_Idle  ; 0xf470 $B460 60 B5                    ;9	Red Lumberjack - Idle
.word    bank3_Dialog_Conditions_Idle  ; 0xf472 $B462 60 B5                    ;A	Blue Lady with Bowl - Idle
.word    bank3_Dialog_Conditions_Idle  ; 0xf474 $B464 60 B5                    ;B	Blue Old Woman - Idle
.word    bank3_Dialog_Conditions_Idle  ; 0xf476 $B466 60 B5                    ;C	Red Lady - Idle
.word    bank3_Dialog_Conditions_HealerLady_MagicLady; 0xf478 $B468 7D B5      ;D	Red Lady - Idle (healing lady)
.word    bank3_Dialog_Conditions_HealerLady_MagicLady; 0xf47a $B46A 7D B5      ;E	Orange Old Woman - Idle (magic woman)
.word    bank3_Dialog_Conditions_default; 0xf47c $B46C C7 B5                   ;F	Blue Lumberjack - Walking (default random Townfolk)
.word    bank3_Dialog_Conditions_default; 0xf47e $B46E C7 B5                   ;10	Red Lady with Bowl - Walking (default random Townfolk)
.word    bank3_Dialog_Conditions_default; 0xf480 $B470 C7 B5                   ;11	Red Old Woman - Walking (default random Townfolk)
.word    bank3_Dialog_Conditions_default; 0xf482 $B472 C7 B5                   ;12	Blue Lady - Walking (default random Townfolk)
.word    bank3_Dialog_Conditions_Walking; 0xf484 $B474 92 B5                   ;13	Blue Lumberjack - Walking
.word    bank3_Dialog_Conditions_Walking; 0xf486 $B476 92 B5                   ;14	Red Young Lad - Walking
.word    bank3_Dialog_Conditions_Walking; 0xf488 $B478 92 B5                   ;15	Red Young Lad - Walking
.word    bank3_Dialog_Conditions_Walking; 0xf48a $B47A 92 B5                   ;16	Blue Lady - Walking
.word    bank3_Dialog_Conditions_Invisible_Dialog_Mirror; 0xf48c $B47C AE B5   ;17	Invisible Dialog (Mirror)
.word    bank3_Dialog_Conditions_default; 0xf48e $B47E C7 B5                   ;18	Invisible Dialog ("Welcome" sign)
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Routines_Set_text_pointer_according_to_Townfolk_type__R5:          ;
    LDA      #$00                      ; 0xf490 $B480 A9 00                    ; A = 00
    STA      $05                       ; 0xf492 $B482 85 05                    ;
    STA      $048C                     ; 0xf494 $B484 8D 8C 04                 ;
    LDX      $048B                     ; 0xf497 $B487 AE 8B 04                 ; Townfolk Slot
    LDA      $A1,x                     ; 0xf49a $B48A B5 A1                    ; Enemy ID
    SEC                                ; 0xf49c $B48C 38                       ;
    SBC      #$0A                      ; 0xf49d $B48D E9 0A                    ;
    STA      L0000                     ; 0xf49f $B48F 85 00                    ;
    ASL                                ; 0xf4a1 $B491 0A                       ;
    TAY                                ; 0xf4a2 $B492 A8                       ;
    LDA      bank3_Pointer_table_for_Dialog_Conditions,y; 0xf4a3 $B493 B9 4E B4    ;
    STA      L0002                     ; 0xf4a6 $B496 85 02                    ;
    LDA      bank3_Pointer_table_for_Dialog_Conditions+$01,y; 0xf4a8 $B498 B9 4F B4;
    STA      $03                       ; 0xf4ab $B49B 85 03                    ;
    LDY      $056B                     ; 0xf4ad $B49D AC 6B 05                 ;; Town Code	;used by wise man to pick magic to give?
    JMP      (L0002)                   ; 0xf4b0 $B4A0 6C 02 00                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Conditions_Blue_Old_Woman__Immobile___River_Man:                   ;
    CPY      #$02                      ; 0xf4b3 $B4A3 C0 02                    ;
    BNE      bank3_Knight_Type_A_Downward_Stab__03; 0xf4b5 $B4A5 D0 14             ;
    LDA      $079A                     ; 0xf4b7 $B4A7 AD 9A 07                 ; Have Note from Bagu? (08 = YES)
    AND      #$08                      ; 0xf4ba $B4AA 29 08                    ; keep bits .... x...
    BEQ      LB4B8                     ; 0xf4bc $B4AC F0 0A                    ; if Not, goto F4B8
    LDA      $0796                     ; 0xf4be $B4AE AD 96 07                 ; Down/Up Techs (and others)
    ORA      #$01                      ; 0xf4c1 $B4B1 09 01                    ; set bits  .... ...x
    STA      $0796                     ; 0xf4c3 $B4B3 8D 96 07                 ;; Down/Up Techs (and other things)
    INC      $05                       ; 0xf4c6 $B4B6 E6 05                    ;
LB4B8:                                                                          ;
    JMP      bank3_Dialog_Conditions_default; 0xf4c8 $B4B8 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Knight_Type_A_Downward_Stab__03:                                          ;
    CPY      #$03                      ; 0xf4cb $B4BB C0 03                    ;
    BNE      bank3_Knight_Type_B_Up_Stab__03; 0xf4cd $B4BD D0 14                   ;
    LDA      $0796                     ; 0xf4cf $B4BF AD 96 07                 ; Down/Up Techs
    AND      #$10                      ; 0xf4d2 $B4C2 29 10                    ; keep bits ...x .... (Downward Stab)
    BEQ      LB4CB                     ; 0xf4d4 $B4C4 F0 05                    ;
    INC      $05                       ; 0xf4d6 $B4C6 E6 05                    ;
    INC      $048C                     ; 0xf4d8 $B4C8 EE 8C 04                 ;
LB4CB:                                                                          ;
    LDA      $0796                     ; 0xf4db $B4CB AD 96 07                 ; Down/Up Techs
    ORA      #$10                      ; 0xf4de $B4CE 09 10                    ; set  bits ...x .... (set Down Stab)
    JMP      LB4E8                     ; 0xf4e0 $B4D0 4C E8 B4                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Knight_Type_B_Up_Stab__03:                                                ;
    CPY      #$00                      ; 0xf4e3 $B4D3 C0 00                    ;
    BEQ      LB4EB                     ; 0xf4e5 $B4D5 F0 14                    ;
    LDA      $0796                     ; 0xf4e7 $B4D7 AD 96 07                 ; Down/Up Techs
    AND      #$04                      ; 0xf4ea $B4DA 29 04                    ; keep bits .... .x.. (Up Stab)
    BEQ      LB4E3                     ; 0xf4ec $B4DC F0 05                    ;
    INC      $05                       ; 0xf4ee $B4DE E6 05                    ;
    INC      $048C                     ; 0xf4f0 $B4E0 EE 8C 04                 ;
LB4E3:                                                                          ;
    LDA      $0796                     ; 0xf4f3 $B4E3 AD 96 07                 ; Down/Up Techs
    ORA      #$04                      ; 0xf4f6 $B4E6 09 04                    ; set  bits .... .x.. (set Up Stab)
LB4E8:                                                                          ;
    STA      $0796                     ; 0xf4f8 $B4E8 8D 96 07                 ;; Down/Up Techs (and other things)
LB4EB:                                                                          ;
    JMP      bank3_Dialog_Conditions_default; 0xf4fb $B4EB 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Conditions_Blue_Lumberjack__Immobile:                              ;
    CPY      #$03                      ; 0xf4fe $B4EE C0 03                    ;
    BNE      bank3_Error_of_Ruto__04   ; 0xf500 $B4F0 D0 0B                    ;
    LDA      $0796                     ; 0xf502 $B4F2 AD 96 07                 ; Up/Down Techs (and other things)
    ORA      #$02                      ; 0xf505 $B4F5 09 02                    ; set bits  .... ..x.
    STA      $0796                     ; 0xf507 $B4F7 8D 96 07                 ;; Down/Up Techs (and other things)
    JMP      bank3_Dialog_Conditions_default; 0xf50a $B4FA 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Error_of_Ruto__04:                                                        ;
    CPY      #$01                      ; 0xf50d $B4FD C0 01                    ;
    BNE      bank3_Unknown_Townfolk__04; 0xf50f $B4FF D0 0C                    ;
    LDA      $0796                     ; 0xf511 $B501 AD 96 07                 ; Up/Down Techs
    AND      #$02                      ; 0xf514 $B504 29 02                    ; keep bits .... ..x.
    BEQ      LB50A                     ; 0xf516 $B506 F0 02                    ;
LB508:                                                                          ;
    INC      $05                       ; 0xf518 $B508 E6 05                    ;
LB50A:                                                                          ;
    JMP      bank3_Dialog_Conditions_default; 0xf51a $B50A 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Unknown_Townfolk__04:                                                     ;
    CPY      #$00                      ; 0xf51d $B50D C0 00                    ;
    BEQ      LB50A                     ; 0xf51f $B50F F0 F9                    ;
    LDA      $078A                     ; 0xf521 $B511 AD 8A 07                 ; Have Cross
    BNE      LB508                     ; 0xf524 $B514 D0 F2                    ;
    BEQ      LB50A                     ; 0xf526 $B516 F0 F2                    ;
bank3_Dialog_Conditions_Wise_Man:                                               ;
    STY      $01                       ; 0xf528 $B518 84 01                    ;
    INC      $01                       ; 0xf52a $B51A E6 01                    ;
    LDA      $077B,y                   ; 0xf52c $B51C B9 7B 07                 ; Have Magic #Y
    BEQ      LB526                     ; 0xf52f $B51F F0 05                    ;
    INC      $048C                     ; 0xf531 $B521 EE 8C 04                 ;
    BNE      LB52D                     ; 0xf534 $B524 D0 07                    ;
LB526:                                                                          ;
    LDA      $0783                     ; 0xf536 $B526 AD 83 07                 ; Current number of Magic Containers
    CMP      $01                       ; 0xf539 $B529 C5 01                    ;
    BCC      LB54B                     ; 0xf53b $B52B 90 1E                    ;
LB52D:                                                                          ;
    INC      $05                       ; 0xf53d $B52D E6 05                    ;
    LDA      #$01                      ; 0xf53f $B52F A9 01                    ; A = 01
    STA      $077B,y                   ; 0xf541 $B531 99 7B 07                 ; Have Magic #Y
    STY      $01                       ; 0xf544 $B534 84 01                    ;
    LDX      #$07                      ; 0xf546 $B536 A2 07                    ; X = 07
    LDA      #$00                      ; 0xf548 $B538 A9 00                    ; A = 00
LB53A:                                                                          ;
    CPX      $01                       ; 0xf54a $B53A E4 01                    ;
    BEQ      LB541                     ; 0xf54c $B53C F0 03                    ;
    ORA      $077B,x                   ; 0xf54e $B53E 1D 7B 07                 ; Have Magic #X
LB541:                                                                          ;
    DEX                                ; 0xf551 $B541 CA                       ;
    BPL      LB53A                     ; 0xf552 $B542 10 F6                    ;
    CMP      #$00                      ; 0xf554 $B544 C9 00                    ;
    BNE      LB54B                     ; 0xf556 $B546 D0 03                    ;
    STY      $0749                     ; 0xf558 $B548 8C 49 07                 ; Current position of the Magic selector
LB54B:                                                                          ;
    JMP      bank3_Dialog_Conditions_default; 0xf55b $B54B 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Conditions_Immobile:                                               ;
    LDA      L0000                     ; 0xf55e $B54E A5 00                    ;
    SEC                                ; 0xf560 $B550 38                       ;
    SBC      #$06                      ; 0xf561 $B551 E9 06                    ;
    TAX                                ; 0xf563 $B553 AA                       ;
    LDA      $0797,y                   ; 0xf564 $B554 B9 97 07                 ;
    ORA      bank3_Related_to_Collectable_Objects_conditions,x; 0xf567 $B557 1D 2B B4;
    STA      $0797,y                   ; 0xf56a $B55A 99 97 07                 ;
    JMP      bank3_Dialog_Conditions_default; 0xf56d $B55D 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Conditions_Idle:                                                   ;
    CPY      #$00                      ; 0xf570 $B560 C0 00                    ;
    BEQ      LB579                     ; 0xf572 $B562 F0 15                    ;
    STY      $01                       ; 0xf574 $B564 84 01                    ;
    LDA      L0000                     ; 0xf576 $B566 A5 00                    ;
    SEC                                ; 0xf578 $B568 38                       ;
    SBC      #$09                      ; 0xf579 $B569 E9 09                    ;
    ASL                                ; 0xf57b $B56B 0A                       ;
    ASL                                ; 0xf57c $B56C 0A                       ;
    ASL                                ; 0xf57d $B56D 0A                       ;
    ADC      $01                       ; 0xf57e $B56E 65 01                    ;
    TAX                                ; 0xf580 $B570 AA                       ;
    LDA      $0797,y                   ; 0xf581 $B571 B9 97 07                 ;
    AND      LB42E,x                   ; 0xf584 $B574 3D 2E B4                 ;
    BEQ      bank3_Dialog_Conditions_default; 0xf587 $B577 F0 4E                   ;
LB579:                                                                          ;
    INC      $05                       ; 0xf589 $B579 E6 05                    ;
    BNE      LB589                     ; 0xf58b $B57B D0 0C                    ;
bank3_Dialog_Conditions_HealerLady_MagicLady:                                   ;
    LDX      $074C                     ; 0xf58d $B57D AE 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    CPX      #$02                      ; 0xf590 $B580 E0 02                    ;
    BEQ      LB589                     ; 0xf592 $B582 F0 05                    ;
    INC      $05                       ; 0xf594 $B584 E6 05                    ;
    JMP      bank3_Dialog_Conditions_default; 0xf596 $B586 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB589:                                                                          ;
    LDX      $048B                     ; 0xf599 $B589 AE 8B 04                 ; Townfolk Slot
    JSR      L9A50                     ; 0xf59c $B58C 20 50 9A                 ;
    JMP      bank3_Dialog_Conditions_default; 0xf59f $B58F 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Conditions_Walking:                                                ;
    LDA      L0000                     ; 0xf5a2 $B592 A5 00                    ;
    SEC                                ; 0xf5a4 $B594 38                       ;
    SBC      #$13                      ; 0xf5a5 $B595 E9 13                    ;
    TAX                                ; 0xf5a7 $B597 AA                       ;
    LDA      $0797,y                   ; 0xf5a8 $B598 B9 97 07                 ;
    ORA      bank3_table12,x           ; 0xf5ab $B59B 1D 27 B4                 ;
    STA      $0797,y                   ; 0xf5ae $B59E 99 97 07                 ;
    JMP      bank3_Dialog_Conditions_default; 0xf5b1 $B5A1 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      L0000                     ; 0xf5b4 $B5A4 A5 00                    ;
    SEC                                ; 0xf5b6 $B5A6 38                       ;
    SBC      #$04                      ; 0xf5b7 $B5A7 E9 04                    ;
    STA      L0000                     ; 0xf5b9 $B5A9 85 00                    ;
    JMP      bank3_Dialog_Conditions_default; 0xf5bb $B5AB 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Conditions_Invisible_Dialog_Mirror:                                ;
    LDA      $0797,y                   ; 0xf5be $B5AE B9 97 07                 ;
    ORA      #$01                      ; 0xf5c1 $B5B1 09 01                    ; set  bits .... ...x
    STA      $0797,y                   ; 0xf5c3 $B5B3 99 97 07                 ;
    JMP      bank3_Dialog_Conditions_default; 0xf5c6 $B5B6 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Conditions_Ache_Bit_talker:                                        ;
    LDA      $05A5,x                   ; 0xf5c9 $B5B9 BD A5 05                 ;;town npc chat counter
    CMP      #$04                      ; 0xf5cc $B5BC C9 04                    ;
    BCC      bank3_Dialog_Conditions_default; 0xf5ce $B5BE 90 07                   ;
    LDA      #$04                      ; 0xf5d0 $B5C0 A9 04                    ; A = 04
    STA      $05A5,x                   ; 0xf5d2 $B5C2 9D A5 05                 ;;town npc chat counter
    INC      $05                       ; 0xf5d5 $B5C5 E6 05                    ;
bank3_Dialog_Conditions_default:                                                ;
    LDA      L0000                     ; 0xf5d7 $B5C7 A5 00                    ;
    LDX      $048C                     ; 0xf5d9 $B5C9 AE 8C 04                 ;
    BEQ      LB5D0                     ; 0xf5dc $B5CC F0 02                    ;
    LDA      #$0F                      ; 0xf5de $B5CE A9 0F                    ; A = 0F
LB5D0:                                                                          ;
    ASL                                ; 0xf5e0 $B5D0 0A                       ;
    ASL                                ; 0xf5e1 $B5D1 0A                       ;
    STA      L0000                     ; 0xf5e2 $B5D2 85 00                    ;
    LDA      $056B                     ; 0xf5e4 $B5D4 AD 6B 05                 ; Town Code
    AND      #$03                      ; 0xf5e7 $B5D7 29 03                    ; keep bits .... ..xx
    CLC                                ; 0xf5e9 $B5D9 18                       ;
    ADC      L0000                     ; 0xf5ea $B5DA 65 00                    ;
    TAY                                ; 0xf5ec $B5DC A8                       ;
    LDA      bank3_related_to_dialog_indexes1,y; 0xf5ed $B5DD B9 38 A2             ;
    LDX      $05                       ; 0xf5f0 $B5E0 A6 05                    ;
    BEQ      LB5E7                     ; 0xf5f2 $B5E2 F0 03                    ;
    LDA      bank3_related_to_dialog_indexes2,y; 0xf5f4 $B5E4 B9 9C A2             ;
LB5E7:                                                                          ;
    LDX      $0707                     ; 0xf5f7 $B5E7 AE 07 07                 ; Current World
    CPX      #$02                      ; 0xf5fa $B5EA E0 02                    ; 02 = Towns in East Hyrule
    BNE      bank3_At_this_point_A_is_the_dialog_index; 0xf5fc $B5EC D0 0A         ;
    LDA      bank3_related_to_dialog_indexes3,y; 0xf5fe $B5EE B9 DC A2             ;
    LDX      $05                       ; 0xf601 $B5F1 A6 05                    ;
    BEQ      bank3_At_this_point_A_is_the_dialog_index; 0xf603 $B5F3 F0 03         ;
    LDA      bank3_related_to_dialog_indexes4,y; 0xf605 $B5F5 B9 40 A3             ;
bank3_At_this_point_A_is_the_dialog_index:                                      ;
    ASL                                ; 0xf608 $B5F8 0A                       ;
    TAY                                ; 0xf609 $B5F9 A8                       ;
    LDA      $0707                     ; 0xf60a $B5FA AD 07 07                 ; Current World
    ASL                                ; 0xf60d $B5FD 0A                       ;
    TAX                                ; 0xf60e $B5FE AA                       ;
    LDA      LB421,x                   ; 0xf60f $B5FF BD 21 B4                 ;
    STA      L0000                     ; 0xf612 $B602 85 00                    ;
    LDA      LB422,x                   ; 0xf614 $B604 BD 22 B4                 ;
    STA      $01                       ; 0xf617 $B607 85 01                    ;
    LDA      (L0000),y                 ; 0xf619 $B609 B1 00                    ;
    STA      $0569                     ; 0xf61b $B60B 8D 69 05                 ; Pointer to letter (high)
    INY                                ; 0xf61e $B60E C8                       ;
    LDA      (L0000),y                 ; 0xf61f $B60F B1 00                    ;
    STA      $056A                     ; 0xf621 $B611 8D 6A 05                 ; Pointer to letter (low)
    LDA      #$2A                      ; 0xf624 $B614 A9 2A                    ; A = 2A (delay before letters start typing)
    STA      $0566                     ; 0xf626 $B616 8D 66 05                 ; Delay between letters
    LDA      #$00                      ; 0xf629 $B619 A9 00                    ; A = 00
    STA      $0489                     ; 0xf62b $B61B 8D 89 04                 ; Letter X Position offset
    STA      $048A                     ; 0xf62e $B61E 8D 8A 04                 ; Letter Y Position offset
bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2_duplicate:      ;
    INC      $0524                     ; 0xf631 $B621 EE 24 05                 ; Routine Counter
    RTS                                ; 0xf634 $B624 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Table_for_Bit_Masks:                                                      ;
;.... ...x                                                                     ;
;.... ..x.                                                                     ;
;.... .x..                                                                     ;
;.... x...                                                                     ;
;...x ....                                                                     ;
;..x. ....                                                                     ;
;.x.. ....                                                                     ;
;x... ....                                                                     ;
.byt    $01,$02,$04,$08,$10,$20,$40,$80; 0xf635 $B625 01 02 04 08 10 20 40 80  ;Table for Bit Masks (8 bytes)
; ---------------------------------------------------------------------------- ;
bank3_code21:                                                                   ;
    LDA      $0796                     ; 0xf63d $B62D AD 96 07                 ; Down/Up Techs
    ORA      bank3_Table_for_Bit_Masks,y; 0xf640 $B630 19 25 B6                 ;
    STA      $0796                     ; 0xf643 $B633 8D 96 07                 ;; Down/Up Techs (and other things)
    JMP      bank3_Dialog_Conditions_default; 0xf646 $B636 4C C7 B5                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB639:                                                                          ;
    LDA      $056B                     ; 0xf649 $B639 AD 6B 05                 ;; Town Code	;used by wise man to pick magic to give?
    CMP      #$03                      ; 0xf64c $B63C C9 03                    ;
    BCS      LB64A                     ; 0xf64e $B63E B0 0A                    ;
    BCC      LB690                     ; 0xf650 $B640 90 4E                    ;
LB642:                                                                          ;
    LDY      $056B                     ; 0xf652 $B642 AC 6B 05                 ;; Town Code	;used by wise man to pick magic to give?
    LDA      $077B,y                   ; 0xf655 $B645 B9 7B 07                 ; Have magic #Y ?
    BEQ      LB690                     ; 0xf658 $B648 F0 46                    ;
LB64A:                                                                          ;
    LDA      $048C                     ; 0xf65a $B64A AD 8C 04                 ;
    BNE      LB690                     ; 0xf65d $B64D D0 41                    ;
    LDA      #$04                      ; 0xf65f $B64F A9 04                    ; A = 04
    STA      $EC                       ; 0xf661 $B651 85 EC                    ; Sound Effects Type 1
    JMP      bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2_duplicate; 0xf663 $B653 4C 21 B6;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_End_of_Line_Routine:                                                      ;
    LDY      #$0B                      ; 0xf666 $B656 A0 0B                    ; 0B = delay after dialog line with FD
    CMP      #$FD                      ; 0xf668 $B658 C9 FD                    ;
    BEQ      LB65E                     ; 0xf66a $B65A F0 02                    ;
    LDY      #$2D                      ; 0xf66c $B65C A0 2D                    ; 2D = delay after dialog line with FE
LB65E:                                                                          ;
    STY      $0566                     ; 0xf66e $B65E 8C 66 05                 ; Delay between letters
    LDA      #$00                      ; 0xf671 $B661 A9 00                    ; A = 00
    STA      $0489                     ; 0xf673 $B663 8D 89 04                 ; New Letter X Position (offset)
    LDA      $048A                     ; 0xf676 $B666 AD 8A 04                 ; Next Letter Y Position
    CLC                                ; 0xf679 $B669 18                       ;
    ADC      #$40                      ; 0xf67a $B66A 69 40                    ; Go down 2 tiles (0x10 pixels)
    STA      $048A                     ; 0xf67c $B66C 8D 8A 04                 ; New Letter Y Position
    JMP      LB752                     ; 0xf67f $B66F 4C 52 B7                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB672:                                                                          ;
    LDA      $074C                     ; 0xf682 $B672 AD 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    CMP      #$04                      ; 0xf685 $B675 C9 04                    ;
    BEQ      bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2_duplicate; 0xf687 $B677 F0 A8;
    LDA      #$C0                      ; 0xf689 $B679 A9 C0                    ; A = C0
    STA      $074B                     ; 0xf68b $B67B 8D 4B 07                 ; Spell Flash Counter
    LDA      #$40                      ; 0xf68e $B67E A9 40                    ; A = 40
    STA      $049E                     ; 0xf690 $B680 8D 9E 04                 ;
    LDX      $048B                     ; 0xf693 $B683 AE 8B 04                 ; Townfolk Slot
    LDA      $A1,x                     ; 0xf696 $B686 B5 A1                    ; Enemy Code
    CMP      #$0F                      ; 0xf698 $B688 C9 0F                    ;
    BEQ      LB642                     ; 0xf69a $B68A F0 B6                    ;
    CMP      #$0D                      ; 0xf69c $B68C C9 0D                    ;
    BEQ      LB639                     ; 0xf69e $B68E F0 A9                    ;
LB690:                                                                          ;
    LDA      #$00                      ; 0xf6a0 $B690 A9 00                    ; A = 00
    STA      $074B                     ; 0xf6a2 $B692 8D 4B 07                 ;; Spell Flash Counter (bit 7 set = decor flash)
    STA      $049E                     ; 0xf6a5 $B695 8D 9E 04                 ;
    INC      $0524                     ; 0xf6a8 $B698 EE 24 05                 ; Routine Counter
    JMP      bank3_Dialog_Routines_advance_to_next_routine_in_this_table__R2_duplicate; 0xf6ab $B69B 4C 21 B6;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Delay_counter_between_letters:                                            ;
    DEC      $0566                     ; 0xf6ae $B69E CE 66 05                 ; Delay between letters (town)
    RTS                                ; 0xf6b1 $B6A1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB6A2:                                                                          ;
    LDA      #$00                      ; 0xf6b2 $B6A2 A9 00                    ; A = 00
    STA      $0766                     ; 0xf6b4 $B6A4 8D 66 07                 ;; Dialog Flag (00-01)	wait for B button press; set when conversation occurs? Might prevent other ppu instruction
    LDX      $048B                     ; 0xf6b7 $B6A7 AE 8B 04                 ;; Conversation Pointer; Townfolk Slot				used as X position for monster ID
    LDA      $A1,x                     ; 0xf6ba $B6AA B5 A1                    ; Enemy Code
    CMP      #$0D                      ; 0xf6bc $B6AC C9 0D                    ; Townfolk type 0D prevents dialog cancel
    BEQ      LB6BA                     ; 0xf6be $B6AE F0 0A                    ;
    CMP      #$0F                      ; 0xf6c0 $B6B0 C9 0F                    ; Townfolk type 0F prevents dialog cancel
    BEQ      LB6BA                     ; 0xf6c2 $B6B2 F0 06                    ;
    LDA      $F5                       ; 0xf6c4 $B6B4 A5 F5                    ; controller 1 buttons pressed
    AND      #$40                      ; 0xf6c6 $B6B6 29 40                    ; keep bits .x.. .... (B button)
    BNE      LB672                     ; 0xf6c8 $B6B8 D0 B8                    ; if pressed, skip to $F672
LB6BA:                                                                          ;
    LDA      $0566                     ; 0xf6ca $B6BA AD 66 05                 ; Delay between letters
    BNE      bank3_Delay_counter_between_letters; 0xf6cd $B6BD D0 DF               ;
    INC      $0766                     ; 0xf6cf $B6BF EE 66 07                 ;; Dialog Flag (00-01)	wait for B button press; set when conversation occurs? Might prevent other ppu instruction
    LDX      #$F4                      ; 0xf6d2 $B6C2 A2 F4                    ; X = F4 (interline character)
    LDA      $0569                     ; 0xf6d4 $B6C4 AD 69 05                 ; 569,56A = pointer to next letter
    STA      L0000                     ; 0xf6d7 $B6C7 85 00                    ;
    LDA      $056A                     ; 0xf6d9 $B6C9 AD 6A 05                 ;; Pointer to letter 	; Low
    STA      $01                       ; 0xf6dc $B6CC 85 01                    ;
    LDY      #$00                      ; 0xf6de $B6CE A0 00                    ; Y = 00
    LDA      (L0000),y                 ; 0xf6e0 $B6D0 B1 00                    ;
    CMP      #$FF                      ; 0xf6e2 $B6D2 C9 FF                    ; if End of Message
    BEQ      LB672                     ; 0xf6e4 $B6D4 F0 9C                    ; goto $F672
    CMP      #$FD                      ; 0xf6e6 $B6D6 C9 FD                    ;
    BCC      bank3_Load_a_letter       ; 0xf6e8 $B6D8 90 03                    ; if not FD or FE, goto $F6DD
    JMP      bank3_End_of_Line_Routine ; 0xf6ea $B6DA 4C 56 B6                 ; else goto $F656
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Load_a_letter:                                                            ;
    ASL                                ; 0xf6ed $B6DD 0A                       ; if Bit 7 is 0...
    BCC      LB6ED                     ; 0xf6ee $B6DE 90 0D                    ; skip to $F6ED
    ASL                                ; 0xf6f0 $B6E0 0A                       ; if Bit 6 is 1...
    BCS      LB6E7                     ; 0xf6f1 $B6E1 B0 04                    ; skip to $F6E7
    LDX      #$33                      ; 0xf6f3 $B6E3 A2 33                    ; X = 33 (33 = empty tile) (bit 7 accent)
    BCC      LB6F2                     ; 0xf6f5 $B6E5 90 0B                    ;
LB6E7:                                                                          ;
    LDA      (L0000),y                 ; 0xf6f7 $B6E7 B1 00                    ;
    ORA      #$C0                      ; 0xf6f9 $B6E9 09 C0                    ; set bits  xx.. ....
    BNE      LB6F6                     ; 0xf6fb $B6EB D0 09                    ;
LB6ED:                                                                          ;
    ASL                                ; 0xf6fd $B6ED 0A                       ;
    BCC      LB6F2                     ; 0xf6fe $B6EE 90 02                    ;
    LDX      #$32                      ; 0xf700 $B6F0 A2 32                    ; X = 32 (32 = dot)
LB6F2:                                                                          ;
    LDA      (L0000),y                 ; 0xf702 $B6F2 B1 00                    ;
    AND      #$3F                      ; 0xf704 $B6F4 29 3F                    ; keep bits ..xx xxxx
LB6F6:                                                                          ;
    STA      $0306                     ; 0xf706 $B6F6 8D 06 03                 ;; Letter Written to Screen
    LDA      $0489                     ; 0xf709 $B6F9 AD 89 04                 ; Letter X Position offset
    ASL                                ; 0xf70c $B6FC 0A                       ;
    ASL                                ; 0xf70d $B6FD 0A                       ;
    ASL                                ; 0xf70e $B6FE 0A                       ;
    STA      L0002                     ; 0xf70f $B6FF 85 02                    ;
    LDA      $072C                     ; 0xf711 $B701 AD 2C 07                 ; Scrolling Offset Low Byte
    CLC                                ; 0xf714 $B704 18                       ;
    ADC      #$88                      ; 0xf715 $B705 69 88                    ; Base X position of text lines
    AND      #$F0                      ; 0xf717 $B707 29 F0                    ; keep bits xxxx .... (round to align to tile)
    PHP                                ; 0xf719 $B709 08                       ;
    CLC                                ; 0xf71a $B70A 18                       ;
    ADC      L0002                     ; 0xf71b $B70B 65 02                    ;
    STA      L0002                     ; 0xf71d $B70D 85 02                    ;
    LDA      $072A                     ; 0xf71f $B70F AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0xf722 $B712 69 00                    ;
    PLP                                ; 0xf724 $B714 28                       ;
    ADC      #$00                      ; 0xf725 $B715 69 00                    ;
    AND      #$01                      ; 0xf727 $B717 29 01                    ; keep bits .... ...x
    ASL                                ; 0xf729 $B719 0A                       ;
    ASL                                ; 0xf72a $B71A 0A                       ;
    ADC      #$20                      ; 0xf72b $B71B 69 20                    ;
    STA      $03                       ; 0xf72d $B71D 85 03                    ;
    LDA      L0002                     ; 0xf72f $B71F A5 02                    ;
    LSR                                ; 0xf731 $B721 4A                       ;
    LSR                                ; 0xf732 $B722 4A                       ;
    LSR                                ; 0xf733 $B723 4A                       ;
    ADC      #$E0                      ; 0xf734 $B724 69 E0                    ;
    ADC      $048A                     ; 0xf736 $B726 6D 8A 04                 ; Letter Y Position offset
    STA      $0303                     ; 0xf739 $B729 8D 03 03                 ;; Letter position when writing to screen
    LDA       !$03                     ; 0xf73c $B72C AD 03 00                 ;
    ADC      #$00                      ; 0xf73f $B72F 69 00                    ;
    STA      L0302                     ; 0xf741 $B731 8D 02 03                 ;; Used when writing text to screen
    LDA      #$82                      ; 0xf744 $B734 A9 82                    ; A = 82
    STA      $0304                     ; 0xf746 $B736 8D 04 03                 ;; Text memory offset?
    STX      $0305                     ; 0xf749 $B739 8E 05 03                 ; tile above current letter
    LDA      #$FF                      ; 0xf74c $B73C A9 FF                    ; A = FF
    STA      $0307                     ; 0xf74e $B73E 8D 07 03                 ;; Text memory offset?
    LDA      #$05                      ; 0xf751 $B741 A9 05                    ; A = 05
    STA      $0301                     ; 0xf753 $B743 8D 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDA      #$60                      ; 0xf756 $B746 A9 60                    ; 60 = typewriter sound
    STA      $EC                       ; 0xf758 $B748 85 EC                    ; Sound Effects Type 1
    INC      $0489                     ; 0xf75a $B74A EE 89 04                 ; advance 1 tile to the right
    LDA      #$05                      ; 0xf75d $B74D A9 05                    ; 05 = delay between letters
    STA      $0566                     ; 0xf75f $B74F 8D 66 05                 ; Delay between letters
LB752:                                                                          ;
    INC      $0569                     ; 0xf762 $B752 EE 69 05                 ; advance 1 byte in dialog data
    BNE      LB75A                     ; 0xf765 $B755 D0 03                    ; if it wraps to 00...
    INC      $056A                     ; 0xf767 $B757 EE 6A 05                 ; add 1 to the high byte of pointer
LB75A:                                                                          ;
    RTS                                ; 0xf76a $B75A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Routines_life_magic_restore:                                       ;
    LDX      $048B                     ; 0xf76b $B75B AE 8B 04                 ; Townfolk Slot
    LDA      $A1,x                     ; 0xf76e $B75E B5 A1                    ; Enemy Code
    LDX      #$00                      ; 0xf770 $B760 A2 00                    ; X = 00
    CMP      #$0F                      ; 0xf772 $B762 C9 0F                    ;
    BEQ      LB776                     ; 0xf774 $B764 F0 10                    ;
    CMP      #$0D                      ; 0xf776 $B766 C9 0D                    ;
    BEQ      LB776                     ; 0xf778 $B768 F0 0C                    ;
    CMP      #$18                      ; 0xf77a $B76A C9 18                    ;
    BCS      LB76F                     ; 0xf77c $B76C B0 01                    ;
    INX                                ; 0xf77e $B76E E8                       ;
LB76F:                                                                          ;
    LDA      #$FF                      ; 0xf77f $B76F A9 FF                    ; A = FF
    STA      $070C,x                   ; 0xf781 $B771 9D 0C 07                 ; Magic/Life to be added to Meter
    BNE      LB7A2                     ; 0xf784 $B774 D0 2C                    ;
LB776:                                                                          ;
    LDA      $07FC                     ; 0xf786 $B776 AD FC 07                 ;
    CMP      #$04                      ; 0xf789 $B779 C9 04                    ;
    BEQ      LB7A5                     ; 0xf78b $B77B F0 28                    ;
    LDA      #$10                      ; 0xf78d $B77D A9 10                    ; A = 10
    STA      $EB                       ; 0xf78f $B77F 85 EB                    ; Music
    LDX      $048B                     ; 0xf791 $B781 AE 8B 04                 ;; Conversation Pointer; Townfolk Slot				used as X position for monster ID
    LDA      $A1,x                     ; 0xf794 $B784 B5 A1                    ; Enemy Code
    CMP      #$0F                      ; 0xf796 $B786 C9 0F                    ;
    BNE      LB7A2                     ; 0xf798 $B788 D0 18                    ;
    LDA      #$00                      ; 0xf79a $B78A A9 00                    ; A = 00
    STA      $0524                     ; 0xf79c $B78C 8D 24 05                 ; Routine Counter
    STA      $074C                     ; 0xf79f $B78F 8D 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    STA      $0525                     ; 0xf7a2 $B792 8D 25 05                 ; Routine Delay
    STA      $DE                       ; 0xf7a5 $B795 85 DE                    ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    STA      $048D                     ; 0xf7a7 $B797 8D 8D 04                 ;; Related to Link's flicker after being hit ?
    LDY      #$05                      ; 0xf7aa $B79A A0 05                    ; Y = 05
LB79C:                                                                          ;
    STA      $05C3,y                   ; 0xf7ac $B79C 99 C3 05                 ;
    DEY                                ; 0xf7af $B79F 88                       ;
    BPL      LB79C                     ; 0xf7b0 $B7A0 10 FA                    ;
LB7A2:                                                                          ;
    INC      $0524                     ; 0xf7b2 $B7A2 EE 24 05                 ; advance to next routine...
LB7A5:                                                                          ;
    RTS                                ; 0xf7b5 $B7A5 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_Dialog_Routines_wait_for_B_button:                                        ;
    LDA      $0766                     ; 0xf7b6 $B7A6 AD 66 07                 ;; Dialog Flag (00-01)	wait for B button press; set when conversation occurs? Might prevent other ppu instruction
    BEQ      LB7A2                     ; 0xf7b9 $B7A9 F0 F7                    ;
    LDA      $F5                       ; 0xf7bb $B7AB A5 F5                    ; Controller 1 buttons pressed
    AND      #$40                      ; 0xf7bd $B7AD 29 40                    ; keep bits .x.. .... (B button)
    BNE      LB7A2                     ; 0xf7bf $B7AF D0 F1                    ; if pressed, advance to next routine
    RTS                                ; 0xf7c1 $B7B1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LB7B2:                                                                          ;
    LDY      #$05                      ; 0xf7c2 $B7B2 A0 05                    ; Y = 05
    LDA      #$00                      ; 0xf7c4 $B7B4 A9 00                    ; A = 00
LB7B6:                                                                          ;
    STA      $05C3,y                   ; 0xf7c6 $B7B6 99 C3 05                 ;
    DEY                                ; 0xf7c9 $B7B9 88                       ;
    BPL      LB7B6                     ; 0xf7ca $B7BA 10 FA                    ;
    STA      $DE                       ; 0xf7cc $B7BC 85 DE                    ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    STA      $048D                     ; 0xf7ce $B7BE 8D 8D 04                 ;; Related to Link's flicker after being hit ?
    LDA      $056B                     ; 0xf7d1 $B7C1 AD 6B 05                 ; Town Code
    CMP      #$02                      ; 0xf7d4 $B7C4 C9 02                    ;
    BEQ      bank3_Townfolk_Transforming_into_Ache; 0xf7d6 $B7C6 F0 04             ;
    CMP      #$05                      ; 0xf7d8 $B7C8 C9 05                    ;
    BNE      LB7F0                     ; 0xf7da $B7CA D0 24                    ;
bank3_Townfolk_Transforming_into_Ache:                                          ;
    LDX      $048B                     ; 0xf7dc $B7CC AE 8B 04                 ; Townfolk Slot
    LDA      $A1,x                     ; 0xf7df $B7CF B5 A1                    ; Enemy Code
    CMP      #$19                      ; 0xf7e1 $B7D1 C9 19                    ;
    BCC      LB7F0                     ; 0xf7e3 $B7D3 90 1B                    ;
    CMP      #$1D                      ; 0xf7e5 $B7D5 C9 1D                    ;
    BCS      LB7F0                     ; 0xf7e7 $B7D7 B0 17                    ;
;19 to 1C = Generated Townfolk                                                 ;
    LDA      $051C,x                   ; 0xf7e9 $B7D9 BD 1C 05                 ; Randomizer
    CMP      #$67                      ; 0xf7ec $B7DC C9 67                    ; Approx. 26% chance of Townfolk transforming
    BCS      LB7F0                     ; 0xf7ee $B7DE B0 10                    ;
    LDA      #$03                      ; 0xf7f0 $B7E0 A9 03                    ; A = 03 (03 = Code for Ache)
    STA      $A1,x                     ; 0xf7f2 $B7E2 95 A1                    ; Enemy Code
    STA      $81,x                     ; 0xf7f4 $B7E4 95 81                    ; Current Animation Frame for Enemy
    LDA      #$80                      ; 0xf7f6 $B7E6 A9 80                    ; A = 80
    STA      $AF,x                     ; 0xf7f8 $B7E8 95 AF                    ;; Various enemy state variables
    ASL                                ; 0xf7fa $B7EA 0A                       ;
    STA      $057E,x                   ; 0xf7fb $B7EB 9D 7E 05                 ; Enemy Y Velocity
    STA      $71,x                     ; 0xf7fe $B7EE 95 71                    ; Enemy X Velocity
LB7F0:                                                                          ;
    LDA      #$08                      ; 0xf800 $B7F0 A9 08                    ; A = 08
    STA      $EE                       ; 0xf802 $B7F2 85 EE                    ; Sound Effects Type 3
    LDA      #$00                      ; 0xf804 $B7F4 A9 00                    ; A = 00
    STA      $074C                     ; 0xf806 $B7F6 8D 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    STA      $0525                     ; 0xf809 $B7F9 8D 25 05                 ; Routine Delay
    STA      $0524                     ; 0xf80c $B7FC 8D 24 05                 ; Routine Counter
    STA      $0567                     ; 0xf80f $B7FF 8D 67 05                 ;; Related to Flute in Overworld		TIMER: can't move on overworld while this occurs
    RTS                                ; 0xf812 $B802 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_UNUSED_B803:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf813 $B803 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf81b $B80B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf823 $B813 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf82b $B81B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf833 $B823 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf83b $B82B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf843 $B833 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf84b $B83B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf853 $B843 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf85b $B84B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf863 $B853 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf86b $B85B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf873 $B863 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf87b $B86B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf883 $B873 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf88b $B87B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf893 $B883 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf89b $B88B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8a3 $B893 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8ab $B89B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8b3 $B8A3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8bb $B8AB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8c3 $B8B3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8cb $B8BB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8d3 $B8C3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8db $B8CB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8e3 $B8D3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8eb $B8DB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8f3 $B8E3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf8fb $B8EB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf903 $B8F3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf90b $B8FB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf913 $B903 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf91b $B90B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf923 $B913 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf92b $B91B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf933 $B923 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf93b $B92B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf943 $B933 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf94b $B93B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf953 $B943 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf95b $B94B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf963 $B953 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf96b $B95B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf973 $B963 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf97b $B96B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf983 $B973 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf98b $B97B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf993 $B983 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf99b $B98B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9a3 $B993 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9ab $B99B FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9b3 $B9A3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9bb $B9AB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9c3 $B9B3 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9cb $B9BB FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF    ; 0xf9d3 $B9C3 FF FF FF FF FF FF FF     ;
LB9CA:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9da $B9CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9e2 $B9D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9ea $B9DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9f2 $B9E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xf9fa $B9EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa02 $B9F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa0a $B9FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa12 $BA02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa1a $BA0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa22 $BA12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa2a $BA1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa32 $BA22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa3a $BA2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa42 $BA32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa4a $BA3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa52 $BA42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa5a $BA4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa62 $BA52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa6a $BA5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa72 $BA62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa7a $BA6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa82 $BA72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa8a $BA7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa92 $BA82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfa9a $BA8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfaa2 $BA92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfaaa $BA9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfab2 $BAA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfaba $BAAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfac2 $BAB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfaca $BABA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfad2 $BAC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfada $BACA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfae2 $BAD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfaea $BADA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfaf2 $BAE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfafa $BAEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb02 $BAF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb0a $BAFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb12 $BB02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb1a $BB0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb22 $BB12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb2a $BB1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb32 $BB22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb3a $BB2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb42 $BB32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb4a $BB3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb52 $BB42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb5a $BB4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb62 $BB52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb6a $BB5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb72 $BB62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb7a $BB6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb82 $BB72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb8a $BB7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb92 $BB82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfb9a $BB8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfba2 $BB92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbaa $BB9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbb2 $BBA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbba $BBAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbc2 $BBB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbca $BBBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbd2 $BBC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbda $BBCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbe2 $BBD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbea $BBDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbf2 $BBE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfbfa $BBEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc02 $BBF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc0a $BBFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc12 $BC02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc1a $BC0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc22 $BC12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc2a $BC1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc32 $BC22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc3a $BC2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc42 $BC32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc4a $BC3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc52 $BC42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc5a $BC4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc62 $BC52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc6a $BC5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc72 $BC62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc7a $BC6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc82 $BC72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc8a $BC7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc92 $BC82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfc9a $BC8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfca2 $BC92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcaa $BC9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcb2 $BCA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcba $BCAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcc2 $BCB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcca $BCBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcd2 $BCC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcda $BCCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfce2 $BCD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcea $BCDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcf2 $BCE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfcfa $BCEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd02 $BCF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd0a $BCFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd12 $BD02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd1a $BD0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd22 $BD12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd2a $BD1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd32 $BD22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd3a $BD2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd42 $BD32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd4a $BD3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd52 $BD42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd5a $BD4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd62 $BD52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd6a $BD5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd72 $BD62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd7a $BD6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd82 $BD72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd8a $BD7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd92 $BD82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfd9a $BD8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfda2 $BD92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdaa $BD9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdb2 $BDA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdba $BDAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdc2 $BDB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdca $BDBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdd2 $BDC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdda $BDCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfde2 $BDD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdea $BDDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdf2 $BDE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfdfa $BDEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe02 $BDF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe0a $BDFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe12 $BE02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe1a $BE0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe22 $BE12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe2a $BE1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe32 $BE22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe3a $BE2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe42 $BE32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe4a $BE3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe52 $BE42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe5a $BE4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe62 $BE52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe6a $BE5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe72 $BE62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe7a $BE6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe82 $BE72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe8a $BE7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe92 $BE82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfe9a $BE8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfea2 $BE92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfeaa $BE9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfeb2 $BEA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfeba $BEAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfec2 $BEB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfeca $BEBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfed2 $BEC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfeda $BECA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfee2 $BED2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfeea $BEDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfef2 $BEE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfefa $BEEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff02 $BEF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0xff0a $BEFA FF FF FF FF FF FF        ;
LBF00:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff10 $BF00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff18 $BF08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff20 $BF10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff28 $BF18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff30 $BF20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff38 $BF28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff40 $BF30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff48 $BF38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff50 $BF40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff58 $BF48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff60 $BF50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff68 $BF58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff70 $BF60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xff78 $BF68 FF FF FF FF FF FF FF FF  ;
; ---------------------------------------------------------------------------- ;
bank3_codeEND:                                                                  ;
    SEI                                ; 0xff80 $BF70 78                       ;
    CLD                                ; 0xff81 $BF71 D8                       ;
    LDX      #$00                      ; 0xff82 $BF72 A2 00                    ; X = 00
    STX      $2000                     ; 0xff84 $BF74 8E 00 20                 ;
    INX                                ; 0xff87 $BF77 E8                       ;
LBF78:                                                                          ;
    LDA      $2002                     ; 0xff88 $BF78 AD 02 20                 ;
    BPL      LBF78                     ; 0xff8b $BF7B 10 FB                    ;
    DEX                                ; 0xff8d $BF7D CA                       ;
    BEQ      LBF78                     ; 0xff8e $BF7E F0 F8                    ;
    TXS                                ; 0xff90 $BF80 9A                       ;
    STX      bank3_Pointer_table_for_Background_Areas_Data; 0xff91 $BF81 8E 00 80  ;
    STX      bank3_Area_Data_Towns4    ; 0xff94 $BF84 8E 00 A0                 ;
    STX      bank7_PowerON_code        ; 0xff97 $BF87 8E 00 C0                 ;
    STX      LE000                     ; 0xff9a $BF8A 8E 00 E0                 ;
    LDA      #$0F                      ; 0xff9d $BF8D A9 0F                    ; A = 0F
    JSR      LBF9D                     ; 0xff9f $BF8F 20 9D BF                 ;
    JSR      LBFB1                     ; 0xffa2 $BF92 20 B1 BF                 ;
    LDA      #$07                      ; 0xffa5 $BF95 A9 07                    ; A = 07
    JSR      LBFCC                     ; 0xffa7 $BF97 20 CC BF                 ;
    JMP      bank7_PowerON_code        ; 0xffaa $BF9A 4C 00 C0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBF9D:                                                                          ;
    STA      bank3_Pointer_table_for_Background_Areas_Data; 0xffad $BF9D 8D 00 80  ;
    LSR                                ; 0xffb0 $BFA0 4A                       ;
    STA      bank3_Pointer_table_for_Background_Areas_Data; 0xffb1 $BFA1 8D 00 80  ;
    LSR                                ; 0xffb4 $BFA4 4A                       ;
    STA      bank3_Pointer_table_for_Background_Areas_Data; 0xffb5 $BFA5 8D 00 80  ;
    LSR                                ; 0xffb8 $BFA8 4A                       ;
    STA      bank3_Pointer_table_for_Background_Areas_Data; 0xffb9 $BFA9 8D 00 80  ;
    LSR                                ; 0xffbc $BFAC 4A                       ;
    STA      bank3_Pointer_table_for_Background_Areas_Data; 0xffbd $BFAD 8D 00 80  ;
    RTS                                ; 0xffc0 $BFB0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LBFB1:                                                                          ;
    STA      bank3_Area_Data_Towns4    ; 0xffc1 $BFB1 8D 00 A0                 ;
    LSR                                ; 0xffc4 $BFB4 4A                       ;
    STA      bank3_Area_Data_Towns4    ; 0xffc5 $BFB5 8D 00 A0                 ;
    LSR                                ; 0xffc8 $BFB8 4A                       ;
    STA      bank3_Area_Data_Towns4    ; 0xffc9 $BFB9 8D 00 A0                 ;
    LSR                                ; 0xffcc $BFBC 4A                       ;
    STA      bank3_Area_Data_Towns4    ; 0xffcd $BFBD 8D 00 A0                 ;
    LSR                                ; 0xffd0 $BFC0 4A                       ;
    STA      bank3_Area_Data_Towns4    ; 0xffd1 $BFC1 8D 00 A0                 ;
    RTS                                ; 0xffd4 $BFC4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
    LDA      #$00                      ; 0xffd5 $BFC5 A9 00                    ; A = 00
    BEQ      LBFCC                     ; 0xffd7 $BFC7 F0 03                    ;
    LDA      $0769                     ; 0xffd9 $BFC9 AD 69 07                 ;; Bank to switch to (other than 0 or 7)
LBFCC:                                                                          ;
    STA      LE000                     ; 0xffdc $BFCC 8D 00 E0                 ;
    LSR                                ; 0xffdf $BFCF 4A                       ;
    STA      LE000                     ; 0xffe0 $BFD0 8D 00 E0                 ;
    LSR                                ; 0xffe3 $BFD3 4A                       ;
    STA      LE000                     ; 0xffe4 $BFD4 8D 00 E0                 ;
    LSR                                ; 0xffe7 $BFD7 4A                       ;
    STA      LE000                     ; 0xffe8 $BFD8 8D 00 E0                 ;
    LSR                                ; 0xffeb $BFDB 4A                       ;
    STA      LE000                     ; 0xffec $BFDC 8D 00 E0                 ;
    RTS                                ; 0xffef $BFDF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank3_UNUSED_BFE0:                                                              ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfff0 $BFE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0xfff8 $BFE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x10000 $BFF0 FF FF FF FF FF FF FF FF ;
.byt    $FF,$FF                        ; 0x10008 $BFF8 FF FF                   ;
bank3_tableEND:                                                                 ;
.byt    $7B,$C0,$70,$BF,$F0,$FF        ; 0x1000a $BFFA 7B C0 70 BF F0 FF       ;
; ---------------------------------------------------------------------------- ;
