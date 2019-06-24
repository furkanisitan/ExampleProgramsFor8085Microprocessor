MVI B, 5	; B=5
MVI C, 3	; C=3
CALL SUM	; B+=C
MOV A, B	; B yi A ya yükle
HLT

SUM: MOV A, B	; B yi A ya yükle
ADD C		; A+=C
MOV B, A	; A yı B ye yükle
RET		; Altyordamdan geri dön
; B ile C yi toplayıp sonucu B ye yazar