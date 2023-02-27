# **CTF**

## _whoami_

## Informações

| **Category:**   | **Points:** |
| --------------- | ----------- |
| Packet Analysis | 500         |

**Descrição:**

> O arquivo .pcap em anexo servirá para todos os challenges dessa categoria.

Importante: Dentre os pacotes, existem requisições que baixaram malware de verdade. Portanto não executem nada em sua máquina. USEM UMA MÁQUINA VIRTUAL.

Qual é o endereço IP interno e externo da vítima?

Formato: CTF-BR{interno/externo}

Exemplo: CTF-BR{192.168.0.10/200.139.55.7}

## Solução

Analizando as requisições no período encontramos uma chamada GET para o endpoint /ip e como resposta o ip externo da máquina. Já o ip interno pode ser visto no source da requisição GET /ip.

![](https://i.imgur.com/Q091Ajg.png)

### Flag

> CTF-BR{10.11.6.101/173.46.6.92}
