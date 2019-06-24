MVI A, 00FFH	; 00FFH verisini A ya yükle
MVI B, 10	; 10 verisini B ye yükle
LXI H, 0200H	; 0200H verisini HL ye yükle
NXT: MOV M, A	; M(HL) ye A yı yükle
INX H		; HL yi 1 arttır
DCR B		; B yi 1 azalt
JNZ NXT		; 0 değilse NXT ye atla
HLT		; Sonlandır

; 0200H dan başlayarak ileri doğru 10 bellek boyunca
;  tüm belleklerin içeriğine 00FFH ekler.