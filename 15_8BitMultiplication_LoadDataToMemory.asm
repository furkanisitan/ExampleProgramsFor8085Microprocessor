DATA: EQU 0200H
RESULT: EQU 0202H

LXI H, DATA	; HL=0200H 
MVI M, 8	; 0200H da 8 var 
INX H		; 0201H
MVI M, 6	; 0201H da 6 var
CALL MULT	; çarp
HLT

MULT: LXI H, DATA
MOV A, M	; A=sayi1
INX H
MOV E, M	; E=sayi2
LXI H, 0
MVI B, 8
LOOP: DAD H	; HL+=HL => Sola mantıksal kaydırma(En sağa 1 tane 0 ekler)
RLC		; A yı sola dairesel döndür
JNC NXT		; Elde yoksa atla
 DAD D		; HL+=DE 
NXT: DCR B	; B-=1
JNZ LOOP	; 0 değilse atla
SHLD RESULT	; HL yi sakla
RET

; Kaydır ve topla algoritması ile çalışır.
; 2 adet 8 bitlik sayının çarpımı 16 bit dir.
