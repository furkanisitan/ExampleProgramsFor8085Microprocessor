LXI H, 0200H	; HL ye 0200H verisini yükle
MVI A, 0FFH	; A ya FFH(255) verisini yükle
LXI B, 0064H	; B => 0, C => 100
LOOP: CMP M	; M ile A yı karşılaştır.
JNZ NO		; Z biti sıfır değilse atla
INR B		; B yi 1 arttır
NO: INX H	; M yi 1 arttır 
DCR C		; C yi bir azalt
JNZ LOOP 	; Z biti sıfır değilse atla
MOV A, B	; Sonucu A ya aktar
HLT

; 0200H dan başlayarak ileri doğru 100 adres boyunca
;  kaç adet 255 verisi olduğunu sayar ve sonucu
;  A ya yazar