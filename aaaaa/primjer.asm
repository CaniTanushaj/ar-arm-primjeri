.global _start
.text

_start:
	MOV r5,#1
	B stop
	
stop:
	B stop
	
.end