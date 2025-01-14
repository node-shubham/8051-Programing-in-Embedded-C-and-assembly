CSEG AT 0
	REP:	
	SETB P2.1
	ACALL DELAY
	CLR P2.1
	ACALL DELAY
	SJMP REP
DELAY:								; RESULT : 1.006 SEC
	MOV R0, #8 		; 1.085uS
	L3:
	MOV R1, #240	; 1.085uS
	L2:
	MOV R2, #240	; 1.085uS
	L1:	
	DJNZ R2, L1		; L1 DELAY: 2 * 1.085 * 240uS = 520.8uS
	DJNZ R1, L2		; 1.085*(1+2)*240uS =781.2uS + L2 DELAY: 240*520.8uS= 124992uS+781.2uS =125773.2uS (BETWEEN L2)		
	DJNZ R0, L3		; 1.085*(1+2)*8uS = 26.04uS  + L3 DELAY: 8*125773.2uS =1006185.6uS+26.04uS =10006211.64uS (BETWEEN L3)   
	RET				; 1.085uS	TOTAL:1006213.77uS =1.006213 Sec
END	