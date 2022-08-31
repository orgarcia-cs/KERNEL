; A simple boot sector program that loops forever
loop:
    jmp loop
; the line below fills in remainder with zeros up to 510 bytes
times 510-($-$$) db 0
; 386 CPUs required this number at end to recognize as bootsector
dw 0xaa55
; Total Size is 512 bytes with two bytes for our bootloader code:

;eb - the jump opcode
;fe - the relative offset (-2)
; Note the LittleEndian ordering when memory shown in hexdump

