MVI B, 14	; B=14
MVI C, 9	; C=9
LXI H, 0	; HL=0
MOV E, B	; DE=B(14)
LOOP: DAD D	; HL+=DE
DCR C		; C-=1
JNZ LOOP	; 0 değilse atla
HLT

; B ve C deki iki sayıyı çarpar, sonucu HL de tutar
