; DELAY 1us IN 11.059 MHZ CPU  
CSEG AT 0
	MOV R1,#255   	; 1.085us
	L1:	DJNZ R1, L1	; 2* 1.085us* 255 = 553.35us 	TOTAL: 554.435us 
	MOV R1,#205   	; 1.085us	TOTAL: 555.52us
	L2:	DJNZ R1, L2	; 2* 1.085us* 205 = 444.85us TOTAL: 1000.37us
END