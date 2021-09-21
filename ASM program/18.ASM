TITLE 'sum of array'
.MODEL SMALL
.STACK 100H
.DATA
W DB 10,20,30,40,50  			;must use DB
.CODE
MAIN PROC			
	MOV AX, @DATA
	MOV DS,AX
	XOR SI,SI
	LEA SI,W
	MOV CX,5
	ADDNUM_:
	ADD AX,[SI]	;AX=AX+[SI]
	ADD SI,2
	LOOP ADDNUM_		; where is tha code to diaplay sum?
	MOV AH,4CH
	INT 21H
MAIN ENDP
END MAIN