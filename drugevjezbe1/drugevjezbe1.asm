.global _start
.text 

_start:
	ADR r0 ,niz
	MOV r1,#0
for:
	LDR r2,[r0],#4
	CMP r2,#0
	BEQ stop
	AND r3, r2,#0x00000001
	CMP r3,#0x00000001
	BEQ dodaj
	B for
	
dodaj:
	ADD r1,r1,#1
	B for

stop:
	B stop
	
niz:
.word 1,2,3,4,5,6,7,8,9,0

.end