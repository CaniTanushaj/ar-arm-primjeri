.text
.global _start

_start:
	MOV r0,#0
	MOV r1,#0
	B for
	
stop:
	B stop
	

for:
	CMP r0,#6
	BLT dodaj
	B stop
	
	
	
dodaj:
	ADD r1,r1,r0
	ADD r0,r0,#1
	B for
	
.end