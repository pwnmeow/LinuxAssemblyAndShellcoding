; hello world program in assembly 
; author: sheeraz

global _start 

section.text

_start:
        mov eax, 0x4
        mov ebx, 0x1
        mov ecx, message
        mov edx, mlen
        int 0x80

        ; Exiting The program

        mov eax, 0x1
        mov ebx, 0x5
        int 0x80

section.data

        var1: db 0xAA
        var2: db 0xBB,0xCC,0xDD
        var3: dw 0xEE
        var4: dd 0xAABBCCDD
        var5: dd 0x112233
        var6: TIMES 6 db 0xFF

        message: db "Hello sheeraz from assembly you $
        mlen equ $-message

section.bss

        var7: resb 100
        var8: resw 20