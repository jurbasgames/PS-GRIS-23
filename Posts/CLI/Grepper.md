# **CTF name**

## "Grepper"

## Information

| **Category:** | **Points:** |
| ------------- | ----------- |
| CLI           | 500         |

**Description:**

> Fulaninho tem muitos arquivos e precisa de ajuda para encontrá-los. Use o grep para encontrar os arquivos que Fulaninho busca:

O arquivo contém Gr15.

O conteúdo do arquivo começa com e seguido de caracteres que não sejam a e termina com h.

O conteúdo do arquivo não começa com 2 e termina com l3g4l

A flag é o resultado da concatenação dos nomes dos três arquivos (na ordem como eles foram listados acima) entre CTF-BR{ e }.

## Solution

1. grep -r Gr15
2. grep -E -r "^e+[^a]+h$"
3. grep -E -r "^[^2]+l3g4l$"

### Flag

> CTF-BR{XQCoVmGr15LBWsgxe58sZRfSBx2HjM7h}
