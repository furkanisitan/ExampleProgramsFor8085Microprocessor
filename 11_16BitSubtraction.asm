LHLD 0200H	;HL ye 0200H ve 0201H ı yükle
XCHG		;DE ile HL yi değiştir
LHLD 0202H	;HL ye 0201H ve 0203H ı yükle
MOV A, E	;A = E
SUB L		;A -= L
MOV L, A	;L = A
MOV A, D	;A = D
SBB H		;A -= (H + Ödünç)
MOV H, A	;H = A
SHLD 0204H	;Kaydet
HLT

;0200H ve 0201H daki 16 bit veriden
;0202H ve 0203H daki veriyi çıkarır. Sonucu
;0204H ve 0205H adreslerine yazar.