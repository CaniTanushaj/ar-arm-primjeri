.equ stack_top,0x1000
.text
.global _start

_start:
	MOV r0,#0
	ADR r1,prvi
	ADR r2,drugi
	
dalje:
	LDR r3,[r1],#1
	LDR r4,[r2],#1
	CMP r3,#0
	BEQ kraj
	CMP r4,#0
	BEQ kraj
	CMP r3,r4
	BNE stop
	B dalje
	
	
kraj:
 CMP r3,r4
 BNE stop
 ADD r1,r1,#1
 	
stop:
	B stop
	
prvi:
.byte 'a','n','a',0x00000000

drugi:
.byte 'a','n','a',0x00000000

.end