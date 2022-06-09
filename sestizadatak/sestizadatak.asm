.text
.global _start

_start:
	ADR r0,niz
	LDR r1,[r0],#4
	LDR r2,[r0],#4
	ADD r1,r1,#3
	ADD r2,r2,#3
	STR r1,[r0],#4
	STR r2,[r0]
	B stop
	
	
stop:
	B stop
	
niz:
.word 10,32

.end