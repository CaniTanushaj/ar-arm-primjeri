.equ x,2
.equ y,5
.global _start

_start:
	MOV r0,#0
	MOV r1,#x
	MOV r2,#y
while:
	MUL r0,r1,r1
	SUB r0,r0,#2
	ADD r1,r1,#1
	ADD r2,r2,#1
	CMP r2,#10
	BLT while
	B stop
stop:
	B stop
	
.end
	