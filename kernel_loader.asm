bits 32               ; Multiboot expects 32-bit mode at entry
extern _kmain

; Multiboot header (must be within first 8 KB and 4-byte aligned)
dd 0x1BADB002         ; magic
dd 0x00000000         ; flags
dd 0xE4524FFE         ; checksum = -(magic + flags)

start:
    cli
    call _kmain
    jmp $
