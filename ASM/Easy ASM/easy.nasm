; $ nasm -f elf64 -o Link.o easy.nasm && ld -o Executable Link.o 
; $ ./Executable
;   CTF-BR{fake-flag}
;   CTF-BR{fake-flag}

section .bss
    input resb 100

section .text
    global _start

_start:
    mov rax, 0
    mov rdi, 0
    mov rsi, input
    mov rdx, 100
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, input
    mov rdx, 100
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
    ;EOF