MVI A, 0	; A yı sıfırla
MVI B, 20	; B ye 20 yükle
LXI H, 0200H	; HL ye 0200H yükle
NXT: MOV M, A	; M(HL) yi sıfırla
INX H		; HL yi 1 arttır
DCR B		; B yi 1 azalt
JNZ NXT		; B sıfır değilse NXT ye atla
HLT		; Sonlandır

; 0200H adresinden başlayarak 20 adres belleği boyunca
;  içerikleri sıfırlar