CALL LOAD	; Altprogramı çağır
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

; Sırayla sayıları belleğe yükler.
LOAD: MVI A, 38H
STA 0200H
MVI A, 21H
STA 0201H
MVI A, 29H
STA 0202H
MVI A, 1FH
STA 0203H
RET