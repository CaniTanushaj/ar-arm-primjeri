.equ stack_pointer,0x1000
.text
.global _start

_start:
	MOV sp,#stack_pointer
	ADR r0,niz
	MOV r1,#0
	
ucitaj:
	LDR r2,[r0],#8
	CMP r1,#3
	BEQ stop
	MOV r2,r2, LSR #2
	ADD r1,r1,#1
	STR r2,[sp],#4
	B ucitaj
	
stop:
	B stop
	
niz:
.word 4,8,12,16,8,20,0x0000

.end