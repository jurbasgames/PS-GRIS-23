global _start
section .text

_start:
	cmp QWORD [rsp], 2
	jb exit
	
	mov rax, 2
	mov rdi, [rsp + 16]
	xor rsi, rsi
	xor rdx, rdx
	syscall
	cmp rax, 0
	jl exit

	mov rdi, rax
	xor rax, rax
	mov rsi, buf
	mov rdx, 64
	syscall

	mov rdx, rax
	mov rbx, buf
	xor rcx, rcx

encrypt:
	inc BYTE [rbx + rcx]
	xor BYTE [rbx + rcx], 0x69
	inc rcx
	cmp rcx, rdx
	jne encrypt

	mov rax, 1
	mov rdi, 1
	syscall

exit:
	mov rax, 60
	xor rdi, rdi
	syscall

section .bss
	buf: resb 64
