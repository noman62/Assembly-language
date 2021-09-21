.model small
.stack 100h
.data
UpperCase db 'Enter any Uppercase letter: $'
LowerCase db 10,13,'Lower case letter :'

.code
main proc
mov ax,@data
mov ds,ax

lea dx,UpperCase
mov ah,9
int 21h
mov ah,1
int 21H
add al,32 
lea dx,msg2
mov ah,9
int 21h
mov ah,4ch
int 21h
main endp
end main