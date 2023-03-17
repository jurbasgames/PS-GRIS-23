# **POST - REDES - GRIS**

Referente a GET de Redes I e II nos dias 13 e 14 de fevereiro de 2023.
Entrega: 15/03/2023

#### 1 - Diga quais são as camadas do modelo TCP/IP, dando uma descrição de cada camada.

> O Modelo TCP/IP possui 4 camadas, são elas; aplicação, transporte, internet e acesso.
> Camada de aplicação: é a camada onde protocolos como HTTP são usados. É a camada mais alto nível, não se preocupa como os dados são transportados.
> Camada de transporte: é a camada responsável pelo transporte de dados, que são fragmentados em pacotes para facilitar o compartilhamento de dados. Os protocolos TCP e UDP atuam nessa camada.
> Camada de internet: é a camada responsável por rotear os pacotes para a internet, também onde se encontra o protocolo IP para endereçamento dos dispositivos na internet.
> Camada de acesso: é a camada mais baixo nível que estabelece a conexão física entre os dispositivos, os dados são transmitidos por sinais elétricos ou ópticos.

#### 2 - Dê uma breve descrição de algum protocolo que não foi abordado nas aulas (dica: procurar por Request For Comments (RFCs)).

> O NetBIOS (RFC: 1001), criado pela IBM, foi feito para permitir que os computadores se comuniquem usando nomes de Desktop em vez de endereços IP, facilitando a vida dos usuários. Foi amplamente usado na década de 1990, mas caiu em desuso devido a limitações em grandes redes.

#### 3 - Como um processo rodando em um cliente consegue identificar um processo que está rodando em um servidor?

> Podemos indentificar um processo através da porta aberta no servidor, por exemplo a porta 80 é comum para um processo que exceuta um servidor web ou a porta 22 que é comum para acesso remoto por SSH.

#### 4 - Explique o comportamento “serrilhado” do TCP.

> O comportamento serrilhado se dá por conta do limite da capacidade de enviar dados antes da confirmação. O TCP vai enviando mais pacotes até receber uma resposta negativa do outro lado, por isso há a queda abrupta na quantidade de dados enviados gerando o efeito serrilhado.

#### 5 - Explique as principais diferenças entre TCP e UDP (mostrando vantagens e desvantagens de cada um) e indique uma boa aplicação para cada protocolo.

> ![](https://i.imgur.com/GW7YHqy.png)
> No protocolo TCP os dados são enviados de maneira que não haja a perda de pacotes e se houver há um reenvio dos pacotes faltantes. É mais lento que o UDP já que oferece um segurança na entrega dos dados. Já no UDP não há segurança de entrega dos dados, mas é mais rápido e é usado para conexões que precisão de velocidade como streaming de vídeos.

#### 6 - Para os Endereços abaixo, diga o endereço de rede, endereço de host e endereço de broadcast:

> - IP: 177.23.168.223 Máscara: 255.255.255.248
>
> Rede: 177.23.168.216
> Broadcast: 177.23.168.223
> Host: 177.23.168.217
>
> - IP: 7.26.0.64/26
>
> Rede: 7.26.0.0
> Broadcast: 7.26.0.63
> Host: 7.26.0.1
>
> - IP: 146.164.69.25/28
>
> Rede: 146.164.69.16
> Broadcast: 146.164.69.31
> Host: 146.164.69.17

#### 7 - Para cada endereço do exercício anterior, realize uma divisão em duas sub-redes e indique os novos endereços de rede, host e broadcast.

- IP: 177.23.168.223 Máscara: 255.255.255.248
  > Sub-rede 1:
  > Rede: 177.23.168.216
  > Broadcast: 177.23.168.223
  > Host: 177.23.168.217
  > Sub-rede 2:
  > Rede: 177.23.168.224
  > Broadcast: 177.23.168.231
  > Host: 177.23.168.225
- IP: 7.26.0.64/26
  > Sub-rede 1:
  > Rede: 7.26.0.0
  > Broadcast: 7.26.0.63
  > Host: 7.26.0.1 a 7.26.0.30
  > Sub-rede 2:
  > Rede: 7.26.0.32
  > Broadcast: 7.26.0.63
  > Host: 7.26.0.33
- IP: 146.164.69.25/28
  > Sub-rede 1:
  > Rede: 146.164.69.16
  > Broadcast: 146.164.69.23
  > Host: 146.164.69.17 a 146.164.69.22
  >
  > Sub-rede 2:
  > Rede: 146.164.69.24
  > Broadcast: 146.164.69.31
  > Host: 146.164.69.25

#### 8 - Explique qual o problema do processo de fragmentação do IP quando utilizado em conjunto com o TCP.

> O protocolo TCP oferece uma grande segurança que os dados cheguem no destino, no entanto, em casos de fragmentação de pacotes por conta de diferentes taxas de transmissão no caminho por onde esses pacotes passam se houver a perda de pelo menos um fragmento o pacote inteire tem que ser reenviado causando atrasos na conexão.

#### 9 - Porque existem dois identificadores? O MAC e o IP?

> O MAC é usado para comunicação dentro de uma rede local, enquanto o IP é usado para comunicação entre redes diferentes.

#### 10 - Para que serve o protocolo ARP? Como ele funciona? Quais os tipos de pacotes ARP que podem ser enviados?

> O ARP é um protocolo de mapeia um endereço MAC para um endereço IP em uma rede local.
> Ele funciona através do envio de um pacote para todos os dispositivos na rede local, pedindo o MAC correspondente ao IP que ele envia. O destino responde com seu endereço MAC e o dispositivo que solicitou pode usar esse MAC para enviar dados diretamente ao destinatário.
> Há dois tipos de pacotes ARP o Request e o Response. O Request é usado para solicitar o MAC do destinatário na rede local e o Response é usado em resposta ao Request com endereço MAC do destinatário.

#### 11 - Descreva os protocolos TLS e o PGP e indique diferenças entre ambos.

> Os dois são protocolos de segurança usados para criptografar a comunicação na rede. No entanto a principal diferença entre TLS e PGP é que o TLS é usado para proteger a comunicação entre aplicativos da web e é implementado na camada de transporte, enquanto o PGP é usado para proteger o conteúdo de e-mails.

#### 12 - Explique o modo Túnel e a Associação Segura do IPsec.

> O modo Túnel é usado para proteger a comunicação, como por exemplo, uma rede privada e uma rede remota. Ele encapsula o tráfego original em um novo pacote com um novo cabeçalho, que é usado para transportar o pacote original de uma rede para outra. Já a Associação Segura é um conjunto de parâmetros que define como a comunicação será feita entre dispositivos e garante que todos os dados trocados entre os dispositivos estejam protegidos pelo IPsec.

#### 13 - Suponha que o Server está respondendo uma requisição web do PC. Mostre o Pacote ao longo do caminho e suas camadas e protocolos.

> Camada de aplicação: HTTP --> Camada de transporte: TCP --> Camada de rede: IP --> Camada de enlace: MAC --> Camada de enlace: MAC --> Camada de enlace: MAC --> Camada de rede: IP --> Camada de enlace: MAC --> Camada de rede: IP --> Camada de aplicação: HTTP --> Camada de transporte: TCP --> Camada de rede: IP --> Camada de enlace: MAC --> Camada de enlace: MAC --> Camada de enlace: MAC
