; nasm -f elf64 -o Link.o NotSoEasy.nasm && ld -o Executable Link.o 
; ./Executable a bb ccc dddd eeeee ffffff ggggggg hhhhhhhh iiiiiiiii jjjjjjjjjj
section .text
    global _start

_start:

    mov rax, [rsp]              ; rax = argc

    xor r8, r8                  ; r8 = lenth of max string
    xor r9, r9                  ; r9 = buffer for max string

    mov rbx, 1                  ; rbx = index of argv
    mov rsi, [rsp + 8]          ; rsi = argv

_loop:

    cmp rbx, rax                ; if (rbx == argc)
    jge write                   ;     goto write

    mov rdi,[rsp + rbx * 8 + 8] ; rdi = argv[rbx]
    xor rcx, rcx
    
str_len:

    cmp byte [rdi + rcx], 0     ; if (argv[rbx][rcx] == '\0')
    je compare                  ;     goto compare
    inc rcx                     ; else
    jmp str_len                 ;     rcx++
compare:

    cmp rcx, r8                 ; if (rcx > r8)
    jle next                    ;     goto next

    mov r8, rcx                 ; r8 = rcx (lenth of max string)
    mov r9, rdi                 ; r9 = argv[rbx] (max string)

next:
    inc rbx                     ; rbx++
    jmp _loop                   ; goto loop

write:

    mov rdi, 1                 ; rdi = stdout
    mov rax, 1                 ; rax = write
    mov rsi, r9                ; rsi = max string
    mov rdx, r8                ; rdx = lenth of max string
    syscall                    ; write(stdout, max string, lenth of max string)

    mov rax, 60                ; rax = exit
    mov rdi, 0                 ; rdi = 0
    syscall                    ; exit(0)
; EOF