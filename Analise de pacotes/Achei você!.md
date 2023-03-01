# **CTF**

## _Achei você!_

## Informações

| **Category:**   | **Points:** |
| --------------- | ----------- |
| Packet Analysis | 500         |

**Descrição:**

> Existe um arquivo malware disfarçado com outra extensão, qual é o seu hash SHA-256?

> Use sha256sum arquivo para obter a hash. Formato: CTF-BR{hash}.

## Solução

Indo no menu `File > Export Objects > HTTP` podemos salvar os arquivos recebidos pelo HTTP.

![](https://i.imgur.com/wmQbTL6.png)

Como o enunciado pede uma extensão incomum à aplicações analisei o radiance.png no VirusTotal.com onde 54 antivírus detectaram como malicioso. No proprio site conseguimos a hash sha256sum do arquivo para a flag.

![](https://i.imgur.com/NxqJqSl.png)


### Flag

> CTF-BR{47ab5a309c1b1c5e0e5465adf5f7a06958a6f8411b5ab8ead01eb53fd3bebd48}
