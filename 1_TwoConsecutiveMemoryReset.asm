MVI A, 0	; A yı sıfırla
LXI H, 0400H	; HL ye 0400H yükle
MOV M, A	; HL(0400H) yi sıfırla
INR L		; L yi 1 arttır
MOV M, A	; HL(0401H) yi sıfırla
HLT		; Sonlandır

; 0400H ve 0401H adreslerinin içeriğini sıfırlar