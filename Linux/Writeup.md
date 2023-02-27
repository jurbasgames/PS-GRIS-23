# Linux Writeup

## 1. Pré-instalação

#### Antes de começar preciso criar uma máquina virtual na Virtual Box e selecionar a imagem do Arch na porta USB.

![](https://i.imgur.com/1jnLsBL.png)

#### Dando boot na imagem configuro o layout do teclado, linguagem, conexão e relógio.

![](https://i.imgur.com/9CXHzoq.png)

#### Usei `cfdisk` para criar 3 partições do sistema que são de sistema EFI, SWAP e o sistema de arquivos do Linux.

![](https://i.imgur.com/JE8Cett.png)

#### Em seguida formatei as partições habilitei o swap com `swapon` e montei a raiz com `mount`.

## Instalação

#### Usei o pacstrap para instalação dos recursos básicos do sistema, `fstab` para configurações e `arch-chroot` para mudar a raiz do sistema.

![](https://i.imgur.com/BIG9OkE.png)

#### Defini o fuso horário, criei os arquivos de configuração para localização, rede e persistência de layout.

![](https://i.imgur.com/MvZYy7K.png)

#### Após fazer a instalação de alguns pacotes úteis como `dosfstools` `mtools` `os-prober`, `network-manager`, `grub` e `efibootmgr` podemos prosseguir para instalação do GRUB.
