Title: Mario Hockey
CGB flag: Not used, old cartridge
SGB flag: SuperGameBoy not supported
Type: MBC1
ROM: 64KByte
RAM: None
Destination: non-Japanese
Version: 0x00
Header checksum: OK
Info: Bank switch to 2 at 0x00000339
Info: Bank switch to 1 at 0x00000358
Info: Bank switch to 2 at 0x000003F5
[0x00000404] Warning: Address too high, ignoring 0xFF80 (0x00013F80)
Info: Bank switch to 1 at 0x0000042F
Warning: RGBASM could not handle HALT instruction properly (0x0000019D)
Warning: RGBASM could not handle HALT instruction properly (0x000006B8)
[0x000000A1] 0x04           INC B
[0x000000A2] 0x0C           INC C
[0x000000A3] 0x18 0x0B      JR $0B ; 0xB0
[0x000000A5] 0xF3           DI
[0x000000A6] 0xF0 0x41      LDH A,[$41]
[0x000000A8] 0xE6 0x02      AND $02
[0x000000AA] 0x20 0xFA      JR NZ,$FA ; 0xA6
[0x000000AC] 0x2A           LD A,[HLI]
[0x000000AD] 0x12           LD [DE],A
[0x000000AE] 0xFB           EI
[0x000000AF] 0x13           INC DE
[0x000000B0] 0x0D           DEC C
[0x000000B1] 0x20 0xF2      JR NZ,$F2 ; 0xA5
[0x000000B3] 0x05           DEC B
[0x000000B4] 0x20 0xEF      JR NZ,$EF ; 0xA5
[0x000000B6] 0xC9           RET
[0x00000100] 0x00           NOP
[0x00000101] 0xC3 0x50 0x01 JP $0150
[0x00000150] 0x00           NOP
[0x00000151] 0xF3           DI
[0x00000152] 0x31 0xFF 0xFF LD SP,$FFFF
[0x00000155] 0xCD 0x84 0x06 CALL $0684
[0x00000158] 0x21 0x00 0xC0 LD HL,$C000
[0x0000015B] 0x11 0x68 0x06 LD DE,$0668
[0x0000015E] 0x3E 0xCD      LD A,$CD
[0x00000160] 0x22           LD [HLI],A
[0x00000161] 0x7B           LD A,E
[0x00000162] 0x22           LD [HLI],A
[0x00000163] 0x7A           LD A,D
[0x00000164] 0x22           LD [HLI],A
[0x00000165] 0xAF           XOR A
[0x00000166] 0x22           LD [HLI],A
[0x00000167] 0x22           LD [HLI],A
[0x00000168] 0x22           LD [HLI],A
[0x00000169] 0x3E 0xD9      LD A,$D9
[0x0000016B] 0x22           LD [HLI],A
[0x0000016C] 0xAF           XOR A
[0x0000016D] 0xEA 0x10 0xC0 LD [$C010],A
[0x00000170] 0x3E 0x01      LD A,$01
[0x00000172] 0xE0 0xFF      LDH [$FF],A
[0x00000174] 0xFB           EI
[0x00000175] 0x3E 0xE4      LD A,$E4
[0x00000177] 0xE0 0x47      LDH [$47],A
[0x00000179] 0x3E 0xE3      LD A,$E3
[0x0000017B] 0xE0 0x48      LDH [$48],A
[0x0000017D] 0xE0 0x49      LDH [$49],A
[0x0000017F] 0xAF           XOR A
[0x00000180] 0xE0 0x43      LDH [$43],A
[0x00000182] 0xE0 0x42      LDH [$42],A
[0x00000184] 0x3E 0x91      LD A,$91
[0x00000186] 0xE0 0x40      LDH [$40],A
[0x00000188] 0xCD 0xBF 0x06 CALL $06BF
[0x0000018B] 0xCD 0xA2 0x01 CALL $01A2
[0x0000018E] 0xCD 0xDF 0x01 CALL $01DF
[0x00000191] 0xCD 0x15 0x02 CALL $0215
[0x00000194] 0xCD 0x85 0x02 CALL $0285
[0x00000197] 0xCD 0x37 0x03 CALL $0337
[0x0000019A] 0xCD 0xF3 0x03 CALL $03F3
[0x0000019D] 0x76           HALT
[0x0000019E] 0x00           NOP
[0x0000019F] 0x00           NOP
[0x000001A0] 0x18 0xFB      JR $FB ; 0x19D
[0x000001A2] 0x3E 0xFF      LD A,$FF
[0x000001A4] 0xE0 0x47      LDH [$47],A
[0x000001A6] 0x21 0x40 0x42 LD HL,$4240
[0x000001A9] 0x11 0x00 0x80 LD DE,$8000
[0x000001AC] 0x01 0xE0 0x08 LD BC,$08E0
[0x000001AF] 0xCD 0xA1 0x00 CALL $00A1
[0x000001B2] 0x3E 0x00      LD A,$00
[0x000001B4] 0x11 0x00 0x98 LD DE,$9800
[0x000001B7] 0x21 0x00 0x40 LD HL,$4000
[0x000001BA] 0x01 0x00 0x04 LD BC,$0400
[0x000001BD] 0xCD 0xA1 0x00 CALL $00A1
[0x000001C0] 0xCD 0x61 0x06 CALL $0661
[0x000001C3] 0x11 0xBF 0x05 LD DE,$05BF
[0x000001C6] 0xCD 0x8C 0x06 CALL $068C
[0x000001C9] 0xCD 0xA5 0x06 CALL $06A5
[0x000001CC] 0x11 0x43 0x06 LD DE,$0643
[0x000001CF] 0xCD 0x8C 0x06 CALL $068C
[0x000001D2] 0xCD 0xA5 0x06 CALL $06A5
[0x000001D5] 0x11 0x00 0x06 LD DE,$0600
[0x000001D8] 0xCD 0x8C 0x06 CALL $068C
[0x000001DB] 0xCD 0xA5 0x06 CALL $06A5
[0x000001DE] 0xC9           RET
[0x000001DF] 0x21 0x60 0x4D LD HL,$4D60
[0x000001E2] 0x11 0x00 0x80 LD DE,$8000
[0x000001E5] 0x01 0x40 0x0C LD BC,$0C40
[0x000001E8] 0xCD 0xA1 0x00 CALL $00A1
[0x000001EB] 0x3E 0x00      LD A,$00
[0x000001ED] 0x11 0x00 0x98 LD DE,$9800
[0x000001F0] 0x21 0x20 0x4B LD HL,$4B20
[0x000001F3] 0x01 0x00 0x04 LD BC,$0400
[0x000001F6] 0xCD 0xA1 0x00 CALL $00A1
[0x000001F9] 0x11 0xBF 0x05 LD DE,$05BF
[0x000001FC] 0xCD 0x8C 0x06 CALL $068C
[0x000001FF] 0xCD 0xA5 0x06 CALL $06A5
[0x00000202] 0x11 0x43 0x06 LD DE,$0643
[0x00000205] 0xCD 0x8C 0x06 CALL $068C
[0x00000208] 0xCD 0xA5 0x06 CALL $06A5
[0x0000020B] 0x11 0x00 0x06 LD DE,$0600
[0x0000020E] 0xCD 0x8C 0x06 CALL $068C
[0x00000211] 0xCD 0xA5 0x06 CALL $06A5
[0x00000214] 0xC9           RET
[0x00000215] 0x21 0xA0 0x5D LD HL,$5DA0
[0x00000218] 0x11 0x00 0x80 LD DE,$8000
[0x0000021B] 0x01 0xB0 0x0B LD BC,$0BB0
[0x0000021E] 0xCD 0xA1 0x00 CALL $00A1
[0x00000221] 0x3E 0x00      LD A,$00
[0x00000223] 0x11 0x00 0x98 LD DE,$9800
[0x00000226] 0x21 0xA0 0x59 LD HL,$59A0
[0x00000229] 0x01 0x00 0x04 LD BC,$0400
[0x0000022C] 0xCD 0xA1 0x00 CALL $00A1
[0x0000022F] 0x3E 0x25      LD A,$25
[0x00000231] 0xE0 0x43      LDH [$43],A
[0x00000233] 0x3E 0x4A      LD A,$4A
[0x00000235] 0xE0 0x42      LDH [$42],A
[0x00000237] 0x11 0xBF 0x05 LD DE,$05BF
[0x0000023A] 0xCD 0x8C 0x06 CALL $068C
[0x0000023D] 0xCD 0xA5 0x06 CALL $06A5
[0x00000240] 0x11 0x5C 0x02 LD DE,$025C
[0x00000243] 0xCD 0x8C 0x06 CALL $068C
[0x00000246] 0xCD 0xA5 0x06 CALL $06A5
[0x00000249] 0x11 0x43 0x06 LD DE,$0643
[0x0000024C] 0xCD 0x8C 0x06 CALL $068C
[0x0000024F] 0xCD 0xA5 0x06 CALL $06A5
[0x00000252] 0x11 0x00 0x06 LD DE,$0600
[0x00000255] 0xCD 0x8C 0x06 CALL $068C
[0x00000258] 0xCD 0xA5 0x06 CALL $06A5
[0x0000025B] 0xC9           RET
[0x00000285] 0x21 0x50 0x6D LD HL,$6D50
[0x00000288] 0x11 0x00 0x80 LD DE,$8000
[0x0000028B] 0x01 0xA0 0x0C LD BC,$0CA0
[0x0000028E] 0xCD 0xA1 0x00 CALL $00A1
[0x00000291] 0x3E 0x00      LD A,$00
[0x00000293] 0x11 0x00 0x98 LD DE,$9800
[0x00000296] 0x21 0x50 0x69 LD HL,$6950
[0x00000299] 0x01 0x00 0x04 LD BC,$0400
[0x0000029C] 0xCD 0xA1 0x00 CALL $00A1
[0x0000029F] 0x3E 0xE4      LD A,$E4
[0x000002A1] 0xE0 0x47      LDH [$47],A
[0x000002A3] 0xCD 0x9B 0x06 CALL $069B
[0x000002A6] 0xF0 0x44      LDH A,[$44]
[0x000002A8] 0xFE 0x91      CP $91
[0x000002AA] 0x38 0xFA      JR C,$FA ; 0x2A6
[0x000002AC] 0x3E 0x20      LD A,$20
[0x000002AE] 0xEA 0x13 0xC0 LD [$C013],A
[0x000002B1] 0x3E 0xE0      LD A,$E0
[0x000002B3] 0xEA 0x14 0xC0 LD [$C014],A
[0x000002B6] 0xAF           XOR A
[0x000002B7] 0xE0 0x43      LDH [$43],A
[0x000002B9] 0xCD 0x84 0x06 CALL $0684
[0x000002BC] 0x3E 0x01      LD A,$01
[0x000002BE] 0xEA 0x10 0xC0 LD [$C010],A
[0x000002C1] 0xF0 0x44      LDH A,[$44]
[0x000002C3] 0xFE 0x30      CP $30
[0x000002C5] 0x38 0xFA      JR C,$FA ; 0x2C1
[0x000002C7] 0xFA 0x13 0xC0 LD A,[$C013]
[0x000002CA] 0xE0 0x43      LDH [$43],A
[0x000002CC] 0xF0 0x44      LDH A,[$44]
[0x000002CE] 0xFE 0x40      CP $40
[0x000002D0] 0x38 0xFA      JR C,$FA ; 0x2CC
[0x000002D2] 0xFA 0x14 0xC0 LD A,[$C014]
[0x000002D5] 0xE0 0x43      LDH [$43],A
[0x000002D7] 0xF0 0x44      LDH A,[$44]
[0x000002D9] 0xFE 0x50      CP $50
[0x000002DB] 0x38 0xFA      JR C,$FA ; 0x2D7
[0x000002DD] 0xFA 0x13 0xC0 LD A,[$C013]
[0x000002E0] 0xE0 0x43      LDH [$43],A
[0x000002E2] 0xF0 0x44      LDH A,[$44]
[0x000002E4] 0xFE 0x60      CP $60
[0x000002E6] 0x38 0xFA      JR C,$FA ; 0x2E2
[0x000002E8] 0xFA 0x14 0xC0 LD A,[$C014]
[0x000002EB] 0xE0 0x43      LDH [$43],A
[0x000002ED] 0xF0 0x44      LDH A,[$44]
[0x000002EF] 0xFE 0x70      CP $70
[0x000002F1] 0x38 0xFA      JR C,$FA ; 0x2ED
[0x000002F3] 0xFA 0x13 0xC0 LD A,[$C013]
[0x000002F6] 0xE0 0x43      LDH [$43],A
[0x000002F8] 0xF0 0x44      LDH A,[$44]
[0x000002FA] 0xFE 0x91      CP $91
[0x000002FC] 0x38 0xFA      JR C,$FA ; 0x2F8
[0x000002FE] 0xFA 0x14 0xC0 LD A,[$C014]
[0x00000301] 0xE0 0x43      LDH [$43],A
[0x00000303] 0xF0 0x44      LDH A,[$44]
[0x00000305] 0xFE 0x01      CP $01
[0x00000307] 0x20 0xFA      JR NZ,$FA ; 0x303
[0x00000309] 0xFA 0x13 0xC0 LD A,[$C013]
[0x0000030C] 0x3D           DEC A
[0x0000030D] 0x3D           DEC A
[0x0000030E] 0xFE 0x00      CP $00
[0x00000310] 0xCA 0x21 0x03 JP Z,$0321
[0x00000313] 0xEA 0x13 0xC0 LD [$C013],A
[0x00000316] 0xFA 0x14 0xC0 LD A,[$C014]
[0x00000319] 0x3C           INC A
[0x0000031A] 0x3C           INC A
[0x0000031B] 0xEA 0x14 0xC0 LD [$C014],A
[0x0000031E] 0xC3 0xC1 0x02 JP $02C1
[0x00000321] 0x11 0x43 0x06 LD DE,$0643
[0x00000324] 0xCD 0x8C 0x06 CALL $068C
[0x00000327] 0xCD 0xA5 0x06 CALL $06A5
[0x0000032A] 0xCD 0xA5 0x06 CALL $06A5
[0x0000032D] 0x11 0x00 0x06 LD DE,$0600
[0x00000330] 0xCD 0x8C 0x06 CALL $068C
[0x00000333] 0xCD 0xA5 0x06 CALL $06A5
[0x00000336] 0xC9           RET
[0x00000337] 0x3E 0x02      LD A,$02
[0x00000339] 0xEA 0x00 0x20 LD [$2000],A
[0x0000033C] 0x21 0x80 0x42 LD HL,$4280
[0x0000033F] 0x11 0x00 0x80 LD DE,$8000
[0x00000342] 0x01 0x60 0x0C LD BC,$0C60
[0x00000345] 0xCD 0xA1 0x00 CALL $00A1
[0x00000348] 0x3E 0x00      LD A,$00
[0x0000034A] 0x11 0x00 0x98 LD DE,$9800
[0x0000034D] 0x21 0x00 0x40 LD HL,$4000
[0x00000350] 0x01 0x00 0x04 LD BC,$0400
[0x00000353] 0xCD 0xA1 0x00 CALL $00A1
[0x00000356] 0x3E 0x01      LD A,$01
[0x00000358] 0xEA 0x00 0x20 LD [$2000],A
[0x0000035B] 0x3E 0xE4      LD A,$E4
[0x0000035D] 0xE0 0x47      LDH [$47],A
[0x0000035F] 0xCD 0x9B 0x06 CALL $069B
[0x00000362] 0xF0 0x44      LDH A,[$44]
[0x00000364] 0xFE 0x91      CP $91
[0x00000366] 0x38 0xFA      JR C,$FA ; 0x362
[0x00000368] 0x3E 0x20      LD A,$20
[0x0000036A] 0xEA 0x13 0xC0 LD [$C013],A
[0x0000036D] 0x3E 0xE0      LD A,$E0
[0x0000036F] 0xEA 0x14 0xC0 LD [$C014],A
[0x00000372] 0xAF           XOR A
[0x00000373] 0xE0 0x43      LDH [$43],A
[0x00000375] 0xCD 0x84 0x06 CALL $0684
[0x00000378] 0x3E 0x01      LD A,$01
[0x0000037A] 0xEA 0x10 0xC0 LD [$C010],A
[0x0000037D] 0xF0 0x44      LDH A,[$44]
[0x0000037F] 0xFE 0x30      CP $30
[0x00000381] 0x38 0xFA      JR C,$FA ; 0x37D
[0x00000383] 0xFA 0x13 0xC0 LD A,[$C013]
[0x00000386] 0xE0 0x43      LDH [$43],A
[0x00000388] 0xF0 0x44      LDH A,[$44]
[0x0000038A] 0xFE 0x40      CP $40
[0x0000038C] 0x38 0xFA      JR C,$FA ; 0x388
[0x0000038E] 0xFA 0x14 0xC0 LD A,[$C014]
[0x00000391] 0xE0 0x43      LDH [$43],A
[0x00000393] 0xF0 0x44      LDH A,[$44]
[0x00000395] 0xFE 0x50      CP $50
[0x00000397] 0x38 0xFA      JR C,$FA ; 0x393
[0x00000399] 0xFA 0x13 0xC0 LD A,[$C013]
[0x0000039C] 0xE0 0x43      LDH [$43],A
[0x0000039E] 0xF0 0x44      LDH A,[$44]
[0x000003A0] 0xFE 0x60      CP $60
[0x000003A2] 0x38 0xFA      JR C,$FA ; 0x39E
[0x000003A4] 0xFA 0x14 0xC0 LD A,[$C014]
[0x000003A7] 0xE0 0x43      LDH [$43],A
[0x000003A9] 0xF0 0x44      LDH A,[$44]
[0x000003AB] 0xFE 0x70      CP $70
[0x000003AD] 0x38 0xFA      JR C,$FA ; 0x3A9
[0x000003AF] 0xFA 0x13 0xC0 LD A,[$C013]
[0x000003B2] 0xE0 0x43      LDH [$43],A
[0x000003B4] 0xF0 0x44      LDH A,[$44]
[0x000003B6] 0xFE 0x91      CP $91
[0x000003B8] 0x38 0xFA      JR C,$FA ; 0x3B4
[0x000003BA] 0xFA 0x14 0xC0 LD A,[$C014]
[0x000003BD] 0xE0 0x43      LDH [$43],A
[0x000003BF] 0xF0 0x44      LDH A,[$44]
[0x000003C1] 0xFE 0x01      CP $01
[0x000003C3] 0x20 0xFA      JR NZ,$FA ; 0x3BF
[0x000003C5] 0xFA 0x13 0xC0 LD A,[$C013]
[0x000003C8] 0x3D           DEC A
[0x000003C9] 0x3D           DEC A
[0x000003CA] 0xFE 0x00      CP $00
[0x000003CC] 0xCA 0xDD 0x03 JP Z,$03DD
[0x000003CF] 0xEA 0x13 0xC0 LD [$C013],A
[0x000003D2] 0xFA 0x14 0xC0 LD A,[$C014]
[0x000003D5] 0x3C           INC A
[0x000003D6] 0x3C           INC A
[0x000003D7] 0xEA 0x14 0xC0 LD [$C014],A
[0x000003DA] 0xC3 0x7D 0x03 JP $037D
[0x000003DD] 0x11 0x43 0x06 LD DE,$0643
[0x000003E0] 0xCD 0x8C 0x06 CALL $068C
[0x000003E3] 0xCD 0xA5 0x06 CALL $06A5
[0x000003E6] 0xCD 0xA5 0x06 CALL $06A5
[0x000003E9] 0x11 0x00 0x06 LD DE,$0600
[0x000003EC] 0xCD 0x8C 0x06 CALL $068C
[0x000003EF] 0xCD 0xA5 0x06 CALL $06A5
[0x000003F2] 0xC9           RET
[0x000003F3] 0x3E 0x02      LD A,$02
[0x000003F5] 0xEA 0x00 0x20 LD [$2000],A
[0x000003F8] 0x21 0xE0 0x4E LD HL,$4EE0
[0x000003FB] 0x11 0x00 0xC2 LD DE,$C200
[0x000003FE] 0x01 0xA0 0x00 LD BC,$00A0
[0x00000401] 0xCD 0xA1 0x00 CALL $00A1
[0x00000404] 0xCD 0x80 0xFF CALL $FF80
[0x00000407] 0x21 0xD4 0x4F LD HL,$4FD4
[0x0000040A] 0x11 0x10 0x88 LD DE,$8810
[0x0000040D] 0x01 0x60 0x02 LD BC,$0260
[0x00000410] 0xCD 0xA1 0x00 CALL $00A1
[0x00000413] 0x21 0xB4 0x54 LD HL,$54B4
[0x00000416] 0x11 0x00 0x80 LD DE,$8000
[0x00000419] 0x01 0x10 0x08 LD BC,$0810
[0x0000041C] 0xCD 0xA1 0x00 CALL $00A1
[0x0000041F] 0x3E 0x00      LD A,$00
[0x00000421] 0x11 0x00 0x98 LD DE,$9800
[0x00000424] 0x21 0x34 0x52 LD HL,$5234
[0x00000427] 0x01 0x00 0x04 LD BC,$0400
[0x0000042A] 0xCD 0xA1 0x00 CALL $00A1
[0x0000042D] 0x3E 0x01      LD A,$01
[0x0000042F] 0xEA 0x00 0x20 LD [$2000],A
[0x00000432] 0x3E 0xA0      LD A,$A0
[0x00000434] 0xE0 0x43      LDH [$43],A
[0x00000436] 0x3E 0x00      LD A,$00
[0x00000438] 0xE0 0x42      LDH [$42],A
[0x0000043A] 0x3E 0x93      LD A,$93
[0x0000043C] 0xE0 0x40      LDH [$40],A
[0x0000043E] 0x11 0xBF 0x05 LD DE,$05BF
[0x00000441] 0xCD 0x8C 0x06 CALL $068C
[0x00000444] 0xCD 0xA5 0x06 CALL $06A5
[0x00000447] 0x11 0x63 0x04 LD DE,$0463
[0x0000044A] 0xCD 0x8C 0x06 CALL $068C
[0x0000044D] 0xCD 0xA5 0x06 CALL $06A5
[0x00000450] 0x11 0x43 0x06 LD DE,$0643
[0x00000453] 0xCD 0x8C 0x06 CALL $068C
[0x00000456] 0xCD 0xA5 0x06 CALL $06A5
[0x00000459] 0x11 0x00 0x06 LD DE,$0600
[0x0000045C] 0xCD 0x8C 0x06 CALL $068C
[0x0000045F] 0xCD 0xA5 0x06 CALL $06A5
[0x00000462] 0xC9           RET
[0x00000661] 0xF0 0x40      LDH A,[$40]
[0x00000663] 0xCB 0xFF      SET 7,A
[0x00000665] 0xE0 0x40      LDH [$40],A
[0x00000667] 0xC9           RET
[0x00000684] 0xAF           XOR A
[0x00000685] 0xEA 0x11 0xC0 LD [$C011],A
[0x00000688] 0xEA 0x12 0xC0 LD [$C012],A
[0x0000068B] 0xC9           RET
[0x0000068C] 0xE5           PUSH HL
[0x0000068D] 0xF5           PUSH AF
[0x0000068E] 0x21 0x03 0xC0 LD HL,$C003
[0x00000691] 0x3E 0xCD      LD A,$CD
[0x00000693] 0x22           LD [HLI],A
[0x00000694] 0x7B           LD A,E
[0x00000695] 0x22           LD [HLI],A
[0x00000696] 0x7A           LD A,D
[0x00000697] 0x22           LD [HLI],A
[0x00000698] 0xF1           POP AF
[0x00000699] 0xE1           POP HL
[0x0000069A] 0xC9           RET
[0x0000069B] 0xE5           PUSH HL
[0x0000069C] 0x21 0x03 0xC0 LD HL,$C003
[0x0000069F] 0xAF           XOR A
[0x000006A0] 0x22           LD [HLI],A
[0x000006A1] 0x22           LD [HLI],A
[0x000006A2] 0x22           LD [HLI],A
[0x000006A3] 0xE1           POP HL
[0x000006A4] 0xC9           RET
[0x000006A5] 0xAF           XOR A
[0x000006A6] 0xEA 0x11 0xC0 LD [$C011],A
[0x000006A9] 0xEA 0x12 0xC0 LD [$C012],A
[0x000006AC] 0x3C           INC A
[0x000006AD] 0xEA 0x10 0xC0 LD [$C010],A
[0x000006B0] 0xFA 0x10 0xC0 LD A,[$C010]
[0x000006B3] 0xFE 0x00      CP $00
[0x000006B5] 0xCA 0xBE 0x06 JP Z,$06BE
[0x000006B8] 0x76           HALT
[0x000006B9] 0x00           NOP
[0x000006BA] 0x00           NOP
[0x000006BB] 0xC3 0xB0 0x06 JP $06B0
[0x000006BE] 0xC9           RET
[0x000006BF] 0x0E 0x80      LD C,$80
[0x000006C1] 0x06 0x0A      LD B,$0A
[0x000006C3] 0x21 0xCD 0x06 LD HL,$06CD
[0x000006C6] 0x2A           LD A,[HLI]
[0x000006C7] 0xE2           LD [C],A
[0x000006C8] 0x0C           INC C
[0x000006C9] 0x05           DEC B
[0x000006CA] 0x20 0xFA      JR NZ,$FA ; 0x6C6
[0x000006CC] 0xC9           RET
