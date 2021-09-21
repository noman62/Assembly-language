TITLE 'count the number of charectersin a line'
.MODEL MEDIUM
.STACK 100H
.DATA
.CODE
MAIN PROC			
	MOV AH,1
	;LOOP DX,0		 ;
	XOR DX,DX
	INT 21H
	WHILE_:
		CMP AL,0DH ;ASCII OF SPACE
		JE EXIT
		INC DX
		INT 21H 			;some problem, where is the code to print DX ?
		JMP WHILE_			; it doesn't print the number ! 
		
		
EXIT:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN