.global _start
.text

_start:
	ADR r0,niz
	ADR r1,niz2
	MOV r2,#0
	
petlja:
	LDRB r3,[r0],#1
	LDRB r4,[r1],#1
	CMP r3,#0
	BEQ stop
	CMP r4,#0
	BEQ stop
	CMP r3,r4
	BNE krivo
	BEQ isti
	
isti:
	MOV r5,#1
	B petlja
	
krivo:
	MOV r5,#0
	B stop
	

stop:
	B stop
	
niz:
.byte 'a','n','a','l',0x0000000
niz2:
.byte 'a','n','a','r',0x0000000

.end