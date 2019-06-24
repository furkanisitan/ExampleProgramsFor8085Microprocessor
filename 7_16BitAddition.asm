LXI B, 0200H
LXI H, 0202H
LXI D, 0204H
STC		; Eldeyi 1 yap
CMC		; Eldeyi tümle C=0
MVI A, 2	; A=2 (sayılar 2 byte tan oluşuyor)
MORE: STA TMP	; A yı sakla
LDAX B		; BC deki veriyi A ya yükle
ADC M		; A=A+[HL]+C
STAX D		; A yı D adresine kaydet
INX B
INX H		; 1 er arttır
INX D
LDA TMP		; TMP deki veriyi A ya yükle
DCR A		; A-=1
JNZ MORE	; 0 değilse atla
HLT
TMP: DS 1	; 1 byte boyutunda değişken

; 0201H 0200H	Sayı1 in adresi
; 0203H 0202H	Sayı2 nin adresi
; 0205H 0204H	Toplam ın adresi
