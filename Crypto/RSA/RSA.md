# **CTF**

## _RSA_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Crypto           | 496         |

**Descrição:**

>\# Ache a flag nesse script:

> p = 7937605209940737338683254413814365471770024059837834921077626064332531391043046555412270478077651426075784219511658073770857648665046352128169733448852931
> q = 4492632528793725923112537860318089457531669874816506211965341582373739819496848564491126608330557457644537418640881542226108760764144873526422887825981689

> n = p*q

> e = 65537

> \# pow(m, e, n)
> enc = 10733219359258272918417739671864843736544452963155835319150295346320346346021946407526549391597181572778753179562971452747808449409083177248625161047413957443777885418183869114802840765315646510503614810288688435074641931536592297955630366221611602555943694420137058631992344891794957810318334643290891766411

> \# Ache m

>\# Use essa função para pegar a flag depois de descobrir o m
print(m.to_bytes(256, byteorder="big").replace(b"\x00", b""))


## Solução

Primeiro achamos fi para encontrarmos o valor de d que faz parte da chave privada. Com a chave privada basta fazer uma potenciação modular pow(mensagem, d, n).

### Flag

> CTF-BR{decrypt_do_RSA_deu_bom_viu_M2Ip5gL8fD}