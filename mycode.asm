org 100h

mov ax, 0011h
mov bx, 0004h
mul bx

mov ah, dh
and ah, 0F0h
shr ah, 4
call print_digit

mov ah, dh
and ah, 0Fh
call print_digit

mov ah, al
and ah, 0F0h
shr ah, 4
call print_digit

mov ah, al
and ah, 0Fh
call print_digit

mov ah, 4Ch
int 21h

print_digit:
    add ah, 30h
    cmp ah, 39h
    jle print_char
    add ah, 7
print_char:
    mov dl, ah
    mov ah, 02h
    int 21h
    ret
