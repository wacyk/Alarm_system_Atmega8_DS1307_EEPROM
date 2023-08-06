
_send_cmd_lcd:

;123.c,60 :: 		void send_cmd_lcd(char cmd){
;123.c,61 :: 		RS = 0;
	IN         R27, PORTB+0
	CBR        R27, 8
	OUT        PORTB+0, R27
;123.c,62 :: 		E = 1;
	IN         R27, PORTD+0
	SBR        R27, 2
	OUT        PORTD+0, R27
;123.c,63 :: 		data0=(cmd & (1<<0)) ? 1 : 0 ;
	BST        R2, 0
	BRTS       L__send_cmd_lcd232
	JMP        L_send_cmd_lcd0
L__send_cmd_lcd232:
	LDI        R16, 1
	JMP        L_send_cmd_lcd1
L_send_cmd_lcd0:
	LDI        R16, 0
L_send_cmd_lcd1:
	BST        R16, 0
	IN         R27, PORTB+0
	BLD        R27, 2
	OUT        PORTB+0, R27
;123.c,64 :: 		data1=(cmd & (1<<1)) ? 1 : 0 ;
	BST        R2, 1
	BRTS       L__send_cmd_lcd233
	JMP        L_send_cmd_lcd2
L__send_cmd_lcd233:
	LDI        R16, 1
	JMP        L_send_cmd_lcd3
L_send_cmd_lcd2:
	LDI        R16, 0
L_send_cmd_lcd3:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 2
	OUT        PORTD+0, R27
;123.c,65 :: 		data2=(cmd & (1<<2)) ? 1 : 0 ;
	BST        R2, 2
	BRTS       L__send_cmd_lcd234
	JMP        L_send_cmd_lcd4
L__send_cmd_lcd234:
	LDI        R16, 1
	JMP        L_send_cmd_lcd5
L_send_cmd_lcd4:
	LDI        R16, 0
L_send_cmd_lcd5:
	BST        R16, 0
	IN         R27, PORTB+0
	BLD        R27, 0
	OUT        PORTB+0, R27
;123.c,66 :: 		data3=(cmd & (1<<3)) ? 1 : 0 ;
	BST        R2, 3
	BRTS       L__send_cmd_lcd235
	JMP        L_send_cmd_lcd6
L__send_cmd_lcd235:
	LDI        R16, 1
	JMP        L_send_cmd_lcd7
L_send_cmd_lcd6:
	LDI        R16, 0
L_send_cmd_lcd7:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 3
	OUT        PORTD+0, R27
;123.c,67 :: 		data4=(cmd & (1<<4)) ? 1 : 0 ;
	BST        R2, 4
	BRTS       L__send_cmd_lcd236
	JMP        L_send_cmd_lcd8
L__send_cmd_lcd236:
	LDI        R16, 1
	JMP        L_send_cmd_lcd9
L_send_cmd_lcd8:
	LDI        R16, 0
L_send_cmd_lcd9:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 7
	OUT        PORTD+0, R27
;123.c,68 :: 		data5=(cmd & (1<<5)) ? 1 : 0 ;
	BST        R2, 5
	BRTS       L__send_cmd_lcd237
	JMP        L_send_cmd_lcd10
L__send_cmd_lcd237:
	LDI        R16, 1
	JMP        L_send_cmd_lcd11
L_send_cmd_lcd10:
	LDI        R16, 0
L_send_cmd_lcd11:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 4
	OUT        PORTD+0, R27
;123.c,69 :: 		data6=(cmd & (1<<6)) ? 1 : 0 ;
	BST        R2, 6
	BRTS       L__send_cmd_lcd238
	JMP        L_send_cmd_lcd12
L__send_cmd_lcd238:
	LDI        R16, 1
	JMP        L_send_cmd_lcd13
L_send_cmd_lcd12:
	LDI        R16, 0
L_send_cmd_lcd13:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 6
	OUT        PORTD+0, R27
;123.c,70 :: 		data7=(cmd & (1<<7)) ? 1 : 0 ;
	BST        R2, 7
	BRTS       L__send_cmd_lcd239
	JMP        L_send_cmd_lcd14
L__send_cmd_lcd239:
	LDI        R16, 1
	JMP        L_send_cmd_lcd15
L_send_cmd_lcd14:
	LDI        R16, 0
L_send_cmd_lcd15:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 5
	OUT        PORTD+0, R27
;123.c,71 :: 		delay_us(250);
	LDI        R17, lo_addr(R3)
	LDI        R16, 152
L_send_cmd_lcd16:
	DEC        R16
	BRNE       L_send_cmd_lcd16
	DEC        R17
	BRNE       L_send_cmd_lcd16
	NOP
;123.c,72 :: 		E = 0;
	IN         R27, PORTD+0
	CBR        R27, 2
	OUT        PORTD+0, R27
;123.c,73 :: 		delay_us(250);
	LDI        R17, lo_addr(R3)
	LDI        R16, 152
L_send_cmd_lcd18:
	DEC        R16
	BRNE       L_send_cmd_lcd18
	DEC        R17
	BRNE       L_send_cmd_lcd18
	NOP
;123.c,74 :: 		}
L_end_send_cmd_lcd:
	RET
; end of _send_cmd_lcd

_send_data_lcd:

;123.c,76 :: 		void send_data_lcd(char cmd){
;123.c,77 :: 		RS = 1;
	IN         R27, PORTB+0
	SBR        R27, 8
	OUT        PORTB+0, R27
;123.c,78 :: 		E = 1;
	IN         R27, PORTD+0
	SBR        R27, 2
	OUT        PORTD+0, R27
;123.c,79 :: 		data0=(cmd & (1<<0)) ? 1 : 0 ;
	BST        R2, 0
	BRTS       L__send_data_lcd241
	JMP        L_send_data_lcd20
L__send_data_lcd241:
	LDI        R16, 1
	JMP        L_send_data_lcd21
L_send_data_lcd20:
	LDI        R16, 0
L_send_data_lcd21:
	BST        R16, 0
	IN         R27, PORTB+0
	BLD        R27, 2
	OUT        PORTB+0, R27
;123.c,80 :: 		data1=(cmd & (1<<1)) ? 1 : 0 ;
	BST        R2, 1
	BRTS       L__send_data_lcd242
	JMP        L_send_data_lcd22
L__send_data_lcd242:
	LDI        R16, 1
	JMP        L_send_data_lcd23
L_send_data_lcd22:
	LDI        R16, 0
L_send_data_lcd23:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 2
	OUT        PORTD+0, R27
;123.c,81 :: 		data2=(cmd & (1<<2)) ? 1 : 0 ;
	BST        R2, 2
	BRTS       L__send_data_lcd243
	JMP        L_send_data_lcd24
L__send_data_lcd243:
	LDI        R16, 1
	JMP        L_send_data_lcd25
L_send_data_lcd24:
	LDI        R16, 0
L_send_data_lcd25:
	BST        R16, 0
	IN         R27, PORTB+0
	BLD        R27, 0
	OUT        PORTB+0, R27
;123.c,82 :: 		data3=(cmd & (1<<3)) ? 1 : 0 ;
	BST        R2, 3
	BRTS       L__send_data_lcd244
	JMP        L_send_data_lcd26
L__send_data_lcd244:
	LDI        R16, 1
	JMP        L_send_data_lcd27
L_send_data_lcd26:
	LDI        R16, 0
L_send_data_lcd27:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 3
	OUT        PORTD+0, R27
;123.c,83 :: 		data4=(cmd & (1<<4)) ? 1 : 0 ;
	BST        R2, 4
	BRTS       L__send_data_lcd245
	JMP        L_send_data_lcd28
L__send_data_lcd245:
	LDI        R16, 1
	JMP        L_send_data_lcd29
L_send_data_lcd28:
	LDI        R16, 0
L_send_data_lcd29:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 7
	OUT        PORTD+0, R27
;123.c,84 :: 		data5=(cmd & (1<<5)) ? 1 : 0 ;
	BST        R2, 5
	BRTS       L__send_data_lcd246
	JMP        L_send_data_lcd30
L__send_data_lcd246:
	LDI        R16, 1
	JMP        L_send_data_lcd31
L_send_data_lcd30:
	LDI        R16, 0
L_send_data_lcd31:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 4
	OUT        PORTD+0, R27
;123.c,85 :: 		data6=(cmd & (1<<6)) ? 1 : 0 ;
	BST        R2, 6
	BRTS       L__send_data_lcd247
	JMP        L_send_data_lcd32
L__send_data_lcd247:
	LDI        R16, 1
	JMP        L_send_data_lcd33
L_send_data_lcd32:
	LDI        R16, 0
L_send_data_lcd33:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 6
	OUT        PORTD+0, R27
;123.c,86 :: 		data7=(cmd & (1<<7)) ? 1 : 0 ;
	BST        R2, 7
	BRTS       L__send_data_lcd248
	JMP        L_send_data_lcd34
L__send_data_lcd248:
	LDI        R16, 1
	JMP        L_send_data_lcd35
L_send_data_lcd34:
	LDI        R16, 0
L_send_data_lcd35:
	BST        R16, 0
	IN         R27, PORTD+0
	BLD        R27, 5
	OUT        PORTD+0, R27
;123.c,87 :: 		delay_us(250);
	LDI        R17, lo_addr(R3)
	LDI        R16, 152
L_send_data_lcd36:
	DEC        R16
	BRNE       L_send_data_lcd36
	DEC        R17
	BRNE       L_send_data_lcd36
	NOP
;123.c,88 :: 		E = 0;
	IN         R27, PORTD+0
	CBR        R27, 2
	OUT        PORTD+0, R27
;123.c,89 :: 		delay_us(250);
	LDI        R17, lo_addr(R3)
	LDI        R16, 152
L_send_data_lcd38:
	DEC        R16
	BRNE       L_send_data_lcd38
	DEC        R17
	BRNE       L_send_data_lcd38
	NOP
;123.c,90 :: 		}
L_end_send_data_lcd:
	RET
; end of _send_data_lcd

_wt_lcd_init:

