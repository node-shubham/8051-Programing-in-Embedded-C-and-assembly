; EXCHANGE OPERATION
	CSEG AT 0
	MOV R1, #255
	MOV A, #127
	MOV 0X50, #40H 
	XCH A,R1
	XCH A,0X50
	END