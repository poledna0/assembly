%include '/home/henriquep/Vscode/assembly-1/biblioteca.inc'

section .data
    entrada dw '105', 0xA, 0xD

section .text

global _start

_start:

spi:
    xor EBX, EBX
.pxdigito:
    
ips:
