;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.1 #15267 (Mac OS X ppc)
;--------------------------------------------------------
	.module megaduck_key2ascii
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scancode_to_ascii_LUT_spanish
	.globl _duck_io_scancode_to_ascii
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
;src/megaduck_key2ascii.c:296: char duck_io_scancode_to_ascii(const uint8_t key_code, const uint8_t megaduck_model) {
;	---------------------------------
; Function duck_io_scancode_to_ascii
; ---------------------------------
_duck_io_scancode_to_ascii::
	ld	c, a
;src/megaduck_key2ascii.c:298: char ascii_char = scancode_to_ascii_LUT_spanish[key_code];
	ld	hl, #_scancode_to_ascii_LUT_spanish
	ld	b, #0x00
	add	hl, bc
	ld	c, (hl)
;src/megaduck_key2ascii.c:301: if (megaduck_model == MEGADUCK_LAPTOP_GERMAN)
	ld	a, e
	sub	a, #0x02
	jr	NZ, 00113$
;src/megaduck_key2ascii.c:302: switch (ascii_char) {
	ld	a,c
	cp	a,#0xc3
	jr	Z, 00102$
	cp	a,#0x27
	jr	Z, 00101$
	cp	a,#0x2d
	jr	Z, 00110$
	cp	a,#0x59
	jr	Z, 00107$
	cp	a,#0x5a
	jr	Z, 00109$
	cp	a,#0x5b
	jr	Z, 00104$
	cp	a,#0x5d
	jr	Z, 00105$
	cp	a,#0x60
	jr	Z, 00104$
	cp	a,#0x79
	jr	Z, 00106$
	sub	a, #0x7a
	jr	Z, 00108$
	jr	00113$
;src/megaduck_key2ascii.c:305: case '\'': ascii_char = 'ß'; break;
00101$:
	ld	c, #0xc3
	jr	00113$
;src/megaduck_key2ascii.c:308: case '÷':  ascii_char = ':'; break;
00102$:
	ld	c, #0x3a
	jr	00113$
;src/megaduck_key2ascii.c:311: case '`':  ascii_char = 'Ü'; break;
00104$:
	ld	c, #0xc3
	jr	00113$
;src/megaduck_key2ascii.c:312: case ']':  ascii_char = '·'; break;
00105$:
	ld	c, #0xc2
	jr	00113$
;src/megaduck_key2ascii.c:313: case 'y':  ascii_char = 'z'; break;
00106$:
	ld	c, #0x7a
	jr	00113$
;src/megaduck_key2ascii.c:314: case 'Y':  ascii_char = 'Z'; break;
00107$:
	ld	c, #0x5a
	jr	00113$
;src/megaduck_key2ascii.c:323: case 'z':  ascii_char = 'y'; break;
00108$:
	ld	c, #0x79
	jr	00113$
;src/megaduck_key2ascii.c:324: case 'Z':  ascii_char = 'Y'; break;
00109$:
	ld	c, #0x59
	jr	00113$
;src/megaduck_key2ascii.c:325: case '-':  ascii_char = '@'; break;
00110$:
	ld	c, #0x40
;src/megaduck_key2ascii.c:326: }
00113$:
;src/megaduck_key2ascii.c:328: return ascii_char;
	ld	a, c
;src/megaduck_key2ascii.c:329: }
	ret
