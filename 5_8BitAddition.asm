LXI H, 0400H	; HL yi 0400H ile yükle
MOV A, M	; M(HL) nin içeriğini A ya aktar
INR L		; HL yi 0401H yap
ADD M		; M nin içeriğini A ya ekle
INR L		; HL yi 0402H yap
MOV M, A	; A nın içeriğini M ye aktar
HLT

; 0400H ile 0401H taki verileri toplar 0402H a aktarır