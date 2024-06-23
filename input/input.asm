segment .data

    LF          equ 0xA     ; Line Feed
    SYS_CALL    equ 0x80    ; Envia informação para o SO
    CARRIAGE    equ 0xD     ; Carriage return

    ; EAX
    SYS_EXIT    equ 0x1     ; Chamada de finlização
    SYS_R       equ 0x3     ; Operação de leitura
    SYS_W       equ 0x4     ; Operação de escrita

    ; EBX
    RET_EXIT    equ 0x0     ; Valor retornado pelo SO, operação realizada com sucesso
    SAI_DF      equ 0x1     ; Saida padrão
    ENT_DF      equ 0x0     ; Entrada padrão

section .data
    msg db 'Digite seu nome de Capivara', LF, CARRIAGE
    tam equ $- msg

section .bss
    nome resb 1 ; Armazena valores me B em B

section .text 

global _start

_start:
    mov EAX, SYS_W
    mov EBX, SAI_DF
    mov ECX, msg
    mov EDX, tam
    int SYS_CALL

    mov EAX, SYS_R
    mov EBX, ENT_DF
    mov ECX, nome
    mov EDX, 0xF
    int SYS_CALL

    mov EAX, SYS_EXIT
    mov EBX, RET_EXIT
    int SYS_CALL

