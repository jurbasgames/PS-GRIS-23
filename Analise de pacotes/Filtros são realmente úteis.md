# **CTF**

## _Filtros são realmente úteis_

## Informações

| **Category:**   | **Points:** |
| --------------- | ----------- |
| Packet Analysis | 499         |

**Descrição:**

> Em um determinado momento, é feita uma requisição POST, enviando um usuário e uma senha para o atacante.

> Formato: CTF-BR\{usuário|senha\}.

## Solução

Usando o filtro `http.request.method == "POST"` no Wireshark podemos facilmente achar as requisições com método POST. Analizando o conteúdo do pacote encontramos nos dados do HTTP o usuário e senha da flag.

![](https://i.imgur.com/PGgOXgV.png)

### Flag

> CTF-BR{bruce|P@ssw0rd$}
