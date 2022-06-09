.global _start

_start:
	ADR r0,niz
	MOV r1,#0
	MOV r3,#0
	
petlja:
	LDRB r2,[r0],#1
	CMP r2,#0x00000000
	BLE stop
	CMP r2,#97
	BEQ zamjena
	CMP r2,#65
	BEQ zamjena
	B petlja
	
zamjena:

	ADD r3,r2,#4
	STRB r3,[r0,#-1]
	B petlja

stop:

	B stop
	
niz:
 .byte 'A' , 'N' , 'A' , 'L', 'a', 0x00000000

.end
