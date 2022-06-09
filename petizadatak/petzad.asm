.equ i,0
.equ j,0
.equ suma,0
.global _start

_start:
	MOV r0,#i
	MOV r1,#j
	MOV r2,#suma
	
while:
	CMP r0,#5
	BLT for
	B stop
	
for:
	CMP r1,#5
	BGT uvecaj
	ADD r2,r2,r1
	ADD r1,r1,#1
	
uvecaj:
	ADD r0,r0,#1
	B while
	
stop:
	B stop

.end