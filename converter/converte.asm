%include '/home/henriquep/VsCode/assembly-1/biblioteca.inc'

section .data
    v1 dw '105', 0xA, 0xD

section .text

global _start

_start:
    call converter_valor
    call mostrar_valor

    mov EAX, 0x1
    mov ebx, 0x0
    int 0x80

converter_valor:
    lea ESI, [v1]
    mov ECX, 0x3
    call spi
    add EAX, 0x2
    ret

mostrar_valor:
    call ips
    call saidaResultado
    ret


;---------------------; 
;    string -> int    ;
;---------------------; 
; Entrada: ESI (vl cnv) ECX (tam)
; Saida  :EAX
spi:
    xor EBX, EBX
.pxd:
    movzx EAX, byte [ESI]
    ; no ESI esta guardado o endereco de memoria da frase '105'
    ; o byte fala que vai ser lido B po B, um de cada vvez
    ;movzx = 'move with zero extend'
    ;preenche os bits adicionais com zeros.
    ;-------------
    ; Por exemplo, se o byte lido da memória for 0x3F, após a operação movzx EAX, 
    ;byte [ESI], EAX conterá 0x0000003F. Os bits superiores serão todos zeros,
    ;mantendo o valor original do byte no byte inferior de EAX.
    inc ESI
    ; move o ponteiro para o px caract
    sub al, '0'
    
    imul EBX, 0xA   
    add EBX, EAX ; ebx = ebx * 10 + eax
    loop .pxd
    mov EAX, EBX
    ret

;---------------------;
;    int -> string    ;
;---------------------; 
; Entrada: EAX
; Saida  : BUFFER (vl ECX) TAM_BUFFER (EDX)
ips:
    lea ESI, [BUFFER]
    add ESI, 0x9
    mov byte[ESI], 0xA
    mov EBX, 0xA
.pxd2:
    xor EDX, EDX
    div EBX
    add DL, '0'
    dec ESI
    mov [ESI], DL
    test EAX, EAX
    jnz .pxd2
    ret