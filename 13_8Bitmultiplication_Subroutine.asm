MVI B, 77	; B=77
MVI C, 82	; C=82
CALL MULT	; HL=B*C
HLT

MULT: LXI H, 0	; HL=0
MOV E, B	; DE=B
LOOP: DAD D	; HL+=DE
DCR C		; C-=1
JNZ LOOP	; 0 değilse atla
RET

; B ve C deki iki sayıyı çarpar, sonucu HL de tutar
