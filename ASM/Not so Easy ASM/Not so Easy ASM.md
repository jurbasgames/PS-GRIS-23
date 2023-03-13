# **CTF**

## _Not so Easy ASM_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| ASM           | 500         |

**Descrição:**

> Escreva um programa em assembly que imprime o argumento com maior quantidade de caracteres que ele recebeu. Por exemplo, se o seu programa recebeu os argumentos a, aaa e aa, ele deve imprimir aaa, pois esse é o argumento mais longo.
>
> A última linha do seu programa deve conter a string EOF. Para isso, é recomendado terminar seu programa com um comentário contendo tal string. Por exemplo:
>
> mov rax, 60
> mov rdi, 0
> syscall
> ; EOF
> Alguns detalhes:
>
> O programa vai receber entre 50 e 100 argumentos.
> Cada argumento tem entre 1 e 1000 caracteres.
> Você deve printar o argumento exatamente como ele foi recebido. Não pode adicionar uma quebra de linha.
> O código do programa deve ser enviado via nc como mostrado abaixo.
> nc 34.95.239.56 9998 < meuprograma.nasm

## Solução

Dentro do loop principal, obtemos o tamanho da string atual (armazenado em rcx) comparando cada caractere com o '\0'. Se o comprimento da string atual for maior que o comprimento da string máxima, atualizamos o tamanho máximo em r8 e o buffer da string maxima em r9. Logo no inicio do loop principal comparamos o nosso índice em rbx com o número de argumentos máximos e caso sejam iguais o programa vai para o label write, que imprime o maior argumento no stdout e sai do programa.

```
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
```

![](https://i.imgur.com/36riXMb.png)

### Flag

> CTF-BR{P4r@8EnS*VC_5@8E_AS$eMBLY*:)}
