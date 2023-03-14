# **CTF**

## _ASMCrypt_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| ASM           | 500         |

**Descrição:**

> Fulaninho decidiu escrever um programa em assembly para criptografar seus arquivos. Infelizmente, a criptografia não é particularmente forte.

## Solução

Analizando o código de encriptação vemos que podemos reverter a encriptação iterando a flag ao contrario e refazendo o XOR de encriptação. Adaptando, o código fica assim:

```
; $ nasm -f elf64 -o Link.o decrypt.nasm && ld -o Executable Link.o
; $ ./Executable flag.encrypted
global _start
section .text

_start:
	cmp QWORD [rsp], 2
	jb exit

	mov rax, 2
	mov rdi, [rsp + 16]
	xor rsi, rsi
	xor rdx, rdx
	syscall             ; Open()
	cmp rax, 0
	jl exit

	mov rdi, rax
	xor rax, rax
	mov rsi, buf
	mov rdx, 64
	syscall             ; Read

	mov rdx, rax
	mov rbx, buf
	mov rcx, 65

encrypt:
	xor BYTE [rbx + rcx], 0x69
    dec BYTE [rbx + rcx]
	dec rcx
	cmp rcx, 0
	jne encrypt

	mov rax, 1
	mov rdi, 1
	syscall             ; Write

exit:
	mov rax, 60
	xor rdi, rdi
	syscall             ; Exit

section .bss
	buf: resb 64

```

#### Em execução:

![](https://i.imgur.com/RlGhTkX.png)

### Flag

Como sabemos que a flag começa com CTF-BR, temos:

> CTF-BR{NaO_MUITo_bem_crIpto9rAF@DO_neh?}
