;colocar constante
section .data 
    msg db 'eu não sei o que digitar aqui', 0xA
    msg1 db 'só sei que esta funcionando meu codigo de forma maravilhosa', 0xA
    msg2 db 'eu sabo muto', 0xA
    msg3 db 'minha competência é assembly', 0xA
    msg4 db 'mas a incompetência....', 0xA

    tam equ $- msg

section .bss
section .text 

;onde cmc o progrma (obrigatorio)
global _start 

_start:
    mov EAX, 0x4 ; "to querendo uma saida"
    mov EBX, 0x1 ; ' quero a saida na porta padrao'
    mov ECX, msg ; 'essa é a msg'
    mov EDX, tam ; 'esse é o tamanho'
    int 0x80 ;agota faz

    ;destino, origem EAX = 1
            ;hexadecima 0x(numero)
    mov EAX, 0x1 
    mov EBX, 0x0
    int 0x80
