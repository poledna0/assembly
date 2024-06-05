%include '/home/henrique/Vscod/assembly/nasm/bibli/biblioteca.inc'

section .text

global _start

_start:
    lea ESI, [BUFFER] ;   estou mandando o endereço de memoria para o buff
    add ESI, 0x9
    mov byte[ESI], 0xA

    dec ESI 
    mov DL, 0x65
    mov [ESI], dl

    dec ESI 
    mov DL, 0x75
    mov [ESI], dl

    dec ESI 
    mov DL, 0x71
    mov [ESI], dl

    dec ESI 
    mov DL, 0x69
    mov [ESI], dl

    dec ESI 
    mov DL, 0x72
    mov [ESI], dl

    dec ESI 
    mov DL, 0x6e
    mov [ESI], dl

    dec ESI 
    mov DL, 0x65
    mov [ESI], dl

    dec ESI 
    mov DL, 0x48
    mov [ESI], dl

    call saidaResultado

    mov eax, 0x1
    xor EBX, EBX
    int 0x80

    


