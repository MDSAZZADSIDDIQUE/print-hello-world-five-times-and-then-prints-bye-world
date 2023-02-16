.model small
.stack 100h

.data
msg1 db "Hello World", "$"
msg2 db "Bye World", "$"
count db 0
.code
main proc
    mov ax, @data
    mov ds, ax
    
    jmp print
    
    print:
    lea dx, msg1
    mov ah, 09h
    int 21h
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    inc count
    mov bl, count
    cmp bl, 5
    je print2
    jmp print
    
       
    print2:
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    inc count
    lea dx, msg2
    mov ah, 09h
    int 21h
    exit:
    mov ah, 04ch
    int 21h
    main endp
end main