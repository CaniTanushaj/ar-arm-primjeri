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
	MOV r1,#0
	B uvjet
	
uvjet:
	CMP r1,#5
	BGE uvecajwhile
	ADD r2,r2,r1
	ADD r1,r1,#1
	B uvjet
	
uvecajwhile:
	ADD r0,r0,#1
	b while
	
stop:
	B stop

.end