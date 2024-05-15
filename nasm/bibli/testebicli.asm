%include '/home/henrique/vscode/assembly-2/nasm/bibli/biblioteca.inc'

section .text

global _start

_start:

    lea ESI, [BUFFER]             ; Load Effective Address ESI amrazena o endereço onde esta o buffer, [] para indicar que esttamos nos referindo a um endereço de uma variavel
    add ESI, 0x9                  ;fim de uma string
    mov byte[ESI], 0xA

    dec ESI
    mov dl, 0x13                  ; -> 'C' 0x33 -> 'c'
    add dl, '0'
    mov [ESI], dl

    dec ESI
    mov dl, 0x12                  ; -> 'B' 0x32 -> 'b'
    add dl, '0'
    mov [ESI], dl

    dec ESI
    mov dl, 0x11                  ; -> 'A' 0x31 -> 'a'
    add dl, '0'
    mov [ESI], dl

    call saidaResultado

    mov eax, SYS_EXIT
    mov ebx, RET_EXIT
    int SYS_CALL