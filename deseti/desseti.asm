/* U bloku memorije prebrojiti koliko ima neparnih podataka. 
Brojanje završava prvim podatkom 0*/
.text
.global _start

_start:
	ADR r0,niz
	MOV r2,#0
	
usporedba:
	LDR r1,[r0],#4
	CMP r1,#0
	BEQ stop
	AND r3,r1,#0x00000001
	CMP r3,#0x00000001
	BNE usporedba
	ADD r2,r2,#1
	B usporedba


stop:
	B stop
	
niz:
.word 1,2,3,4,5,6,7,0