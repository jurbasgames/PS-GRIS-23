# **CTF**

## _CMD Injection III_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Web           | 500         |

**Descrição:**

> Flag em ../flag.txt.
>
> http://34.95.239.56:9987/

## Solução

Analisando o código da página vemos a sanitização de alguns caracteres mais comuns em injeção de código, mas há dois caracteres não foram filtrados que podemos explorar são eles o caracter de escape "\n" e "\`\`". Assim conseguimos montar um payload como na imagem.

![](https://i.imgur.com/hRyFeZW.png)

Neste payload executamos um subcomando com "\`\`" onde pegamos o conteúdo da flag e jogamos para um arquivo teste.html .

#### Acessando a página html criada:

![](https://i.imgur.com/KkPM2hI.png)

### Flag

> CTF-BR{bL1Nd_Eh_um_pOuqUinHo_m@IS_D1f1C1l}
