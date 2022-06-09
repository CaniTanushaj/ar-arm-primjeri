.equ y,15
.equ x,25
.equ y,12

.text
.global _start

_start:
	MOV r0,#y
	MOV r1,#x
	MOV r2,#y
	SUB r1,r1,r2
	SUB r0,r0,r1
	
stop:
	B stop

.end