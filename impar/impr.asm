section .text
    global _start

_start:
    mov eax, 6
    mov edi, 0

    test eax, 1
    jz fim

    mov edi, 1

fim:
    mov eax, 0x1
    xor ebx, ebx
    int 0x80
