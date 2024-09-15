
_main:

;flasher.c,1 :: 		void main() {
;flasher.c,2 :: 		trisb=0b00000000;
	CLRF       TRISB+0
;flasher.c,3 :: 		loop:
___main_loop:
;flasher.c,4 :: 		portb.B0=1;
	BSF        PORTB+0, 0
;flasher.c,5 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	NOP
	NOP
;flasher.c,6 :: 		portb.B0=0;
	BCF        PORTB+0, 0
;flasher.c,7 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	NOP
	NOP
;flasher.c,8 :: 		portb.B1=1;
	BSF        PORTB+0, 1
;flasher.c,9 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;flasher.c,10 :: 		portb.B1=0;
	BCF        PORTB+0, 1
;flasher.c,11 :: 		goto loop;
	GOTO       ___main_loop
;flasher.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
