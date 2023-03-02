# **CTF**

## _Sem tempo a perder_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Rev           | 500         |

**Descrição:**

> Descobrir a flag no binário e fazer um write-up de como conseguiu.

> Tente utilizar o GDB e um editor de hexadecimal na primeira parte.

> Caso escreva algum código na segunda parte: Utilize o GitHub para postar o mesmo (lembre-se de me adicionar como colaborador no seu repositório).

## Solução

Analisando o programa no Ghidra vemos na função parte1() da main vemos um sleep(99999999). Com o próprio Ghidra conseguimos atualizar com `CTRL + SHIFT + G` o valor e exportar como novo binário.

![](https://i.imgur.com/eKqmv98.png)

#### Exportando como ELF:

![](https://i.imgur.com/8lxdyg2.png)

#### Executando o arquivo atualizado:

![](https://i.imgur.com/sTdMBJk.png)

#### Adaptando a função decompilada pelo Ghidra:

![](https://i.imgur.com/WtEJP6Y.png)

### Flag

> CTF-BR{CTF-BR{th3_w0rld_1s_ups1d3_d0wn}}
