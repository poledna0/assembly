section .data
    msgx db 'X maior que Y', 0xA, 0xD
    tamx equ $- msgx
    msgy db 'Y maior que X', 0xA, 0xD
    tamy equ $- msgy
    msgi db 'Os numeros são iguais', 0xA, 0xD
    tami equ $- msgi

    x dd 50
    y dd 50

section .text

global _start

_start:
    mov EAX, DWORD[x]
    mov EBX, DWORD[y] 

    cmp EAX, EBX

    jg XmaiorY
    jl YmaiorX
    je XenguauY

XmaiorY:
    mov ECX, msgx
    mov EDX, tamx
    jmp final

YmaiorX:
    mov ECX, msgy
    mov EDX, tamy
    jmp final

XenguauY:
    mov ECX, msgi
    mov EDX, tami
    jmp final

final:
    mov EAX, 0x4
    mov EBX, 0x1
    int 0x80

    mov EAX, 0x1
    xor EBX, EBX
    int 0x80

     
