STC
CMC

MVI B, 218	; B=218 (11011010)
MVI C, 0	; C=0
MVI D, 8	; D=8 (8 bit old. için döngü 8 kere dönecek)

LOOP: MOV A, B	; A=B
RLC		; A yı dairesel sola döndür. (Elde biti ile)
MOV B, A	; B=A
MOV A, C	; A=C
RAR		; A yı sağa döndür
MOV C, A	; C=A
DCR D		; D-=1
JNZ LOOP	; 0 değilse atla
HLT

; 	    B (RLC)	   C (RAR)
;Adım0: 11011010(218)	00000000
;Adım1: 1011010 1	10000000
;Adım2: 0110101 1	11000000
;Adım3: 1101011 0	01100000
;Adım4: 1010110 1	10110000
;Adım5: 0101101 1	11011000
;Adım6: 1011011 0	01101100
;Adım7: 0110110 1	10110110
;Adım8: 1101101 0	01011011 (91)