;123.c,92 :: 		void wt_lcd_init(){
;123.c,94 :: 		send_cmd_lcd(0b00111000);   // 8 bit on
	PUSH       R2
	LDI        R27, 56
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,95 :: 		delay_ms(10);               //
	LDI        R17, 104
	LDI        R16, 229
L_wt_lcd_init40:
	DEC        R16
	BRNE       L_wt_lcd_init40
	DEC        R17
	BRNE       L_wt_lcd_init40
;123.c,96 :: 		send_cmd_lcd(0b00111000);   // 8 bit on
	LDI        R27, 56
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,97 :: 		delay_ms(10);               //
	LDI        R17, 104
	LDI        R16, 229
L_wt_lcd_init42:
	DEC        R16
	BRNE       L_wt_lcd_init42
	DEC        R17
	BRNE       L_wt_lcd_init42
;123.c,98 :: 		send_cmd_lcd(0b00111000);   // 8 bit on
	LDI        R27, 56
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,99 :: 		delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_wt_lcd_init44:
	DEC        R16
	BRNE       L_wt_lcd_init44
	DEC        R17
	BRNE       L_wt_lcd_init44
;123.c,100 :: 		send_cmd_lcd(0b00111000);   // 8 bit on   2 lines mode
	LDI        R27, 56
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,101 :: 		delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_wt_lcd_init46:
	DEC        R16
	BRNE       L_wt_lcd_init46
	DEC        R17
	BRNE       L_wt_lcd_init46
;123.c,102 :: 		send_cmd_lcd(0b0001000);   //   off
	LDI        R27, 8
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,103 :: 		delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_wt_lcd_init48:
	DEC        R16
	BRNE       L_wt_lcd_init48
	DEC        R17
	BRNE       L_wt_lcd_init48
;123.c,104 :: 		send_cmd_lcd(0b00000001);   //  clear
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,105 :: 		delay_ms(10);                //
	LDI        R17, 104
	LDI        R16, 229
L_wt_lcd_init50:
	DEC        R16
	BRNE       L_wt_lcd_init50
	DEC        R17
	BRNE       L_wt_lcd_init50
;123.c,106 :: 		send_cmd_lcd(0b00000110);   // 1/ inc /0
	LDI        R27, 6
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,107 :: 		delay_ms(10);                //
	LDI        R17, 104
	LDI        R16, 229
L_wt_lcd_init52:
	DEC        R16
	BRNE       L_wt_lcd_init52
	DEC        R17
	BRNE       L_wt_lcd_init52
;123.c,108 :: 		send_cmd_lcd(0b00001100);   //   1 /on_displ / cursor / blinking
	LDI        R27, 12
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,109 :: 		delay_ms(10);                //
	LDI        R17, 104
	LDI        R16, 229
L_wt_lcd_init54:
	DEC        R16
	BRNE       L_wt_lcd_init54
	DEC        R17
	BRNE       L_wt_lcd_init54
;123.c,111 :: 		}
L_end_wt_lcd_init:
	POP        R2
	RET
; end of _wt_lcd_init

_init:

;123.c,113 :: 		void init(){
;123.c,114 :: 		DDRB=0b11001111;
	LDI        R27, 207
	OUT        DDRB+0, R27
;123.c,115 :: 		DDRC=0b11110000;
	LDI        R27, 240
	OUT        DDRC+0, R27
;123.c,116 :: 		DDRD=0b11111111;
	LDI        R27, 255
	OUT        DDRD+0, R27
;123.c,117 :: 		PORTB=0b00110000;
	LDI        R27, 48
	OUT        PORTB+0, R27
;123.c,118 :: 		PORTC=0b00001111;
	LDI        R27, 15
	OUT        PORTC+0, R27
;123.c,119 :: 		PORTD=0b00000000;
	LDI        R27, 0
	OUT        PORTD+0, R27
;123.c,120 :: 		wt_lcd_init();
	CALL       _wt_lcd_init+0
;123.c,121 :: 		TWI_Init(100000);
	IN         R27, TWPS0_bit+0
	CBR        R27, 1
	OUT        TWPS0_bit+0, R27
	IN         R27, TWPS1_bit+0
	CBR        R27, 2
	OUT        TWPS1_bit+0, R27
	LDI        R27, 32
	OUT        TWBR+0, R27
	CALL       _TWI_Init+0
;123.c,122 :: 		}
L_end_init:
	RET
; end of _init

_EEP_write:

;123.c,126 :: 		EEP_write(char adr, char dat){
;123.c,127 :: 		while (EEWE_bit==1) asm nop;
L_EEP_write56:
	IN         R27, EEWE_bit+0
	SBRS       R27, 1
	JMP        L_EEP_write57
	NOP
	JMP        L_EEP_write56
L_EEP_write57:
;123.c,128 :: 		SREG_I_bit=0;
	IN         R27, SREG_I_bit+0
	CBR        R27, 128
	OUT        SREG_I_bit+0, R27
;123.c,129 :: 		iu.i =adr;
	STS        _iu+0, R2
	LDI        R27, 0
	STS        _iu+1, R27
;123.c,130 :: 		EEARL   =   iu.byt[0];
	LDS        R16, _iu+0
	OUT        EEARL+0, R16
;123.c,131 :: 		EEARH   =   iu.byt[1];
	LDS        R16, _iu+1
	OUT        EEARH+0, R16
;123.c,132 :: 		EEDR = dat;
	OUT        EEDR+0, R3
;123.c,133 :: 		EEMWE_bit =1;
	IN         R27, EEMWE_bit+0
	SBR        R27, 4
	OUT        EEMWE_bit+0, R27
;123.c,134 :: 		EEWE_bit =1;
	IN         R27, EEWE_bit+0
	SBR        R27, 2
	OUT        EEWE_bit+0, R27
;123.c,135 :: 		SREG_I_bit =1;
	IN         R27, SREG_I_bit+0
	SBR        R27, 128
	OUT        SREG_I_bit+0, R27
;123.c,136 :: 		}
L_end_EEP_write:
	RET
; end of _EEP_write

_EEP_read:

;123.c,138 :: 		char EEP_read(char adr){
;123.c,140 :: 		while (EEWE_bit==1) asm nop;
L_EEP_read58:
	IN         R27, EEWE_bit+0
	SBRS       R27, 1
	JMP        L_EEP_read59
	NOP
	JMP        L_EEP_read58
L_EEP_read59:
;123.c,141 :: 		SREG_I_bit=0;
	IN         R27, SREG_I_bit+0
	CBR        R27, 128
	OUT        SREG_I_bit+0, R27
;123.c,142 :: 		iu.i =adr;
	STS        _iu+0, R2
	LDI        R27, 0
	STS        _iu+1, R27
;123.c,143 :: 		EEARL   =   iu.byt[0];
	LDS        R16, _iu+0
	OUT        EEARL+0, R16
;123.c,144 :: 		EEARH   =   iu.byt[1];
	LDS        R16, _iu+1
	OUT        EEARH+0, R16
;123.c,145 :: 		EERE_bit =1;
	IN         R27, EERE_bit+0
	SBR        R27, 1
	OUT        EERE_bit+0, R27
;123.c,146 :: 		dat = EEDR ;
; dat start address is: 17 (R17)
	IN         R17, EEDR+0
;123.c,147 :: 		SREG_I_bit =1;
	IN         R27, SREG_I_bit+0
	SBR        R27, 128
	OUT        SREG_I_bit+0, R27
;123.c,148 :: 		return dat;
	MOV        R16, R17
; dat end address is: 17 (R17)
;123.c,149 :: 		}
L_end_EEP_read:
	RET
; end of _EEP_read

_send_twi_data:

;123.c,151 :: 		void send_twi_data(char addr,char dat1){
;123.c,153 :: 		TWI_Start();              // issue TWI start signal
	PUSH       R2
	CALL       _TWI_Start+0
;123.c,154 :: 		TWI_Write(11010000);          // send byte via TWI (device address + W)
	PUSH       R2
	LDI        R27, 208
	MOV        R2, R27
	CALL       _TWI_Write+0
	POP        R2
;123.c,155 :: 		TWI_Write(addr);             // send byte (address of EEPROM location)
	CALL       _TWI_Write+0
;123.c,156 :: 		TWI_Write(dat1);          // send data (data to be written)
	MOV        R2, R3
	CALL       _TWI_Write+0
;123.c,157 :: 		TWI_Stop();               // issue TWI stop signal
	CALL       _TWI_Stop+0
;123.c,159 :: 		}
L_end_send_twi_data:
	POP        R2
	RET
; end of _send_twi_data

_get_twi_data:

;123.c,161 :: 		char get_twi_data(char addr){
;123.c,163 :: 		TWI_Start();              // issue TWI start signal
	PUSH       R2
	CALL       _TWI_Start+0
;123.c,164 :: 		TWI_Write(11010000);          // send byte via TWI (device address + W)
	PUSH       R2
	LDI        R27, 208
	MOV        R2, R27
	CALL       _TWI_Write+0
	POP        R2
;123.c,165 :: 		TWI_Write(addr);             // send byte (data address)
	CALL       _TWI_Write+0
;123.c,166 :: 		TWI_Start();              // issue TWI signal repeated start
	CALL       _TWI_Start+0
;123.c,167 :: 		TWI_Write(11010001);          // send byte (device address + R)
	LDI        R27, 209
	MOV        R2, R27
	CALL       _TWI_Write+0
;123.c,168 :: 		dat1 = TWI_Read(0);     // read data (NO acknowledge)
	CLR        R2
	CALL       _TWI_Read+0
; dat1 start address is: 17 (R17)
	MOV        R17, R16
;123.c,169 :: 		TWI_Stop();               // issue TWI stop signal
	CALL       _TWI_Stop+0
;123.c,170 :: 		return dat1;
	MOV        R16, R17
; dat1 end address is: 17 (R17)
;123.c,171 :: 		}
;123.c,170 :: 		return dat1;
;123.c,171 :: 		}
L_end_get_twi_data:
	POP        R2
	RET
; end of _get_twi_data

_get_i2c:

;123.c,173 :: 		char get_i2c(char param){
;123.c,174 :: 		char tmp=0;
; tmp start address is: 16 (R16)
	LDI        R16, 0
; tmp end address is: 16 (R16)
;123.c,175 :: 		tmp= get_twi_data (param);
	CALL       _get_twi_data+0
; tmp start address is: 18 (R18)
	MOV        R18, R16
;123.c,176 :: 		return (((tmp & 0xF0) >> 4)*10)+(tmp & 0x0F);
	ANDI       R16, 240
	MOV        R17, R16
	LSR        R17
	LSR        R17
	LSR        R17
	LSR        R17
	LDI        R16, 10
	MUL        R17, R16
	MOV        R17, R0
	MOV        R16, R18
	ANDI       R16, 15
; tmp end address is: 18 (R18)
	ADD        R16, R17
;123.c,177 :: 		}
L_end_get_i2c:
	RET
; end of _get_i2c

_put_i2c:
	PUSH       R28
	PUSH       R29
	IN         R28, SPL+0
	IN         R29, SPL+1
	SBIW       R28, 1
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;123.c,178 :: 		void put_i2c(char param,char dat){
;123.c,179 :: 		send_twi_data (param, ((dat/10) << 4)|(dat%10));
	PUSH       R3
	LDI        R20, 10
	MOV        R16, R3
	CALL       _Div_8x8_U+0
	LSL        R16
	LSL        R16
	LSL        R16
	LSL        R16
	STD        Y+0, R16
	LDI        R20, 10
	MOV        R16, R3
	CALL       _Div_8x8_U+0
	MOV        R16, R25
	LDD        R17, Y+0
	OR         R16, R17
	MOV        R3, R16
	CALL       _send_twi_data+0
;123.c,180 :: 		}
L_end_put_i2c:
	POP        R3
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	POP        R29
	POP        R28
	RET
; end of _put_i2c

_lcd_2gig_out:

