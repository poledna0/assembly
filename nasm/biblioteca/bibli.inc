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
                            ;jmp : só vai
                            ;call : volta quando acha o ret

