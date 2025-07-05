bits 64
 dd 0x1BADB002
 dd 0x0
 dd - 0x1BADB002

extern _kmain
 start:
  cli
  call _kmain
  jmp $