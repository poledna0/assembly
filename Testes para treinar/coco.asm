section .data
    msg db 'eu sabo muto', 0xA, 0xD
    tam equ $- msg
section .text

global _start

_start:
    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80

    mov EAX, 0x1
    xor EBX, EBX
    int 0x80