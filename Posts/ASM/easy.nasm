section .bss
    uinput_len equ     100         
    uinput     resb    uinput_len 

section .text
    global _start

_start:
    mov     rdx, uinput_len
    mov     rsi, uinput
    mov     rdi, 0
    mov     rax, 0
    syscall                    
    push    rax                  

    pop     rdx                  
    mov     rsi, uinput
    mov     rdi, 1
    mov     rax, 1
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
;EOF