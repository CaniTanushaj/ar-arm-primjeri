/*  Zapisi pomo?u uvjetnih naredbi
	int a,b,c;
 	if(a<0 && b<0)
 	{
 		c=a+b;
 	}
 	else if (a==0 || b==0)
 	{
 		c++;
 	}
 	else
 		c=b-a;
 */
.equ a,1
.equ b,1
.equ c,0
.text
.global _start

_start:
	MOV r0,#a
	MOV r1,#b
	MOV r2,#c
	CMP r0,#0
	BGE ifelse
	CMP r1,#0
	BGE ifelse
	ADD r2,r0,r1
	B stop
	
ifelse:
	CMP r0,#0
	BEQ zadovoljenelse
	CMP r1,#0
	BEQ zadovoljenelse
	B else
	
zadovoljenelse:
	ADD r2,r2,#1
	
else:
	SUB r2,r1,r0
	B stop
	
stop:
	B stop
	
.end
	