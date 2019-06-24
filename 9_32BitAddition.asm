LXI B, 0200H
LXI H, 0204H
LXI D, 0208H
STC		; Eldeyi 1 yap
CMC		; Eldeyi tümle C=0
MVI A, 4	; A=4 (sayılar 4 byte tan oluşuyor)
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

; 0205H 0204H 0203H 0202H Sayi1(16 bit)
; 0209H 0208H 0207H 0206H Sayi2(16 bit)
; 020DH 020CH 020BH 020AH Toplam(16 bit)
