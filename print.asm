mov ah, 0x0e ; set tty mode (teletype mode) of Interrupt 10h for character output (0x0e)
mov al, 'W'  ; set a single byte, the output character
int 0x10     ; Call the interrupt routine
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'c'
int 0x10
mov al, 'o'
int 0x10
mov al, 'm'
int 0x10
mov al, 'e'
int 0x10
mov al, ' '
int 0x10
mov al, 't'
int 0x10
mov al, 'o'
int 0x10
mov al, ' '
int 0x10
mov al, ' '
int 0x10
mov al, 'O'
int 0x10
mov al, 'S'
int 0x10
mov al, '3'
int 0x10
mov al, '5'
int 0x10
mov al, '0'
int 0x10
mov al, '2'
int 0x10
mov al, '!'
int 0x10

jmp $ ; jump to current address = infinite loop this is your boot program

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 