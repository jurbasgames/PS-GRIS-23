# **CTF**

## _Pwn1_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Pwn           | 500         |

**Descrição:**

> pwn me
>
> nc 34.95.239.56 9995

## Solução

Fazendo uma análise no Ghidra vemos um caso de Buffer Overflow do array e conseguimos controlar o RIP após o return. Para isso podemos direcionar o programa para outro endereço de memória dentro do programa. Uma função interessante é a shell() que faz um execve no shell.

#### Para o payload pegamos o endereço da função no Ghidra e convertemos para inteiro.

![](https://i.imgur.com/Ix55JkT.png)

#### Colocamos o payload na posição 9, estourando o array e indo pra stack. Após isso inserimos -1 para a função retornar, fazer um pop da stack e ir para a função shell.

![](https://i.imgur.com/rjqFcFs.png)

### Flag

> CTF-BR{cheque_sempre_os_limites_do_array}
