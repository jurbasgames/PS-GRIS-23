# **CTF**

## _Easy ASM_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| ASM           | 500         |

**Descrição:**

> Escreva um programa em assembly. Seu programa vai receber a flag via stdin. O stdout do seu programa vai ser enviado de volta para você.
> 
> A última linha do seu programa deve conter a string EOF. Para isso, é recomendado terminar seu programa com um comentário contendo tal string. Por exemplo:
> 
> mov rax, 60
> mov rdi, 0
> syscall
> ; EOF
> O código do programa deve ser enviado via nc como mostrado abaixo.
> 
> nc 35.199.77.16 9997 < meuprograma.nasm


## Solução

![](https://i.imgur.com/usrZWN6.png)

### Flag

> CTF-BR{Ch4m4r_Sysc4L1s_Em_@s5eMB1Y_eh_F4Cil}
