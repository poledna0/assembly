segment .data

    LF          equ 0xA     ; Line Feed
    SYS_CALL    equ 0x80    ; Envia informação para o SO
    CARRIAGE    equ 0xD     ; Carriage return

    ; EAX
    SYS_EXIT      equ 0x1   ; Chamada de finlização
    SYS_INP       equ 0x3   ; Operação de leitura
    SYS_PRIN      equ 0x4   ; Operação de escrita

    ; EBX
    RET_EXIT    equ 0x0     ; Valor retornado pelo SO, operação realizada com sucesso
    PRIN_DF     equ 0x1     ; Saida padrão
    INP_DF      equ 0x0     ; Entrada padrão

section .data
    x dd 28
    y dd 40
                            ; DB = Define Byte           -> aloca 1 byte
                            ; DW = Define Word           -> aloca 2 bytes
                            ; DD = Define Doubleword     -> aloca 4 bytes
                            ; DQ = Define Quadword       -> aloca  8 bytes
                            ; DT = Define Ten            -> aloca 10 bytes

    msg1 db ' X é maior que Y', LF, CARRIAGE
    tam1 equ $- msg1
    msg2 db ' Y é maior que X', LF, CARRIAGE
    tam2 equ $- msg2

section .text

global _cmc

_cmc:
    mov EAX, DWORD[x]
    mov EBX, DWORD[y]

                            ; je =
                            ; jg >
                            ; jge >=
                            ; jl <
                            ; jle <=
                            ; jne !=

    ;if
    cmp EAX, EBX
    jge a
    mov ECX, msg2
    mov EDX, tam2
    jmp final

a:
    mov ECX, msg1
    mov EDX, tam1

final:

    mov EAX, SYS_PRIN
    mov EBX, PRIN_DF
    int SYS_CALL

    mov EAX, SYS_EXIT
    xor EBX, EBX            ; xor == 0, msm coisa que mov EBX, RET_EXIT
    int SYS_CALL
