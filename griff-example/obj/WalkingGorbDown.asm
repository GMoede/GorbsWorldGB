;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module WalkingGorbDown
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WalkingGorbDown_metasprites
	.globl _WalkingGorbDown_metasprite9
	.globl _WalkingGorbDown_metasprite8
	.globl _WalkingGorbDown_metasprite7
	.globl _WalkingGorbDown_metasprite6
	.globl _WalkingGorbDown_metasprite5
	.globl _WalkingGorbDown_metasprite4
	.globl _WalkingGorbDown_metasprite3
	.globl _WalkingGorbDown_metasprite2
	.globl _WalkingGorbDown_metasprite1
	.globl _WalkingGorbDown_metasprite0
	.globl _WalkingGorbDown_tiles
	.globl _WalkingGorbDown_palettes
	.globl b___func_WalkingGorbDown
	.globl ___func_WalkingGorbDown
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;gen/WalkingGorbDown.c:7: BANKREF(WalkingGorbDown)
;	---------------------------------
; Function __func_WalkingGorbDown
; ---------------------------------
	b___func_WalkingGorbDown	= 0
___func_WalkingGorbDown::
	.local b___func_WalkingGorbDown 
	___bank_WalkingGorbDown = b___func_WalkingGorbDown 
	.globl ___bank_WalkingGorbDown 
	.area _CODE
_WalkingGorbDown_palettes:
	.dw #0x0000
	.dw #0x7e6c
	.dw #0x38e7
	.dw #0x11db
_WalkingGorbDown_tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0xc0	; 192
	.db #0x24	; 36
	.db #0xe0	; 224
	.db #0x54	; 84	'T'
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0xc0	; 192
	.db #0x24	; 36
	.db #0xe0	; 224
	.db #0x54	; 84	'T'
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xe8	; 232
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x03	; 3
	.db #0x6c	; 108	'l'
	.db #0x07	; 7
	.db #0x2a	; 42
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x03	; 3
	.db #0x4c	; 76	'L'
	.db #0x07	; 7
	.db #0x6a	; 106	'j'
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x06	; 6
	.db #0x19	; 25
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x1a	; 26
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x40	; 64
	.db #0xb0	; 176
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x1c	; 28
	.db #0x07	; 7
	.db #0x1a	; 26
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0x50	; 80	'P'
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x60	; 96
_WalkingGorbDown_metasprite0:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite1:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite2:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite3:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite4:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite5:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite6:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite7:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite8:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprite9:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_WalkingGorbDown_metasprites:
	.dw _WalkingGorbDown_metasprite0
	.dw _WalkingGorbDown_metasprite1
	.dw _WalkingGorbDown_metasprite2
	.dw _WalkingGorbDown_metasprite3
	.dw _WalkingGorbDown_metasprite4
	.dw _WalkingGorbDown_metasprite5
	.dw _WalkingGorbDown_metasprite6
	.dw _WalkingGorbDown_metasprite7
	.dw _WalkingGorbDown_metasprite8
	.dw _WalkingGorbDown_metasprite9
	.area _INITIALIZER
	.area _CABS (ABS)
