# **CTF**

## _IDOR_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Web           | 500         |

**Descrição:**

> http://34.95.239.56:9986/

## Solução

Percebe-se que não há nenhuma restrição de acesso aos ids, portanto podemos fazer um ataque testando cada id. Para isso conseguimos fazer um script em Python iterando de 1 a 999. Os sleep é para não sobrecarregar o servidor.

Após algumas iterações conseguimos a flag.

![](https://i.imgur.com/m2AhzXO.png)

### Flag

> CTF-BR{5IMPlE$\_M4S_EfEtiV0}
