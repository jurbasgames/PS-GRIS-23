; vim: ft=nasm

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
