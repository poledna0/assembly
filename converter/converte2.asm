%include '/home/henriquep/Vscode/assembly/biblioteca.inc'

section .data
    ent dw '105', 0xA, 0xD

section .text

global _start

_start:

spi:
    xor EBX, EBX

.pxd:
    movzx EAX, byte[ESI]
    inc ESI
    sub al, '0'
    imul EBX, 0xA
    add EBX, EAX
    loop .pxd
    mov EAX, EBX
    ret

ips:
    lea ESI [BUFFER]
    add ESI, 0x9
    mov byte[ESI], 0xA
    mov EBX, 0xA
.pxd2:
    
