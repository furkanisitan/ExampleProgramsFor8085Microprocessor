LXI H, 3629H	; BCD-1
LXI D, 4738H	; BCD-2
MOV A, L	; A = L
ADD E		; A += E
DAA		; A yı BCD ye çevirir.
MOV C, A	; C = A Result lower
MOV A, H	; A = H
ADC D		; A += (D + Elde)
DAA		; A yı BCD ye çevirir.
MOV B, A	; B = A Result high
HLT

; HL ve DE deki BCD sayıları toplar,
; sonucu BC ye yazar.