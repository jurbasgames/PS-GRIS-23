# **POST - Introdução a Arquitetura de Computadores**

Resolva os seguintes exercícios com clareza. A entrega pode ser em qualquer tipo de formato (pdf, png etc) contanto que seja legível.

#### 1. Dê a representação do seu nome em ASCII, convertendo as strings binárias em sua representação hexadecimal equivalente.

> O código a seguir converte o meu nome na representação hexadecimal do código ASCII.

```
my_name = b'Joao Pedro de Oliveira Tavares Duarte'
print(my_name.hex()
```

> 4a6f616f20506564726f206465204f6c697665697261205461766172657320447561727465

#### 2. 2. Dê o microcódigo em formato de linguagem descritiva da instrução XCHG A, B (muda o conteúdo de A para B e de B para A) para a CPU 8080 simplificada.

> Copiar o conteúdo do registrador M para um registrador temporário.
> Copiar o conteúdo do registrador AX para o registrador M.
> Copiar o conteúdo do registrador temporário para o registrador AX.
> Incrementar o contador de programa para apontar para a próxima instrução.

```
 move      action
M → tmpB
AX → M      NXT
tmpB → AX   RNI
```

#### 3. Fale quais são as vantagens e as desvantagens das diferentes políticas de atribuição de Cache (direta, totalmente associativa e parcialmente associativa).

> a cache direta é simples, mas pode causar conflitos de memória. A cache totalmente associativa permite maior eficiência, mas é mais demorada para encontrar os dados. E a cache parcialmente associativa é um intermediario entre a direta e a totalmente associativa.

#### 4. Pesquise e explicite em poucas palavras sobre o que é um “Page Fault” dentro do contexto de memória virtual.

> Um page fault é uma interrupção que ocorre quando o sistema operacional tenta acessar um bloco de memória que não está presente na memória física, mas que deveria estar na memória virtual.
