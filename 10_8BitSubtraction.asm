MVI C, 00	; Borç
LDA 0200H	; Adresteki veriyi akümülatöre yükle
MOV B, A	; B = A
LDA 0201H	; Adresteki veriyi akümülatöre yükle
SUB B		; A -= B
JNC NXT		; Elde yoksa atla
CMA		; Tümle
INR A		; 1 arttır (2 ye tümleme)
INR C		; 1 arttır
NXT: STA 0202H	; Sonucu kaydet
MOV A, C	
STA 0203H	; Borcu kaydet
HLT

;0201H daki veriden 0200H daki veri çıkarılır.
;Elde oluşmuşsa sonuc negatiftir.
;Negatif sayınının 2'ye tümleri bulunur.
;Sonuc ilgiliadreslere kaydedilir.
;Çıkarma işlemi sonucu 0202H adresine kaydedilmiştir.
;0203H adresindeki veri 0 ise sonuç pozitif, 1 ise negatiftir