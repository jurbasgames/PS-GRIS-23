# **CTF**

## _O retorno da carruagem_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| CLI           | 500         |

**Descrição:**

> Fulaninho recebeu um shell script de seu amigo que usa Windows. Ao tentar executar o script com o comando bash hello_world.sh, Fulaninho recebeu a seguinte mensagem de erro:

line 2: $'\r': command not found
Investigue a fonte do erro e escreva um shell script capaz de alterar o arquivo enviado pelo amigo e consertar o problema.

A flag é o hash sha256 do arquivo consertado entre CTF-BR{ e }. Você pode obter o hash sha256 de um arquivo usando o comando sha256sum.

## Solução

Executando o comando a seguir substituímos o caracter de carriege return por nada.
sed "s\_\r\_\_g" hello_world.sh
