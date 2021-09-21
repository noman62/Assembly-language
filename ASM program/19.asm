TITLE 'PUSH POP'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC			
	XOR CX,CX ; clear CX
	MOV AH,1
LOOP_:
	CMP AL,0DH
	JE EXIT_LOOP_
	PUSH AX   ; push AX onto the STACK
	INC CX
	INT 21H
	JMP LOOP_
EXIT_LOOP_:
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL,0AH
	INT 21H
	;JCXZ EXIT_
TOP_:
	POP DX    ; pop a value from STACK into DX
	INT 21H
	LOOP TOP_
EXIT_:
	MOV AH,4CH
	INT 21H
MAIN ENDP
END MAIN