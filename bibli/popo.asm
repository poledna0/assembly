%include '/home/henriquep/VsCode/assembly-1/biblioteca.inc'

section .text

global _start

_start:
    lea ESI, [BUFFER]
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

    mov EAX, 0x1
    xor EBX, EBX
    int 0x80

    


