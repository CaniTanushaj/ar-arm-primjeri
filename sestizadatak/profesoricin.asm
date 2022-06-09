.global _start
.text
_start:

	ADR r0, pod1
	ADR r1, pod2
	MOV r4, #0
	
provjeri:
	
	LDRB r2, [r0], #1
	CMP r2, #0
	BEQ jelikraj
	LDRB r3, [r1],#1
	CMP r3, #0
	BEQ stop

	CMP r2, r3
	BEQ provjeri
	BNE stop

jelikraj:

	LDRB r3, [r1], #1
	CMP r3, #0
	BEQ isti
	BNE stop

isti:
	MOV r4, #1
	B stop

stop:
	B stop

pod1:
	.byte 'i', 'm', 'e', 0x00000000

pod2:
	.byte 'i', 'm', 'e', 0x00000000

.end