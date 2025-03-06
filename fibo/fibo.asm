section .text
        global _start

_start:
  mov eax, 0x0
  mov ebx, 0x1
  mov ecx, 0x8

loop:

  cmp ecx, 0x0
  je fim
  mov edx, eax
  add edx, ebx
  mov eax, ebx
  mov ebx, edx
  dec ecx
  jmp loop

fim:
  mov eax, 0x1
  xor ebx, ebx
  int 0x80