;123.c,182 :: 		void lcd_2gig_out(char dat){if(dat<99){
	PUSH       R2
	LDI        R27, 99
	CP         R2, R27
	BRLO       L__lcd_2gig_out258
	JMP        L_lcd_2gig_out60
L__lcd_2gig_out258:
;123.c,183 :: 		send_data_lcd(dat/10+48);send_data_lcd(dat%10+48);}
	LDI        R20, 10
	MOV        R16, R2
	CALL       _Div_8x8_U+0
	SUBI       R16, 208
	PUSH       R2
	MOV        R2, R16
	CALL       _send_data_lcd+0
	POP        R2
	LDI        R20, 10
	MOV        R16, R2
	CALL       _Div_8x8_U+0
	MOV        R16, R25
	SUBI       R16, 208
	MOV        R2, R16
	CALL       _send_data_lcd+0
	JMP        L_lcd_2gig_out61
L_lcd_2gig_out60:
;123.c,184 :: 		else{send_data_lcd('-');send_data_lcd('-'); }
	LDI        R27, 45
	MOV        R2, R27
	CALL       _send_data_lcd+0
	LDI        R27, 45
	MOV        R2, R27
	CALL       _send_data_lcd+0
L_lcd_2gig_out61:
;123.c,185 :: 		}
L_end_lcd_2gig_out:
	POP        R2
	RET
; end of _lcd_2gig_out

_string_puter:

;123.c,187 :: 		void string_puter(char *mas){
;123.c,189 :: 		for (itm=0;mas[itm]!='\n';itm++) send_data_lcd (mas[itm]);
; itm start address is: 17 (R17)
; itm start address is: 17 (R17)
	LDI        R17, 0
; itm end address is: 17 (R17)
; itm end address is: 17 (R17)
L_string_puter62:
; itm start address is: 17 (R17)
	MOV        R30, R17
	LDI        R31, 0
	ADD        R30, R2
	ADC        R31, R3
	LD         R16, Z
	CPI        R16, 10
	BRNE       L__string_puter260
	JMP        L_string_puter63
L__string_puter260:
	MOV        R30, R17
	LDI        R31, 0
	ADD        R30, R2
	ADC        R31, R3
	LD         R16, Z
	PUSH       R17
	PUSH       R3
	PUSH       R2
	MOV        R2, R16
	CALL       _send_data_lcd+0
	POP        R2
	POP        R3
	POP        R17
	MOV        R16, R17
	SUBI       R16, 255
	MOV        R17, R16
; itm end address is: 17 (R17)
	JMP        L_string_puter62
L_string_puter63:
;123.c,190 :: 		}
L_end_string_puter:
	RET
; end of _string_puter

_text_shower:

;123.c,192 :: 		void text_shower(char index){
;123.c,193 :: 		switch(index){
	PUSH       R2
	PUSH       R3
	JMP        L_text_shower65
;123.c,194 :: 		case 1: string_puter (txt1); break;
L_text_shower67:
	LDI        R27, #lo_addr(_txt1+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt1+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_text_shower66
;123.c,195 :: 		case 2: string_puter (txt2); break;
L_text_shower68:
	LDI        R27, #lo_addr(_txt2+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt2+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_text_shower66
;123.c,196 :: 		case 3: string_puter (txt3); break;
L_text_shower69:
	LDI        R27, #lo_addr(_txt3+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt3+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_text_shower66
;123.c,197 :: 		case 4: string_puter (txt4); break;
L_text_shower70:
	LDI        R27, #lo_addr(_txt4+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt4+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_text_shower66
;123.c,198 :: 		case 5: string_puter (txt5); break;
L_text_shower71:
	LDI        R27, #lo_addr(_txt5+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt5+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_text_shower66
;123.c,199 :: 		case 6: string_puter (txt6); break;
L_text_shower72:
	LDI        R27, #lo_addr(_txt6+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt6+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_text_shower66
;123.c,200 :: 		}
L_text_shower65:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__text_shower262
	JMP        L_text_shower67
L__text_shower262:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__text_shower263
	JMP        L_text_shower68
L__text_shower263:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__text_shower264
	JMP        L_text_shower69
L__text_shower264:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__text_shower265
	JMP        L_text_shower70
L__text_shower265:
	LDI        R27, 5
	CP         R2, R27
	BRNE       L__text_shower266
	JMP        L_text_shower71
L__text_shower266:
	LDI        R27, 6
	CP         R2, R27
	BRNE       L__text_shower267
	JMP        L_text_shower72
L__text_shower267:
L_text_shower66:
;123.c,201 :: 		}
L_end_text_shower:
	POP        R3
	POP        R2
	RET
; end of _text_shower

_show_day_week:

;123.c,203 :: 		void show_day_week(char day ){
;123.c,204 :: 		switch (day){
	PUSH       R2
	PUSH       R3
	JMP        L_show_day_week73
;123.c,205 :: 		case 1: string_puter (txt7); break;
L_show_day_week75:
	LDI        R27, #lo_addr(_txt7+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt7+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_show_day_week74
;123.c,206 :: 		case 2: string_puter (txt8); break;
L_show_day_week76:
	LDI        R27, #lo_addr(_txt8+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt8+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_show_day_week74
;123.c,207 :: 		case 3: string_puter (txt9); break;
L_show_day_week77:
	LDI        R27, #lo_addr(_txt9+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt9+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_show_day_week74
;123.c,208 :: 		case 4: string_puter (txt10); break;
L_show_day_week78:
	LDI        R27, #lo_addr(_txt10+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt10+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_show_day_week74
;123.c,209 :: 		case 5: string_puter (txt11); break;
L_show_day_week79:
	LDI        R27, #lo_addr(_txt11+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt11+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_show_day_week74
;123.c,210 :: 		case 6: string_puter (txt12); break;
L_show_day_week80:
	LDI        R27, #lo_addr(_txt12+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt12+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_show_day_week74
;123.c,211 :: 		case 7: string_puter (txt13); break;
L_show_day_week81:
	LDI        R27, #lo_addr(_txt13+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt13+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_show_day_week74
;123.c,212 :: 		}
L_show_day_week73:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__show_day_week269
	JMP        L_show_day_week75
L__show_day_week269:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__show_day_week270
	JMP        L_show_day_week76
L__show_day_week270:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__show_day_week271
	JMP        L_show_day_week77
L__show_day_week271:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__show_day_week272
	JMP        L_show_day_week78
L__show_day_week272:
	LDI        R27, 5
	CP         R2, R27
	BRNE       L__show_day_week273
	JMP        L_show_day_week79
L__show_day_week273:
	LDI        R27, 6
	CP         R2, R27
	BRNE       L__show_day_week274
	JMP        L_show_day_week80
L__show_day_week274:
	LDI        R27, 7
	CP         R2, R27
	BRNE       L__show_day_week275
	JMP        L_show_day_week81
L__show_day_week275:
L_show_day_week74:
;123.c,213 :: 		}
L_end_show_day_week:
	POP        R3
	POP        R2
	RET
; end of _show_day_week

_show_time:

;123.c,215 :: 		void show_time(){
;123.c,216 :: 		lcd_2gig_out ( get_i2c(2));
	PUSH       R2
	LDI        R27, 2
	MOV        R2, R27
	CALL       _get_i2c+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
;123.c,217 :: 		send_data_lcd (':');
	LDI        R27, 58
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,218 :: 		lcd_2gig_out ( get_i2c(1));
	LDI        R27, 1
	MOV        R2, R27
	CALL       _get_i2c+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
;123.c,219 :: 		send_data_lcd (':');
	LDI        R27, 58
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,220 :: 		lcd_2gig_out ( get_i2c(0));
	CLR        R2
	CALL       _get_i2c+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
;123.c,221 :: 		}
L_end_show_time:
	POP        R2
	RET
; end of _show_time

_show_date:

;123.c,222 :: 		void show_date(){
;123.c,223 :: 		lcd_2gig_out ( get_i2c(4));
	PUSH       R2
	LDI        R27, 4
	MOV        R2, R27
	CALL       _get_i2c+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
;123.c,224 :: 		send_data_lcd ('/');
	LDI        R27, 47
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,225 :: 		lcd_2gig_out ( get_i2c(5));
	LDI        R27, 5
	MOV        R2, R27
	CALL       _get_i2c+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
;123.c,226 :: 		send_data_lcd ('/');
	LDI        R27, 47
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,227 :: 		send_data_lcd ('2');
	LDI        R27, 50
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,228 :: 		send_data_lcd ('0');
	LDI        R27, 48
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,229 :: 		lcd_2gig_out ( get_i2c(6));
	LDI        R27, 6
	MOV        R2, R27
	CALL       _get_i2c+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
;123.c,230 :: 		send_data_lcd ('/');
	LDI        R27, 47
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,231 :: 		day_of_week = get_twi_data (3);
	LDI        R27, 3
	MOV        R2, R27
	CALL       _get_twi_data+0
	STS        _day_of_week+0, R16
;123.c,232 :: 		show_day_week (day_of_week );
	MOV        R2, R16
	CALL       _show_day_week+0
;123.c,233 :: 		}
L_end_show_date:
	POP        R2
	RET
; end of _show_date

_item_plus:

;123.c,239 :: 		char item_plus(char curr_item, char min_item, char max_item){
;123.c,240 :: 		curr_item++;
	MOV        R16, R2
	SUBI       R16, 255
	MOV        R2, R16
;123.c,241 :: 		if(curr_item > max_item) curr_item = min_item;
	CP         R4, R16
	BRLO       L__item_plus279
	JMP        L_item_plus82
L__item_plus279:
	MOV        R2, R3
L_item_plus82:
;123.c,242 :: 		return curr_item ;
	MOV        R16, R2
;123.c,243 :: 		}
L_end_item_plus:
	RET
; end of _item_plus

_item_minus:

;123.c,245 :: 		char item_minus(char curr_item, char min_item,char max_item){
;123.c,246 :: 		if( curr_item==min_item) curr_item  = max_item; else curr_item --;
	CP         R2, R3
	BREQ       L__item_minus281
	JMP        L_item_minus83
L__item_minus281:
	MOV        R2, R4
	JMP        L_item_minus84
L_item_minus83:
	MOV        R16, R2
	SUBI       R16, 1
	MOV        R2, R16
L_item_minus84:
;123.c,247 :: 		return curr_item ;
	MOV        R16, R2
;123.c,248 :: 		}
L_end_item_minus:
	RET
; end of _item_minus

_butt_delay:

;123.c,250 :: 		void butt_delay(){char i;
;123.c,251 :: 		for( i=0;i<30; i++)Delay_8ms();
; i start address is: 17 (R17)
; i start address is: 17 (R17)
	LDI        R17, 0
; i end address is: 17 (R17)
; i end address is: 17 (R17)
L_butt_delay85:
; i start address is: 17 (R17)
	CPI        R17, 30
	BRLO       L__butt_delay283
	JMP        L_butt_delay86
L__butt_delay283:
	PUSH       R17
	CALL       _Delay_8ms+0
	POP        R17
	MOV        R16, R17
	SUBI       R16, 255
	MOV        R17, R16
; i end address is: 17 (R17)
	JMP        L_butt_delay85
L_butt_delay86:
;123.c,252 :: 		}
L_end_butt_delay:
	RET
; end of _butt_delay

