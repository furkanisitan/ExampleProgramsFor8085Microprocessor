STC
CMC
MVI B, 009AH	; B=154
MVI A, 0	; A=0
LXI H, 0	; HL=0

LOOP: ADI 1	; A+=1
DAA		; A yı BCD ye dönüştür
JNC NXT		; Elde yoksa atla
INR H		; H+=1
NXT: DCR B	; B-=1
JNZ LOOP	; 0 değilse atla
MOV L, A	; L=A
HLT

; Her döngüde A ya 1 eklenip BCD ye dönüştürür.
; Eğer elde varsa, H 1 arttırılır.
; Son olarak A değeri L ye kaydedilir.
; BCD sonucu böylece HL de olmuş olur.
