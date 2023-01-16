; DISASSEMBLY ORIGINALLY WROTE BY TRAX (99.9% of his work)
; * = $8000;
; da65 V2.18 
; Created     2021-04-12 11 24 13                                              ;
; Input file  bank0_and_7.nes                                                  ;
; Page        1                                                                ;
                                                                               ;
                                                                               ;
;.setcpu  "6502"                                                               ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
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
L70A0 = $70A0
L7800 = $7800
L780E = $780E
L781C = $781C
L782A = $782A
L7838 = $7838
L7846 = $7846
L7854 = $7854
L7862 = $7862
L7870 = $7870
L787E = $787E
L788C = $788C
L789A = $789A
L789F = $789F
L78A8 = $78A8
L78AD = $78AD
L78B6 = $78B6
L78BB = $78BB
L78C4 = $78C4
L78D2 = $78D2
L78E0 = $78E0
L78EE = $78EE
L78FC = $78FC
L790A = $790A
LC24F = $C24F
LC2A6 = $C2A6
LC72D = $C72D
LCB18_fill_hp_or_mp_to_full__provide_x_register__maybe = $CB18 ;???
LD20A = $D20A
LD2EC = $D2EC
LD55E = $D55E
LDF01 = $DF01
LDF3F = $DF3F
LDF56 = $DF56
LDFD1 = $DFD1
LDFD2 = $DFD2
LDFDB = $DFDB
LE000 = $E000
LE001 = $E001
LE024 = $E024
LE187 = $E187
LE726 = $E726
LEC02 = $EC02

.import bank7_applyGravityMotion
.import bank7_Check_for_Hidden_Palace_spot_Bank_1
.import bank7_code2
.import bank7_code33
.import bank7_code34
.import bank7_code51
.import bank7_code55
.import bank7_Erase_Name_Tables_0and1__set_scroll_to_0_0
.import bank7_Links_Display_Routine
.import bank7_Mute_music_when_loading_between_areas
.import bank7_Overworld_Boundaries__Mountain_or_Water_Bank_1
.import bank7_PowerON_code
.import bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP
.import bank7_Remove_All_Sprites
.import bank7_Turn_Palaces_into_Stone_Bank_1
.import bank7_XY_Movements_Routine
.import SwapCHR
.import ConfigureMMC1

.export bank0_Manual_Save_Game_Routine_UP_AND_A
.export bank0_Return_of_Ganon_screen_Palettes
.export bank0_unknown1
.export bank0_unknown2
.export bank0_unknown27
.export bank0_unknown28
.export bank0_unknown37
.export bank0_unknown39
.export bank0_unknown4
.export Chandeliers_in_North_Castle
.export Check_for_Fire_Spell
.export Hub_Update_Routine
.export Initialization_stuff
.export LevelUp_Pane__BlankLine_SecondHalfOnly
.export Side_View_Initialization_when_entering_a_Key_Area
.export Some_Palettes_Data_related_to_Falling_Animation
.export Spell_Casting_Routine
.export Tables_for_Game_Over_screen_text
.export overworld3
.export overworld4
.export startup_init_begin_game

.segment "PRG0"

; ---------------------------------------------------------------------------- ;

Tables_for_Game_Over_screen_text:                                               ;
;21 6B 0A	PPU Address 216B, A bytes to process                                 ;
;E0 DA E6 DE F4 F4 E8 EF DE EB          GAME  OVER                             ;
;21 C8 0F	PPU Address 21C8, F bytes to process                                 ;
;EB DE ED EE EB E7 F4 E8 DF F4 E0 DA E7 E8 E7	RETURN OF GANON                  ;
;linetest0                                                                     ;
;linetest1                                                                     ;
;linetest2                                                                     ;
;linetest3                                                                     ;
.byt    $21                            ; 0x10 $8000 21                         ;
;aoeuaoeuA                                                                     ;
;aoeuaoeuB                                                                     ;
;aoeuaoeuC                                                                     ;
L8001:                                                                          ;
.byt    $6B,$0A,$E0,$DA,$E6,$DE,$F4,$F4; 0x11 $8001 6B 0A E0 DA E6 DE F4 F4    ;
.byt    $E8,$EF,$DE,$EB,$21            ; 0x19 $8009 E8 EF DE EB 21             ;
L800E:                                                                          ;
.byt    $C8,$0F,$EB,$DE,$ED,$EE,$EB,$E7; 0x1e $800E C8 0F EB DE ED EE EB E7    ;
.byt    $F4,$E8,$DF,$F4,$E0,$DA,$E7,$E8; 0x26 $8016 F4 E8 DF F4 E0 DA E7 E8    ;
.byt    $E7                            ; 0x2e $801E E7                         ;
Tables_for_Ganon_Shadow_Tile_Mapping_and_Palette_Mapping:                       ;
;Bytes 0-1 is the PPU Address to write to                                      ;
;Byte 2 Structure:                                                             ;
;                                                                              ;
;x... ....	Place tiles vertically (going down)                                 ;
;.x.. ....	Place tiles horizontally (going right)                              ;
;..xx xxxx	If vertically, use the given number of following bytes              ;
;If horizontally, repeat the next byte                                         ;
;                                                                              ;
;22 4C 08	00 01 02 03 04 05 06 07                                              ;
;22 6C 08	10 11 12 13 14 15 16 17                                              ;
;22 8C 08	20 21 22 23 24 25 26 27                                              ;
;22 A9 0E	19 08 09 30 31 32 33 34 35 36 37 0A 0B 1A                            ;
;22 C8 83	18 28 0E (vertically)                                                ;
;22 C9 0E	29 FF FF 38 FF FF 1E 1F FF FF 39 FF FF 2A                            ;
;22 D7 83	1B 2B 0F (vertically)                                                ;
;22 E9 4E	FF (E times, horizontally)                                           ;
;23 07 83	18 28 0E (vertically)                                                ;
;23 09 4E	FF (E times, horizontally)                                           ;
;23 18 83	1B 2B 0F (vertically)                                                ;
;23 28 50	FF (10 times, horizontally)                                          ;
;23 46 83	18 28 0E (vertically)                                                ;
;23 48 50	FF (10 times, horizontally)                                          ;
;23 59 83	1B 2B 0F (vertically)                                                ;
;23 67 52	FF (12 times, horizontally)                                          ;
;23 85 82	18 28 (vertically)                                                   ;
;23 87 52	FF (12 times, horizontally)                                          ;
;23 9A 82	1B 2B (vertically)                                                   ;
;23 A6 54	FF (14 times, horizontally)                                          ;
;23 69 83	0C 1C 2C (vertically)                                                ;
;23 76 83	0D 1D 2D (vertically)                                                ;
;                                                                              ;
;Palette Mappings                                                              ;
;                                                                              ;
;23 E3 42	50 (2 times, horizontally)                                           ;
;23 EA 44	55 (4 times, horizontally)                                           ;
;23 F1 46	55 (6 times, horizontally)                                           ;
;23 F9 46	05 (6 times, horizontally)                                           ;
;FF                                                                            ;
.byt    $22,$4C,$08,$00,$01,$02,$03,$04; 0x2f $801F 22 4C 08 00 01 02 03 04    ;
.byt    $05,$06,$07,$22,$6C,$08,$10,$11; 0x37 $8027 05 06 07 22 6C 08 10 11    ;
.byt    $12,$13,$14,$15,$16,$17,$22,$8C; 0x3f $802F 12 13 14 15 16 17 22 8C    ;
.byt    $08,$20,$21,$22,$23,$24,$25,$26; 0x47 $8037 08 20 21 22 23 24 25 26    ;
.byt    $27,$22,$A9,$0E,$19,$08,$09,$30; 0x4f $803F 27 22 A9 0E 19 08 09 30    ;
.byt    $31,$32,$33,$34,$35,$36,$37,$0A; 0x57 $8047 31 32 33 34 35 36 37 0A    ;
.byt    $0B,$1A,$22,$C8,$83,$18,$28,$0E; 0x5f $804F 0B 1A 22 C8 83 18 28 0E    ;
.byt    $22,$C9,$0E,$29,$FF,$FF,$38,$FF; 0x67 $8057 22 C9 0E 29 FF FF 38 FF    ;
.byt    $FF,$1E,$1F,$FF,$FF,$39,$FF,$FF; 0x6f $805F FF 1E 1F FF FF 39 FF FF    ;
.byt    $2A,$22,$D7,$83,$1B,$2B,$0F,$22; 0x77 $8067 2A 22 D7 83 1B 2B 0F 22    ;
.byt    $E9,$4E,$FF,$23,$07,$83,$18,$28; 0x7f $806F E9 4E FF 23 07 83 18 28    ;
.byt    $0E,$23,$09,$4E,$FF,$23,$18,$83; 0x87 $8077 0E 23 09 4E FF 23 18 83    ;
.byt    $1B,$2B,$0F,$23,$28,$50,$FF,$23; 0x8f $807F 1B 2B 0F 23 28 50 FF 23    ;
.byt    $46,$83,$18,$28,$0E,$23,$48,$50; 0x97 $8087 46 83 18 28 0E 23 48 50    ;
.byt    $FF,$23,$59,$83,$1B,$2B,$0F,$23; 0x9f $808F FF 23 59 83 1B 2B 0F 23    ;
.byt    $67,$52,$FF,$23,$85,$82,$18,$28; 0xa7 $8097 67 52 FF 23 85 82 18 28    ;
.byt    $23,$87,$52,$FF,$23,$9A,$82,$1B; 0xaf $809F 23 87 52 FF 23 9A 82 1B    ;
.byt    $2B,$23,$A6,$54,$FF,$23,$69,$83; 0xb7 $80A7 2B 23 A6 54 FF 23 69 83    ;
.byt    $0C,$1C,$2C,$23,$76,$83,$0D,$1D; 0xbf $80AF 0C 1C 2C 23 76 83 0D 1D    ;
.byt    $2D,$23,$E3,$42,$50,$23,$EA,$44; 0xc7 $80B7 2D 23 E3 42 50 23 EA 44    ;
.byt    $55,$23,$F1,$46,$55,$23,$F9,$46; 0xcf $80BF 55 23 F1 46 55 23 F9 46    ;
.byt    $05,$FF                        ; 0xd7 $80C7 05 FF                      ;
bank0_Return_of_Ganon_screen_Palettes:                                          ;
;Return of Ganon screen Palettes (C bytes)                                     ;
;                                                                              ;
;3F 00 08	PPU Address 3F00, transfer 8 bytes                                   ;
;                                                                              ;
;16 30 0F 0F                                                                   ;
;16 30 27 0F                                                                   ;
;                                                                              ;
;FF	End Byte                                                                   ;
.byt    $3F,$00,$08,$16,$30,$0F,$0F,$16; 0xd9 $80C9 3F 00 08 16 30 0F 0F 16    ;
.byt    $30,$27,$0F,$FF                ; 0xe1 $80D1 30 27 0F FF                ;
North_Castle_Chandeliers_sprite_attributes:                                     ;
;7F = Left Flame Y Position (in pixels)                                        ;
;52 = Left Flame Tile Mapping (affects both tiles)                             ;
;01 = Left Flame Palette                                                       ;
;58 = X Position, but is hard-coded instead                                    ;
;                                                                              ;
;8F = Left Chandelier Y Position                                               ;
;7B = Left Chandelier Tile Mapping (affects both tiles)                        ;
;03 = Left Chandelier Palette                                                  ;
;58 = X Position, but is hard-coded instead                                    ;
;                                                                              ;
;7F = Right Flame Y Position (in pixels)                                       ;
;52 = Right Flame Tile Mapping (affects both tiles)                            ;
;01 = Right Flame Palette                                                      ;
;A0 = X Position, but is hard-coded instead                                    ;
;                                                                              ;
;8F = Right Chandelier Y Position (in pixels)                                  ;
;7B = Right Chandelier Tile Mapping (affects both tiles)                       ;
;03 = Right Chandelier Palette                                                 ;
;A0 = X Position, but is hard-coded instead                                    ;
.byt    $7F,$52,$01,$58,$8F,$7B,$03,$58; 0xe5 $80D5 7F 52 01 58 8F 7B 03 58    ;
.byt    $7F,$52,$01,$A0,$8F,$7B,$03,$A0; 0xed $80DD 7F 52 01 A0 8F 7B 03 A0    ;
; ---------------------------------------------------------------------------- ;
Chandeliers_in_North_Castle:                                                    ;
    LDA      $0707                     ; 0xf5 $80E5 AD 07 07                   ; Current World				0xF8	JMP $813F		;do jmp here and you can take all the space from 0xFB to 0x14C
    ORA      $0561                     ; 0xf8 $80E8 0D 61 05                   ; Area Code
    ORA      $0706                     ; 0xfb $80EB 0D 06 07                   ; Current Region
L80EE:                                                                          ;
    BNE      L813F                     ; 0xfe $80EE D0 4F                      ;
    LDX      #$0F                      ; 0x100 $80F0 A2 0F                     ; X = 0F
L80F2:                                                                          ;
    LDA      North_Castle_Chandeliers_sprite_attributes,x; 0x102 $80F2 BD D5 80    ; refer to table at $00D5
    STA      $0250,x                   ; 0x105 $80F5 9D 50 02                  ;
    DEX                                ; 0x108 $80F8 CA                        ;
    BPL      L80F2                     ; 0x109 $80F9 10 F7                     ; loop
    LDA      $12                       ; 0x10b $80FB A5 12                     ;; Frame Counter (ascending)
    AND      #$04                      ; 0x10d $80FD 29 04                     ; keep bits .... .x..
    BNE      L8109                     ; 0x10f $80FF D0 08                     ;
    LDA      #$41                      ; 0x111 $8101 A9 41                     ; A = 41
    STA      $0252                     ; 0x113 $8103 8D 52 02                  ;
    STA      $025A                     ; 0x116 $8106 8D 5A 02                  ;
L8109:                                                                          ;
    LDA      #$58                      ; 0x119 $8109 A9 58                     ; A = 58	Left Chandelier X Position
    SEC                                ; 0x11b $810B 38                        ;
    SBC      $072C                     ; 0x11c $810C ED 2C 07                  ;; Scrolling Offset Low Byte
    STA      $0253                     ; 0x11f $810F 8D 53 02                  ;
    STA      $0257                     ; 0x122 $8112 8D 57 02                  ;
    LDA      #$01                      ; 0x125 $8115 A9 01                     ; A = 01	High Byte of X Position
    SBC      $072A                     ; 0x127 $8117 ED 2A 07                  ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    BEQ      L8124                     ; 0x12a $811A F0 08                     ;
    LDA      #$F8                      ; 0x12c $811C A9 F8                     ; A = F8	Deactivate Sprite
    STA      $0250                     ; 0x12e $811E 8D 50 02                  ;
    STA      $0254                     ; 0x131 $8121 8D 54 02                  ;
L8124:                                                                          ;
    LDA      #$A0                      ; 0x134 $8124 A9 A0                     ; A = A0	Right Chandelier X Position
    SEC                                ; 0x136 $8126 38                        ;
    SBC      $072C                     ; 0x137 $8127 ED 2C 07                  ;; Scrolling Offset Low Byte
    STA      $025B                     ; 0x13a $812A 8D 5B 02                  ;
L812F     = * + $0002                                                          ;
    STA      $025F                     ; 0x13d $812D 8D 5F 02                  ;
    LDA      #$01                      ; 0x140 $8130 A9 01                     ; A = 01	High Byte of X Position
    SBC      $072A                     ; 0x142 $8132 ED 2A 07                  ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    BEQ      L813F                     ; 0x145 $8135 F0 08                     ;
    LDA      #$F8                      ; 0x147 $8137 A9 F8                     ; A = F8	Deactivate Sprite
    STA      $0258                     ; 0x149 $8139 8D 58 02                  ;
    STA      $025C                     ; 0x14c $813C 8D 5C 02                  ;
L813F:                                                                          ;
    RTS                                ; 0x14f $813F 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown1:                                                                 ;
    LDA      #$05                      ; 0x150 $8140 A9 05                     ; A = 05
    STA      $0725                     ; 0x152 $8142 8D 25 07                  ;; PPU Macro Selector	
    INC      $073D                     ; 0x155 $8145 EE 3D 07                  ;; Routine Index
    RTS                                ; 0x158 $8148 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Initialization_stuff:                                                           ;
    LDA      #$0F                      ; 0x159 $8149 A9 0F                     ; A = 0F
    JSR      ConfigureMMC1             ; 0x15b $814B 20 9D BF           ; Set Mapper Parameters at 0x8000
    LDA      #$10                      ; 0x15e $814E A9 10                     ; A = 10
    JSR      SwapCHR                   ; 0x160 $8150 20 B1 BF           ; Set Mapper Parameters at 0xA000
    JSR      bank7_Turn_Palaces_into_Stone_Bank_1; 0x163 $8153 20 1B E0            ;
    LDA      #$FC                      ; 0x166 $8156 A9 FC                     ; A = FC
    STA      $81                       ; 0x168 $8158 85 81                     ;
    LDA      #$04                      ; 0x16a $815A A9 04                     ; A = 04
    STA      $0562                     ; 0x16c $815C 8D 62 05                  ; Link's facing direction in OW (04 = down)
    LDA      $74                       ; 0x16f $815F A5 74                     ; X position in OW (square unit)
    SEC                                ; 0x171 $8161 38                        ;
    SBC      #$08                      ; 0x172 $8162 E9 08                     ; relative X offset
    STA      $76                       ; 0x174 $8164 85 76                     ;; X Position on OW (Link)
L8167     = * + $0001                                                          ;
    LDA      $73                       ; 0x176 $8166 A5 73                     ; Y position in OW (square unit)
    SEC                                ; 0x178 $8168 38                        ;
    SBC      #$0B                      ; 0x179 $8169 E9 0B                     ; relative Y offset
    STA      $75                       ; 0x17b $816B 85 75                     ;; Y Position on OW (Link)
    JSR      LDF01                     ; 0x17d $816D 20 01 DF                  ;
    LDA      $73                       ; 0x180 $8170 A5 73                     ; Y position in OW (square unit)
    SEC                                ; 0x182 $8172 38                        ;
    SBC      #$07                      ; 0x183 $8173 E9 07                     ;
    JSR      LDF3F                     ; 0x185 $8175 20 3F DF                  ;
    ASL                                ; 0x188 $8178 0A                        ;
    ASL                                ; 0x189 $8179 0A                        ;
    ASL                                ; 0x18a $817A 0A                        ;
L817B:                                                                          ;
    ASL                                ; 0x18b $817B 0A                        ;
    STA      $FC                       ; 0x18c $817C 85 FC                     ;
    LDA      $76                       ; 0x18e $817E A5 76                     ; X position on map (Link)
    ASL                                ; 0x190 $8180 0A                        ;
    ASL                                ; 0x191 $8181 0A                        ;
    ASL                                ; 0x192 $8182 0A                        ;
    ASL                                ; 0x193 $8183 0A                        ;
    STA      $FD                       ; 0x194 $8184 85 FD                     ;
    TYA                                ; 0x196 $8186 98                        ;
    ASL                                ; 0x197 $8187 0A                        ;
    AND      #$02                      ; 0x198 $8188 29 02                     ; keep bits .... ..x.
    STA      $0747                     ; 0x19a $818A 8D 47 07                  ;
    LDA      #$00                      ; 0x19d $818D A9 00                     ; A = 00
    STA      $7D                       ; 0x19f $818F 85 7D                     ;;number of pixels to move? automove? on overworld, only partially, causes bug
    STA      $7E                       ; 0x1a1 $8191 85 7E                     ;
    STA      $074C                     ; 0x1a3 $8193 8D 4C 07                  ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    STA      $70                       ; 0x1a6 $8196 85 70                     ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    STA      $80                       ; 0x1a8 $8198 85 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    STA      $0768                     ; 0x1aa $819A 8D 68 07                  ;;makes weird ppu effect
    LDA      #$17                      ; 0x1ad $819D A9 17                     ; A = 17
    STA      $71                       ; 0x1af $819F 85 71                     ; related to OW display
    LDA      #$0A                      ; 0x1b1 $81A1 A9 0A                     ; A = 0A
L81A3:                                                                          ;
    STA      $0725                     ; 0x1b3 $81A3 8D 25 07                  ;; PPU Macro Selector	
    INC      $0726                     ; 0x1b6 $81A6 EE 26 07                  ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    INC      $0736                     ; 0x1b9 $81A9 EE 36 07                  ;; Game Mode ; screen intro type
L81AC:                                                                          ;
    RTS                                ; 0x1bc $81AC 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Table_for_Raft_Speed_and_Sprite_Attributes:                                     ;
;01 = Raft Speed, going right                                                  ;
;FF = Raft Speed, going left                                                   ;
;40 = Sprite Attributes, going right (horizontal flip)                         ;
;00 = Sprite Attributes, going left                                            ;
.byt    $01                            ; 0x1bd $81AD 01                        ;
L81AE:                                                                          ;
.byt    $FF,$40,$00                    ; 0x1be $81AE FF 40 00                  ;
; ---------------------------------------------------------------------------- ;
bank0_unknown2:                                                                 ;
    JSR      L8222                     ; 0x1c1 $81B1 20 22 82                  ;
    JSR      L81F6                     ; 0x1c4 $81B4 20 F6 81                  ;
    BEQ      L81E5                     ; 0x1c7 $81B7 F0 2C                     ;
    CMP      #$F0                      ; 0x1c9 $81B9 C9 F0                     ;
    BCS      L81E5                     ; 0x1cb $81BB B0 28                     ;
L81BD:                                                                          ;
    JSR      L8728                     ; 0x1cd $81BD 20 28 87                  ;
    LDA      #$45                      ; 0x1d0 $81C0 A9 45                     ; A = 45 (raft, going left, left tile)
    STA      $0201                     ; 0x1d2 $81C2 8D 01 02                  ;; Animation frame for Link's OW sprite (part 2)
    LDA      #$47                      ; 0x1d5 $81C5 A9 47                     ; A = 47 (raft, going left, right tile)
    STA      $0205                     ; 0x1d7 $81C7 8D 05 02                  ;
    LDY      $07A9                     ; 0x1da $81CA AC A9 07                  ;; Raft Direction (1 = Going Right, 2 = Going Left)
    LDA      L81AE,y                   ; 0x1dd $81CD B9 AE 81                  ; refer to table $01AD (offset +1)
    STA      $0202                     ; 0x1e0 $81D0 8D 02 02                  ;
    STA      $0206                     ; 0x1e3 $81D3 8D 06 02                  ;
    CPY      #$01                      ; 0x1e6 $81D6 C0 01                     ;
    BNE      L81E4                     ; 0x1e8 $81D8 D0 0A                     ;
    LDA      #$47                      ; 0x1ea $81DA A9 47                     ; A = 47 (raft, going right, left tile)
    STA      $0201                     ; 0x1ec $81DC 8D 01 02                  ;; Animation frame for Link's OW sprite (part 2)
    LDA      #$45                      ; 0x1ef $81DF A9 45                     ; A = 45 (raft, going right, right tile)
    STA      $0205                     ; 0x1f1 $81E1 8D 05 02                  ;
L81E4:                                                                          ;
    RTS                                ; 0x1f4 $81E4 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L81E5:                                                                          ;
    INC      $0726                     ; 0x1f5 $81E5 EE 26 07                  ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    LDA      #$06                      ; 0x1f8 $81E8 A9 06                     ; A = 06
    STA      $0768                     ; 0x1fa $81EA 8D 68 07                  ;;makes weird ppu effect
    LDA      #$06                      ; 0x1fd $81ED A9 06                     ; A = 06
    STA      $0736                     ; 0x1ff $81EF 8D 36 07                  ;; Game Mode ; screen intro type
    STA      $07AA                     ; 0x202 $81F2 8D AA 07                  ;
    RTS                                ; 0x205 $81F5 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L81F6:                                                                          ;
    LDY      $07A9                     ; 0x206 $81F6 AC A9 07                  ;; Raft Direction (1 = Going Right, 2 = Going Left)
    STY      $0562                     ; 0x209 $81F9 8C 62 05                  ;;link facedir OverWorld		; Controller 1 Last Poll; Link's facing direction in OW		.... xxxx = up, down, left, right
    LDA      $81                       ; 0x20c $81FC A5 81                     ;
    CLC                                ; 0x20e $81FE 18                        ;
    ADC      L81AC,y                   ; 0x20f $81FF 79 AC 81                  ;
    STA      $81                       ; 0x212 $8202 85 81                     ;
L8204:                                                                          ;
    RTS                                ; 0x214 $8204 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown3:                                                                 ;
.byt    $80,$78                        ; 0x215 $8205 80 78                     ;
; ---------------------------------------------------------------------------- ;
bank0_unknown4:                                                                 ;
    INC      $80                       ; 0x217 $8207 E6 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    JSR      L81F6                     ; 0x219 $8209 20 F6 81                  ;
    JSR      L81BD                     ; 0x21c $820C 20 BD 81                  ;
    JSR      L8222                     ; 0x21f $820F 20 22 82                  ;
    LDY      $07A9                     ; 0x222 $8212 AC A9 07                  ;; Raft Direction (1 = Going Right, 2 = Going Left)
    LDX      L8204,y                   ; 0x225 $8215 BE 04 82                  ;
    CPX      $80                       ; 0x228 $8218 E4 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    BNE      L8221                     ; 0x22a $821A D0 05                     ;
    LDA      #$05                      ; 0x22c $821C A9 05                     ; A = 05
    STA      $0736                     ; 0x22e $821E 8D 36 07                  ;; Game Mode ; screen intro type
L8221:                                                                          ;
    RTS                                ; 0x231 $8221 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8222:                                                                          ;
    LDA      $12                       ; 0x232 $8222 A5 12                     ;; Frame Counter (ascending)
    AND      #$0F                      ; 0x234 $8224 29 0F                     ; keep bits .... xxxx
    BNE      L8221                     ; 0x236 $8226 D0 F9                     ; stupid branching
    RTS                                ; 0x238 $8228 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
tables_overworld_demons:                                                        ;
.byt    $58,$76,$98,$7A,$38,$74,$B8,$7C; 0x239 $8229 58 76 98 7A 38 74 B8 7C   ;Table for ? (8 bytes)
L8231:                                                                          ;
;Related to initial X/Y Positions of Demons                                    ;
;                                                                              ;
;11 = Top-Left of Screen                                                       ;
;CC = Bottom-Right of Screen                                                   ;
;                                                                              ;
;----                                                                          ;
;                                                                              ;
;0231: 00 05 04 06 07 08 0A	Table related to OW Demons (7 bytes)               ;
;0238: 00 01 01 00 01 00 00	Table related to OW Demons (7 bytes)               ;
;023F: 00 20 18 18 20 09 03	Table related to OW Demons (7 bytes)               ;
;0246: 00 0A 0A 18 18 30 30	Table related to OW Demons (7 bytes)               ;
;                                                                              ;
;Desert                                                                        ;
;Grass                                                                         ;
;Forest                                                                        ;
;Swamp                                                                         ;
;Graveyard                                                                     ;
;Road                                                                          ;
;Lava                                                                          ;
.byt    $00,$05,$04,$06,$07,$08,$0A    ; 0x241 $8231 00 05 04 06 07 08 0A      ;Table related to OW Demons (7 bytes)
L8238:                                                                          ;
.byt    $00,$01,$01,$00,$01,$00,$00    ; 0x248 $8238 00 01 01 00 01 00 00      ;Table related to OW Demons (7 bytes)
L823F:                                                                          ;
.byt    $00,$20,$18,$18,$20,$09,$03    ; 0x24f $823F 00 20 18 18 20 09 03      ;Table related to OW Demons (7 bytes)
L8246:                                                                          ;
.byt    $00,$0A,$0A,$18,$18,$30,$30    ; 0x256 $8246 00 0A 0A 18 18 30 30      ;Table related to OW Demons (7 bytes)
L824D:                                                                          ;
                                                                               ;
;024D: Table for ? (18 bytes)                                                  ;
.byt    $00,$60,$B0,$D0,$00,$60,$D0,$F0; 0x25d $824D 00 60 B0 D0 00 60 D0 F0   ;
.byt    $00,$60,$C0,$E0,$00,$50,$BB,$F0; 0x265 $8255 00 60 C0 E0 00 50 BB F0   ;
.byt    $00,$57,$D7,$F8,$00,$57,$D7,$FF; 0x26d $825D 00 57 D7 F8 00 57 D7 FF   ;
L8265:                                                                          ;
;0265: Table for Demon Type Probabilities (10 bytes)                           ;
;                                                                              ;
;01 02 01 01 01 01 01 02 02 01 02 01 01 03 01 03                               ;
;                                                                              ;
;01 = Weak Demon                                                               ;
;02 = Strong Demon                                                             ;
;03 = Fairy                                                                    ;
.byt    $01,$02,$01,$01,$01,$01,$01,$02; 0x275 $8265 01 02 01 01 01 01 01 02   ;
.byt    $02,$01,$02,$01,$01,$03,$01,$03; 0x27d $826D 02 01 02 01 01 03 01 03   ;
L8275:                                                                          ;
;0275: Table for Demons Tile Mappings (3 * 4 = C bytes)                        ;
;                                                                              ;
;4D 4F	Weak Demon - Frame 1                                                    ;
;51 53	Weak Demon - Frame 2                                                    ;
;49 4B	Strong Demon - Frame 1                                                  ;
;4B 49	Strong Demon - Frame 2                                                  ;
;81 83	Fairy - Frame 1                                                         ;
;85 87	Fairy - Frame 2                                                         ;
.byt    $4D                            ; 0x285 $8275 4D                        ;
L8276:                                                                          ;
.byt    $4F,$51,$53,$49,$4B,$4B,$49,$81; 0x286 $8276 4F 51 53 49 4B 4B 49 81   ;
.byt    $83,$85,$87                    ; 0x28e $827E 83 85 87                  ;
L8281:                                                                          ;
;0281: 02 02 03	Table for Demons Palette Codes (3 bytes)                       ;
;                                                                              ;
;02 = Weak Demon                                                               ;
;02 = Strong Demon                                                             ;
;03 = Fairy                                                                    ;
.byt    $02,$02,$03                    ; 0x291 $8281 02 02 03                  ;
; ---------------------------------------------------------------------------- ;
overworld1:                                                                     ;
    LDA      $0706                     ; 0x294 $8284 AD 06 07                  ; Current Region
    BNE      L828F                     ; 0x297 $8287 D0 06                     ;
    LDA      $73                       ; 0x299 $8289 A5 73                     ; Y Position on OW (square unit)
    CMP      #$3C                      ; 0x29b $828B C9 3C                     ; height that splits region's north and south
    BCC      L8293                     ; 0x29d $828D 90 04                     ;
L828F:                                                                          ;
    LDA      $26                       ; 0x29f $828F A5 26                     ;; Movement Tally - Increases as you walk in overworld.		; Shooting Star presence in Intro
    BEQ      L8298                     ; 0x2a1 $8291 F0 05                     ;
L8293:                                                                          ;
    LDA      $0516                     ; 0x2a3 $8293 AD 16 05                  ; Timer for Overworld Demons wave
    BNE      L82AF                     ; 0x2a6 $8296 D0 17                     ;
L8298:                                                                          ;
    LDA      $73                       ; 0x2a8 $8298 A5 73                     ; Link Y Position
    STA      $01                       ; 0x2aa $829A 85 01                     ;
    LDA      $74                       ; 0x2ac $829C A5 74                     ; Link X position
    STA      $00                       ; 0x2ae $829E 85 00                     ;
    JSR      bank7_Overworld_Boundaries__Mountain_or_Water_Bank_1; 0x2b0 $82A0 20 EF DF;
    LDA      $02                       ; 0x2b3 $82A3 A5 02                     ;
    LDY      #$06                      ; 0x2b5 $82A5 A0 06                     ; Y = 06
L82A7:                                                                          ;
    CMP      L8231,y                   ; 0x2b7 $82A7 D9 31 82                  ; refer to table at $0231
    BEQ      L82B0                     ; 0x2ba $82AA F0 04                     ;
    DEY                                ; 0x2bc $82AC 88                        ;
    BNE      L82A7                     ; 0x2bd $82AD D0 F8                     ;
L82AF:                                                                          ;
    RTS                                ; 0x2bf $82AF 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L82B0:                                                                          ;
    LDA      $26                       ; 0x2c0 $82B0 A5 26                     ;; Movement Tally - Increases as you walk in overworld.		; Shooting Star presence in Intro
    BEQ      L82BA                     ; 0x2c2 $82B2 F0 06                     ;
    LDA      L823F,y                   ; 0x2c4 $82B4 B9 3F 82                  ;
    STA      $0516                     ; 0x2c7 $82B7 8D 16 05                  ; Timer for Overworld Demons wave
L82BA:                                                                          ;
    LDA      $051C                     ; 0x2ca $82BA AD 1C 05                  ; Alternate randomizer
    AND      #$03                      ; 0x2cd $82BD 29 03                     ; keep bits .... ..xx
    STA      $00                       ; 0x2cf $82BF 85 00                     ;
    STY      $0B                       ; 0x2d1 $82C1 84 0B                     ;
    LDA      L8238,y                   ; 0x2d3 $82C3 B9 38 82                  ;
    ASL                                ; 0x2d6 $82C6 0A                        ;
    ASL                                ; 0x2d7 $82C7 0A                        ;
    ORA      #$03                      ; 0x2d8 $82C8 09 03                     ; set bits  .... ..xx
    STA      $09                       ; 0x2da $82CA 85 09                     ;
    LDX      #$07                      ; 0x2dc $82CC A2 07                     ; X = 07
    STX      $80                       ; 0x2de $82CE 86 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    LDA      #$03                      ; 0x2e0 $82D0 A9 03                     ; A = 03
    STA      $0A                       ; 0x2e2 $82D2 85 0A                     ;
    TYA                                ; 0x2e4 $82D4 98                        ;
    ASL                                ; 0x2e5 $82D5 0A                        ;
    ASL                                ; 0x2e6 $82D6 0A                        ;
    TAY                                ; 0x2e7 $82D7 A8                        ;
    DEY                                ; 0x2e8 $82D8 88                        ;
L82D9:                                                                          ;
    LDA      $051B                     ; 0x2e9 $82D9 AD 1B 05                  ; Randomizer
    CMP      L824D,y                   ; 0x2ec $82DC D9 4D 82                  ;
    BCS      L82E4                     ; 0x2ef $82DF B0 03                     ;
    DEY                                ; 0x2f1 $82E1 88                        ;
    BNE      L82D9                     ; 0x2f2 $82E2 D0 F5                     ;
L82E4:                                                                          ;
    TYA                                ; 0x2f4 $82E4 98                        ;
    AND      #$03                      ; 0x2f5 $82E5 29 03                     ; keep bits .... ..xx
    ASL                                ; 0x2f7 $82E7 0A                        ;
    ASL                                ; 0x2f8 $82E8 0A                        ;
    ORA      #$03                      ; 0x2f9 $82E9 09 03                     ; set bits  .... ..xx
    STA      $08                       ; 0x2fb $82EB 85 08                     ;
L82ED:                                                                          ;
    LDA      $82,x                     ; 0x2fd $82ED B5 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
    BEQ      L82F7                     ; 0x2ff $82EF F0 06                     ;
    DEC      $80                       ; 0x301 $82F1 C6 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    DEX                                ; 0x303 $82F3 CA                        ;
    BPL      L82ED                     ; 0x304 $82F4 10 F7                     ;
    RTS                                ; 0x306 $82F6 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L82F7:                                                                          ;
    LDA      $00                       ; 0x307 $82F7 A5 00                     ;
    CMP      $0A                       ; 0x309 $82F9 C5 0A                     ;
    BEQ      L8324                     ; 0x30b $82FB F0 27                     ;
    LDY      $09                       ; 0x30d $82FD A4 09                     ;
    LDA      tables_overworld_demons,y ; 0x30f $82FF B9 29 82                  ;
    AND      #$F0                      ; 0x312 $8302 29 F0                     ; keep bits xxxx ....
    CLC                                ; 0x314 $8304 18                        ;
    ADC      $7F                       ; 0x315 $8305 65 7F                     ;
    STA      $2A,x                     ; 0x317 $8307 95 2A                     ; Enemy Y Position
    LDA      tables_overworld_demons,y ; 0x319 $8309 B9 29 82                  ;
    ASL                                ; 0x31c $830C 0A                        ;
    ASL                                ; 0x31d $830D 0A                        ;
    ASL                                ; 0x31e $830E 0A                        ;
    ASL                                ; 0x31f $830F 0A                        ;
    CLC                                ; 0x320 $8310 18                        ;
    ADC      $FD                       ; 0x321 $8311 65 FD                     ;
    STA      $4E,x                     ; 0x323 $8313 95 4E                     ; Enemy X position (low byte)
    LDY      $0B                       ; 0x325 $8315 A4 0B                     ;
    LDA      L8246,y                   ; 0x327 $8317 B9 46 82                  ;
    STA      $050E,x                   ; 0x32a $831A 9D 0E 05                  ; Timer for Overworld Demon
    LDY      $08                       ; 0x32d $831D A4 08                     ;
    LDA      L8265,y                   ; 0x32f $831F B9 65 82                  ;
    STA      $82,x                     ; 0x332 $8322 95 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
L8324:                                                                          ;
    DEC      $08                       ; 0x334 $8324 C6 08                     ;
    DEC      $09                       ; 0x336 $8326 C6 09                     ;
    DEC      $0A                       ; 0x338 $8328 C6 0A                     ;
    BMI      L8331                     ; 0x33a $832A 30 05                     ;
    DEX                                ; 0x33c $832C CA                        ;
    STX      $80                       ; 0x33d $832D 86 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    BPL      L82ED                     ; 0x33f $832F 10 BC                     ;
L8331:                                                                          ;
    RTS                                ; 0x341 $8331 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8332:                                                                          ;
    LDX      #$07                      ; 0x342 $8332 A2 07                     ; X = 07
    STX      $80                       ; 0x344 $8334 86 80                     ; Current Animation Frame for Link
L8336:                                                                          ;
    LDA      $050E,x                   ; 0x346 $8336 BD 0E 05                  ; Timer for Overworld Demon
    BEQ      L833F                     ; 0x349 $8339 F0 04                     ;
    LDA      $82,x                     ; 0x34b $833B B5 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
    BNE      L8342                     ; 0x34d $833D D0 03                     ;
L833F:                                                                          ;
    JMP      L840B                     ; 0x34f $833F 4C 0B 84                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8342:                                                                          ;
    TXA                                ; 0x352 $8342 8A                        ;
    ASL                                ; 0x353 $8343 0A                        ;
    ASL                                ; 0x354 $8344 0A                        ;
    ASL                                ; 0x355 $8345 0A                        ;
    ASL                                ; 0x356 $8346 0A                        ;
    TAY                                ; 0x357 $8347 A8                        ;
    LDA      $2A,x                     ; 0x358 $8348 B5 2A                     ; Enemy Y Position
    CLC                                ; 0x35a $834A 18                        ;
    ADC      $056D,x                   ; 0x35b $834B 7D 6D 05                  ;
    STA      $2A,x                     ; 0x35e $834E 95 2A                     ; Enemy Y Position
    SEC                                ; 0x360 $8350 38                        ;
    SBC      $7F                       ; 0x361 $8351 E5 7F                     ;
    STA      $0280,y                   ; 0x363 $8353 99 80 02                  ;
    STA      $0284,y                   ; 0x366 $8356 99 84 02                  ;
    LDA      $4E,x                     ; 0x369 $8359 B5 4E                     ; Enemy X position
    CLC                                ; 0x36b $835B 18                        ;
    ADC      $0575,x                   ; 0x36c $835C 7D 75 05                  ;
    STA      $4E,x                     ; 0x36f $835F 95 4E                     ; Enemy X position
    SEC                                ; 0x371 $8361 38                        ;
    SBC      $FD                       ; 0x372 $8362 E5 FD                     ;
    STA      $0283,y                   ; 0x374 $8364 99 83 02                  ;
    CLC                                ; 0x377 $8367 18                        ;
L8368:                                                                          ;
    ADC      #$08                      ; 0x378 $8368 69 08                     ;
    STA      $0287,y                   ; 0x37a $836A 99 87 02                  ;
    TXA                                ; 0x37d $836D 8A                        ;
    PHA                                ; 0x37e $836E 48                        ;
    LDA      $12                       ; 0x37f $836F A5 12                     ;; Frame Counter (ascending)
    AND      #$08                      ; 0x381 $8371 29 08                     ; keep bits .... x...
    LSR                                ; 0x383 $8373 4A                        ;
    LSR                                ; 0x384 $8374 4A                        ;
    STA      $07                       ; 0x385 $8375 85 07                     ;
    LDA      $82,x                     ; 0x387 $8377 B5 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
    TAX                                ; 0x389 $8379 AA                        ;
    DEX                                ; 0x38a $837A CA                        ;
    LDA      L8281,x                   ; 0x38b $837B BD 81 82                  ;
    STA      $0282,y                   ; 0x38e $837E 99 82 02                  ;
    STA      $0286,y                   ; 0x391 $8381 99 86 02                  ;
    TXA                                ; 0x394 $8384 8A                        ;
    ASL                                ; 0x395 $8385 0A                        ;
    ASL                                ; 0x396 $8386 0A                        ;
    CLC                                ; 0x397 $8387 18                        ;
    ADC      $07                       ; 0x398 $8388 65 07                     ;
    TAX                                ; 0x39a $838A AA                        ;
    LDA      L8275,x                   ; 0x39b $838B BD 75 82                  ;
    STA      $0281,y                   ; 0x39e $838E 99 81 02                  ;
    LDA      L8276,x                   ; 0x3a1 $8391 BD 76 82                  ;
    STA      $0285,y                   ; 0x3a4 $8394 99 85 02                  ;
    PLA                                ; 0x3a7 $8397 68                        ;
    TAX                                ; 0x3a8 $8398 AA                        ;
    LDA      $07                       ; 0x3a9 $8399 A5 07                     ;
    BEQ      L83AB                     ; 0x3ab $839B F0 0E                     ;
    LDA      $82,x                     ; 0x3ad $839D B5 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
    CMP      #$02                      ; 0x3af $839F C9 02                     ;
L83A1:                                                                          ;
    BNE      L83AB                     ; 0x3b1 $83A1 D0 08                     ;
    LDA      #$42                      ; 0x3b3 $83A3 A9 42                     ; A = 42
    STA      $0282,y                   ; 0x3b5 $83A5 99 82 02                  ;
    STA      $0286,y                   ; 0x3b8 $83A8 99 86 02                  ;
L83AB:                                                                          ;
    LDA      $0280,y                   ; 0x3bb $83AB B9 80 02                  ;
    CMP      #$64                      ; 0x3be $83AE C9 64                     ;
    BCC      L83FD                     ; 0x3c0 $83B0 90 4B                     ;
    CMP      #$76                      ; 0x3c2 $83B2 C9 76                     ;
    BCS      L83FD                     ; 0x3c4 $83B4 B0 47                     ;
    LDA      $0283,y                   ; 0x3c6 $83B6 B9 83 02                  ;
    CMP      #$7A                      ; 0x3c9 $83B9 C9 7A                     ;
    BCC      L83FD                     ; 0x3cb $83BB 90 40                     ;
    CMP      #$86                      ; 0x3cd $83BD C9 86                     ;
    BCS      L83FD                     ; 0x3cf $83BF B0 3C                     ;
    LDA      $70                       ; 0x3d1 $83C1 A5 70                     ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    PHA                                ; 0x3d3 $83C3 48                        ;
    JSR      Blocked_by_Tile_or_Not_Routine; 0x3d4 $83C4 20 0F 87                  ;
    PLA                                ; 0x3d7 $83C7 68                        ;
    STA      $70                       ; 0x3d8 $83C8 85 70                     ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    LDX      $80                       ; 0x3da $83CA A6 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    BCS      L83FD                     ; 0x3dc $83CC B0 2F                     ;
L83CF     = * + $0001                                                          ;
    LDA      $0563                     ; 0x3de $83CE AD 63 05                  ; Type of terrain Link is facing in OW
    CMP      #$04                      ; 0x3e1 $83D1 C9 04                     ;
    BCC      L83FD                     ; 0x3e3 $83D3 90 28                     ;
    CMP      #$0D                      ; 0x3e5 $83D5 C9 0D                     ;
    BEQ      L83FD                     ; 0x3e7 $83D7 F0 24                     ;
    LDY      #$FF                      ; 0x3e9 $83D9 A0 FF                     ; Y = FF
    STY      $0748                     ; 0x3eb $83DB 8C 48 07                  ;; area location index (the index of the spot on the overworld that pulled you into the sideview)	; Overworld Area out of Side View
    INY                                ; 0x3ee $83DE C8                        ;
    STY      $075A                     ; 0x3ef $83DF 8C 5A 07                  ;
    LDA      #$01                      ; 0x3f2 $83E2 A9 01                     ; A = 01
    LDY      $82,x                     ; 0x3f4 $83E4 B4 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
    CPY      #$03                      ; 0x3f6 $83E6 C0 03                     ;
    BEQ      L83EE                     ; 0x3f8 $83E8 F0 04                     ;
    STY      $075A                     ; 0x3fa $83EA 8C 5A 07                  ;
    LSR                                ; 0x3fd $83ED 4A                        ;
L83EE:                                                                          ;
    STA      $0759                     ; 0x3fe $83EE 8D 59 07                  ;; if not 0, cause fairy spawn at next encounter (??)
    PLA                                ; 0x401 $83F1 68                        ;
    PLA                                ; 0x402 $83F2 68                        ;
    LDA      #$02                      ; 0x403 $83F3 A9 02                     ; A = 02
    STA      $EE                       ; 0x405 $83F5 85 EE                     ; Sound Effects Type 3
    INC      $07AC                     ; 0x407 $83F7 EE AC 07                  ;
;00 = Nothing happens, music goes on                                           ;
;01 = Fall in a hole                                                           ;
;02 = Demon hit                                                                ;
;04 = Out of an area                                                           ;
    JMP      L85D5                     ; 0x40a $83FA 4C D5 85                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L83FD:                                                                          ;
    LDA      $0280,y                   ; 0x40d $83FD B9 80 02                  ;
    CMP      #$F8                      ; 0x410 $8400 C9 F8                     ;
    BCS      L840B                     ; 0x412 $8402 B0 07                     ;
    LDA      $0283,y                   ; 0x414 $8404 B9 83 02                  ;
    CMP      #$F8                      ; 0x417 $8407 C9 F8                     ;
L8409:                                                                          ;
    BCC      L8412                     ; 0x419 $8409 90 07                     ;
L840B:                                                                          ;
    LDA      #$00                      ; 0x41b $840B A9 00                     ; A = 00
    STA      $82,x                     ; 0x41d $840D 95 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
    STA      $050E,x                   ; 0x41f $840F 9D 0E 05                  ;; Timer for Overworld Demon
L8412:                                                                          ;
    DEX                                ; 0x422 $8412 CA                        ;
    STX      $80                       ; 0x423 $8413 86 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    BMI      L841A                     ; 0x425 $8415 30 03                     ;
    JMP      L8336                     ; 0x427 $8417 4C 36 83                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L841A:                                                                          ;
    RTS                                ; 0x42a $841A 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L841B:                                                                          ;
    LDA      $12                       ; 0x42b $841B A5 12                     ;; Frame Counter (ascending)
    AND      #$0F                      ; 0x42d $841D 29 0F                     ; keep bits .... xxxx
    BNE      L8432                     ; 0x42f $841F D0 11                     ;
    LDX      #$07                      ; 0x431 $8421 A2 07                     ; X = 07
L8423:                                                                          ;
    LDA      #$00                      ; 0x433 $8423 A9 00                     ; A = 00
    STA      $056D,x                   ; 0x435 $8425 9D 6D 05                  ;
    STA      $0575,x                   ; 0x438 $8428 9D 75 05                  ;
    LDA      $82,x                     ; 0x43b $842B B5 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
    BNE      L8435                     ; 0x43d $842D D0 06                     ;
L842F:                                                                          ;
    DEX                                ; 0x43f $842F CA                        ;
    BPL      L8423                     ; 0x440 $8430 10 F1                     ;
L8432:                                                                          ;
    JMP      L8332                     ; 0x442 $8432 4C 32 83                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8435:                                                                          ;
    LDA      $82,x                     ; 0x445 $8435 B5 82                     ;; Demon Type (1 = Weak, 2 = Strong, 3 = Fairy) (OW)
    CMP      #$03                      ; 0x447 $8437 C9 03                     ;
    BCS      L8488                     ; 0x449 $8439 B0 4D                     ;
    LDA      $12                       ; 0x44b $843B A5 12                     ;; Frame Counter (ascending)
    CMP      #$40                      ; 0x44d $843D C9 40                     ;
    BCC      L8488                     ; 0x44f $843F 90 47                     ;
    LDA      #$70                      ; 0x451 $8441 A9 70                     ; A = 70
    SBC      $2A,x                     ; 0x453 $8443 F5 2A                     ; Enemy Y Position
    CLC                                ; 0x455 $8445 18                        ;
    ADC      $7F                       ; 0x456 $8446 65 7F                     ;
    CLC                                ; 0x458 $8448 18                        ;
    ADC      #$10                      ; 0x459 $8449 69 10                     ;
    CMP      #$20                      ; 0x45b $844B C9 20                     ;
    BCS      L8464                     ; 0x45d $844D B0 15                     ;
    LDY      #$01                      ; 0x45f $844F A0 01                     ; Y = 01
    LDA      $4E,x                     ; 0x461 $8451 B5 4E                     ; Enemy X position
    SEC                                ; 0x463 $8453 38                        ;
    SBC      $FD                       ; 0x464 $8454 E5 FD                     ;
    CMP      $0203                     ; 0x466 $8456 CD 03 02                  ;
    BCC      L845D                     ; 0x469 $8459 90 02                     ;
    LDY      #$FF                      ; 0x46b $845B A0 FF                     ; Y = FF
L845D:                                                                          ;
    TYA                                ; 0x46d $845D 98                        ;
    STA      $0575,x                   ; 0x46e $845E 9D 75 05                  ;
    JMP      L842F                     ; 0x471 $8461 4C 2F 84                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8464:                                                                          ;
    LDA      $0203                     ; 0x474 $8464 AD 03 02                  ;
    SEC                                ; 0x477 $8467 38                        ;
    SBC      $4E,x                     ; 0x478 $8468 F5 4E                     ;; Enemy X Position (low byte)
    CLC                                ; 0x47a $846A 18                        ;
    ADC      $FD                       ; 0x47b $846B 65 FD                     ;
    CLC                                ; 0x47d $846D 18                        ;
    ADC      #$10                      ; 0x47e $846E 69 10                     ;
L8470:                                                                          ;
    CMP      #$20                      ; 0x480 $8470 C9 20                     ;
    BCS      L8488                     ; 0x482 $8472 B0 14                     ;
    LDY      #$01                      ; 0x484 $8474 A0 01                     ; Y = 01
    LDA      $2A,x                     ; 0x486 $8476 B5 2A                     ;; Enemy Y Position
    SEC                                ; 0x488 $8478 38                        ;
    SBC      $7F                       ; 0x489 $8479 E5 7F                     ;
    CMP      #$70                      ; 0x48b $847B C9 70                     ;
    BCC      L8481                     ; 0x48d $847D 90 02                     ;
    LDY      #$FF                      ; 0x48f $847F A0 FF                     ; Y = FF
L8481:                                                                          ;
    TYA                                ; 0x491 $8481 98                        ;
    STA      $056D,x                   ; 0x492 $8482 9D 6D 05                  ;
    JMP      L842F                     ; 0x495 $8485 4C 2F 84                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8488:                                                                          ;
    LDY      #$01                      ; 0x498 $8488 A0 01                     ; Y = 01
    LDA      $051B,x                   ; 0x49a $848A BD 1B 05                  ;; Randomizer
    BPL      L8491                     ; 0x49d $848D 10 02                     ;
    LDY      #$FF                      ; 0x49f $848F A0 FF                     ; Y = FF
L8491:                                                                          ;
    AND      #$04                      ; 0x4a1 $8491 29 04                     ; keep bits .... .x..
    BNE      L84A1                     ; 0x4a3 $8493 D0 0C                     ;
    TYA                                ; 0x4a5 $8495 98                        ;
    STA      $056D,x                   ; 0x4a6 $8496 9D 6D 05                  ;
    CLC                                ; 0x4a9 $8499 18                        ;
    ADC      $2A,x                     ; 0x4aa $849A 75 2A                     ;; Enemy Y Position
    STA      $2A,x                     ; 0x4ac $849C 95 2A                     ;; Enemy Y Position
    JMP      L842F                     ; 0x4ae $849E 4C 2F 84                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L84A1:                                                                          ;
    TYA                                ; 0x4b1 $84A1 98                        ;
    STA      $0575,x                   ; 0x4b2 $84A2 9D 75 05                  ;
    CLC                                ; 0x4b5 $84A5 18                        ;
    ADC      $4E,x                     ; 0x4b6 $84A6 75 4E                     ;; Enemy X Position (low byte)
    STA      $4E,x                     ; 0x4b8 $84A8 95 4E                     ;; Enemy X Position (low byte)
    JMP      L842F                     ; 0x4ba $84AA 4C 2F 84                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Table_for_Hammer_tile_XY_offset:                                                ;
.byt    $00,$01,$FF,$00,$00,$00,$00,$00; 0x4bd $84AD 00 01 FF 00 00 00 00 00   ;Table for Hammer tile X offset (9 bytes)
.byt    $00                            ; 0x4c5 $84B5 00                        ;
L84B6:                                                                          ;
.byt    $00,$00,$00,$00,$01,$00,$00,$00; 0x4c6 $84B6 00 00 00 00 01 00 00 00   ;Table for Hammer tile Y offset (9 bytes)
.byt    $FF                            ; 0x4ce $84BE FF                        ;
; ---------------------------------------------------------------------------- ;
overworld2:                                                                     ;
    LDY      $0562                     ; 0x4cf $84BF AC 62 05                  ; Link's facing direction in OW
    LDA      $73                       ; 0x4d2 $84C2 A5 73                     ; Y position on map (square unit)
    CLC                                ; 0x4d4 $84C4 18                        ;
    ADC      L84B6,y                   ; 0x4d5 $84C5 79 B6 84                  ;
    STA      $75                       ; 0x4d8 $84C8 85 75                     ; Y position on map (Link)
    STA      $01                       ; 0x4da $84CA 85 01                     ;
    LDA      $74                       ; 0x4dc $84CC A5 74                     ; X position on map (square unit)
    CLC                                ; 0x4de $84CE 18                        ;
    ADC      Table_for_Hammer_tile_XY_offset,y; 0x4df $84CF 79 AD 84               ;
    STA      $76                       ; 0x4e2 $84D2 85 76                     ; X position on map (Link)
    JSR      L8A0D                     ; 0x4e4 $84D4 20 0D 8A                  ;
L84D8     = * + $0001                                                          ;
    LDA      $0568                     ; 0x4e7 $84D7 AD 68 05                  ; if 0, flute is not playing ?
    BEQ      bank0_A_Button_in_Overworld_Hammer; 0x4ea $84DA F0 16                 ;
    LDA      $0567                     ; 0x4ec $84DC AD 67 05                  ;; Related to Flute in Overworld		TIMER: can't move on overworld while this occurs
    BNE      L84F1                     ; 0x4ef $84DF D0 10                     ;
    LDA      $74                       ; 0x4f1 $84E1 A5 74                     ; X position on map (square unit)
    STA      $00                       ; 0x4f3 $84E3 85 00                     ;
    LDA      $73                       ; 0x4f5 $84E5 A5 73                     ; Y position on map (square unit)
    STA      $01                       ; 0x4f7 $84E7 85 01                     ;
    JSR      bank7_Check_for_Hidden_Palace_spot_Bank_1; 0x4f9 $84E9 20 F8 DF       ;
    LDA      #$00                      ; 0x4fc $84EC A9 00                     ; A = 00
    STA      $0568                     ; 0x4fe $84EE 8D 68 05                  ;; Related to Flute in Overworld
L84F1:                                                                          ;
    RTS                                ; 0x501 $84F1 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_A_Button_in_Overworld_Hammer:                                             ;
    LDA      $F5                       ; 0x502 $84F2 A5 F5                     ; Controller 1 buttons pressed
    AND      #$80                      ; 0x504 $84F4 29 80                     ; keep bits x... .... (button A pressed)
    BEQ      bank0_B_Button_in_Overworld_Flute; 0x506 $84F6 F0 1A                  ;
    LDA      $0563                     ; 0x508 $84F8 AD 63 05                  ; Type of terrain Link is facing
    CMP      #$0E                      ; 0x50b $84FB C9 0E                     ; Terrain Type E = Rock
    BEQ      L8503                     ; 0x50d $84FD F0 04                     ;
L8500     = * + $0001                                                          ;
    CMP      #$06                      ; 0x50f $84FF C9 06                     ; Terrain Type 6 = Forest
L8501:                                                                          ;
    BNE      bank0_B_Button_in_Overworld_Flute; 0x511 $8501 D0 0F                  ;
L8503:                                                                          ;
    LDA      $078B                     ; 0x513 $8503 AD 8B 07                  ; Have Hammer ?
    BEQ      bank0_B_Button_in_Overworld_Flute; 0x516 $8506 F0 0A                  ;
L8508:                                                                          ;
L8509     = * + $0001                                                          ;
    LDA      #$04                      ; 0x518 $8508 A9 04                     ; A = 04
    STA      $ED                       ; 0x51a $850A 85 ED                     ; Sound Effects Type 2
L850C:                                                                          ;
    JSR      LE024                     ; 0x51c $850C 20 24 E0                  ;
    JMP      LDFD2                     ; 0x51f $850F 4C D2 DF                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_B_Button_in_Overworld_Flute:                                              ;
    LDA      $F5                       ; 0x522 $8512 A5 F5                     ;; Controller 1 Buttons Pressed
    AND      #$40                      ; 0x524 $8514 29 40                     ; keep bits .x.. .... (B Button pressed)
    BEQ      L8527                     ; 0x526 $8516 F0 0F                     ;
L851A     = * + $0002                                                          ;
    LDA      $0789                     ; 0x528 $8518 AD 89 07                  ; Have Flute?
L851B:                                                                          ;
L851C     = * + $0001                                                          ;
    BEQ      L8527                     ; 0x52b $851B F0 0A                     ; if Not, skip (return)
L851E     = * + $0001                                                          ;
    LDA      #$08                      ; 0x52d $851D A9 08                     ; A = 08
L851F:                                                                          ;
L8520     = * + $0001                                                          ;
    STA      $EC                       ; 0x52f $851F 85 EC                     ; Sound Effects Type 1
L8521:                                                                          ;
L8522     = * + $0001                                                          ;
L8523     = * + $0002                                                          ;
    STA      $0567                     ; 0x531 $8521 8D 67 05                  ;; Related to Flute in Overworld		TIMER: can't move on overworld while this occurs
    STA      $0568                     ; 0x534 $8524 8D 68 05                  ;; Related to Flute in Overworld
L8527:                                                                          ;
    RTS                                ; 0x537 $8527 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LOCATION_OF_THE_RAFT_SPOT:                                                      ;
.byt    $3D,$07                        ; 0x538 $8528 3D 07                     ;Table for X Position of both Docks (2 bytes)
L852A:                                                                          ;
.byt    $4D,$34                        ; 0x53a $852A 4D 34                     ;Table for Y Position of both Docks (2 bytes)
bank0_unknown5:                                                                 ;
.byt    $34,$20,$40,$62,$36,$24,$59,$5B; 0x53c $852C 34 20 40 62 36 24 59 5B   ;
.byt    $4B,$4C,$17,$3E,$0B,$39,$2E,$02; 0x544 $8534 4B 4C 17 3E 0B 39 2E 02   ;
.byt    $08,$08,$3C,$15,$FF,$3A,$3C,$66; 0x54c $853C 08 08 3C 15 FF 3A 3C 66   ;
.byt    $49,$3C,$21,$63,$51,$FF,$FF,$3C; 0x554 $8544 49 3C 21 63 51 FF FF 3C   ;
.byt    $3E,$2D,$04,$17,$03,$22,$3D    ; 0x55c $854C 3E 2D 04 17 03 22 3D      ;
L8553:                                                                          ;
.byt    $FF,$43                        ; 0x563 $8553 FF 43                     ;
L8555:                                                                          ;
.byt    $28,$28,$34                    ; 0x565 $8555 28 28 34                  ;
; ---------------------------------------------------------------------------- ;
overworld3:                                                                     ;
    LDA      #$00                      ; 0x568 $8558 A9 00                     ; A = 00
    STA      $07AC                     ; 0x56a $855A 8D AC 07                  ;
    STA      $07AD                     ; 0x56d $855D 8D AD 07                  ;; * related to Raft Animation *
    INC      $0729                     ; 0x570 $8560 EE 29 07                  ;
    JSR      overworld1                ; 0x573 $8563 20 84 82                  ;
    JSR      L841B                     ; 0x576 $8566 20 1B 84                  ;
    JSR      L8726                     ; 0x579 $8569 20 26 87                  ;
    LDA      $7D                       ; 0x57c $856C A5 7D                     ;;number of pixels to move? automove? on overworld, only partially, causes bug
    BEQ      L8573                     ; 0x57e $856E F0 03                     ;
    JMP      L86AF                     ; 0x580 $8570 4C AF 86                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8573:                                                                          ;
    JSR      overworld2                ; 0x583 $8573 20 BF 84                  ;
    LDA      $70                       ; 0x586 $8576 A5 70                     ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    BNE      Check_if_Link_stepped_on_a_Key_Area; 0x588 $8578 D0 03                ;
    JMP      L8601                     ; 0x58a $857A 4C 01 86                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Check_if_Link_stepped_on_a_Key_Area:                                            ;
    JSR      L8A07                     ; 0x58d $857D 20 07 8A                  ;
    LDX      #$3D                      ; 0x590 $8580 A2 3D                     ; X = 3D
L8582:                                                                          ;
    LDA      $6A00,x                   ; 0x592 $8582 BD 00 6A                  ; Area Byte 0 (Y Position)
    AND      #$7F                      ; 0x595 $8585 29 7F                     ; keep bits .xxx xxxx
    CMP      $73                       ; 0x597 $8587 C5 73                     ; Y position on map (square unit)
    BNE      L8594                     ; 0x599 $8589 D0 09                     ;
    LDA      $6A3F,x                   ; 0x59b $858B BD 3F 6A                  ; Area Byte 1 (X Position)
    AND      #$3F                      ; 0x59e $858E 29 3F                     ; keep bits ..xx xxxx
    CMP      $74                       ; 0x5a0 $8590 C5 74                     ; X position on map (square unit)
    BEQ      L8599                     ; 0x5a2 $8592 F0 05                     ;
L8594:                                                                          ;
    DEX                                ; 0x5a4 $8594 CA                        ;
    BPL      L8582                     ; 0x5a5 $8595 10 EB                     ; loop for each Key Area
    BMI      L8601                     ; 0x5a7 $8597 30 68                     ;
L8599:                                                                          ;
    CPX      #$29                      ; 0x5a9 $8599 E0 29                     ; Check for Dock square unit ID (West Hyrule)
    BNE      L85A9                     ; 0x5ab $859B D0 0C                     ;
    LDA      $0706                     ; 0x5ad $859D AD 06 07                  ; Current Region
L85A1     = * + $0001                                                          ;
    CMP      #$01                      ; 0x5b0 $85A0 C9 01                     ; Check if in East Hyrule
    BEQ      L85A9                     ; 0x5b2 $85A2 F0 05                     ;
    LDA      $0787                     ; 0x5b4 $85A4 AD 87 07                  ; Have Raft ?
    BEQ      L8601                     ; 0x5b7 $85A7 F0 58                     ;
L85A9:                                                                          ;
    STX      $0748                     ; 0x5b9 $85A9 8E 48 07                  ; 8E -> 8D (danger area between raft travels)
    LDX      #$01                      ; 0x5bc $85AC A2 01                     ; X = 01
L85AE:                                                                          ;
    LDA      $74                       ; 0x5be $85AE A5 74                     ; X position on map (square unit)
    CMP      LOCATION_OF_THE_RAFT_SPOT,x; 0x5c0 $85B0 DD 28 85                  ;
    BNE      L85D2                     ; 0x5c3 $85B3 D0 1D                     ;
    LDA      $73                       ; 0x5c5 $85B5 A5 73                     ; Y position on map (square unit)
    CMP      L852A,x                   ; 0x5c7 $85B7 DD 2A 85                  ;
    BNE      L85D2                     ; 0x5ca $85BA D0 16                     ;
    INX                                ; 0x5cc $85BC E8                        ;
    STX      $07A9                     ; 0x5cd $85BD 8E A9 07                  ; affects direction (and speed) of raft travel
    LDA      #$C0                      ; 0x5d0 $85C0 A9 C0                     ; A = C0 (used for sound AND initial X Pos.)
    STA      $EC                       ; 0x5d2 $85C2 85 EC                     ; Sound Effects Type 1
    ASL                                ; 0x5d4 $85C4 0A                        ; A -> 80
    STA      $81                       ; 0x5d5 $85C5 85 81                     ; X Position of Raft (in that case)
    ASL                                ; 0x5d7 $85C7 0A                        ; A -> 00
    STA      $0729                     ; 0x5d8 $85C8 8D 29 07                  ;
    LDA      #$17                      ; 0x5db $85CB A9 17                     ; A = 17
    STA      $0736                     ; 0x5dd $85CD 8D 36 07                  ; Game Mode
    BNE      L85FB                     ; 0x5e0 $85D0 D0 29                     ;
L85D2:                                                                          ;
    DEX                                ; 0x5e2 $85D2 CA                        ;
    BPL      L85AE                     ; 0x5e3 $85D3 10 D9                     ; loop for both Docks
L85D5:                                                                          ;
    LDY      $0706                     ; 0x5e5 $85D5 AC 06 07                  ; Current Region (0 = West Hyrule, 1 = East)
    BEQ      L85EB                     ; 0x5e8 $85D8 F0 11                     ;
    LDA      $73                       ; 0x5ea $85DA A5 73                     ; Y position on map (square unit)
    CMP      L8553,y                   ; 0x5ec $85DC D9 53 85                  ;
    BNE      L85EB                     ; 0x5ef $85DF D0 0A                     ;
    LDA      $74                       ; 0x5f1 $85E1 A5 74                     ; X position on map (square unit)
    CMP      L8555,y                   ; 0x5f3 $85E3 D9 55 85                  ;
    BNE      L85EB                     ; 0x5f6 $85E6 D0 03                     ;
    STA      $07AD                     ; 0x5f8 $85E8 8D AD 07                  ;; * related to Raft Animation *
L85EB:                                                                          ;
    LDA      #$00                      ; 0x5fb $85EB A9 00                     ; A = 00
    STA      $0729                     ; 0x5fd $85ED 8D 29 07                  ;
    INC      $0726                     ; 0x600 $85F0 EE 26 07                  ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    INC      $0736                     ; 0x603 $85F3 EE 36 07                  ; Game Mode
    LDA      #$06                      ; 0x606 $85F6 A9 06                     ; A = 06
    STA      $0768                     ; 0x608 $85F8 8D 68 07                  ;;makes weird ppu effect
L85FB:                                                                          ;
    LDA      #$00                      ; 0x60b $85FB A9 00                     ; A = 00
    STA      $074C                     ; 0x60d $85FD 8D 4C 07                  ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
L8600:                                                                          ;
    RTS                                ; 0x610 $8600 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8601:                                                                          ;
    LDA      $F7                       ; 0x611 $8601 A5 F7                     ; Controller 1 buttons held
    AND      #$0F                      ; 0x613 $8603 29 0F                     ; keep bits .... xxxx (Arrows All Directions)
    BEQ      L8600                     ; 0x615 $8605 F0 F9                     ;
    STA      $70                       ; 0x617 $8607 85 70                     ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    LSR                                ; 0x619 $8609 4A                        ;
    BCC      L863A                     ; 0x61a $860A 90 2E                     ;
    LDA      #$01                      ; 0x61c $860C A9 01                     ; A = 01
    STA      $0562                     ; 0x61e $860E 8D 62 05                  ; Link's facing direction in OW (01 = right)
    INC      $74                       ; 0x621 $8611 E6 74                     ; X position on map (square unit) +1; don't add 1 yet...
    JSR      Blocked_by_Tile_or_Not_Routine; 0x623 $8613 20 0F 87                  ; Blocked by Tile or Not...
    BCC      L861B                     ; 0x626 $8616 90 03                     ; reverse the condition branch
    DEC      $74                       ; 0x628 $8618 C6 74                     ; if Blocked, X position -1 (cancel move)
    RTS                                ; 0x62a $861A 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L861B:                                                                          ;
    LDA      $74                       ; 0x62b $861B A5 74                     ; X position on map (square unit)
    ADC      #$07                      ; 0x62d $861D 69 07                     ;
L861F:                                                                          ;
    STA      $76                       ; 0x62f $861F 85 76                     ; X position on map (Link)
    LDA      $73                       ; 0x631 $8621 A5 73                     ; Y position on map (square unit)
    SEC                                ; 0x633 $8623 38                        ;
    SBC      #$0B                      ; 0x634 $8624 E9 0B                     ;
    STA      $75                       ; 0x636 $8626 85 75                     ; Y position on map (Link)
    JSR      LDF01                     ; 0x638 $8628 20 01 DF                  ;
    LDA      $77                       ; 0x63b $862B A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    LSR                                ; 0x63d $862D 4A                        ;
    BCC      L8637                     ; 0x63e $862E 90 07                     ;
    DEC      $75                       ; 0x640 $8630 C6 75                     ; Y position on map (Link)
    LDA      $75                       ; 0x642 $8632 A5 75                     ;; Y Position on OW (Link)
    JSR      LDF01                     ; 0x644 $8634 20 01 DF                  ;
L8637:                                                                          ;
    JMP      L86AF                     ; 0x647 $8637 4C AF 86                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L863A:                                                                          ;
    LSR                                ; 0x64a $863A 4A                        ;
    BCC      L866B                     ; 0x64b $863B 90 2E                     ;
    LDA      #$02                      ; 0x64d $863D A9 02                     ; A = 02
    STA      $0562                     ; 0x64f $863F 8D 62 05                  ; Link's facing direction in OW (02 = left)
    DEC      $74                       ; 0x652 $8642 C6 74                     ; X position on map (square unit) -1
    JSR      Blocked_by_Tile_or_Not_Routine; 0x654 $8644 20 0F 87                  ; Blocked by Tile or Not...
L8647:                                                                          ;
    BCC      L864C                     ; 0x657 $8647 90 03                     ;
    INC      $74                       ; 0x659 $8649 E6 74                     ; if Blocked, X position +1 (cancel move)
    RTS                                ; 0x65b $864B 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L864C:                                                                          ;
    LDA      $74                       ; 0x65c $864C A5 74                     ; X position on map (square unit)
    SBC      #$07                      ; 0x65e $864E E9 07                     ;
    STA      $76                       ; 0x660 $8650 85 76                     ;; X Position on OW (Link)
    LDA      $73                       ; 0x662 $8652 A5 73                     ;; Overworld Y; Y Position on OW (square unit)
    SEC                                ; 0x664 $8654 38                        ;
    SBC      #$0B                      ; 0x665 $8655 E9 0B                     ;
    STA      $75                       ; 0x667 $8657 85 75                     ;; Y Position on OW (Link)
    JSR      LDF01                     ; 0x669 $8659 20 01 DF                  ;
    LDA      $77                       ; 0x66c $865C A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    LSR                                ; 0x66e $865E 4A                        ;
    BCC      L8668                     ; 0x66f $865F 90 07                     ;
    DEC      $75                       ; 0x671 $8661 C6 75                     ;; Y Position on OW (Link)
    LDA      $75                       ; 0x673 $8663 A5 75                     ;; Y Position on OW (Link)
    JSR      LDF01                     ; 0x675 $8665 20 01 DF                  ;
L8668:                                                                          ;
    JMP      L86AF                     ; 0x678 $8668 4C AF 86                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L866B:                                                                          ;
    LSR                                ; 0x67b $866B 4A                        ;
    BCC      L8690                     ; 0x67c $866C 90 22                     ;
    LDA      #$04                      ; 0x67e $866E A9 04                     ; A = 04
    STA      $0562                     ; 0x680 $8670 8D 62 05                  ;;link facedir OverWorld		; Controller 1 Last Poll; Link's facing direction in OW		.... xxxx = up, down, left, right
    INC      $73                       ; 0x683 $8673 E6 73                     ;; Overworld Y; Y Position on OW (square unit)
    JSR      Blocked_by_Tile_or_Not_Routine; 0x685 $8675 20 0F 87                  ;
    BCC      L867D                     ; 0x688 $8678 90 03                     ;
    DEC      $73                       ; 0x68a $867A C6 73                     ;; Overworld Y; Y Position on OW (square unit)
    RTS                                ; 0x68c $867C 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L867D:                                                                          ;
    LDA      $74                       ; 0x68d $867D A5 74                     ;; Overworld X; X Position on OW (square unit)
    SBC      #$07                      ; 0x68f $867F E9 07                     ;
    STA      $76                       ; 0x691 $8681 85 76                     ;; X Position on OW (Link)
    LDA      $73                       ; 0x693 $8683 A5 73                     ;; Overworld Y; Y Position on OW (square unit)
    CLC                                ; 0x695 $8685 18                        ;
    ADC      #$0B                      ; 0x696 $8686 69 0B                     ;
    STA      $75                       ; 0x698 $8688 85 75                     ;; Y Position on OW (Link)
    JSR      LDF01                     ; 0x69a $868A 20 01 DF                  ;
    JMP      L86AF                     ; 0x69d $868D 4C AF 86                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8690:                                                                          ;
    LDA      #$08                      ; 0x6a0 $8690 A9 08                     ; A = 08
    STA      $0562                     ; 0x6a2 $8692 8D 62 05                  ;;link facedir OverWorld		; Controller 1 Last Poll; Link's facing direction in OW		.... xxxx = up, down, left, right
    DEC      $73                       ; 0x6a5 $8695 C6 73                     ;; Overworld Y; Y Position on OW (square unit)
    JSR      Blocked_by_Tile_or_Not_Routine; 0x6a7 $8697 20 0F 87                  ;
    BCC      L869F                     ; 0x6aa $869A 90 03                     ;
    INC      $73                       ; 0x6ac $869C E6 73                     ;; Overworld Y; Y Position on OW (square unit)
L869E:                                                                          ;
    RTS                                ; 0x6ae $869E 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L869F:                                                                          ;
    LDA      $74                       ; 0x6af $869F A5 74                     ;; Overworld X; X Position on OW (square unit)
    SBC      #$07                      ; 0x6b1 $86A1 E9 07                     ;
    STA      $76                       ; 0x6b3 $86A3 85 76                     ;; X Position on OW (Link)
    LDA      $73                       ; 0x6b5 $86A5 A5 73                     ;; Overworld Y; Y Position on OW (square unit)
    SEC                                ; 0x6b7 $86A7 38                        ;
    SBC      #$0B                      ; 0x6b8 $86A8 E9 0B                     ;
    STA      $75                       ; 0x6ba $86AA 85 75                     ;; Y Position on OW (Link)
    JSR      LDF01                     ; 0x6bc $86AC 20 01 DF                  ;
L86AF:                                                                          ;
    LDA      $0563                     ; 0x6bf $86AF AD 63 05                  ; Type of terrain Link is facing
    CMP      #$07                      ; 0x6c2 $86B2 C9 07                     ; check if terrain is Swamp
    BNE      L86BB                     ; 0x6c4 $86B4 D0 05                     ;
    LDA      $12                       ; 0x6c6 $86B6 A5 12                     ;; Frame Counter (ascending)
    LSR                                ; 0x6c8 $86B8 4A                        ; modify speed in swamp
    BCC      L869E                     ; 0x6c9 $86B9 90 E3                     ; skip each other frame
L86BB:                                                                          ;
    DEC      $7D                       ; 0x6cb $86BB C6 7D                     ;number of pixels to move?
    INC      $26                       ; 0x6cd $86BD E6 26                     ;some sort of step counter?
    LDA      $0562                     ; 0x6cf $86BF AD 62 05                  ; Link's facing direction in OW
    AND      #$03                      ; 0x6d2 $86C2 29 03                     ; keep bits .... ..x.
    BEQ      L86D6                     ; 0x6d4 $86C4 F0 10                     ;
    DEC      $FD                       ; 0x6d6 $86C6 C6 FD                     ;
    LSR                                ; 0x6d8 $86C8 4A                        ;
    BCC      L86CF                     ; 0x6d9 $86C9 90 04                     ;
    INC      $FD                       ; 0x6db $86CB E6 FD                     ;
    INC      $FD                       ; 0x6dd $86CD E6 FD                     ;
L86CF:                                                                          ;
    LDA      $75                       ; 0x6df $86CF A5 75                     ; Y position on map (Link)
    STA      $01                       ; 0x6e1 $86D1 85 01                     ;
    JMP      bank0_unknown6            ; 0x6e3 $86D3 4C C7 88                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L86D6:                                                                          ;
    LDA      $0562                     ; 0x6e6 $86D6 AD 62 05                  ; Link's facing direction in OW
    LSR                                ; 0x6e9 $86D9 4A                        ;
    LSR                                ; 0x6ea $86DA 4A                        ;
    LSR                                ; 0x6eb $86DB 4A                        ;
    BCC      L86EE                     ; 0x6ec $86DC 90 10                     ;
    INC      $FC                       ; 0x6ee $86DE E6 FC                     ;
    INC      $7F                       ; 0x6f0 $86E0 E6 7F                     ;
    LDA      $FC                       ; 0x6f2 $86E2 A5 FC                     ;
    CMP      #$F0                      ; 0x6f4 $86E4 C9 F0                     ;
    BNE      L8704                     ; 0x6f6 $86E6 D0 1C                     ;
    LDA      #$00                      ; 0x6f8 $86E8 A9 00                     ; A = 00
    STA      $FC                       ; 0x6fa $86EA 85 FC                     ;
    BEQ      L86FC                     ; 0x6fc $86EC F0 0E                     ;
L86EE:                                                                          ;
    DEC      $FC                       ; 0x6fe $86EE C6 FC                     ;
    DEC      $7F                       ; 0x700 $86F0 C6 7F                     ;
    LDA      $FC                       ; 0x702 $86F2 A5 FC                     ;
    CMP      #$FF                      ; 0x704 $86F4 C9 FF                     ;
    BNE      L8704                     ; 0x706 $86F6 D0 0C                     ;
    LDA      #$EF                      ; 0x708 $86F8 A9 EF                     ; A = EF
    STA      $FC                       ; 0x70a $86FA 85 FC                     ;
L86FC:                                                                          ;
    LDA      $0747                     ; 0x70c $86FC AD 47 07                  ;
    EOR      #$02                      ; 0x70f $86FF 49 02                     ; flip bits .... ..x.
    STA      $0747                     ; 0x711 $8701 8D 47 07                  ;
L8704:                                                                          ;
    LDA      $76                       ; 0x714 $8704 A5 76                     ;; X Position on OW (Link)
    STA      $00                       ; 0x716 $8706 85 00                     ;
    LDA      $75                       ; 0x718 $8708 A5 75                     ;; Y Position on OW (Link)
    STA      $01                       ; 0x71a $870A 85 01                     ;
    JMP      L88B3                     ; 0x71c $870C 4C B3 88                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Blocked_by_Tile_or_Not_Routine:                                                 ;
    JSR      L8A07                     ; 0x71f $870F 20 07 8A                  ;
    CMP      #$0D                      ; 0x722 $8712 C9 0D                     ; 0D = Walkable Water
    BNE      L871B                     ; 0x724 $8714 D0 05                     ; if Not, skip to $071B
    LDY      $0788                     ; 0x726 $8716 AC 88 07                  ; check if Link has Boots
    BNE      L871F                     ; 0x729 $8719 D0 04                     ; if Not 0, skip to $071F (can move)
L871B:                                                                          ;
    CMP      #$0B                      ; 0x72b $871B C9 0B                     ; 0B = Mountain
    BCS      L8721                     ; 0x72d $871D B0 02                     ; if >= 0B, goto $0721 (blocked)
L871F:                                                                          ;
    CLC                                ; 0x72f $871F 18                        ; if Carry is Clear, Link can move...
    RTS                                ; 0x730 $8720 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8721:                                                                          ;
    LDA      #$00                      ; 0x731 $8721 A9 00                     ; A = 00
    STA      $70                       ; 0x733 $8723 85 70                     ; Link's X Velocity
    RTS                                ; 0x735 $8725 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8726:                                                                          ;
    LDA      #$84                      ; 0x736 $8726 A9 84                     ; A = 84 (Link's X Position on Screen)
L8728:                                                                          ;
    STA      $0203                     ; 0x738 $8728 8D 03 02                  ;
    CLC                                ; 0x73b $872B 18                        ;
    ADC      #$08                      ; 0x73c $872C 69 08                     ;
    STA      $0207                     ; 0x73e $872E 8D 07 02                  ;
    LDA      #$6D                      ; 0x741 $8731 A9 6D                     ; A = 6D (Link's Y Position on Screen) (+1)
    STA      $0200                     ; 0x743 $8733 8D 00 02                  ;; Animation frame for Link's OW sprite (part 1)
    STA      $0204                     ; 0x746 $8736 8D 04 02                  ;
    LDA      #$F5                      ; 0x749 $8739 A9 F5                     ; A = F5 (Upper and Lower Right tiles) (empty)
    STA      $0205                     ; 0x74b $873B 8D 05 02                  ;
    LDA      #$40                      ; 0x74e $873E A9 40                     ; A = 40
    STA      $0206                     ; 0x750 $8740 8D 06 02                  ;
    LDA      $0562                     ; 0x753 $8743 AD 62 05                  ; Link's facing direction in OW
    CMP      #$04                      ; 0x756 $8746 C9 04                     ;
    BCS      L8763                     ; 0x758 $8748 B0 19                     ;
    LSR                                ; 0x75a $874A 4A                        ;
    LDA      #$00                      ; 0x75b $874B A9 00                     ; A = 00
    ROR                                ; 0x75d $874D 6A                        ;
    LSR                                ; 0x75e $874E 4A                        ;
    STA      $0202                     ; 0x75f $874F 8D 02 02                  ;
    LDX      #$77                      ; 0x762 $8752 A2 77                     ; X = 77 (Tile Mapping when moving Left/Right)
    LDA      $7D                       ; 0x764 $8754 A5 7D                     ;;number of pixels to move? automove? on overworld, only partially, causes bug
    BEQ      L875E                     ; 0x766 $8756 F0 06                     ;
    AND      #$08                      ; 0x768 $8758 29 08                     ; keep bits .... x...
    BNE      L875E                     ; 0x76a $875A D0 02                     ;
    DEX                                ; 0x76c $875C CA                        ;
    DEX                                ; 0x76d $875D CA                        ;
L875E:                                                                          ;
    STX      $0201                     ; 0x76e $875E 8E 01 02                  ;; Animation frame for Link's OW sprite (part 2)
    BPL      L877C                     ; 0x771 $8761 10 19                     ;
L8763:                                                                          ;
    LDX      #$7B                      ; 0x773 $8763 A2 7B                     ; X = 7B (Tile Mapping when moving Up/Down)
    CMP      #$04                      ; 0x775 $8765 C9 04                     ;
    BEQ      L876B                     ; 0x777 $8767 F0 02                     ;
    DEX                                ; 0x779 $8769 CA                        ;
    DEX                                ; 0x77a $876A CA                        ;
L876B:                                                                          ;
    STX      $0201                     ; 0x77b $876B 8E 01 02                  ;; Animation frame for Link's OW sprite (part 2)
    LDX      #$40                      ; 0x77e $876E A2 40                     ; X = 40 (Tile Mapping Up/Down 1 Frame)
    LDA      $7D                       ; 0x780 $8770 A5 7D                     ;;number of pixels to move? automove? on overworld, only partially, causes bug
    BEQ      L8779                     ; 0x782 $8772 F0 05                     ;
    AND      #$08                      ; 0x784 $8774 29 08                     ; keep bits .... x...
    BNE      L8779                     ; 0x786 $8776 D0 01                     ;
    TAX                                ; 0x788 $8778 AA                        ;
L8779:                                                                          ;
    STX      $0202                     ; 0x789 $8779 8E 02 02                  ;
L877C:                                                                          ;
    LDX      #$0E                      ; 0x78c $877C A2 0E                     ; X = 0E
    LDY      #$00                      ; 0x78e $877E A0 00                     ; Y = 00
    STY      $00                       ; 0x790 $8780 84 00                     ;
L8782:                                                                          ;
    LDA      $00                       ; 0x792 $8782 A5 00                     ;
    STA      $0208,y                   ; 0x794 $8784 99 08 02                  ;
    CLC                                ; 0x797 $8787 18                        ;
    ADC      #$10                      ; 0x798 $8788 69 10                     ;
    STA      $00                       ; 0x79a $878A 85 00                     ;
    LDA      #$FF                      ; 0x79c $878C A9 FF                     ; A = FF
    STA      $0209,y                   ; 0x79e $878E 99 09 02                  ;
    LDA      #$F8                      ; 0x7a1 $8791 A9 F8                     ; A = F8
    STA      $020B,y                   ; 0x7a3 $8793 99 0B 02                  ;
    LDA      #$01                      ; 0x7a6 $8796 A9 01                     ; A = 01
    STA      $020A,y                   ; 0x7a8 $8798 99 0A 02                  ;
L879B:                                                                          ;
    INY                                ; 0x7ab $879B C8                        ;
    INY                                ; 0x7ac $879C C8                        ;
    INY                                ; 0x7ad $879D C8                        ;
    INY                                ; 0x7ae $879E C8                        ;
    DEX                                ; 0x7af $879F CA                        ;
    BPL      L8782                     ; 0x7b0 $87A0 10 E0                     ;
    RTS                                ; 0x7b2 $87A2 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Overworld_Tile_Mappings_and_Overworld_Palette_Codes:                            ;
;5C 5D 5E 5F	Town                                                              ;
;F4 F4 F4 F4	Grotto                                                            ;
;60 61 62 63	Palace                                                            ;
;5A 5A 5B 5B	Bridge                                                            ;
;6C 6C 6C 6C	Desert                                                            ;
;6D 6D 6D 6D	Grass                                                             ;
;68 69 6A 6B	Forest                                                            ;
;6F 6F 6F 6F	Swamp                                                             ;
;70 71 FE FE	Graveyard                                                         ;
;FE FE FE FE	Road                                                              ;
;6E 6E 6E 6E	Lava                                                              ;
;64 65 66 67	Mountain                                                          ;
;6E 6E 6E 6E	Water                                                             ;
;6E 6E 6E 6E	Water (walkable)                                                  ;
;56 57 58 59	Rock                                                              ;
;40 41 42 43	Spider                                                            ;
;----                                                                          ;
;07E3: Overworld Palette Codes (0-3) (4 * 4 = 10 bytes)                        ;
;02 01 02 01 03 00 00 00 01 01 01 01 03 03 01 01                               ;
.byt    $5C,$5D,$5E,$5F,$F4,$F4,$F4,$F4; 0x7b3 $87A3 5C 5D 5E 5F F4 F4 F4 F4   ;
.byt    $60,$61,$62,$63,$5A,$5A,$5B,$5B; 0x7bb $87AB 60 61 62 63 5A 5A 5B 5B   ;
.byt    $6C,$6C,$6C,$6C,$6D,$6D,$6D,$6D; 0x7c3 $87B3 6C 6C 6C 6C 6D 6D 6D 6D   ;
.byt    $68,$69,$6A,$6B,$6F,$6F,$6F,$6F; 0x7cb $87BB 68 69 6A 6B 6F 6F 6F 6F   ;
.byt    $70,$71,$FE,$FE,$FE,$FE,$FE,$FE; 0x7d3 $87C3 70 71 FE FE FE FE FE FE   ;
.byt    $6E,$6E,$6E,$6E,$64,$65,$66,$67; 0x7db $87CB 6E 6E 6E 6E 64 65 66 67   ;
.byt    $6E,$6E,$6E,$6E,$6E,$6E,$6E,$6E; 0x7e3 $87D3 6E 6E 6E 6E 6E 6E 6E 6E   ;
.byt    $56,$57,$58,$59,$40,$41,$42,$43; 0x7eb $87DB 56 57 58 59 40 41 42 43   ;
bank0_Overworld_Palette_Codes_0_3:                                              ;
.byt    $02,$01,$02,$01,$03,$00,$00,$00; 0x7f3 $87E3 02 01 02 01 03 00 00 00   ;
.byt    $01,$01,$01,$01,$03,$03,$01,$01; 0x7fb $87EB 01 01 01 01 03 03 01 01   ;
; ---------------------------------------------------------------------------- ;
overworld4:                                                                     ;
    LDA      #$00                      ; 0x803 $87F3 A9 00                     ; A = 00 (Pointer to Overworld Data - Low)
    STA      L000E                     ; 0x805 $87F5 85 0E                     ;
    LDA      #$7C                      ; 0x807 $87F7 A9 7C                     ; A = 7C (Pointer to Overworld Data - High)
    STA      $0F                       ; 0x809 $87F9 85 0F                     ;
    LDY      #$00                      ; 0x80b $87FB A0 00                     ; Y = 00
    STY      $00                       ; 0x80d $87FD 84 00                     ;
    BEQ      L880A                     ; 0x80f $87FF F0 09                     ;
L8801:                                                                          ;
    LDX      #$00                      ; 0x811 $8801 A2 00                     ; X = 00
    STX      $03                       ; 0x813 $8803 86 03                     ;
    LDY      #$00                      ; 0x815 $8805 A0 00                     ; Y = 00
    JSR      L8C30                     ; 0x817 $8807 20 30 8C                  ;
L880A:                                                                          ;
    LDX      $00                       ; 0x81a $880A A6 00                     ;
    TYA                                ; 0x81c $880C 98                        ;
    CLC                                ; 0x81d $880D 18                        ;
    ADC      L000E                     ; 0x81e $880E 65 0E                     ;
    STA      L000E                     ; 0x820 $8810 85 0E                     ;
    STA      $6000,x                   ; 0x822 $8812 9D 00 60                  ;
    LDA      $0F                       ; 0x825 $8815 A5 0F                     ;
L8817:                                                                          ;
    ADC      #$00                      ; 0x827 $8817 69 00                     ;
    STA      $0F                       ; 0x829 $8819 85 0F                     ;
    STA      $6001,x                   ; 0x82b $881B 9D 01 60                  ;
    INX                                ; 0x82e $881E E8                        ;
    INX                                ; 0x82f $881F E8                        ;
    STX      $00                       ; 0x830 $8820 86 00                     ;
    TXA                                ; 0x832 $8822 8A                        ;
    LSR                                ; 0x833 $8823 4A                        ;
    CMP      #$4B                      ; 0x834 $8824 C9 4B                     ;
    BNE      L8801                     ; 0x836 $8826 D0 D9                     ;
    LDA      #$00                      ; 0x838 $8828 A9 00                     ; A = 00
    STA      $7E                       ; 0x83a $882A 85 7E                     ;
L882C:                                                                          ;
    LDA      $76                       ; 0x83c $882C A5 76                     ; X position on map (Link)
    STA      $00                       ; 0x83e $882E 85 00                     ;
    LDA      $75                       ; 0x840 $8830 A5 75                     ; Y position on map (Link)
    STA      $01                       ; 0x842 $8832 85 01                     ;
    JSR      L88B3                     ; 0x844 $8834 20 B3 88                  ;
    LDA      #$02                      ; 0x847 $8837 A9 02                     ; A = 02
    STA      $00                       ; 0x849 $8839 85 00                     ;
    LDA      #$03                      ; 0x84b $883B A9 03                     ; A = 03
    STA      $01                       ; 0x84d $883D 85 01                     ;
    JSR      LD2EC                     ; 0x84f $883F 20 EC D2                  ;
    LDA      #$00                      ; 0x852 $8842 A9 00                     ; A = 00
    STA      $0301                     ; 0x854 $8844 8D 01 03                  ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDA      #$FF                      ; 0x857 $8847 A9 FF                     ; A = FF
    STA      L0302                     ; 0x859 $8849 8D 02 03                  ;; Used when writing text to screen
    LDA      $7E                       ; 0x85c $884C A5 7E                     ;
    CMP      #$06                      ; 0x85e $884E C9 06                     ;
    BNE      L882C                     ; 0x860 $8850 D0 DA                     ;
    INC      $75                       ; 0x862 $8852 E6 75                     ;; Y Position on OW (Link)
    LDA      $75                       ; 0x864 $8854 A5 75                     ;; Y Position on OW (Link)
    JSR      LDF3F                     ; 0x866 $8856 20 3F DF                  ;
    STA      $00                       ; 0x869 $8859 85 00                     ;
    TYA                                ; 0x86b $885B 98                        ;
    ASL                                ; 0x86c $885C 0A                        ;
    ASL                                ; 0x86d $885D 0A                        ;
    ASL                                ; 0x86e $885E 0A                        ;
    ASL                                ; 0x86f $885F 0A                        ;
    ORA      $00                       ; 0x870 $8860 05 00                     ;
    STA      $77                       ; 0x872 $8862 85 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    JSR      bank7_code2               ; 0x874 $8864 20 B6 C1                  ;
    LDX      #$00                      ; 0x877 $8867 A2 00                     ; X = 00
    STX      $7E                       ; 0x879 $8869 86 7E                     ;
    DEC      $71                       ; 0x87b $886B C6 71                     ;;mon x velocity	71,72,73,74,75,76
    BNE      L882C                     ; 0x87d $886D D0 BD                     ;
    LDY      #$07                      ; 0x87f $886F A0 07                     ; Y = 07
L8871:                                                                          ;
    STX      $82,y                     ; 0x881 $8871 96 82                     ;
    DEY                                ; 0x883 $8873 88                        ;
    BPL      L8871                     ; 0x884 $8874 10 FB                     ;
    INX                                ; 0x886 $8876 E8                        ;
    STX      $26                       ; 0x887 $8877 86 26                     ;; Movement Tally - Increases as you walk in overworld.		; Shooting Star presence in Intro
    LDA      #$08                      ; 0x889 $8879 A9 08                     ; A = 08
    STA      $0516                     ; 0x88b $887B 8D 16 05                  ;; Timer for Overworld Sprites to appear and for each new set
    JSR      L8A07                     ; 0x88e $887E 20 07 8A                  ;
    LDA      $07AA                     ; 0x891 $8881 AD AA 07                  ;
    ORA      $07AD                     ; 0x894 $8884 0D AD 07                  ;; * related to Raft Animation *
    BNE      L889E                     ; 0x897 $8887 D0 15                     ;
    LDA      $0706                     ; 0x899 $8889 AD 06 07                  ; Current Region
    ORA      $0748                     ; 0x89c $888C 0D 48 07                  ;; area location index (the index of the spot on the overworld that pulled you into the sideview)	; Overworld Area out of Side View
    BEQ      L8895                     ; 0x89f $888F F0 04                     ;
    LDA      #$02                      ; 0x8a1 $8891 A9 02                     ; A = 02 (song to play out of danger area)
    STA      $EB                       ; 0x8a3 $8893 85 EB                     ;; Music; Music
L8895:                                                                          ;
    LDX      #$00                      ; 0x8a5 $8895 A2 00                     ; X = 00 (all sound muted if not 0)
    STX      $EA                       ; 0x8a7 $8897 86 EA                     ;;Global Sound Switch (0 = Sound On)
    LDA      $05E9                     ; 0x8a9 $8899 AD E9 05                  ;; Sound Played Out of Area (0 = No Sound)
    STA      $EE                       ; 0x8ac $889C 85 EE                     ;; Sound Effects Type 3; Sound Effects Type 3
L889E:                                                                          ;
    LDA      #$04                      ; 0x8ae $889E A9 04                     ; A = 04
L88A0:                                                                          ;
    LDY      $07AA                     ; 0x8b0 $88A0 AC AA 07                  ;
    BEQ      L88AF                     ; 0x8b3 $88A3 F0 0A                     ;
    LDX      #$00                      ; 0x8b5 $88A5 A2 00                     ; X = 00
    STX      $07AA                     ; 0x8b7 $88A7 8E AA 07                  ;
    STX      $0726                     ; 0x8ba $88AA 8E 26 07                  ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    LDA      #$18                      ; 0x8bd $88AD A9 18                     ; A = 18
L88AF:                                                                          ;
    STA      $0736                     ; 0x8bf $88AF 8D 36 07                  ; Game Mode
L88B2:                                                                          ;
    RTS                                ; 0x8c2 $88B2 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L88B3:                                                                          ;
    LDA       a:$7E                     ; 0x8c3 $88B3 AD 7E 00                  ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x8c6 $88B6 20 85 D3;
unknown_pointer_table1:                                                         ;
.word    L8BFE                         ; 0x8c9 $88B9 FE 8B                     ;
.word    L8C57                         ; 0x8cb $88BB 57 8C                     ;
.word    L8C57                         ; 0x8cd $88BD 57 8C                     ;
.word    overworld6                    ; 0x8cf $88BF 1A 8A                     ;
.word    L8A57                         ; 0x8d1 $88C1 57 8A                     ;
.word    L8A79                         ; 0x8d3 $88C3 79 8A                     ;
.word    LDFD1                         ; 0x8d5 $88C5 D1 DF                     ;
; ---------------------------------------------------------------------------- ;
bank0_unknown6:                                                                 ;
    LDA      $7D                       ; 0x8d7 $88C7 A5 7D                     ;;number of pixels to move? automove? on overworld, only partially, causes bug
    CMP      #$0E                      ; 0x8d9 $88C9 C9 0E                     ;
    BCS      L88B2                     ; 0x8db $88CB B0 E5                     ;
    LDA      $7E                       ; 0x8dd $88CD A5 7E                     ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x8df $88CF 20 85 D3;
unknown_pointer_table2:                                                         ;
.word    Define_Overworld_Boundaries_Mountain_or_Water; 0x8e2 $88D2 E8 88      ;
.word    Overworld_Redrawing_Horizontal_Movement; 0x8e4 $88D4 48 89            ;
.word    Overworld_Redrawing_Horizontal_Movement; 0x8e6 $88D6 48 89            ;
.word    Overworld_Redrawing_Horizontal_Movement; 0x8e8 $88D8 48 89            ;
.word    Overworld_Redrawing_Horizontal_Movement; 0x8ea $88DA 48 89            ;
.word    Overworld_Redrawing_Horizontal_Movement; 0x8ec $88DC 48 89            ;
.word    Overworld_Redrawing_Horizontal_Movement; 0x8ee $88DE 48 89            ;
.word    L8B02                         ; 0x8f0 $88E0 02 8B                     ;
.word    L8B3A                         ; 0x8f2 $88E2 3A 8B                     ;
.word    L8B6E                         ; 0x8f4 $88E4 6E 8B                     ;
.word    LDFD1                         ; 0x8f6 $88E6 D1 DF                     ;
; ---------------------------------------------------------------------------- ;
Define_Overworld_Boundaries_Mountain_or_Water:                                  ;
    LDA      $0562                     ; 0x8f8 $88E8 AD 62 05                  ; Link's facing direction in OW
    LSR                                ; 0x8fb $88EB 4A                        ;
    BCS      L88F0                     ; 0x8fc $88EC B0 02                     ;
    INC      $7A                       ; 0x8fe $88EE E6 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
L88F0:                                                                          ;
    LDX      #$17                      ; 0x900 $88F0 A2 17                     ; X = 17
    LDA      #$0C                      ; 0x902 $88F2 A9 0C                     ; A = 0C (0C = 1 unit of Water)
    LDY      $0706                     ; 0x904 $88F4 AC 06 07                  ; Current Region
    CPY      #$02                      ; 0x907 $88F7 C0 02                     ;
    BCS      L8903                     ; 0x909 $88F9 B0 08                     ; if Current Region >= 2, goto $0903
    LDY      $76                       ; 0x90b $88FB A4 76                     ; X position on map (Link)
    CPY      #$0C                      ; 0x90d $88FD C0 0C                     ;
    BPL      L8903                     ; 0x90f $88FF 10 02                     ;
    LDA      #$0B                      ; 0x911 $8901 A9 0B                     ; 0B = Mountain (Left side of map) (fill)
L8903:                                                                          ;
    STA      $04D0,x                   ; 0x913 $8903 9D D0 04                  ; Fill map from X = 17 to X = 0
    DEX                                ; 0x916 $8906 CA                        ;
    BPL      L8903                     ; 0x917 $8907 10 FA                     ;
    LDA      $79                       ; 0x919 $8909 A5 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      $7B                       ; 0x91b $890B 85 7B                     ;
    LDA      $7A                       ; 0x91d $890D A5 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      $7C                       ; 0x91f $890F 85 7C                     ;
    LDA      $75                       ; 0x921 $8911 A5 75                     ; Y position on map (Link)
    SEC                                ; 0x923 $8913 38                        ;
    SBC      #$1E                      ; 0x924 $8914 E9 1E                     ;
    STA      $0A                       ; 0x926 $8916 85 0A                     ;
    LDA      $76                       ; 0x928 $8918 A5 76                     ; X position on map (Link); jump to $28A1
    CMP      #$40                      ; 0x92a $891A C9 40                     ; Overworld Width (from which filling begins)
    BCS      L8941                     ; 0x92c $891C B0 23                     ;
    LDX      #$00                      ; 0x92e $891E A2 00                     ; X = 00
L8920:                                                                          ;
    LDA      $0A                       ; 0x930 $8920 A5 0A                     ;
    CMP      #$4B                      ; 0x932 $8922 C9 4B                     ; South Boundary of OW Map
    BCS      L893A                     ; 0x934 $8924 B0 14                     ;
    JSR      L8C48                     ; 0x936 $8926 20 48 8C                  ;
;occurs when moving , function: load from table the pointer address (7C00 to 7FFF)?;
    LDA      #$FF                      ; 0x939 $8929 A9 FF                     ; A = FF
    STA      $03                       ; 0x93b $892B 85 03                     ;
L892D:                                                                          ;
    JSR      LE001                     ; 0x93d $892D 20 01 E0                  ;
    INY                                ; 0x940 $8930 C8                        ;
    CMP      $76                       ; 0x941 $8931 C5 76                     ; X position on map (Link)
    BCC      L892D                     ; 0x943 $8933 90 F8                     ;
    LDA      $02                       ; 0x945 $8935 A5 02                     ;
    STA      $04D0,x                   ; 0x947 $8937 9D D0 04                  ;; Tile Codes to load in Overworld
L893A:                                                                          ;
    INC      $0A                       ; 0x94a $893A E6 0A                     ;
    INX                                ; 0x94c $893C E8                        ;
    CPX      #$18                      ; 0x94d $893D E0 18                     ;
    BNE      L8920                     ; 0x94f $893F D0 DF                     ;
L8941:                                                                          ;
    INC      $7E                       ; 0x951 $8941 E6 7E                     ;
    LDA      #$00                      ; 0x953 $8943 A9 00                     ; A = 00
    STA      $17                       ; 0x955 $8945 85 17                     ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    RTS                                ; 0x957 $8947 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Overworld_Redrawing_Horizontal_Movement:                                        ;
    LDA      $79                       ; 0x958 $8948 A5 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      L0302                     ; 0x95a $894A 8D 02 03                  ;; Used when writing text to screen
    STA      L000E                     ; 0x95d $894D 85 0E                     ;
    LDA      $7A                       ; 0x95f $894F A5 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      $0303                     ; 0x961 $8951 8D 03 03                  ;; Letter position when writing to screen
    STA      $0F                       ; 0x964 $8954 85 0F                     ;
    LDA      #$00                      ; 0x966 $8956 A9 00                     ; A = 00
    STA      $06                       ; 0x968 $8958 85 06                     ;
    LDA      $17                       ; 0x96a $895A A5 17                     ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    STA      $07                       ; 0x96c $895C 85 07                     ;
L895E:                                                                          ;
    LDX      $07                       ; 0x96e $895E A6 07                     ;
    LDA      $04D0,x                   ; 0x970 $8960 BD D0 04                  ;; Tile Codes to load in Overworld
    ASL                                ; 0x973 $8963 0A                        ;
    ASL                                ; 0x974 $8964 0A                        ;
    TAX                                ; 0x975 $8965 AA                        ;
    LDA      $0562                     ; 0x976 $8966 AD 62 05                  ; Link's facing direction in OW
    LSR                                ; 0x979 $8969 4A                        ;
    BEQ      L8976                     ; 0x97a $896A F0 0A                     ;
    LDA      $7E                       ; 0x97c $896C A5 7E                     ;
    AND      #$04                      ; 0x97e $896E 29 04                     ; keep bits .... .x..
    BNE      L897E                     ; 0x980 $8970 D0 0C                     ;
    INX                                ; 0x982 $8972 E8                        ;
    INX                                ; 0x983 $8973 E8                        ;
    BNE      L897E                     ; 0x984 $8974 D0 08                     ;
L8976:                                                                          ;
    LDA      $7E                       ; 0x986 $8976 A5 7E                     ;
    AND      #$04                      ; 0x988 $8978 29 04                     ; keep bits .... .x..
    BEQ      L897E                     ; 0x98a $897A F0 02                     ;
    INX                                ; 0x98c $897C E8                        ;
    INX                                ; 0x98d $897D E8                        ;
L897E:                                                                          ;
    LDY      $06                       ; 0x98e $897E A4 06                     ;
    LDA      Overworld_Tile_Mappings_and_Overworld_Palette_Codes,x; 0x990 $8980 BD A3 87; Table for Overworld Tile Mappings
    STA      $0305,y                   ; 0x993 $8983 99 05 03                  ;
    INC      $06                       ; 0x996 $8986 E6 06                     ;
    INX                                ; 0x998 $8988 E8                        ;
    TXA                                ; 0x999 $8989 8A                        ;
    AND      #$01                      ; 0x99a $898A 29 01                     ; keep bits .... ...x
    BNE      L897E                     ; 0x99c $898C D0 F0                     ;
    INC      $07                       ; 0x99e $898E E6 07                     ;
    LDA      $07                       ; 0x9a0 $8990 A5 07                     ;
    CMP      #$18                      ; 0x9a2 $8992 C9 18                     ;
    BNE      L89C8                     ; 0x9a4 $8994 D0 32                     ;
    LDA      $06                       ; 0x9a6 $8996 A5 06                     ;
    ORA      #$80                      ; 0x9a8 $8998 09 80                     ; set bits  x... ....
    STA      $0304                     ; 0x9aa $899A 8D 04 03                  ;; Text memory offset?
    LDA      #$FF                      ; 0x9ad $899D A9 FF                     ; A = FF
L89A0     = * + $0001                                                          ;
    STA      $0306,y                   ; 0x9af $899F 99 06 03                  ;
    LDA      $7E                       ; 0x9b2 $89A2 A5 7E                     ;
    AND      #$04                      ; 0x9b4 $89A4 29 04                     ; keep bits .... .x..
    BNE      L89AE                     ; 0x9b6 $89A6 D0 06                     ;
    STA      $17                       ; 0x9b8 $89A8 85 17                     ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    LDA      #$04                      ; 0x9ba $89AA A9 04                     ; keep bits .... .x..
    BNE      L89B0                     ; 0x9bc $89AC D0 02                     ;
L89AE:                                                                          ;
    LDA      #$07                      ; 0x9be $89AE A9 07                     ; A = 07
L89B0:                                                                          ;
    STA      $7E                       ; 0x9c0 $89B0 85 7E                     ;
    LDA      $0562                     ; 0x9c2 $89B2 AD 62 05                  ; Link's facing direction in OW
    LSR                                ; 0x9c5 $89B5 4A                        ;
    BEQ      L89BD                     ; 0x9c6 $89B6 F0 05                     ;
    DEC      $7C                       ; 0x9c8 $89B8 C6 7C                     ;
    JMP      L89BF                     ; 0x9ca $89BA 4C BF 89                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L89BD:                                                                          ;
    INC      $7C                       ; 0x9cd $89BD E6 7C                     ;
L89BF:                                                                          ;
    LDA      $7B                       ; 0x9cf $89BF A5 7B                     ;
    STA      $79                       ; 0x9d1 $89C1 85 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    LDA      $7C                       ; 0x9d3 $89C3 A5 7C                     ;
    STA      $7A                       ; 0x9d5 $89C5 85 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    RTS                                ; 0x9d7 $89C7 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L89C8:                                                                          ;
    LDA      $0F                       ; 0x9d8 $89C8 A5 0F                     ;
    CLC                                ; 0x9da $89CA 18                        ;
    ADC      #$40                      ; 0x9db $89CB 69 40                     ;
    STA      $0F                       ; 0x9dd $89CD 85 0F                     ;
    LDA      L000E                     ; 0x9df $89CF A5 0E                     ;
    ADC      #$00                      ; 0x9e1 $89D1 69 00                     ;
    STA      L000E                     ; 0x9e3 $89D3 85 0E                     ;
    AND      #$03                      ; 0x9e5 $89D5 29 03                     ; keep bits .... ..xx
    CMP      #$03                      ; 0x9e7 $89D7 C9 03                     ;
    BNE      L89E3                     ; 0x9e9 $89D9 D0 08                     ;
    LDA      $0F                       ; 0x9eb $89DB A5 0F                     ;
    AND      #$F0                      ; 0x9ed $89DD 29 F0                     ; keep bits xxxx ....
    CMP      #$C0                      ; 0x9ef $89DF C9 C0                     ;
    BCS      L89E6                     ; 0x9f1 $89E1 B0 03                     ;
L89E3:                                                                          ;
    JMP      L895E                     ; 0x9f3 $89E3 4C 5E 89                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L89E6:                                                                          ;
    LDA      $06                       ; 0x9f6 $89E6 A5 06                     ;
    ORA      #$80                      ; 0x9f8 $89E8 09 80                     ; set bits  x... ....
    STA      $0304                     ; 0x9fa $89EA 8D 04 03                  ;; Text memory offset?
    LDA      #$FF                      ; 0x9fd $89ED A9 FF                     ; A = FF
    STA      $0306,y                   ; 0x9ff $89EF 99 06 03                  ;
    LDA      $7A                       ; 0xa02 $89F2 A5 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    AND      #$1F                      ; 0xa04 $89F4 29 1F                     ; keep bits ...x xxxx
    STA      $7A                       ; 0xa06 $89F6 85 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    LDA      $79                       ; 0xa08 $89F8 A5 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    EOR      #$08                      ; 0xa0a $89FA 49 08                     ; flip bits .... x...
    AND      #$F8                      ; 0xa0c $89FC 29 F8                     ; keep bits xxxx x...
    STA      $79                       ; 0xa0e $89FE 85 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    LDA      $07                       ; 0xa10 $8A00 A5 07                     ;
    STA      $17                       ; 0xa12 $8A02 85 17                     ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    INC      $7E                       ; 0xa14 $8A04 E6 7E                     ;
    RTS                                ; 0xa16 $8A06 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8A07:                                                                          ;
    LDA      $73                       ; 0xa17 $8A07 A5 73                     ; Y position on map (square unit)
    STA      $01                       ; 0xa19 $8A09 85 01                     ;
    LDA      $74                       ; 0xa1b $8A0B A5 74                     ; X position on map (square unit)
L8A0D:                                                                          ;
    STA      $00                       ; 0xa1d $8A0D 85 00                     ;
    JSR      bank7_Overworld_Boundaries__Mountain_or_Water_Bank_1; 0xa1f $8A0F 20 EF DF;
    LDA      $02                       ; 0xa22 $8A12 A5 02                     ;
    STA      $0563                     ; 0xa24 $8A14 8D 63 05                  ; Type of terrain Link is facing
    RTS                                ; 0xa27 $8A17 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown7:                                                                 ;
.byt    $01,$FF                        ; 0xa28 $8A18 01 FF                     ;
; ---------------------------------------------------------------------------- ;
overworld6:                                                                     ;
    LDA      $0562                     ; 0xa2a $8A1A AD 62 05                  ; Link's facing direction in OW
    AND      #$04                      ; 0xa2d $8A1D 29 04                     ; keep bits .... .x..
    BEQ      L8A31                     ; 0xa2f $8A1F F0 10                     ;
    LDA      $77                       ; 0xa31 $8A21 A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    AND      #$0F                      ; 0xa33 $8A23 29 0F                     ; keep bits .... xxxx
    CMP      #$0E                      ; 0xa35 $8A25 C9 0E                     ;
    BEQ      L8A31                     ; 0xa37 $8A27 F0 08                     ;
    LSR                                ; 0xa39 $8A29 4A                        ;
    BCS      L8A36                     ; 0xa3a $8A2A B0 0A                     ;
L8A2C:                                                                          ;
    LDA      #$06                      ; 0xa3c $8A2C A9 06                     ; A = 06
    STA      $7E                       ; 0xa3e $8A2E 85 7E                     ;
    RTS                                ; 0xa40 $8A30 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8A31:                                                                          ;
    LDA      $77                       ; 0xa41 $8A31 A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    LSR                                ; 0xa43 $8A33 4A                        ;
    BCS      L8A2C                     ; 0xa44 $8A34 B0 F6                     ;
L8A36:                                                                          ;
    JSR      L8A4B                     ; 0xa46 $8A36 20 4B 8A                  ;
    LDA      $0562                     ; 0xa49 $8A39 AD 62 05                  ; Link's facing direction in OW
    AND      #$04                      ; 0xa4c $8A3C 29 04                     ; keep bits .... .x..
    LSR                                ; 0xa4e $8A3E 4A                        ;
    LSR                                ; 0xa4f $8A3F 4A                        ;
    TAY                                ; 0xa50 $8A40 A8                        ;
    LDA      $75                       ; 0xa51 $8A41 A5 75                     ; Y position on map (Link)
    ADC      bank0_unknown7,y          ; 0xa53 $8A43 79 18 8A                  ; refer to table at $0A18
    STA      $01                       ; 0xa56 $8A46 85 01                     ;
    JMP      L8BFE                     ; 0xa58 $8A48 4C FE 8B                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8A4B:                                                                          ;
    LDY      #$5F                      ; 0xa5b $8A4B A0 5F                     ;;Y = #$5f 0101_1111
L8A4D:                                                                          ;
    LDA      $0470,y                   ; 0xa5d $8A4D B9 70 04                  ;
    STA      $0410,y                   ; 0xa60 $8A50 99 10 04                  ;
    DEY                                ; 0xa63 $8A53 88                        ;
    BPL      L8A4D                     ; 0xa64 $8A54 10 F7                     ;
    RTS                                ; 0xa66 $8A56 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8A57:                                                                          ;
    LDA      $76                       ; 0xa67 $8A57 A5 76                     ; X position on map (Link)
    AND      #$0F                      ; 0xa69 $8A59 29 0F                     ; keep bits .... xxxx
    BEQ      L8A76                     ; 0xa6b $8A5B F0 19                     ;
    TAX                                ; 0xa6d $8A5D AA                        ;
    LDA      $76                       ; 0xa6e $8A5E A5 76                     ; X position on map (Link)
    CLC                                ; 0xa70 $8A60 18                        ;
    ADC      #$10                      ; 0xa71 $8A61 69 10                     ;
    AND      #$F0                      ; 0xa73 $8A63 29 F0                     ; keep bits xxxx ....
    TAY                                ; 0xa75 $8A65 A8                        ;
L8A66:                                                                          ;
    LDA      $0420,y                   ; 0xa76 $8A66 B9 20 04                  ;
    STA      $0410,y                   ; 0xa79 $8A69 99 10 04                  ;
    LDA      $0480,y                   ; 0xa7c $8A6C B9 80 04                  ;
    STA      $0470,y                   ; 0xa7f $8A6F 99 70 04                  ;
    INY                                ; 0xa82 $8A72 C8                        ;
    DEX                                ; 0xa83 $8A73 CA                        ;
    BNE      L8A66                     ; 0xa84 $8A74 D0 F0                     ;
L8A76:                                                                          ;
    INC      $7E                       ; 0xa86 $8A76 E6 7E                     ;
    RTS                                ; 0xa88 $8A78 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8A79:                                                                          ;
    LDA      $77                       ; 0xa89 $8A79 A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    AND      #$10                      ; 0xa8b $8A7B 29 10                     ; keep bits ...x ....
    LSR                                ; 0xa8d $8A7D 4A                        ;
    ORA      #$23                      ; 0xa8e $8A7E 09 23                     ;;Set Bits:0010_0011
    STA      L0302                     ; 0xa90 $8A80 8D 02 03                  ;; Used when writing text to screen
    LDA      $77                       ; 0xa93 $8A83 A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    AND      #$0E                      ; 0xa95 $8A85 29 0E                     ; keep bits .... xxx.
    ASL                                ; 0xa97 $8A87 0A                        ;
    ASL                                ; 0xa98 $8A88 0A                        ;
    ORA      #$C0                      ; 0xa99 $8A89 09 C0                     ; set bits  xx.. ....
    STA      $0303                     ; 0xa9b $8A8B 8D 03 03                  ;; Letter position when writing to screen
    LDA      #$08                      ; 0xa9e $8A8E A9 08                     ; A = 08
    STA      $0304                     ; 0xaa0 $8A90 8D 04 03                  ;; Text memory offset?
    LDA      $76                       ; 0xaa3 $8A93 A5 76                     ; X position on map (Link)
    ADC      #$10                      ; 0xaa5 $8A95 69 10                     ;
    AND      #$F0                      ; 0xaa7 $8A97 29 F0                     ; keep bits xxxx ....
    TAY                                ; 0xaa9 $8A99 A8                        ;
    LDX      #$00                      ; 0xaaa $8A9A A2 00                     ; X = 00
    STX      L000E                     ; 0xaac $8A9C 86 0E                     ;
L8A9E:                                                                          ;
    LDX      L000E                     ; 0xaae $8A9E A6 0E                     ;
L8AA0:                                                                          ;
    LDA      #$00                      ; 0xab0 $8AA0 A9 00                     ; A = 00
    STA      $0305,x                   ; 0xab2 $8AA2 9D 05 03                  ;
    LDX      $0410,y                   ; 0xab5 $8AA5 BE 10 04                  ;
    LDA      bank0_Overworld_Palette_Codes_0_3,x; 0xab8 $8AA8 BD E3 87             ;
    JSR      L8BF5                     ; 0xabb $8AAB 20 F5 8B                  ;
    LDX      $0411,y                   ; 0xabe $8AAE BE 11 04                  ;
    LDA      bank0_Overworld_Palette_Codes_0_3,x; 0xac1 $8AB1 BD E3 87             ;
    JSR      L8BF3                     ; 0xac4 $8AB4 20 F3 8B                  ;
    LDX      $0470,y                   ; 0xac7 $8AB7 BE 70 04                  ;
    LDA      bank0_Overworld_Palette_Codes_0_3,x; 0xaca $8ABA BD E3 87             ;
    JSR      L8BF1                     ; 0xacd $8ABD 20 F1 8B                  ;
    LDX      $0471,y                   ; 0xad0 $8AC0 BE 71 04                  ;
    LDA      bank0_Overworld_Palette_Codes_0_3,x; 0xad3 $8AC3 BD E3 87             ;
    JSR      L8BEF                     ; 0xad6 $8AC6 20 EF 8B                  ;
    LDA      $0562                     ; 0xad9 $8AC9 AD 62 05                  ; Link's facing direction in OW
    AND      #$04                      ; 0xadc $8ACC 29 04                     ; keep bits .... .x..
    BEQ      L8AF0                     ; 0xade $8ACE F0 20                     ;
    LDA      $77                       ; 0xae0 $8AD0 A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    AND      #$0F                      ; 0xae2 $8AD2 29 0F                     ; keep bits .... xxxx
    CMP      #$0E                      ; 0xae4 $8AD4 C9 0E                     ;
    BEQ      L8AF0                     ; 0xae6 $8AD6 F0 18                     ;
    LDA      #$00                      ; 0xae8 $8AD8 A9 00                     ; A = 00
    STA      $00                       ; 0xaea $8ADA 85 00                     ;
    LDA      $0305,x                   ; 0xaec $8ADC BD 05 03                  ;
    ASL                                ; 0xaef $8ADF 0A                        ;
    ROL      $00                       ; 0xaf0 $8AE0 26 00                     ;
    ASL                                ; 0xaf2 $8AE2 0A                        ;
    ROL      $00                       ; 0xaf3 $8AE3 26 00                     ;
    ASL                                ; 0xaf5 $8AE5 0A                        ;
    ROL      $00                       ; 0xaf6 $8AE6 26 00                     ;
    ASL                                ; 0xaf8 $8AE8 0A                        ;
    ROL      $00                       ; 0xaf9 $8AE9 26 00                     ;
    ORA      $00                       ; 0xafb $8AEB 05 00                     ;
    STA      $0305,x                   ; 0xafd $8AED 9D 05 03                  ;
L8AF0:                                                                          ;
    INY                                ; 0xb00 $8AF0 C8                        ;
    INY                                ; 0xb01 $8AF1 C8                        ;
    INC      L000E                     ; 0xb02 $8AF2 E6 0E                     ;
    LDA      L000E                     ; 0xb04 $8AF4 A5 0E                     ;
    CMP      #$08                      ; 0xb06 $8AF6 C9 08                     ;
    BCC      L8A9E                     ; 0xb08 $8AF8 90 A4                     ;
    LDA      #$FF                      ; 0xb0a $8AFA A9 FF                     ; A = FF
    STA      $030D                     ; 0xb0c $8AFC 8D 0D 03                  ;
    INC      $7E                       ; 0xb0f $8AFF E6 7E                     ;
    RTS                                ; 0xb11 $8B01 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8B02:                                                                          ;
    LDA      $76                       ; 0xb12 $8B02 A5 76                     ; X position on map (Link)
    PHA                                ; 0xb14 $8B04 48                        ;
    AND      #$01                      ; 0xb15 $8B05 29 01                     ; keep bits .... ...x
    EOR      #$01                      ; 0xb17 $8B07 49 01                     ; flip bits .... ...x
    TAY                                ; 0xb19 $8B09 A8                        ;
    INY                                ; 0xb1a $8B0A C8                        ;
    CPY      $0562                     ; 0xb1b $8B0B CC 62 05                  ; Link's facing direction in OW
    BNE      overworld7                ; 0xb1e $8B0E D0 1E                     ;
    CPY      #$02                      ; 0xb20 $8B10 C0 02                     ;
    BEQ      L8B18                     ; 0xb22 $8B12 F0 04                     ;
    DEC      $76                       ; 0xb24 $8B14 C6 76                     ; X Position on OW (Link)
    DEC      $76                       ; 0xb26 $8B16 C6 76                     ;; X Position on OW (Link)
L8B18:                                                                          ;
    INC      $76                       ; 0xb28 $8B18 E6 76                     ;; X Position on OW (Link)
L8B1A:                                                                          ;
    LDX      #$17                      ; 0xb2a $8B1A A2 17                     ; X = 17
L8B1C:                                                                          ;
    LDA      $04D0,x                   ; 0xb2c $8B1C BD D0 04                  ;; Tile Codes to load in Overworld
    STA      $04E8,x                   ; 0xb2f $8B1F 9D E8 04                  ;
    DEX                                ; 0xb32 $8B22 CA                        ;
    BPL      L8B1C                     ; 0xb33 $8B23 10 F7                     ;
    JSR      Define_Overworld_Boundaries_Mountain_or_Water; 0xb35 $8B25 20 E8 88   ;
    PLA                                ; 0xb38 $8B28 68                        ;
    STA      $76                       ; 0xb39 $8B29 85 76                     ;; X Position on OW (Link)
    RTS                                ; 0xb3b $8B2B 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown8:                                                                 ;
.byt    $0F,$F1                        ; 0xb3c $8B2C 0F F1                     ;
; ---------------------------------------------------------------------------- ;
overworld7:                                                                     ;
    DEY                                ; 0xb3e $8B2E 88                        ;
    LDA      $76                       ; 0xb3f $8B2F A5 76                     ; X position on map (Link)
    CLC                                ; 0xb41 $8B31 18                        ;
    ADC      bank0_unknown8,y          ; 0xb42 $8B32 79 2C 8B                  ; refer to table at $0B2C
    STA      $76                       ; 0xb45 $8B35 85 76                     ;; X Position on OW (Link)
    JMP      L8B1A                     ; 0xb47 $8B37 4C 1A 8B                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8B3A:                                                                          ;
    LDA      #$0B                      ; 0xb4a $8B3A A9 0B                     ; A = 0B
    STA      $0B                       ; 0xb4c $8B3C 85 0B                     ;
    LDX      #$00                      ; 0xb4e $8B3E A2 00                     ; X = 00
    STX      $72                       ; 0xb50 $8B40 86 72                     ;
L8B42:                                                                          ;
    JSR      L8B76                     ; 0xb52 $8B42 20 76 8B                  ;
    LDA      $77                       ; 0xb55 $8B45 A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    AND      #$0F                      ; 0xb57 $8B47 29 0F                     ; keep bits .... xxxx
    CMP      #$0E                      ; 0xb59 $8B49 C9 0E                     ;
    BEQ      L8B51                     ; 0xb5b $8B4B F0 04                     ;
    INC      $75                       ; 0xb5d $8B4D E6 75                     ; Y Position on OW (Link)
L8B50     = * + $0001                                                          ;
    INC      $72                       ; 0xb5f $8B4F E6 72                     ;
L8B51:                                                                          ;
    INC      $75                       ; 0xb61 $8B51 E6 75                     ; Y Position on OW (Link)
    INC      $72                       ; 0xb63 $8B53 E6 72                     ;
    LDA      $75                       ; 0xb65 $8B55 A5 75                     ; Y Position on OW (Link)
    JSR      LDF3F                     ; 0xb67 $8B57 20 3F DF                  ;
    STA      $00                       ; 0xb6a $8B5A 85 00                     ;
    TYA                                ; 0xb6c $8B5C 98                        ;
    ASL                                ; 0xb6d $8B5D 0A                        ;
    ASL                                ; 0xb6e $8B5E 0A                        ;
    ASL                                ; 0xb6f $8B5F 0A                        ;
    ASL                                ; 0xb70 $8B60 0A                        ;
    ORA      $00                       ; 0xb71 $8B61 05 00                     ;
    STA      $77                       ; 0xb73 $8B63 85 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    LDA      $72                       ; 0xb75 $8B65 A5 72                     ;
    CMP      $0B                       ; 0xb77 $8B67 C5 0B                     ;
L8B69:                                                                          ;
    BCC      L8B42                     ; 0xb79 $8B69 90 D7                     ;
    INC      $7E                       ; 0xb7b $8B6B E6 7E                     ;
    RTS                                ; 0xb7d $8B6D 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8B6E:                                                                          ;
    LDA      #$18                      ; 0xb7e $8B6E A9 18                     ; A = 18
    STA      $0B                       ; 0xb80 $8B70 85 0B                     ;
    LDX      #$00                      ; 0xb82 $8B72 A2 00                     ; X = 00
    BEQ      L8B42                     ; 0xb84 $8B74 F0 CC                     ;
L8B76:                                                                          ;
    STX      L000E                     ; 0xb86 $8B76 86 0E                     ;
    LDA      $77                       ; 0xb88 $8B78 A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    AND      #$10                      ; 0xb8a $8B7A 29 10                     ; keep bits ...x ....
    LSR                                ; 0xb8c $8B7C 4A                        ;
    ORA      #$23                      ; 0xb8d $8B7D 09 23                     ;;Set Bits:0010_0011
    STA      L0302,x                   ; 0xb8f $8B7F 9D 02 03                  ;
    LDA      $77                       ; 0xb92 $8B82 A5 77                     ;;projectile speed	77,78,79,7A,7B,7C	77,Y
    AND      #$0E                      ; 0xb94 $8B84 29 0E                     ;;Keep Bits:0000_1110
    ASL                                ; 0xb96 $8B86 0A                        ;
    ASL                                ; 0xb97 $8B87 0A                        ;
    ORA      #$C0                      ; 0xb98 $8B88 09 C0                     ; set bits  xx.. ....
    STA      $00                       ; 0xb9a $8B8A 85 00                     ;
    LDA      $76                       ; 0xb9c $8B8C A5 76                     ;; X Position on OW (Link)
    LSR                                ; 0xb9e $8B8E 4A                        ;
    AND      #$07                      ; 0xb9f $8B8F 29 07                     ; keep bits .... .xxx
    ORA      $00                       ; 0xba1 $8B91 05 00                     ;
    STA      $0303,x                   ; 0xba3 $8B93 9D 03 03                  ;
    LDA      #$01                      ; 0xba6 $8B96 A9 01                     ; A = 01
    STA      $0304,x                   ; 0xba8 $8B98 9D 04 03                  ;
    JSR      L8BA8                     ; 0xbab $8B9B 20 A8 8B                  ;
    LDA      #$FF                      ; 0xbae $8B9E A9 FF                     ; A = FF
L8BA0:                                                                          ;
    STA      $0306,x                   ; 0xbb0 $8BA0 9D 06 03                  ;
    INX                                ; 0xbb3 $8BA3 E8                        ;
    INX                                ; 0xbb4 $8BA4 E8                        ;
    INX                                ; 0xbb5 $8BA5 E8                        ;
    INX                                ; 0xbb6 $8BA6 E8                        ;
    RTS                                ; 0xbb7 $8BA7 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8BA8:                                                                          ;
    LDA      #$00                      ; 0xbb8 $8BA8 A9 00                     ; A = 00
    STA      $0305,x                   ; 0xbba $8BAA 9D 05 03                  ;
    LDY       a:$72                     ; 0xbbd $8BAD AC 72 00                  ;
    LDX      $04D0,y                   ; 0xbc0 $8BB0 BE D0 04                  ;
    LDA      bank0_Overworld_Palette_Codes_0_3,x; 0xbc3 $8BB3 BD E3 87             ; refer to table at $07E3
    JSR      L8BF5                     ; 0xbc6 $8BB6 20 F5 8B                  ;
    LDX      $04E8,y                   ; 0xbc9 $8BB9 BE E8 04                  ;
    LDA      bank0_Overworld_Palette_Codes_0_3,x; 0xbcc $8BBC BD E3 87             ;
L8BBF:                                                                          ;
    JSR      L8BF3                     ; 0xbcf $8BBF 20 F3 8B                  ;
    INY                                ; 0xbd2 $8BC2 C8                        ;
    LDX      $04D0,y                   ; 0xbd3 $8BC3 BE D0 04                  ;
    LDA      bank0_Overworld_Palette_Codes_0_3,x; 0xbd6 $8BC6 BD E3 87             ;
    JSR      L8BF1                     ; 0xbd9 $8BC9 20 F1 8B                  ;
    LDX      $04E8,y                   ; 0xbdc $8BCC BE E8 04                  ;
    LDA      bank0_Overworld_Palette_Codes_0_3,x; 0xbdf $8BCF BD E3 87             ;
    JSR      L8BEF                     ; 0xbe2 $8BD2 20 EF 8B                  ;
    LDA      $76                       ; 0xbe5 $8BD5 A5 76                     ; X Position on OW (Link)
    LSR                                ; 0xbe7 $8BD7 4A                        ;
    BCS      L8BEE                     ; 0xbe8 $8BD8 B0 14                     ;
    LDA      $0305,x                   ; 0xbea $8BDA BD 05 03                  ;
    PHA                                ; 0xbed $8BDD 48                        ;
    LSR                                ; 0xbee $8BDE 4A                        ;
    LSR                                ; 0xbef $8BDF 4A                        ;
    AND      #$33                      ; 0xbf0 $8BE0 29 33                     ; keep bits ..xx ..xx
    STA      $00                       ; 0xbf2 $8BE2 85 00                     ;
    PLA                                ; 0xbf4 $8BE4 68                        ;
    ASL                                ; 0xbf5 $8BE5 0A                        ;
    ASL                                ; 0xbf6 $8BE6 0A                        ;
    AND      #$CC                      ; 0xbf7 $8BE7 29 CC                     ; keep bits xx.. xx..
    ORA      $00                       ; 0xbf9 $8BE9 05 00                     ;
    STA      $0305,x                   ; 0xbfb $8BEB 9D 05 03                  ;
L8BEE:                                                                          ;
    RTS                                ; 0xbfe $8BEE 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8BEF:                                                                          ;
    ASL                                ; 0xbff $8BEF 0A                        ;
    ASL                                ; 0xc00 $8BF0 0A                        ;
L8BF1:                                                                          ;
    ASL                                ; 0xc01 $8BF1 0A                        ;
    ASL                                ; 0xc02 $8BF2 0A                        ;
L8BF3:                                                                          ;
    ASL                                ; 0xc03 $8BF3 0A                        ;
    ASL                                ; 0xc04 $8BF4 0A                        ;
L8BF5:                                                                          ;
    LDX      L000E                     ; 0xc05 $8BF5 A6 0E                     ;
    ORA      $0305,x                   ; 0xc07 $8BF7 1D 05 03                  ;
    STA      $0305,x                   ; 0xc0a $8BFA 9D 05 03                  ;
    RTS                                ; 0xc0d $8BFD 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8BFE:                                                                          ;
    LDX      #$3E                      ; 0xc0e $8BFE A2 3E                     ; X = 3E
    LDA      #$0C                      ; 0xc10 $8C00 A9 0C                     ; A = 0C (Water)
L8C02:                                                                          ;
    STA      $048B,x                   ; 0xc12 $8C02 9D 8B 04                  ;
    DEX                                ; 0xc15 $8C05 CA                        ;
    BPL      L8C02                     ; 0xc16 $8C06 10 FA                     ;
    LDX      #$14                      ; 0xc18 $8C08 A2 14                     ; X = 14
    LDY      $0706                     ; 0xc1a $8C0A AC 06 07                  ; Current Region
    CPY      #$02                      ; 0xc1d $8C0D C0 02                     ;
    BCS      L8C13                     ; 0xc1f $8C0F B0 02                     ;
    LDA      #$0B                      ; 0xc21 $8C11 A9 0B                     ; A = 0B (Mountain)
L8C13:                                                                          ;
    STA      $0477,x                   ; 0xc23 $8C13 9D 77 04                  ;
    DEX                                ; 0xc26 $8C16 CA                        ;
    BPL      L8C13                     ; 0xc27 $8C17 10 FA                     ;
    LDX      #$00                      ; 0xc29 $8C19 A2 00                     ; X = 00
    STX      $03                       ; 0xc2b $8C1B 86 03                     ;
    LDA      $00                       ; 0xc2d $8C1D A5 00                     ;
    CLC                                ; 0xc2f $8C1F 18                        ;
    ADC      #$10                      ; 0xc30 $8C20 69 10                     ;
    STA      $00                       ; 0xc32 $8C22 85 00                     ;
    LDA      $01                       ; 0xc34 $8C24 A5 01                     ;
    SEC                                ; 0xc36 $8C26 38                        ;
    SBC      #$1E                      ; 0xc37 $8C27 E9 1E                     ;
    CMP      #$4B                      ; 0xc39 $8C29 C9 4B                     ;
    BCS      L8C45                     ; 0xc3b $8C2B B0 18                     ;
    JSR      L8C48                     ; 0xc3d $8C2D 20 48 8C                  ;
L8C30:                                                                          ;
    JSR      LE001                     ; 0xc40 $8C30 20 01 E0                  ;
    CMP      #$41                      ; 0xc43 $8C33 C9 41                     ;
    BPL      L8C45                     ; 0xc45 $8C35 10 0E                     ;
    LDA      $02                       ; 0xc47 $8C37 A5 02                     ;
L8C39:                                                                          ;
    STA      $0480,x                   ; 0xc49 $8C39 9D 80 04                  ;
    INX                                ; 0xc4c $8C3C E8                        ;
    CPX      $03                       ; 0xc4d $8C3D E4 03                     ;
    BNE      L8C39                     ; 0xc4f $8C3F D0 F8                     ;
    INY                                ; 0xc51 $8C41 C8                        ;
    JMP      L8C30                     ; 0xc52 $8C42 4C 30 8C                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8C45:                                                                          ;
    INC      $7E                       ; 0xc55 $8C45 E6 7E                     ;
    RTS                                ; 0xc57 $8C47 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8C48:                                                                          ;
    ASL                                ; 0xc58 $8C48 0A                        ;
    TAY                                ; 0xc59 $8C49 A8                        ;
    LDA      $6000,y                   ; 0xc5a $8C4A B9 00 60                  ;
    STA      L000E                     ; 0xc5d $8C4D 85 0E                     ;
    LDA      $6001,y                   ; 0xc5f $8C4F B9 01 60                  ;
    STA      $0F                       ; 0xc62 $8C52 85 0F                     ;
    LDY      #$00                      ; 0xc64 $8C54 A0 00                     ; Y = 00
    RTS                                ; 0xc66 $8C56 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8C57:                                                                          ;
    LDA      $79                       ; 0xc67 $8C57 A5 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      L0302                     ; 0xc69 $8C59 8D 02 03                  ;; Used when writing text to screen
    LDA      $7A                       ; 0xc6c $8C5C A5 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    AND      #$E0                      ; 0xc6e $8C5E 29 E0                     ; keep bits xxx. ....
    STA      $0303                     ; 0xc70 $8C60 8D 03 03                  ;; Letter position when writing to screen
    LDA      #$20                      ; 0xc73 $8C63 A9 20                     ; A = 20
    STA      $0304                     ; 0xc75 $8C65 8D 04 03                  ;; Text memory offset?
    LDA      #$00                      ; 0xc78 $8C68 A9 00                     ; A = 00
    STA      $06                       ; 0xc7a $8C6A 85 06                     ;
    LDA      $00                       ; 0xc7c $8C6C A5 00                     ;
    CLC                                ; 0xc7e $8C6E 18                        ;
    ADC      #$10                      ; 0xc7f $8C6F 69 10                     ;
    AND      #$F0                      ; 0xc81 $8C71 29 F0                     ; keep bits xxxx ....
    STA      $00                       ; 0xc83 $8C73 85 00                     ;
    JSR      L8A57                     ; 0xc85 $8C75 20 57 8A                  ;
L8C78:                                                                          ;
    LDY      $00                       ; 0xc88 $8C78 A4 00                     ;
    CPY      #$60                      ; 0xc8a $8C7A C0 60                     ;
    BCC      Overworld_Redrawing_Vertical_Movement_and_out_of_Side_View; 0xc8c $8C7C 90 05;
    LDA      #$0C                      ; 0xc8e $8C7E A9 0C                     ; A = 0C
    JMP      L8C86                     ; 0xc90 $8C80 4C 86 8C                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Overworld_Redrawing_Vertical_Movement_and_out_of_Side_View:                     ;
    LDA      $0470,y                   ; 0xc93 $8C83 B9 70 04                  ;
L8C86:                                                                          ;
    ASL                                ; 0xc96 $8C86 0A                        ;
    ASL                                ; 0xc97 $8C87 0A                        ;
    TAX                                ; 0xc98 $8C88 AA                        ;
    LDY      $06                       ; 0xc99 $8C89 A4 06                     ;
    LDA      #$01                      ; 0xc9b $8C8B A9 01                     ; A = 01
    STA      $08                       ; 0xc9d $8C8D 85 08                     ;
    LDA       a:$7E                     ; 0xc9f $8C8F AD 7E 00                  ;
    CMP      #$02                      ; 0xca2 $8C92 C9 02                     ;
    BEQ      L8C97                     ; 0xca4 $8C94 F0 01                     ;
    INX                                ; 0xca6 $8C96 E8                        ;
L8C97:                                                                          ;
    LDA      Overworld_Tile_Mappings_and_Overworld_Palette_Codes,x; 0xca7 $8C97 BD A3 87; Table for Overworld Tile Mappings
    STA      $0305,y                   ; 0xcaa $8C9A 99 05 03                  ;
    INY                                ; 0xcad $8C9D C8                        ;
    INX                                ; 0xcae $8C9E E8                        ;
    INX                                ; 0xcaf $8C9F E8                        ;
    DEC      $08                       ; 0xcb0 $8CA0 C6 08                     ;
    BPL      L8C97                     ; 0xcb2 $8CA2 10 F3                     ;
    STY      $06                       ; 0xcb4 $8CA4 84 06                     ;
    INC      $00                       ; 0xcb6 $8CA6 E6 00                     ;
    LDA      $00                       ; 0xcb8 $8CA8 A5 00                     ;
    AND      #$0F                      ; 0xcba $8CAA 29 0F                     ; keep bits .... xxxx
    BNE      L8C78                     ; 0xcbc $8CAC D0 CA                     ;
    LDA      #$FF                      ; 0xcbe $8CAE A9 FF                     ; A = FF
    STA      $0325                     ; 0xcc0 $8CB0 8D 25 03                  ;
    LDA      $7A                       ; 0xcc3 $8CB3 A5 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    CLC                                ; 0xcc5 $8CB5 18                        ;
    ADC      #$20                      ; 0xcc6 $8CB6 69 20                     ;
    STA      $7A                       ; 0xcc8 $8CB8 85 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    LDA      $79                       ; 0xcca $8CBA A5 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    ADC      #$00                      ; 0xccc $8CBC 69 00                     ;
    STA      $79                       ; 0xcce $8CBE 85 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    AND      #$03                      ; 0xcd0 $8CC0 29 03                     ; keep bits .... ..xx
    CMP      #$03                      ; 0xcd2 $8CC2 C9 03                     ;
    BNE      L8CDC                     ; 0xcd4 $8CC4 D0 16                     ;
    LDA      $7A                       ; 0xcd6 $8CC6 A5 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    AND      #$F0                      ; 0xcd8 $8CC8 29 F0                     ; keep bits xxxx ....
    CMP      #$C0                      ; 0xcda $8CCA C9 C0                     ;
    BCC      L8CDC                     ; 0xcdc $8CCC 90 0E                     ;
    LDA      $7A                       ; 0xcde $8CCE A5 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    AND      #$1F                      ; 0xce0 $8CD0 29 1F                     ; keep bits ...x xxxx
    STA      $7A                       ; 0xce2 $8CD2 85 7A                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    LDA      $79                       ; 0xce4 $8CD4 A5 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    EOR      #$08                      ; 0xce6 $8CD6 49 08                     ; flip bits .... x...
    AND      #$F8                      ; 0xce8 $8CD8 29 F8                     ; keep bits xxxx x...
    STA      $79                       ; 0xcea $8CDA 85 79                     ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
L8CDC:                                                                          ;
    RTS                                ; 0xcec $8CDC 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_Table_for_Sprite0:                                                        ;
.byt    $0E,$C5,$21,$6A                ; 0xced $8CDD 0E C5 21 6A               ;
; ---------------------------------------------------------------------------- ;
Side_View_Initialization_when_entering_a_Key_Area:                              ;
    LDY      #$03                      ; 0xcf1 $8CE1 A0 03                     ; Y = 03
L8CE3:                                                                          ;
    LDA      bank0_Table_for_Sprite0,y ; 0xcf3 $8CE3 B9 DD 8C                  ;
    STA      $0200,y                   ; 0xcf6 $8CE6 99 00 02                  ;
    DEY                                ; 0xcf9 $8CE9 88                        ;
    BPL      L8CE3                     ; 0xcfa $8CEA 10 F7                     ;
    LDA      #$06                      ; 0xcfc $8CEC A9 06                     ; A = 06
    STA      $0768                     ; 0xcfe $8CEE 8D 68 07                  ;;makes weird ppu effect
    LDY      #$00                      ; 0xd01 $8CF1 A0 00                     ; Y = 00
    TYA                                ; 0xd03 $8CF3 98                        ;
    STA      $076F                     ; 0xd04 $8CF4 8D 6F 07                  ; Magic State
L8CF7:                                                                          ;
    STA      $0300,y                   ; 0xd07 $8CF7 99 00 03                  ;
    STA      $0400,y                   ; 0xd0a $8CFA 99 00 04                  ;
    DEY                                ; 0xd0d $8CFD 88                        ;
    BNE      L8CF7                     ; 0xd0e $8CFE D0 F7                     ;
    STA      $0728                     ; 0xd10 $8D00 8D 28 07                  ;;_728_FreezeScrolling		= $728	;1=freeze screen, prevent from exiting left/right
    STA      $074B                     ; 0xd13 $8D03 8D 4B 07                  ;; Spell Flash Counter (bit 7 set = decor flash)
    DEY                                ; 0xd16 $8D06 88                        ;
    STY      L0363                     ; 0xd17 $8D07 8C 63 03                  ;
    STY      L03A4                     ; 0xd1a $8D0A 8C A4 03                  ;
    STY      L0302                     ; 0xd1d $8D0D 8C 02 03                  ;; Used when writing text to screen
    LDY      $075C                     ; 0xd20 $8D10 AC 5C 07                  ; Position code when entering area (0-3)
    TYA                                ; 0xd23 $8D13 98                        ;
    PHA                                ; 0xd24 $8D14 48                        ;
    LDA      $6989,y                   ; 0xd25 $8D15 B9 89 69                  ;
    STA      $0732                     ; 0xd28 $8D18 8D 32 07                  ;
    LDA      $6990,y                   ; 0xd2b $8D1B B9 90 69                  ;
    STA      $0733                     ; 0xd2e $8D1E 8D 33 07                  ;
    LDA      $6997,y                   ; 0xd31 $8D21 B9 97 69                  ;
    STA      $0734                     ; 0xd34 $8D24 8D 34 07                  ;
    LDA      $699E,y                   ; 0xd37 $8D27 B9 9E 69                  ;
    STA      $0735                     ; 0xd3a $8D2A 8D 35 07                  ;
    LDA      $69BA,y                   ; 0xd3d $8D2D B9 BA 69                  ;
    STA      $071F                     ; 0xd40 $8D30 8D 1F 07                  ;; ???
    STA      $0720                     ; 0xd43 $8D33 8D 20 07                  ;
    LDA      $69A5,y                   ; 0xd46 $8D36 B9 A5 69                  ;
    STA      $072A                     ; 0xd49 $8D39 8D 2A 07                  ; Scrolling Offset High Byte
    AND      #$01                      ; 0xd4c $8D3C 29 01                     ; keep bits .... ...x
    STA      $0746                     ; 0xd4e $8D3E 8D 46 07                  ;
    LDA      $69B3,y                   ; 0xd51 $8D41 B9 B3 69                  ;
    STA       a:$FD                     ; 0xd54 $8D44 8D FD 00                  ;
    LDA      $69AC,y                   ; 0xd57 $8D47 B9 AC 69                  ;
    STA      $072C                     ; 0xd5a $8D4A 8D 2C 07                  ; Scrolling Offset Low Byte
    AND      #$10                      ; 0xd5d $8D4D 29 10                     ; keep bits .... ..x.
    STA      $0721                     ; 0xd5f $8D4F 8D 21 07                  ;
    LDA      #$00                      ; 0xd62 $8D52 A9 00                     ; A = 00
    STA      $0740                     ; 0xd64 $8D54 8D 40 07                  ;
    JSR      L99D4                     ; 0xd67 $8D57 20 D4 99                  ;
    PLA                                ; 0xd6a $8D5A 68                        ;
    TAY                                ; 0xd6b $8D5B A8                        ;
    LDA      #$A5                      ; 0xd6c $8D5C A9 A5                     ; A = A5
    STA      $051A                     ; 0xd6e $8D5E 8D 1A 05                  ;
    INC      $0727                     ; 0xd71 $8D61 EE 27 07                  ;
    LDA      $075F                     ; 0xd74 $8D64 AD 5F 07                  ;;at bank0: 0D64: AD 5F07	LDA $075F	then 	STA $EB		; Music Channel	; something to do with music
    NOP                                ; 0xd77 $8D67 EA                        ;
    NOP                                ; 0xd78 $8D68 EA                        ;
    NOP                                ; 0xd79 $8D69 EA                        ;
    NOP                                ; 0xd7a $8D6A EA                        ;
    NOP                                ; 0xd7b $8D6B EA                        ;
    NOP                                ; 0xd7c $8D6C EA                        ;
    NOP                                ; 0xd7d $8D6D EA                        ;
    NOP                                ; 0xd7e $8D6E EA                        ;
    NOP                                ; 0xd7f $8D6F EA                        ;
    NOP                                ; 0xd80 $8D70 EA                        ;
    STA      $EB                       ; 0xd81 $8D71 85 EB                     ; Music Channel
    LDA      #$00                      ; 0xd83 $8D73 A9 00                     ; A = 00
    STA      $075F                     ; 0xd85 $8D75 8D 5F 07                  ;;at bank0: 0D64: AD 5F07	LDA $075F	then 	STA $EB		; Music Channel	; something to do with music
L8D7A     = * + $0002                                                          ;
    JMP      LC72D                     ; 0xd88 $8D78 4C 2D C7                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Table_for_Magic_Needed_for_Spells:                                              ;
;40 30 30 20 20 20 20 20		Shield                                               ;
;60 50 40 40 28 20 18 10		Jump                                                 ;
;8C 8C 78 78 64 64 64 64		Life                                                 ;
;A0 A0 78 78 50 50 50 50		Fairy                                                ;
;F0 A0 78 3C 20 20 20 20		Fire                                                 ;
;F0 F0 A0 60 50 40 30 20		Reflect                                              ;
;F0 E0 C0 A0 60 40 30 20		Spell                                                ;
;F0 F0 F0 F0 F0 F0 C8 80		Thunder                                              ;
.byt    $40,$30,$30,$20,$20,$20,$20,$20; 0xd8b $8D7B 40 30 30 20 20 20 20 20   ;
.byt    $60,$50,$40,$40,$28,$20,$18,$10; 0xd93 $8D83 60 50 40 40 28 20 18 10   ;
.byt    $8C,$8C,$78,$78,$64,$64,$64,$64; 0xd9b $8D8B 8C 8C 78 78 64 64 64 64   ;
.byt    $A0,$A0,$78,$78,$50,$50,$50,$50; 0xda3 $8D93 A0 A0 78 78 50 50 50 50   ;
.byt    $F0,$A0,$78,$3C,$20,$20,$20,$20; 0xdab $8D9B F0 A0 78 3C 20 20 20 20   ;
.byt    $F0,$F0,$A0,$60,$50,$40,$30,$20; 0xdb3 $8DA3 F0 F0 A0 60 50 40 30 20   ;
.byt    $F0,$E0,$C0,$A0,$60,$40,$30,$20; 0xdbb $8DAB F0 E0 C0 A0 60 40 30 20   ;
.byt    $F0,$F0,$F0,$F0,$F0,$F0,$C8,$80; 0xdc3 $8DB3 F0 F0 F0 F0 F0 F0 C8 80   ;
Table_for_Spell_effects:                                                        ;
.byt    $01,$02,$04,$08,$10,$20,$40,$80; 0xdcb $8DBB 01 02 04 08 10 20 40 80   ;
; ---------------------------------------------------------------------------- ;
Spell_Casting_Routine:                                                          ;
    LDA      $074C                     ; 0xdd3 $8DC3 AD 4C 07                  ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    ORA      $0524                     ; 0xdd6 $8DC6 0D 24 05                  ; Routine Index
    ORA      $DE                       ; 0xdd9 $8DC9 05 DE                     ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    BNE      L8E1F                     ; 0xddb $8DCB D0 52                     ;
    LDY      $0749                     ; 0xddd $8DCD AC 49 07                  ; Current position of the Magic selector
    INY                                ; 0xde0 $8DD0 C8                        ;
    CPY      $074A                     ; 0xde1 $8DD1 CC 4A 07                  ;
    BEQ      L8E1F                     ; 0xde4 $8DD4 F0 49                     ;
    LDA      $F5                       ; 0xde6 $8DD6 A5 F5                     ; Controller 1 buttons pressed
    AND      #$20                      ; 0xde8 $8DD8 29 20                     ; check if Select is pressed
    BEQ      L8E1F                     ; 0xdea $8DDA F0 43                     ; if Select NOT pressed, skip to $0E1F
    LDY      $0749                     ; 0xdec $8DDC AC 49 07                  ; Current position of the Magic selector
    LDA      $077B,y                   ; 0xdef $8DDF B9 7B 07                  ; Sanity Check...
    BEQ      L8E1F                     ; 0xdf2 $8DE2 F0 3B                     ; if Magic is not learned, skip to $0E1F
    TYA                                ; 0xdf4 $8DE4 98                        ; Check if enough Magic left in meter...
    ASL                                ; 0xdf5 $8DE5 0A                        ; Multiply by 8
    ASL                                ; 0xdf6 $8DE6 0A                        ;
    ASL                                ; 0xdf7 $8DE7 0A                        ;
    ADC      $0778                     ; 0xdf8 $8DE8 6D 78 07                  ; Add Magic Level to get magic usage (index)
    TAY                                ; 0xdfb $8DEB A8                        ;
    LDA      $0773                     ; 0xdfc $8DEC AD 73 07                  ; Current Magic left in meter
    SEC                                ; 0xdff $8DEF 38                        ;
    SBC      L8D7A,y                   ; 0xe00 $8DF0 F9 7A 8D                  ; refer to table at $0D7A (+1)
    BCC      L8E3B                     ; 0xe03 $8DF3 90 46                     ; if Carry Clear (not enough magic) goto $0E3B
L8DF5:                                                                          ;
    STA      $0773                     ; 0xe05 $8DF5 8D 73 07                  ; else store new amount in meter
    LDY      $0749                     ; 0xe08 $8DF8 AC 49 07                  ; Current position of the Magic selector
    LDA      Table_for_Spell_effects,y ; 0xe0b $8DFB B9 BB 8D                  ; refer to table at $0DBB (spell effect)
    ORA      $076F                     ; 0xe0e $8DFE 0D 6F 07                  ; Add effect to Magic State
    STA      $076F                     ; 0xe11 $8E01 8D 6F 07                  ;; Magic State	0=beam projectile only full hp		10=flame projectile
    INY                                ; 0xe14 $8E04 C8                        ;
    STY      $074A                     ; 0xe15 $8E05 8C 4A 07                  ;
    LDA      $074F                     ; 0xe18 $8E08 AD 4F 07                  ;; Related to Pause Pane
    ORA      #$80                      ; 0xe1b $8E0B 09 80                     ; set bits  x... ....
    STA      $074F                     ; 0xe1d $8E0D 8D 4F 07                  ;; Related to Pause Pane
    LDA      #$20                      ; 0xe20 $8E10 A9 20                     ; A = 20 (..x. ....) (flashing length)
    CPY      #$06                      ; 0xe22 $8E12 C0 06                     ;
    BCC      L8E18                     ; 0xe24 $8E14 90 02                     ; if (Y < 6) skip to $0E18
    ORA      #$80                      ; 0xe26 $8E16 09 80                     ; set bits  x... .... (bit 7 set = flash decor)
L8E18:                                                                          ;
    STA      $074B                     ; 0xe28 $8E18 8D 4B 07                  ; flashing counter
    LDA      #$04                      ; 0xe2b $8E1B A9 04                     ; A = 04 (sound of magic spell)
    STA      $EC                       ; 0xe2d $8E1D 85 EC                     ; Sound Effects Type 1
L8E1F:                                                                          ;
    LDA      #$00                      ; 0xe2f $8E1F A9 00                     ; A = 00
    STA      $D0                       ; 0xe31 $8E21 85 D0                     ; Reset Jump Spell modifier
    JSR      bank0_related_to_palette_cycling__flashing_; 0xe33 $8E23 20 35 92     ; related to palette cycling (flashing)
    LDY      #$07                      ; 0xe36 $8E26 A0 07                     ; Y = 07
L8E28:                                                                          ;
    TYA                                ; 0xe38 $8E28 98                        ;
    PHA                                ; 0xe39 $8E29 48                        ;
    LDA      Table_for_Spell_effects,y ; 0xe3a $8E2A B9 BB 8D                  ; Spell Effects Table
    BIT      $076F                     ; 0xe3d $8E2D 2C 6F 07                  ; Magic State
    BEQ      L8E35                     ; 0xe40 $8E30 F0 03                     ;
    JSR      L8E44                     ; 0xe42 $8E32 20 44 8E                  ;
L8E35:                                                                          ;
    PLA                                ; 0xe45 $8E35 68                        ;
    TAY                                ; 0xe46 $8E36 A8                        ;
    DEY                                ; 0xe47 $8E37 88                        ;
    BPL      L8E28                     ; 0xe48 $8E38 10 EE                     ; loop for each learned Spell
    RTS                                ; 0xe4a $8E3A 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8E3B:                                                                          ;
    CMP      #$FF                      ; 0xe4b $8E3B C9 FF                     ;
    BNE      L8E1F                     ; 0xe4d $8E3D D0 E0                     ;
    LDA      #$00                      ; 0xe4f $8E3F A9 00                     ; A = 00
    JMP      L8DF5                     ; 0xe51 $8E41 4C F5 8D                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8E44:                                                                          ;
    TYA                                ; 0xe54 $8E44 98                        ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0xe55 $8E45 20 85 D3;
Pointer_Table_for_spells_routines:                                              ;
.word    Shield_Spell                  ; 0xe58 $8E48 8D 8E                     ;
.word    Jump_Spell                    ; 0xe5a $8E4A 58 8E                     ;
.word    Life_Spell                    ; 0xe5c $8E4C 5D 8E                     ;
.word    bank0_Fairy_Spell             ; 0xe5e $8E4E A4 91                     ;
.word    bank0_Fire_Spell              ; 0xe60 $8E50 F1 97                     ;
.word    Reflect_Spell                 ; 0xe62 $8E52 96 8E                     ;
.word    Spell_Spell                   ; 0xe64 $8E54 73 8E                     ;
.word    Thunder_Spell                 ; 0xe66 $8E56 E6 91                     ;
; ---------------------------------------------------------------------------- ;
Jump_Spell:                                                                     ;
    LDA      #$01                      ; 0xe68 $8E58 A9 01                     ; A = 01
    STA      $D0                       ; 0xe6a $8E5A 85 D0                     ;;jump_spell_on (0=off, 1=on); Jump Spell modifier (1 = Jump spell active)
    RTS                                ; 0xe6c $8E5C 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Life_Spell:                                                                     ;
    LDA      $076F                     ; 0xe6d $8E5D AD 6F 07                  ; Magic State
    AND      #$FB                      ; 0xe70 $8E60 29 FB                     ; keep bits xxxx x.xx
    STA      $076F                     ; 0xe72 $8E62 8D 6F 07                  ; Remove Life State from Magic State
    LDA      $070D                     ; 0xe75 $8E65 AD 0D 07                  ;; Life to be added to Life Meter
    CLC                                ; 0xe78 $8E68 18                        ;
    ADC      #$30                      ; 0xe79 $8E69 69 30                     ; Amount of Life to add to meter
    BCC      L8E6F                     ; 0xe7b $8E6B 90 02                     ;
    LDA      #$FF                      ; 0xe7d $8E6D A9 FF                     ; A = FF
L8E6F:                                                                          ;
    STA      $070D                     ; 0xe7f $8E6F 8D 0D 07                  ;; Life to be added to Life Meter
    RTS                                ; 0xe82 $8E72 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Spell_Spell:                                                                    ;
    LDA      $0707                     ; 0xe83 $8E73 AD 07 07                  ; Current World
    BEQ      L8E8A                     ; 0xe86 $8E76 F0 12                     ;
    CMP      #$03                      ; 0xe88 $8E78 C9 03                     ;
    BCS      L8E8A                     ; 0xe8a $8E7A B0 0E                     ;
    LDA      $0561                     ; 0xe8c $8E7C AD 61 05                  ; Area Code
    CMP      #$14                      ; 0xe8f $8E7F C9 14                     ;
    BNE      L8E95                     ; 0xe91 $8E81 D0 12                     ;RTS
    LDA      #$01                      ; 0xe93 $8E83 A9 01                     ; A = 01
    STA      $DE                       ; 0xe95 $8E85 85 DE                     ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    JMP      spells_routines2          ; 0xe97 $8E87 4C D8 8E                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8E8A:                                                                          ;
    JMP      L91AF                     ; 0xe9a $8E8A 4C AF 91                  ;
;Related to Spell spell                                                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Shield_Spell:                                                                   ;
    LDA      #$16                      ; 0xe9d $8E8D A9 16                     ; A = 16
    STA      $69DE                     ; 0xe9f $8E8F 8D DE 69                  ;
    STA      $070F                     ; 0xea2 $8E92 8D 0F 07                  ; Color of Link after Shield Spell
L8E95:                                                                          ;
    RTS                                ; 0xea5 $8E95 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Reflect_Spell:                                                                  ;
    LDA      #$01                      ; 0xea6 $8E96 A9 01                     ; A = 01
    STA      $0710                     ; 0xea8 $8E98 8D 10 07                  ;; Reflect Spell effect (01 = activated)
    RTS                                ; 0xeab $8E9B 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Tables_for_Big_Door_Tile_Mappings:                                              ;
;0E9C: F4 F4 30 31 30 31 30 31 F4 F4	Table for Door top (A bytes)              ;
;0EA6: F4 30 31 30 49 4A 31 30 31 F4	Table for Door top (A bytes)              ;
;0EB0: 30 31 30 31 FF FF 30 31 30 31	Table for Door body (A bytes)             ;
.byt    $F4,$F4,$30,$31,$30,$31,$30,$31; 0xeac $8E9C F4 F4 30 31 30 31 30 31   ;
.byt    $F4,$F4                        ; 0xeb4 $8EA4 F4 F4                     ;
L8EA6:                                                                          ;
.byt    $F4,$30,$31,$30,$49,$4A,$31,$30; 0xeb6 $8EA6 F4 30 31 30 49 4A 31 30   ;
.byt    $31,$F4                        ; 0xebe $8EAE 31 F4                     ;
L8EB0:                                                                          ;
.byt    $30,$31,$30,$31,$FF,$FF,$30,$31; 0xec0 $8EB0 30 31 30 31 FF FF 30 31   ;
.byt    $30,$31                        ; 0xec8 $8EB8 30 31                     ;
bank0_table0:                                                                   ;
;0EBA: Table for ? (18 bytes)                                                  ;
;                                                                              ;
;23 F5 43 5F                                                                   ;
;23 ED 43 FF                                                                   ;
;23 E5 43 FF                                                                   ;
;23 DD 43 FF                                                                   ;
;23 D5 43 FF                                                                   ;
;23 CD 43 FF                                                                   ;
;                                                                              ;
.byt    $23,$F5,$43,$5F,$23,$ED,$43,$FF; 0xeca $8EBA 23 F5 43 5F 23 ED 43 FF   ;
.byt    $23,$E5,$43,$FF,$23,$DD,$43,$FF; 0xed2 $8EC2 23 E5 43 FF 23 DD 43 FF   ;
.byt    $23,$D5,$43,$FF,$23,$CD,$43,$FF; 0xeda $8ECA 23 D5 43 FF 23 CD 43 FF   ;
; ---------------------------------------------------------------------------- ;
bank0_Pointer_table_for_Big_Door_Tile_Mappings:                                 ;
.word    Tables_for_Big_Door_Tile_Mappings; 0xee2 $8ED2 9C 8E                  ;
.word    L8EA6                         ; 0xee4 $8ED4 A6 8E                     ;
.word    L8EB0                         ; 0xee6 $8ED6 B0 8E                     ;
; ---------------------------------------------------------------------------- ;
spells_routines2:                                                               ;
;check if spell spell already used                                             ;
    LDA      $0763                     ; 0xee8 $8ED8 AD 63 07                  ;; Counter for Big Door in Hidden Kasuto
    CMP      #$10                      ; 0xeeb $8EDB C9 10                     ;
    BNE      L8EE4                     ; 0xeed $8EDD D0 05                     ;
    LDA      #$00                      ; 0xeef $8EDF A9 00                     ; A = 00
    STA      $DE                       ; 0xef1 $8EE1 85 DE                     ;;prevent movement/actions, occur when a chat is occuring; Spell Spell modifier (1 = Spell spell active) (and more)	;set to 1 to prevent moving, 0 to allow??
    RTS                                ; 0xef3 $8EE3 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8EE4:                                                                          ;
    CMP      #$0F                      ; 0xef4 $8EE4 C9 0F                     ;
    BNE      L8EEB                     ; 0xef6 $8EE6 D0 03                     ;
    JSR      bank0_unknown10           ; 0xef8 $8EE8 20 84 8F                  ;
L8EEB:                                                                          ;
    LDA      $049F                     ; 0xefb $8EEB AD 9F 04                  ;; Related to Big Door
    BNE      L8EF7                     ; 0xefe $8EEE D0 07                     ;
    LDA      #$10                      ; 0xf00 $8EF0 A9 10                     ; A = 10
    STA      $EC                       ; 0xf02 $8EF2 85 EC                     ; Sound Effects Type 1
    STA      $049F                     ; 0xf04 $8EF4 8D 9F 04                  ;; Related to Big Door
L8EF7:                                                                          ;
    LDA      #$54                      ; 0xf07 $8EF7 A9 54                     ; A = 54
    STA      $60BD                     ; 0xf09 $8EF9 8D BD 60                  ;
    LDA      $12                       ; 0xf0c $8EFC A5 12                     ; Permanent Frame Counter
    AND      #$0F                      ; 0xf0e $8EFE 29 0F                     ; keep bits .... xxxx
    BNE      L8F57                     ; 0xf10 $8F00 D0 55                     ;
    LDA      #$23                      ; 0xf12 $8F02 A9 23                     ; A = 23
    STA      $00                       ; 0xf14 $8F04 85 00                     ;
    LDA      #$36                      ; 0xf16 $8F06 A9 36                     ; A = 36
    STA      $01                       ; 0xf18 $8F08 85 01                     ;
    LDX      #$00                      ; 0xf1a $8F0A A2 00                     ; X = 00
    LDA      $0763                     ; 0xf1c $8F0C AD 63 07                  ;; Counter for Big Door in Hidden Kasuto
L8F0F:                                                                          ;
    PHA                                ; 0xf1f $8F0F 48                        ;
    CMP      #$03                      ; 0xf20 $8F10 C9 03                     ;
    BPL      L8F26                     ; 0xf22 $8F12 10 12                     ;
    ASL                                ; 0xf24 $8F14 0A                        ;
    TAY                                ; 0xf25 $8F15 A8                        ;
    LDA      bank0_Pointer_table_for_Big_Door_Tile_Mappings,y; 0xf26 $8F16 B9 D2 8E;
    STA      $02                       ; 0xf29 $8F19 85 02                     ;
    LDA      bank0_Pointer_table_for_Big_Door_Tile_Mappings+$01,y; 0xf2b $8F1B B9 D3 8E;
    STA      $03                       ; 0xf2e $8F1E 85 03                     ;
    JSR      L8F58                     ; 0xf30 $8F20 20 58 8F                  ;
    INX                                ; 0xf33 $8F23 E8                        ;
    INX                                ; 0xf34 $8F24 E8                        ;
    INX                                ; 0xf35 $8F25 E8                        ;
L8F26:                                                                          ;
    LDA      $01                       ; 0xf36 $8F26 A5 01                     ;
    SEC                                ; 0xf38 $8F28 38                        ;
    SBC      #$20                      ; 0xf39 $8F29 E9 20                     ;
    STA      $01                       ; 0xf3b $8F2B 85 01                     ;
    BCS      L8F31                     ; 0xf3d $8F2D B0 02                     ;
    DEC      $00                       ; 0xf3f $8F2F C6 00                     ;
L8F31:                                                                          ;
    PLA                                ; 0xf41 $8F31 68                        ;
    SEC                                ; 0xf42 $8F32 38                        ;
    SBC      #$01                      ; 0xf43 $8F33 E9 01                     ;
    BPL      L8F0F                     ; 0xf45 $8F35 10 D8                     ;
    LDA      $0764                     ; 0xf47 $8F37 AD 64 07                  ;; Counter for Big Door in Hidden Kasuto
    BNE      L8F4F                     ; 0xf4a $8F3A D0 13                     ;
    LDX      #$00                      ; 0xf4c $8F3C A2 00                     ; X = 00
L8F3E:                                                                          ;
    LDA      bank0_table0,x            ; 0xf4e $8F3E BD BA 8E                  ; refer to table at $0EBA
    STA      L0363,x                   ; 0xf51 $8F41 9D 63 03                  ;
    INX                                ; 0xf54 $8F44 E8                        ;
    CPX      #$18                      ; 0xf55 $8F45 E0 18                     ;
    BNE      L8F3E                     ; 0xf57 $8F47 D0 F5                     ;
    INC      $0764                     ; 0xf59 $8F49 EE 64 07                  ;; Counter for Big Door in Hidden Kasuto
    DEC      $0763                     ; 0xf5c $8F4C CE 63 07                  ;; Counter for Big Door in Hidden Kasuto
L8F4F:                                                                          ;
    LDA      #$FF                      ; 0xf5f $8F4F A9 FF                     ; A = FF
    STA      L0363,x                   ; 0xf61 $8F51 9D 63 03                  ;
    INC      $0763                     ; 0xf64 $8F54 EE 63 07                  ;; Counter for Big Door in Hidden Kasuto
L8F57:                                                                          ;
    RTS                                ; 0xf67 $8F57 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8F58:                                                                          ;
    LDA      #$01                      ; 0xf68 $8F58 A9 01                     ; A = 01
    STA      $0725                     ; 0xf6a $8F5A 8D 25 07                  ; PPU Macro Selector
    LDA      $00                       ; 0xf6d $8F5D A5 00                     ;
    STA      L0363,x                   ; 0xf6f $8F5F 9D 63 03                  ;
    LDA      $01                       ; 0xf72 $8F62 A5 01                     ;
    STA      $0364,x                   ; 0xf74 $8F64 9D 64 03                  ;
    LDA      #$0A                      ; 0xf77 $8F67 A9 0A                     ; A = 0A
    STA      $0365,x                   ; 0xf79 $8F69 9D 65 03                  ;
    LDY      #$00                      ; 0xf7c $8F6C A0 00                     ; Y = 00
L8F6E:                                                                          ;
    LDA      ($02),y                   ; 0xf7e $8F6E B1 02                     ;
    STA      $0366,x                   ; 0xf80 $8F70 9D 66 03                  ;
    INX                                ; 0xf83 $8F73 E8                        ;
    INY                                ; 0xf84 $8F74 C8                        ;
    CPY      #$0A                      ; 0xf85 $8F75 C0 0A                     ;
    BNE      L8F6E                     ; 0xf87 $8F77 D0 F5                     ;
    RTS                                ; 0xf89 $8F79 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown9:                                                                 ;
.byt    $E1,$DF,$E0,$DF,$DE            ; 0xf8a $8F7A E1 DF E0 DF DE            ;
L8F7F:                                                                          ;
.byt    $E2,$E2,$D6,$E2,$E2            ; 0xf8f $8F7F E2 E2 D6 E2 E2            ;
; ---------------------------------------------------------------------------- ;
bank0_unknown10:                                                                ;
    LDA      #$00                      ; 0xf94 $8F84 A9 00                     ;	; A = 00
    STA      L000E                     ; 0xf96 $8F86 85 0E                     ;
    LDA      #$60                      ; 0xf98 $8F88 A9 60                     ; A = 60
    STA      $0F                       ; 0xf9a $8F8A 85 0F                     ;
    LDA      #$3B                      ; 0xf9c $8F8C A9 3B                     ; A = 3B
    STA      $02                       ; 0xf9e $8F8E 85 02                     ;
    LDX      #$04                      ; 0xfa0 $8F90 A2 04                     ; X = 04
L8F92:                                                                          ;
    LDY      $02                       ; 0xfa2 $8F92 A4 02                     ;
    LDA      bank0_unknown9,x          ; 0xfa4 $8F94 BD 7A 8F                  ; refer to table at $0F7A
L8F97:                                                                          ;
    JSR      LDF56                     ; 0xfa7 $8F97 20 56 DF                  ; Set tile and go down 1 row
    CMP      #$B0                      ; 0xfaa $8F9A C9 B0                     ; bottom limit
    BCS      L8FA4                     ; 0xfac $8F9C B0 06                     ;
    LDA      L8F7F,x                   ; 0xfae $8F9E BD 7F 8F                  ;
    JMP      L8F97                     ; 0xfb1 $8FA1 4C 97 8F                  ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8FA4:                                                                          ;
    INC      $02                       ; 0xfb4 $8FA4 E6 02                     ;
    DEX                                ; 0xfb6 $8FA6 CA                        ;
    BPL      L8F92                     ; 0xfb7 $8FA7 10 E9                     ;
    RTS                                ; 0xfb9 $8FA9 60                        ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown11:                                                                ;
;3F 00 04	PPU Address 3F00, transfer 4 bytes                                   ;
;0F 2C 1C 0C	Palette for ?                                                     ;
.byt    $3F,$00,$04,$0F,$2C,$1C,$0C,$FF; 0xfba $8FAA 3F 00 04 0F 2C 1C 0C FF   ;
L8FB2:                                                                          ;
.byt    $2C                            ; 0xfc2 $8FB2 2C                        ;
L8FB3:                                                                          ;
.byt    $1C                            ; 0xfc3 $8FB3 1C                        ;
L8FB4:                                                                          ;
.byt    $0C,$2C,$1C                    ; 0xfc4 $8FB4 0C 2C 1C                  ;
L8FB7:                                                                          ;
.byt    $E6,$29,$E6,$29,$A5,$29,$E9,$08; 0xfc7 $8FB7 E6 29 E6 29 A5 29 E9 08   ;
; ---------------------------------------------------------------------------- ;
bank0_unknown12:                                                                ;
    STA      $2A                       ; 0xfcf $8FBF 85 2A                     ; Enemy 0 Y Position
    LDA      #$78                      ; 0xfd1 $8FC1 A9 78                     ; A = 78
    STA      $CC                       ; 0xfd3 $8FC3 85 CC                     ;; Link's X Position on Screen; Player X On Screen; Link's X Position on Screen
    LDA      #$80                      ; 0xfd5 $8FC5 A9 80                     ; A = 80
    STA      $CD                       ; 0xfd7 $8FC7 85 CD                     ;
    LDA      #$0A                      ; 0xfd9 $8FC9 A9 0A                     ; A = 0A
    STA      $80                       ; 0xfdb $8FCB 85 80                     ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    STA      $81                       ; 0xfdd $8FCD 85 81                     ;
    LDA      $9F                       ; 0xfdf $8FCF A5 9F                     ;;link facedir SideScroll		; Direction arrow pressed (1 = right, 2 = left)
    STA      $A0                       ; 0xfe1 $8FD1 85 A0                     ;
    LDA      #$30                      ; 0xfe3 $8FD3 A9 30                     ; A = 30
    STA      $91                       ; 0xfe5 $8FD5 85 91                     ;
    LDX      #$00                      ; 0xfe7 $8FD7 A2 00                     ; X = 00
    STX      $C8                       ; 0xfe9 $8FD9 86 C8                     ;; go outside: set $c8 to 3
    STX      $C9                       ; 0xfeb $8FDB 86 C9                     ;
    INX                                ; 0xfed $8FDD E8                        ;
    STX      $11                       ; 0xfee $8FDE 86 11                     ;
    STX      $0753                     ; 0xff0 $8FE0 8E 53 07                  ;
    JSR      LEC02                     ; 0xff3 $8FE3 20 02 EC                  ;
    LDA      #$08                      ; 0xff6 $8FE6 A9 08                     ; A = 08
    STA      $90                       ; 0xff8 $8FE8 85 90                     ;
    LDX      #$00                      ; 0xffa $8FEA A2 00                     ; X = 00
    STX      $11                       ; 0xffc $8FEC 86 11                     ;
    JSR      LEC02                     ; 0xffe $8FEE 20 02 EC                  ;
    LDA       a:$12                     ; 0x1001 $8FF1 AD 12 00                 ;
;LDA $0012                                                                     ;
    AND      #$01                      ; 0x1004 $8FF4 29 01                    ; keep bits .... ...x
    BNE      L9039                     ; 0x1006 $8FF6 D0 41                    ;
    LDX      #$07                      ; 0x1008 $8FF8 A2 07                    ; X = 07
L8FFA:                                                                          ;
    LDA      bank0_unknown11,x         ; 0x100a $8FFA BD AA 8F                 ; refer to table at $0FAA
    STA      L0302,x                   ; 0x100d $8FFD 9D 02 03                 ;
L9000:                                                                          ;
    DEX                                ; 0x1010 $9000 CA                       ;
    BPL      L8FFA                     ; 0x1011 $9001 10 F7                    ; loop
    INC      $0484                     ; 0x1013 $9003 EE 84 04                 ;
    LDY      $0484                     ; 0x1016 $9006 AC 84 04                 ;
    CPY      #$03                      ; 0x1019 $9009 C0 03                    ;
    BCC      L9012                     ; 0x101b $900B 90 05                    ;
    LDY      #$00                      ; 0x101d $900D A0 00                    ; Y = 00
    STY      $0484                     ; 0x101f $900F 8C 84 04                 ;
L9012:                                                                          ;
    LDA      L8FB2,y                   ; 0x1022 $9012 B9 B2 8F                 ;
    STA      $0306                     ; 0x1025 $9015 8D 06 03                 ;; Letter Written to Screen
    LDA      L8FB3,y                   ; 0x1028 $9018 B9 B3 8F                 ;
    STA      $0307                     ; 0x102b $901B 8D 07 03                 ;; Text memory offset?
    LDA      L8FB4,y                   ; 0x102e $901E B9 B4 8F                 ;
    STA      $0308                     ; 0x1031 $9021 8D 08 03                 ;
    LDA      $29                       ; 0x1034 $9024 A5 29                    ; Link's Y position
    CMP      #$E8                      ; 0x1036 $9026 C9 E8                    ;
    BCC      L9039                     ; 0x1038 $9028 90 0F                    ;
    INC      $0726                     ; 0x103a $902A EE 26 07                 ;;?which is the black transition screen when loading a battle scene.  It hides the loading gfx.; Dialog Box Drawing Flag (00-01) Toggles while a dialog box is being drawn.
    LDA      #$08                      ; 0x103d $902D A9 08                    ; A = 08
    LDY      $0707                     ; 0x103f $902F AC 07 07                 ;; "world" (0=caves, enemy encounters...; 1=west hyrule towns; 2=east hyrule towns; 3=palace 1,2,5 ; 4=palace 3,4,6 ; 5=great palace)
    BEQ      L9036                     ; 0x1042 $9032 F0 02                    ;
    LDA      #$10                      ; 0x1044 $9034 A9 10                    ; A = 10
L9036:                                                                          ;
    STA      $0736                     ; 0x1046 $9036 8D 36 07                 ;; Game Mode ; screen intro type
L9039:                                                                          ;
    RTS                                ; 0x1049 $9039 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L903A:                                                                          ;
    LDA      $B5                       ; 0x104a $903A A5 B5                    ;;2 will make link die in lava	;3 move right like when win game at dark link
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x104c $903C 20 85 D3;
bank0_pointer_table_unknown13:                                                  ;
.word    bank0_Related_to_Side_View_initialization; 0x104f $903F 47 90         ;
.word    bank0_Side_View3              ; 0x1051 $9041 BF 92                    ;
.word    L918E                         ; 0x1053 $9043 8E 91                    ;
; ---------------------------------------------------------------------------- ;
bank0_unknown13:                                                                ;
.byt    $08,$D8                        ; 0x1055 $9045 08 D8                    ;
; ---------------------------------------------------------------------------- ;
bank0_Related_to_Side_View_initialization:                                      ;
    LDA      #$03                      ; 0x1057 $9047 A9 03                    ; A = 03
    STA      $80                       ; 0x1059 $9049 85 80                    ; Current Animation Frame for Link
    LSR                                ; 0x105b $904B 4A                       ;
    STA      $19                       ; 0x105c $904C 85 19                    ;;fall_or_invisible (0=invisible, 1=normal, 2~FF=fall in hole); Position Code for Fairy Cursor (Selection Screen)	(and) ;draw link's sprite =yes/no
    STA      $17                       ; 0x105e $904E 85 17                    ;; Link's Shield Position; Link's Shield Position (0 = Link ducked)
    LSR                                ; 0x1060 $9050 4A                       ;
    STA      $0753                     ; 0x1061 $9051 8D 53 07                 ;
    STA      $057D                     ; 0x1064 $9054 8D 7D 05                 ; Link's Y Velocity
    LDX      #$07                      ; 0x1067 $9057 A2 07                    ; X = 07
L9059:                                                                          ;
    STA      $87,x                     ; 0x1069 $9059 95 87                    ;; Projectile Type
    DEX                                ; 0x106b $905B CA                       ;
    BPL      L9059                     ; 0x106c $905C 10 FB                    ;
    LDY      $075C                     ; 0x106e $905E AC 5C 07                 ;;start this map page		; start this many 'pages' into the scene	0	1	2	3		;4 = middle?	; Position code when entering area (0-3) (can be 4)
    CPY      #$04                      ; 0x1071 $9061 C0 04                    ;
    BCS      L9079                     ; 0x1073 $9063 B0 14                    ;
    LDY      $0701                     ; 0x1075 $9065 AC 01 07                 ;; Facing direction when entering area, how Link enters the screen	0=left, 1=right
    LDA      $072C                     ; 0x1078 $9068 AD 2C 07                 ; Scrolling Offset Low Byte
    ADC      bank0_unknown13,y         ; 0x107b $906B 79 45 90                 ; refer to table at $1045
    STA      $4D                       ; 0x107e $906E 85 4D                    ; Link's X position (low byte)
    LDA      $072A                     ; 0x1080 $9070 AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0x1083 $9073 69 00                    ;
    LDX      #$08                      ; 0x1085 $9075 A2 08                    ; X = 08
    BNE      L9081                     ; 0x1087 $9077 D0 08                    ;
L9079:                                                                          ;
    LDA      $05D3,y                   ; 0x1089 $9079 B9 D3 05                 ;
    STA      $4D                       ; 0x108c $907C 85 4D                    ;;link X pos SideScroll		; Link's X Position (low byte)
    LDA      $05CC,y                   ; 0x108e $907E B9 CC 05                 ;
L9081:                                                                          ;
    STA      $3B                       ; 0x1091 $9081 85 3B                    ; Link's X position (high byte)
    INX                                ; 0x1093 $9083 E8                       ;
    STX      $0503                     ; 0x1094 $9084 8E 03 05                 ; Timer for moving left or right
    LDY      $0701                     ; 0x1097 $9087 AC 01 07                 ;; Facing direction when entering area, how Link enters the screen	0=left, 1=right
    INY                                ; 0x109a $908A C8                       ;
    STY      $5F                       ; 0x109b $908B 84 5F                    ; Link's facing direction
    STY      $9F                       ; 0x109d $908D 84 9F                    ;;link facedir SideScroll		; Direction arrow pressed (1 = right, 2 = left)
    LDA      $0704                     ; 0x109f $908F AD 04 07                 ;; 0=start bottom of screen, 1=start at top of screen ; elevator
    BNE      L9097                     ; 0x10a2 $9092 D0 03                    ;
    JSR      bank7_code33              ; 0x10a4 $9094 20 30 E0                 ;
L9097:                                                                          ;
    JSR      L90ED                     ; 0x10a7 $9097 20 ED 90                 ;
    LDY      $D1                       ; 0x10aa $909A A4 D1                    ;; Area Width (0-3)
    DEY                                ; 0x10ac $909C 88                       ;
    BNE      L90AB                     ; 0x10ad $909D D0 0C                    ;
    LDA      $3B                       ; 0x10af $909F A5 3B                    ;;link Pagepos SideScroll		; Link's X Position (high byte)
    AND      #$02                      ; 0x10b1 $90A1 29 02                    ; keep bits .... ..x.
    TAY                                ; 0x10b3 $90A3 A8                       ;
    STY      $69C2                     ; 0x10b4 $90A4 8C C2 69                 ;
    INY                                ; 0x10b7 $90A7 C8                       ;
    STY      $69C5                     ; 0x10b8 $90A8 8C C5 69                 ;
L90AB:                                                                          ;
    LDA      #$00                      ; 0x10bb $90AB A9 00                    ; A = 00
    STA      $0704                     ; 0x10bd $90AD 8D 04 07                 ;; 0=start bottom of screen, 1=start at top of screen ; elevator
    STA      $0705                     ; 0x10c0 $90B0 8D 05 07                 ;; Related to how Link entered the room (walking, falling, elevator...)
    STA      $C8                       ; 0x10c3 $90B3 85 C8                    ;; go outside: set $c8 to 3
    STA      $0741                     ; 0x10c5 $90B5 8D 41 07                 ;; Controller 1 Input; A/B Buttons Pressed
    STA      $0742                     ; 0x10c8 $90B8 8D 42 07                 ;; Controller 1 Input; Left/Right Buttons Held
    STA      $0400                     ; 0x10cb $90BB 8D 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    STA      $70                       ; 0x10ce $90BE 85 70                    ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    STA      $0710                     ; 0x10d0 $90C0 8D 10 07                 ;; Reflect Spell effect (01 = activated)
    STA      $070F                     ; 0x10d3 $90C3 8D 0F 07                 ;; Color of Link after Shield Spell
    LDY      $070E                     ; 0x10d6 $90C6 AC 0E 07                 ;;setting to 1 will make link sink (duck into the chimney)
    BEQ      L90D7                     ; 0x10d9 $90C9 F0 0C                    ;
    STA      $29                       ; 0x10db $90CB 85 29                    ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    STA      $0503                     ; 0x10dd $90CD 8D 03 05                 ;; Timer for moving left or right (when entering area)
    STA      $070E                     ; 0x10e0 $90D0 8D 0E 07                 ;;setting to 1 will make link sink (duck into the chimney)
    LDA      #$50                      ; 0x10e3 $90D3 A9 50                    ; A = 50
    STA      $4D                       ; 0x10e5 $90D5 85 4D                    ;;link X pos SideScroll		; Link's X Position (low byte)
L90D7:                                                                          ;
    INC      $B5                       ; 0x10e7 $90D7 E6 B5                    ;;2 will make link die in lava	;3 move right like when win game at dark link
    LDA      #$2A                      ; 0x10e9 $90D9 A9 2A                    ; A = 2A
    STA      $69DE                     ; 0x10eb $90DB 8D DE 69                 ;
    LDA      $075F                     ; 0x10ee $90DE AD 5F 07                 ;;at bank0: 0D64: AD 5F07	LDA $075F	then 	STA $EB		; Music Channel	; something to do with music
    CMP      #$04                      ; 0x10f1 $90E1 C9 04                    ;
    BNE      bank0_Set_Music_to_A      ; 0x10f3 $90E3 D0 05                    ;
    LDA      #$02                      ; 0x10f5 $90E5 A9 02                    ; A = 02
    STA      $EE                       ; 0x10f7 $90E7 85 EE                    ;; Sound Effects Type 3; Sound Effects Type 3
    RTS                                ; 0x10f9 $90E9 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_Set_Music_to_A:                                                           ;
    STA      $EB                       ; 0x10fa $90EA 85 EB                    ; Music Channel
    RTS                                ; 0x10fc $90EC 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L90ED:                                                                          ;
    LDA      $0759                     ; 0x10fd $90ED AD 59 07                 ;; if not 0, cause fairy spawn at next encounter (??)
    BNE      L912F                     ; 0x1100 $90F0 D0 3D                    ;
    LDA      $0757                     ; 0x1102 $90F2 AD 57 07                 ;; Position of Elevator in Map
    BEQ      bank0_Place_Locked_Door   ; 0x1105 $90F5 F0 03                    ;
    JSR      bank0_Place_Elevator___spawn; 0x1107 $90F7 20 50 91                 ; Place Elevator
bank0_Place_Locked_Door:                                                        ;
    LDA      $0758                     ; 0x110a $90FA AD 58 07                 ;; Position of Locked Door in Map
    BEQ      L912E                     ; 0x110d $90FD F0 2F                    ;
    LSR                                ; 0x110f $90FF 4A                       ;
    LSR                                ; 0x1110 $9100 4A                       ;
    LSR                                ; 0x1111 $9101 4A                       ;
    LSR                                ; 0x1112 $9102 4A                       ;
    STA      $0D                       ; 0x1113 $9103 85 0D                    ;
    TAX                                ; 0x1115 $9105 AA                       ;
    JSR      LC2A6                     ; 0x1116 $9106 20 A6 C2                 ; Check if Locked Door was previously unlocked
    BEQ      L912E                     ; 0x1119 $9109 F0 23                    ;
    LDA      $0D                       ; 0x111b $910B A5 0D                    ;
    STA      $3D                       ; 0x111d $910D 85 3D                    ; Enemy 1 X Position (high byte)
    LDA      $0758                     ; 0x111f $910F AD 58 07                 ; Position of Locked Door in Map
    ASL                                ; 0x1122 $9112 0A                       ;
    ASL                                ; 0x1123 $9113 0A                       ;
    ASL                                ; 0x1124 $9114 0A                       ;
    ASL                                ; 0x1125 $9115 0A                       ;
    STA      $4F                       ; 0x1126 $9116 85 4F                    ;
    LDA      #$A0                      ; 0x1128 $9118 A9 A0                    ; A = A0
    STA      $2B                       ; 0x112a $911A 85 2B                    ; Enemy 1 Y Position
    LDA      #$02                      ; 0x112c $911C A9 02                    ; A = 02
L911E:                                                                          ;
    STA      $A2                       ; 0x112e $911E 85 A2                    ; Enemy Code for Enemy 1
    LDX      #$FF                      ; 0x1130 $9120 A2 FF                    ; X = FF
    STX      $BD                       ; 0x1132 $9122 86 BD                    ;
    STX      $C3                       ; 0x1134 $9124 86 C3                    ; Current HP for Enemy 1
    INX                                ; 0x1136 $9126 E8                       ;
    STX      $B0                       ; 0x1137 $9127 86 B0                    ; Enemy State for Enemy 1
    INX                                ; 0x1139 $9129 E8                       ;
    STX      $1B                       ; 0x113a $912A 86 1B                    ;
    STX      $B7                       ; 0x113c $912C 86 B7                    ; Generated Enemy Slot 1
L912E:                                                                          ;
    RTS                                ; 0x113e $912E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L912F:                                                                          ;
    LDA      #$80                      ; 0x113f $912F A9 80                    ; A = 80
    STA      $4F                       ; 0x1141 $9131 85 4F                    ;
    LDA      $29                       ; 0x1143 $9133 A5 29                    ; Link's Y Position
    SBC      #$2A                      ; 0x1145 $9135 E9 2A                    ;
    STA      $2B                       ; 0x1147 $9137 85 2B                    ;
    LDA      #$01                      ; 0x1149 $9139 A9 01                    ; A = 01
    STA      $3D                       ; 0x114b $913B 85 3D                    ;
    LSR                                ; 0x114d $913D 4A                       ;
    STA      $82                       ; 0x114e $913E 85 82                    ;
    STA      $B6                       ; 0x1150 $9140 85 B6                    ;;monster exists		b6,b7,b8,b9,ba,bb	exists:0=no,1=yes,2=kill/give exp;set to 10 will make link fall down 
    STA      $B8                       ; 0x1152 $9142 85 B8                    ;;? makes link hold up the last ? item he got 
    STA      $B9                       ; 0x1154 $9144 85 B9                    ;;? makes link hold up the last ? item he got 
    STA      $BA                       ; 0x1156 $9146 85 BA                    ;
    STA      $BB                       ; 0x1158 $9148 85 BB                    ;
    STA      $D1                       ; 0x115a $914A 85 D1                    ;; Area Width (0-3)
    BPL      L911E                     ; 0x115c $914C 10 D0                    ;
Table_for_Elevator_Positions_when_changing_screens:                             ;
.byt    $10,$C0                        ; 0x115e $914E 10 C0                    ;
; ---------------------------------------------------------------------------- ;
bank0_Place_Elevator___spawn:                                                   ;
    LDY      #$00                      ; 0x1160 $9150 A0 00                    ; Y = 00
    STY      $3C                       ; 0x1162 $9152 84 3C                    ; Enemy 0 X Position (high byte)
    ASL                                ; 0x1164 $9154 0A                       ;
    ASL                                ; 0x1165 $9155 0A                       ;
    ASL                                ; 0x1166 $9156 0A                       ;
    ROL      $3C                       ; 0x1167 $9157 26 3C                    ; Enemy 0 X Position (high byte)
    ASL                                ; 0x1169 $9159 0A                       ;
    ROL      $3C                       ; 0x116a $915A 26 3C                    ; Enemy 0 X Position (high byte)
    ADC      #$04                      ; 0x116c $915C 69 04                    ;
    STA      $4E                       ; 0x116e $915E 85 4E                    ; Enemy 0 X Position (low byte)
    LDA      #$13                      ; 0x1170 $9160 A9 13                    ; A = 13 (13 = Elevator)
    STA      $A1                       ; 0x1172 $9162 85 A1                    ; Enemy Code for Enemy 0
    INY                                ; 0x1174 $9164 C8                       ;
    STY      $1A                       ; 0x1175 $9165 84 1A                    ;;draw sprite ?	1a,1b,1c,1d,1e,1f; Saved Game Presence in Slot (1 bit per slot) ?
    STY      $B6                       ; 0x1177 $9167 84 B6                    ; Generated Enemy Slot 0
    LDA      #$98                      ; 0x1179 $9169 A9 98                    ; A = 98
    STA      $2A                       ; 0x117b $916B 85 2A                    ; Enemy 0 Y Position
    STA      $BC                       ; 0x117d $916D 85 BC                    ;;monster sram pointer?	bc,bd,be,bf,c0,c1	LDY bc,x  ; then LDA ($D6),Y   if bit7 is set it means monster killed?
    LDY      $0705                     ; 0x117f $916F AC 05 07                 ;; Related to how Link entered the room (walking, falling, elevator...)
    BEQ      L9188                     ; 0x1182 $9172 F0 14                    ;
    LDA      #$70                      ; 0x1184 $9174 A9 70                    ; A = 70
    STA      $4D                       ; 0x1186 $9176 85 4D                    ; Link's X Position (low byte)
    LDA      $0743                     ; 0x1188 $9178 AD 43 07                 ; Up/Down Buttons Held
    LSR                                ; 0x118b $917B 4A                       ;
    LSR                                ; 0x118c $917C 4A                       ;
    LSR                                ; 0x118d $917D 4A                       ;
    TAY                                ; 0x118e $917E A8                       ;
    LDA      Table_for_Elevator_Positions_when_changing_screens,y; 0x118f $917F B9 4E 91;
    STA      $2A                       ; 0x1192 $9182 85 2A                    ; Enemy 0 Y Position
    ADC      #$08                      ; 0x1194 $9184 69 08                    ;
    STA      $29                       ; 0x1196 $9186 85 29                    ; Link's Y Position
L9188:                                                                          ;
    LDA      #$00                      ; 0x1198 $9188 A9 00                    ; A = 00
    STA      $0743                     ; 0x119a $918A 8D 43 07                 ; Up/Down Buttons Held
    RTS                                ; 0x119d $918D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L918E:                                                                          ;
    LDA      #$00                      ; 0x119e $918E A9 00                    ; A = 00
    STA       a:$14                     ; 0x11a0 $9190 8D 14 00                 ;
    LDA      $29                       ; 0x11a3 $9193 A5 29                    ; Link's Y Position
    CMP      #$D0                      ; 0x11a5 $9195 C9 D0                    ;
    BCC      L919C                     ; 0x11a7 $9197 90 03                    ;
    INC      $0494                     ; 0x11a9 $9199 EE 94 04                 ;; INC $0494 TO KILL LINK
L919C:                                                                          ;
    INC      $29                       ; 0x11ac $919C E6 29                    ; Link's Y Position
    JSR      L93AC                     ; 0x11ae $919E 20 AC 93                 ;
    JMP      bank7_Links_Display_Routine; 0x11b1 $91A1 4C F0 EB                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_Fairy_Spell:                                                              ;
    LDA      $29                       ; 0x11b4 $91A4 A5 29                    ; Link's Y position
    CMP      #$20                      ; 0x11b6 $91A6 C9 20                    ;
    BCC      L91AE                     ; 0x11b8 $91A8 90 04                    ; if (A < 20) goto $11AE (RTS)
    LDA      #$08                      ; 0x11ba $91AA A9 08                    ; A = 08
    STA      $13                       ; 0x11bc $91AC 85 13                    ; Fairy state (0 = Not in Fairy state)
L91AE:                                                                          ;
    RTS                                ; 0x11be $91AE 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L91AF:                                                                          ;
    LDA      $076F                     ; 0x11bf $91AF AD 6F 07                 ; Magic State
    AND      #$BF                      ; 0x11c2 $91B2 29 BF                    ; keep bits x.xx xxxx
    STA      $076F                     ; 0x11c4 $91B4 8D 6F 07                 ; Remove Spell State from Magic State
    LDX      #$05                      ; 0x11c7 $91B7 A2 05                    ; X = 05
L91B9:                                                                          ;
    STX      $10                       ; 0x11c9 $91B9 86 10                    ;; used as monster x register ;draw boss hp bar
    LDA      $B6,x                     ; 0x11cb $91BB B5 B6                    ; Generated Enemy Slot
    BEQ      L91E2                     ; 0x11cd $91BD F0 23                    ;
    LDY      $A1,x                     ; 0x11cf $91BF B4 A1                    ; Enemy Code
    LDA      $6DF9,y                   ; 0x11d1 $91C1 B9 F9 6D                 ;
    AND      #$10                      ; 0x11d4 $91C4 29 10                    ; keep bits ...x ....
    BNE      L91E2                     ; 0x11d6 $91C6 D0 1A                    ;
    INX                                ; 0x11d8 $91C8 E8                       ;
    LDY      #$01                      ; 0x11d9 $91C9 A0 01                    ; Y = 01
    JSR      bank7_code51              ; 0x11db $91CB 20 7D F2                 ;
    LDX      $10                       ; 0x11de $91CE A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      $C9                       ; 0x11e0 $91D0 A5 C9                    ;
    BNE      L91E2                     ; 0x11e2 $91D2 D0 0E                    ;
    STA      $71,x                     ; 0x11e4 $91D4 95 71                    ; Enemy X Velocity
    STA      $057E,x                   ; 0x11e6 $91D6 9D 7E 05                 ; Enemy Y Velocity
    STA      $0504,x                   ; 0x11e9 $91D9 9D 04 05                 ; Timer for Enemy AI
    STA      $C2,x                     ; 0x11ec $91DC 95 C2                    ; Enemy Current HP
    LDA      #$04                      ; 0x11ee $91DE A9 04                    ; A = 04 (Enemy Code for Bot)
    STA      $A1,x                     ; 0x11f0 $91E0 95 A1                    ; set Enemy Code to Bot
L91E2:                                                                          ;
    DEX                                ; 0x11f2 $91E2 CA                       ;
    BPL      L91B9                     ; 0x11f3 $91E3 10 D4                    ;
    RTS                                ; 0x11f5 $91E5 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Thunder_Spell:                                                                  ;
    LDA      $076F                     ; 0x11f6 $91E6 AD 6F 07                 ; Magic State
    AND      #$7F                      ; 0x11f9 $91E9 29 7F                    ; keep bits .xxx xxxx
    STA      $076F                     ; 0x11fb $91EB 8D 6F 07                 ; Remove Thunder State from Magic State
    LDA      #$00                      ; 0x11fe $91EE A9 00                    ; A = 00
    BEQ      L91F4                     ; 0x1200 $91F0 F0 02                    ;
    LDA      #$0A                      ; 0x1202 $91F2 A9 0A                    ; A = 0A
L91F4:                                                                          ;
    STA      $D9                       ; 0x1204 $91F4 85 D9                    ;; Thunder Spell modifier ?
    LDA      $10                       ; 0x1206 $91F6 A5 10                    ;; used as monster x register ;draw boss hp bar
    PHA                                ; 0x1208 $91F8 48                       ;
    LDX      #$05                      ; 0x1209 $91F9 A2 05                    ; X = 05
L91FB:                                                                          ;
    STX      $10                       ; 0x120b $91FB 86 10                    ;; used as monster x register ;draw boss hp bar
    LDA      #$00                      ; 0x120d $91FD A9 00                    ; A = 00
    STA      $87,x                     ; 0x120f $91FF 95 87                    ;; Projectile Type
    LDA      $B6,x                     ; 0x1211 $9201 B5 B6                    ;; Generated Enemy Slot
    BEQ      L922D                     ; 0x1213 $9203 F0 28                    ;
    CMP      #$01                      ; 0x1215 $9205 C9 01                    ;
    BNE      L922D                     ; 0x1217 $9207 D0 24                    ;
    INX                                ; 0x1219 $9209 E8                       ;
    LDY      #$01                      ; 0x121a $920A A0 01                    ; Y = 01
    JSR      bank7_code51              ; 0x121c $920C 20 7D F2                 ;
    LDX      $10                       ; 0x121f $920F A6 10                    ;; used as monster x register ;draw boss hp bar
    LDY      $D9                       ; 0x1221 $9211 A4 D9                    ;; Thunder Spell modifier ?
    BNE      L922A                     ; 0x1223 $9213 D0 15                    ;
    LDA      $C9                       ; 0x1225 $9215 A5 C9                    ;
    AND      #$88                      ; 0x1227 $9217 29 88                    ; keep bits x... x...
    BNE      L922D                     ; 0x1229 $9219 D0 12                    ;
    LDY      $A1,x                     ; 0x122b $921B B4 A1                    ; Enemy Code
    LDA      $6E41,y                   ; 0x122d $921D B9 41 6E                 ;
    LDY      #$09                      ; 0x1230 $9220 A0 09                    ; Y = 09
    AND      #$A0                      ; 0x1232 $9222 29 A0                    ; keep bits x.x. ....
    BMI      L922D                     ; 0x1234 $9224 30 07                    ;
    BEQ      L922A                     ; 0x1236 $9226 F0 02                    ;
    LDY      #$01                      ; 0x1238 $9228 A0 01                    ; Y = 01;attack power level to use for thunder spell when using on (thunderbird) monster with special attribute ?
L922A:                                                                          ;
    JSR      LE726                     ; 0x123a $922A 20 26 E7                 ;
L922D:                                                                          ;
    DEX                                ; 0x123d $922D CA                       ;
    BPL      L91FB                     ; 0x123e $922E 10 CB                    ;
    PLA                                ; 0x1240 $9230 68                       ;
    STA      $10                       ; 0x1241 $9231 85 10                    ;; used as monster x register ;draw boss hp bar
    TAX                                ; 0x1243 $9233 AA                       ;
    RTS                                ; 0x1244 $9234 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_related_to_palette_cycling__flashing_:                                    ;
    LDA      $0751                     ; 0x1245 $9235 AD 51 07                 ; related to BG resulting palette?
    STA      $69CC                     ; 0x1248 $9238 8D CC 69                 ; $09CC in VRAM
    LDA      $074B                     ; 0x124b $923B AD 4B 07                 ;; Spell Flash Counter (bit 7 set = decor flash)
    ASL                                ; 0x124e $923E 0A                       ;
    BNE      L9245                     ; 0x124f $923F D0 04                    ; if Not Zero, goto $1245
    STA      $074B                     ; 0x1251 $9241 8D 4B 07                 ;; Spell Flash Counter (bit 7 set = decor flash)
L9244:                                                                          ;
    RTS                                ; 0x1254 $9244 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9245:                                                                          ;
    LDX      $0301                     ; 0x1255 $9245 AE 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    CPX      #$19                      ; 0x1258 $9248 E0 19                    ;
    BCS      L9244                     ; 0x125a $924A B0 F8                    ;
    DEC      $074B                     ; 0x125c $924C CE 4B 07                 ;; Spell Flash Counter (bit 7 set = decor flash)
    LDA      #$3F                      ; 0x125f $924F A9 3F                    ; A = 3F
    STA      L0302,x                   ; 0x1261 $9251 9D 02 03                 ;
    LDA      #$10                      ; 0x1264 $9254 A9 10                    ; A = 10
    STA      $0303,x                   ; 0x1266 $9256 9D 03 03                 ;
    LDA      #$04                      ; 0x1269 $9259 A9 04                    ; A = 04
    STA      $0304,x                   ; 0x126b $925B 9D 04 03                 ;
    LDY      #$04                      ; 0x126e $925E A0 04                    ; Y = 04
    LDA      $07AF                     ; 0x1270 $9260 AD AF 07                 ;
    AND      #$38                      ; 0x1273 $9263 29 38                    ; keep bits ..xx x...
    CMP      #$08                      ; 0x1275 $9265 C9 08                    ;
    BNE      L9272                     ; 0x1277 $9267 D0 09                    ;
    LDA      $0707                     ; 0x1279 $9269 AD 07 07                 ; Current World
    ORA      $0785                     ; 0x127c $926C 0D 85 07                 ; Have Candle
    BNE      L9272                     ; 0x127f $926F D0 01                    ;
    INY                                ; 0x1281 $9271 C8                       ;
L9272:                                                                          ;
    LDA      $074B                     ; 0x1282 $9272 AD 4B 07                 ;; Spell Flash Counter (bit 7 set = decor flash)
    AND      #$7F                      ; 0x1285 $9275 29 7F                    ; keep bits .xxx xxxx
    BEQ      L927C                     ; 0x1287 $9277 F0 03                    ;
    AND      #$03                      ; 0x1289 $9279 29 03                    ; keep bits .... ..xx
    TAY                                ; 0x128b $927B A8                       ;
L927C:                                                                          ;
    LDA      $69CE,y                   ; 0x128c $927C B9 CE 69                 ;
    STA      $0306,x                   ; 0x128f $927F 9D 06 03                 ;
    LDA      $69D4,y                   ; 0x1292 $9282 B9 D4 69                 ;
    STA      $0307,x                   ; 0x1295 $9285 9D 07 03                 ;
    LDA      $69DA,y                   ; 0x1298 $9288 B9 DA 69                 ;
    STA      $0308,x                   ; 0x129b $928B 9D 08 03                 ;
    LDA      $074B                     ; 0x129e $928E AD 4B 07                 ;; Spell Flash Counter (bit 7 set = decor flash)
    ASL                                ; 0x12a1 $9291 0A                       ;
    BCS      L9296                     ; 0x12a2 $9292 B0 02                    ;
    LDY      #$04                      ; 0x12a4 $9294 A0 04                    ; Y = 04
L9296:                                                                          ;
    LDA      $69C8,y                   ; 0x12a6 $9296 B9 C8 69                 ;
    STA      $0305,x                   ; 0x12a9 $9299 9D 05 03                 ;
    LDA      #$FF                      ; 0x12ac $929C A9 FF                    ; A = FF
    STA      $0309,x                   ; 0x12ae $929E 9D 09 03                 ;
    TXA                                ; 0x12b1 $92A1 8A                       ;
    CLC                                ; 0x12b2 $92A2 18                       ;
    ADC      #$07                      ; 0x12b3 $92A3 69 07                    ;
    STA      $0301                     ; 0x12b5 $92A5 8D 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    RTS                                ; 0x12b8 $92A8 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown14:                                                                ;
.byt    $F0                            ; 0x12b9 $92A9 F0                       ;
L92AA:                                                                          ;
.byt    $10,$18,$E8,$FF,$00,$18,$E8,$FF; 0x12ba $92AA 10 18 E8 FF 00 18 E8 FF  ;
.byt    $00,$18                        ; 0x12c2 $92B2 00 18                    ;
L92B4:                                                                          ;
.byt    $E8,$00,$00,$FF,$18,$18,$18,$FF; 0x12c4 $92B4 E8 00 00 FF 18 18 18 FF  ;
.byt    $E8,$E8,$E8                    ; 0x12cc $92BC E8 E8 E8                 ;
; ---------------------------------------------------------------------------- ;
bank0_Side_View3:                                                               ;
    LDX      #$00                      ; 0x12cf $92BF A2 00                    ; X = 00
    STX       a:$14                     ; 0x12d1 $92C1 8E 14 00                 ;
    LDA      $070E                     ; 0x12d4 $92C4 AD 0E 07                 ;;setting to 1 will make link sink (duck into the chimney)
    BEQ      L92E9                     ; 0x12d7 $92C7 F0 20                    ;
    INC      $070E                     ; 0x12d9 $92C9 EE 0E 07                 ;;setting to 1 will make link sink (duck into the chimney)
    LDA      $070E                     ; 0x12dc $92CC AD 0E 07                 ;;setting to 1 will make link sink (duck into the chimney)
    CMP      #$38                      ; 0x12df $92CF C9 38                    ;
    BCS      L92E1                     ; 0x12e1 $92D1 B0 0E                    ;
    INC      $29                       ; 0x12e3 $92D3 E6 29                    ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    LDA      #$20                      ; 0x12e5 $92D5 A9 20                    ; A = 20
    STA      $0752                     ; 0x12e7 $92D7 8D 52 07                 ;
    LDA      #$06                      ; 0x12ea $92DA A9 06                    ; A = 06
    STA      $80                       ; 0x12ec $92DC 85 80                    ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    JMP      bank7_Links_Display_Routine; 0x12ee $92DE 4C F0 EB                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L92E1:                                                                          ;
    INC      $075B                     ; 0x12f1 $92E1 EE 5B 07                 ;
    LDA      #$16                      ; 0x12f4 $92E4 A9 16                    ; A = 16
    JMP      LE187                     ; 0x12f6 $92E6 4C 87 E1                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L92E9:                                                                          ;
    LDA      $DE                       ; 0x12f9 $92E9 A5 DE                    ; Spell Spell modifier
    BNE      L9340                     ; 0x12fb $92EB D0 53                    ;
    LDA      $0752                     ; 0x12fd $92ED AD 52 07                 ;
    ORA      $0753                     ; 0x1300 $92F0 0D 53 07                 ;
    STA      $0753                     ; 0x1303 $92F3 8D 53 07                 ;
    LDA       a:$13                     ; 0x1306 $92F6 AD 13 00                 ;
    BEQ      L9341                     ; 0x1309 $92F9 F0 46                    ;
    LDA      #$00                      ; 0x130b $92FB A9 00                    ; A = 00
    STA      $70                       ; 0x130d $92FD 85 70                    ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    LDA      #$02                      ; 0x130f $92FF A9 02                    ; A = 02
    STA      $EF                       ; 0x1311 $9301 85 EF                    ;; Sound Effects Type 4; Sound Effects Type 4
    LDA      $F7                       ; 0x1313 $9303 A5 F7                    ;; Controller 1 Buttons Held
    AND      #$0C                      ; 0x1315 $9305 29 0C                    ; keep bits .... xx.. (Arrows Up and Down)
    STA      $0743                     ; 0x1317 $9307 8D 43 07                 ;; Controller 1 Input; Up/Down Buttons Held		;elevator was moving up or down: 8=up, 4=down
    LDA      $F7                       ; 0x131a $930A A5 F7                    ;; Controller 1 Buttons Held
    AND      #$0F                      ; 0x131c $930C 29 0F                    ; keep bits .... xxxx (Arrows All Directions)
    BEQ      L9340                     ; 0x131e $930E F0 30                    ; if no Arrow pressed, goto $1340 (RTS)
    TAY                                ; 0x1320 $9310 A8                       ;
    AND      $05E7                     ; 0x1321 $9311 2D E7 05                 ;
    BNE      L9340                     ; 0x1324 $9314 D0 2A                    ;
    LDA      $F7                       ; 0x1326 $9316 A5 F7                    ;; Controller 1 Buttons Held
    AND      #$03                      ; 0x1328 $9318 29 03                    ; keep bits .... ..xx (Arrows Right/Left)
    BEQ      L931E                     ; 0x132a $931A F0 02                    ;
    STA      $5F                       ; 0x132c $931C 85 5F                    ; Link's facing direction
L931E:                                                                          ;
    LDA      L92AA,y                   ; 0x132e $931E B9 AA 92                 ; refer to table at $12A9 (offset +1)
    STA      $70                       ; 0x1331 $9321 85 70                    ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
    LDA      L92B4,y                   ; 0x1333 $9323 B9 B4 92                 ; refer to table at $12B4
    STA      $057D                     ; 0x1336 $9326 8D 7D 05                 ;;vspeed (Link's vertical velocity, negative is up.); Link's Y Velocity; Player Y Delta; Link's Y Velocity
    JSR      bank7_code34              ; 0x1339 $9329 20 70 E0                 ;
    LDA      $A7                       ; 0x133c $932C A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    LDY      $29                       ; 0x133e $932E A4 29                    ; Link's Y Position
    CPY      #$18                      ; 0x1340 $9330 C0 18                    ;
    BCS      L9336                     ; 0x1342 $9332 B0 02                    ;
    ORA      #$08                      ; 0x1344 $9334 09 08                    ; set bits  .... x...
L9336:                                                                          ;
    AND      $F7                       ; 0x1346 $9336 25 F7                    ;; Controller 1 Buttons Held
    BNE      L9340                     ; 0x1348 $9338 D0 06                    ;
    JSR      bank0_goto__1610          ; 0x134a $933A 20 10 96                 ; goto $1610
    JMP      LD20A                     ; 0x134d $933D 4C 0A D2                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9340:                                                                          ;
    RTS                                ; 0x1350 $9340 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9341:                                                                          ;
    LDA      $049C                     ; 0x1351 $9341 AD 9C 04                 ;;hold item above head: timer
    BEQ      L936B                     ; 0x1354 $9344 F0 25                    ;
    DEC      $049C                     ; 0x1356 $9346 CE 9C 04                 ;;hold item above head: timer
    LDA      $07FB                     ; 0x1359 $9349 AD FB 07                 ;
    BEQ      L936B                     ; 0x135c $934C F0 1D                    ;
    LDA      $29                       ; 0x135e $934E A5 29                    ; Link's Y Position
    CLC                                ; 0x1360 $9350 18                       ;
    ADC      #$08                      ; 0x1361 $9351 69 08                    ;
    AND      #$F0                      ; 0x1363 $9353 29 F0                    ; keep bits xxxx ....
    STA      $29                       ; 0x1365 $9355 85 29                    ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    LDY      #$0C                      ; 0x1367 $9357 A0 0C                    ; Y = 0C
    LDA      $0707                     ; 0x1369 $9359 AD 07 07                 ;; "world" (0=caves, enemy encounters...; 1=west hyrule towns; 2=east hyrule towns; 3=palace 1,2,5 ; 4=palace 3,4,6 ; 5=great palace)
    BEQ      L9364                     ; 0x136c $935C F0 06                    ;
    INY                                ; 0x136e $935E C8                       ;
    CMP      #$03                      ; 0x136f $935F C9 03                    ;
    BCC      L9364                     ; 0x1371 $9361 90 01                    ;
    INY                                ; 0x1373 $9363 C8                       ;
L9364:                                                                          ;
    STY      $80                       ; 0x1374 $9364 84 80                    ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    LDA      #$02                      ; 0x1376 $9366 A9 02                    ; A = 02
    STA      $9F                       ; 0x1378 $9368 85 9F                    ;;link facedir SideScroll		; Direction arrow pressed (1 = right, 2 = left)
    RTS                                ; 0x137a $936A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L936B:                                                                          ;
    LDA      $050C                     ; 0x137b $936B AD 0C 05                 ; Timer for Link being in attacked graphic
    BEQ      L9379                     ; 0x137e $936E F0 09                    ; if not in Attacked State, skip to $1379
    JSR      Link_Jumping_routine      ; 0x1380 $9370 20 C5 94                 ;
    JSR      L93A3                     ; 0x1383 $9373 20 A3 93                 ;
    JMP      L938A                     ; 0x1386 $9376 4C 8A 93                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9379:                                                                          ;
    LDA      $0503                     ; 0x1389 $9379 AD 03 05                 ; This is to prevent actions (A/B/Move)
    BNE      L9381                     ; 0x138c $937C D0 03                    ; when entering an area from the side...
    JSR      L959C                     ; 0x138e $937E 20 9C 95                 ;
L9381:                                                                          ;
    JSR      bank0_Side_View4__walking ; 0x1391 $9381 20 BC 93                 ; Walking
    JSR      Link_Jumping_routine      ; 0x1394 $9384 20 C5 94                 ; Jumping
    JSR      bank0_Sword_Slash         ; 0x1397 $9387 20 83 94                 ; Sword Slash
L938A:                                                                          ;
    LDY      #$02                      ; 0x139a $938A A0 02                    ; Y = 02
    LDA      $70                       ; 0x139c $938C A5 70                    ; Link's X Velocity
    BEQ      L9395                     ; 0x139e $938E F0 05                    ;
    BMI      L9393                     ; 0x13a0 $9390 30 01                    ;
    DEY                                ; 0x13a2 $9392 88                       ;
L9393:                                                                          ;
    STY      $5F                       ; 0x13a3 $9393 84 5F                    ; Link's facing direction
L9395:                                                                          ;
    JSR      bank7_code34              ; 0x13a5 $9395 20 70 E0                 ;
    LDA      $A7                       ; 0x13a8 $9398 A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    AND      #$03                      ; 0x13aa $939A 29 03                    ; keep bits .... ..xx
    BEQ      L93A2                     ; 0x13ac $939C F0 04                    ;
    LDA      #$00                      ; 0x13ae $939E A9 00                    ; A = 00				;LINK WALKED INTO A WALL 007
    STA      $70                       ; 0x13b0 $93A0 85 70                    ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
L93A2:                                                                          ;
    RTS                                ; 0x13b2 $93A2 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L93A3:                                                                          ;
    LDA      $A7                       ; 0x13b3 $93A3 A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    AND      #$03                      ; 0x13b5 $93A5 29 03                    ; keep bits .... ..xx
    BNE      L93AC                     ; 0x13b7 $93A7 D0 03                    ;
    JSR      bank0_jump_to__143A       ; 0x13b9 $93A9 20 3A 94                 ;
L93AC:                                                                          ;
    LDA      #$0A                      ; 0x13bc $93AC A9 0A                    ; A = 0A
    STA      $80                       ; 0x13be $93AE 85 80                    ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
L93B0:                                                                          ;
    RTS                                ; 0x13c0 $93B0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Table_for_Link1:                                                                ;
;13B1: Table for Link's walking velocities (2 bytes)                           ;
;                                                                              ;
;01 = amount added to Link's velocity, facing right                            ;
;FF = amount added to Link's velocity, facing left                             ;
;                                                                              ;
;13B3: Table for Link's max velocities (2 bytes)                               ;
;                                                                              ;
;18 = Link's max velocity, facing right                                        ;
;E8 = Link's max velocity, facing left                                         ;
;                                                                              ;
;13B5: Table for Link's velocity when entering an area (2 bytes)               ;
;                                                                              ;
;08 = Initial velocity when entering an area from the left side                ;
;F8 = Initial velocity when entering an area from the right side               ;
.byt    $01,$FF                        ; 0x13c1 $93B1 01 FF                    ;
L93B3:                                                                          ;
.byt    $18,$E8                        ; 0x13c3 $93B3 18 E8                    ;
L93B5:                                                                          ;
.byt    $08,$F8                        ; 0x13c5 $93B5 08 F8                    ;
L93B7:                                                                          ;
;Table for Delay between animation frames when accelerating (5 bytes)          ;
;                                                                              ;
;13B7: 08 07 05 04 03                                                          ;
.byt    $08,$07,$05,$04,$03            ; 0x13c7 $93B7 08 07 05 04 03           ;
; ---------------------------------------------------------------------------- ;
bank0_Side_View4__walking:                                                      ;
    LDA      $0503                     ; 0x13cc $93BC AD 03 05                 ; Timer for initial move when entering area
    BEQ      L93CD                     ; 0x13cf $93BF F0 0C                    ;
    LDY      $0701                     ; 0x13d1 $93C1 AC 01 07                 ;; Facing direction when entering area, how Link enters the screen	0=left, 1=right
    LDA      L93B5,y                   ; 0x13d4 $93C4 B9 B5 93                 ; refer to table at $13B5
    ASL                                ; 0x13d7 $93C7 0A                       ; A * 2
    STA      $70                       ; 0x13d8 $93C8 85 70                    ; Link's Walking Velocity
    JMP      bank0_jump_to__143A       ; 0x13da $93CA 4C 3A 94                 ; jump to $143A
                                                                               ;
; ---------------------------------------------------------------------------- ;
L93CD:                                                                          ;
    LDA      $0502                     ; 0x13dd $93CD AD 02 05                 ;; Timer
    BNE      L93DC                     ; 0x13e0 $93D0 D0 0A                    ;
    LDA      $0400                     ; 0x13e2 $93D2 AD 00 04                 ; Sword slash frame code
    BEQ      L93DC                     ; 0x13e5 $93D5 F0 05                    ;
    LDA      $0479                     ; 0x13e7 $93D7 AD 79 04                 ; Link is in mid-air ? (1 = mid-air)
    BEQ      L93B0                     ; 0x13ea $93DA F0 D4                    ;
L93DC:                                                                          ;
    LDA      $17                       ; 0x13ec $93DC A5 17                    ; Link's Shield Position
    BEQ      L93E6                     ; 0x13ee $93DE F0 06                    ;
    LDY      $0742                     ; 0x13f0 $93E0 AC 42 07                 ; Left/Right buttons held
    DEY                                ; 0x13f3 $93E3 88                       ;
    BPL      Links_Acceleration_Routine; 0x13f4 $93E4 10 17                    ;
L93E6:                                                                          ;
    LDA      $0479                     ; 0x13f6 $93E6 AD 79 04                 ; Link is in mid-air ? (1 = mid-air)
    BNE      L942B                     ; 0x13f9 $93E9 D0 40                    ;
    LDY      $5F                       ; 0x13fb $93EB A4 5F                    ; Link's facing direction
    DEY                                ; 0x13fd $93ED 88                       ;
    LDA      $70                       ; 0x13fe $93EE A5 70                    ; Link's X Velocity
    BEQ      L93FA                     ; 0x1400 $93F0 F0 08                    ; if Link not moving, skip to $13FA ($1419)
    SEC                                ; 0x1402 $93F2 38                       ;
    SBC      Table_for_Link1,y         ; 0x1403 $93F3 F9 B1 93                 ; refer to table at $13B1
    STA      $70                       ; 0x1406 $93F6 85 70                    ; Link's X Velocity
    BNE      L93FA                     ; 0x1408 $93F8 D0 00                    ;
L93FA:                                                                          ;
    JMP      L9419                     ; 0x140a $93FA 4C 19 94                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Links_Acceleration_Routine:                                                     ;
    LDA      $70                       ; 0x140d $93FD A5 70                    ; Link's X Velocity
    CMP      L93B3,y                   ; 0x140f $93FF D9 B3 93                 ; compare to max velocity
    BEQ      L9419                     ; 0x1412 $9402 F0 15                    ;
    CLC                                ; 0x1414 $9404 18                       ;
    ADC      Table_for_Link1,y         ; 0x1415 $9405 79 B1 93                 ; refer to table at $13B1
    INY                                ; 0x1418 $9408 C8                       ;
    CPY      $5F                       ; 0x1419 $9409 C4 5F                    ; Link's facing direction
    BEQ      L9417                     ; 0x141b $940B F0 0A                    ;
    DEY                                ; 0x141d $940D 88                       ;
    CMP      L93B3,y                   ; 0x141e $940E D9 B3 93                 ; refer to table at $13B3
    BEQ      L9417                     ; 0x1421 $9411 F0 04                    ;
    CLC                                ; 0x1423 $9413 18                       ;
    ADC      Table_for_Link1,y         ; 0x1424 $9414 79 B1 93                 ; refer to table at $13B1 (1 or -1)
L9417:                                                                          ;
    STA      $70                       ; 0x1427 $9417 85 70                    ; Link's X Velocity
L9419:                                                                          ;
    LDA      $17                       ; 0x1429 $9419 A5 17                    ; Link's Shield Position
    BNE      L942B                     ; 0x142b $941B D0 0E                    ;
    JSR      L942B                     ; 0x142d $941D 20 2B 94                 ;
    LDA      $A7                       ; 0x1430 $9420 A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    AND      #$04                      ; 0x1432 $9422 29 04                    ; keep bits .... .x..
    BEQ      L942A                     ; 0x1434 $9424 F0 04                    ;
    LDA      #$06                      ; 0x1436 $9426 A9 06                    ; A = 06
    STA      $80                       ; 0x1438 $9428 85 80                    ; Link's Animation Frame
L942A:                                                                          ;
    RTS                                ; 0x143a $942A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L942B:                                                                          ;
    LDA      $A7                       ; 0x143b $942B A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    AND      #$03                      ; 0x143d $942D 29 03                    ; keep bits .... ..xx
    BEQ      bank0_jump_to__143A       ; 0x143f $942F F0 09                    ;
    LDA      $0742                     ; 0x1441 $9431 AD 42 07                 ; Left/Right buttons held
    BEQ      L9438                     ; 0x1444 $9434 F0 02                    ;
    LDA      #$05                      ; 0x1446 $9436 A9 05                    ; A = 05
L9438:                                                                          ;
    BPL      L943F                     ; 0x1448 $9438 10 05                    ;
bank0_jump_to__143A:                                                            ;
    JSR      bank0_goto__1610          ; 0x144a $943A 20 10 96                 ;
    LDA      $70                       ; 0x144d $943D A5 70                    ; Link's X Velocity
L943F:                                                                          ;
    LDY      $0479                     ; 0x144f $943F AC 79 04                 ; Link is in mid-air ? (1 = mid-air)
    BNE      L9468                     ; 0x1452 $9442 D0 24                    ;
    CMP      #$00                      ; 0x1454 $9444 C9 00                    ;
    BEQ      L946C                     ; 0x1456 $9446 F0 24                    ;
    BPL      L944F                     ; 0x1458 $9448 10 05                    ;
    EOR      #$FF                      ; 0x145a $944A 49 FF                    ; flip all bits
    CLC                                ; 0x145c $944C 18                       ;
    ADC      #$01                      ; 0x145d $944D 69 01                    ;
L944F:                                                                          ;
    LSR                                ; 0x145f $944F 4A                       ;
    LSR                                ; 0x1460 $9450 4A                       ;
    LSR                                ; 0x1461 $9451 4A                       ;
    TAY                                ; 0x1462 $9452 A8                       ;
    LDX      $0501                     ; 0x1463 $9453 AE 01 05                 ;; Timer
    BNE      L9468                     ; 0x1466 $9456 D0 10                    ;
    LDA      L93B7,y                   ; 0x1468 $9458 B9 B7 93                 ; refer to table at $13B7
    STA      $0501                     ; 0x146b $945B 8D 01 05                 ;; Timer
    INC      $AE                       ; 0x146e $945E E6 AE                    ;
    LDA      $AE                       ; 0x1470 $9460 A5 AE                    ;
    CMP      #$03                      ; 0x1472 $9462 C9 03                    ;
    BCC      L9468                     ; 0x1474 $9464 90 02                    ;
    STX      $AE                       ; 0x1476 $9466 86 AE                    ;
L9468:                                                                          ;
    LDA      $AE                       ; 0x1478 $9468 A5 AE                    ;
    BPL      L949B                     ; 0x147a $946A 10 2F                    ;
L946C:                                                                          ;
    LDA      #$03                      ; 0x147c $946C A9 03                    ; A = 03
    BNE      L949B                     ; 0x147e $946E D0 2B                    ;
bank0_Table_for_Link2:                                                          ;
;1470: FB FB FC FC	Table for Link jumping variables (4 bytes)                  ;
;                                                                              ;
;FB = High Jump Gravity < Full Speed                                           ;
;FB = High Jump Gravity = Full Speed                                           ;
;FC = Normal Jump Gravity < Full Speed                                         ;
;FC = Normal Jump Gravity = Full Speed                                         ;
.byt    $FB,$FB,$FC,$FC                ; 0x1480 $9470 FB FB FC FC              ;
L9474:                                                                          ;
.byt    $80,$00,$F0,$80                ; 0x1484 $9474 80 00 F0 80              ;Table for ? (4 bytes)
L9478:                                                                          ;
;1478: 06 06 20		Table for sword slash delays (standing)                       ;
;                                                                              ;
;06 = delay when slashing                                                      ;
;06 = delay before leaning back                                                ;
;20 = delay when leaning back                                                  ;
.byt    $06,$06,$20                    ; 0x1488 $9478 06 06 20                 ;
L947B:                                                                          ;
;147B: 04 05 03 04	Table for Link animation frame (standing)                   ;
;                                                                              ;
;04 = before slashing                                                          ;
;05 = slash                                                                    ;
;03 = before leaning back                                                      ;
;04 = lean back                                                                ;
;                                                                              ;
;147E: 07 06		Table for Link animation frame (ducked)                          ;
;                                                                              ;
;07 = slash ducked                                                             ;
;06 = ducked                                                                   ;
.byt    $04,$05,$03,$04,$07,$06        ; 0x148b $947B 04 05 03 04 07 06        ;
L9481:                                                                          ;
;1481: 01 03		Table for ? (2 bytes)                                            ;
;                                                                              ;
;01 = ducked                                                                   ;
;03 = standing                                                                 ;
.byt    $01,$03                        ; 0x1491 $9481 01 03                    ;
; ---------------------------------------------------------------------------- ;
bank0_Sword_Slash:                                                              ;
    LDY      $0400                     ; 0x1493 $9483 AC 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    BEQ      L94C2                     ; 0x1496 $9486 F0 3A                    ;
    DEY                                ; 0x1498 $9488 88                       ;
    LDX      $0495                     ; 0x1499 $9489 AE 95 04                 ;; Link ducked ? (1 = ducked)
    LDA      $050A                     ; 0x149c $948C AD 0A 05                 ;; Attack Delays; Timer related to Sword Slash
    BEQ      L949E                     ; 0x149f $948F F0 0D                    ;
    DEX                                ; 0x14a1 $9491 CA                       ; if (X == 1) -> 0 (Link standing)
    BPL      L9498                     ; 0x14a2 $9492 10 04                    ; skip to $1498
    INY                                ; 0x14a4 $9494 C8                       ; else Y + 4 (Link ducked)
    INY                                ; 0x14a5 $9495 C8                       ;
    INY                                ; 0x14a6 $9496 C8                       ;
    INY                                ; 0x14a7 $9497 C8                       ;
L9498:                                                                          ;
    LDA      L947B,y                   ; 0x14a8 $9498 B9 7B 94                 ;
L949B:                                                                          ;
    STA      $80                       ; 0x14ab $949B 85 80                    ;; Controller 1 Last Poll; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    RTS                                ; 0x14ad $949D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L949E:                                                                          ;
    TYA                                ; 0x14ae $949E 98                       ;
    CMP      L9481,x                   ; 0x14af $949F DD 81 94                 ;
    BEQ      L94B6                     ; 0x14b2 $94A2 F0 12                    ;
    LDA      L9478,y                   ; 0x14b4 $94A4 B9 78 94                 ;
    STA      $050A                     ; 0x14b7 $94A7 8D 0A 05                 ;; Attack Delays; Timer related to Sword Slash
    INC      $0400                     ; 0x14ba $94AA EE 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    INY                                ; 0x14bd $94AD C8                       ;
    CPY      $0495                     ; 0x14be $94AE CC 95 04                 ;; Link ducked ? (1 = ducked)
    BNE      L94C2                     ; 0x14c1 $94B1 D0 0F                    ;
    JMP      bank0_set_sound_of_Sword_Slash; 0x14c3 $94B3 4C 0B 96                 ; set sound of Sword Slash
                                                                               ;
; ---------------------------------------------------------------------------- ;
L94B6:                                                                          ;
    LDA      #$00                      ; 0x14c6 $94B6 A9 00                    ; A = 00
    STA      $0400                     ; 0x14c8 $94B8 8D 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    LDA      $0479                     ; 0x14cb $94BB AD 79 04                 ; Link is in mid-air ?
    BNE      L94C2                     ; 0x14ce $94BE D0 02                    ;
    STA      $70                       ; 0x14d0 $94C0 85 70                    ; Link's Walking/Running Speed
L94C2:                                                                          ;
    RTS                                ; 0x14d2 $94C2 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown15:                                                                ;
.byt    $00,$0E                        ; 0x14d3 $94C3 00 0E                    ;
; ---------------------------------------------------------------------------- ;
Link_Jumping_routine:                                                           ;
    LDA      $0754                     ; 0x14d5 $94C5 AD 54 07                 ;;in_elevator (boolean)
    BNE      L94C2                     ; 0x14d8 $94C8 D0 F8                    ;
    LDA      $A7                       ; 0x14da $94CA A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    AND      #$04                      ; 0x14dc $94CC 29 04                    ; keep bits .... .x..
    BNE      L94DA                     ; 0x14de $94CE D0 0A                    ;
    LDA      $0479                     ; 0x14e0 $94D0 AD 79 04                 ;;jumping_state (2=going up, 1=coming down, 0=not jumping); Link is in mid-air ? (1 = mid-air, 0 = on ground); Link is in mid-air ? (1 = mid-air, 0 = on ground)
    BNE      L952D                     ; 0x14e3 $94D3 D0 58                    ;
    INC      $0479                     ; 0x14e5 $94D5 EE 79 04                 ;;jumping_state (2=going up, 1=coming down, 0=not jumping); Link is in mid-air ? (1 = mid-air, 0 = on ground); Link is in mid-air ? (1 = mid-air, 0 = on ground)
    BNE      L952D                     ; 0x14e8 $94D8 D0 53                    ;
L94DA:                                                                          ;
    LDA      $0479                     ; 0x14ea $94DA AD 79 04                 ; Link is in mid-air ? (1 = mid-air)
    BEQ      L94F8                     ; 0x14ed $94DD F0 19                    ;
    LDY      $057D                     ; 0x14ef $94DF AC 7D 05                 ; Link's Y Velocity
    BMI      L952D                     ; 0x14f2 $94E2 30 49                    ;
    CPY      #$05                      ; 0x14f4 $94E4 C0 05                    ;
    BCC      L94ED                     ; 0x14f6 $94E6 90 05                    ;
    LDA      #$08                      ; 0x14f8 $94E8 A9 08                    ; A = 08
    STA      $0497                     ; 0x14fa $94EA 8D 97 04                 ; Timer for Link crouching after landing
L94ED:                                                                          ;
    LDA      #$00                      ; 0x14fd $94ED A9 00                    ; A = 00
    STA      $0479                     ; 0x14ff $94EF 8D 79 04                 ;;jumping_state (2=going up, 1=coming down, 0=not jumping); Link is in mid-air ? (1 = mid-air, 0 = on ground); Link is in mid-air ? (1 = mid-air, 0 = on ground)
    STA      $057D                     ; 0x1502 $94F2 8D 7D 05                 ; Link's Y Velocity
    STA      $0400                     ; 0x1505 $94F5 8D 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
L94F8:                                                                          ;
    LDA      $29                       ; 0x1508 $94F8 A5 29                    ; Link's Y Position
    AND      #$F0                      ; 0x150a $94FA 29 F0                    ; keep bits xxxx ....
    STA      $29                       ; 0x150c $94FC 85 29                    ;;y_pos (Link's y position in sideview);link Y pos SideScroll		; Link's Y Position
    LDA      $0741                     ; 0x150e $94FE AD 41 07                 ; A/B buttons pressed
    AND      #$80                      ; 0x1511 $9501 29 80                    ; keep bits x... .... (check for A Button)
    BEQ      L94C2                     ; 0x1513 $9503 F0 BD                    ;
    LDY      #$00                      ; 0x1515 $9505 A0 00                    ; Y = 00
    STY      $0400                     ; 0x1517 $9507 8C 00 04                 ; Sword slash frame code
    STY      $0497                     ; 0x151a $950A 8C 97 04                 ; Link is in mid-air ? (1 = mid-air)
    LDA      $70                       ; 0x151d $950D A5 70                    ; Link's X Velocity
    ADC      #$13                      ; 0x151f $950F 69 13                    ;
    CMP      #$26                      ; 0x1521 $9511 C9 26                    ; check if Link speed is < or > 13
    BCC      L9516                     ; 0x1523 $9513 90 01                    ;
    INY                                ; 0x1525 $9515 C8                       ;
L9516:                                                                          ;
    LDA      $D0                       ; 0x1526 $9516 A5 D0                    ; Jump Spell Modifier
    BNE      L951C                     ; 0x1528 $9518 D0 02                    ; if Jump Spell is cast (01), skip to $151C
    INY                                ; 0x152a $951A C8                       ;
    INY                                ; 0x152b $951B C8                       ;
L951C:                                                                          ;
    LDA      bank0_Table_for_Link2,y   ; 0x152c $951C B9 70 94                 ; refer to table at $1470
    STA      $057D                     ; 0x152f $951F 8D 7D 05                 ; Link's Y Velocity
    LDA      L9474,y                   ; 0x1532 $9522 B9 74 94                 ; refer to table at $1474
    STA      $03E6                     ; 0x1535 $9525 8D E6 03                 ;;gravity_counter (each time it overflows, vspeed += 1)
    LDA      #$02                      ; 0x1538 $9528 A9 02                    ; A = 02
    STA      $0479                     ; 0x153a $952A 8D 79 04                 ; Link is in mid-air ? (1 = mid-air)
L952D:                                                                          ;
    LDY      #$48                      ; 0x153d $952D A0 48                    ; Y = 48
    LDA      $F7                       ; 0x153f $952F A5 F7                    ; Controller 1 buttons held
    AND      #$80                      ; 0x1541 $9531 29 80                    ; check if A is held
    BEQ      L953C                     ; 0x1543 $9533 F0 07                    ; if A is held, skip to $153C
    LDA      $057D                     ; 0x1545 $9535 AD 7D 05                 ; Link's Y Velocity
    BPL      L953C                     ; 0x1548 $9538 10 02                    ;
    LDY      #$30                      ; 0x154a $953A A0 30                    ; Y = 30
L953C:                                                                          ;
    STY      $00                       ; 0x154c $953C 84 00                    ;
    LDA      #$05                      ; 0x154e $953E A9 05                    ; A = 05
    STA      $02                       ; 0x1550 $9540 85 02                    ;
    LDX      #$00                      ; 0x1552 $9542 A2 00                    ; X = 00
    LDA      $057D                     ; 0x1554 $9544 AD 7D 05                 ; Link's Y Velocity
    BPL      L9569                     ; 0x1557 $9547 10 20                    ;if ?not jumping upward , skip 
    LDA      $A7                       ; 0x1559 $9549 A5 A7                    ;007 CHANGE THIS (to #$04) AND LINK DOES NOT COLLISION CHECK FROM BELOW
    AND      #$08                      ; 0x155b $954B 29 08                    ; keep bits x... ....
    BEQ      L9569                     ; 0x155d $954D F0 1A                    ;
    LDY      $057D                     ; 0x155f $954F AC 7D 05                 ; Link's Y Velocity
    INY                                ; 0x1562 $9552 C8                       ;
    BPL      L955E                     ; 0x1563 $9553 10 09                    ;CHANGE THIS AND LINK STICKS TO CEILINGS ON JUMP
;                                                                              ;THESE THREE BELOW ONLY OCCUR IF COLLISION WITH TILE ABOVE
                                                                               ;
                                                                               ;
    LDY      #$FF                      ; 0x1565 $9555 A0 FF                    ; Y = FF
    STY      $057D                     ; 0x1567 $9557 8C 7D 05                 ; Link's Y Velocity
    INY                                ; 0x156a $955A C8                       ;
    STY      $03E6                     ; 0x156b $955B 8C E6 03                 ;;gravity_counter (each time it overflows, vspeed += 1)
L955E:                                                                          ;
    LDA      $29                       ; 0x156e $955E A5 29                    ; Link's Y Position
    PHA                                ; 0x1570 $9560 48                       ;
    JSR      bank7_applyGravityMotion  ; 0x1571 $9561 20 9B D1                 ;collision check when jumping from below a tile?
    PLA                                ; 0x1574 $9564 68                       ;
    STA      $29                       ; 0x1575 $9565 85 29                    ; Link's Y Position
    BNE      L956C                     ; 0x1577 $9567 D0 03                    ;
L9569:                                                                          ;
    JSR      bank7_applyGravityMotion  ; 0x1579 $9569 20 9B D1                 ;
L956C:                                                                          ;
    LDY      $0479                     ; 0x157c $956C AC 79 04                 ;;jumping_state (2=going up, 1=coming down, 0=not jumping); Link is in mid-air ? (1 = mid-air, 0 = on ground); Link is in mid-air ? (1 = mid-air, 0 = on ground)
    DEY                                ; 0x157f $956F 88                       ;
    BEQ      L958C                     ; 0x1580 $9570 F0 1A                    ;
    LDY      #$06                      ; 0x1582 $9572 A0 06                    ; Y = 06
    LDA      $0796                     ; 0x1584 $9574 AD 96 07                 ; Upward/Downward techs					
    AND      #$04                      ; 0x1587 $9577 29 04                    ; check if Upward tech learned
    BEQ      L9582                     ; 0x1589 $9579 F0 07                    ; if Upward NOT learned, skip to $1582			;007 CHANGE THIS 
    LDA      $F7                       ; 0x158b $957B A5 F7                    ; Controller 1 buttons held
    AND      #$08                      ; 0x158d $957D 29 08                    ; check if Up is held
    BEQ      L9582                     ; 0x158f $957F F0 01                    ; if Up is NOT held, skip to $1582			;AND CHANGE THIS 
    TAY                                ; 0x1591 $9581 A8                       ; 08 = Up Stab animation frame				;AND LDY #$08 			then automatically does upstab always when jumping
L9582:                                                                          ;
    TYA                                ; 0x1592 $9582 98                       ;
    LDY      $057D                     ; 0x1593 $9583 AC 7D 05                 ; Link's Y Velocity
    BMI      L958A                     ; 0x1596 $9586 30 02                    ;if jumping, skip past this to store Y to link's animation frame , else set link's animation frame to #$02
    LDA      #$02                      ; 0x1598 $9588 A9 02                    ; A = 02
L958A:                                                                          ;
    STA      $80                       ; 0x159a $958A 85 80                    ; Link's Animation Frame
L958C:                                                                          ;
    LDA      $0796                     ; 0x159c $958C AD 96 07                 ; Upward/Downward techs
    AND      #$10                      ; 0x159f $958F 29 10                    ; check if Downward tech learned
    BEQ      L959B                     ; 0x15a1 $9591 F0 08                    ; if Downward NOT learned, skip to $159B (RTS)
    LDA      $17                       ; 0x15a3 $9593 A5 17                    ; Link's Shield Position
    BNE      L959B                     ; 0x15a5 $9595 D0 04                    ;
    LDA      #$09                      ; 0x15a7 $9597 A9 09                    ; A = 09
    STA      $80                       ; 0x15a9 $9599 85 80                    ; Link's Animation Frame
L959B:                                                                          ;
    RTS                                ; 0x15ab $959B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L959C:                                                                          ;
    LDA      $F7                       ; 0x15ac $959C A5 F7                    ; Controller 1 buttons held
    AND      #$87                      ; 0x15ae $959E 29 87                    ; check if A/Down/Left/Right are held
    BEQ      L95B5                     ; 0x15b0 $95A0 F0 13                    ; if none of them, skip to $15B5
    LDY      $0400                     ; 0x15b2 $95A2 AC 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    CPY      #$04                      ; 0x15b5 $95A5 C0 04                    ;
    BNE      L95B5                     ; 0x15b7 $95A7 D0 0C                    ;
    LDY      #$00                      ; 0x15b9 $95A9 A0 00                    ; Y = 00
    STY      $0400                     ; 0x15bb $95AB 8C 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    LDA      $0479                     ; 0x15be $95AE AD 79 04                 ;;jumping_state (2=going up, 1=coming down, 0=not jumping); Link is in mid-air ? (1 = mid-air, 0 = on ground); Link is in mid-air ? (1 = mid-air, 0 = on ground)
    BNE      L95B5                     ; 0x15c1 $95B1 D0 02                    ;
    STA      $70                       ; 0x15c3 $95B3 85 70                    ;;hspeed (Link's horizontal velocity); Link's X Velocity	; Player X Delta (E8-00, 00-18)
L95B5:                                                                          ;
    LDA      $F7                       ; 0x15c5 $95B5 A5 F7                    ; Controller 1 buttons held
    AND      #$0C                      ; 0x15c7 $95B7 29 0C                    ; check if Up/Down are held
    STA      $0743                     ; 0x15c9 $95B9 8D 43 07                 ; Up/Down buttons held
    LDY      #$00                      ; 0x15cc $95BC A0 00                    ; Y = 00
    AND      #$04                      ; 0x15ce $95BE 29 04                    ; check if Down is held
    BNE      L95C3                     ; 0x15d0 $95C0 D0 01                    ; if Down is held, skip to $15C3
    INY                                ; 0x15d2 $95C2 C8                       ;
L95C3:                                                                          ;
    STY       a:$17                     ; 0x15d3 $95C3 8C 17 00                 ; Link's Shield Position
    LDA      $F7                       ; 0x15d6 $95C6 A5 F7                    ; Controller 1 buttons held
    AND      #$03                      ; 0x15d8 $95C8 29 03                    ; check if Left/Right are held
    STA      $0742                     ; 0x15da $95CA 8D 42 07                 ; Left/Right buttons held
    BEQ      L95D1                     ; 0x15dd $95CD F0 02                    ; if none is held, skip to $15D1
    STA      $9F                       ; 0x15df $95CF 85 9F                    ; Direction arrow pressed
L95D1:                                                                          ;
    LDA      $F5                       ; 0x15e1 $95D1 A5 F5                    ; Controller 1 buttons pressed
    AND      #$C0                      ; 0x15e3 $95D3 29 C0                    ; check if A/B are pressed
    STA      $0741                     ; 0x15e5 $95D5 8D 41 07                 ; A/B buttons pressed
    AND      #$40                      ; 0x15e8 $95D8 29 40                    ; check if B is pressed
    BEQ      L960F                     ; 0x15ea $95DA F0 33                    ; if B is NOT pressed, skip to $160F (RTS)
bank0_Button_B_Pressed:                                                         ;
    LDA      $9F                       ; 0x15ec $95DC A5 9F                    ; Direction arrow pressed
    STA      $044A                     ; 0x15ee $95DE 8D 4A 04                 ;
    LDA      $0479                     ; 0x15f1 $95E1 AD 79 04                 ; Link is in mid-air ? (1 = mid-air)
    BNE      L95ED                     ; 0x15f4 $95E4 D0 07                    ;
    LDA      $0502                     ; 0x15f6 $95E6 AD 02 05                 ;; Timer
    BNE      L95ED                     ; 0x15f9 $95E9 D0 02                    ;
    STA      $70                       ; 0x15fb $95EB 85 70                    ; Link's X Velocity
L95ED:                                                                          ;
    LDY      #$01                      ; 0x15fd $95ED A0 01                    ; Y = 01
    LDA      $0400                     ; 0x15ff $95EF AD 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    BEQ      L95FC                     ; 0x1602 $95F2 F0 08                    ;
;Slash Step 0                                                                  ;
    CMP      #$04                      ; 0x1604 $95F4 C9 04                    ; 04 = Link's state before striking
    BNE      L960F                     ; 0x1606 $95F6 D0 17                    ; if Not 4 (1 2 3), RTS
    JSR      bank0_set_sound_of_Sword_Slash; 0x1608 $95F8 20 0B 96                 ;
    INY                                ; 0x160b $95FB C8                       ;
L95FC:                                                                          ;
    STY      $0400                     ; 0x160c $95FC 8C 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    LDA      #$06                      ; 0x160f $95FF A9 06                    ; A = 06 (delay before slash)
    STA      $050A                     ; 0x1611 $9601 8D 0A 05                 ;; Attack Delays; Timer related to Sword Slash
    LDA      $17                       ; 0x1614 $9604 A5 17                    ; Link's Shield Position
    STA      $0495                     ; 0x1616 $9606 8D 95 04                 ;; Link ducked ? (1 = ducked)
    BNE      L960F                     ; 0x1619 $9609 D0 04                    ;
bank0_set_sound_of_Sword_Slash:                                                 ;
    LDA      #$20                      ; 0x161b $960B A9 20                    ; 20 = sound of sword slash
    STA      $ED                       ; 0x161d $960D 85 ED                    ; Sound Effects Type 2
L960F:                                                                          ;
    RTS                                ; 0x161f $960F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_goto__1610:                                                               ;
    LDA      $0752                     ; 0x1620 $9610 AD 52 07                 ;
    BEQ      L9626                     ; 0x1623 $9613 F0 11                    ;
    LDA      $12                       ; 0x1625 $9615 A5 12                    ;; Frame Counter (ascending)
    LSR                                ; 0x1627 $9617 4A                       ;
    BCC      L962D                     ; 0x1628 $9618 90 13                    ;
    AND      #$03                      ; 0x162a $961A 29 03                    ; keep bits .... ..xx
    BNE      L9626                     ; 0x162c $961C D0 08                    ;
    LDY      $70                       ; 0x162e $961E A4 70                    ; Link's X Velocity
    BEQ      L9626                     ; 0x1630 $9620 F0 04                    ;
    LDA      #$20                      ; 0x1632 $9622 A9 20                    ; A = 20
L9624:                                                                          ;
L9625     = * + $0001                                                          ;
    STA      $EE                       ; 0x1634 $9624 85 EE                    ; Sound Effects Type 3
L9626:                                                                          ;
    LDX      #$00                      ; 0x1636 $9626 A2 00                    ; X = 00
    JSR      bank7_XY_Movements_Routine; 0x1638 $9628 20 CE D1                 ; X/Y Movements Routine
    STA      $14                       ; 0x163b $962B 85 14                    ;
L962D:                                                                          ;
    RTS                                ; 0x163d $962D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Table_for_Hub_Tile_Mapping:                                                     ;
;162E: Table for Hub Tile Mapping (13 bytes)                                   ;
;                                                                              ;
;20 4A 01	PPU Address 204A, transfer 1 byte                                    ;
;D1		Digit \"1\"                                                               ;
;                                                                              ;
;20 62 0B	PPU Address 2062, transfer B bytes                                   ;
;D1 F4 F9 F4 F4 F4 F4 F4 F4 F4 F4	                                             ;wrong
;D1 C9 F9 F4 F4 F4 F4 F4 F4 F4 F4	                                             ;right
;                                                                              ;
;                                                                              ;
;FF	End Byte                                                                   ;
;                                                                              ;
;----                                                                          ;
;                                                                              ;
;1641: Table for Hub Tile Mapping (18 bytes)                                   ;
;                                                                              ;
;20 52 01	PPU Address 2052, transfer 1 byte                                    ;
;D1		Digit \"1\"                                                               ;
;                                                                              ;
;20 6E 10	PPU Address 206E, transfer 10 bytes                                  ;
;F4 F4 F4 F4 F4 F4 F4 F4 D0 D0 D0 D0 CE D0 D0 D0		0000/000                     ;
;                                                                              ;
;FF	End Byte                                                                   ;
.byt    $20,$4A,$01,$D1,$20,$62,$0B,$D1; 0x163e $962E 20 4A 01 D1 20 62 0B D1  ;
.byt    $F4,$F9,$F4,$F4,$F4,$F4,$F4,$F4; 0x1646 $9636 F4 F9 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$F4,$FF                    ; 0x164e $963E F4 F4 FF                 ;
Table_for_Hub_Tile_Mapping2:                                                    ;
.byt    $20,$52,$01,$D1,$20,$6E,$10,$F4; 0x1651 $9641 20 52 01 D1 20 6E 10 F4  ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$D0; 0x1659 $9649 F4 F4 F4 F4 F4 F4 F4 D0  ;
.byt    $D0,$D0,$D0,$CE,$D0,$D0,$D0    ; 0x1661 $9651 D0 D0 D0 CE D0 D0 D0     ;
L9658:                                                                          ;
.byt    $FF                            ; 0x1668 $9658 FF                       ;
Table_for_levelup_experience_high:                                              ;
;1659: Table for level-up experience (30 bytes)			exp chart level up chart  expchart;
;                                                                              ;
;High Byte                                                                     ;
;                                                                              ;
;00 00 00 00 01 01 03 23		Attack                                               ;
;00 01 02 04 08 0D 17 23		Magic                                                ;
;00 00 01 03 05 09 0F 23		Life                                                 ;
;                                                                              ;
;Low Byte                                                                      ;
;                                                                              ;
;14 32 64 C8 2C F4 20 28		Attack                                               ;
;64 2C BC B0 98 AC 70 28		Magic                                                ;
;32 96 90 20 DC C4 A0 28		Life                                                 ;
.byt    $00,$01,$03,$07,$0B,$13,$1F,$23; 0x1669 $9659 00 01 03 07 0B 13 1F 23  ;
.byt    $00,$01,$02,$04,$08,$0D,$17,$23; 0x1671 $9661 00 01 02 04 08 0D 17 23  ;
.byt    $00,$00,$01,$03,$05,$09,$0F    ; 0x1679 $9669 00 00 01 03 05 09 0F     ;
L9670:                                                                          ;
.byt    $23                            ; 0x1680 $9670 23                       ;
Table_for_levelup_experience_low:                                               ;
.byt    $C8,$F4,$E8,$D0,$B8,$88,$40,$28; 0x1681 $9671 C8 F4 E8 D0 B8 88 40 28  ;
.byt    $64,$2C,$BC,$B0,$98,$AC,$70,$28; 0x1689 $9679 64 2C BC B0 98 AC 70 28  ;
.byt    $32,$96,$90,$20,$DC,$C4,$A0,$28; 0x1691 $9681 32 96 90 20 DC C4 A0 28  ;
bank0_unknown16:                                                                ;
.byt    $70,$6E                        ; 0x1699 $9689 70 6E                    ;some sort of timer???
L968B:                                                                          ;
.byt    $20,$68                        ; 0x169b $968B 20 68                    ;
; ---------------------------------------------------------------------------- ;
Hub_Update_Routine:                                                             ;
    LDA      $0776                     ; 0x169d $968D AD 76 07                 ; Current Experience (low byte)
    SEC                                ; 0x16a0 $9690 38                       ;
    SBC      $0771                     ; 0x16a1 $9691 ED 71 07                 ; Exp. needed for Next Level (low byte)
    LDA      $0775                     ; 0x16a4 $9694 AD 75 07                 ; Current Experience (high byte)
    SBC      $0770                     ; 0x16a7 $9697 ED 70 07                 ; Exp. needed for Next Level (high byte)
    BCC      L96A1                     ; 0x16aa $969A 90 05                    ;
    LDA      #$01                      ; 0x16ac $969C A9 01                    ; A = 01
    STA      $074C                     ; 0x16ae $969E 8D 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
L96A1:                                                                          ;
    LDY      $0301                     ; 0x16b1 $96A1 AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    CPY      #$08                      ; 0x16b4 $96A4 C0 08                    ;
    BCS      L971C                     ; 0x16b6 $96A6 B0 74                    ;
L96A8:                                                                          ;
    LDX      #$00                      ; 0x16b8 $96A8 A2 00                    ; X = 00
    LDA      $0750                     ; 0x16ba $96AA AD 50 07                 ;
    BIT      $074F                     ; 0x16bd $96AD 2C 4F 07                 ;; Related to Pause Pane
    BEQ      L971F                     ; 0x16c0 $96B0 F0 6D                    ;
    BIT      $0750                     ; 0x16c2 $96B2 2C 50 07                 ;
    BPL      L9723                     ; 0x16c5 $96B5 10 6C                    ;
L96B7:                                                                          ;
    ASL      $074F                     ; 0x16c7 $96B7 0E 4F 07                 ;; Related to Pause Pane
    LSR      $074F                     ; 0x16ca $96BA 4E 4F 07                 ;; Related to Pause Pane
    LDA      Table_for_Hub_Tile_Mapping,x; 0x16cd $96BD BD 2E 96                 ; refer to table at $162E			0x163E ;contains location to draw levels ,status bar 
    STA      L0302,y                   ; 0x16d0 $96C0 99 02 03                 ;
    INY                                ; 0x16d3 $96C3 C8                       ;
    INX                                ; 0x16d4 $96C4 E8                       ;
    CPX      #$13                      ; 0x16d5 $96C5 E0 13                    ;
    BCC      L96B7                     ; 0x16d7 $96C7 90 EE                    ;
    TYA                                ; 0x16d9 $96C9 98                       ;
    PHA                                ; 0x16da $96CA 48                       ;
    LDY      $0301                     ; 0x16db $96CB AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDA      $0777                     ; 0x16de $96CE AD 77 07                 ; Attack Level
    CLC                                ; 0x16e1 $96D1 18                       ;
    ADC      #$D0                      ; 0x16e2 $96D2 69 D0                    ; generate tile code for digit 0-9
    STA      $0309,y                   ; 0x16e4 $96D4 99 09 03                 ;
    LDA      $0778                     ; 0x16e7 $96D7 AD 78 07                 ; Magic Level
    CLC                                ; 0x16ea $96DA 18                       ;
    ADC      #$D0                      ; 0x16eb $96DB 69 D0                    ; generate tile code for digit 0-9
    STA      $0305,y                   ; 0x16ed $96DD 99 05 03                 ;
    LDA      $0783                     ; 0x16f0 $96E0 AD 83 07                 ; Current number of Magic Containers
    TAX                                ; 0x16f3 $96E3 AA                       ;
    CLC                                ; 0x16f4 $96E4 18                       ;
    ADC      $0301                     ; 0x16f5 $96E5 6D 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    TAY                                ; 0x16f8 $96E8 A8                       ;
    DEY                                ; 0x16f9 $96E9 88                       ;
    LDA      #$97                      ; 0x16fa $96EA A9 97                    ; A = 97 (Code for empty square)
L96EC:                                                                          ;
    STA      $030C,y                   ; 0x16fc $96EC 99 0C 03                 ;
    DEY                                ; 0x16ff $96EF 88                       ;
    DEX                                ; 0x1700 $96F0 CA                       ;
    BNE      L96EC                     ; 0x1701 $96F1 D0 F9                    ;
    INY                                ; 0x1703 $96F3 C8                       ;
    LDA      $0773                     ; 0x1704 $96F4 AD 73 07                 ; Current Magic left in meter
    STA      $0564                     ; 0x1707 $96F7 8D 64 05                 ;; Magic Points - Display
    LSR                                ; 0x170a $96FA 4A                       ;
    LSR                                ; 0x170b $96FB 4A                       ;
    LSR                                ; 0x170c $96FC 4A                       ;
    LSR                                ; 0x170d $96FD 4A                       ;
    LSR                                ; 0x170e $96FE 4A                       ;
    STA      $00                       ; 0x170f $96FF 85 00                    ;
L9701:                                                                          ;
    DEC      $00                       ; 0x1711 $9701 C6 00                    ;
    BMI      L970E                     ; 0x1713 $9703 30 09                    ;
    LDA      #$C6                      ; 0x1715 $9705 A9 C6                    ; C6 = complete magic square (tile mapping)
    STA      $030C,y                   ; 0x1717 $9707 99 0C 03                 ;
    INY                                ; 0x171a $970A C8                       ;
    JMP      L9701                     ; 0x171b $970B 4C 01 97                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L970E:                                                                          ;
    LDA      $0750                     ; 0x171e $970E AD 50 07                 ;
    EOR      #$C0                      ; 0x1721 $9711 49 C0                    ; flip bits xx.. ....
    STA      $0750                     ; 0x1723 $9713 8D 50 07                 ;
    PLA                                ; 0x1726 $9716 68                       ;
    TAY                                ; 0x1727 $9717 A8                       ;
    DEY                                ; 0x1728 $9718 88                       ;
    STY      $0301                     ; 0x1729 $9719 8C 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
L971C:                                                                          ;
    JMP      Fire_Spell2               ; 0x172c $971C 4C BB 97                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L971F:                                                                          ;
    BMI      L96B7                     ; 0x172f $971F 30 96                    ;
    BVC      L971C                     ; 0x1731 $9721 50 F9                    ;
L9723:                                                                          ;
    LDA      $074F                     ; 0x1733 $9723 AD 4F 07                 ;; Related to Pause Pane
    AND      #$BF                      ; 0x1736 $9726 29 BF                    ; keep bits x.xx xxxx
    STA      $074F                     ; 0x1738 $9728 8D 4F 07                 ;; Related to Pause Pane
    LDY      $0301                     ; 0x173b $972B AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
L972E:                                                                          ;
    LDA      Table_for_Hub_Tile_Mapping2,x; 0x173e $972E BD 41 96                 ; refer to table at $1641
    STA      L0302,y                   ; 0x1741 $9731 99 02 03                 ;
    INY                                ; 0x1744 $9734 C8                       ;
    INX                                ; 0x1745 $9735 E8                       ;
    CPX      #$18                      ; 0x1746 $9736 E0 18                    ;
    BCC      L972E                     ; 0x1748 $9738 90 F4                    ; loop for all 18 values
    TYA                                ; 0x174a $973A 98                       ;
    PHA                                ; 0x174b $973B 48                       ;
    LDY      $0301                     ; 0x174c $973C AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDA      $0779                     ; 0x174f $973F AD 79 07                 ; Life Level
    CLC                                ; 0x1752 $9742 18                       ;
    ADC      #$D0                      ; 0x1753 $9743 69 D0                    ;
    STA      $0305,y                   ; 0x1755 $9745 99 05 03                 ;
    LDA      $0775                     ; 0x1758 $9748 AD 75 07                 ; Current Experience (high byte)
    STA      $00                       ; 0x175b $974B 85 00                    ;
    LDA      $0776                     ; 0x175d $974D AD 76 07                 ; Current Experience (low byte)
    JSR      Experience_Convertion_and_Display_Routine; 0x1760 $9750 20 A4 A5      ;
    PHA                                ; 0x1763 $9753 48                       ;
    TYA                                ; 0x1764 $9754 98                       ;
    LDY      $0301                     ; 0x1765 $9755 AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    STA      $0313,y                   ; 0x1768 $9758 99 13 03                 ;
    LDA      $00                       ; 0x176b $975B A5 00                    ;
    STA      $0312,y                   ; 0x176d $975D 99 12 03                 ;
    LDA      $01                       ; 0x1770 $9760 A5 01                    ;
L9764     = * + $0002                                                          ;
    STA      $0311,y                   ; 0x1772 $9762 99 11 03                 ;
    PLA                                ; 0x1775 $9765 68                       ;
    STA      $0314,y                   ; 0x1776 $9766 99 14 03                 ;
    LDA      $0770                     ; 0x1779 $9769 AD 70 07                 ;; Exp. needed for Next Level (high byte)
    STA      $00                       ; 0x177c $976C 85 00                    ;
    LDA      $0771                     ; 0x177e $976E AD 71 07                 ;; Exp. needed for Next Level (low byte)
    JSR      Experience_Convertion_and_Display_Routine; 0x1781 $9771 20 A4 A5      ;
    TYA                                ; 0x1784 $9774 98                       ;
    LDY      $0301                     ; 0x1785 $9775 AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    STA      $0318,y                   ; 0x1788 $9778 99 18 03                 ;
    LDA      $00                       ; 0x178b $977B A5 00                    ;
    STA      $0317,y                   ; 0x178d $977D 99 17 03                 ;
    LDA      $01                       ; 0x1790 $9780 A5 01                    ;
    STA      $0316,y                   ; 0x1792 $9782 99 16 03                 ;
    LDY      $0301                     ; 0x1795 $9785 AC 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    LDA      $0784                     ; 0x1798 $9788 AD 84 07                 ;; Current number of Heart Containers
    TAX                                ; 0x179b $978B AA                       ;
    CLC                                ; 0x179c $978C 18                       ;
    ADC      $0301                     ; 0x179d $978D 6D 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    TAY                                ; 0x17a0 $9790 A8                       ;
    DEY                                ; 0x17a1 $9791 88                       ;
    LDA      #$C8                      ; 0x17a2 $9792 A9 C8                    ; A = C8
L9794:                                                                          ;
    STA      $0309,y                   ; 0x17a4 $9794 99 09 03                 ;
    DEY                                ; 0x17a7 $9797 88                       ;
    DEX                                ; 0x17a8 $9798 CA                       ;
    BNE      L9794                     ; 0x17a9 $9799 D0 F9                    ;
    INY                                ; 0x17ab $979B C8                       ;
    LDA      $0774                     ; 0x17ac $979C AD 74 07                 ; Current Life left in meter
    STA      $0565                     ; 0x17af $979F 8D 65 05                 ;; Hit Points - Display
    LSR                                ; 0x17b2 $97A2 4A                       ;
    LSR                                ; 0x17b3 $97A3 4A                       ;
    LSR                                ; 0x17b4 $97A4 4A                       ;
    LSR                                ; 0x17b5 $97A5 4A                       ;
    LSR                                ; 0x17b6 $97A6 4A                       ;
    STA      $00                       ; 0x17b7 $97A7 85 00                    ;
L97A9:                                                                          ;
    DEC      $00                       ; 0x17b9 $97A9 C6 00                    ;
    BMI      L97B6                     ; 0x17bb $97AB 30 09                    ;
    LDA      #$C7                      ; 0x17bd $97AD A9 C7                    ; A = C7 (tile mapping for life square)
    STA      $0309,y                   ; 0x17bf $97AF 99 09 03                 ;
    INY                                ; 0x17c2 $97B2 C8                       ;
    JMP      L97A9                     ; 0x17c3 $97B3 4C A9 97                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97B6:                                                                          ;
    JMP      L970E                     ; 0x17c6 $97B6 4C 0E 97                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown17:                                                                ;
.byt    $F8                            ; 0x17c9 $97B9 F8                       ;
L97BA:                                                                          ;
.byt    $02                            ; 0x17ca $97BA 02                       ;
; ---------------------------------------------------------------------------- ;
Fire_Spell2:                                                                    ;
    LDX      #$01                      ; 0x17cb $97BB A2 01                    ; X = 01
    LDA      bank0_unknown17           ; 0x17cd $97BD AD B9 97                 ;
    STA      $00                       ; 0x17d0 $97C0 85 00                    ;
    LDA      L97BA                     ; 0x17d2 $97C2 AD BA 97                 ;
    STA      $01                       ; 0x17d5 $97C5 85 01                    ;
L97C7:                                                                          ;
    TXA                                ; 0x17d7 $97C7 8A                       ;
    PHA                                ; 0x17d8 $97C8 48                       ;
    ASL                                ; 0x17d9 $97C9 0A                       ;
    ASL                                ; 0x17da $97CA 0A                       ;
    TAY                                ; 0x17db $97CB A8                       ;
    TXA                                ; 0x17dc $97CC 8A                       ;
    AND      #$01                      ; 0x17dd $97CD 29 01                    ; keep bits .... ...x
    TAX                                ; 0x17df $97CF AA                       ;
    LDA      #$0F                      ; 0x17e0 $97D0 A9 0F                    ; A = 0F
    STA      ($00),y                   ; 0x17e2 $97D2 91 00                    ;
    INY                                ; 0x17e4 $97D4 C8                       ;
    LDA      bank0_unknown16,x         ; 0x17e5 $97D5 BD 89 96                 ; refer to table at $1689
    STA      ($00),y                   ; 0x17e8 $97D8 91 00                    ;
    INY                                ; 0x17ea $97DA C8                       ;
    LDA      #$21                      ; 0x17eb $97DB A9 21                    ; A = 21
    STA      ($00),y                   ; 0x17ed $97DD 91 00                    ;
    INY                                ; 0x17ef $97DF C8                       ;
    LDA      $0564,x                   ; 0x17f0 $97E0 BD 64 05                 ;
    LSR                                ; 0x17f3 $97E3 4A                       ;
    LSR                                ; 0x17f4 $97E4 4A                       ;
    CLC                                ; 0x17f5 $97E5 18                       ;
    ADC      L968B,x                   ; 0x17f6 $97E6 7D 8B 96                 ; refer to table at $1689 (offset +2)
    STA      ($00),y                   ; 0x17f9 $97E9 91 00                    ;
    PLA                                ; 0x17fb $97EB 68                       ;
    TAX                                ; 0x17fc $97EC AA                       ;
    DEX                                ; 0x17fd $97ED CA                       ;
    BPL      L97C7                     ; 0x17fe $97EE 10 D7                    ;
    RTS                                ; 0x1800 $97F0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_Fire_Spell:                                                               ;
;Fire Spell                                                                    ;
;                                                                              ;
;X = 1 -> Flame                                                                ;
;X = 0 -> Flying Blade                                                         ;
    LDX      #$01                      ; 0x1801 $97F1 A2 01                    ; X = 01
    LDA      $0777                     ; 0x1803 $97F3 AD 77 07                 ; Attack Level
    CMP      #$04                      ; 0x1806 $97F6 C9 04                    ; if (Attack Level >= 4)
    BCS      L97FC                     ; 0x1808 $97F8 B0 02                    ; skip to $17FC
bank0_else_goto__17FA:                                                          ;
    LDX      #$00                      ; 0x180a $97FA A2 00                    ; X = 00
L97FC:                                                                          ;
    LDY      $0400                     ; 0x180c $97FC AC 00 04                 ;;sword_slash_frame (animation frame); Sword slash frame code
    DEY                                ; 0x180f $97FF 88                       ;
    CPY      $0495                     ; 0x1810 $9800 CC 95 04                 ;; Link ducked ? (1 = ducked)
    BNE      L9813                     ; 0x1813 $9803 D0 0E                    ;
    LDA      $050A                     ; 0x1815 $9805 AD 0A 05                 ;; Attack Delays; Timer related to Sword Slash
    CMP      #$05                      ; 0x1818 $9808 C9 05                    ;
    BNE      L9813                     ; 0x181a $980A D0 07                    ;
L980C:                                                                          ;
    LDA      $8D,x                     ; 0x181c $980C B5 8D                    ; Flying Blade/Flame slot
    BEQ      bank0_unknown19           ; 0x181e $980E F0 0B                    ;
    DEX                                ; 0x1820 $9810 CA                       ;
    BPL      L980C                     ; 0x1821 $9811 10 F9                    ;
L9813:                                                                          ;
    CLC                                ; 0x1823 $9813 18                       ;
    RTS                                ; 0x1824 $9814 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Table_for_Flying_Blade_Flame:                                                   ;
;0D = Y offset of Flame, while ducked                                          ;
;04 = Y offset of Flame, while standing                                        ;
;09 = Y offset of Flying Blade, while ducked                                   ;
;FF = Y offset of Flying Blade, while standing                                 ;
;20 = X Velocity of Flying Blade, facing right                                 ;
;E0 = X Velocity of Flying Blade, facing left                                  ;
                                                                               ;
.byt    $0D,$04                        ; 0x1825 $9815 0D 04                    ;
L9817:                                                                          ;
.byt    $09                            ; 0x1827 $9817 09                       ;
L9818:                                                                          ;
.byt    $FF,$20,$E0                    ; 0x1828 $9818 FF 20 E0                 ;
; ---------------------------------------------------------------------------- ;
bank0_unknown19:                                                                ;
    INC      $8D,x                     ; 0x182b $981B F6 8D                    ; Flying Blade/Flame slot
    LDA      $4D                       ; 0x182d $981D A5 4D                    ; Link's X Position
    ADC      #$0C                      ; 0x182f $981F 69 0C                    ; Flying Blade relative initial X position
    STA      $5A,x                     ; 0x1831 $9821 95 5A                    ; Flying Blade/Flame X Position (low byte)
    LDA      $3B                       ; 0x1833 $9823 A5 3B                    ; Link's X Position (high byte)
    ADC      #$00                      ; 0x1835 $9825 69 00                    ;
    STA      $48,x                     ; 0x1837 $9827 95 48                    ; Flying Blade/Flame X Position (high byte)
    LDA      $29                       ; 0x1839 $9829 A5 29                    ; Link's Y Position
    LDY       a:$17                     ; 0x183b $982B AC 17 00                 ; Link's Shield Position (0 = ducked)
    ADC      Table_for_Flying_Blade_Flame,y; 0x183e $982E 79 15 98                 ; refer to table at $1815
    STA      $36,x                     ; 0x1841 $9831 95 36                    ; Flying Blade/Flame Y Position
    LDA      #$01                      ; 0x1843 $9833 A9 01                    ; A = 01
    STA      $26,x                     ; 0x1845 $9835 95 26                    ;
    LSR                                ; 0x1847 $9837 4A                       ;
    STA      $05CA,x                   ; 0x1848 $9838 9D CA 05                 ; Projectile Lifespan (not sure)
    LDY      $9F                       ; 0x184b $983B A4 9F                    ; Direction arrow pressed (1 = right, 2 = left)
    STY      $6D,x                     ; 0x184d $983D 94 6D                    ;
    LDA      L9818,y                   ; 0x184f $983F B9 18 98                 ; refer to table at $1815 (offset +3)
    STA      $7D,x                     ; 0x1852 $9842 95 7D                    ;; X Velocity of Flying Blade/Flame
    RTS                                ; 0x1854 $9844 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown20:                                                                ;
.byt    $38,$40                        ; 0x1855 $9845 38 40                    ;
; ---------------------------------------------------------------------------- ;
Check_for_Fire_Spell:                                                           ;
    LDA      $076F                     ; 0x1857 $9847 AD 6F 07                 ; Spell Status
    AND      #$10                      ; 0x185a $984A 29 10                    ; check for Fire Spell (bit 4)
    BNE      L9878                     ; 0x185c $984C D0 2A                    ; if Fire, goto $1878
Check_if_Life_is_Full:                                                          ;
    LDA      $0784                     ; 0x185e $984E AD 84 07                 ; Current number of Heart Containers
    ASL                                ; 0x1861 $9851 0A                       ;
    ASL                                ; 0x1862 $9852 0A                       ;
    ASL                                ; 0x1863 $9853 0A                       ;
    ASL                                ; 0x1864 $9854 0A                       ;
    ASL                                ; 0x1865 $9855 0A                       ;
    SEC                                ; 0x1866 $9856 38                       ;
    SBC      #$01                      ; 0x1867 $9857 E9 01                    ;
    CMP      $0774                     ; 0x1869 $9859 CD 74 07                 ; Current Life left in meter
    BNE      L9878                     ; 0x186c $985C D0 1A                    ; if Life not Full, goto $1878
    JSR      bank0_else_goto__17FA     ; 0x186e $985E 20 FA 97                 ; else goto $17FA
    BCC      L9878                     ; 0x1871 $9861 90 15                    ;
    LDA      $29                       ; 0x1873 $9863 A5 29                    ; Link's Shield Position
    LDY      $0495                     ; 0x1875 $9865 AC 95 04                 ;; Link ducked ? (1 = ducked)
    ADC      L9817,y                   ; 0x1878 $9868 79 17 98                 ; refer to table at $1815 (offset +2)
    STA      $36,x                     ; 0x187b $986B 95 36                    ;; Flying Blade/Flame Y Position
    LDA      #$D2                      ; 0x187d $986D A9 D2                    ; A = D2
    STA      $05CA                     ; 0x187f $986F 8D CA 05                 ;; Sword Projectile Timeout
    LDA      $EF                       ; 0x1882 $9872 A5 EF                    ; Sound Effects Type 4
    ORA      #$08                      ; 0x1884 $9874 09 08                    ; set bits  .... x...
    STA      $EF                       ; 0x1886 $9876 85 EF                    ; Sound of Flying Blade (08)
L9878:                                                                          ;
    LDX      #$00                      ; 0x1888 $9878 A2 00                    ; X = 00
    LDA      $0777                     ; 0x188a $987A AD 77 07                 ; Attack Level
    CMP      #$04                      ; 0x188d $987D C9 04                    ; check if (Attack >= 4)
    BCC      L9882                     ; 0x188f $987F 90 01                    ; if Not, skip to $1882
    INX                                ; 0x1891 $9881 E8                       ;
L9882:                                                                          ;
    JSR      L9888                     ; 0x1892 $9882 20 88 98                 ;
    DEX                                ; 0x1895 $9885 CA                       ;
    BMI      L98BF                     ; 0x1896 $9886 30 37                    ;
L9888:                                                                          ;
    STX      $10                       ; 0x1898 $9888 86 10                    ;; used as monster x register ;draw boss hp bar
    LDA      bank0_unknown20,x         ; 0x189a $988A BD 45 98                 ;
    STA      $9D,x                     ; 0x189d $988D 95 9D                    ;
    LDA      $8D,x                     ; 0x189f $988F B5 8D                    ; Flying Blade/Flame slot
    BEQ      L98BF                     ; 0x18a1 $9891 F0 2C                    ;
    BMI      L9908                     ; 0x18a3 $9893 30 73                    ;
    LDA      $05CA,x                   ; 0x18a5 $9895 BD CA 05                 ;; Projectile Lifespan (Flying Blade or Flame) (not sure)
    BEQ      L98A3                     ; 0x18a8 $9898 F0 09                    ; if Zero, set sound effect to Flame
    INC      $05CA,x                   ; 0x18aa $989A FE CA 05                 ;; Projectile Lifespan (Flying Blade or Flame) (not sure)
    CMP      #$F2                      ; 0x18ad $989D C9 F2                    ;
    BEQ      L98BD                     ; 0x18af $989F F0 1C                    ;
    BNE      L98A6                     ; 0x18b1 $98A1 D0 03                    ;
L98A3:                                                                          ;
    JSR      bank0_set_sound_effect_to_Flame; 0x18b3 $98A3 20 01 99                ; set sound effect to Flame
L98A6:                                                                          ;
    TXA                                ; 0x18b6 $98A6 8A                       ;
    CLC                                ; 0x18b7 $98A7 18                       ;
    ADC      #$0D                      ; 0x18b8 $98A8 69 0D                    ;
    TAX                                ; 0x18ba $98AA AA                       ;
    JSR      bank7_XY_Movements_Routine; 0x18bb $98AB 20 CE D1                 ; X/Y Movements Routine
    LDY      #$03                      ; 0x18be $98AE A0 03                    ; Y = 03
    JSR      bank7_code51              ; 0x18c0 $98B0 20 7D F2                 ;
    LDX      $10                       ; 0x18c3 $98B3 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      $CB                       ; 0x18c5 $98B5 A5 CB                    ;
    AND      #$FC                      ; 0x18c7 $98B7 29 FC                    ; keep bits xxxx xx..
    BEQ      L98C0                     ; 0x18c9 $98B9 F0 05                    ;
    LDA      #$00                      ; 0x18cb $98BB A9 00                    ; A = 00 (clear Flying Blade/Flame slot)
L98BD:                                                                          ;
    STA      $8D,x                     ; 0x18cd $98BD 95 8D                    ;; Flying Blade/Flame slot
L98BF:                                                                          ;
    RTS                                ; 0x18cf $98BF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L98C0:                                                                          ;
    LDY      $9D,x                     ; 0x18d0 $98C0 B4 9D                    ;
    LDA      $36,x                     ; 0x18d2 $98C2 B5 36                    ; Flying Blade/Flame Y Position
    STA      $0200,y                   ; 0x18d4 $98C4 99 00 02                 ;
    LDA      $6D,x                     ; 0x18d7 $98C7 B5 6D                    ;
    LSR                                ; 0x18d9 $98C9 4A                       ;
    LDA      #$00                      ; 0x18da $98CA A9 00                    ; A = 00
    ROR                                ; 0x18dc $98CC 6A                       ;
    ROR                                ; 0x18dd $98CD 6A                       ;
    STA      $00                       ; 0x18de $98CE 85 00                    ;
    LDA      $12                       ; 0x18e0 $98D0 A5 12                    ;; Frame Counter (ascending)
    ASL                                ; 0x18e2 $98D2 0A                       ;
    ASL                                ; 0x18e3 $98D3 0A                       ;
    ASL                                ; 0x18e4 $98D4 0A                       ;
    ASL                                ; 0x18e5 $98D5 0A                       ;
    ASL                                ; 0x18e6 $98D6 0A                       ;
    AND      #$80                      ; 0x18e7 $98D7 29 80                    ; keep bits x... ....
    ORA      $00                       ; 0x18e9 $98D9 05 00                    ;
    ORA      #$01                      ; 0x18eb $98DB 09 01                    ; set bits  .... ...x
    STA      $0202,y                   ; 0x18ed $98DD 99 02 02                 ;
    LDA      #$84                      ; 0x18f0 $98E0 A9 84                    ; A = 84 (Flame tile mapping)
    STA      $0201,y                   ; 0x18f2 $98E2 99 01 02                 ;
    LDA      $05CA,x                   ; 0x18f5 $98E5 BD CA 05                 ;; Projectile Lifespan (Flying Blade or Flame) (not sure)
    BEQ      L98FB                     ; 0x18f8 $98E8 F0 11                    ;
    LDA      #$32                      ; 0x18fa $98EA A9 32                    ; A = 32
    STA      $0201,y                   ; 0x18fc $98EC 99 01 02                 ; Flying Blade Tile Mapping
    LDA      $12                       ; 0x18ff $98EF A5 12                    ; Flying Blade Palette
    AND      #$03                      ; 0x1901 $98F1 29 03                    ; keep bits .... ..xx
    ORA      $0202,y                   ; 0x1903 $98F3 19 02 02                 ;
    AND      #$7F                      ; 0x1906 $98F6 29 7F                    ; keep bits .xxx xxxx
    STA      $0202,y                   ; 0x1908 $98F8 99 02 02                 ;
L98FB:                                                                          ;
    LDA      $CF                       ; 0x190b $98FB A5 CF                    ; Flying Blade X Position
    STA      $0203,y                   ; 0x190d $98FD 99 03 02                 ;
    RTS                                ; 0x1910 $9900 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_set_sound_effect_to_Flame:                                                ;
    LDA      $ED                       ; 0x1911 $9901 A5 ED                    ; Sound Effects Type 2
    ORA      #$40                      ; 0x1913 $9903 09 40                    ; set bits  ..x. ....
    STA      $ED                       ; 0x1915 $9905 85 ED                    ; Sound of Flame (20)
    RTS                                ; 0x1917 $9907 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9908:                                                                          ;
    JSR      L98A6                     ; 0x1918 $9908 20 A6 98                 ;
    LDY      $9D,x                     ; 0x191b $990B B4 9D                    ;
    LDA      $8D,x                     ; 0x191d $990D B5 8D                    ;; Flying Blade/Flame slot
    JSR      LD55E                     ; 0x191f $990F 20 5E D5                 ;
    LDA      $36,x                     ; 0x1922 $9912 B5 36                    ; Flying Blade/Flame Y Position
    STA      $0200,y                   ; 0x1924 $9914 99 00 02                 ;
    LDA      $5A,x                     ; 0x1927 $9917 B5 5A                    ; Flying Blade/Flame X Position (low byte)
    SBC      $072C                     ; 0x1929 $9919 ED 2C 07                 ; Scrolling Offset Low Byte
    STA      $0203,y                   ; 0x192c $991C 99 03 02                 ;
    INC      $8D,x                     ; 0x192f $991F F6 8D                    ;; Flying Blade/Flame slot
    INC      $8D,x                     ; 0x1931 $9921 F6 8D                    ;; Flying Blade/Flame slot
    RTS                                ; 0x1933 $9923 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9924:                                                                          ;
    RTS                                ; 0x1934 $9924 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9925:                                                                          ;
    LDY      $D1                       ; 0x1935 $9925 A4 D1                    ;max map pages
    BEQ      L9924                     ; 0x1937 $9927 F0 FB                    ;if 0 (only 1 map page?), rts
    LDA      $0728                     ; 0x1939 $9929 AD 28 07                 ;728	1=freeze screen, prevent from exiting left/right
    BNE      L9924                     ; 0x193c $992C D0 F6                    ;if frozen, rts
    STA      L05C9                     ; 0x193e $992E 8D C9 05                 ;
    LDA       a:$14                     ; 0x1941 $9931 AD 14 00                 ;
    STA      $00                       ; 0x1944 $9934 85 00                    ;
    LDX      $5F                       ; 0x1946 $9936 A6 5F                    ; Link's facing direction
    LDA      $072A                     ; 0x1948 $9938 AD 2A 07                 ; Scrolling Offset High Byte
    CMP      $69C1,y                   ; 0x194b $993B D9 C1 69                 ;
    BMI      L9949                     ; 0x194e $993E 30 09                    ;
    BNE      L9955                     ; 0x1950 $9940 D0 13                    ;
    LDA      $072C                     ; 0x1952 $9942 AD 2C 07                 ; Scrolling Offset Low Byte
    CMP      #$04                      ; 0x1955 $9945 C9 04                    ;
    BCS      L9955                     ; 0x1957 $9947 B0 0C                    ;
L9949:                                                                          ;
    DEX                                ; 0x1959 $9949 CA                       ;
    BNE      L9971                     ; 0x195a $994A D0 25                    ;
    LDA      $CC                       ; 0x195c $994C A5 CC                    ; Link's X Position on Screen
    CLC                                ; 0x195e $994E 18                       ;
    ADC      #$20                      ; 0x195f $994F 69 20                    ;
    CMP      #$90                      ; 0x1961 $9951 C9 90                    ;
    BCC      L9971                     ; 0x1963 $9953 90 1C                    ;
L9955:                                                                          ;
    LDA      $072C                     ; 0x1965 $9955 AD 2C 07                 ; Scrolling Offset High Byte
    CLC                                ; 0x1968 $9958 18                       ;
    ADC      #$02                      ; 0x1969 $9959 69 02                    ;
    LDA      $072A                     ; 0x196b $995B AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0x196e $995E 69 00                    ;
    CMP      $69C4,y                   ; 0x1970 $9960 D9 C4 69                 ;$69C4 = stop scrolling left at this map page
    BNE      L9977                     ; 0x1973 $9963 D0 12                    ;
    DEX                                ; 0x1975 $9965 CA                       ;
    BEQ      L9971                     ; 0x1976 $9966 F0 09                    ;
    LDA      $CC                       ; 0x1978 $9968 A5 CC                    ; Link's X Position on Screen
    SEC                                ; 0x197a $996A 38                       ;
    SBC      #$20                      ; 0x197b $996B E9 20                    ;
    CMP      #$51                      ; 0x197d $996D C9 51                    ;
    BCC      L9977                     ; 0x197f $996F 90 06                    ;
L9971:                                                                          ;
    INC      L05C9                     ; 0x1981 $9971 EE C9 05                 ;
    JMP      L99D4                     ; 0x1984 $9974 4C D4 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9977:                                                                          ;
    LDY      $00                       ; 0x1987 $9977 A4 00                    ;
    TYA                                ; 0x1989 $9979 98                       ;
    BEQ      L99E5                     ; 0x198a $997A F0 69                    ;
;JSR function $997C 	                                                          ;update scrolling visual display? (sets screen up after scrolling low (72C) variable is changed)
    CLC                                ; 0x198c $997C 18                       ;
    ADC      $0721                     ; 0x198d $997D 6D 21 07                 ;
    STA      $0721                     ; 0x1990 $9980 8D 21 07                 ;
    LDX      #$01                      ; 0x1993 $9983 A2 01                    ; X = 01
    STX      $071F                     ; 0x1995 $9985 8E 1F 07                 ;; ???
    DEX                                ; 0x1998 $9988 CA                       ;
    TYA                                ; 0x1999 $9989 98                       ;
    PHA                                ; 0x199a $998A 48                       ;
    BPL      L9991                     ; 0x199b $998B 10 04                    ;
    DEX                                ; 0x199d $998D CA                       ;
    INC      $071F                     ; 0x199e $998E EE 1F 07                 ;; ???
L9991:                                                                          ;
    STX      $00                       ; 0x19a1 $9991 86 00                    ;
    LDY      $071F                     ; 0x19a3 $9993 AC 1F 07                 ;; ???
    CPY      $0720                     ; 0x19a6 $9996 CC 20 07                 ;
    BEQ      L99BD                     ; 0x19a9 $9999 F0 22                    ;
    LDA      $0721                     ; 0x19ab $999B AD 21 07                 ;
    BMI      L99A4                     ; 0x19ae $999E 30 04                    ;
    CMP      #$20                      ; 0x19b0 $99A0 C9 20                    ;
    BCC      L99BD                     ; 0x19b2 $99A2 90 19                    ;
L99A4:                                                                          ;
    STY      $0720                     ; 0x19b4 $99A4 8C 20 07                 ;
    LDA      $0740                     ; 0x19b7 $99A7 AD 40 07                 ;
    CMP      #$06                      ; 0x19ba $99AA C9 06                    ;
    BCS      L99B8                     ; 0x19bc $99AC B0 0A                    ;
    CMP      #$02                      ; 0x19be $99AE C9 02                    ;
    BCS      L99B5                     ; 0x19c0 $99B0 B0 03                    ;
    JSR      bank0_unknown22           ; 0x19c2 $99B2 20 30 9A                 ;
L99B5:                                                                          ;
    JSR      bank0_unknown22           ; 0x19c5 $99B5 20 30 9A                 ;
L99B8:                                                                          ;
    LDA      #$00                      ; 0x19c8 $99B8 A9 00                    ;;A = #$00 0000_0000
    STA      $0740                     ; 0x19ca $99BA 8D 40 07                 ;
L99BD:                                                                          ;
    PLA                                ; 0x19cd $99BD 68                       ;
    CLC                                ; 0x19ce $99BE 18                       ;
    ADC      $072C                     ; 0x19cf $99BF 6D 2C 07                 ;; Scrolling Offset Low Byte
    STA      $072C                     ; 0x19d2 $99C2 8D 2C 07                 ;; Scrolling Offset Low Byte
    STA      $FD                       ; 0x19d5 $99C5 85 FD                    ;
    LDA      $072A                     ; 0x19d7 $99C7 AD 2A 07                 ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      $00                       ; 0x19da $99CA 65 00                    ;
    STA      $072A                     ; 0x19dc $99CC 8D 2A 07                 ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    AND      #$01                      ; 0x19df $99CF 29 01                    ; keep bits .... ...x
    STA      $0746                     ; 0x19e1 $99D1 8D 46 07                 ;
L99D4:                                                                          ;
    LDA      $072C                     ; 0x19e4 $99D4 AD 2C 07                 ;; Scrolling Offset Low Byte
    CLC                                ; 0x19e7 $99D7 18                       ;
    ADC      #$FF                      ; 0x19e8 $99D8 69 FF                    ;
    STA      $072D                     ; 0x19ea $99DA 8D 2D 07                 ;
    LDA      $072A                     ; 0x19ed $99DD AD 2A 07                 ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x19f0 $99E0 69 00                    ;
    STA      $072B                     ; 0x19f2 $99E2 8D 2B 07                 ;
L99E5:                                                                          ;
    RTS                                ; 0x19f5 $99E5 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99E6:                                                                          ;
    LDA      $0740                     ; 0x19f6 $99E6 AD 40 07                 ;
    BNE      L9A04                     ; 0x19f9 $99E9 D0 19                    ;
    LDA      $0721                     ; 0x19fb $99EB AD 21 07                 ;
    BMI      L99F9                     ; 0x19fe $99EE 30 09                    ;
    CMP      #$20                      ; 0x1a00 $99F0 C9 20                    ;
    BCC      L99E5                     ; 0x1a02 $99F2 90 F1                    ;
    SBC      #$20                      ; 0x1a04 $99F4 E9 20                    ;
    JMP      L99FC                     ; 0x1a06 $99F6 4C FC 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99F9:                                                                          ;
    CLC                                ; 0x1a09 $99F9 18                       ;
    ADC      #$20                      ; 0x1a0a $99FA 69 20                    ;
L99FC:                                                                          ;
    STA      $0721                     ; 0x1a0c $99FC 8D 21 07                 ;
    LDA      #$00                      ; 0x1a0f $99FF A9 00                    ; A = 00
    STA      $03A3                     ; 0x1a11 $9A01 8D A3 03                 ;
L9A04:                                                                          ;
    DEC      $0740                     ; 0x1a14 $9A04 CE 40 07                 ;
    BPL      L9A18                     ; 0x1a17 $9A07 10 0F                    ;
    LDA      #$08                      ; 0x1a19 $9A09 A9 08                    ; A = 08
    STA      $0740                     ; 0x1a1b $9A0B 8D 40 07                 ;
    LDA      #$00                      ; 0x1a1e $9A0E A9 00                    ; A = 00
    LDX      #$07                      ; 0x1a20 $9A10 A2 07                    ; X = 07
L9A12:                                                                          ;
    STA      $0471,x                   ; 0x1a22 $9A12 9D 71 04                 ;
    DEX                                ; 0x1a25 $9A15 CA                       ;
    BNE      L9A12                     ; 0x1a26 $9A16 D0 FA                    ;
L9A18:                                                                          ;
    LDA      $0740                     ; 0x1a28 $9A18 AD 40 07                 ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x1a2b $9A1B 20 85 D3;
bank0_unknown_pointer_table2:                                                   ;
.word    L9B13                         ; 0x1a2e $9A1E 13 9B                    ;
.word    bank0_unknown22               ; 0x1a30 $9A20 30 9A                    ;
.word    bank0_unknown26               ; 0x1a32 $9A22 B8 9A                    ;
.word    bank0_unknown26               ; 0x1a34 $9A24 B8 9A                    ;
.word    L9A77                         ; 0x1a36 $9A26 77 9A                    ;
.word    bank0_unknown22               ; 0x1a38 $9A28 30 9A                    ;
.word    bank0_unknown26               ; 0x1a3a $9A2A B8 9A                    ;
.word    bank0_unknown26               ; 0x1a3c $9A2C B8 9A                    ;
.word    L9A77                         ; 0x1a3e $9A2E 77 9A                    ;
; ---------------------------------------------------------------------------- ;
bank0_unknown22:                                                                ;
    LDA      $0720                     ; 0x1a40 $9A30 AD 20 07                 ;
    LDX      #$01                      ; 0x1a43 $9A33 A2 01                    ; X = 01
    LSR                                ; 0x1a45 $9A35 4A                       ;
    BCC      L9A5A                     ; 0x1a46 $9A36 90 22                    ;
L9A38:                                                                          ;
    LDY      $0734,x                   ; 0x1a48 $9A38 BC 34 07                 ;
    INY                                ; 0x1a4b $9A3B C8                       ;
    TYA                                ; 0x1a4c $9A3C 98                       ;
    AND      #$0F                      ; 0x1a4d $9A3D 29 0F                    ; keep bits .... xxxx
    STA      $0734,x                   ; 0x1a4f $9A3F 9D 34 07                 ;
    BNE      L9A56                     ; 0x1a52 $9A42 D0 12                    ;
L9A46     = * + $0002                                                          ;
    INC      $0732,x                   ; 0x1a54 $9A44 FE 32 07                 ;
    LDA      $0732,x                   ; 0x1a57 $9A47 BD 32 07                 ;
    CMP      $071B                     ; 0x1a5a $9A4A CD 1B 07                 ;
    BCC      L9A56                     ; 0x1a5d $9A4D 90 07                    ;
    BEQ      L9A56                     ; 0x1a5f $9A4F F0 05                    ;
    LDA      #$00                      ; 0x1a61 $9A51 A9 00                    ; A = 00
    STA      $0732,x                   ; 0x1a63 $9A53 9D 32 07                 ;
L9A56:                                                                          ;
    DEX                                ; 0x1a66 $9A56 CA                       ;
    BPL      L9A38                     ; 0x1a67 $9A57 10 DF                    ;
    RTS                                ; 0x1a69 $9A59 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A5A:                                                                          ;
    LDY      $0734,x                   ; 0x1a6a $9A5A BC 34 07                 ;
    DEY                                ; 0x1a6d $9A5D 88                       ;
    TYA                                ; 0x1a6e $9A5E 98                       ;
    AND      #$0F                      ; 0x1a6f $9A5F 29 0F                    ; keep bits .... xxxx
    STA      $0734,x                   ; 0x1a71 $9A61 9D 34 07                 ;
    CMP      #$0F                      ; 0x1a74 $9A64 C9 0F                    ;
    BNE      L9A73                     ; 0x1a76 $9A66 D0 0B                    ;
    DEC      $0732,x                   ; 0x1a78 $9A68 DE 32 07                 ;
    BPL      L9A73                     ; 0x1a7b $9A6B 10 06                    ;
    LDA      $071B                     ; 0x1a7d $9A6D AD 1B 07                 ;
    STA      $0732,x                   ; 0x1a80 $9A70 9D 32 07                 ;
L9A73:                                                                          ;
    DEX                                ; 0x1a83 $9A73 CA                       ;
    BPL      L9A5A                     ; 0x1a84 $9A74 10 E4                    ;
    RTS                                ; 0x1a86 $9A76 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A77:                                                                          ;
    LDA      $0720                     ; 0x1a87 $9A77 AD 20 07                 ;
    LSR                                ; 0x1a8a $9A7A 4A                       ;
    LDX      $0734                     ; 0x1a8b $9A7B AE 34 07                 ;
    LDA      $0732                     ; 0x1a8e $9A7E AD 32 07                 ;
    BCC      L9A89                     ; 0x1a91 $9A81 90 06                    ;
    LDX      $0735                     ; 0x1a93 $9A83 AE 35 07                 ;
    LDA      $0733                     ; 0x1a96 $9A86 AD 33 07                 ;
L9A89:                                                                          ;
    JSR      bank0_unknown24           ; 0x1a99 $9A89 20 A8 9A                 ;
    TXA                                ; 0x1a9c $9A8C 8A                       ;
    TAY                                ; 0x1a9d $9A8D A8                       ;
    LDX      #$00                      ; 0x1a9e $9A8E A2 00                    ; X = 00
L9A90:                                                                          ;
    LDA      (L000E),y                 ; 0x1aa0 $9A90 B1 0E                    ;
    STA      $0464,x                   ; 0x1aa2 $9A92 9D 64 04                 ;
    TYA                                ; 0x1aa5 $9A95 98                       ;
    CLC                                ; 0x1aa6 $9A96 18                       ;
    ADC      #$10                      ; 0x1aa7 $9A97 69 10                    ;
    TAY                                ; 0x1aa9 $9A99 A8                       ;
    INX                                ; 0x1aaa $9A9A E8                       ;
    CPX      #$0D                      ; 0x1aab $9A9B E0 0D                    ;
    BNE      L9A90                     ; 0x1aad $9A9D D0 F1                    ;
    RTS                                ; 0x1aaf $9A9F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown23:                                                                ;
.byt    $00,$D0,$A0,$70                ; 0x1ab0 $9AA0 00 D0 A0 70              ;
L9AA4:                                                                          ;
.byt    $60,$60,$61,$62                ; 0x1ab4 $9AA4 60 60 61 62              ;
; ---------------------------------------------------------------------------- ;
bank0_unknown24:                                                                ;
    AND      #$03                      ; 0x1ab8 $9AA8 29 03                    ; keep bits .... ..xx
    TAY                                ; 0x1aba $9AAA A8                       ;
    LDA      bank0_unknown23,y         ; 0x1abb $9AAB B9 A0 9A                 ;
    STA      L000E                     ; 0x1abe $9AAE 85 0E                    ;
    LDA      L9AA4,y                   ; 0x1ac0 $9AB0 B9 A4 9A                 ;
    STA      $0F                       ; 0x1ac3 $9AB3 85 0F                    ;
    RTS                                ; 0x1ac5 $9AB5 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown25:                                                                ;
.byt    $20,$24                        ; 0x1ac6 $9AB6 20 24                    ;
; ---------------------------------------------------------------------------- ;
bank0_unknown26:                                                                ;
    LDA      $0720                     ; 0x1ac8 $9AB8 AD 20 07                 ;
    AND      #$01                      ; 0x1acb $9ABB 29 01                    ; keep bits .... ...x
    TAY                                ; 0x1acd $9ABD A8                       ;
    LDA      $0734,y                   ; 0x1ace $9ABE B9 34 07                 ;
    AND      #$01                      ; 0x1ad1 $9AC1 29 01                    ; keep bits .... ...x
    STA      $05                       ; 0x1ad3 $9AC3 85 05                    ;
    LDA      $0732,y                   ; 0x1ad5 $9AC5 B9 32 07                 ;
    AND      #$01                      ; 0x1ad8 $9AC8 29 01                    ; keep bits .... ...x
    TAX                                ; 0x1ada $9ACA AA                       ;
    LDA      bank0_unknown25,x         ; 0x1adb $9ACB BD B6 9A                 ; refer to table at $1AB6
    STA      $071D                     ; 0x1ade $9ACE 8D 1D 07                 ;
    LDA      $0740                     ; 0x1ae1 $9AD1 AD 40 07                 ;
    AND      #$01                      ; 0x1ae4 $9AD4 29 01                    ; keep bits .... ...x
    EOR      #$01                      ; 0x1ae6 $9AD6 49 01                    ; flip bits .... ...x
    LSR                                ; 0x1ae8 $9AD8 4A                       ;
    LDA      $0734,y                   ; 0x1ae9 $9AD9 B9 34 07                 ;
    ROL                                ; 0x1aec $9ADC 2A                       ;
    ADC      #$80                      ; 0x1aed $9ADD 69 80                    ;
    STA      $071E                     ; 0x1aef $9ADF 8D 1E 07                 ;
    LDY      $03A3                     ; 0x1af2 $9AE2 AC A3 03                 ;
    STY      $00                       ; 0x1af5 $9AE5 84 00                    ;
    LDA      $071E                     ; 0x1af7 $9AE7 AD 1E 07                 ;
    STA      $03A5,y                   ; 0x1afa $9AEA 99 A5 03                 ;
    LDA      $071D                     ; 0x1afd $9AED AD 1D 07                 ;
    STA      L03A4,y                   ; 0x1b00 $9AF0 99 A4 03                 ;
    LDA      #$9A                      ; 0x1b03 $9AF3 A9 9A                    ; A = 9A
    STA      $03A6,y                   ; 0x1b05 $9AF5 99 A6 03                 ;
    LDA      #$00                      ; 0x1b08 $9AF8 A9 00                    ; A = 00
    STA      $04                       ; 0x1b0a $9AFA 85 04                    ;
    TAX                                ; 0x1b0c $9AFC AA                       ;
    JSR      bank7_code55              ; 0x1b0d $9AFD 20 D0 FE                 ;
    LDY      $00                       ; 0x1b10 $9B00 A4 00                    ;
    INY                                ; 0x1b12 $9B02 C8                       ;
    INY                                ; 0x1b13 $9B03 C8                       ;
    INY                                ; 0x1b14 $9B04 C8                       ;
    LDA      #$FF                      ; 0x1b15 $9B05 A9 FF                    ; A = FF
    STA      L03A4,y                   ; 0x1b17 $9B07 99 A4 03                 ;
    STY      $03A3                     ; 0x1b1a $9B0A 8C A3 03                 ;
    LDA      #$02                      ; 0x1b1d $9B0D A9 02                    ; A = 02
    STA      $0725                     ; 0x1b1f $9B0F 8D 25 07                 ;; PPU Macro Selector	
    RTS                                ; 0x1b22 $9B12 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B13:                                                                          ;
    LDA      #$01                      ; 0x1b23 $9B13 A9 01                    ; A = 01
    STA      $07AE                     ; 0x1b25 $9B15 8D AE 07                 ;
    RTS                                ; 0x1b28 $9B18 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B19:                                                                          ;
    LDA      $072C                     ; 0x1b29 $9B19 AD 2C 07                 ;; Scrolling Offset Low Byte
    AND      #$0F                      ; 0x1b2c $9B1C 29 0F                    ; keep bits .... xxxx
    STA      $01                       ; 0x1b2e $9B1E 85 01                    ;
    CMP      #$08                      ; 0x1b30 $9B20 C9 08                    ;
    BCS      DECIDE_IF_DRAW_ITEMS_WHICH_LINK_HAS_ON_SPELL_PAUSE_PANE_SCREEN; 0x1b32 $9B22 B0 08;
    LDA      #$98                      ; 0x1b34 $9B24 A9 98                    ; A = 98
    SEC                                ; 0x1b36 $9B26 38                       ;
    SBC      $01                       ; 0x1b37 $9B27 E5 01                    ;
    JMP      L9B30                     ; 0x1b39 $9B29 4C 30 9B                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
DECIDE_IF_DRAW_ITEMS_WHICH_LINK_HAS_ON_SPELL_PAUSE_PANE_SCREEN:                 ;
    LDA      #$A8                      ; 0x1b3c $9B2C A9 A8                    ; A = A8
    SBC      $01                       ; 0x1b3e $9B2E E5 01                    ;
L9B30:                                                                          ;
    STA      $01                       ; 0x1b40 $9B30 85 01                    ;
    LDY      #$07                      ; 0x1b42 $9B32 A0 07                    ; Y = 07
L9B34:                                                                          ;
    LDA      $0785,y                   ; 0x1b44 $9B34 B9 85 07                 ; Have Candle ?
    BEQ      L9B56                     ; 0x1b47 $9B37 F0 1D                    ;
    TYA                                ; 0x1b49 $9B39 98                       ;
    ASL                                ; 0x1b4a $9B3A 0A                       ;
    ASL                                ; 0x1b4b $9B3B 0A                       ;
    PHA                                ; 0x1b4c $9B3C 48                       ;
    TAX                                ; 0x1b4d $9B3D AA                       ;
    LDA      #$B7                      ; 0x1b4e $9B3E A9 B7                    ; A = B7
    STA      $0204,x                   ; 0x1b50 $9B40 9D 04 02                 ;
    TYA                                ; 0x1b53 $9B43 98                       ;
    ASL                                ; 0x1b54 $9B44 0A                       ;
    ADC      #$8C                      ; 0x1b55 $9B45 69 8C                    ;
    STA      $0205,x                   ; 0x1b57 $9B47 9D 05 02                 ;
    LDA      #$01                      ; 0x1b5a $9B4A A9 01                    ; A = 01
    STA      $0206,x                   ; 0x1b5c $9B4C 9D 06 02                 ;
    PLA                                ; 0x1b5f $9B4F 68                       ;
    ASL                                ; 0x1b60 $9B50 0A                       ;
    ADC      $01                       ; 0x1b61 $9B51 65 01                    ;
    STA      $0207,x                   ; 0x1b63 $9B53 9D 07 02                 ;
L9B56:                                                                          ;
    DEY                                ; 0x1b66 $9B56 88                       ;
    BPL      L9B34                     ; 0x1b67 $9B57 10 DB                    ;
    RTS                                ; 0x1b69 $9B59 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Pointer_Table_for_Panes:                                                        ;
.word    LevelUp_Pane_tile_mappings    ; 0x1b6a $9B5A AA 9B                    ;Pointer to Tile Mapping for Pause Pane
.word    LevelUp_Pane__BlankLine       ; 0x1b6c $9B5C C6 9B                    ;Pointer to Tile Mapping for Level Up Pane
.word    LevelUp_Pane__BlankLine       ; 0x1b6e $9B5E C6 9B                    ;
.word    LevelUp_Pane__BlankLine       ; 0x1b70 $9B60 C6 9B                    ;
.word    LevelUp_Pane__BlankLine       ; 0x1b72 $9B62 C6 9B                    ;
.word    LevelUp_Pane__BlankLine       ; 0x1b74 $9B64 C6 9B                    ;
.word    LevelUp_Pane__BlankLine       ; 0x1b76 $9B66 C6 9B                    ;
.word    LevelUp_Pane__BlankLine       ; 0x1b78 $9B68 C6 9B                    ;
Pointer_Table_for_Contents_of_Panes_in_Cartridge_RAM:                           ;
.word    L7800                         ; 0x1b7a $9B6A 00 78                    ;Number_of_Lives
.word    L788C                         ; 0x1b7c $9B6C 8C 78                    ;Number_of_Crystals
.word    L780E                         ; 0x1b7e $9B6E 0E 78                    ;Shield
.word    L781C                         ; 0x1b80 $9B70 1C 78                    ;Jump
.word    L782A                         ; 0x1b82 $9B72 2A 78                    ;Life
.word    L7838                         ; 0x1b84 $9B74 38 78                    ;Fairy
.word    L7846                         ; 0x1b86 $9B76 46 78                    ;Fire
.word    L7854                         ; 0x1b88 $9B78 54 78                    ;Reflect
.word    L7862                         ; 0x1b8a $9B7A 62 78                    ;Spell
.word    L7870                         ; 0x1b8c $9B7C 70 78                    ;Thunder
.word    L787E                         ; 0x1b8e $9B7E 7E 78                    ;Number_of_Keys    
Pointer_table_for_Panes_tile_mappings:                                          ;
.word    LevelUp_Pane_tile_mappings    ; 0x1b90 $9B80 AA 9B                    ;check here for spell menu
lpointerTable__panes_tile_mappings__9B82:                                       ;
lpointerTable__panes_tile_mappings__9B83 = * + $0001                       ;
.word    LevelUp_Pane__LineWithBar     ; 0x1b92 $9B82 B8 9B                    ;
.word    LevelUp_Pane__UpCancel        ; 0x1b94 $9B84 0C 9C                    ;
L9B86:                                                                          ;
.word    LevelUp_Pane_tile_mappings    ; 0x1b96 $9B86 AA 9B                    ;
.word    L78C4                         ; 0x1b98 $9B88 C4 78                    ;
.word    L789A                         ; 0x1b9a $9B8A 9A 78                    ;
.word    LevelUp_Pane__Magic           ; 0x1b9c $9B8C F0 9B                    ;
.word    L78FC                         ; 0x1b9e $9B8E FC 78                    ;
.word    LevelUp_Pane_tile_mappings    ; 0x1ba0 $9B90 AA 9B                    ;
.word    L78E0                         ; 0x1ba2 $9B92 E0 78                    ;
.word    L78B6                         ; 0x1ba4 $9B94 B6 78                    ;
lpointerTable__panes_tile_mappings__9B96:                                       ;
lpointerTable__panes_tile_mappings__9B97 = * + $0001                       ;
.word    LevelUp_Pane__Next            ; 0x1ba6 $9B96 D4 9B                    ;
.word    LevelUp_Pane__LineWithBar     ; 0x1ba8 $9B98 B8 9B                    ;
.word    LevelUp_Pane__Attack          ; 0x1baa $9B9A E2 9B                    ;
.word    L78EE                         ; 0x1bac $9B9C EE 78                    ;
.word    LevelUp_Pane_tile_mappings    ; 0x1bae $9B9E AA 9B                    ;
.word    L78D2                         ; 0x1bb0 $9BA0 D2 78                    ;
.word    L78A8                         ; 0x1bb2 $9BA2 A8 78                    ;
.word    LevelUp_Pane__Life            ; 0x1bb4 $9BA4 FE 9B                    ;
.word    L790A                         ; 0x1bb6 $9BA6 0A 79                    ;
.word    LevelUp_Pane_tile_mappings    ; 0x1bb8 $9BA8 AA 9B                    ;
; ---------------------------------------------------------------------------- ;
LevelUp_Pane_tile_mappings:                                                     ;
.byt    $CA,$CB,$CB,$CB,$CB,$CB,$CB,$CB; 0x1bba $9BAA CA CB CB CB CB CB CB CB  ;
.byt    $CB,$CB,$CB,$CB,$CB,$CA        ; 0x1bc2 $9BB2 CB CB CB CB CB CA        ;
LevelUp_Pane__LineWithBar:                                                      ;
.byt    $CA,$CB,$CB,$CB,$CB,$CA,$CB,$CB; 0x1bc8 $9BB8 CA CB CB CB CB CA CB CB  ;
.byt    $CB,$CB,$CB,$CB,$CB,$CA        ; 0x1bd0 $9BC0 CB CB CB CB CB CA        ;
LevelUp_Pane__BlankLine:                                                        ;
.byt    $CC,$F4,$F4,$F4,$F4            ; 0x1bd6 $9BC6 CC F4 F4 F4 F4           ;
LevelUp_Pane__BlankLine_SecondHalfOnly:                                         ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x1bdb $9BCB F4 F4 F4 F4 F4 F4 F4 F4  ;
.byt    $CC                            ; 0x1be3 $9BD3 CC                       ;
LevelUp_Pane__Next:                                                             ;
.byt    $CC,$E7,$DE,$F1,$ED,$CC,$F4,$F4; 0x1be4 $9BD4 CC E7 DE F1 ED CC F4 F4  ;next
.byt    $F4,$F4,$F4,$F4,$F4,$CC        ; 0x1bec $9BDC F4 F4 F4 F4 F4 CC        ;
LevelUp_Pane__Attack:                                                           ;
.byt    $CC,$F4,$F4,$F4,$F4,$F4,$F4,$DA; 0x1bf2 $9BE2 CC F4 F4 F4 F4 F4 F4 DA  ;attack
.byt    $ED,$ED,$DA,$DC,$E4,$CC        ; 0x1bfa $9BEA ED ED DA DC E4 CC        ;
LevelUp_Pane__Magic:                                                            ;
.byt    $CC,$F4,$F4,$F4,$F4,$F4,$F4,$E6; 0x1c00 $9BF0 CC F4 F4 F4 F4 F4 F4 E6  ;magic
.byt    $DA,$E0,$E2,$DC,$F4,$CC        ; 0x1c08 $9BF8 DA E0 E2 DC F4 CC        ;
LevelUp_Pane__Life:                                                             ;
.byt    $CC,$F4,$F4,$F4,$F4,$F4,$F4,$E5; 0x1c0e $9BFE CC F4 F4 F4 F4 F4 F4 E5  ;life
.byt    $E2,$DF,$DE,$F4,$F4,$CC        ; 0x1c16 $9C06 E2 DF DE F4 F4 CC        ;
LevelUp_Pane__UpCancel:                                                         ;
.byt    $CC,$F4,$EE,$E9,$F4,$CC,$F4,$DC; 0x1c1c $9C0C CC F4 EE E9 F4 CC F4 DC  ;up  Cancel
.byt    $DA,$E7,$DC,$DE,$E5,$CC        ; 0x1c24 $9C14 DA E7 DC DE E5 CC        ;
SpellMenu_Pane__SpellText:                                                      ;
.byt    $CC,$96,$FC,$F4,$CB,$CB,$CB,$CB; 0x1c2a $9C1A CC 96 FC F4 CB CB CB CB  ;x__SHIELDuuuuu_JUMPuuuuuuu_LIFEuuuuuuu_FAIRYuuuuuu_FIREuuuuuuu_REFLECTuu10_SPELLuuuuuu_THUNDERuuuu
.byt    $CB,$CB,$CB,$CB,$CB,$CC,$CC,$F4; 0x1c32 $9C22 CB CB CB CB CB CC CC F4  ;
.byt    $EC,$E1,$E2,$DE,$E5,$DD,$CF,$CF; 0x1c3a $9C2A EC E1 E2 DE E5 DD CF CF  ;
.byt    $CF,$CF,$CF,$CC,$CC,$F4,$E3,$EE; 0x1c42 $9C32 CF CF CF CC CC F4 E3 EE  ;
.byt    $E6,$E9,$CF,$CF,$CF,$CF,$CF,$CF; 0x1c4a $9C3A E6 E9 CF CF CF CF CF CF  ;
.byt    $CF,$CC,$CC,$F4,$E5,$E2,$DF,$DE; 0x1c52 $9C42 CF CC CC F4 E5 E2 DF DE  ;
.byt    $CF,$CF,$CF,$CF,$CF,$CF,$CF,$CC; 0x1c5a $9C4A CF CF CF CF CF CF CF CC  ;
.byt    $CC,$F4,$DF,$DA,$E2,$EB,$F2,$CF; 0x1c62 $9C52 CC F4 DF DA E2 EB F2 CF  ;
.byt    $CF,$CF,$CF,$CF,$CF,$CC,$CC,$F4; 0x1c6a $9C5A CF CF CF CF CF CC CC F4  ;
.byt    $DF,$E2,$EB,$DE,$CF,$CF,$CF,$CF; 0x1c72 $9C62 DF E2 EB DE CF CF CF CF  ;
.byt    $CF,$CF,$CF,$CC,$CC,$F4,$EB,$DE; 0x1c7a $9C6A CF CF CF CC CC F4 EB DE  ;
.byt    $DF,$E5,$DE,$DC,$ED,$CF,$CF,$D1; 0x1c82 $9C72 DF E5 DE DC ED CF CF D1  ;
.byt    $D0,$CC,$CC,$F4,$EC,$E9,$DE,$E5; 0x1c8a $9C7A D0 CC CC F4 EC E9 DE E5  ;
.byt    $E5,$CF,$CF,$CF,$CF,$CF,$CF,$CC; 0x1c92 $9C82 E5 CF CF CF CF CF CF CC  ;
.byt    $CC,$F4,$ED,$E1,$EE,$E7,$DD,$DE; 0x1c9a $9C8A CC F4 ED E1 EE E7 DD DE  ;
.byt    $EB,$CF,$CF,$CF,$CF,$CC,$CC,$B9; 0x1ca2 $9C92 EB CF CF CF CF CC CC B9  ;
.byt    $FC,$D0,$F4,$F4,$F4,$F4,$F4,$F4; 0x1caa $9C9A FC D0 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$F4,$F4,$CC,$CC,$CD,$FC,$D0; 0x1cb2 $9CA2 F4 F4 F4 CC CC CD FC D0  ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x1cba $9CAA F4 F4 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$CC,$CC,$F4,$F4,$F4,$F4,$F4; 0x1cc2 $9CB2 F4 CC CC F4 F4 F4 F4 F4  ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$CC; 0x1cca $9CBA F4 F4 F4 F4 F4 F4 F4 CC  ;
.byt    $CC,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x1cd2 $9CC2 CC F4 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$F4,$F4,$F4,$F4,$CC,$CC,$F4; 0x1cda $9CCA F4 F4 F4 F4 F4 CC CC F4  ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x1ce2 $9CD2 F4 F4 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$F4,$F4,$CC,$CC,$F4,$F4,$F4; 0x1cea $9CDA F4 F4 F4 CC CC F4 F4 F4  ;
.byt    $D0,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x1cf2 $9CE2 D0 F4 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$CC,$CC,$F4,$F4,$F4,$D0,$F4; 0x1cfa $9CEA F4 CC CC F4 F4 F4 D0 F4  ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$CC; 0x1d02 $9CF2 F4 F4 F4 F4 F4 F4 F4 CC  ;
.byt    $CC,$F4,$F4,$F4,$D0,$F4,$F4,$F4; 0x1d0a $9CFA CC F4 F4 F4 D0 F4 F4 F4  ;
.byt    $F4,$F4,$F4,$F4,$F4,$CC,$CC,$F4; 0x1d12 $9D02 F4 F4 F4 F4 F4 CC CC F4  ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x1d1a $9D0A F4 F4 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$F4,$F4,$CC,$CC,$F4,$F4,$F4; 0x1d22 $9D12 F4 F4 F4 CC CC F4 F4 F4  ;
L9D1A:                                                                          ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4; 0x1d2a $9D1A F4 F4 F4 F4 F4 F4 F4 F4  ;
.byt    $F4,$CC,$CC,$F4,$F4,$F4,$F4,$F4; 0x1d32 $9D22 F4 CC CC F4 F4 F4 F4 F4  ;
.byt    $F4,$F4,$F4,$F4,$F4,$F4,$F4,$CC; 0x1d3a $9D2A F4 F4 F4 F4 F4 F4 F4 CC  ;
LevelUp_Pane__WILL:                                                             ;
.byt    $CC,$F4,$F4,$F4,$D0,$F4,$F4,$F0; 0x1d42 $9D32 CC F4 F4 F4 D0 F4 F4 F0  ;___0__WILL__
.byt    $E2,$E5,$E5,$F4,$F4,$CC        ; 0x1d4a $9D3A E2 E5 E5 F4 F4 CC        ;
LevelUp_Pane__GO_UP:                                                            ;
.byt    $CC,$F4,$F4,$F4,$F4,$F4,$F4,$E0; 0x1d50 $9D40 CC F4 F4 F4 F4 F4 F4 E0  ;______GO_UP_
.byt    $E8,$F4,$EE,$E9,$F4,$CC        ; 0x1d58 $9D48 E8 F4 EE E9 F4 CC        ;
; ---------------------------------------------------------------------------- ;
bank0_unknown_pointer_table30:                                                  ;
.word    L789F                         ; 0x1d5e $9D4E 9F 78                    ;
.word    L78AD                         ; 0x1d60 $9D50 AD 78                    ;
.word    L78BB                         ; 0x1d62 $9D52 BB 78                    ;
; ---------------------------------------------------------------------------- ;
bank0_unknown27:                                                                ;
    LDY      #$50                      ; 0x1d64 $9D54 A0 50                    ; Y = 50
L9D56:                                                                          ;
    DEY                                ; 0x1d66 $9D56 88                       ;
    BNE      L9D56                     ; 0x1d67 $9D57 D0 FD                    ;
L9D59:                                                                          ;
    BIT      $2002                     ; 0x1d69 $9D59 2C 02 20                 ;
    BVC      L9D59                     ; 0x1d6c $9D5C 50 FB                    ;
    LDA      $FF                       ; 0x1d6e $9D5E A5 FF                    ;; Sprite Bank ?
    ORA      $0746                     ; 0x1d70 $9D60 0D 46 07                 ;
    STA      $FF                       ; 0x1d73 $9D63 85 FF                    ;; Sprite Bank ?
    LDX      $FD                       ; 0x1d75 $9D65 A6 FD                    ;
    LDY      #$10                      ; 0x1d77 $9D67 A0 10                    ; Y = 10
L9D69:                                                                          ;
    DEY                                ; 0x1d79 $9D69 88                       ;
    BNE      L9D69                     ; 0x1d7a $9D6A D0 FD                    ;
    STA      $2000                     ; 0x1d7c $9D6C 8D 00 20                 ;
    STX      $2005                     ; 0x1d7f $9D6F 8E 05 20                 ;
    STY      $2005                     ; 0x1d82 $9D72 8C 05 20                 ;
    LDA      $0524                     ; 0x1d85 $9D75 AD 24 05                 ;;menu control	(and) ; OVERWORLD: 	set to 1 to pause (will change to 2) , set to 3 to unpause (will change to 0); Routine Index
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x1d88 $9D78 20 85 D3;
bank0_unknown_pointer_table3:                                                   ;
.word    LA199                         ; 0x1d8b $9D7B 99 A1                    ;
.word    bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__SPELL; 0x1d8d $9D7D 47 A3;
.word    L9FCE                         ; 0x1d8f $9D7F CE 9F                    ;
.word    LA26B                         ; 0x1d91 $9D81 6B A2                    ;
.word    LA2F8                         ; 0x1d93 $9D83 F8 A2                    ;
.word    bank0_unknown31               ; 0x1d95 $9D85 7A 9E                    ;
.word    bank0_unknown35               ; 0x1d97 $9D87 8B A6                    ;
.word    LA0F1                         ; 0x1d99 $9D89 F1 A0                    ;
.word    LA26B                         ; 0x1d9b $9D8B 6B A2                    ;
.word    LA3D7                         ; 0x1d9d $9D8D D7 A3                    ;remove menu from screen
.word    LA338                         ; 0x1d9f $9D8F 38 A3                    ;
; ---------------------------------------------------------------------------- ;
bank0_unknown28:                                                                ;
    LDA      $0524                     ; 0x1da1 $9D91 AD 24 05                 ;check if menu open
    BNE      L9DCD                     ; 0x1da4 $9D94 D0 37                    ;if open, branch there
    LDA      $0744                     ; 0x1da6 $9D96 AD 44 07                 ;; Controller 1 Input; Controller 1 Buttons Held
    AND      #$10                      ; 0x1da9 $9D99 29 10                    ; keep bits ...x ....
    STA      $00                       ; 0x1dab $9D9B 85 00                    ;
    LDA      $F7                       ; 0x1dad $9D9D A5 F7                    ; Controller 1 buttons held
    AND      #$10                      ; 0x1daf $9D9F 29 10                    ; Check if Start is held
    BEQ      L9DCC                     ; 0x1db1 $9DA1 F0 29                    ; if held, skip to $1DCC (RTS)
    CMP      $00                       ; 0x1db3 $9DA3 C5 00                    ;
    BEQ      L9DCC                     ; 0x1db5 $9DA5 F0 25                    ;
    INC      $0524                     ; 0x1db7 $9DA7 EE 24 05                 ;;menu control	(and) ; OVERWORLD: 	set to 1 to pause (will change to 2) , set to 3 to unpause (will change to 0); Routine Index
    LDY      #$00                      ; 0x1dba $9DAA A0 00                    ; Y = 00
L9DAC:                                                                          ;
    NOP                                ; 0x1dbc $9DAC EA                       ;
    DEY                                ; 0x1dbd $9DAD 88                       ;
    BNE      L9DAC                     ; 0x1dbe $9DAE D0 FC                    ;
L9DB0:                                                                          ;
    BIT      $2002                     ; 0x1dc0 $9DB0 2C 02 20                 ;
    BVC      L9DB0                     ; 0x1dc3 $9DB3 50 FB                    ;
    LDA      $FF                       ; 0x1dc5 $9DB5 A5 FF                    ;; Sprite Bank ?
    ORA      $0746                     ; 0x1dc7 $9DB7 0D 46 07                 ;
    STA      $FF                       ; 0x1dca $9DBA 85 FF                    ;; Sprite Bank ?
    LDX      $FD                       ; 0x1dcc $9DBC A6 FD                    ;
    LDY      #$10                      ; 0x1dce $9DBE A0 10                    ; Y = 10
L9DC0:                                                                          ;
    DEY                                ; 0x1dd0 $9DC0 88                       ;
    BNE      L9DC0                     ; 0x1dd1 $9DC1 D0 FD                    ;
    STA      $2000                     ; 0x1dd3 $9DC3 8D 00 20                 ;
    STX      $2005                     ; 0x1dd6 $9DC6 8E 05 20                 ;
    STY      $2005                     ; 0x1dd9 $9DC9 8C 05 20                 ;
L9DCC:                                                                          ;
    RTS                                ; 0x1ddc $9DCC 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9DCD:                                                                          ;
    JSR      L9DB0                     ; 0x1ddd $9DCD 20 B0 9D                 ;
    LDA      $0524                     ; 0x1de0 $9DD0 AD 24 05                 ;;menu control	(and) ; OVERWORLD: 	set to 1 to pause (will change to 2) , set to 3 to unpause (will change to 0); Routine Index
    CMP      #$05                      ; 0x1de3 $9DD3 C9 05                    ;
    BCC      L9DDE                     ; 0x1de5 $9DD5 90 07                    ;
    CMP      #$07                      ; 0x1de7 $9DD7 C9 07                    ;
    BCS      L9DDE                     ; 0x1de9 $9DD9 B0 03                    ;
    JSR      L9B19                     ; 0x1deb $9DDB 20 19 9B                 ;
L9DDE:                                                                          ;
    LDA      $0524                     ; 0x1dee $9DDE AD 24 05                 ;;menu control	(and) ; OVERWORLD: 	set to 1 to pause (will change to 2) , set to 3 to unpause (will change to 0); Routine Index
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x1df1 $9DE1 20 85 D3;
Pointer_table_for_Pause_Pane:                                                   ;
.word    L9DCC                         ; 0x1df4 $9DE4 CC 9D                    ;
.word    bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__SPELL; 0x1df6 $9DE6 47 A3;LOAD FROM ROM TO RAM THE SPELL MENU TEXT
.word    LA148                         ; 0x1df8 $9DE8 48 A1                    ;
.word    LA26B                         ; 0x1dfa $9DEA 6B A2                    ;
.word    involves_pause_pane_deciding_what_to_draw_based_on_what_spells_list_has_and_drawing_it__main; 0x1dfc $9DEC FE A2;
.word    bank0_Pause_Pane_Pointer_5__Table_1DE4; 0x1dfe $9DEE DD A1            ;
.word    LA26B                         ; 0x1e00 $9DF0 6B A2                    ;
.word    LA3D7                         ; 0x1e02 $9DF2 D7 A3                    ;
.word    LA338                         ; 0x1e04 $9DF4 38 A3                    ;
; ---------------------------------------------------------------------------- ;
bank0_unknown29:                                                                ;
    LDA      $0744                     ; 0x1e06 $9DF6 AD 44 07                 ;; Controller 1 Input; Controller 1 Buttons Held
    AND      #$0C                      ; 0x1e09 $9DF9 29 0C                    ; keep bits .... xx..
    STA      $01                       ; 0x1e0b $9DFB 85 01                    ;
    LDA      #$0C                      ; 0x1e0d $9DFD A9 0C                    ; A = 0C
    STA      $00                       ; 0x1e0f $9DFF 85 00                    ;
    LDA      $F7                       ; 0x1e11 $9E01 A5 F7                    ; Controller 1 buttons held
    AND      #$0C                      ; 0x1e13 $9E03 29 0C                    ; Check if Up/Down is held
    BIT      $00                       ; 0x1e15 $9E05 24 00                    ;
    BEQ      L9E1D                     ; 0x1e17 $9E07 F0 14                    ;
    CMP      $01                       ; 0x1e19 $9E09 C5 01                    ;
    BNE      L9E16                     ; 0x1e1b $9E0B D0 09                    ;
    DEC      $0487                     ; 0x1e1d $9E0D CE 87 04                 ;
    BNE      L9E1D                     ; 0x1e20 $9E10 D0 0B                    ;
    LDY      #$07                      ; 0x1e22 $9E12 A0 07                    ; Y = 07
    BNE      L9E18                     ; 0x1e24 $9E14 D0 02                    ;
L9E16:                                                                          ;
    LDY      #$10                      ; 0x1e26 $9E16 A0 10                    ; Y = 10
L9E18:                                                                          ;
    STY      $0487                     ; 0x1e28 $9E18 8C 87 04                 ;
    SEC                                ; 0x1e2b $9E1B 38                       ;
    RTS                                ; 0x1e2c $9E1C 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E1D:                                                                          ;
    CLC                                ; 0x1e2d $9E1D 18                       ;
    RTS                                ; 0x1e2e $9E1E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown30:                                                                ;
.byt    $00,$00,$01,$F4                ; 0x1e2f $9E1F 00 00 01 F4              ;
L9E23:                                                                          ;
.byt    $C9,$FA,$F8                    ; 0x1e33 $9E23 C9 FA F8                 ;
; ---------------------------------------------------------------------------- ;
bank0_pointer_table_C:                                                          ;
.word    L78C4                         ; 0x1e36 $9E26 C4 78                    ;Pointer table for ? (C bytes) (RAM)
.word    L78D2                         ; 0x1e38 $9E28 D2 78                    ;
.word    L78E0                         ; 0x1e3a $9E2A E0 78                    ;
.word    L78EE                         ; 0x1e3c $9E2C EE 78                    ;
.word    L78FC                         ; 0x1e3e $9E2E FC 78                    ;
.word    L790A                         ; 0x1e40 $9E30 0A 79                    ;
; ---------------------------------------------------------------------------- ;
Table_for_AML_digits_in_Level_Up_Pane__10s:                                     ;
.byt    $D0,$D0,$D0,$D0,$D0,$D0,$D0,$D0; 0x1e42 $9E32 D0 D0 D0 D0 D0 D0 D0 D0  ;
.byt    $D0,$D0,$D0,$D0,$D0,$D0,$D0,$D0; 0x1e4a $9E3A D0 D0 D0 D0 D0 D0 D0 D0  ;
.byt    $D5,$D5,$D0,$D0,$D0,$D0,$D0    ; 0x1e52 $9E42 D5 D5 D0 D0 D0 D0 D0     ;
L9E49:                                                                          ;
.byt    $D0                            ; 0x1e59 $9E49 D0                       ;
Table_for_AML_digits_in_Level_Up_Pane__100s:                                    ;
.byt    $D2,$D5,$D0,$D0,$D0,$D0,$D0,$D0; 0x1e5a $9E4A D2 D5 D0 D0 D0 D0 D0 D0  ;
.byt    $D1,$D3,$D7,$D2,$D2,$D5,$D0,$D0; 0x1e62 $9E52 D1 D3 D7 D2 D2 D5 D0 D0  ;
.byt    $F4,$D1,$D4,$D8,$D5,$D5,$D0    ; 0x1e6a $9E5A F4 D1 D4 D8 D5 D5 D0     ;
L9E61:                                                                          ;
.byt    $D0                            ; 0x1e71 $9E61 D0                       ;
Table_for_AML_digits_in_Level_Up_Pane__1000s:                                   ;
.byt    $F4,$F4,$D1,$D2,$D3,$D5,$D8,$D9; 0x1e72 $9E62 F4 F4 D1 D2 D3 D5 D8 D9  ;
.byt    $F4,$F4,$F4,$D1,$D2,$D3,$D6,$D9; 0x1e7a $9E6A F4 F4 F4 D1 D2 D3 D6 D9  ;
.byt    $F4,$F4,$F4,$F4,$D1,$D2,$D4,$D9; 0x1e82 $9E72 F4 F4 F4 F4 D1 D2 D4 D9  ;
; ---------------------------------------------------------------------------- ;
bank0_unknown31:                                                                ;
    JSR      bank0_unknown29           ; 0x1e8a $9E7A 20 F6 9D                 ;
    BCS      bank0_Related_To_LevelUp  ; 0x1e8d $9E7D B0 03                    ;
    JMP      L9F3D                     ; 0x1e8f $9E7F 4C 3D 9F                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_Related_To_LevelUp:                                                       ;
;LEVEL UP MENU                                                                 ;
;this occurs when up/down is pressed on controller                             ;
;determine if have enough exp to move cursor to the spot where the option is   ;
    AND      #$08                      ; 0x1e92 $9E82 29 08                    ; keep bits .... x...
    LDY      $074E                     ; 0x1e94 $9E84 AC 4E 07                 ;
    INY                                ; 0x1e97 $9E87 C8                       ;
    BIT      $00                       ; 0x1e98 $9E88 24 00                    ;
    BEQ      L9E92                     ; 0x1e9a $9E8A F0 06                    ;
    DEY                                ; 0x1e9c $9E8C 88                       ;
    DEY                                ; 0x1e9d $9E8D 88                       ;
    BPL      L9E92                     ; 0x1e9e $9E8E 10 02                    ;
    LDY      #$03                      ; 0x1ea0 $9E90 A0 03                    ; Y = 03
L9E92:                                                                          ;
    CPY      #$04                      ; 0x1ea2 $9E92 C0 04                    ;
    BCC      L9E98                     ; 0x1ea4 $9E94 90 02                    ;
    LDY      #$00                      ; 0x1ea6 $9E96 A0 00                    ; Y = 00
L9E98:                                                                          ;
    STY      $074E                     ; 0x1ea8 $9E98 8C 4E 07                 ;
    CPY      #$03                      ; 0x1eab $9E9B C0 03                    ;
    BEQ      L9EBA                     ; 0x1ead $9E9D F0 1B                    ;
    TYA                                ; 0x1eaf $9E9F 98                       ;
    ASL                                ; 0x1eb0 $9EA0 0A                       ;
    ASL                                ; 0x1eb1 $9EA1 0A                       ;
    ASL                                ; 0x1eb2 $9EA2 0A                       ;
    ADC      $0777,y                   ; 0x1eb3 $9EA3 79 77 07                 ; AML Power
    TAX                                ; 0x1eb6 $9EA6 AA                       ;
    LDA      $0776                     ; 0x1eb7 $9EA7 AD 76 07                 ; Experience Low Byte
    SEC                                ; 0x1eba $9EAA 38                       ;
    SBC      L9670,x                   ; 0x1ebb $9EAB FD 70 96                 ;
    LDA      $0775                     ; 0x1ebe $9EAE AD 75 07                 ;; Experience x256; Current Experience (high byte)
    SBC      L9658,x                   ; 0x1ec1 $9EB1 FD 58 96                 ;
    LDA      $F7                       ; 0x1ec4 $9EB4 A5 F7                    ; Controller 1 buttons held
    BCC      bank0_Related_To_LevelUp  ; 0x1ec6 $9EB6 90 CA                    ;nop nop here to allow movement without exp required
    BCS      L9ECA                     ; 0x1ec8 $9EB8 B0 10                    ;
L9EBA:                                                                          ;
    JSR      LA0CE                     ; 0x1eca $9EBA 20 CE A0                 ;
    LDA      $02                       ; 0x1ecd $9EBD A5 02                    ;
    ORA      $03                       ; 0x1ecf $9EBF 05 03                    ;
    ORA      $04                       ; 0x1ed1 $9EC1 05 04                    ;
    BNE      L9ECA                     ; 0x1ed3 $9EC3 D0 05                    ;
    LDA      $F7                       ; 0x1ed5 $9EC5 A5 F7                    ;; Controller 1 Buttons Held
    JMP      bank0_Related_To_LevelUp  ; 0x1ed7 $9EC7 4C 82 9E                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9ECA:                                                                          ;
    LDA      #$10                      ; 0x1eda $9ECA A9 10                    ; A = 10
    STA      $EF                       ; 0x1edc $9ECC 85 EF                    ;; Sound Effects Type 4; Sound Effects Type 4
    LDY      #$00                      ; 0x1ede $9ECE A0 00                    ; Y = 00
    LDX      #$00                      ; 0x1ee0 $9ED0 A2 00                    ; X = 00
L9ED2:                                                                          ;
    LDA      bank0_unknown30,x         ; 0x1ee2 $9ED2 BD 1F 9E                 ;
    STA      L0302,y                   ; 0x1ee5 $9ED5 99 02 03                 ;
    INX                                ; 0x1ee8 $9ED8 E8                       ;
    TXA                                ; 0x1ee9 $9ED9 8A                       ;
    AND      #$03                      ; 0x1eea $9EDA 29 03                    ; keep bits .... ..xx
    TAX                                ; 0x1eec $9EDC AA                       ;
    INY                                ; 0x1eed $9EDD C8                       ;
    CPY      #$10                      ; 0x1eee $9EDE C0 10                    ;
    BCC      L9ED2                     ; 0x1ef0 $9EE0 90 F0                    ;
    LDA      $072C                     ; 0x1ef2 $9EE2 AD 2C 07                 ;; Scrolling Offset Low Byte
    CLC                                ; 0x1ef5 $9EE5 18                       ;
    ADC      #$A8                      ; 0x1ef6 $9EE6 69 A8                    ;
    AND      #$F0                      ; 0x1ef8 $9EE8 29 F0                    ; keep bits xxxx ....
    STA      $01                       ; 0x1efa $9EEA 85 01                    ;
    LDA      $072A                     ; 0x1efc $9EEC AD 2A 07                 ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x1eff $9EEF 69 00                    ;
    AND      #$01                      ; 0x1f01 $9EF1 29 01                    ; keep bits .... ...x
    ASL                                ; 0x1f03 $9EF3 0A                       ;
    ASL                                ; 0x1f04 $9EF4 0A                       ;
    ADC      #$21                      ; 0x1f05 $9EF5 69 21                    ;
    STA      L0302                     ; 0x1f07 $9EF7 8D 02 03                 ;; Used when writing text to screen
    STA      $0306                     ; 0x1f0a $9EFA 8D 06 03                 ;; Letter Written to Screen
    STA      $030A                     ; 0x1f0d $9EFD 8D 0A 03                 ;
    STA      $030E                     ; 0x1f10 $9F00 8D 0E 03                 ;
    LDA      $01                       ; 0x1f13 $9F03 A5 01                    ;
    LSR                                ; 0x1f15 $9F05 4A                       ;
    LSR                                ; 0x1f16 $9F06 4A                       ;
    LSR                                ; 0x1f17 $9F07 4A                       ;
    ADC      #$00                      ; 0x1f18 $9F08 69 00                    ;
    STA      $0303                     ; 0x1f1a $9F0A 8D 03 03                 ;; Letter position when writing to screen
    CLC                                ; 0x1f1d $9F0D 18                       ;
    ADC      #$60                      ; 0x1f1e $9F0E 69 60                    ;
    STA      $0307                     ; 0x1f20 $9F10 8D 07 03                 ;; Text memory offset?
    CLC                                ; 0x1f23 $9F13 18                       ;
    ADC      #$A0                      ; 0x1f24 $9F14 69 A0                    ;
    STA      $030B                     ; 0x1f26 $9F16 8D 0B 03                 ;
    INC      $030A                     ; 0x1f29 $9F19 EE 0A 03                 ;
    CLC                                ; 0x1f2c $9F1C 18                       ;
    ADC      #$A0                      ; 0x1f2d $9F1D 69 A0                    ;
    STA      $030F                     ; 0x1f2f $9F1F 8D 0F 03                 ;
    INC      $030E                     ; 0x1f32 $9F22 EE 0E 03                 ;
    LDA      #$FF                      ; 0x1f35 $9F25 A9 FF                    ; A = FF
    STA      $0312                     ; 0x1f37 $9F27 8D 12 03                 ;
    LDY      $074E                     ; 0x1f3a $9F2A AC 4E 07                 ;
    INY                                ; 0x1f3d $9F2D C8                       ;
    CPY      #$04                      ; 0x1f3e $9F2E C0 04                    ;
    BNE      L9F34                     ; 0x1f40 $9F30 D0 02                    ;
    LDY      #$00                      ; 0x1f42 $9F32 A0 00                    ; Y = 00
L9F34:                                                                          ;
    TYA                                ; 0x1f44 $9F34 98                       ;
    ASL                                ; 0x1f45 $9F35 0A                       ;
    ASL                                ; 0x1f46 $9F36 0A                       ;
    TAY                                ; 0x1f47 $9F37 A8                       ;
    LDA      #$FB                      ; 0x1f48 $9F38 A9 FB                    ; A = FB
    STA      $0305,y                   ; 0x1f4a $9F3A 99 05 03                 ;
L9F3D:                                                                          ;
    LDA      $F7                       ; 0x1f4d $9F3D A5 F7                    ;; Controller 1 Buttons Held
    AND      #$10                      ; 0x1f4f $9F3F 29 10                    ; keep bits ...x ....
    BIT      $0744                     ; 0x1f51 $9F41 2C 44 07                 ;; Controller 1 Input; Controller 1 Buttons Held
    BNE      L9FBC                     ; 0x1f54 $9F44 D0 76                    ;
    AND      #$10                      ; 0x1f56 $9F46 29 10                    ; keep bits ...x ....
    BEQ      L9FBC                     ; 0x1f58 $9F48 F0 72                    ;
;LEVEL UP MENU                                                                 ;
;about this point is where START is pressed                                    ;
    LDX      $074E                     ; 0x1f5a $9F4A AE 4E 07                 ;
    CPX      #$03                      ; 0x1f5d $9F4D E0 03                    ;
    BEQ      L9FBD                     ; 0x1f5f $9F4F F0 6C                    ;
    LDA      #$10                      ; 0x1f61 $9F51 A9 10                    ; A = 10
    STA      $EB                       ; 0x1f63 $9F53 85 EB                    ; Music Channel
    DEX                                ; 0x1f65 $9F55 CA                       ;
    BMI      L9F5B_SubtractExp_LevelUp ; 0x1f66 $9F56 30 03                    ;
    JSR      LCB18_fill_hp_or_mp_to_full__provide_x_register__maybe; 0x1f68 $9F58 20 18 CB;
L9F5B_SubtractExp_LevelUp:                                                      ;
    INX                                ; 0x1f6b $9F5B E8                       ;
    TXA                                ; 0x1f6c $9F5C 8A                       ;
    ASL                                ; 0x1f6d $9F5D 0A                       ;
    ASL                                ; 0x1f6e $9F5E 0A                       ;
    ASL                                ; 0x1f6f $9F5F 0A                       ;
    ADC      $0777,x                   ; 0x1f70 $9F60 7D 77 07                 ; AML Power
    TAY                                ; 0x1f73 $9F63 A8                       ;
    LDA      $0776                     ; 0x1f74 $9F64 AD 76 07                 ; First Digit of Experience
    SEC                                ; 0x1f77 $9F67 38                       ;
    SBC      L9670,y                   ; 0x1f78 $9F68 F9 70 96                 ;
    STA      $0776                     ; 0x1f7b $9F6B 8D 76 07                 ;; Experience x1; Current Experience (low byte)
    LDA      $0775                     ; 0x1f7e $9F6E AD 75 07                 ;; Experience x256; Current Experience (high byte)
    SBC      L9658,y                   ; 0x1f81 $9F71 F9 58 96                 ;
    STA      $0775                     ; 0x1f84 $9F74 8D 75 07                 ;; Experience x256; Current Experience (high byte)
    LDX      $074E                     ; 0x1f87 $9F77 AE 4E 07                 ;
    LDA      $0777,x                   ; 0x1f8a $9F7A BD 77 07                 ; AML Power
    CMP      #$08                      ; 0x1f8d $9F7D C9 08                    ;
    BCS      L9FC3                     ; 0x1f8f $9F7F B0 42                    ;branch to give 1-up
    LDX      $074E                     ; 0x1f91 $9F81 AE 4E 07                 ;
    INC      $0777,x                   ; 0x1f94 $9F84 FE 77 07                 ; AML Power
L9F87:                                                                          ;
    LDA      #$01                      ; 0x1f97 $9F87 A9 01                    ; A = 01
    STA      $02                       ; 0x1f99 $9F89 85 02                    ;
    STA      $03                       ; 0x1f9b $9F8B 85 03                    ;
    STA      $04                       ; 0x1f9d $9F8D 85 04                    ;
    JSR      LA08B                     ; 0x1f9f $9F8F 20 8B A0                 ;
    LDX      #$02                      ; 0x1fa2 $9F92 A2 02                    ; X = 02
L9F94:                                                                          ;
    TXA                                ; 0x1fa4 $9F94 8A                       ;
    ASL                                ; 0x1fa5 $9F95 0A                       ;
    TAY                                ; 0x1fa6 $9F96 A8                       ;
    LDA      bank0_unknown_pointer_table30,y; 0x1fa7 $9F97 B9 4E 9D                ;
    STA      $00                       ; 0x1faa $9F9A 85 00                    ;
    LDA      bank0_unknown_pointer_table30+$01,y; 0x1fac $9F9C B9 4F 9D            ;
    STA      $01                       ; 0x1faf $9F9F 85 01                    ;
    LDA      $0777,x                   ; 0x1fb1 $9FA1 BD 77 07                 ; AML Power
    STA      $02                       ; 0x1fb4 $9FA4 85 02                    ;
    LDY      #$07                      ; 0x1fb6 $9FA6 A0 07                    ; Y = 07
L9FA8:                                                                          ;
    LDA      #$F4                      ; 0x1fb8 $9FA8 A9 F4                    ; A = F4
    CPY      $02                       ; 0x1fba $9FAA C4 02                    ;
    BCS      L9FB1                     ; 0x1fbc $9FAC B0 03                    ;
    LDA      L9E23,x                   ; 0x1fbe $9FAE BD 23 9E                 ;
L9FB1:                                                                          ;
    STA      ($00),y                   ; 0x1fc1 $9FB1 91 00                    ;
    DEY                                ; 0x1fc3 $9FB3 88                       ;
    BPL      L9FA8                     ; 0x1fc4 $9FB4 10 F2                    ;
    DEX                                ; 0x1fc6 $9FB6 CA                       ;
    BPL      L9F94                     ; 0x1fc7 $9FB7 10 DB                    ;
L9FB9:                                                                          ;
    INC      $0524                     ; 0x1fc9 $9FB9 EE 24 05                 ;;menu control	(and) ; OVERWORLD: 	set to 1 to pause (will change to 2) , set to 3 to unpause (will change to 0); Routine Index
L9FBC:                                                                          ;
    RTS                                ; 0x1fcc $9FBC 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9FBD:                                                                          ;
    JSR      LA088                     ; 0x1fcd $9FBD 20 88 A0                 ;
    JMP      L9FB9                     ; 0x1fd0 $9FC0 4C B9 9F                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9FC3:                                                                          ;
    INC      $0700                     ; 0x1fd3 $9FC3 EE 00 07                 ;; Lives; Current number of lives
    BPL      L9F87                     ; 0x1fd6 $9FC6 10 BF                    ;
    DEC      $0700                     ; 0x1fd8 $9FC8 CE 00 07                 ;; Lives; Current number of lives
    JMP      L9F87                     ; 0x1fdb $9FCB 4C 87 9F                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9FCE:                                                                          ;
    LDX      #$02                      ; 0x1fde $9FCE A2 02                    ; X = 02
L9FD0:                                                                          ;
    TXA                                ; 0x1fe0 $9FD0 8A                       ;
    ASL                                ; 0x1fe1 $9FD1 0A                       ;
    TAY                                ; 0x1fe2 $9FD2 A8                       ;
    LDA      bank0_pointer_table_C,y   ; 0x1fe3 $9FD3 B9 26 9E                 ;
    STA      $00                       ; 0x1fe6 $9FD6 85 00                    ;
    LDA      bank0_pointer_table_C+$01,y; 0x1fe8 $9FD8 B9 27 9E                 ;
    STA      $01                       ; 0x1feb $9FDB 85 01                    ;
    LDA      bank0_pointer_table_C+$01+$05,y; 0x1fed $9FDD B9 2C 9E                ;
    STA      $02                       ; 0x1ff0 $9FE0 85 02                    ;
    LDA      bank0_pointer_table_C+$01+$05+$01,y; 0x1ff2 $9FE2 B9 2D 9E            ;
    STA      $03                       ; 0x1ff5 $9FE5 85 03                    ;
    TXA                                ; 0x1ff7 $9FE7 8A                       ;
    PHA                                ; 0x1ff8 $9FE8 48                       ;
    ASL                                ; 0x1ff9 $9FE9 0A                       ;
    ASL                                ; 0x1ffa $9FEA 0A                       ;
    ASL                                ; 0x1ffb $9FEB 0A                       ;
    ADC      $0777,x                   ; 0x1ffc $9FEC 7D 77 07                 ; AML Power
    PHA                                ; 0x1fff $9FEF 48                       ;
    TAY                                ; 0x2000 $9FF0 A8                       ;
    LDA      $0776                     ; 0x2001 $9FF1 AD 76 07                 ;; Experience x1; Current Experience (low byte)
    SEC                                ; 0x2004 $9FF4 38                       ;
    SBC      L9670,y                   ; 0x2005 $9FF5 F9 70 96                 ;
    LDA      $0775                     ; 0x2008 $9FF8 AD 75 07                 ;; Experience x256; Current Experience (high byte)
    SBC      L9658,y                   ; 0x200b $9FFB F9 58 96                 ;
    BCC      LA012                     ; 0x200e $9FFE 90 12                    ;
LA000:                                                                          ;
    STX      $074E                     ; 0x2010 $A000 8E 4E 07                 ;
    LDY      #$0D                      ; 0x2013 $A003 A0 0D                    ; Y = 0D (Level-Up Pane width)
LA005:                                                                          ;
    LDA      LevelUp_Pane__WILL,y      ; 0x2015 $A005 B9 32 9D                 ;
    STA      ($00),y                   ; 0x2018 $A008 91 00                    ;
    LDA      LevelUp_Pane__GO_UP,y     ; 0x201a $A00A B9 40 9D                 ;
    STA      ($02),y                   ; 0x201d $A00D 91 02                    ;
    DEY                                ; 0x201f $A00F 88                       ;
    BPL      LA005                     ; 0x2020 $A010 10 F3                    ;
LA012:                                                                          ;
    PLA                                ; 0x2022 $A012 68                       ;
    TAX                                ; 0x2023 $A013 AA                       ;
    LDY      #$01                      ; 0x2024 $A014 A0 01                    ; Y = 01
    LDA      L9E61,x                   ; 0x2026 $A016 BD 61 9E                 ;
    STA      ($00),y                   ; 0x2029 $A019 91 00                    ;
    INY                                ; 0x202b $A01B C8                       ;
    LDA      L9E49,x                   ; 0x202c $A01C BD 49 9E                 ;
    STA      ($00),y                   ; 0x202f $A01F 91 00                    ;
    INY                                ; 0x2031 $A021 C8                       ;
    LDA      bank0_pointer_table_C+$01+$05+$01+$04,x; 0x2032 $A022 BD 31 9E        ;
    STA      ($00),y                   ; 0x2035 $A025 91 00                    ;
    PLA                                ; 0x2037 $A027 68                       ;
    TAX                                ; 0x2038 $A028 AA                       ;
    DEX                                ; 0x2039 $A029 CA                       ;
    BPL      L9FD0                     ; 0x203a $A02A 10 A4                    ;
    LDX      #$02                      ; 0x203c $A02C A2 02                    ; X = 02
LA02E:                                                                          ;
;LEVEL UP MENU:                                                                ;
;draw the number of hearts/magic/swords that we have (representing level)      ;
    TXA                                ; 0x203e $A02E 8A                       ;
    ASL                                ; 0x203f $A02F 0A                       ;
    TAY                                ; 0x2040 $A030 A8                       ;
    LDA      bank0_unknown_pointer_table30,y; 0x2041 $A031 B9 4E 9D                ;
    STA      $00                       ; 0x2044 $A034 85 00                    ;
    LDA      bank0_unknown_pointer_table30+$01,y; 0x2046 $A036 B9 4F 9D            ;
    STA      $01                       ; 0x2049 $A039 85 01                    ;
    LDA      $0777,x                   ; 0x204b $A03B BD 77 07                 ; AML Power
    STA      $02                       ; 0x204e $A03E 85 02                    ;
    LDY      #$07                      ; 0x2050 $A040 A0 07                    ; Y = 07
LA042:                                                                          ;
    LDA      #$F4                      ; 0x2052 $A042 A9 F4                    ; A = F4 (F4 = Space)
    CPY      $02                       ; 0x2054 $A044 C4 02                    ;
    BCS      LA04B                     ; 0x2056 $A046 B0 03                    ;
    LDA      L9E23,x                   ; 0x2058 $A048 BD 23 9E                 ;
LA04B:                                                                          ;
    STA      ($00),y                   ; 0x205b $A04B 91 00                    ;
    DEY                                ; 0x205d $A04D 88                       ;
    BPL      LA042                     ; 0x205e $A04E 10 F2                    ;
    DEX                                ; 0x2060 $A050 CA                       ;
    BPL      LA02E                     ; 0x2061 $A051 10 DB                    ;
    INC      $0524                     ; 0x2063 $A053 EE 24 05                 ;;menu control	(and) ; OVERWORLD: 	set to 1 to pause (will change to 2) , set to 3 to unpause (will change to 0); Routine Index
    RTS                                ; 0x2066 $A056 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
update_next_level_exp:                                                          ;
    LDA      #$FF                      ; 0x2067 $A057 A9 FF                    ; A = FF
    STA      $0770                     ; 0x2069 $A059 8D 70 07                 ; Exp. needed for Next Level (high byte)
    STA      $0771                     ; 0x206c $A05C 8D 71 07                 ; Exp. needed for Next Level (low byte)
    LDX      #$02                      ; 0x206f $A05F A2 02                    ; X = 02
LA061:                                                                          ;
    TXA                                ; 0x2071 $A061 8A                       ;
    ASL                                ; 0x2072 $A062 0A                       ;
    ASL                                ; 0x2073 $A063 0A                       ;
    ASL                                ; 0x2074 $A064 0A                       ;
    ADC      $0777,x                   ; 0x2075 $A065 7D 77 07                 ; AML Power
    TAY                                ; 0x2078 $A068 A8                       ;
    LDA      L9670,y                   ; 0x2079 $A069 B9 70 96                 ;
    SEC                                ; 0x207c $A06C 38                       ;
    SBC      $0771                     ; 0x207d $A06D ED 71 07                 ; Exp. needed for Next Level (low byte)
    LDA      L9658,y                   ; 0x2080 $A070 B9 58 96                 ;
    SBC      $0770                     ; 0x2083 $A073 ED 70 07                 ; Exp. needed for Next Level (high byte)
    BCS      LA084                     ; 0x2086 $A076 B0 0C                    ;
    LDA      L9658,y                   ; 0x2088 $A078 B9 58 96                 ;
    STA      $0770                     ; 0x208b $A07B 8D 70 07                 ; Exp. needed for Next Level (high byte)
LA07E:                                                                          ;
    LDA      L9670,y                   ; 0x208e $A07E B9 70 96                 ;
    STA      $0771                     ; 0x2091 $A081 8D 71 07                 ; Exp. needed for Next Level (low byte)
LA084:                                                                          ;
    DEX                                ; 0x2094 $A084 CA                       ;
    BPL      LA061                     ; 0x2095 $A085 10 DA                    ;
    RTS                                ; 0x2097 $A087 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA088:                                                                          ;
    JSR      LA0CE                     ; 0x2098 $A088 20 CE A0                 ;
LA08B:                                                                          ;
    LDA      $02                       ; 0x209b $A08B A5 02                    ;
    ORA      $03                       ; 0x209d $A08D 05 03                    ;
    ORA      $04                       ; 0x209f $A08F 05 04                    ;
    BNE      LA099                     ; 0x20a1 $A091 D0 06                    ;
    INC      $02                       ; 0x20a3 $A093 E6 02                    ;
    INC      $03                       ; 0x20a5 $A095 E6 03                    ;
    INC      $04                       ; 0x20a7 $A097 E6 04                    ;
LA099:                                                                          ;
    LDA      #$FF                      ; 0x20a9 $A099 A9 FF                    ; A = FF
    STA      $0770                     ; 0x20ab $A09B 8D 70 07                 ;; Exp. needed for Next Level (high byte)
    STA      $0771                     ; 0x20ae $A09E 8D 71 07                 ;; Exp. needed for Next Level (low byte)
    LDX      #$02                      ; 0x20b1 $A0A1 A2 02                    ; X = 02
LA0A3:                                                                          ;
    LDA      $02,x                     ; 0x20b3 $A0A3 B5 02                    ;
    BEQ      LA0CA                     ; 0x20b5 $A0A5 F0 23                    ;
    TXA                                ; 0x20b7 $A0A7 8A                       ;
    ASL                                ; 0x20b8 $A0A8 0A                       ;
    ASL                                ; 0x20b9 $A0A9 0A                       ;
    ASL                                ; 0x20ba $A0AA 0A                       ;
    ADC      $0777,x                   ; 0x20bb $A0AB 7D 77 07                 ; AML Power
    TAY                                ; 0x20be $A0AE A8                       ;
    LDA      L9670,y                   ; 0x20bf $A0AF B9 70 96                 ;
    SEC                                ; 0x20c2 $A0B2 38                       ;
    SBC      $0771                     ; 0x20c3 $A0B3 ED 71 07                 ;; Exp. needed for Next Level (low byte)
    LDA      L9658,y                   ; 0x20c6 $A0B6 B9 58 96                 ;
    SBC      $0770                     ; 0x20c9 $A0B9 ED 70 07                 ;; Exp. needed for Next Level (high byte)
    BCS      LA0CA                     ; 0x20cc $A0BC B0 0C                    ;
    LDA      L9658,y                   ; 0x20ce $A0BE B9 58 96                 ;
    STA      $0770                     ; 0x20d1 $A0C1 8D 70 07                 ;; Exp. needed for Next Level (high byte)
    LDA      L9670,y                   ; 0x20d4 $A0C4 B9 70 96                 ;
    STA      $0771                     ; 0x20d7 $A0C7 8D 71 07                 ;; Exp. needed for Next Level (low byte)
LA0CA:                                                                          ;
    DEX                                ; 0x20da $A0CA CA                       ;
    BPL      LA0A3                     ; 0x20db $A0CB 10 D6                    ;
    RTS                                ; 0x20dd $A0CD 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA0CE:                                                                          ;
    LDX      #$02                      ; 0x20de $A0CE A2 02                    ; X = 02
LA0D0:                                                                          ;
    LDA      #$00                      ; 0x20e0 $A0D0 A9 00                    ; A = 00
    STA      $02,x                     ; 0x20e2 $A0D2 95 02                    ;
    TXA                                ; 0x20e4 $A0D4 8A                       ;
    ASL                                ; 0x20e5 $A0D5 0A                       ;
    ASL                                ; 0x20e6 $A0D6 0A                       ;
    ASL                                ; 0x20e7 $A0D7 0A                       ;
    ADC      $0777,x                   ; 0x20e8 $A0D8 7D 77 07                 ;
    TAY                                ; 0x20eb $A0DB A8                       ;
    LDA      $0771                     ; 0x20ec $A0DC AD 71 07                 ;; Exp. needed for Next Level (low byte)
    SEC                                ; 0x20ef $A0DF 38                       ;
    SBC      L9670,y                   ; 0x20f0 $A0E0 F9 70 96                 ;
    LDA      $0770                     ; 0x20f3 $A0E3 AD 70 07                 ;; Exp. needed for Next Level (high byte)
    SBC      L9658,y                   ; 0x20f6 $A0E6 F9 58 96                 ;
    BCS      LA0ED                     ; 0x20f9 $A0E9 B0 02                    ;
    INC      $02,x                     ; 0x20fb $A0EB F6 02                    ;
LA0ED:                                                                          ;
    DEX                                ; 0x20fd $A0ED CA                       ;
    BPL      LA0D0                     ; 0x20fe $A0EE 10 E0                    ;
LA0F0:                                                                          ;
    RTS                                ; 0x2100 $A0F0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA0F1:                                                                          ;
    DEC      $0487                     ; 0x2101 $A0F1 CE 87 04                 ;
    LDA      $07FB                     ; 0x2104 $A0F4 AD FB 07                 ;
    CMP      #$10                      ; 0x2107 $A0F7 C9 10                    ;
    BEQ      LA0FE                     ; 0x2109 $A0F9 F0 03                    ;
LA0FC     = * + $0001                                                          ;
    JMP      LA325                     ; 0x210b $A0FB 4C 25 A3                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA0FE:                                                                          ;
    LDA      $0301                     ; 0x210e $A0FE AD 01 03                 ;;ppu number of bytes following (counts both instructions and tile data values); Used when writing text to screen
    BNE      LA0F0                     ; 0x2111 $A101 D0 ED                    ;
    LDA      $0525                     ; 0x2113 $A103 AD 25 05                 ;; Routine Delay
    CMP      #$03                      ; 0x2116 $A106 C9 03                    ;
    BEQ      LA140                     ; 0x2118 $A108 F0 36                    ;
    PHA                                ; 0x211a $A10A 48                       ;
    LDY      $074E                     ; 0x211b $A10B AC 4E 07                 ;
    LDA      bank0_unknown34,y         ; 0x211e $A10E B9 88 A6                 ;
    STA      $0525                     ; 0x2121 $A111 8D 25 05                 ;; Routine Delay
    JSR      bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__LEVELUP; 0x2124 $A114 20 47 A6;
    LDA      $0487                     ; 0x2127 $A117 AD 87 04                 ;
    AND      #$0F                      ; 0x212a $A11A 29 0F                    ; keep bits .... xxxx
    CMP      #$08                      ; 0x212c $A11C C9 08                    ;
    BCC      LA130                     ; 0x212e $A11E 90 10                    ;
    LDY      #$07                      ; 0x2130 $A120 A0 07                    ; Y = 07
    LDA      $074E                     ; 0x2132 $A122 AD 4E 07                 ;
    LSR                                ; 0x2135 $A125 4A                       ;
    LDA      #$F4                      ; 0x2136 $A126 A9 F4                    ; A = F4
    BCS      LA138                     ; 0x2138 $A128 B0 0E                    ;
LA12A:                                                                          ;
    STA      $0543,y                   ; 0x213a $A12A 99 43 05                 ; row of ASL tile disappear (blinking)
    DEY                                ; 0x213d $A12D 88                       ;
    BPL      LA12A                     ; 0x213e $A12E 10 FA                    ; loop for 8 tiles
LA130:                                                                          ;
    JSR      part_of__bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__SPELL; 0x2140 $A130 20 5F A3;
    PLA                                ; 0x2143 $A133 68                       ;
    STA      $0525                     ; 0x2144 $A134 8D 25 05                 ;; Routine Delay
LA137:                                                                          ;
    RTS                                ; 0x2147 $A137 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA138:                                                                          ;
    STA      $0551,y                   ; 0x2148 $A138 99 51 05                 ;
    DEY                                ; 0x214b $A13B 88                       ;
    BPL      LA138                     ; 0x214c $A13C 10 FA                    ;
    BMI      LA130                     ; 0x214e $A13E 30 F0                    ;
LA140:                                                                          ;
    LDA      $0487                     ; 0x2150 $A140 AD 87 04                 ;
    BNE      LA137                     ; 0x2153 $A143 D0 F2                    ;
    JMP      LA325                     ; 0x2155 $A145 4C 25 A3                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA148:                                                                          ;
    LDA      #$00                      ; 0x2158 $A148 A9 00                    ; A = 00
    STA      $074A                     ; 0x215a $A14A 8D 4A 07                 ;
    STA      $0362                     ; 0x215d $A14D 8D 62 03                 ;; PPU Macro Offset
    LDA      $0793                     ; 0x2160 $A150 AD 93 07                 ; Current number of keys
    CLC                                ; 0x2163 $A153 18                       ;
    ADC      #$D0                      ; 0x2164 $A154 69 D0                    ;
    STA      $7881                     ; 0x2166 $A156 8D 81 78                 ;
    LDA      $0794                     ; 0x2169 $A159 AD 94 07                 ; Number of Crystals left
    CLC                                ; 0x216c $A15C 18                       ;
    ADC      #$D0                      ; 0x216d $A15D 69 D0                    ;
    STA      $788F                     ; 0x216f $A15F 8D 8F 78                 ;
    LDA      $0700                     ; 0x2172 $A162 AD 00 07                 ; Current number of lives
    CLC                                ; 0x2175 $A165 18                       ;
    ADC      #$CF                      ; 0x2176 $A166 69 CF                    ;
    STA      $7803                     ; 0x2178 $A168 8D 03 78                 ;
    LDA      $0778                     ; 0x217b $A16B AD 78 07                 ; Magic Level
    CLC                                ; 0x217e $A16E 18                       ;
    ADC      #$37                      ; 0x217f $A16F 69 37                    ;
    TAY                                ; 0x2181 $A171 A8                       ;
    LDX      #$62                      ; 0x2182 $A172 A2 62                    ; X = 62
LA174:                                                                          ;
    TYA                                ; 0x2184 $A174 98                       ;
    PHA                                ; 0x2185 $A175 48                       ;
    LDA      #$00                      ; 0x2186 $A176 A9 00                    ; A = 00
    STA      $00                       ; 0x2188 $A178 85 00                    ;
    LDA      Table_for_Magic_Needed_for_Spells,y; 0x218a $A17A B9 7B 8D            ; Magic Needed for Spells Table
    LSR                                ; 0x218d $A17D 4A                       ; Value divided by 2
    JSR      Experience_Convertion_and_Display_Routine; 0x218e $A17E 20 A4 A5      ;
    STA      $781A,x                   ; 0x2191 $A181 9D 1A 78                 ;
    TYA                                ; 0x2194 $A184 98                       ;
    STA      $7819,x                   ; 0x2195 $A185 9D 19 78                 ;
    LDA      $00                       ; 0x2198 $A188 A5 00                    ;
    STA      $7818,x                   ; 0x219a $A18A 9D 18 78                 ;
    PLA                                ; 0x219d $A18D 68                       ;
    SEC                                ; 0x219e $A18E 38                       ;
    SBC      #$08                      ; 0x219f $A18F E9 08                    ;
    TAY                                ; 0x21a1 $A191 A8                       ;
    TXA                                ; 0x21a2 $A192 8A                       ;
    SEC                                ; 0x21a3 $A193 38                       ;
    SBC      #$0E                      ; 0x21a4 $A194 E9 0E                    ;
    TAX                                ; 0x21a6 $A196 AA                       ;
    BPL      LA174                     ; 0x21a7 $A197 10 DB                    ;
LA199:                                                                          ;
    JMP      LA267                     ; 0x21a9 $A199 4C 67 A2                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_Manual_Save_Game_Routine_UP_AND_A:                                        ;
    JSR      LA256                     ; 0x21ac $A19C 20 56 A2                 ;
    LDA      $F8                       ; 0x21af $A19F A5 F8                    ; Controller 2 buttons held
    CMP      #$88                      ; 0x21b1 $A1A1 C9 88                    ; 88 = 1000 1000 (Buttons A and Up)
    BNE      LA1DC                     ; 0x21b3 $A1A3 D0 37                    ;
LA1A5:                                                                          ;
    JSR      bank7_Remove_All_Sprites  ; 0x21b5 $A1A5 20 4C D2                 ;
    JSR      bank7_Mute_music_when_loading_between_areas; 0x21b8 $A1A8 20 3D D0    ;
    LDA      #$02                      ; 0x21bb $A1AB A9 02                    ; A = 02
    STA      $076C                     ; 0x21bd $A1AD 8D 6C 07                 ;; (00=restart from zelda's castle with 3 lives,  01=no routine, 02=die, 03=wake up zelda, 04=roll credits, 06=show the lives then restart the scene)
    STA      $076D                     ; 0x21c0 $A1B0 8D 6D 07                 ;
    LDA      #$05                      ; 0x21c3 $A1B3 A9 05                    ; A = 05
    STA      $0736                     ; 0x21c5 $A1B5 8D 36 07                 ;; Game Mode ; screen intro type
    LDA      #$00                      ; 0x21c8 $A1B8 A9 00                    ; A = 00
    STA      $074C                     ; 0x21ca $A1BA 8D 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    STA      $0524                     ; 0x21cd $A1BD 8D 24 05                 ;;menu control	(and) ; OVERWORLD: 	set to 1 to pause (will change to 2) , set to 3 to unpause (will change to 0); Routine Index
    STA      $0525                     ; 0x21d0 $A1C0 8D 25 05                 ;; Routine Delay
    STA      $0488                     ; 0x21d3 $A1C3 8D 88 04                 ;
    STA      $0759                     ; 0x21d6 $A1C6 8D 59 07                 ;; if not 0, cause fairy spawn at next encounter (??)
    STA      $0775                     ; 0x21d9 $A1C9 8D 75 07                 ; Experience High Byte
    STA      $0776                     ; 0x21dc $A1CC 8D 76 07                 ; Experience Low Byte
    LDA      #$06                      ; 0x21df $A1CF A9 06                    ; A = 06
    STA      $0768                     ; 0x21e1 $A1D1 8D 68 07                 ;;makes weird ppu effect
    LDX      #$01                      ; 0x21e4 $A1D4 A2 01                    ; X = 01
LA1D6:                                                                          ;
    JSR      LCB18_fill_hp_or_mp_to_full__provide_x_register__maybe; 0x21e6 $A1D6 20 18 CB;
    DEX                                ; 0x21e9 $A1D9 CA                       ;
    BPL      LA1D6                     ; 0x21ea $A1DA 10 FA                    ;
LA1DC:                                                                          ;
    RTS                                ; 0x21ec $A1DC 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_Pause_Pane_Pointer_5__Table_1DE4:                                         ;
    LDA      $F8                       ; 0x21ed $A1DD A5 F8                    ; Controller 2 buttons held
    CMP      #$88                      ; 0x21ef $A1DF C9 88                    ; 88 = 1000 1000 (Buttons A and Up)
    BEQ      LA1A5                     ; 0x21f1 $A1E1 F0 C2                    ;
    LDY      #$07                      ; 0x21f3 $A1E3 A0 07                    ; Y = 07
    LDA      #$00                      ; 0x21f5 $A1E5 A9 00                    ; A = 00
LA1E7:                                                                          ;
    ORA      $077B,y                   ; 0x21f7 $A1E7 19 7B 07                 ;
    DEY                                ; 0x21fa $A1EA 88                       ;
    BPL      LA1E7                     ; 0x21fb $A1EB 10 FA                    ;
    CMP      #$00                      ; 0x21fd $A1ED C9 00                    ;
    BEQ      LA256                     ; 0x21ff $A1EF F0 65                    ;
    JSR      bank0_unknown29           ; 0x2201 $A1F1 20 F6 9D                 ;
    BCC      LA256                     ; 0x2204 $A1F4 90 60                    ;
    AND      #$08                      ; 0x2206 $A1F6 29 08                    ; keep bits .... x...
    LDY      $0749                     ; 0x2208 $A1F8 AC 49 07                 ;increment magic selector position
LA1FB:                                                                          ;
    INY                                ; 0x220b $A1FB C8                       ;
    BIT      $00                       ; 0x220c $A1FC 24 00                    ;
    BEQ      LA206                     ; 0x220e $A1FE F0 06                    ;limit checks
    DEY                                ; 0x2210 $A200 88                       ;
    DEY                                ; 0x2211 $A201 88                       ;
    BPL      LA206                     ; 0x2212 $A202 10 02                    ;MAX SIZE OF THE MENU (next 2 lines:)
    LDY      #$07                      ; 0x2214 $A204 A0 07                    ; Y = 07
LA206:                                                                          ;
    CPY      #$08                      ; 0x2216 $A206 C0 08                    ;
    BCC      LA20C                     ; 0x2218 $A208 90 02                    ;
    LDY      #$00                      ; 0x221a $A20A A0 00                    ; Y = 00	
LA20C:                                                                          ;
    LDX      $077B,y                   ; 0x221c $A20C BE 7B 07                 ; Magic Learned or not	;check if have magic
    BEQ      LA1FB                     ; 0x221f $A20F F0 EA                    ;
    STY      $0749                     ; 0x2221 $A211 8C 49 07                 ; Current position of Magic selector
    LDA      #$10                      ; 0x2224 $A214 A9 10                    ; A = 10 (sound for moving cursor in Pause Pane)
    STA      $EF                       ; 0x2226 $A216 85 EF                    ; Sound Effects Type 4
    LDA      $072C                     ; 0x2228 $A218 AD 2C 07                 ;; Scrolling Offset Low Byte
    CLC                                ; 0x222b $A21B 18                       ;
    ADC      #$78                      ; 0x222c $A21C 69 78                    ;
    AND      #$F0                      ; 0x222e $A21E 29 F0                    ; keep bits xxxx ....
    STA      $01                       ; 0x2230 $A220 85 01                    ;
    LDA      $072A                     ; 0x2232 $A222 AD 2A 07                 ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x2235 $A225 69 00                    ;
    AND      #$01                      ; 0x2237 $A227 29 01                    ; keep bits .... ...x
    ASL                                ; 0x2239 $A229 0A                       ;
    ASL                                ; 0x223a $A22A 0A                       ;
    ADC      #$20                      ; 0x223b $A22B 69 20                    ;
    STA      L0302                     ; 0x223d $A22D 8D 02 03                 ;; Used when writing text to screen
    LDA      $01                       ; 0x2240 $A230 A5 01                    ;
    LSR                                ; 0x2242 $A232 4A                       ;
    LSR                                ; 0x2243 $A233 4A                       ;
    LSR                                ; 0x2244 $A234 4A                       ;
    ADC      #$E1                      ; 0x2245 $A235 69 E1                    ;building the ppu macro which goes vertical
    STA      $0303                     ; 0x2247 $A237 8D 03 03                 ;; Letter position when writing to screen
    LDA      #$8F                      ; 0x224a $A23A A9 8F                    ; A = 8F
    STA      $0304                     ; 0x224c $A23C 8D 04 03                 ;; Text memory offset?
    LDY      #$0E                      ; 0x224f $A23F A0 0E                    ; Y = 0E
    LDA      #$F4                      ; 0x2251 $A241 A9 F4                    ; A = F4 (F4 = nothing tile)
LA243:                                                                          ;
    STA      $0305,y                   ; 0x2253 $A243 99 05 03                 ;
    DEY                                ; 0x2256 $A246 88                       ;
    BPL      LA243                     ; 0x2257 $A247 10 FA                    ;
    STY      $0314                     ; 0x2259 $A249 8C 14 03                 ;end Ppu with FF
    LDA      $0749                     ; 0x225c $A24C AD 49 07                 ; Current position of Magic selector	;PICK POSITION OF MAGIC BAG TILE
    ASL                                ; 0x225f $A24F 0A                       ; *2
    TAY                                ; 0x2260 $A250 A8                       ;
    LDA      #$FA                      ; 0x2261 $A251 A9 FA                    ; A = FA (FA = magic bag tile)
    STA      $0305,y                   ; 0x2263 $A253 99 05 03                 ;
LA256:                                                                          ;
    LDA      $0744                     ; 0x2266 $A256 AD 44 07                 ; Controller 1 Buttons Held
    AND      #$10                      ; 0x2269 $A259 29 10                    ; keep bits ...x .... (Start Button)
    STA      $00                       ; 0x226b $A25B 85 00                    ;
    LDA      $F7                       ; 0x226d $A25D A5 F7                    ; Controller 1 Buttons Held				;occurs in overworld and sidescroll:spell menu open
    AND      #$10                      ; 0x226f $A25F 29 10                    ; keep bits ...x .... (Start Button)
    BEQ      LA26A                     ; 0x2271 $A261 F0 07                    ;
    CMP      $00                       ; 0x2273 $A263 C5 00                    ;
    BEQ      LA26A                     ; 0x2275 $A265 F0 03                    ;
LA267:                                                                          ;
    INC      $0524                     ; 0x2277 $A267 EE 24 05                 ; Routine Index
LA26A:                                                                          ;
    RTS                                ; 0x227a $A26A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA26B:                                                                          ;
    LDA      $072C                     ; 0x227b $A26B AD 2C 07                 ; Scrolling Offset Low Byte
    CLC                                ; 0x227e $A26E 18                       ;
    ADC      #$78                      ; 0x227f $A26F 69 78                    ;
    TAX                                ; 0x2281 $A271 AA                       ;
    LDA      $072A                     ; 0x2282 $A272 AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0x2285 $A275 69 00                    ;
    JSR      bank0_unknown24           ; 0x2287 $A277 20 A8 9A                 ;
    TXA                                ; 0x228a $A27A 8A                       ;
    AND      #$E0                      ; 0x228b $A27B 29 E0                    ; keep bits xxx. ....
    LSR                                ; 0x228d $A27D 4A                       ;
    LSR                                ; 0x228e $A27E 4A                       ;
    LSR                                ; 0x228f $A27F 4A                       ;
    LSR                                ; 0x2290 $A280 4A                       ;
    TAY                                ; 0x2291 $A281 A8                       ;
    LDX      #$00                      ; 0x2292 $A282 A2 00                    ; X = 00
    LDA      #$04                      ; 0x2294 $A284 A9 04                    ; A = 04
    STA      $00                       ; 0x2296 $A286 85 00                    ;
LA288:                                                                          ;
    LDA      #$00                      ; 0x2298 $A288 A9 00                    ; A = 00
    STA      $01                       ; 0x229a $A28A 85 01                    ;
LA28C:                                                                          ;
    LDA      #$0C                      ; 0x229c $A28C A9 0C                    ; A = 0C
    STA      $02                       ; 0x229e $A28E 85 02                    ;
LA290:                                                                          ;
    JSR      LA2D4                     ; 0x22a0 $A290 20 D4 A2                 ;
    TYA                                ; 0x22a3 $A293 98                       ;
    CLC                                ; 0x22a4 $A294 18                       ;
    ADC      #$10                      ; 0x22a5 $A295 69 10                    ;
    TAY                                ; 0x22a7 $A297 A8                       ;
    ASL                                ; 0x22a8 $A298 0A                       ;
    ASL                                ; 0x22a9 $A299 0A                       ;
    ASL                                ; 0x22aa $A29A 0A                       ;
    ASL                                ; 0x22ab $A29B 0A                       ;
    BCS      LA2A2                     ; 0x22ac $A29C B0 04                    ;
    INX                                ; 0x22ae $A29E E8                       ;
    INX                                ; 0x22af $A29F E8                       ;
    INX                                ; 0x22b0 $A2A0 E8                       ;
    INX                                ; 0x22b1 $A2A1 E8                       ;
LA2A2:                                                                          ;
    DEC      $02                       ; 0x22b2 $A2A2 C6 02                    ;
    BNE      LA290                     ; 0x22b4 $A2A4 D0 EA                    ;
    TYA                                ; 0x22b6 $A2A6 98                       ;
    SEC                                ; 0x22b7 $A2A7 38                       ;
    SBC      #$BF                      ; 0x22b8 $A2A8 E9 BF                    ;
    TAY                                ; 0x22ba $A2AA A8                       ;
    AND      #$0F                      ; 0x22bb $A2AB 29 0F                    ; keep bits .... xxxx
    BNE      LA2BF                     ; 0x22bd $A2AD D0 10                    ;
    LDA      L000E                     ; 0x22bf $A2AF A5 0E                    ;
    CLC                                ; 0x22c1 $A2B1 18                       ;
    ADC      #$D0                      ; 0x22c2 $A2B2 69 D0                    ;
    STA      L000E                     ; 0x22c4 $A2B4 85 0E                    ;
    BCC      LA2BA                     ; 0x22c6 $A2B6 90 02                    ;
    INC      $0F                       ; 0x22c8 $A2B8 E6 0F                    ;
LA2BA:                                                                          ;
    TYA                                ; 0x22ca $A2BA 98                       ;
    SEC                                ; 0x22cb $A2BB 38                       ;
    SBC      #$10                      ; 0x22cc $A2BC E9 10                    ;
    TAY                                ; 0x22ce $A2BE A8                       ;
LA2BF:                                                                          ;
    TXA                                ; 0x22cf $A2BF 8A                       ;
    SEC                                ; 0x22d0 $A2C0 38                       ;
    SBC      #$18                      ; 0x22d1 $A2C1 E9 18                    ;
    TAX                                ; 0x22d3 $A2C3 AA                       ;
    LDA      $01                       ; 0x22d4 $A2C4 A5 01                    ;
    EOR      #$80                      ; 0x22d6 $A2C6 49 80                    ; flip bits x... ....
    STA      $01                       ; 0x22d8 $A2C8 85 01                    ;
    BNE      LA28C                     ; 0x22da $A2CA D0 C0                    ;
    INX                                ; 0x22dc $A2CC E8                       ;
    DEC      $00                       ; 0x22dd $A2CD C6 00                    ;
    BNE      LA288                     ; 0x22df $A2CF D0 B7                    ;
    JMP      LA267                     ; 0x22e1 $A2D1 4C 67 A2                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA2D4:                                                                          ;
    TYA                                ; 0x22e4 $A2D4 98                       ;
    ASL                                ; 0x22e5 $A2D5 0A                       ;
    ASL                                ; 0x22e6 $A2D6 0A                       ;
    ASL                                ; 0x22e7 $A2D7 0A                       ;
    ASL                                ; 0x22e8 $A2D8 0A                       ;
    LDA      (L000E),y                 ; 0x22e9 $A2D9 B1 0E                    ;
    AND      #$C0                      ; 0x22eb $A2DB 29 C0                    ; keep bits xx.. ....
    BCS      LA2EB                     ; 0x22ed $A2DD B0 0C                    ;
    ASL                                ; 0x22ef $A2DF 0A                       ;
    ROL                                ; 0x22f0 $A2E0 2A                       ;
    ROL                                ; 0x22f1 $A2E1 2A                       ;
    BIT      $01                       ; 0x22f2 $A2E2 24 01                    ;
    BPL      LA2F4                     ; 0x22f4 $A2E4 10 0E                    ;
    ASL                                ; 0x22f6 $A2E6 0A                       ;
    ASL                                ; 0x22f7 $A2E7 0A                       ;
    JMP      LA2F1                     ; 0x22f8 $A2E8 4C F1 A2                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA2EB:                                                                          ;
    BIT      $01                       ; 0x22fb $A2EB 24 01                    ;
    BMI      LA2F1                     ; 0x22fd $A2ED 30 02                    ;
    LSR                                ; 0x22ff $A2EF 4A                       ;
    LSR                                ; 0x2300 $A2F0 4A                       ;
LA2F1:                                                                          ;
    ORA      $0526,x                   ; 0x2301 $A2F1 1D 26 05                 ;
LA2F4:                                                                          ;
    STA      $0526,x                   ; 0x2304 $A2F4 9D 26 05                 ;
    RTS                                ; 0x2307 $A2F7 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA2F8:                                                                          ;
    JSR      bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__LEVELUP; 0x2308 $A2F8 20 47 A6;
    JMP      LA301                     ; 0x230b $A2FB 4C 01 A3                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
involves_pause_pane_deciding_what_to_draw_based_on_what_spells_list_has_and_drawing_it__main: ;
    JSR      involves_pause_pane_deciding_what_to_draw_based_on_what_spells_list_has_and_drawing_it; 0x230e $A2FE 20 E3 A5;
LA301:                                                                          ;
    JSR      part_of__bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__SPELL; 0x2311 $A301 20 5F A3;
    INC      $0525                     ; 0x2314 $A304 EE 25 05                 ;; Routine Delay
    LDA      $0525                     ; 0x2317 $A307 AD 25 05                 ;; Routine Delay
    CMP      #$0A                      ; 0x231a $A30A C9 0A                    ;
    BCS      LA325                     ; 0x231c $A30C B0 17                    ;
    RTS                                ; 0x231e $A30E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA30F:                                                                          ;
    LDA      #$01                      ; 0x231f $A30F A9 01                    ; A = 01
    STA      $EA                       ; 0x2321 $A311 85 EA                    ;;Global Sound Switch (0 = Sound On)
    BNE      LA325                     ; 0x2323 $A313 D0 10                    ;
LA315:                                                                          ;
    LDA      #$88                      ; 0x2325 $A315 A9 88                    ; A = 88
    STA      $0566                     ; 0x2327 $A317 8D 66 05                 ;; Delay between letters (town)		text speed text delay
    BNE      LA325                     ; 0x232a $A31A D0 09                    ;
LA31C:                                                                          ;
    LDA      #$C0                      ; 0x232c $A31C A9 C0                    ; A = C0
    STA      $074F                     ; 0x232e $A31E 8D 4F 07                 ;; Related to Pause Pane
    LDA      #$08                      ; 0x2331 $A321 A9 08                    ; A = 08 (sound when Pause Pane appears)
    STA      $EE                       ; 0x2333 $A323 85 EE                    ; Sound Effects Type 3
LA325:                                                                          ;
    INC      $0524                     ; 0x2335 $A325 EE 24 05                 ; Routine Index
    RTS                                ; 0x2338 $A328 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA329:                                                                          ;
    DEC      $0566                     ; 0x2339 $A329 CE 66 05                 ;; Delay between letters (town)		text speed text delay
    LDA      $0566                     ; 0x233c $A32C AD 66 05                 ;; Delay between letters (town)		text speed text delay
    CMP      #$FF                      ; 0x233f $A32F C9 FF                    ;
    BEQ      LA325                     ; 0x2341 $A331 F0 F2                    ;
    RTS                                ; 0x2343 $A333 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA334:                                                                          ;
    LDA      #$00                      ; 0x2344 $A334 A9 00                    ; A = 00
    STA      $EA                       ; 0x2346 $A336 85 EA                    ;;Global Sound Switch (0 = Sound On)
LA338:                                                                          ;
    LDA      #$00                      ; 0x2348 $A338 A9 00                    ; A = 00
    STA      $074C                     ; 0x234a $A33A 8D 4C 07                 ;; Dialog Type (00 - None, 01 - Level Up, 02 - Talking); * related to Raft Animation * (and other events, like spell learning)
    STA      $0525                     ; 0x234d $A33D 8D 25 05                 ; Routine Delay
    STA      $0524                     ; 0x2350 $A340 8D 24 05                 ; Routine Index
    STA      $0567                     ; 0x2353 $A343 8D 67 05                 ;; Related to Flute in Overworld		TIMER: can't move on overworld while this occurs
    RTS                                ; 0x2356 $A346 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__SPELL:                     ;
;also see:                                                                     ;
;$A347	load spell menu                                                         ;
;$A647	load level up menu                                                      ;
    LDY      #$00                      ; 0x2357 $A347 A0 00                    ; Y = 00
LA349:                                                                          ;
    LDA      SpellMenu_Pane__SpellText,y; 0x2359 $A349 B9 1A 9C                 ;load from 	table: pause pane,text to display (contains _SHIELDuu032_JUMPuuuu048_LIFEuuuu070_FAIRYuuu080_FIREuuuu120_REFLECTu120_SPELLuuu120)
    STA      L7800,y                   ; 0x235c $A34C 99 00 78                 ;store to ram for some reason
    INY                                ; 0x235f $A34F C8                       ;
    BNE      LA349                     ; 0x2360 $A350 D0 F7                    ;
LA352:                                                                          ;
    LDA      L9D1A,y                   ; 0x2362 $A352 B9 1A 9D                 ;
    STA      $7900,y                   ; 0x2365 $A355 99 00 79                 ;
    INY                                ; 0x2368 $A358 C8                       ;
    CPY      #$18                      ; 0x2369 $A359 C0 18                    ;
    BEQ      LA31C                     ; 0x236b $A35B F0 BF                    ;goto done , play menu-opening sound and inc routine index
    BNE      LA352                     ; 0x236d $A35D D0 F3                    ;otherwise goto loop
part_of__bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__SPELL:            ;
    JSR      LA546                     ; 0x236f $A35F 20 46 A5                 ;
LA362:                                                                          ;
    JSR      LA3B3                     ; 0x2372 $A362 20 B3 A3                 ;
    AND      #$FE                      ; 0x2375 $A365 29 FE                    ; keep bits xxxx xxx.
    ASL                                ; 0x2377 $A367 0A                       ;
    ASL                                ; 0x2378 $A368 0A                       ;
    ADC      #$C8                      ; 0x2379 $A369 69 C8                    ;
    JSR      LA558                     ; 0x237b $A36B 20 58 A5                 ;
    LDA      #$0F                      ; 0x237e $A36E A9 0F                    ; A = 0F
    STA      $05                       ; 0x2380 $A370 85 05                    ;
    JSR      LA56B                     ; 0x2382 $A372 20 6B A5                 ;
    BEQ      LA383                     ; 0x2385 $A375 F0 0C                    ;
    LDA      $04                       ; 0x2387 $A377 A5 04                    ;
    BNE      LA391                     ; 0x2389 $A379 D0 16                    ;
    LDA      #$3F                      ; 0x238b $A37B A9 3F                    ; A = 3F
    STA      $05                       ; 0x238d $A37D 85 05                    ;
    LDA      #$F3                      ; 0x238f $A37F A9 F3                    ; A = F3
    BNE      LA38F                     ; 0x2391 $A381 D0 0C                    ;
LA383:                                                                          ;
    LDA      $04                       ; 0x2393 $A383 A5 04                    ;
    CMP      #$03                      ; 0x2395 $A385 C9 03                    ;
    BNE      LA391                     ; 0x2397 $A387 D0 08                    ;
    LDA      #$CF                      ; 0x2399 $A389 A9 CF                    ; A = CF
    STA      $05                       ; 0x239b $A38B 85 05                    ;
    LDA      #$FC                      ; 0x239d $A38D A9 FC                    ; A = FC
LA38F:                                                                          ;
    STA      $06                       ; 0x239f $A38F 85 06                    ;
LA391:                                                                          ;
    LDA      $02                       ; 0x23a1 $A391 A5 02                    ;
    LSR                                ; 0x23a3 $A393 4A                       ;
    LDA      $05                       ; 0x23a4 $A394 A5 05                    ;
    BCS      LA39A                     ; 0x23a6 $A396 B0 02                    ;
    LDA      $06                       ; 0x23a8 $A398 A5 06                    ;
LA39A:                                                                          ;
    AND      $0526,x                   ; 0x23aa $A39A 3D 26 05                 ;
    STA      $0526,x                   ; 0x23ad $A39D 9D 26 05                 ;
    JSR      LA589                     ; 0x23b0 $A3A0 20 89 A5                 ;
    BCC      LA362                     ; 0x23b3 $A3A3 90 BD                    ;
LA3A5:                                                                          ;
    LDA      #$FF                      ; 0x23b5 $A3A5 A9 FF                    ; A = FF
    STA      L0363,y                   ; 0x23b7 $A3A7 99 63 03                 ;
    STY      $0362                     ; 0x23ba $A3AA 8C 62 03                 ;; PPU Macro Offset
    LDA      #$01                      ; 0x23bd $A3AD A9 01                    ; A = 01
    STA      $0725                     ; 0x23bf $A3AF 8D 25 07                 ;; PPU Macro Selector	
    RTS                                ; 0x23c2 $A3B2 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA3B3:                                                                          ;
    LDA      $01                       ; 0x23c3 $A3B3 A5 01                    ;
    CLC                                ; 0x23c5 $A3B5 18                       ;
    ADC      #$78                      ; 0x23c6 $A3B6 69 78                    ;
    PHP                                ; 0x23c8 $A3B8 08                       ;
    LSR                                ; 0x23c9 $A3B9 4A                       ;
    LSR                                ; 0x23ca $A3BA 4A                       ;
    LSR                                ; 0x23cb $A3BB 4A                       ;
    LSR                                ; 0x23cc $A3BC 4A                       ;
    LSR                                ; 0x23cd $A3BD 4A                       ;
    STA      $03                       ; 0x23ce $A3BE 85 03                    ;
    PLP                                ; 0x23d0 $A3C0 28                       ;
    LDA      $00                       ; 0x23d1 $A3C1 A5 00                    ;
    ADC      #$00                      ; 0x23d3 $A3C3 69 00                    ;
    AND      #$01                      ; 0x23d5 $A3C5 29 01                    ; keep bits .... ...x
    ASL                                ; 0x23d7 $A3C7 0A                       ;
    ASL                                ; 0x23d8 $A3C8 0A                       ;
    ADC      #$23                      ; 0x23d9 $A3C9 69 23                    ;
    STA      L0363,y                   ; 0x23db $A3CB 99 63 03                 ;
    LDA      $0525                     ; 0x23de $A3CE AD 25 05                 ;; Routine Delay
    CLC                                ; 0x23e1 $A3D1 18                       ;
    ADC      #$01                      ; 0x23e2 $A3D2 69 01                    ;
    STA      $02                       ; 0x23e4 $A3D4 85 02                    ;
    RTS                                ; 0x23e6 $A3D6 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA3D7:                                                                          ;
    DEC      $0525                     ; 0x23e7 $A3D7 CE 25 05                 ;; Routine Delay
    BPL      LA3DF                     ; 0x23ea $A3DA 10 03                    ;
    JMP      LA267                     ; 0x23ec $A3DC 4C 67 A2                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA3DF:                                                                          ;
    LDA      $072C                     ; 0x23ef $A3DF AD 2C 07                 ;; Scrolling Offset Low Byte
    CLC                                ; 0x23f2 $A3E2 18                       ;
    ADC      #$78                      ; 0x23f3 $A3E3 69 78                    ;
    TAX                                ; 0x23f5 $A3E5 AA                       ;
    LDA      $072A                     ; 0x23f6 $A3E6 AD 2A 07                 ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x23f9 $A3E9 69 00                    ;
    JSR      bank0_unknown24           ; 0x23fb $A3EB 20 A8 9A                 ;
    TXA                                ; 0x23fe $A3EE 8A                       ;
    LSR                                ; 0x23ff $A3EF 4A                       ;
    LSR                                ; 0x2400 $A3F0 4A                       ;
    LSR                                ; 0x2401 $A3F1 4A                       ;
    LSR                                ; 0x2402 $A3F2 4A                       ;
    TAY                                ; 0x2403 $A3F3 A8                       ;
    LDA      $0525                     ; 0x2404 $A3F4 AD 25 05                 ;; Routine Delay
    ASL                                ; 0x2407 $A3F7 0A                       ;
    ASL                                ; 0x2408 $A3F8 0A                       ;
    ASL                                ; 0x2409 $A3F9 0A                       ;
    ASL                                ; 0x240a $A3FA 0A                       ;
    ADC      #$10                      ; 0x240b $A3FB 69 10                    ;
    JSR      LA57E                     ; 0x240d $A3FD 20 7E A5                 ;
    LDX      #$00                      ; 0x2410 $A400 A2 00                    ; X = 00
LA402:                                                                          ;
    LDA      (L000E),y                 ; 0x2412 $A402 B1 0E                    ;
    STA      $055A,x                   ; 0x2414 $A404 9D 5A 05                 ;
    INY                                ; 0x2417 $A407 C8                       ;
    TYA                                ; 0x2418 $A408 98                       ;
    AND      #$0F                      ; 0x2419 $A409 29 0F                    ; keep bits .... xxxx
    BNE      LA418                     ; 0x241b $A40B D0 0B                    ;
    LDA      #$D0                      ; 0x241d $A40D A9 D0                    ; A = D0
    CLC                                ; 0x241f $A40F 18                       ;
    JSR      LA57E                     ; 0x2420 $A410 20 7E A5                 ;
    TYA                                ; 0x2423 $A413 98                       ;
    SEC                                ; 0x2424 $A414 38                       ;
    SBC      #$10                      ; 0x2425 $A415 E9 10                    ;
    TAY                                ; 0x2427 $A417 A8                       ;
LA418:                                                                          ;
    INX                                ; 0x2428 $A418 E8                       ;
    CPX      #$07                      ; 0x2429 $A419 E0 07                    ;
    BCC      LA402                     ; 0x242b $A41B 90 E5                    ;
    LDA      #$00                      ; 0x242d $A41D A9 00                    ; A = 00
    STA      $00                       ; 0x242f $A41F 85 00                    ;
    STA      $01                       ; 0x2431 $A421 85 01                    ;
LA423:                                                                          ;
    LDX      $00                       ; 0x2433 $A423 A6 00                    ;
    LDA      $055A,x                   ; 0x2435 $A425 BD 5A 05                 ;
    AND      #$C0                      ; 0x2438 $A428 29 C0                    ; keep bits xx.. ....
    ASL                                ; 0x243a $A42A 0A                       ;
    ROL                                ; 0x243b $A42B 2A                       ;
    ROL                                ; 0x243c $A42C 2A                       ;
    ASL                                ; 0x243d $A42D 0A                       ;
    TAY                                ; 0x243e $A42E A8                       ;
    JSR      LDFDB                     ; 0x243f $A42F 20 DB DF                 ;
    LDA      $055A,x                   ; 0x2442 $A432 BD 5A 05                 ;
    ASL                                ; 0x2445 $A435 0A                       ;
    ASL                                ; 0x2446 $A436 0A                       ;
    TAY                                ; 0x2447 $A437 A8                       ;
    LDX      $01                       ; 0x2448 $A438 A6 01                    ;
    JSR      LC24F                     ; 0x244a $A43A 20 4F C2                 ;
    INY                                ; 0x244d $A43D C8                       ;
    JSR      LC24F                     ; 0x244e $A43E 20 4F C2                 ;
    STX      $01                       ; 0x2451 $A441 86 01                    ;
    INC      $00                       ; 0x2453 $A443 E6 00                    ;
    CPX      #$0E                      ; 0x2455 $A445 E0 0E                    ;
    BCC      LA423                     ; 0x2457 $A447 90 DA                    ;
    JSR      LA546                     ; 0x2459 $A449 20 46 A5                 ;
LA44C:                                                                          ;
    JSR      LA3B3                     ; 0x245c $A44C 20 B3 A3                 ;
    LSR                                ; 0x245f $A44F 4A                       ;
    CLC                                ; 0x2460 $A450 18                       ;
    ADC      #$01                      ; 0x2461 $A451 69 01                    ;
    ASL                                ; 0x2463 $A453 0A                       ;
    ASL                                ; 0x2464 $A454 0A                       ;
    ASL                                ; 0x2465 $A455 0A                       ;
    ADC      #$C0                      ; 0x2466 $A456 69 C0                    ;
    JSR      LA558                     ; 0x2468 $A458 20 58 A5                 ;
    JSR      LA56B                     ; 0x246b $A45B 20 6B A5                 ;
    LDA      #$F0                      ; 0x246e $A45E A9 F0                    ; A = F0
    STA      $06                       ; 0x2470 $A460 85 06                    ;
    LDA      $072C                     ; 0x2472 $A462 AD 2C 07                 ;; Scrolling Offset Low Byte
    CLC                                ; 0x2475 $A465 18                       ;
    ADC      #$78                      ; 0x2476 $A466 69 78                    ;
    AND      #$F0                      ; 0x2478 $A468 29 F0                    ; keep bits xxxx ....
    STA      $07                       ; 0x247a $A46A 85 07                    ;
    AND      #$E0                      ; 0x247c $A46C 29 E0                    ; keep bits xxx. ....
    CMP      $07                       ; 0x247e $A46E C5 07                    ;
    BEQ      LA47A                     ; 0x2480 $A470 F0 08                    ;
    LDA      $04                       ; 0x2482 $A472 A5 04                    ;
    BNE      LA484                     ; 0x2484 $A474 D0 0E                    ;
    LDA      #$F3                      ; 0x2486 $A476 A9 F3                    ; A = F3
    BNE      LA482                     ; 0x2488 $A478 D0 08                    ;
LA47A:                                                                          ;
    LDA      $04                       ; 0x248a $A47A A5 04                    ;
    CMP      #$03                      ; 0x248c $A47C C9 03                    ;
    BNE      LA484                     ; 0x248e $A47E D0 04                    ;
    LDA      #$FC                      ; 0x2490 $A480 A9 FC                    ; A = FC
LA482:                                                                          ;
    STA      $06                       ; 0x2492 $A482 85 06                    ;
LA484:                                                                          ;
    CPX      #$04                      ; 0x2494 $A484 E0 04                    ;
    BCC      LA48F                     ; 0x2496 $A486 90 07                    ;
    LDA      $02                       ; 0x2498 $A488 A5 02                    ;
    LSR                                ; 0x249a $A48A 4A                       ;
    LDA      $06                       ; 0x249b $A48B A5 06                    ;
    BCS      LA491                     ; 0x249d $A48D B0 02                    ;
LA48F:                                                                          ;
    LDA      #$FF                      ; 0x249f $A48F A9 FF                    ; A = FF
LA491:                                                                          ;
    AND      $0526,x                   ; 0x24a1 $A491 3D 26 05                 ;
    JSR      LA589                     ; 0x24a4 $A494 20 89 A5                 ;
    BCS      LA49C                     ; 0x24a7 $A497 B0 03                    ;
    JMP      LA44C                     ; 0x24a9 $A499 4C 4C A4                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA49C:                                                                          ;
    JMP      LA3A5                     ; 0x24ac $A49C 4C A5 A3                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_involves_drawing_the_spell_menu:                                          ;
    LDY      $0362                     ; 0x24af $A49F AC 62 03                 ;; PPU Macro Offset
    LDA      #$C0                      ; 0x24b2 $A4A2 A9 C0                    ; A = C0
    STA      $07                       ; 0x24b4 $A4A4 85 07                    ;
    LDA      #$02                      ; 0x24b6 $A4A6 A9 02                    ; A = 02
    STA      $08                       ; 0x24b8 $A4A8 85 08                    ;
    LDX      #$00                      ; 0x24ba $A4AA A2 00                    ; X = 00
LA4AC:                                                                          ;
    LDA      $072C                     ; 0x24bc $A4AC AD 2C 07                 ;; Scrolling Offset Low Byte
    CLC                                ; 0x24bf $A4AF 18                       ;
    ADC      #$78                      ; 0x24c0 $A4B0 69 78                    ;
    AND      #$F0                      ; 0x24c2 $A4B2 29 F0                    ; keep bits xxxx ....
    STA      $01                       ; 0x24c4 $A4B4 85 01                    ;
    LDA      $072A                     ; 0x24c6 $A4B6 AD 2A 07                 ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    ADC      #$00                      ; 0x24c9 $A4B9 69 00                    ;
    STA      $00                       ; 0x24cb $A4BB 85 00                    ;
    LDA      $01                       ; 0x24cd $A4BD A5 01                    ;
    EOR      #$FF                      ; 0x24cf $A4BF 49 FF                    ; flip all bits
    CLC                                ; 0x24d1 $A4C1 18                       ;
    ADC      #$01                      ; 0x24d2 $A4C2 69 01                    ;
    LSR                                ; 0x24d4 $A4C4 4A                       ;
    LSR                                ; 0x24d5 $A4C5 4A                       ;
    LSR                                ; 0x24d6 $A4C6 4A                       ;
    LSR                                ; 0x24d7 $A4C7 4A                       ;
    BEQ      LA4CE                     ; 0x24d8 $A4C8 F0 04                    ;
    CMP      #$07                      ; 0x24da $A4CA C9 07                    ;
    BCC      LA4D0                     ; 0x24dc $A4CC 90 02                    ;
LA4CE:                                                                          ;
    LDA      #$07                      ; 0x24de $A4CE A9 07                    ; A = 07
LA4D0:                                                                          ;
    STA      $06                       ; 0x24e0 $A4D0 85 06                    ;
    LDA      #$07                      ; 0x24e2 $A4D2 A9 07                    ; A = 07
    STA      $03                       ; 0x24e4 $A4D4 85 03                    ;
LA4D6:                                                                          ;
    LDA      $0525                     ; 0x24e6 $A4D6 AD 25 05                 ;; Routine Delay
    ASL                                ; 0x24e9 $A4D9 0A                       ;
    ASL                                ; 0x24ea $A4DA 0A                       ;
    ASL                                ; 0x24eb $A4DB 0A                       ;
    ASL                                ; 0x24ec $A4DC 0A                       ;
    ASL                                ; 0x24ed $A4DD 0A                       ;
    ROL      $04                       ; 0x24ee $A4DE 26 04                    ;
    ASL                                ; 0x24f0 $A4E0 0A                       ;
    ROL      $04                       ; 0x24f1 $A4E1 26 04                    ;
    CLC                                ; 0x24f3 $A4E3 18                       ;
    ADC      $07                       ; 0x24f4 $A4E4 65 07                    ;
    STA      $05                       ; 0x24f6 $A4E6 85 05                    ;
    LDA      $04                       ; 0x24f8 $A4E8 A5 04                    ;
    ADC      #$00                      ; 0x24fa $A4EA 69 00                    ;
    AND      #$03                      ; 0x24fc $A4EC 29 03                    ; keep bits .... ..xx
    STA      $04                       ; 0x24fe $A4EE 85 04                    ;
    LDA      $01                       ; 0x2500 $A4F0 A5 01                    ;
    LSR                                ; 0x2502 $A4F2 4A                       ;
    LSR                                ; 0x2503 $A4F3 4A                       ;
    LSR                                ; 0x2504 $A4F4 4A                       ;
    ADC      $05                       ; 0x2505 $A4F5 65 05                    ;
    STA      $0364,y                   ; 0x2507 $A4F7 99 64 03                 ;
    LDA      $00                       ; 0x250a $A4FA A5 00                    ;
    AND      #$01                      ; 0x250c $A4FC 29 01                    ; keep bits .... ...x
    ASL                                ; 0x250e $A4FE 0A                       ;
    ASL                                ; 0x250f $A4FF 0A                       ;
    ADC      #$20                      ; 0x2510 $A500 69 20                    ;
    ADC      $04                       ; 0x2512 $A502 65 04                    ;
    STA      L0363,y                   ; 0x2514 $A504 99 63 03                 ;
    LDA      $06                       ; 0x2517 $A507 A5 06                    ;
    ASL                                ; 0x2519 $A509 0A                       ;
    STA      $0365,y                   ; 0x251a $A50A 99 65 03                 ;
    INY                                ; 0x251d $A50D C8                       ;
    INY                                ; 0x251e $A50E C8                       ;
    INY                                ; 0x251f $A50F C8                       ;
LA510:                                                                          ;
    LDA      $053E,x                   ; 0x2520 $A510 BD 3E 05                 ;; Tiles for Dialog Box Rows
    STA      L0363,y                   ; 0x2523 $A513 99 63 03                 ;
    INX                                ; 0x2526 $A516 E8                       ;
    LDA      $053E,x                   ; 0x2527 $A517 BD 3E 05                 ;; Tiles for Dialog Box Rows
    STA      $0364,y                   ; 0x252a $A51A 99 64 03                 ;
    INX                                ; 0x252d $A51D E8                       ;
    LDA      $01                       ; 0x252e $A51E A5 01                    ;
    CLC                                ; 0x2530 $A520 18                       ;
    ADC      #$10                      ; 0x2531 $A521 69 10                    ;
    STA      $01                       ; 0x2533 $A523 85 01                    ;
    BCC      LA529                     ; 0x2535 $A525 90 02                    ;
    INC      $00                       ; 0x2537 $A527 E6 00                    ;
LA529:                                                                          ;
    INY                                ; 0x2539 $A529 C8                       ;
    INY                                ; 0x253a $A52A C8                       ;
    DEC      $03                       ; 0x253b $A52B C6 03                    ;
    BEQ      LA53A                     ; 0x253d $A52D F0 0B                    ;
    DEC      $06                       ; 0x253f $A52F C6 06                    ;
    BNE      LA510                     ; 0x2541 $A531 D0 DD                    ;
    LDA      $03                       ; 0x2543 $A533 A5 03                    ;
    STA      $06                       ; 0x2545 $A535 85 06                    ;
    JMP      LA4D6                     ; 0x2547 $A537 4C D6 A4                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA53A:                                                                          ;
    LDA      #$E0                      ; 0x254a $A53A A9 E0                    ; A = E0
    STA      $07                       ; 0x254c $A53C 85 07                    ;
    DEC      $08                       ; 0x254e $A53E C6 08                    ;
    BEQ      LA545                     ; 0x2550 $A540 F0 03                    ;
    JMP      LA4AC                     ; 0x2552 $A542 4C AC A4                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA545:                                                                          ;
    RTS                                ; 0x2555 $A545 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA546:                                                                          ;
    JSR      bank0_involves_drawing_the_spell_menu; 0x2556 $A546 20 9F A4          ;
    LDA      $072A                     ; 0x2559 $A549 AD 2A 07                 ;;link Pagepos SideScroll		; Scrolling Offset High Byte
    STA      $00                       ; 0x255c $A54C 85 00                    ;
    LDA      $072C                     ; 0x255e $A54E AD 2C 07                 ;; Scrolling Offset Low Byte
    STA      $01                       ; 0x2561 $A551 85 01                    ;
    LDA      #$00                      ; 0x2563 $A553 A9 00                    ; A = 00
    STA      $04                       ; 0x2565 $A555 85 04                    ;
    RTS                                ; 0x2567 $A557 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA558:                                                                          ;
    ADC      $03                       ; 0x2568 $A558 65 03                    ;
    STA      $0364,y                   ; 0x256a $A55A 99 64 03                 ;
    LDA      #$01                      ; 0x256d $A55D A9 01                    ; A = 01
    STA      $0365,y                   ; 0x256f $A55F 99 65 03                 ;
    LDA      $02                       ; 0x2572 $A562 A5 02                    ;
    AND      #$FE                      ; 0x2574 $A564 29 FE                    ; keep bits xxxx xxx.
    ASL                                ; 0x2576 $A566 0A                       ;
    ADC      $04                       ; 0x2577 $A567 65 04                    ;
    TAX                                ; 0x2579 $A569 AA                       ;
    RTS                                ; 0x257a $A56A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA56B:                                                                          ;
    LDA      #$F0                      ; 0x257b $A56B A9 F0                    ; A = F0
    STA      $06                       ; 0x257d $A56D 85 06                    ;
    LDA      $072C                     ; 0x257f $A56F AD 2C 07                 ;; Scrolling Offset Low Byte
    CLC                                ; 0x2582 $A572 18                       ;
    ADC      #$78                      ; 0x2583 $A573 69 78                    ;
    AND      #$F0                      ; 0x2585 $A575 29 F0                    ; keep bits xxxx ....
    STA      $07                       ; 0x2587 $A577 85 07                    ;
    AND      #$E0                      ; 0x2589 $A579 29 E0                    ; keep bits xxx. ....
    CMP      $07                       ; 0x258b $A57B C5 07                    ;
    RTS                                ; 0x258d $A57D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA57E:                                                                          ;
    ADC      L000E                     ; 0x258e $A57E 65 0E                    ;
    STA      L000E                     ; 0x2590 $A580 85 0E                    ;
    LDA      $0F                       ; 0x2592 $A582 A5 0F                    ;
    ADC      #$00                      ; 0x2594 $A584 69 00                    ;
    STA      $0F                       ; 0x2596 $A586 85 0F                    ;
    RTS                                ; 0x2598 $A588 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA589:                                                                          ;
    STA      $0366,y                   ; 0x2599 $A589 99 66 03                 ;
    INY                                ; 0x259c $A58C C8                       ;
    INY                                ; 0x259d $A58D C8                       ;
    INY                                ; 0x259e $A58E C8                       ;
    INY                                ; 0x259f $A58F C8                       ;
    LDA      $01                       ; 0x25a0 $A590 A5 01                    ;
    CLC                                ; 0x25a2 $A592 18                       ;
    ADC      #$20                      ; 0x25a3 $A593 69 20                    ;
    STA      $01                       ; 0x25a5 $A595 85 01                    ;
    LDA      $00                       ; 0x25a7 $A597 A5 00                    ;
    ADC      #$00                      ; 0x25a9 $A599 69 00                    ;
    STA      $00                       ; 0x25ab $A59B 85 00                    ;
    INC      $04                       ; 0x25ad $A59D E6 04                    ;
    LDA      $04                       ; 0x25af $A59F A5 04                    ;
    CMP      #$04                      ; 0x25b1 $A5A1 C9 04                    ;
    RTS                                ; 0x25b3 $A5A3 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Experience_Convertion_and_Display_Routine:                                      ;
    LDY      #$D0                      ; 0x25b4 $A5A4 A0 D0                    ;;Y = #$d0 1101_0000
LA5A6:                                                                          ;
    INY                                ; 0x25b6 $A5A6 C8                       ;
    SEC                                ; 0x25b7 $A5A7 38                       ;
    SBC      #$E8                      ; 0x25b8 $A5A8 E9 E8                    ;
    BCS      LA5AE                     ; 0x25ba $A5AA B0 02                    ;
    DEC      $00                       ; 0x25bc $A5AC C6 00                    ;
LA5AE:                                                                          ;
    DEC      $00                       ; 0x25be $A5AE C6 00                    ;
    DEC      $00                       ; 0x25c0 $A5B0 C6 00                    ;
    DEC      $00                       ; 0x25c2 $A5B2 C6 00                    ;
    BPL      LA5A6                     ; 0x25c4 $A5B4 10 F0                    ;
    CLC                                ; 0x25c6 $A5B6 18                       ;
    ADC      #$E8                      ; 0x25c7 $A5B7 69 E8                    ;
    BCC      LA5BD                     ; 0x25c9 $A5B9 90 02                    ;
    INC      $00                       ; 0x25cb $A5BB E6 00                    ;
LA5BD:                                                                          ;
    INC      $00                       ; 0x25cd $A5BD E6 00                    ;
    INC      $00                       ; 0x25cf $A5BF E6 00                    ;
    INC      $00                       ; 0x25d1 $A5C1 E6 00                    ;
    DEY                                ; 0x25d3 $A5C3 88                       ;
    STY      $01                       ; 0x25d4 $A5C4 84 01                    ;
    LDY      #$D0                      ; 0x25d6 $A5C6 A0 D0                    ; Y = D0
LA5C8:                                                                          ;
    INY                                ; 0x25d8 $A5C8 C8                       ;
    SEC                                ; 0x25d9 $A5C9 38                       ;
    SBC      #$64                      ; 0x25da $A5CA E9 64                    ;
    BCS      LA5C8                     ; 0x25dc $A5CC B0 FA                    ;
    DEC      $00                       ; 0x25de $A5CE C6 00                    ;
    BPL      LA5C8                     ; 0x25e0 $A5D0 10 F6                    ;
    ADC      #$64                      ; 0x25e2 $A5D2 69 64                    ;
    DEY                                ; 0x25e4 $A5D4 88                       ;
    STY      $00                       ; 0x25e5 $A5D5 84 00                    ;
    LDY      #$D0                      ; 0x25e7 $A5D7 A0 D0                    ; Y = D0
LA5D9:                                                                          ;
    INY                                ; 0x25e9 $A5D9 C8                       ;
    SEC                                ; 0x25ea $A5DA 38                       ;
    SBC      #$0A                      ; 0x25eb $A5DB E9 0A                    ;
    BCS      LA5D9                     ; 0x25ed $A5DD B0 FA                    ;
    ADC      #$DA                      ; 0x25ef $A5DF 69 DA                    ;
    DEY                                ; 0x25f1 $A5E1 88                       ;
    RTS                                ; 0x25f2 $A5E2 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
involves_pause_pane_deciding_what_to_draw_based_on_what_spells_list_has_and_drawing_it: ;
    LDA      $0525                     ; 0x25f3 $A5E3 AD 25 05                 ;; Routine Delay
    ASL                                ; 0x25f6 $A5E6 0A                       ;
    TAY                                ; 0x25f7 $A5E7 A8                       ;
    LDA      Pointer_Table_for_Panes,y ; 0x25f8 $A5E8 B9 5A 9B                 ;
    STA      $02                       ; 0x25fb $A5EB 85 02                    ;
    LDA      Pointer_Table_for_Panes+$01,y; 0x25fd $A5ED B9 5B 9B                 ;
    STA      $03                       ; 0x2600 $A5F0 85 03                    ;
    LDA      Pointer_Table_for_Contents_of_Panes_in_Cartridge_RAM+$04,y; 0x2602 $A5F2 B9 6E 9B;
    STA      $04                       ; 0x2605 $A5F5 85 04                    ;
    LDA      Pointer_Table_for_Contents_of_Panes_in_Cartridge_RAM+$04+$01,y; 0x2607 $A5F7 B9 6F 9B;
    STA      $05                       ; 0x260a $A5FA 85 05                    ;
    LDY      #$0D                      ; 0x260c $A5FC A0 0D                    ;;Y = #$0d 0000_1101
LA5FE:                                                                          ;
    LDA      ($02),y                   ; 0x260e $A5FE B1 02                    ;this copys to $53E, which is temp area used to copy from to generate the ppu macro for the spell menu 
    STA      $053E,y                   ; 0x2610 $A600 99 3E 05                 ;;temp area used to copy from to generate the ppu macro for the spell menu 
    LDA      ($04),y                   ; 0x2613 $A603 B1 04                    ;
    LDX      $0525                     ; 0x2615 $A605 AE 25 05                 ;; Routine Delay
    CPX      #$08                      ; 0x2618 $A608 E0 08                    ;
    BCS      LA619                     ; 0x261a $A60A B0 0D                    ;
    PHA                                ; 0x261c $A60C 48                       ;
    LDA      $077B,x                   ; 0x261d $A60D BD 7B 07                 ;check if have spell, if not, do not draw this line of text (which is the spell's name)	;if >0, then draw it
LA610:                                                                          ;
    TAX                                ; 0x2620 $A610 AA                       ;
    PLA                                ; 0x2621 $A611 68                       ;
    CPX      #$00                      ; 0x2622 $A612 E0 00                    ;
    BNE      LA619                     ; 0x2624 $A614 D0 03                    ;
    LDA      LevelUp_Pane__BlankLine,y ; 0x2626 $A616 B9 C6 9B                 ;
LA619:                                                                          ;
    STA      $054C,y                   ; 0x2629 $A619 99 4C 05                 ;
    DEY                                ; 0x262c $A61C 88                       ;
    BPL      LA5FE                     ; 0x262d $A61D 10 DF                    ;
    LDX      $0749                     ; 0x262f $A61F AE 49 07                 ;; Current position of Magic selector
    BNE      LA633                     ; 0x2632 $A622 D0 0F                    ;
LA624:                                                                          ;
    STX      $0749                     ; 0x2634 $A624 8E 49 07                 ;; Current position of Magic selector
    LDA      $077B,x                   ; 0x2637 $A627 BD 7B 07                 ;check if have spell
    BNE      LA633                     ; 0x263a $A62A D0 07                    ;
    INX                                ; 0x263c $A62C E8                       ;increment cursor
    CPX      #$08                      ; 0x263d $A62D E0 08                    ;
    BCC      LA624                     ; 0x263f $A62F 90 F3                    ;
    BCS      LA642                     ; 0x2641 $A631 B0 0F                    ;
LA633:                                                                          ;
    CPX      $0525                     ; 0x2643 $A633 EC 25 05                 ;; Routine Delay
    BNE      LA642                     ; 0x2646 $A636 D0 0A                    ;
    LDA      $077B,x                   ; 0x2648 $A638 BD 7B 07                 ;
    BEQ      LA642                     ; 0x264b $A63B F0 05                    ;
    LDA      #$FA                      ; 0x264d $A63D A9 FA                    ; A = FA
    STA      $054D                     ; 0x264f $A63F 8D 4D 05                 ;
LA642:                                                                          ;
    RTS                                ; 0x2652 $A642 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown32:                                                                ;
.byt    $02,$05,$07,$01                ; 0x2653 $A643 02 05 07 01              ;involves cursor starting position for level up menu?
; ---------------------------------------------------------------------------- ;
bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__LEVELUP:                   ;
;also see:                                                                     ;
;$A347	load spell menu                                                         ;
;$A647	load level up menu                                                      ;
    LDA      $0525                     ; 0x2657 $A647 AD 25 05                 ;; Routine Delay
    ASL                                ; 0x265a $A64A 0A                       ;
    TAY                                ; 0x265b $A64B A8                       ;
    LDA      lpointerTable__panes_tile_mappings__9B82,y; 0x265c $A64C B9 82 9B     ;
    STA      $02                       ; 0x265f $A64F 85 02                    ;
    LDA      lpointerTable__panes_tile_mappings__9B83,y; 0x2661 $A651 B9 83 9B     ;
    STA      $03                       ; 0x2664 $A654 85 03                    ;
    LDA      lpointerTable__panes_tile_mappings__9B96,y; 0x2666 $A656 B9 96 9B     ;
    STA      $04                       ; 0x2669 $A659 85 04                    ;
    LDA      lpointerTable__panes_tile_mappings__9B97,y; 0x266b $A65B B9 97 9B     ;
    STA      $05                       ; 0x266e $A65E 85 05                    ;
    LDY      #$0D                      ; 0x2670 $A660 A0 0D                    ;;Y = #$0d 0000_1101
LA662:                                                                          ;
    LDA      ($02),y                   ; 0x2672 $A662 B1 02                    ;
    STA      $053E,y                   ; 0x2674 $A664 99 3E 05                 ;;temp area used to copy from to generate the ppu macro for the spell menu 
    LDA      ($04),y                   ; 0x2677 $A667 B1 04                    ;
    STA      $054C,y                   ; 0x2679 $A669 99 4C 05                 ;
    DEY                                ; 0x267c $A66C 88                       ;
    BPL      LA662                     ; 0x267d $A66D 10 F3                    ;
;is this where we draw the cursor ?                                            ;
    LDX      $074E                     ; 0x267f $A66F AE 4E 07                 ;
    LDA      bank0_unknown32,x         ; 0x2682 $A672 BD 43 A6                 ;
    CMP      $0525                     ; 0x2685 $A675 CD 25 05                 ;; Routine Delay
    BNE      LA683                     ; 0x2688 $A678 D0 09                    ;
    TXA                                ; 0x268a $A67A 8A                       ;
    LDX      #$FB                      ; 0x268b $A67B A2 FB                    ; X = FB
    LSR                                ; 0x268d $A67D 4A                       ;
    BCS      LA684                     ; 0x268e $A67E B0 04                    ;
    STX      $0552                     ; 0x2690 $A680 8E 52 05                 ;
LA683:                                                                          ;
    RTS                                ; 0x2693 $A683 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA684:                                                                          ;
    STX      $0544                     ; 0x2694 $A684 8E 44 05                 ;
    RTS                                ; 0x2697 $A687 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown34:                                                                ;
.byt    $04,$06,$09                    ; 0x2698 $A688 04 06 09                 ;
; ---------------------------------------------------------------------------- ;
bank0_unknown35:                                                                ;
    LDY      $074E                     ; 0x269b $A68B AC 4E 07                 ;
    CPY      #$03                      ; 0x269e $A68E C0 03                    ;
    BEQ      LA6B6                     ; 0x26a0 $A690 F0 24                    ;
    LDA      $0525                     ; 0x26a2 $A692 AD 25 05                 ;; Routine Delay
    PHA                                ; 0x26a5 $A695 48                       ;
    LDA      bank0_unknown34,y         ; 0x26a6 $A696 B9 88 A6                 ; refer to table at $2688
    STA      $0525                     ; 0x26a9 $A699 8D 25 05                 ;; Routine Delay
    JSR      bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__LEVELUP; 0x26ac $A69C 20 47 A6;
    JSR      part_of__bank0_Pause_Pane_LOAD_FROM_ROM_TO_RAM_FOR_MENU_TEXT__SPELL; 0x26af $A69F 20 5F A3;
    PLA                                ; 0x26b2 $A6A2 68                       ;
    STA      $0525                     ; 0x26b3 $A6A3 8D 25 05                 ;; Routine Delay
    LDA      #$60                      ; 0x26b6 $A6A6 A9 60                    ; A = 60
LA6A8:                                                                          ;
    STA      $0487                     ; 0x26b8 $A6A8 8D 87 04                 ;
    LDA      $074F                     ; 0x26bb $A6AB AD 4F 07                 ;; Related to Pause Pane
    ORA      #$C0                      ; 0x26be $A6AE 09 C0                    ; set bits xx.. ....
    STA      $074F                     ; 0x26c0 $A6B0 8D 4F 07                 ;; Related to Pause Pane
    JMP      LA325                     ; 0x26c3 $A6B3 4C 25 A3                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA6B6:                                                                          ;
    LDA      #$20                      ; 0x26c6 $A6B6 A9 20                    ; A = 20
    BNE      LA6A8                     ; 0x26c8 $A6B8 D0 EE                    ;
bank0_Tile_Mappings_breakbrick_byStabBrick:                                     ;
.byt    $94                            ; 0x26ca $A6BA 94                       ;
LA6BB:                                                                          ;
.byt    $95                            ; 0x26cb $A6BB 95                       ;
LA6BC:                                                                          ;
.byt    $94                            ; 0x26cc $A6BC 94                       ;
LA6BD:                                                                          ;
.byt    $95,$C2,$C3,$C2,$C3,$68,$69,$69; 0x26cd $A6BD 95 C2 C3 C2 C3 68 69 69  ;
.byt    $68,$BE,$BF,$C0,$C1,$C2,$C3,$C2; 0x26d5 $A6C5 68 BE BF C0 C1 C2 C3 C2  ;
.byt    $C3,$68,$69,$69,$68            ; 0x26dd $A6CD C3 68 69 69 68           ;
; ---------------------------------------------------------------------------- ;
bank0_unknown37:                                                                ;
    LDX      #$04                      ; 0x26e2 $A6D2 A2 04                    ; X = 04
LA6D4:                                                                          ;
    STX      $10                       ; 0x26e4 $A6D4 86 10                    ;; used as monster x register ;draw boss hp bar
    JSR      occurs_when_break_block_stab_block; 0x26e6 $A6D6 20 DD A6             ;
    DEX                                ; 0x26e9 $A6D9 CA                       ;
    BPL      LA6D4                     ; 0x26ea $A6DA 10 F8                    ;
LA6DC:                                                                          ;
    RTS                                ; 0x26ec $A6DC 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
occurs_when_break_block_stab_block:                                             ;
    LDA      $041A,x                   ; 0x26ed $A6DD BD 1A 04                 ;;break block by stab/stepon: ?exists/in-use
    BEQ      LA6DC                     ; 0x26f0 $A6E0 F0 FA                    ;
    INC      $041A,x                   ; 0x26f2 $A6E2 FE 1A 04                 ;;break block by stab/stepon: ?exists/in-use
    TAY                                ; 0x26f5 $A6E5 A8                       ;
    BMI      LA711                     ; 0x26f6 $A6E6 30 29                    ;
    CMP      #$12                      ; 0x26f8 $A6E8 C9 12                    ;
    BCC      LA703                     ; 0x26fa $A6EA 90 17                    ;
LA6EC:                                                                          ;
    LDA      #$00                      ; 0x26fc $A6EC A9 00                    ; A = 00
    STA      $041A,x                   ; 0x26fe $A6EE 9D 1A 04                 ;;break block by stab/stepon: ?exists/in-use
LA6F1:                                                                          ;
    LDA      $0433,x                   ; 0x2701 $A6F1 BD 33 04                 ;;break block by stab/stepon: ?addy (low)
    STA      $00                       ; 0x2704 $A6F4 85 00                    ;
    LDA      $0438,x                   ; 0x2706 $A6F6 BD 38 04                 ;;break block by stab/stepon: ?addy (high)
    STA      $01                       ; 0x2709 $A6F9 85 01                    ;
    LDY      $042E,x                   ; 0x270b $A6FB BC 2E 04                 ;
    LDA      #$42                      ; 0x270e $A6FE A9 42                    ; A = 42
    STA      ($00),y                   ; 0x2710 $A700 91 00                    ;
    RTS                                ; 0x2712 $A702 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA703:                                                                          ;
    AND      #$07                      ; 0x2713 $A703 29 07                    ; keep bits .... .xxx
    CMP      #$01                      ; 0x2715 $A705 C9 01                    ;
    BNE      LA6DC                     ; 0x2717 $A707 D0 D3                    ;
    TYA                                ; 0x2719 $A709 98                       ;
    AND      #$18                      ; 0x271a $A70A 29 18                    ; keep bits ...x x...
    LSR                                ; 0x271c $A70C 4A                       ;
    ADC      #$0C                      ; 0x271d $A70D 69 0C                    ;
    BNE      LA726                     ; 0x271f $A70F D0 15                    ;
LA711:                                                                          ;
    AND      #$7F                      ; 0x2721 $A711 29 7F                    ; keep bits .xxx xxxx
    CMP      #$20                      ; 0x2723 $A713 C9 20                    ;
    BEQ      LA6F1                     ; 0x2725 $A715 F0 DA                    ;
    CMP      #$30                      ; 0x2727 $A717 C9 30                    ;
    BCS      LA6EC                     ; 0x2729 $A719 B0 D1                    ;
    AND      #$0F                      ; 0x272b $A71B 29 0F                    ; keep bits .... xxxx
    CMP      #$07                      ; 0x272d $A71D C9 07                    ;
    BNE      LA6DC                     ; 0x272f $A71F D0 BB                    ;
    TYA                                ; 0x2731 $A721 98                       ;
    LSR                                ; 0x2732 $A722 4A                       ;
    LSR                                ; 0x2733 $A723 4A                       ;
    AND      #$0C                      ; 0x2734 $A724 29 0C                    ; keep bits .... xx..
LA726:                                                                          ;
    TAY                                ; 0x2736 $A726 A8                       ;
    LDX      $0362                     ; 0x2737 $A727 AE 62 03                 ;; PPU Macro Offset
    LDA      bank0_Tile_Mappings_breakbrick_byStabBrick,y; 0x273a $A72A B9 BA A6   ;
    STA      $0366,x                   ; 0x273d $A72D 9D 66 03                 ;
    LDA      LA6BB,y                   ; 0x2740 $A730 B9 BB A6                 ;
    STA      $0367,x                   ; 0x2743 $A733 9D 67 03                 ;
    LDA      LA6BC,y                   ; 0x2746 $A736 B9 BC A6                 ;
    STA      $036B,x                   ; 0x2749 $A739 9D 6B 03                 ;
    LDA      LA6BD,y                   ; 0x274c $A73C B9 BD A6                 ;
    STA      $036C,x                   ; 0x274f $A73F 9D 6C 03                 ;
    LDX      $10                       ; 0x2752 $A742 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      $041F,x                   ; 0x2754 $A744 BD 1F 04                 ;;break block by stab/stepon: map page
    AND      #$01                      ; 0x2757 $A747 29 01                    ; keep bits .... ...x
    ASL                                ; 0x2759 $A749 0A                       ;
    ASL                                ; 0x275a $A74A 0A                       ;
    PHA                                ; 0x275b $A74B 48                       ;
    LDA      $0429,x                   ; 0x275c $A74C BD 29 04                 ;;break block by stab/stepon: y
    STA      $02                       ; 0x275f $A74F 85 02                    ;
    LDA      $0424,x                   ; 0x2761 $A751 BD 24 04                 ;;break block by stab/stepon: X
    STA      $03                       ; 0x2764 $A754 85 03                    ;
    LDA      #$08                      ; 0x2766 $A756 A9 08                    ; A = 08
    STA      $00                       ; 0x2768 $A758 85 00                    ;
    LDA      $02                       ; 0x276a $A75A A5 02                    ;
    ASL                                ; 0x276c $A75C 0A                       ;
    ROL      $00                       ; 0x276d $A75D 26 00                    ;
    ASL                                ; 0x276f $A75F 0A                       ;
    ROL      $00                       ; 0x2770 $A760 26 00                    ;
    AND      #$E0                      ; 0x2772 $A762 29 E0                    ; keep bits xxx. ....
    STA      $01                       ; 0x2774 $A764 85 01                    ;
    LDA      $03                       ; 0x2776 $A766 A5 03                    ;
    LSR                                ; 0x2778 $A768 4A                       ;
    LSR                                ; 0x2779 $A769 4A                       ;
    LSR                                ; 0x277a $A76A 4A                       ;
    ORA      $01                       ; 0x277b $A76B 05 01                    ;
    STA      $01                       ; 0x277d $A76D 85 01                    ;
    LDX      $0362                     ; 0x277f $A76F AE 62 03                 ;; PPU Macro Offset
    PLA                                ; 0x2782 $A772 68                       ;
    ORA      $00                       ; 0x2783 $A773 05 00                    ;
    STA      L0363,x                   ; 0x2785 $A775 9D 63 03                 ;
    STA      $0368,x                   ; 0x2788 $A778 9D 68 03                 ;
    TXA                                ; 0x278b $A77B 8A                       ;
    CLC                                ; 0x278c $A77C 18                       ;
    ADC      #$0A                      ; 0x278d $A77D 69 0A                    ;
    STA      $0362                     ; 0x278f $A77F 8D 62 03                 ;; PPU Macro Offset
    LDA      $01                       ; 0x2792 $A782 A5 01                    ;
    STA      $0364,x                   ; 0x2794 $A784 9D 64 03                 ;
    ADC      #$01                      ; 0x2797 $A787 69 01                    ;
    STA      $0369,x                   ; 0x2799 $A789 9D 69 03                 ;
    LDA      #$82                      ; 0x279c $A78C A9 82                    ; A = 82
    STA      $0365,x                   ; 0x279e $A78E 9D 65 03                 ;
    STA      $036A,x                   ; 0x27a1 $A791 9D 6A 03                 ;
    LDA      #$FF                      ; 0x27a4 $A794 A9 FF                    ; A = FF
    STA      $036D,x                   ; 0x27a6 $A796 9D 6D 03                 ;
    LDA      #$01                      ; 0x27a9 $A799 A9 01                    ; A = 01
    STA      $0725                     ; 0x27ab $A79B 8D 25 07                 ;; PPU Macro Selector	
    LDX      $10                       ; 0x27ae $A79E A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x27b0 $A7A0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_PPU_addresses__maybe:                                                     ;
.byt    $27,$2F,$82,$7C,$7D,$27,$F0,$44; 0x27b1 $A7A1 27 2F 82 7C 7D 27 F0 44  ;
.byt    $55,$FF                        ; 0x27b9 $A7A9 55 FF                    ;
; ---------------------------------------------------------------------------- ;
bank0_unknown39:                                                                ;
    LDY      #$F0                      ; 0x27bb $A7AB A0 F0                    ; Y = F0
LA7AD:                                                                          ;
    NOP                                ; 0x27bd $A7AD EA                       ;
    DEY                                ; 0x27be $A7AE 88                       ;
    BNE      LA7AD                     ; 0x27bf $A7AF D0 FC                    ;
LA7B1:                                                                          ;
    BIT      $2002                     ; 0x27c1 $A7B1 2C 02 20                 ;
    BVC      LA7B1                     ; 0x27c4 $A7B4 50 FB                    ;
    LDA      $FF                       ; 0x27c6 $A7B6 A5 FF                    ;; Sprite Bank ?
    ORA      $0746                     ; 0x27c8 $A7B8 0D 46 07                 ;
    STA      $FF                       ; 0x27cb $A7BB 85 FF                    ;; Sprite Bank ?
    LDX      $FD                       ; 0x27cd $A7BD A6 FD                    ;
    LDY      #$10                      ; 0x27cf $A7BF A0 10                    ; Y = 10
LA7C1:                                                                          ;
    DEY                                ; 0x27d1 $A7C1 88                       ;
    BNE      LA7C1                     ; 0x27d2 $A7C2 D0 FD                    ;
    STA      $2000                     ; 0x27d4 $A7C4 8D 00 20                 ;
    STX      $2005                     ; 0x27d7 $A7C7 8E 05 20                 ;
    STY      $2005                     ; 0x27da $A7CA 8C 05 20                 ;
    INC       a:$12                     ; 0x27dd $A7CD EE 12 00                 ;
    LDA       a:$12                     ; 0x27e0 $A7D0 AD 12 00                 ;
    AND      #$07                      ; 0x27e3 $A7D3 29 07                    ; keep bits .... .xxx
    BNE      LA829                     ; 0x27e5 $A7D5 D0 52                    ;
    LDY      #$09                      ; 0x27e7 $A7D7 A0 09                    ; Y = 09
LA7D9:                                                                          ;
    LDA      bank0_PPU_addresses__maybe,y; 0x27e9 $A7D9 B9 A1 A7                 ;
    STA      L0302,y                   ; 0x27ec $A7DC 99 02 03                 ;
    DEY                                ; 0x27ef $A7DF 88                       ;
    BPL      LA7D9                     ; 0x27f0 $A7E0 10 F7                    ;
    LDA      $0303                     ; 0x27f2 $A7E2 AD 03 03                 ;; Letter position when writing to screen
    SEC                                ; 0x27f5 $A7E5 38                       ;
    SBC      $0762                     ; 0x27f6 $A7E6 ED 62 07                 ;
    STA      $0303                     ; 0x27f9 $A7E9 8D 03 03                 ;; Letter position when writing to screen
    LDA      #$02                      ; 0x27fc $A7EC A9 02                    ; A = 02
    STA      $ED                       ; 0x27fe $A7EE 85 ED                    ; Sound Effects Type 2
    INC      $0762                     ; 0x2800 $A7F0 EE 62 07                 ;
    LDA      $0762                     ; 0x2803 $A7F3 AD 62 07                 ;
    AND      #$0F                      ; 0x2806 $A7F6 29 0F                    ; keep bits .... xxxx
    BNE      LA829                     ; 0x2808 $A7F8 D0 2F                    ;
    STA      $0762                     ; 0x280a $A7FA 8D 62 07                 ;
    LDA      #$10                      ; 0x280d $A7FD A9 10                    ; A = 10
    STA      $00                       ; 0x280f $A7FF 85 00                    ;
    LDA      #$63                      ; 0x2811 $A801 A9 63                    ; A = 63
    STA      $01                       ; 0x2813 $A803 85 01                    ;
    LDX      #$51                      ; 0x2815 $A805 A2 51                    ; X = 51
LA807:                                                                          ;
    LDY      #$07                      ; 0x2817 $A807 A0 07                    ; Y = 07
LA809:                                                                          ;
    TXA                                ; 0x2819 $A809 8A                       ;
    STA      ($00),y                   ; 0x281a $A80A 91 00                    ;
    DEY                                ; 0x281c $A80C 88                       ;
    BPL      LA809                     ; 0x281d $A80D 10 FA                    ;
    LDX      #$56                      ; 0x281f $A80F A2 56                    ; X = 56
    LDA      $00                       ; 0x2821 $A811 A5 00                    ;
    CLC                                ; 0x2823 $A813 18                       ;
    ADC      #$10                      ; 0x2824 $A814 69 10                    ;
    STA      $00                       ; 0x2826 $A816 85 00                    ;
    CMP      #$30                      ; 0x2828 $A818 C9 30                    ;
    BNE      LA807                     ; 0x282a $A81A D0 EB                    ;
    LDA      #$00                      ; 0x282c $A81C A9 00                    ; A = 00
    STA      $0524                     ; 0x282e $A81E 8D 24 05                 ; Routine Index
    LDA      $0796                     ; 0x2831 $A821 AD 96 07                 ;; Down/Up Techs (and other things)
    AND      #$FE                      ; 0x2834 $A824 29 FE                    ; keep bits xxxx xxx.
    STA      $0796                     ; 0x2836 $A826 8D 96 07                 ;; Down/Up Techs (and other things)
LA829:                                                                          ;
    RTS                                ; 0x2839 $A829 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
LA82A:                                                                          ;
    LDA      $073D                     ; 0x283a $A82A AD 3D 07                 ;; Routine Index
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x283d $A82D 20 85 D3;
bank0_unknown40:                                                                ;
.word    bank7_Erase_Name_Tables_0and1__set_scroll_to_0_0; 0x2840 $A830 66 D2  ;Pointer table for ? (3 * 2 = 6 bytes)
.word    bank0_unknown41               ; 0x2842 $A832 5A A8                    ;
.word    bank0_unknown43               ; 0x2844 $A834 69 A8                    ;
; ---------------------------------------------------------------------------- ;
Some_Palettes_Data_related_to_Falling_Animation:                                ;
.byt    $3F,$00,$20,$0F,$2C,$1C,$0C,$0F; 0x2846 $A836 3F 00 20 0F 2C 1C 0C 0F  ;
.byt    $2C,$1C,$0C,$0F,$2C,$1C,$0C,$0F; 0x284e $A83E 2C 1C 0C 0F 2C 1C 0C 0F  ;
.byt    $2C,$1C,$0C,$0F,$18,$36,$2A,$0F; 0x2856 $A846 2C 1C 0C 0F 18 36 2A 0F  ;
.byt    $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F; 0x285e $A84E 0F 0F 0F 0F 0F 0F 0F 0F  ;
.byt    $30,$0F,$0F,$FF                ; 0x2866 $A856 30 0F 0F FF              ;
; ---------------------------------------------------------------------------- ;
bank0_unknown41:                                                                ;
    JSR      bank7_Remove_All_Sprites  ; 0x286a $A85A 20 4C D2                 ;
    LDA      #$06                      ; 0x286d $A85D A9 06                    ; A = 06
    STA      $0725                     ; 0x286f $A85F 8D 25 07                 ;; PPU Macro Selector	
    INC      $073D                     ; 0x2872 $A862 EE 3D 07                 ;; Routine Index
    RTS                                ; 0x2875 $A865 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown42:                                                                ;
.byt    $FF,$FE,$FD                    ; 0x2876 $A866 FF FE FD                 ;
; ---------------------------------------------------------------------------- ;
bank0_unknown43:                                                                ;
    LDA      #$02                      ; 0x2879 $A869 A9 02                    ; A = 02
    JSR      SwapCHR                   ; 0x287b $A86B 20 B1 BF          ;
    LDA      $FF                       ; 0x287e $A86E A5 FF                    ;; Sprite Bank ?
    AND      #$FB                      ; 0x2880 $A870 29 FB                    ; keep bits xxxx x.xx
    STA      $2000                     ; 0x2882 $A872 8D 00 20                 ;
    LDA      $2002                     ; 0x2885 $A875 AD 02 20                 ;
    LDA      #$20                      ; 0x2888 $A878 A9 20                    ; A = 20
    LDY      #$00                      ; 0x288a $A87A A0 00                    ; Y = 00
    STA      $2006                     ; 0x288c $A87C 8D 06 20                 ;
    STY      $2006                     ; 0x288f $A87F 8C 06 20                 ;
    LDA      #$09                      ; 0x2892 $A882 A9 09                    ; A = 09
    STA      $00                       ; 0x2894 $A884 85 00                    ;
LA886:                                                                          ;
    LDX      #$02                      ; 0x2896 $A886 A2 02                    ; X = 02
LA888:                                                                          ;
    LDY      #$1F                      ; 0x2898 $A888 A0 1F                    ; Y = 1F
    LDA      bank0_unknown42,x         ; 0x289a $A88A BD 66 A8                 ;
LA88D:                                                                          ;
    STA      $2007                     ; 0x289d $A88D 8D 07 20                 ;
    DEY                                ; 0x28a0 $A890 88                       ;
    BPL      LA88D                     ; 0x28a1 $A891 10 FA                    ;
    DEX                                ; 0x28a3 $A893 CA                       ;
    BPL      LA888                     ; 0x28a4 $A894 10 F2                    ;
    DEC      $00                       ; 0x28a6 $A896 C6 00                    ;
    BPL      LA886                     ; 0x28a8 $A898 10 EC                    ;
    INC      $0736                     ; 0x28aa $A89A EE 36 07                 ;; Game Mode ; screen intro type
    RTS                                ; 0x28ad $A89D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unknown44:                                                                ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28ae $A89E FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28b6 $A8A6 FF FF FF FF FF FF FF FF  ; A -> X
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28be $A8AE FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28c6 $A8B6 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28ce $A8BE FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28d6 $A8C6 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28de $A8CE FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28e6 $A8D6 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28ee $A8DE FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28f6 $A8E6 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x28fe $A8EE FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2906 $A8F6 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x290e $A8FE FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2916 $A906 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x291e $A90E FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2926 $A916 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x292e $A91E FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2936 $A926 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x293e $A92E FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2946 $A936 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x294e $A93E FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2956 $A946 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x295e $A94E FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2966 $A956 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x296e $A95E FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2976 $A966 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x297e $A96E FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2986 $A976 FF FF FF FF FF FF FF FF  ;
.byt    $FF                            ; 0x298e $A97E FF                       ;
LA97F:                                                                          ;
.byt    $FF                            ; 0x298f $A97F FF                       ;
Table_for_Some_Text:                                                            ;
;Related to Lives Left screen                                                  ;
;                                                                              ;
;21 85 10	PPU Address 2185, transfer 10 bytes                                  ;
;E2 DC E1 E2 E5 E2 E7 E4 CF CF CF F4 F4 F4 FC F4		ICHILINK...   x              ;
;                                                                              ;
;FF	End Byte                                                                   ;
.byt    $21,$85,$10,$E2,$DC,$E1,$E2,$E5; 0x2990 $A980 21 85 10 E2 DC E1 E2 E5  ;
.byt    $E2,$E7,$E4,$CF,$CF,$CF,$F4,$F4; 0x2998 $A988 E2 E7 E4 CF CF CF F4 F4  ;
.byt    $F4,$FC,$F4,$FF                ; 0x29a0 $A990 F4 FC F4 FF              ;
Table_for_Some_Palette:                                                         ;
;                                                                              ;
;3F 10 04	PPU Address 3F10, transfer 4 bytes                                   ;
;12 0F 0F 0F                                                                   ;
;FF                                                                            ;
.byt    $3F,$10,$04,$12,$0F,$0F,$0F,$FF; 0x29a4 $A994 3F 10 04 12 0F 0F 0F FF  ;
bank0_Table_For_PPU_Instructions_On_GameOverScreen_45_loaded_in_6957:           ;
.byt    $20,$CA,$83,$F4,$F4,$F4,$FF,$03; 0x29ac $A99C 20 CA 83 F4 F4 F4 FF 03  ;this line contains ppu instruction for drawing the magic bag/jar on the game over screen
.byt    $00,$01,$02,$FF,$FF,$FF,$0A,$0A; 0x29b4 $A9A4 00 01 02 FF FF FF 0A 0A  ;
.byt    $0A,$0A,$FF,$FF,$FF,$03,$00,$01; 0x29bc $A9AC 0A 0A FF FF FF 03 00 01  ;
.byt    $02,$FF,$FF,$FF,$01,$02,$03,$00; 0x29c4 $A9B4 02 FF FF FF 01 02 03 00  ;
.byt    $FF,$FF,$FF,$0B,$0B,$0B,$0B,$FF; 0x29cc $A9BC FF FF FF 0B 0B 0B 0B FF  ;
.byt    $FF,$FF,$06,$06,$06,$06,$FF,$FF; 0x29d4 $A9C4 FF FF 06 06 06 06 FF FF  ;
.byt    $FF,$00,$01,$02,$03,$FF,$FF,$FF; 0x29dc $A9CC FF 00 01 02 03 FF FF FF  ;
.byt    $00,$00,$00,$00,$FF,$FF,$FF,$00; 0x29e4 $A9D4 00 00 00 00 FF FF FF 00  ;
.byt    $00,$00,$00,$FF,$FF,$FF,$01,$02; 0x29ec $A9DC 00 00 00 FF FF FF 01 02  ;
.byt    $01,$02,$FF,$FF,$FF,$FF,$00,$00; 0x29f4 $A9E4 01 02 FF FF FF FF 00 00  ;
.byt    $00,$01,$02,$03                ; 0x29fc $A9EC 00 01 02 03              ;
Table_for_Links_Palettes_Probably:                                              ;
.byt    $12,$16,$2A,$16,$0F,$0F,$30,$01; 0x2a00 $A9F0 12 16 2A 16 0F 0F 30 01  ;
.byt    $31,$01                        ; 0x2a08 $A9F8 31 01                    ;
Link_Brown_Color:                                                               ;
.byt    $18,$01,$12,$21,$30,$21        ; 0x2a0a $A9FA 18 01 12 21 30 21        ;
Link_Skin_Color:                                                                ;
.byt    $36,$21,$30,$01,$31,$01,$2A,$11; 0x2a10 $AA00 36 21 30 01 31 01 2A 11  ;
; ---------------------------------------------------------------------------- ;
startup_init_begin_game:                                                        ;
    STA      $0738                     ; 0x2a18 $AA08 8D 38 07                 ;
    STA      $0706                     ; 0x2a1b $AA0B 8D 06 07                 ; Current Region
    STA      $0707                     ; 0x2a1e $AA0E 8D 07 07                 ; Current World
    STA      $0561                     ; 0x2a21 $AA11 8D 61 05                 ; Area Code
    STA      $0748                     ; 0x2a24 $AA14 8D 48 07                 ;; area location index (the index of the spot on the overworld that pulled you into the sideview)	; Overworld Area out of Side View
    STA      $073F                     ; 0x2a27 $AA17 8D 3F 07                 ;
    STA      $075C                     ; 0x2a2a $AA1A 8D 5C 07                 ; Position code when entering area (0-3)
    STA      $0701                     ; 0x2a2d $AA1D 8D 01 07                 ; Facing direction when entering area
    LDX      #$01                      ; 0x2a30 $AA20 A2 01                    ; X = 01
    STX      $075D                     ; 0x2a32 $AA22 8E 5D 07                 ;
    STX      $075F                     ; 0x2a35 $AA25 8E 5F 07                 ;;at bank0: 0D64: AD 5F07	LDA $075F	then 	STA $EB		; Music Channel	; something to do with music
LAA28:                                                                          ;
    JSR      LCB18_fill_hp_or_mp_to_full__provide_x_register__maybe; 0x2a38 $AA28 20 18 CB;
    DEX                                ; 0x2a3b $AA2B CA                       ;
    BPL      LAA28                     ; 0x2a3c $AA2C 10 FA                    ;
    STX      $0708                     ; 0x2a3e $AA2E 8E 08 07                 ;
    JSR      update_next_level_exp     ; 0x2a41 $AA31 20 57 A0                 ;
    LDY      #$88                      ; 0x2a44 $AA34 A0 88                    ; Y = 88		;healer glitch area
LAA36:                                                                          ;
    LDA      LA97F,y                   ; 0x2a46 $AA36 B9 7F A9                 ;
    STA      $6957,y                   ; 0x2a49 $AA39 99 57 69                 ;
    DEY                                ; 0x2a4c $AA3C 88                       ;
    BNE      LAA36                     ; 0x2a4d $AA3D D0 F7                    ;
    RTS                                ; 0x2a4f $AA3F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank0_unused_space_big:                                                         ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a50 $AA40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a58 $AA48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a60 $AA50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a68 $AA58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a70 $AA60 FF FF FF FF FF FF FF FF  ; if Slash Step >= 2, goto ResetVariable
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a78 $AA68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a80 $AA70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a88 $AA78 FF FF FF FF FF FF FF FF  ; if (A >= 30) Flashing Routine
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a90 $AA80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2a98 $AA88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2aa0 $AA90 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2aa8 $AA98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ab0 $AAA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ab8 $AAA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ac0 $AAB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ac8 $AAB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ad0 $AAC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ad8 $AAC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ae0 $AAD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ae8 $AAD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2af0 $AAE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2af8 $AAE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b00 $AAF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b08 $AAF8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b10 $AB00 FF FF FF FF FF FF FF FF  ; Randomizer
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b18 $AB08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b20 $AB10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b28 $AB18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b30 $AB20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b38 $AB28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b40 $AB30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b48 $AB38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b50 $AB40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b58 $AB48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b60 $AB50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b68 $AB58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b70 $AB60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b78 $AB68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b80 $AB70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b88 $AB78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b90 $AB80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2b98 $AB88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ba0 $AB90 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ba8 $AB98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2bb0 $ABA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2bb8 $ABA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2bc0 $ABB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2bc8 $ABB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2bd0 $ABC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2bd8 $ABC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2be0 $ABD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2be8 $ABD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2bf0 $ABE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2bf8 $ABE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c00 $ABF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c08 $ABF8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c10 $AC00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c18 $AC08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c20 $AC10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c28 $AC18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c30 $AC20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c38 $AC28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c40 $AC30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c48 $AC38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c50 $AC40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c58 $AC48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c60 $AC50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c68 $AC58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c70 $AC60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c78 $AC68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c80 $AC70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c88 $AC78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c90 $AC80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2c98 $AC88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ca0 $AC90 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ca8 $AC98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2cb0 $ACA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2cb8 $ACA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2cc0 $ACB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2cc8 $ACB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2cd0 $ACC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2cd8 $ACC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ce0 $ACD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ce8 $ACD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2cf0 $ACE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2cf8 $ACE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d00 $ACF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d08 $ACF8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d10 $AD00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d18 $AD08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d20 $AD10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d28 $AD18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d30 $AD20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d38 $AD28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d40 $AD30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d48 $AD38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d50 $AD40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d58 $AD48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d60 $AD50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d68 $AD58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d70 $AD60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d78 $AD68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d80 $AD70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d88 $AD78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d90 $AD80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2d98 $AD88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2da0 $AD90 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2da8 $AD98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2db0 $ADA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2db8 $ADA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2dc0 $ADB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2dc8 $ADB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2dd0 $ADC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2dd8 $ADC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2de0 $ADD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2de8 $ADD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2df0 $ADE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2df8 $ADE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e00 $ADF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e08 $ADF8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e10 $AE00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e18 $AE08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e20 $AE10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e28 $AE18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e30 $AE20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e38 $AE28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e40 $AE30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e48 $AE38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e50 $AE40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e58 $AE48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e60 $AE50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e68 $AE58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e70 $AE60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e78 $AE68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e80 $AE70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e88 $AE78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e90 $AE80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2e98 $AE88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ea0 $AE90 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ea8 $AE98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2eb0 $AEA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2eb8 $AEA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ec0 $AEB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ec8 $AEB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ed0 $AEC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ed8 $AEC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ee0 $AED0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ee8 $AED8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ef0 $AEE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ef8 $AEE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f00 $AEF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f08 $AEF8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f10 $AF00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f18 $AF08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f20 $AF10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f28 $AF18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f30 $AF20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f38 $AF28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f40 $AF30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f48 $AF38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f50 $AF40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f58 $AF48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f60 $AF50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f68 $AF58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f70 $AF60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f78 $AF68 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f80 $AF70 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f88 $AF78 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f90 $AF80 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2f98 $AF88 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fa0 $AF90 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fa8 $AF98 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fb0 $AFA0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fb8 $AFA8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fc0 $AFB0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fc8 $AFB8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fd0 $AFC0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fd8 $AFC8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fe0 $AFD0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2fe8 $AFD8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ff0 $AFE0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x2ff8 $AFE8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3000 $AFF0 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3008 $AFF8 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3010 $B000 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3018 $B008 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3020 $B010 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3028 $B018 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3030 $B020 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3038 $B028 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3040 $B030 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3048 $B038 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3050 $B040 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3058 $B048 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3060 $B050 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3068 $B058 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3070 $B060 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3078 $B068 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3080 $B070 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3088 $B078 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF                        ; 0x3090 $B080 FF FF                    ;
LB082:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3092 $B082 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x309a $B08A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30a2 $B092 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30aa $B09A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30b2 $B0A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30ba $B0AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30c2 $B0B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30ca $B0BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30d2 $B0C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30da $B0CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30e2 $B0D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30ea $B0DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30f2 $B0E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x30fa $B0EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3102 $B0F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x310a $B0FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3112 $B102 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x311a $B10A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3122 $B112 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x312a $B11A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3132 $B122 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x313a $B12A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3142 $B132 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x314a $B13A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3152 $B142 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x315a $B14A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3162 $B152 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x316a $B15A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3172 $B162 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x317a $B16A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3182 $B172 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x318a $B17A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3192 $B182 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x319a $B18A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31a2 $B192 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31aa $B19A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31b2 $B1A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31ba $B1AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31c2 $B1B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31ca $B1BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31d2 $B1C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31da $B1CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31e2 $B1D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31ea $B1DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31f2 $B1E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x31fa $B1EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3202 $B1F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x320a $B1FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3212 $B202 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x321a $B20A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3222 $B212 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x322a $B21A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3232 $B222 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x323a $B22A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3242 $B232 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x324a $B23A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3252 $B242 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x325a $B24A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3262 $B252 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x326a $B25A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3272 $B262 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x327a $B26A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3282 $B272 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x328a $B27A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3292 $B282 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x329a $B28A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32a2 $B292 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32aa $B29A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32b2 $B2A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32ba $B2AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32c2 $B2B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32ca $B2BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32d2 $B2C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32da $B2CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32e2 $B2D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32ea $B2DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32f2 $B2E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x32fa $B2EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3302 $B2F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x330a $B2FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3312 $B302 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x331a $B30A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3322 $B312 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x332a $B31A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3332 $B322 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x333a $B32A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3342 $B332 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x334a $B33A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3352 $B342 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x335a $B34A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3362 $B352 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x336a $B35A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3372 $B362 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x337a $B36A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3382 $B372 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x338a $B37A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3392 $B382 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x339a $B38A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33a2 $B392 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33aa $B39A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33b2 $B3A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33ba $B3AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33c2 $B3B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33ca $B3BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33d2 $B3C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33da $B3CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33e2 $B3D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33ea $B3DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33f2 $B3E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x33fa $B3EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3402 $B3F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x340a $B3FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3412 $B402 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x341a $B40A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3422 $B412 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x342a $B41A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3432 $B422 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x343a $B42A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3442 $B432 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x344a $B43A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3452 $B442 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x345a $B44A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3462 $B452 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x346a $B45A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3472 $B462 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x347a $B46A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3482 $B472 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x348a $B47A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3492 $B482 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x349a $B48A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34a2 $B492 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34aa $B49A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34b2 $B4A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34ba $B4AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34c2 $B4B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34ca $B4BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34d2 $B4C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34da $B4CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34e2 $B4D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34ea $B4DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34f2 $B4E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x34fa $B4EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3502 $B4F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x350a $B4FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3512 $B502 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x351a $B50A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3522 $B512 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x352a $B51A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3532 $B522 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x353a $B52A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3542 $B532 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x354a $B53A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3552 $B542 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x355a $B54A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3562 $B552 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x356a $B55A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3572 $B562 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x357a $B56A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3582 $B572 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x358a $B57A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3592 $B582 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x359a $B58A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35a2 $B592 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35aa $B59A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35b2 $B5A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35ba $B5AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35c2 $B5B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35ca $B5BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35d2 $B5C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35da $B5CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35e2 $B5D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35ea $B5DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35f2 $B5E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x35fa $B5EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3602 $B5F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x360a $B5FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3612 $B602 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x361a $B60A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3622 $B612 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x362a $B61A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3632 $B622 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x363a $B62A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3642 $B632 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x364a $B63A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3652 $B642 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x365a $B64A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3662 $B652 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x366a $B65A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3672 $B662 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x367a $B66A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3682 $B672 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x368a $B67A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3692 $B682 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x369a $B68A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36a2 $B692 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36aa $B69A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36b2 $B6A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36ba $B6AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36c2 $B6B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36ca $B6BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36d2 $B6C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36da $B6CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36e2 $B6D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36ea $B6DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36f2 $B6E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x36fa $B6EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3702 $B6F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x370a $B6FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3712 $B702 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x371a $B70A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3722 $B712 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x372a $B71A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3732 $B722 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x373a $B72A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3742 $B732 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x374a $B73A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3752 $B742 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x375a $B74A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3762 $B752 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x376a $B75A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3772 $B762 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x377a $B76A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3782 $B772 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x378a $B77A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3792 $B782 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x379a $B78A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37a2 $B792 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37aa $B79A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37b2 $B7A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37ba $B7AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37c2 $B7B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37ca $B7BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37d2 $B7C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37da $B7CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37e2 $B7D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37ea $B7DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37f2 $B7E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x37fa $B7EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3802 $B7F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x380a $B7FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3812 $B802 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x381a $B80A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3822 $B812 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x382a $B81A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3832 $B822 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x383a $B82A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3842 $B832 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x384a $B83A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3852 $B842 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x385a $B84A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3862 $B852 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x386a $B85A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3872 $B862 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x387a $B86A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3882 $B872 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x388a $B87A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3892 $B882 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x389a $B88A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38a2 $B892 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38aa $B89A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38b2 $B8A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38ba $B8AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38c2 $B8B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38ca $B8BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38d2 $B8C2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38da $B8CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38e2 $B8D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38ea $B8DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38f2 $B8E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x38fa $B8EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3902 $B8F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x390a $B8FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3912 $B902 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x391a $B90A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3922 $B912 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x392a $B91A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3932 $B922 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x393a $B92A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3942 $B932 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x394a $B93A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3952 $B942 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x395a $B94A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3962 $B952 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x396a $B95A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3972 $B962 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x397a $B96A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3982 $B972 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x398a $B97A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3992 $B982 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x399a $B98A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39a2 $B992 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39aa $B99A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39b2 $B9A2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39ba $B9AA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39c2 $B9B2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39ca $B9BA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39d2 $B9C2 FF FF FF FF FF FF FF FF  ;
LB9CA:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39da $B9CA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39e2 $B9D2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39ea $B9DA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39f2 $B9E2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x39fa $B9EA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a02 $B9F2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a0a $B9FA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a12 $BA02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a1a $BA0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a22 $BA12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a2a $BA1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a32 $BA22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a3a $BA2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a42 $BA32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a4a $BA3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a52 $BA42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a5a $BA4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a62 $BA52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a6a $BA5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a72 $BA62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a7a $BA6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a82 $BA72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a8a $BA7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a92 $BA82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3a9a $BA8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3aa2 $BA92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3aaa $BA9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ab2 $BAA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3aba $BAAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ac2 $BAB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3aca $BABA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ad2 $BAC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ada $BACA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ae2 $BAD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3aea $BADA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3af2 $BAE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3afa $BAEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b02 $BAF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b0a $BAFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b12 $BB02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b1a $BB0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b22 $BB12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b2a $BB1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b32 $BB22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b3a $BB2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b42 $BB32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b4a $BB3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b52 $BB42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b5a $BB4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b62 $BB52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b6a $BB5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b72 $BB62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b7a $BB6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b82 $BB72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b8a $BB7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b92 $BB82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3b9a $BB8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ba2 $BB92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3baa $BB9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bb2 $BBA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bba $BBAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bc2 $BBB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bca $BBBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bd2 $BBC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bda $BBCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3be2 $BBD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bea $BBDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bf2 $BBE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3bfa $BBEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c02 $BBF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c0a $BBFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c12 $BC02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c1a $BC0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c22 $BC12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c2a $BC1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c32 $BC22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c3a $BC2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c42 $BC32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c4a $BC3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c52 $BC42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c5a $BC4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c62 $BC52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c6a $BC5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c72 $BC62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c7a $BC6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c82 $BC72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c8a $BC7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c92 $BC82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3c9a $BC8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ca2 $BC92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3caa $BC9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cb2 $BCA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cba $BCAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cc2 $BCB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cca $BCBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cd2 $BCC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cda $BCCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ce2 $BCD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cea $BCDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cf2 $BCE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3cfa $BCEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d02 $BCF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d0a $BCFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d12 $BD02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d1a $BD0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d22 $BD12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d2a $BD1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d32 $BD22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d3a $BD2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d42 $BD32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d4a $BD3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d52 $BD42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d5a $BD4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d62 $BD52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d6a $BD5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d72 $BD62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d7a $BD6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d82 $BD72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d8a $BD7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d92 $BD82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3d9a $BD8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3da2 $BD92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3daa $BD9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3db2 $BDA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3dba $BDAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3dc2 $BDB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3dca $BDBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3dd2 $BDC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3dda $BDCA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3de2 $BDD2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3dea $BDDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3df2 $BDE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3dfa $BDEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e02 $BDF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e0a $BDFA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e12 $BE02 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e1a $BE0A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e22 $BE12 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e2a $BE1A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e32 $BE22 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e3a $BE2A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e42 $BE32 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e4a $BE3A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e52 $BE42 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e5a $BE4A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e62 $BE52 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e6a $BE5A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e72 $BE62 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e7a $BE6A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e82 $BE72 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e8a $BE7A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e92 $BE82 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3e9a $BE8A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ea2 $BE92 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3eaa $BE9A FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3eb2 $BEA2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3eba $BEAA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ec2 $BEB2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3eca $BEBA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ed2 $BEC2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3eda $BECA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ee2 $BED2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3eea $BEDA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ef2 $BEE2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3efa $BEEA FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f02 $BEF2 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF        ; 0x3f0a $BEFA FF FF FF FF FF FF        ;
LBF00:                                                                          ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f10 $BF00 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f18 $BF08 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f20 $BF10 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f28 $BF18 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f30 $BF20 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f38 $BF28 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f40 $BF30 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f48 $BF38 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f50 $BF40 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f58 $BF48 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f60 $BF50 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f68 $BF58 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f70 $BF60 FF FF FF FF FF FF FF FF  ;
.byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3f78 $BF68 FF FF FF FF FF FF FF FF  ;
; ---------------------------------------------------------------------------- ;
; bank0_ending_routines:                                                          ;
;     SEI                                ; 0x3f80 $BF70 78                       ;
;     CLD                                ; 0x3f81 $BF71 D8                       ;
;     LDX      #$00                      ; 0x3f82 $BF72 A2 00                    ; X = 00
;     STX      $2000                     ; 0x3f84 $BF74 8E 00 20                 ;
;     INX                                ; 0x3f87 $BF77 E8                       ;
; LBF78:                                                                          ;
;     LDA      $2002                     ; 0x3f88 $BF78 AD 02 20                 ;
;     BPL      LBF78                     ; 0x3f8b $BF7B 10 FB                    ;
;     DEX                                ; 0x3f8d $BF7D CA                       ;
;     BEQ      LBF78                     ; 0x3f8e $BF7E F0 F8                    ;
;     TXS                                ; 0x3f90 $BF80 9A                       ;
;     STX      Tables_for_Game_Over_screen_text; 0x3f91 $BF81 8E 00 80               ;
;     STX      LA000                     ; 0x3f94 $BF84 8E 00 A0                 ;
;     STX      bank7_PowerON_code        ; 0x3f97 $BF87 8E 00 C0                 ;
;     STX      LE000                     ; 0x3f9a $BF8A 8E 00 E0                 ;
;     LDA      #$0F                      ; 0x3f9d $BF8D A9 0F                    ; A = 0F
;     JSR      bank0_Set_Mapper_Parameters_at_0x8000; 0x3f9f $BF8F 20 9D BF          ;
;     JSR      bank0_Set_Mapper_Parameters_at_0xA000; 0x3fa2 $BF92 20 B1 BF          ;
;     LDA      #$07                      ; 0x3fa5 $BF95 A9 07                    ; A = 07
;     JSR      LBFCC                     ; 0x3fa7 $BF97 20 CC BF                 ;
;     JMP      bank7_PowerON_code        ; 0x3faa $BF9A 4C 00 C0                 ;
;                                                                                ;
; ; ---------------------------------------------------------------------------- ;
; bank0_Set_Mapper_Parameters_at_0x8000:                                          ;
;     STA      Tables_for_Game_Over_screen_text; 0x3fad $BF9D 8D 00 80               ;
;     LSR                                ; 0x3fb0 $BFA0 4A                       ;
;     STA      Tables_for_Game_Over_screen_text; 0x3fb1 $BFA1 8D 00 80               ;
;     LSR                                ; 0x3fb4 $BFA4 4A                       ;
;     STA      Tables_for_Game_Over_screen_text; 0x3fb5 $BFA5 8D 00 80               ;
;     LSR                                ; 0x3fb8 $BFA8 4A                       ;
;     STA      Tables_for_Game_Over_screen_text; 0x3fb9 $BFA9 8D 00 80               ;
;     LSR                                ; 0x3fbc $BFAC 4A                       ;
;     STA      Tables_for_Game_Over_screen_text; 0x3fbd $BFAD 8D 00 80               ;
;     RTS                                ; 0x3fc0 $BFB0 60                       ;
;                                                                                ;
; ; ---------------------------------------------------------------------------- ;
; bank0_Set_Mapper_Parameters_at_0xA000:                                          ;
;     STA      LA000                     ; 0x3fc1 $BFB1 8D 00 A0                 ;
;     LSR                                ; 0x3fc4 $BFB4 4A                       ;
;     STA      LA000                     ; 0x3fc5 $BFB5 8D 00 A0                 ;
;     LSR                                ; 0x3fc8 $BFB8 4A                       ;
;     STA      LA000                     ; 0x3fc9 $BFB9 8D 00 A0                 ;
;     LSR                                ; 0x3fcc $BFBC 4A                       ;
;     STA      LA000                     ; 0x3fcd $BFBD 8D 00 A0                 ;
;     LSR                                ; 0x3fd0 $BFC0 4A                       ;
;     STA      LA000                     ; 0x3fd1 $BFC1 8D 00 A0                 ;
;     RTS                                ; 0x3fd4 $BFC4 60                       ;
;                                                                                ;
; ; ---------------------------------------------------------------------------- ;
;     LDA      #$00                      ; 0x3fd5 $BFC5 A9 00                    ; A = 00
;     BEQ      LBFCC                     ; 0x3fd7 $BFC7 F0 03                    ;
;     LDA      $0769                     ; 0x3fd9 $BFC9 AD 69 07                 ;; Bank to switch to (other than 0 or 7)
; LBFCC:                                                                          ;
;     STA      LE000                     ; 0x3fdc $BFCC 8D 00 E0                 ;
;     LSR                                ; 0x3fdf $BFCF 4A                       ;
;     STA      LE000                     ; 0x3fe0 $BFD0 8D 00 E0                 ;
;     LSR                                ; 0x3fe3 $BFD3 4A                       ;
;     STA      LE000                     ; 0x3fe4 $BFD4 8D 00 E0                 ;
;     LSR                                ; 0x3fe7 $BFD7 4A                       ;
;     STA      LE000                     ; 0x3fe8 $BFD8 8D 00 E0                 ;
;     LSR                                ; 0x3feb $BFDB 4A                       ;
;     STA      LE000                     ; 0x3fec $BFDC 8D 00 E0                 ;
;     RTS                                ; 0x3fef $BFDF 60                       ;
;                                                                                ;
; ; ---------------------------------------------------------------------------- ;
; bank0_ending_bytes:                                                             ;
; .byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ff0 $BFE0 FF FF FF FF FF FF FF FF  ;
; .byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x3ff8 $BFE8 FF FF FF FF FF FF FF FF  ;
; .byt    $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF; 0x4000 $BFF0 FF FF FF FF FF FF FF FF  ;
; .byt    $FF,$FF,$7B,$C0,$70,$BF,$F0,$FF; 0x4008 $BFF8 FF FF 7B C0 70 BF F0 FF  ;
; ; ---------------------------------------------------------------------------- ;
;                                                                                ;
;                                                                                ;
