section .text
    global _start

_start:
    mov r8, rdi         ; r8 = argc (number of arguments)
    mov r9, 0           ; r9 = 0 (index of the longest argument)
    mov r10, 0          ; r10 = 0 (longest argument length)
    mov r11, 0          ; r11 = 0 (index of the current argument)
    mov rbx, 16         ; rbx = 16 (offset of the first argument)
    mov r12, rsp
    mov rsi, [r12 + rbx] 
    mov rdx, 0          ; rdx = 0 (lenth of the current argument)
    jmp loop            ; jump to loop
argument:
    add rbx, 8          ; rbx += 8 (increment rbx by 8)
    inc r11             ; r11++ (increment r11 by 1)
    cmp r11, r8         ; compare r11 and r8
    je write            ; if r11 is equal to r8, jump to write

loop:
    mov rsi, [r12 + rbx] ; rsi = argv[r11] (the current argument)
    mov bl, [rsi + rdx] ; bl = *rsi
    inc rdx             ; rdx++ (increment rdx by 1)
    test bl, bl         ; test if bl is 0
    jnz loop            ; if bl is not 0, jump to loop

    cmp rdx, r10         ; compare rdx and r10
    jg longer           ; if rdx is greater than r10, jump to longer

write:
    
    mov rdx, r10        ; rdx = r10 (length of the longest argument)
    mov ax, 8           ; ax = 8 (multiply r9 by 8)
    mul r9              ; r9 *= 8 (multiply r9 by 8)
    add r9, 16          ; r9 += 16 (add 16 to r9)
    mov rsi, [r12 + r9] ; rsi = argv[r9] (the longest argument)
    mov rax, 1          ; syscall number 1 (write)
    mov rdi, 1          ; file descriptor 1 (stdout)
    syscall             ; call the syscall

    mov rax, 1          ; syscall number 1 (write)
    mov rsi, 0x0a       ; newline character
    mov rdx, 1          ; length of 1 byte
    syscall             ; call the syscall
    mov rax, 60         ; syscall number 60 (exit)
    mov rdi, 0          ; exit code 0 (success)
    syscall
    
longer:
    mov r10, rdx        ; r10 = rdx (longest argument length)
    mov r9, r11         ; r9 = r11 (index of the longest argument)
    jmp argument        ; jump to argument
    ;EOF