# **CTF**

## _Local File Read_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Web           | 500         |

**Descrição:**

> http://34.95.239.56:9983/

## Solução

Podemos no código ver que o parâmetro file recebe qualquer valor, portanto conseguimos voltar um diretório e acessar a flag sem nenhum filtro.

![](https://i.imgur.com/Q30McDe.png)

### Flag

> CTF-BR{NaO\*7@o_ruim_qU@nto_lF1_M45_bem_ruIm\*@iNdA}
