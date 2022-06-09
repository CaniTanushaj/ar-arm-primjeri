.global _start
.text

_start:
 MOV sp,#0x1000
 ADR r0,niz
 MOV r1,#0
 MOV r4,#0
 
petlja:
	LDR r2,[r0],#4
	CMP r2,#0
	BEQ stop
	AND r3,r2,#00000001
	CMP r3,#1
	BEQ pohrana
	BNE povecanje
	B petlja
	
pohrana:
	STR r2,[sp],#4
	B petlja
	
povecanje:
	MUL r4,r2,r2
	STR r4,[r0,#-1]
	B petlja
	
stop:
	B stop
	
niz:
.word 1,2,3,4,5,6,7,8,9,0

.end