_get_alarms_from_EEP:
	PUSH       R28
	PUSH       R29
	IN         R28, SPL+0
	IN         R29, SPL+1
	SBIW       R28, 2
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;123.c,254 :: 		void get_alarms_from_EEP(){
;123.c,255 :: 		for(temp2=0;temp2<max_n ;temp2++){
	PUSH       R2
	LDI        R27, 0
	STS        _temp2+0, R27
L_get_alarms_from_EEP88:
	LDS        R17, _temp2+0
	LDS        R16, _max_n+0
	CP         R17, R16
	BRLO       L__get_alarms_from_EEP285
	JMP        L_get_alarms_from_EEP89
L__get_alarms_from_EEP285:
;123.c,256 :: 		zvonki_minuts[temp2]=EEP_read((temp2+1)*3-1+100);
	LDI        R16, #lo_addr(_zvonki_minuts+0)
	LDI        R17, hi_addr(_zvonki_minuts+0)
	LDS        R18, _temp2+0
	ADD        R16, R18
	LDI        R27, 0
	ADC        R17, R27
	STD        Y+0, R16
	STD        Y+1, R17
	MOV        R20, R18
	SUBI       R20, 255
	LDI        R16, 3
	MUL        R20, R16
	MOV        R16, R0
	SUBI       R16, 1
	SUBI       R16, 156
	MOV        R2, R16
	CALL       _EEP_read+0
	LDD        R17, Y+0
	LDD        R18, Y+1
	MOV        R30, R17
	MOV        R31, R18
	ST         Z, R16
;123.c,257 :: 		zvonki_hours[temp2]=EEP_read((temp2+1)*3-2+100);
	LDI        R16, #lo_addr(_zvonki_hours+0)
	LDI        R17, hi_addr(_zvonki_hours+0)
	LDS        R18, _temp2+0
	ADD        R16, R18
	LDI        R27, 0
	ADC        R17, R27
	STD        Y+0, R16
	STD        Y+1, R17
	MOV        R20, R18
	SUBI       R20, 255
	LDI        R16, 3
	MUL        R20, R16
	MOV        R16, R0
	SUBI       R16, 2
	SUBI       R16, 156
	MOV        R2, R16
	CALL       _EEP_read+0
	LDD        R17, Y+0
	LDD        R18, Y+1
	MOV        R30, R17
	MOV        R31, R18
	ST         Z, R16
;123.c,258 :: 		zvonki_on_flags[temp2]=EEP_read((temp2+1)*3+100);
	LDI        R16, #lo_addr(_zvonki_on_flags+0)
	LDI        R17, hi_addr(_zvonki_on_flags+0)
	LDS        R18, _temp2+0
	ADD        R16, R18
	LDI        R27, 0
	ADC        R17, R27
	STD        Y+0, R16
	STD        Y+1, R17
	MOV        R20, R18
	SUBI       R20, 255
	LDI        R16, 3
	MUL        R20, R16
	MOV        R16, R0
	SUBI       R16, 156
	MOV        R2, R16
	CALL       _EEP_read+0
	LDD        R17, Y+0
	LDD        R18, Y+1
	MOV        R30, R17
	MOV        R31, R18
	ST         Z, R16
;123.c,255 :: 		for(temp2=0;temp2<max_n ;temp2++){
	LDS        R16, _temp2+0
	SUBI       R16, 255
	STS        _temp2+0, R16
;123.c,259 :: 		}
	JMP        L_get_alarms_from_EEP88
L_get_alarms_from_EEP89:
;123.c,260 :: 		}
L_end_get_alarms_from_EEP:
	POP        R2
	ADIW       R28, 1
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	POP        R29
	POP        R28
	RET
; end of _get_alarms_from_EEP

_vars_updater_func:
	PUSH       R28
	PUSH       R29
	IN         R28, SPL+0
	IN         R29, SPL+1
	SBIW       R28, 2
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;123.c,262 :: 		void vars_updater_func(){
;123.c,263 :: 		max_n=EEP_read (60);
	PUSH       R2
	LDI        R27, 60
	MOV        R2, R27
	CALL       _EEP_read+0
	STS        _max_n+0, R16
;123.c,264 :: 		as_long_as_sec=EEP_read (55);
	LDI        R27, 55
	MOV        R2, R27
	CALL       _EEP_read+0
	STS        _as_long_as_sec+0, R16
;123.c,265 :: 		mode=EEP_read (48);
	LDI        R27, 48
	MOV        R2, R27
	CALL       _EEP_read+0
	STS        _mode+0, R16
;123.c,266 :: 		for(index=0;index<7;index++) day_s[index]=EEP_read(21+index);
	LDI        R27, 0
	STS        _index+0, R27
L_vars_updater_func91:
	LDS        R16, _index+0
	CPI        R16, 7
	BRLO       L__vars_updater_func287
	JMP        L_vars_updater_func92
L__vars_updater_func287:
	LDI        R16, #lo_addr(_day_s+0)
	LDI        R17, hi_addr(_day_s+0)
	LDS        R18, _index+0
	ADD        R16, R18
	LDI        R27, 0
	ADC        R17, R27
	STD        Y+0, R16
	STD        Y+1, R17
	MOV        R16, R18
	SUBI       R16, 235
	MOV        R2, R16
	CALL       _EEP_read+0
	LDD        R17, Y+0
	LDD        R18, Y+1
	MOV        R30, R17
	MOV        R31, R18
	ST         Z, R16
	LDS        R16, _index+0
	SUBI       R16, 255
	STS        _index+0, R16
	JMP        L_vars_updater_func91
L_vars_updater_func92:
;123.c,267 :: 		}
L_end_vars_updater_func:
	POP        R2
	ADIW       R28, 1
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	POP        R29
	POP        R28
	RET
; end of _vars_updater_func

_next_finder:
	PUSH       R28
	PUSH       R29
	IN         R28, SPL+0
	IN         R29, SPL+1
	SBIW       R28, 3
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;123.c,269 :: 		char next_finder(char *mas_hours, char *mas_minutes, char *on_flags, char curr_hours, char curr_minutes){
;123.c,270 :: 		int curr_compare, index_compare,min_compare=4096;
	LDI        R27, 0
	STD        Y+0, R27
	LDI        R27, 16
	STD        Y+1, R27
	LDI        R27, 255
	STD        Y+2, R27
;123.c,271 :: 		char index_min=-1;
;123.c,272 :: 		curr_compare=curr_hours*100+curr_minutes;
	LDI        R16, 100
	MUL        R8, R16
	MOVW       R16, R0
	ADD        R16, R9
	LDI        R27, 0
	ADC        R17, R27
; curr_compare start address is: 20 (R20)
	MOVW       R20, R16
;123.c,274 :: 		for(index=0; index<max_n; index ++ ){
	LDI        R27, 0
	STS        _index+0, R27
L_next_finder94:
; curr_compare start address is: 20 (R20)
; curr_compare end address is: 20 (R20)
	LDS        R17, _index+0
	LDS        R16, _max_n+0
	CP         R17, R16
	BRLO       L__next_finder289
	JMP        L_next_finder95
L__next_finder289:
; curr_compare end address is: 20 (R20)
;123.c,275 :: 		index_compare=mas_hours[index]*100+mas_minutes[index];
; curr_compare start address is: 20 (R20)
	LDS        R16, _index+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R2
	ADC        R31, R3
	LD         R17, Z
	LDI        R16, 100
	MUL        R17, R16
	MOVW       R18, R0
	LDS        R16, _index+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R4
	ADC        R31, R5
	LD         R16, Z
	LDI        R17, 0
	ADD        R16, R18
	ADC        R17, R19
; index_compare start address is: 18 (R18)
	MOVW       R18, R16
;123.c,276 :: 		if ((on_flags[index]==1) && (index_compare> curr_compare) )
	LDS        R16, _index+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R6
	ADC        R31, R7
	LD         R16, Z
	CPI        R16, 1
	BREQ       L__next_finder290
	JMP        L__next_finder210
L__next_finder290:
	CP         R20, R18
	CPC        R21, R19
	BRLT       L__next_finder291
	JMP        L__next_finder209
L__next_finder291:
L__next_finder208:
;123.c,278 :: 		if( index_compare < min_compare  )
	LDD        R16, Y+0
	LDD        R17, Y+1
	CP         R18, R16
	CPC        R19, R17
	BRLT       L__next_finder292
	JMP        L_next_finder100
L__next_finder292:
;123.c,279 :: 		{index_min=index;
	LDS        R16, _index+0
	STD        Y+2, R16
;123.c,280 :: 		min_compare=index_compare;
	STD        Y+0, R18
	STD        Y+1, R19
; index_compare end address is: 18 (R18)
;123.c,281 :: 		}
L_next_finder100:
;123.c,283 :: 		}
;123.c,276 :: 		if ((on_flags[index]==1) && (index_compare> curr_compare) )
L__next_finder210:
L__next_finder209:
;123.c,274 :: 		for(index=0; index<max_n; index ++ ){
	LDS        R16, _index+0
	SUBI       R16, 255
	STS        _index+0, R16
;123.c,284 :: 		}
; curr_compare end address is: 20 (R20)
	JMP        L_next_finder94
L_next_finder95:
;123.c,285 :: 		if (index_min <0) return 0; else return index_min+1;
	LDD        R16, Y+2
	CPI        R16, 0
	BRLO       L__next_finder293
	JMP        L_next_finder101
L__next_finder293:
	LDI        R16, 0
	JMP        L_end_next_finder
L_next_finder101:
	LDD        R16, Y+2
	SUBI       R16, 255
;123.c,286 :: 		}
L_end_next_finder:
	ADIW       R28, 2
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	POP        R29
	POP        R28
	RET
; end of _next_finder

_select_item_core:

;123.c,289 :: 		select_item_core(char itm,char min, char max ){
;123.c,290 :: 		if(right)
	IN         R27, PINC2_bit+0
	CBR        R18, 1
	SBRS       R27, 2
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_select_item_core103
;123.c,291 :: 		{ while(right) asm nop;
L_select_item_core104:
	IN         R27, PINC2_bit+0
	CBR        R18, 1
	SBRS       R27, 2
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_select_item_core105
	NOP
	JMP        L_select_item_core104
L_select_item_core105:
;123.c,292 :: 		itm=item_plus(itm,min,max);
	PUSH       R2
	CALL       _item_plus+0
	POP        R2
	MOV        R2, R16
;123.c,293 :: 		butt_delay ();
	CALL       _butt_delay+0
;123.c,294 :: 		vars_updater_func();
	CALL       _vars_updater_func+0
;123.c,295 :: 		send_cmd_lcd (lcd_clr);
	PUSH       R2
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	POP        R2
;123.c,296 :: 		}
L_select_item_core103:
;123.c,297 :: 		if(left)
	IN         R27, PINB5_bit+0
	CBR        R18, 1
	SBRS       R27, 5
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_select_item_core106
;123.c,298 :: 		{ while(left)asm nop;
L_select_item_core107:
	IN         R27, PINB5_bit+0
	CBR        R18, 1
	SBRS       R27, 5
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_select_item_core108
	NOP
	JMP        L_select_item_core107
L_select_item_core108:
;123.c,299 :: 		itm=item_minus(itm,min,max);
	PUSH       R2
	CALL       _item_minus+0
	POP        R2
	MOV        R2, R16
;123.c,300 :: 		butt_delay ();
	CALL       _butt_delay+0
;123.c,301 :: 		vars_updater_func();
	CALL       _vars_updater_func+0
;123.c,302 :: 		send_cmd_lcd (lcd_clr);
	PUSH       R2
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	POP        R2
;123.c,303 :: 		}
L_select_item_core106:
;123.c,304 :: 		return itm;
	MOV        R16, R2
	LDI        R17, 0
;123.c,305 :: 		}
L_end_select_item_core:
	RET
; end of _select_item_core

_change_item_core:

;123.c,307 :: 		change_item_core(){
;123.c,308 :: 		if(down)
	PUSH       R2
	PUSH       R3
	PUSH       R4
	IN         R27, PINC0_bit+0
	CBR        R18, 1
	SBRS       R27, 0
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_change_item_core109
;123.c,309 :: 		{curr_item=item_minus(curr_item ,min_item,max_item);
	LDS        R4, _max_item+0
	LDS        R3, _min_item+0
	LDS        R2, _curr_item+0
	CALL       _item_minus+0
	STS        _curr_item+0, R16
;123.c,310 :: 		EEP_write (addrtmp,curr_item);
	MOV        R3, R16
	LDS        R2, _addrtmp+0
	CALL       _EEP_write+0
;123.c,311 :: 		butt_delay ();
	CALL       _butt_delay+0
;123.c,312 :: 		}
L_change_item_core109:
;123.c,313 :: 		if(up)
	IN         R27, PINC1_bit+0
	CBR        R18, 1
	SBRS       R27, 1
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_change_item_core110
;123.c,314 :: 		{curr_item=item_plus(curr_item ,min_item,max_item);
	LDS        R4, _max_item+0
	LDS        R3, _min_item+0
	LDS        R2, _curr_item+0
	CALL       _item_plus+0
	STS        _curr_item+0, R16
;123.c,315 :: 		EEP_write (addrtmp,curr_item);
	MOV        R3, R16
	LDS        R2, _addrtmp+0
	CALL       _EEP_write+0
;123.c,316 :: 		butt_delay ();
	CALL       _butt_delay+0
;123.c,317 :: 		}
L_change_item_core110:
;123.c,319 :: 		}
L_end_change_item_core:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _change_item_core

_set_time_date_func:

;123.c,321 :: 		void set_time_date_func(){
;123.c,322 :: 		temp2=1;
	PUSH       R2
	PUSH       R3
	PUSH       R4
	LDI        R27, 1
	STS        _temp2+0, R27
;123.c,323 :: 		send_cmd_lcd (lcd_clr);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,324 :: 		while(!esc){
L_set_time_date_func111:
	IN         R27, PINB4_bit+0
	CBR        R18, 1
	SBRS       R27, 4
	SBR        R18, 1
	SBRC       R18, 0
	JMP        L_set_time_date_func112
;123.c,325 :: 		temp2=select_item_core(temp2,1,7);
	LDI        R27, 7
	MOV        R4, R27
	LDI        R27, 1
	MOV        R3, R27
	LDS        R2, _temp2+0
	CALL       _select_item_core+0
	STS        _temp2+0, R16
;123.c,326 :: 		switch(temp2){
	JMP        L_set_time_date_func113
;123.c,327 :: 		case 1:min_item=0;max_item=23; addrtmp=2;send_cmd_lcd (place2 2);send_data_lcd ('^');break;// hours
L_set_time_date_func115:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 23
	STS        _max_item+0, R27
	LDI        R27, 2
	STS        _addrtmp+0, R27
	LDI        R27, 193
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_time_date_func114
;123.c,328 :: 		case 2:min_item=0;max_item=59; addrtmp=1;send_cmd_lcd (place2 5);send_data_lcd ('^');break;//min's
L_set_time_date_func116:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 59
	STS        _max_item+0, R27
	LDI        R27, 1
	STS        _addrtmp+0, R27
	LDI        R27, 196
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_time_date_func114
;123.c,329 :: 		case 3:min_item=0;max_item=0; addrtmp=0;send_cmd_lcd (place2 8);send_data_lcd ('^');break;// sec's
L_set_time_date_func117:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 0
	STS        _max_item+0, R27
	LDI        R27, 0
	STS        _addrtmp+0, R27
	LDI        R27, 199
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_time_date_func114
;123.c,330 :: 		case 4:min_item=1;max_item=31; addrtmp=4;send_cmd_lcd (place2 2);send_data_lcd ('^');break;//date
L_set_time_date_func118:
	LDI        R27, 1
	STS        _min_item+0, R27
	LDI        R27, 31
	STS        _max_item+0, R27
	LDI        R27, 4
	STS        _addrtmp+0, R27
	LDI        R27, 193
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_time_date_func114
;123.c,331 :: 		case 5:min_item=1;max_item=12; addrtmp=5;send_cmd_lcd (place2 5);send_data_lcd ('^');break;//mounth
L_set_time_date_func119:
	LDI        R27, 1
	STS        _min_item+0, R27
	LDI        R27, 12
	STS        _max_item+0, R27
	LDI        R27, 5
	STS        _addrtmp+0, R27
	LDI        R27, 196
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_time_date_func114
;123.c,332 :: 		case 6:min_item=0;max_item=99; addrtmp=6;send_cmd_lcd (place2 10);send_data_lcd ('^');break;//year
L_set_time_date_func120:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 99
	STS        _max_item+0, R27
	LDI        R27, 6
	STS        _addrtmp+0, R27
	LDI        R27, 201
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_time_date_func114
;123.c,333 :: 		case 7:min_item=1;max_item=7; addrtmp=3;send_cmd_lcd (place2 13);send_data_lcd ('^');break;// day_of_week
L_set_time_date_func121:
	LDI        R27, 1
	STS        _min_item+0, R27
	LDI        R27, 7
	STS        _max_item+0, R27
	LDI        R27, 3
	STS        _addrtmp+0, R27
	LDI        R27, 204
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_time_date_func114
;123.c,334 :: 		}
L_set_time_date_func113:
	LDS        R16, _temp2+0
	CPI        R16, 1
	BRNE       L__set_time_date_func311
	JMP        L_set_time_date_func115
L__set_time_date_func311:
	LDS        R16, _temp2+0
	CPI        R16, 2
	BRNE       L__set_time_date_func312
	JMP        L_set_time_date_func116
L__set_time_date_func312:
	LDS        R16, _temp2+0
	CPI        R16, 3
	BRNE       L__set_time_date_func313
	JMP        L_set_time_date_func117
L__set_time_date_func313:
	LDS        R16, _temp2+0
	CPI        R16, 4
	BRNE       L__set_time_date_func314
	JMP        L_set_time_date_func118
L__set_time_date_func314:
	LDS        R16, _temp2+0
	CPI        R16, 5
	BRNE       L__set_time_date_func315
	JMP        L_set_time_date_func119
L__set_time_date_func315:
	LDS        R16, _temp2+0
	CPI        R16, 6
	BRNE       L__set_time_date_func316
	JMP        L_set_time_date_func120
L__set_time_date_func316:
	LDS        R16, _temp2+0
	CPI        R16, 7
	BRNE       L__set_time_date_func317
	JMP        L_set_time_date_func121
L__set_time_date_func317:
L_set_time_date_func114:
;123.c,335 :: 		curr_item =get_i2c(addrtmp);
	LDS        R2, _addrtmp+0
	CALL       _get_i2c+0
	STS        _curr_item+0, R16
;123.c,336 :: 		if(down)
	IN         R27, PINC0_bit+0
	CBR        R18, 1
	SBRS       R27, 0
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_set_time_date_func122
;123.c,337 :: 		{curr_item=item_minus(curr_item ,min_item,max_item);
	LDS        R4, _max_item+0
	LDS        R3, _min_item+0
	LDS        R2, _curr_item+0
	CALL       _item_minus+0
	STS        _curr_item+0, R16
;123.c,338 :: 		put_i2c (addrtmp,curr_item);
	MOV        R3, R16
	LDS        R2, _addrtmp+0
	CALL       _put_i2c+0
;123.c,339 :: 		butt_delay ();
	CALL       _butt_delay+0
;123.c,340 :: 		}
L_set_time_date_func122:
;123.c,341 :: 		if(up)
	IN         R27, PINC1_bit+0
	CBR        R18, 1
	SBRS       R27, 1
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_set_time_date_func123
;123.c,342 :: 		{curr_item=item_plus(curr_item ,min_item,max_item);
	LDS        R4, _max_item+0
	LDS        R3, _min_item+0
	LDS        R2, _curr_item+0
	CALL       _item_plus+0
	STS        _curr_item+0, R16
;123.c,343 :: 		put_i2c (addrtmp,curr_item);
	MOV        R3, R16
	LDS        R2, _addrtmp+0
	CALL       _put_i2c+0
;123.c,344 :: 		butt_delay ();
	CALL       _butt_delay+0
;123.c,345 :: 		}
L_set_time_date_func123:
;123.c,346 :: 		send_cmd_lcd (place1 1);
	LDI        R27, 128
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,347 :: 		if (temp2<4)show_time(); else  show_date();
	LDS        R16, _temp2+0
	CPI        R16, 4
	BRLO       L__set_time_date_func322
	JMP        L_set_time_date_func124
L__set_time_date_func322:
	CALL       _show_time+0
	JMP        L_set_time_date_func125
L_set_time_date_func124:
	CALL       _show_date+0
L_set_time_date_func125:
;123.c,348 :: 		}
	JMP        L_set_time_date_func111
L_set_time_date_func112:
;123.c,349 :: 		while(esc)  butt_delay ();;
L_set_time_date_func126:
	IN         R27, PINB4_bit+0
	CBR        R18, 1
	SBRS       R27, 4
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_set_time_date_func127
	CALL       _butt_delay+0
	JMP        L_set_time_date_func126
L_set_time_date_func127:
;123.c,350 :: 		send_cmd_lcd (lcd_clr);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,351 :: 		}
L_end_set_time_date_func:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _set_time_date_func

_days_of_week:

;123.c,353 :: 		void days_of_week(){
;123.c,354 :: 		send_cmd_lcd(lcd_clr);
	PUSH       R2
	PUSH       R3
	PUSH       R4
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,355 :: 		butt_delay ();
	CALL       _butt_delay+0
;123.c,356 :: 		while(!esc){
L_days_of_week128:
	IN         R27, PINB4_bit+0
	CBR        R18, 1
	SBRS       R27, 4
	SBR        R18, 1
	SBRC       R18, 0
	JMP        L_days_of_week129
;123.c,357 :: 		temp2=select_item_core(temp2,1,7);
	LDI        R27, 7
	MOV        R4, R27
	LDI        R27, 1
	MOV        R3, R27
	LDS        R2, _temp2+0
	CALL       _select_item_core+0
	STS        _temp2+0, R16
;123.c,358 :: 		switch(temp2){
	JMP        L_days_of_week130
;123.c,359 :: 		case 1:min_item=0;max_item=1 ; addrtmp=21;send_cmd_lcd (place2 1);send_data_lcd ('^');break;
L_days_of_week132:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 21
	STS        _addrtmp+0, R27
	LDI        R27, 192
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_days_of_week131
;123.c,360 :: 		case 2:min_item=0;max_item=1 ; addrtmp=22;send_cmd_lcd (place2 3);send_data_lcd ('^');break;
L_days_of_week133:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 22
	STS        _addrtmp+0, R27
	LDI        R27, 194
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_days_of_week131
;123.c,361 :: 		case 3:min_item=0;max_item=1 ; addrtmp=23;send_cmd_lcd (place2 5);send_data_lcd ('^');break;
L_days_of_week134:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 23
	STS        _addrtmp+0, R27
	LDI        R27, 196
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_days_of_week131
;123.c,362 :: 		case 4:min_item=0;max_item=1 ; addrtmp=24;send_cmd_lcd (place2 7);send_data_lcd ('^');break;
L_days_of_week135:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 24
	STS        _addrtmp+0, R27
	LDI        R27, 198
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_days_of_week131
;123.c,363 :: 		case 5:min_item=0;max_item=1 ; addrtmp=25;send_cmd_lcd (place2 9);send_data_lcd ('^');break;
L_days_of_week136:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 25
	STS        _addrtmp+0, R27
	LDI        R27, 200
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_days_of_week131
;123.c,364 :: 		case 6:min_item=0;max_item=1 ; addrtmp=26;send_cmd_lcd (place2 11);send_data_lcd ('^');break;
L_days_of_week137:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 26
	STS        _addrtmp+0, R27
	LDI        R27, 202
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_days_of_week131
;123.c,365 :: 		case 7:min_item=0;max_item=1 ; addrtmp=27;send_cmd_lcd (place2 13);send_data_lcd ('^');break;
L_days_of_week138:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 27
	STS        _addrtmp+0, R27
	LDI        R27, 204
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_days_of_week131
;123.c,366 :: 		}
L_days_of_week130:
	LDS        R16, _temp2+0
	CPI        R16, 1
	BRNE       L__days_of_week328
	JMP        L_days_of_week132
L__days_of_week328:
	LDS        R16, _temp2+0
	CPI        R16, 2
	BRNE       L__days_of_week329
	JMP        L_days_of_week133
L__days_of_week329:
	LDS        R16, _temp2+0
	CPI        R16, 3
	BRNE       L__days_of_week330
	JMP        L_days_of_week134
L__days_of_week330:
	LDS        R16, _temp2+0
	CPI        R16, 4
	BRNE       L__days_of_week331
	JMP        L_days_of_week135
L__days_of_week331:
	LDS        R16, _temp2+0
	CPI        R16, 5
	BRNE       L__days_of_week332
	JMP        L_days_of_week136
L__days_of_week332:
	LDS        R16, _temp2+0
	CPI        R16, 6
	BRNE       L__days_of_week333
	JMP        L_days_of_week137
L__days_of_week333:
	LDS        R16, _temp2+0
	CPI        R16, 7
	BRNE       L__days_of_week334
	JMP        L_days_of_week138
L__days_of_week334:
L_days_of_week131:
;123.c,367 :: 		curr_item =EEP_read(addrtmp); if (curr_item>99) EEP_write (addrtmp,1);
	LDS        R2, _addrtmp+0
	CALL       _EEP_read+0
	STS        _curr_item+0, R16
	LDI        R17, 99
	CP         R17, R16
	BRLO       L__days_of_week335
	JMP        L_days_of_week139
L__days_of_week335:
	LDI        R27, 1
	MOV        R3, R27
	LDS        R2, _addrtmp+0
	CALL       _EEP_write+0
L_days_of_week139:
;123.c,368 :: 		change_item_core();
	CALL       _change_item_core+0
;123.c,369 :: 		send_cmd_lcd (place1 1);
	LDI        R27, 128
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,370 :: 		for(index=0; index<7;index++){ if(EEP_read(21+index)!=0 ) show_day_week(1+index); else string_puter(txt21);}
	LDI        R27, 0
	STS        _index+0, R27
L_days_of_week140:
	LDS        R16, _index+0
	CPI        R16, 7
	BRLO       L__days_of_week336
	JMP        L_days_of_week141
L__days_of_week336:
	LDS        R16, _index+0
	SUBI       R16, 235
	MOV        R2, R16
	CALL       _EEP_read+0
	CPI        R16, 0
	BRNE       L__days_of_week337
	JMP        L_days_of_week143
L__days_of_week337:
	LDS        R16, _index+0
	SUBI       R16, 255
	MOV        R2, R16
	CALL       _show_day_week+0
	JMP        L_days_of_week144
L_days_of_week143:
	LDI        R27, #lo_addr(_txt21+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt21+0)
	MOV        R3, R27
	CALL       _string_puter+0
L_days_of_week144:
	LDS        R16, _index+0
	SUBI       R16, 255
	STS        _index+0, R16
	JMP        L_days_of_week140
L_days_of_week141:
;123.c,372 :: 		}
	JMP        L_days_of_week128
L_days_of_week129:
;123.c,373 :: 		while(esc) butt_delay ();
L_days_of_week145:
	IN         R27, PINB4_bit+0
	CBR        R18, 1
	SBRS       R27, 4
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_days_of_week146
	CALL       _butt_delay+0
	JMP        L_days_of_week145
L_days_of_week146:
;123.c,374 :: 		vars_updater_func();
	CALL       _vars_updater_func+0
;123.c,375 :: 		}
L_end_days_of_week:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _days_of_week

_set_list:

;123.c,377 :: 		void set_list(){
;123.c,378 :: 		temp2=1;
	PUSH       R2
	PUSH       R3
	PUSH       R4
	LDI        R27, 1
	STS        _temp2+0, R27
;123.c,379 :: 		send_cmd_lcd (lcd_clr);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,380 :: 		while(!esc){
L_set_list147:
	IN         R27, PINB4_bit+0
	CBR        R18, 1
	SBRS       R27, 4
	SBR        R18, 1
	SBRC       R18, 0
	JMP        L_set_list148
;123.c,381 :: 		temp2=select_item_core(temp2,1,4);
	LDI        R27, 4
	MOV        R4, R27
	LDI        R27, 1
	MOV        R3, R27
	LDS        R2, _temp2+0
	CALL       _select_item_core+0
	STS        _temp2+0, R16
;123.c,382 :: 		switch(temp2){
	JMP        L_set_list149
;123.c,383 :: 		case 1:min_item=1;max_item=max_n ; addrtmp=20;send_cmd_lcd (place2 5);send_data_lcd ('^');break;
L_set_list151:
	LDI        R27, 1
	STS        _min_item+0, R27
	LDS        R16, _max_n+0
	STS        _max_item+0, R16
	LDI        R27, 20
	STS        _addrtmp+0, R27
	LDI        R27, 196
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_list150
;123.c,384 :: 		case 2:min_item=0;max_item=23; addrtmp=EEP_read(20)*3-2+100;send_cmd_lcd (place2 10);send_data_lcd ('^');break;
L_set_list152:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 23
	STS        _max_item+0, R27
	LDI        R27, 20
	MOV        R2, R27
	CALL       _EEP_read+0
	LDI        R17, 3
	MUL        R16, R17
	MOV        R16, R0
	SUBI       R16, 2
	SUBI       R16, 156
	STS        _addrtmp+0, R16
	LDI        R27, 201
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_list150
;123.c,385 :: 		case 3:min_item=0;max_item=59; addrtmp=EEP_read(20)*3-1+100;send_cmd_lcd (place2 13);send_data_lcd ('^');break;
L_set_list153:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 59
	STS        _max_item+0, R27
	LDI        R27, 20
	MOV        R2, R27
	CALL       _EEP_read+0
	LDI        R17, 3
	MUL        R16, R17
	MOV        R16, R0
	SUBI       R16, 1
	SUBI       R16, 156
	STS        _addrtmp+0, R16
	LDI        R27, 204
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_list150
;123.c,386 :: 		case 4:min_item=0;max_item=1; addrtmp=EEP_read(20)*3+100; send_cmd_lcd (place1 16);send_data_lcd ('v');break;
L_set_list154:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 20
	MOV        R2, R27
	CALL       _EEP_read+0
	LDI        R17, 3
	MUL        R16, R17
	MOV        R16, R0
	SUBI       R16, 156
	STS        _addrtmp+0, R16
	LDI        R27, 143
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 118
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_set_list150
;123.c,387 :: 		}
L_set_list149:
	LDS        R16, _temp2+0
	CPI        R16, 1
	BRNE       L__set_list343
	JMP        L_set_list151
L__set_list343:
	LDS        R16, _temp2+0
	CPI        R16, 2
	BRNE       L__set_list344
	JMP        L_set_list152
L__set_list344:
	LDS        R16, _temp2+0
	CPI        R16, 3
	BRNE       L__set_list345
	JMP        L_set_list153
L__set_list345:
	LDS        R16, _temp2+0
	CPI        R16, 4
	BRNE       L__set_list346
	JMP        L_set_list154
L__set_list346:
L_set_list150:
;123.c,388 :: 		curr_item =EEP_read(addrtmp); if (curr_item>99) EEP_write (addrtmp,1);
	LDS        R2, _addrtmp+0
	CALL       _EEP_read+0
	STS        _curr_item+0, R16
	LDI        R17, 99
	CP         R17, R16
	BRLO       L__set_list347
	JMP        L_set_list155
L__set_list347:
	LDI        R27, 1
	MOV        R3, R27
	LDS        R2, _addrtmp+0
	CALL       _EEP_write+0
L_set_list155:
;123.c,389 :: 		change_item_core();
	CALL       _change_item_core+0
;123.c,390 :: 		send_cmd_lcd(place1 1); string_puter(txt18); lcd_2gig_out(EEP_read(20));
	LDI        R27, 128
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, #lo_addr(_txt18+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt18+0)
	MOV        R3, R27
	CALL       _string_puter+0
	LDI        R27, 20
	MOV        R2, R27
	CALL       _EEP_read+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
;123.c,391 :: 		send_data_lcd(':');send_data_lcd(' '); send_data_lcd(' ');
	LDI        R27, 58
	MOV        R2, R27
	CALL       _send_data_lcd+0
	LDI        R27, 32
	MOV        R2, R27
	CALL       _send_data_lcd+0
	LDI        R27, 32
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,392 :: 		lcd_2gig_out(EEP_read(addrtmp=EEP_read(20)*3-2+100));send_data_lcd(':');
	LDI        R27, 20
	MOV        R2, R27
	CALL       _EEP_read+0
	LDI        R17, 3
	MUL        R16, R17
	MOV        R16, R0
	SUBI       R16, 2
	SUBI       R16, 156
	STS        _addrtmp+0, R16
	MOV        R2, R16
	CALL       _EEP_read+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
	LDI        R27, 58
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,393 :: 		lcd_2gig_out(EEP_read( addrtmp=EEP_read(20)*3-1+100));send_cmd_lcd(place2 14);
	LDI        R27, 20
	MOV        R2, R27
	CALL       _EEP_read+0
	LDI        R17, 3
	MUL        R16, R17
	MOV        R16, R0
	SUBI       R16, 1
	SUBI       R16, 156
	STS        _addrtmp+0, R16
	MOV        R2, R16
	CALL       _EEP_read+0
	MOV        R2, R16
	CALL       _lcd_2gig_out+0
	LDI        R27, 205
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,394 :: 		if(EEP_read(addrtmp=EEP_read(20)*3+100)==1)string_puter(txt19); else string_puter(txt20);
	LDI        R27, 20
	MOV        R2, R27
	CALL       _EEP_read+0
	LDI        R17, 3
	MUL        R16, R17
	MOV        R16, R0
	SUBI       R16, 156
	STS        _addrtmp+0, R16
	MOV        R2, R16
	CALL       _EEP_read+0
	CPI        R16, 1
	BREQ       L__set_list348
	JMP        L_set_list156
L__set_list348:
	LDI        R27, #lo_addr(_txt19+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt19+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_set_list157
L_set_list156:
	LDI        R27, #lo_addr(_txt20+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt20+0)
	MOV        R3, R27
	CALL       _string_puter+0
L_set_list157:
;123.c,395 :: 		}
	JMP        L_set_list147
L_set_list148:
;123.c,396 :: 		while(esc)  butt_delay ();
L_set_list158:
	IN         R27, PINB4_bit+0
	CBR        R18, 1
	SBRS       R27, 4
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_set_list159
	CALL       _butt_delay+0
	JMP        L_set_list158
L_set_list159:
;123.c,397 :: 		send_cmd_lcd (lcd_clr);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,398 :: 		get_alarms_from_EEP();
	CALL       _get_alarms_from_EEP+0
;123.c,399 :: 		}
L_end_set_list:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _set_list

_next:

;123.c,401 :: 		void next(){
;123.c,402 :: 		day_of_week=get_i2c(3);
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	PUSH       R7
	PUSH       R8
	PUSH       R9
	LDI        R27, 3
	MOV        R2, R27
	CALL       _get_i2c+0
	STS        _day_of_week+0, R16
;123.c,403 :: 		if ((day_s[day_of_week-1]!=0)&&(mode!=0)&& found==0){
	MOV        R18, R16
	LDI        R19, 0
	SUBI       R18, 1
	SBCI       R19, 0
	LDI        R16, #lo_addr(_day_s+0)
	LDI        R17, hi_addr(_day_s+0)
	MOVW       R30, R18
	ADD        R30, R16
	ADC        R31, R17
	LD         R16, Z
	CPI        R16, 0
	BRNE       L__next352
	JMP        L__next214
L__next352:
	LDS        R16, _mode+0
	CPI        R16, 0
	BRNE       L__next353
	JMP        L__next213
L__next353:
	LDS        R16, _found+0
	CPI        R16, 0
	BREQ       L__next354
	JMP        L__next212
L__next354:
L__next211:
;123.c,404 :: 		hours=get_i2c(2);
	LDI        R27, 2
	MOV        R2, R27
	CALL       _get_i2c+0
	STS        _hours+0, R16
;123.c,405 :: 		minutes=get_i2c(1);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _get_i2c+0
	STS        _minutes+0, R16
;123.c,406 :: 		next_index = next_finder (zvonki_hours , zvonki_minuts ,zvonki_on_flags, hours, minutes);
	MOV        R9, R16
	LDS        R8, _hours+0
	LDI        R27, #lo_addr(_zvonki_on_flags+0)
	MOV        R6, R27
	LDI        R27, hi_addr(_zvonki_on_flags+0)
	MOV        R7, R27
	LDI        R27, #lo_addr(_zvonki_minuts+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_zvonki_minuts+0)
	MOV        R5, R27
	LDI        R27, #lo_addr(_zvonki_hours+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_zvonki_hours+0)
	MOV        R3, R27
	CALL       _next_finder+0
	STS        _next_index+0, R16
;123.c,407 :: 		if (next_index!=0){
	CPI        R16, 0
	BRNE       L__next355
	JMP        L_next163
L__next355:
;123.c,408 :: 		found=1;
	LDI        R27, 1
	STS        _found+0, R27
;123.c,409 :: 		next_hour = zvonki_hours[next_index-1];
	LDS        R18, _next_index+0
	LDI        R19, 0
	SUBI       R18, 1
	SBCI       R19, 0
	LDI        R16, #lo_addr(_zvonki_hours+0)
	LDI        R17, hi_addr(_zvonki_hours+0)
	MOVW       R30, R18
	ADD        R30, R16
	ADC        R31, R17
	LD         R16, Z
	STS        _next_hour+0, R16
;123.c,410 :: 		next_minutes =zvonki_minuts[next_index-1];
	LDI        R16, #lo_addr(_zvonki_minuts+0)
	LDI        R17, hi_addr(_zvonki_minuts+0)
	MOVW       R30, R18
	ADD        R30, R16
	ADC        R31, R17
	LD         R16, Z
	STS        _next_minutes+0, R16
;123.c,411 :: 		}
L_next163:
;123.c,403 :: 		if ((day_s[day_of_week-1]!=0)&&(mode!=0)&& found==0){
L__next214:
L__next213:
L__next212:
;123.c,414 :: 		}
L_end_next:
	POP        R9
	POP        R8
	POP        R7
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _next

_main_menu:

;123.c,416 :: 		void main_menu(){
;123.c,417 :: 		temp=1;
	PUSH       R2
	PUSH       R3
	PUSH       R4
	LDI        R27, 1
	STS        _temp+0, R27
;123.c,418 :: 		send_cmd_lcd (lcd_clr);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,419 :: 		while(!esc){
L_main_menu164:
	IN         R27, PINB4_bit+0
	CBR        R18, 1
	SBRS       R27, 4
	SBR        R18, 1
	SBRC       R18, 0
	JMP        L_main_menu165
;123.c,420 :: 		temp=select_item_core(temp,1,6);
	LDI        R27, 6
	MOV        R4, R27
	LDI        R27, 1
	MOV        R3, R27
	LDS        R2, _temp+0
	CALL       _select_item_core+0
	STS        _temp+0, R16
;123.c,421 :: 		switch(temp){
	JMP        L_main_menu166
;123.c,422 :: 		case 1:addrtmp=47;send_cmd_lcd (place2 11);string_puter(txt17); if (enter) set_time_date_func(); break;// time_set
L_main_menu168:
	LDI        R27, 47
	STS        _addrtmp+0, R27
	LDI        R27, 202
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, #lo_addr(_txt17+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt17+0)
	MOV        R3, R27
	CALL       _string_puter+0
	IN         R27, PINC3_bit+0
	CBR        R18, 1
	SBRS       R27, 3
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_main_menu169
	CALL       _set_time_date_func+0
L_main_menu169:
	JMP        L_main_menu167
;123.c,423 :: 		case 2:addrtmp=47;send_cmd_lcd (place2 11);string_puter(txt17); if (enter) days_of_week(); break;//zvonit' po dnyam
L_main_menu170:
	LDI        R27, 47
	STS        _addrtmp+0, R27
	LDI        R27, 202
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, #lo_addr(_txt17+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt17+0)
	MOV        R3, R27
	CALL       _string_puter+0
	IN         R27, PINC3_bit+0
	CBR        R18, 1
	SBRS       R27, 3
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_main_menu171
	CALL       _days_of_week+0
L_main_menu171:
	JMP        L_main_menu167
;123.c,425 :: 		case 3:min_item=1;max_item=55; addrtmp=55;send_cmd_lcd (place1 16);send_data_lcd ('^');
L_main_menu172:
	LDI        R27, 1
	STS        _min_item+0, R27
	LDI        R27, 55
	STS        _max_item+0, R27
	LDI        R27, 55
	STS        _addrtmp+0, R27
	LDI        R27, 143
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,426 :: 		send_cmd_lcd (place2 16);send_data_lcd ('v'); send_cmd_lcd (place2 1);lcd_2gig_out(curr_item);string_puter(txt16);  break;// dlitelnost' s
	LDI        R27, 207
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 118
	MOV        R2, R27
	CALL       _send_data_lcd+0
	LDI        R27, 192
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDS        R2, _curr_item+0
	CALL       _lcd_2gig_out+0
	LDI        R27, #lo_addr(_txt16+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt16+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_main_menu167
;123.c,428 :: 		case 4:min_item=1;max_item=32; addrtmp=60;send_cmd_lcd (place1 16);send_data_lcd ('^');
L_main_menu173:
	LDI        R27, 1
	STS        _min_item+0, R27
	LDI        R27, 32
	STS        _max_item+0, R27
	LDI        R27, 60
	STS        _addrtmp+0, R27
	LDI        R27, 143
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,429 :: 		send_cmd_lcd (place2 16);send_data_lcd ('v'); send_cmd_lcd (place2 1); lcd_2gig_out(curr_item); break;// kolwo zvonkow
	LDI        R27, 207
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 118
	MOV        R2, R27
	CALL       _send_data_lcd+0
	LDI        R27, 192
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDS        R2, _curr_item+0
	CALL       _lcd_2gig_out+0
	JMP        L_main_menu167
;123.c,430 :: 		case 5: addrtmp=47;send_cmd_lcd (place2 11);string_puter(txt17); if (enter) set_list(); break;//set list
L_main_menu174:
	LDI        R27, 47
	STS        _addrtmp+0, R27
	LDI        R27, 202
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, #lo_addr(_txt17+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt17+0)
	MOV        R3, R27
	CALL       _string_puter+0
	IN         R27, PINC3_bit+0
	CBR        R18, 1
	SBRS       R27, 3
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_main_menu175
	CALL       _set_list+0
L_main_menu175:
	JMP        L_main_menu167
;123.c,431 :: 		case 6: min_item=0;max_item=1; addrtmp=48; send_cmd_lcd (place1 16);send_data_lcd ('^');
L_main_menu176:
	LDI        R27, 0
	STS        _min_item+0, R27
	LDI        R27, 1
	STS        _max_item+0, R27
	LDI        R27, 48
	STS        _addrtmp+0, R27
	LDI        R27, 143
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 94
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,432 :: 		send_cmd_lcd (place2 1); if(EEP_read(48)==0)string_puter(txt23);else string_puter(txt22);
	LDI        R27, 192
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 48
	MOV        R2, R27
	CALL       _EEP_read+0
	CPI        R16, 0
	BREQ       L__main_menu365
	JMP        L_main_menu177
L__main_menu365:
	LDI        R27, #lo_addr(_txt23+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt23+0)
	MOV        R3, R27
	CALL       _string_puter+0
	JMP        L_main_menu178
L_main_menu177:
	LDI        R27, #lo_addr(_txt22+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt22+0)
	MOV        R3, R27
	CALL       _string_puter+0
L_main_menu178:
;123.c,433 :: 		send_cmd_lcd (place2 16);send_data_lcd ('v'); break;// mode
	LDI        R27, 207
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDI        R27, 118
	MOV        R2, R27
	CALL       _send_data_lcd+0
	JMP        L_main_menu167
;123.c,434 :: 		}
L_main_menu166:
	LDS        R16, _temp+0
	CPI        R16, 1
	BRNE       L__main_menu366
	JMP        L_main_menu168
L__main_menu366:
	LDS        R16, _temp+0
	CPI        R16, 2
	BRNE       L__main_menu367
	JMP        L_main_menu170
L__main_menu367:
	LDS        R16, _temp+0
	CPI        R16, 3
	BRNE       L__main_menu368
	JMP        L_main_menu172
L__main_menu368:
	LDS        R16, _temp+0
	CPI        R16, 4
	BRNE       L__main_menu369
	JMP        L_main_menu173
L__main_menu369:
	LDS        R16, _temp+0
	CPI        R16, 5
	BRNE       L__main_menu370
	JMP        L_main_menu174
L__main_menu370:
	LDS        R16, _temp+0
	CPI        R16, 6
	BRNE       L__main_menu371
	JMP        L_main_menu176
L__main_menu371:
L_main_menu167:
;123.c,435 :: 		curr_item =EEP_read(addrtmp); if (curr_item>99) EEP_write (addrtmp,1);
	LDS        R2, _addrtmp+0
	CALL       _EEP_read+0
	STS        _curr_item+0, R16
	LDI        R17, 99
	CP         R17, R16
	BRLO       L__main_menu372
	JMP        L_main_menu179
L__main_menu372:
	LDI        R27, 1
	MOV        R3, R27
	LDS        R2, _addrtmp+0
	CALL       _EEP_write+0
L_main_menu179:
;123.c,436 :: 		send_cmd_lcd (place1 1); text_shower(temp);
	LDI        R27, 128
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
	LDS        R2, _temp+0
	CALL       _text_shower+0
;123.c,437 :: 		change_item_core();
	CALL       _change_item_core+0
;123.c,438 :: 		}
	JMP        L_main_menu164
L_main_menu165:
;123.c,439 :: 		send_cmd_lcd (lcd_clr);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,440 :: 		vars_updater_func();
	CALL       _vars_updater_func+0
;123.c,442 :: 		while(esc) butt_delay ();
L_main_menu180:
	IN         R27, PINB4_bit+0
	CBR        R18, 1
	SBRS       R27, 4
	SBR        R18, 1
	SBRS       R18, 0
	JMP        L_main_menu181
	CALL       _butt_delay+0
	JMP        L_main_menu180
L_main_menu181:
;123.c,443 :: 		}
L_end_main_menu:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _main_menu

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;123.c,445 :: 		void main (){
;123.c,446 :: 		init();
	PUSH       R2
	PUSH       R3
	CALL       _init+0
;123.c,447 :: 		vars_updater_func();
	CALL       _vars_updater_func+0
;123.c,448 :: 		get_alarms_from_EEP();
	CALL       _get_alarms_from_EEP+0
;123.c,449 :: 		found=0;
	LDI        R27, 0
	STS        _found+0, R27
;123.c,450 :: 		while(1==1){
L_main182:
;123.c,451 :: 		if(enter) { while(enter){butt_delay();} //
	IN         R27, PINC3_bit+0
	CBR        R20, 1
	SBRS       R27, 3
	SBR        R20, 1
	SBRS       R20, 0
	JMP        L_main184
L_main185:
	IN         R27, PINC3_bit+0
	CBR        R20, 1
	SBRS       R27, 3
	SBR        R20, 1
	SBRS       R20, 0
	JMP        L_main186
	CALL       _butt_delay+0
	JMP        L_main185
L_main186:
;123.c,452 :: 		butt_delay();
	CALL       _butt_delay+0
;123.c,454 :: 		main_menu();
	CALL       _main_menu+0
;123.c,455 :: 		}
L_main184:
;123.c,456 :: 		if(down||up||left||right) { while(down||up||left||right){zvonok=1;} //
	IN         R27, PINC0_bit+0
	CBR        R20, 1
	SBRS       R27, 0
	SBR        R20, 1
	SBRC       R20, 0
	JMP        L__main222
	IN         R27, PINC1_bit+0
	CBR        R20, 1
	SBRS       R27, 1
	SBR        R20, 1
	SBRC       R20, 0
	JMP        L__main221
	IN         R27, PINB5_bit+0
	CBR        R20, 1
	SBRS       R27, 5
	SBR        R20, 1
	SBRC       R20, 0
	JMP        L__main220
	IN         R27, PINC2_bit+0
	CBR        R20, 1
	SBRS       R27, 2
	SBR        R20, 1
	SBRC       R20, 0
	JMP        L__main219
	JMP        L_main189
L__main222:
L__main221:
L__main220:
L__main219:
L_main190:
	IN         R27, PINC0_bit+0
	CBR        R20, 1
	SBRS       R27, 0
	SBR        R20, 1
	SBRC       R20, 0
	JMP        L__main226
	IN         R27, PINC1_bit+0
	CBR        R20, 1
	SBRS       R27, 1
	SBR        R20, 1
	SBRC       R20, 0
	JMP        L__main225
	IN         R27, PINB5_bit+0
	CBR        R20, 1
	SBRS       R27, 5
	SBR        R20, 1
	SBRC       R20, 0
	JMP        L__main224
	IN         R27, PINC2_bit+0
	CBR        R20, 1
	SBRS       R27, 2
	SBR        R20, 1
	SBRC       R20, 0
	JMP        L__main223
	JMP        L_main191
L__main226:
L__main225:
L__main224:
L__main223:
	IN         R27, PORTD+0
	SBR        R27, 1
	OUT        PORTD+0, R27
	JMP        L_main190
L_main191:
;123.c,457 :: 		zvonok=0;
	IN         R27, PORTD+0
	CBR        R27, 1
	OUT        PORTD+0, R27
;123.c,458 :: 		}
L_main189:
;123.c,460 :: 		if (found==1){
	LDS        R16, _found+0
	CPI        R16, 1
	BREQ       L__main396
	JMP        L_main194
L__main396:
;123.c,461 :: 		hours=get_i2c(2);
	LDI        R27, 2
	MOV        R2, R27
	CALL       _get_i2c+0
	STS        _hours+0, R16
;123.c,462 :: 		minutes=get_i2c(1);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _get_i2c+0
	STS        _minutes+0, R16
;123.c,463 :: 		if (next_hour==hours&&next_minutes ==minutes ){
	LDS        R17, _next_hour+0
	LDS        R16, _hours+0
	CP         R17, R16
	BREQ       L__main397
	JMP        L__main228
L__main397:
	LDS        R17, _next_minutes+0
	LDS        R16, _minutes+0
	CP         R17, R16
	BREQ       L__main398
	JMP        L__main227
L__main398:
L__main216:
;123.c,464 :: 		found=0;
	LDI        R27, 0
	STS        _found+0, R27
;123.c,465 :: 		zvonok=1;
	IN         R27, PORTD+0
	SBR        R27, 1
	OUT        PORTD+0, R27
;123.c,466 :: 		send_cmd_lcd (lcd_clr);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,467 :: 		send_cmd_lcd (place1 1);
	LDI        R27, 128
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,468 :: 		send_cmd_lcd (place1 1);
	LDI        R27, 128
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,469 :: 		send_cmd_lcd (place1 1);
	LDI        R27, 128
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,470 :: 		string_puter(txt26);
	LDI        R27, #lo_addr(_txt26+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt26+0)
	MOV        R3, R27
	CALL       _string_puter+0
;123.c,471 :: 		for(temp=0; temp<as_long_as_sec ; temp++) Delay_1sec();
	LDI        R27, 0
	STS        _temp+0, R27
L_main198:
	LDS        R17, _temp+0
	LDS        R16, _as_long_as_sec+0
	CP         R17, R16
	BRLO       L__main399
	JMP        L_main199
L__main399:
	CALL       _Delay_1sec+0
	LDS        R16, _temp+0
	SUBI       R16, 255
	STS        _temp+0, R16
	JMP        L_main198
L_main199:
;123.c,472 :: 		send_cmd_lcd (lcd_clr);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,473 :: 		zvonok=0;
	IN         R27, PORTD+0
	CBR        R27, 1
	OUT        PORTD+0, R27
;123.c,463 :: 		if (next_hour==hours&&next_minutes ==minutes ){
L__main228:
L__main227:
;123.c,474 :: 		}}
L_main194:
;123.c,476 :: 		next();
	CALL       _next+0
;123.c,481 :: 		if ((day_s[day_of_week-1]!=0)&&(mode!=0)){
	LDS        R18, _day_of_week+0
	LDI        R19, 0
	SUBI       R18, 1
	SBCI       R19, 0
	LDI        R16, #lo_addr(_day_s+0)
	LDI        R17, hi_addr(_day_s+0)
	MOVW       R30, R18
	ADD        R30, R16
	ADC        R31, R17
	LD         R16, Z
	CPI        R16, 0
	BRNE       L__main400
	JMP        L__main230
L__main400:
	LDS        R16, _mode+0
	CPI        R16, 0
	BRNE       L__main401
	JMP        L__main229
L__main401:
L__main215:
;123.c,482 :: 		send_cmd_lcd (place2 10);
	LDI        R27, 201
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,483 :: 		string_puter(txt24);
	LDI        R27, #lo_addr(_txt24+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt24+0)
	MOV        R3, R27
	CALL       _string_puter+0
;123.c,484 :: 		if (next_index!=0){lcd_2gig_out(next_hour);send_data_lcd(':');
	LDS        R16, _next_index+0
	CPI        R16, 0
	BRNE       L__main402
	JMP        L_main204
L__main402:
	LDS        R2, _next_hour+0
	CALL       _lcd_2gig_out+0
	LDI        R27, 58
	MOV        R2, R27
	CALL       _send_data_lcd+0
;123.c,485 :: 		lcd_2gig_out(next_minutes);}else string_puter(txt25);
	LDS        R2, _next_minutes+0
	CALL       _lcd_2gig_out+0
	JMP        L_main205
L_main204:
	LDI        R27, #lo_addr(_txt25+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt25+0)
	MOV        R3, R27
	CALL       _string_puter+0
L_main205:
;123.c,486 :: 		}
	JMP        L_main206
;123.c,481 :: 		if ((day_s[day_of_week-1]!=0)&&(mode!=0)){
L__main230:
L__main229:
;123.c,489 :: 		send_cmd_lcd (place2 10);
	LDI        R27, 201
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,490 :: 		if (mode==0) string_puter(txt23);
	LDS        R16, _mode+0
	CPI        R16, 0
	BREQ       L__main403
	JMP        L_main207
L__main403:
	LDI        R27, #lo_addr(_txt23+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_txt23+0)
	MOV        R3, R27
	CALL       _string_puter+0
L_main207:
;123.c,491 :: 		}
L_main206:
;123.c,494 :: 		send_cmd_lcd (place2 1);
	LDI        R27, 192
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,495 :: 		show_time ();
	CALL       _show_time+0
;123.c,496 :: 		send_cmd_lcd (place1 1);
	LDI        R27, 128
	MOV        R2, R27
	CALL       _send_cmd_lcd+0
;123.c,497 :: 		show_date ();
	CALL       _show_date+0
;123.c,499 :: 		}}
	JMP        L_main182
L_end_main:
	JMP        L_end_main
; end of _main
