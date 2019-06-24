MVI A, 8
CALL SQUARE
HLT

SQUARE: LXI H, SQ ; SQ ya işaret eder
MOV E, A	  ; E=A
MVI D, 0	  ; D=0
DAD D		  ; HL+=DE
MOV B, M	  ; Bellekteki veri B ye aktarılır.
RET
SQ: DB 0,1,4,9,16,25,36,49,64,81,100,121,144,169,196,225


; Kare bulma için sayı kendisi ile çarpılabilir.
; Fakat bu altyordam sayi aralığını 0-15 olarak kabul etmiştir.
; Bu yüzden ikinci yöntem olarak 0-15 aralığındaki sayıların kareleri
;  bellekte saklanır ve istenen sayının karesi bellekten
;  geri döndürülür.
