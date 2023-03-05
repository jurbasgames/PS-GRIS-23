# **CTF**

## _XOR_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Crypto           | 496         |

**Descrição:**

> KEY1 = bytes.fromhex('f590654927b7496de6b30a7c1226af9cc610088ba28af6b78fa7a81977939fc3')
> KEY2_xor_KEY1 = bytes.fromhex('9dec9f3c2f931f0aa48960585915170d205cc0c868f738624ed36fe745fc0f3f')
> KEY2_xor_KEY3 = bytes.fromhex('a55d3fdfdf225438335203cc918f6667b78ba9fe521245b1ed5fbf347fe77b9a')
> FLAG_xor_KEY1_xor_KEY2_xor_KEY3 = bytes.fromhex('13991cbbbac7660de5935b80aefbf9941ef4ee58affedf6705a7261f3b34a424')

## Solução

Como o Python estava com alguns problemas com operações bitwise optei por fazer a solução em C. Para decriptar a Flag primeiro descobrimos todas as chaves fazendo um XOR para reverter. Assim podemos decriptar a Flag fazendo um XOR com cada chave descoberta.



### Flag

> CTF-BR{CTF-BR{X0rR0-R0oooO-_flag_123@@}}
