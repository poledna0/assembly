section .text
    global _start

_start:
    mov eax, 2
    mov ebx, 5
    mov edi, 1

r:
    cmp ebx, 0
    je fim

    mov edx, 0
    mov ecx, edi
    mov edi, 0

m:
    add edi, eax
    loop m

    dec ebx
    jnz r

fim:
    mov eax, 0x1
    xor ebx, ebx
    int 0x80

