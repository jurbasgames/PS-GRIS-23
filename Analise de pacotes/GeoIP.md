# **CTF**

## _whoami_

## Informações

| **Category:**   | **Points:** |
| --------------- | ----------- |
| Packet Analysis | 500         |

**Descrição:**

> Existe uma comunicação sendo feita com um IP da Estônia. Qual é o nome da organização responsável por esse IP?

Exemplo: Se o nome da empresa for "Zezinho Vendas Inc.", a flag vai ser CTF-BR{Zezinho Vendas Inc.} (pode ter espaço).

## Solução

Análisando os pacotes usando o filtro `ip and ip.geoip.country == "Estonia"` veremos os pacotes com ip da Estônia e observando na aba do GeoIP vemos que a organização que procuramos é **CITIC Telecom CPC Netherlands B.V.**.

![](https://i.imgur.com/3hhNCwd.png)

### Flag

> CTF-BR{CITIC Telecom CPC Netherlands B.V.}