_scancode_to_ascii_LUT_spanish:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x21	;  33
	.db #0x51	;  81	'Q'
	.db #0x41	;  65	'A'
	.db #0x00	;  0
	.db #0x22	;  34
	.db #0x57	;  87	'W'
	.db #0x53	;  83	'S'
	.db #0x00	;  0
	.db #0xc2	; -62
	.db #0x45	;  69	'E'
	.db #0x44	;  68	'D'
	.db #0x00	;  0
	.db #0x24	;  36
	.db #0x52	;  82	'R'
	.db #0x46	;  70	'F'
	.db #0x00	;  0
	.db #0x25	;  37
	.db #0x54	;  84	'T'
	.db #0x47	;  71	'G'
	.db #0x00	;  0
	.db #0x26	;  38
	.db #0x59	;  89	'Y'
	.db #0x48	;  72	'H'
	.db #0x00	;  0
	.db #0x2f	;  47
	.db #0x55	;  85	'U'
	.db #0x4a	;  74	'J'
	.db #0x00	;  0
	.db #0x28	;  40
	.db #0x49	;  73	'I'
	.db #0x4b	;  75	'K'
	.db #0x00	;  0
	.db #0x29	;  41
	.db #0x4f	;  79	'O'
	.db #0x4c	;  76	'L'
	.db #0x00	;  0
	.db #0x5c	;  92
	.db #0x50	;  80	'P'
	.db #0xc3	; -61
	.db #0x00	;  0
	.db #0x3f	;  63
	.db #0x5b	;  91
	.db #0xc3	; -61
	.db #0x00	;  0
	.db #0xc2	; -62
	.db #0x2a	;  42
	.db #0xc2	; -62
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x5a	;  90	'Z'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x58	;  88	'X'
	.db #0x3e	;  62
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x43	;  67	'C'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x56	;  86	'V'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x42	;  66	'B'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x4e	;  78	'N'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x4d	;  77	'M'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x3b	;  59
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x3a	;  58
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x5f	;  95
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x1b	;  27
	.db #0x05	;  5
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x31	;  49	'1'
	.db #0x71	;  113	'q'
	.db #0x61	;  97	'a'
	.db #0x00	;  0
	.db #0x32	;  50	'2'
	.db #0x77	;  119	'w'
	.db #0x73	;  115	's'
	.db #0x00	;  0
	.db #0x33	;  51	'3'
	.db #0x65	;  101	'e'
	.db #0x64	;  100	'd'
	.db #0x00	;  0
	.db #0x34	;  52	'4'
	.db #0x72	;  114	'r'
	.db #0x66	;  102	'f'
	.db #0x00	;  0
	.db #0x35	;  53	'5'
	.db #0x74	;  116	't'
	.db #0x67	;  103	'g'
	.db #0x00	;  0
	.db #0x36	;  54	'6'
	.db #0x79	;  121	'y'
	.db #0x68	;  104	'h'
	.db #0x00	;  0
	.db #0x37	;  55	'7'
	.db #0x75	;  117	'u'
	.db #0x6a	;  106	'j'
	.db #0x00	;  0
	.db #0x38	;  56	'8'
	.db #0x69	;  105	'i'
	.db #0x6b	;  107	'k'
	.db #0x00	;  0
	.db #0x39	;  57	'9'
	.db #0x6f	;  111	'o'
	.db #0x6c	;  108	'l'
	.db #0x00	;  0
	.db #0x30	;  48	'0'
	.db #0x70	;  112	'p'
	.db #0xc3	; -61
	.db #0x00	;  0
	.db #0x27	;  39
	.db #0x60	;  96
	.db #0xc3	; -61
	.db #0x00	;  0
	.db #0xc2	; -62
	.db #0x5d	;  93
	.db #0xc2	; -62
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0d	;  13
	.db #0x00	;  0
	.db #0x7a	;  122	'z'
	.db #0x20	;  32
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x78	;  120	'x'
	.db #0x3c	;  60
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x63	;  99	'c'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x76	;  118	'v'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x62	;  98	'b'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x6e	;  110	'n'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x6d	;  109	'm'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x2c	;  44
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x2e	;  46
	.db #0x2a	;  42
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x2d	;  45
	.db #0x02	;  2
	.db #0x06	;  6
	.db #0x00	;  0
	.db #0x7f	;  127
	.db #0x2d	;  45
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0xc3	; -61
	.db #0x04	;  4
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x3d	;  61
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x2b	;  43
	.db #0x03	;  3
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x74	;  116	't'
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
