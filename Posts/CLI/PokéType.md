# **CTF name**

## _PokéType_

## Information

| **Category:** | **Points:** |
| ------------- | ----------- |
| CLI           | 500         |

**Description:**

> Fulaninho nunca consegue lembrar dos tipos de seus pokémons favoritos. Como solução, ele escreveu um shell script que usa a PokéApi para consultar o tipo de um pokémon rapidamente. Infelizmente, Fulaninho não sabe muito de segurança e seu script contém uma vulnerabilidade.

A flag está no arquivo /etc/passwd.

## Solution

Input:
./poketype.sh \ file:/etc/passwd

O caracter "\" escapa um espaço permitindo a inserção de outras urls, neste caso usei o protocolo file para acessar o arquivo da flag.

### Flag

> CTF-BR{3h_Por_1SSo_qu3_vOc3_D3vE_U5@R_A$PaS_4O_aCE55AR_v4rIav3I5}
