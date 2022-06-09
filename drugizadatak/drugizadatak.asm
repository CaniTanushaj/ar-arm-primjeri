.equ i,22
.equ j,2
.equ x,5

.text

.global _start

_start:
	MOV r0,#i
	MOV r1,#j
	MOV r3,#x
	SUB r0,r0,r1
	SUB r0,r0,#14
	CMP r0,r3
	BLT if
	MOV r0,#0
	B stop
	
	
if:
	MOV r0,r3	
	B stop
	
stop:
	B stop

.end