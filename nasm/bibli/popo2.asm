%include '/home/henrique/Vscod/assembly/nasm/bibli/biblioteca.inc'

section .text

global _start

_start:
    lea ESI, [BUFFER]
    add ESI, 0x9
    mov byte[ESI], 0xA

    dec ESI 
    mov DL, 0x35
    add DL, '0'
    mov [ESI], dl

    dec ESI 
    mov DL, 0x45
    add DL, '0'
    mov [ESI], dl

    dec ESI 
    mov DL, 0x41
    add DL, '0'
    mov [ESI], dl

    dec ESI 
    mov DL, 0x39
    add DL, '0'
    mov [ESI], dl

    dec ESI 
    mov DL, 0x42
    add DL, '0'
    mov [ESI], dl

    dec ESI 
    mov DL, 0x3e
    add DL, '0'
    mov [ESI], dl

    dec ESI 
    mov DL, 0x35
    add DL, '0'
    mov [ESI], dl

    dec ESI 
    mov DL, 0x18
    add DL, '0'
    mov [ESI], dl

    call saidaResultado

    mov EAX, 0x1
    xor EBX, EBX
    int 0x80

    


