; hello world program in assemply 
; author: sheeraz

global _start 

section.text

_start:
        mov eax, 0x4
        mov ebx, 0x1
        mov ecx, message
        mov edx, mlen
        int 0x80

        ;Exiting The program

        mov eax, 0x1
        mov ebx, 0x5
        int 0x80

section.data
    message: db "hello sheeraz from assembly you made it so far the registers"
    mlen equ $-message

