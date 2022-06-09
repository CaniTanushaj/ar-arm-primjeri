.text
.global _start

_start:
	MOV sp,#0x1000
	ADR r0,niz
	MOV r1,#0
	
petlja:
	LDR r2,[r0],#4
	CMP r2,#0
	BEQ stop
	AND r3,r2,#0x00000001
	CMP r3,#0x00000001
	BEQ neparan
	MOV r2,r2,LSR #1
	STR r2,[sp],#4
	B petlja
	
neparan:
	MOV r3,r2,LSL #1
	STR r3,[sp],#4
	B petlja
	
	
stop:
	B stop
	
niz:
.word 4,5,7,8,0

.end