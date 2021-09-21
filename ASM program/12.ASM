TITLE 'Read a charecter, if it is uppercase then print it'
.MODEL MEDIUM
.STACK 100H
.DATA
.CODE
MAIN PROC
	MOV AH,1
	INT 21H
	CMP AL,'A'  ;also try 'a'
	JNGE EXIT   ;JL
	CMP AL,'Z'  ;also try 'z'
	JNLE EXIT   ;JG
	MOV DL,AL
	MOV AH,2
	INT 21H
EXIT:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
