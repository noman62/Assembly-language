 .model small
 .stack 100h
 .data
 a db 'lower form $'
 b db 10,13, 'upper form $'
 .code
 main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al     
    
    
    mov ah,2
    sub bl,32
    mov dl,bl 
    int 21h  
    
    
    exit:
    mov ah,4ch
    int 21h 
    main endp
 end main