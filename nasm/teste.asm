;colocar constante
section .data 
    msg db 'eu sabo escrever nessa linguagem super faziu' ;apontamento NÃO UMA VARIAVEL NEM CONSTANTE 
    tam equ $- msg
        ;   ||||||
            ;para saber o tamanho do meu apontamento 
;variavel
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
    ;termina o programa
    mov EAX, 0x1 
    mov EBX, 0x0
    int 0x80

;nasm -f elf64 priemiro.asm \para iniciar (compilar)
;para executar ld -s -o hello primeiro.o