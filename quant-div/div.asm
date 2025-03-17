section .text
    global _start

_start: 
    mov eax, 10  ; trocar aq o valor
    mov ebx, eax
    xor ecx, ecx

lp: 
    test ebx, ebx
    jz fim

    mov edx, 0
    mov eax, 10 ; trocar aqui tb
    div ebx

    test edx, edx ; vẽ se o resultado n é 0
    jnz c

    inc ecx

c:
    dec ebx
    jmp lp

fim:
    mov edi, ecx
    hlt ; debug
    mov eax, 1
    xor ebx, ebx
    int 0x80

