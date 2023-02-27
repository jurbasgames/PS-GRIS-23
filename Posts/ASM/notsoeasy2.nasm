section .text
    global _start

_start:
    mov r8, rdi         ; r8 = argc
    mov r9, 1           ; r9 = 0
    mov r10, 16          ; r10 = 16
    
loop:
    mov rsi, [rsp + r10]
    mov rdx, 0
    test r9,r8
    jz write
word_loop:
    mov bl, [rsi + rdx]
    inc rdx
    test bl, bl
    jnz word_loop

    inc r9
    add r10, 8
    jmp loop
write:

    mov rax, 1
    mov rsi, 0x41
    mov rdx, 1
    syscall

    mov rax, 1
    mov rsi, 0x0a
    mov rdx, 1
    syscall

exit:
    mov rax, 60
    mov rdi, 0
    syscall