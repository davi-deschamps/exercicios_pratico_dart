## Interação 1: Acessando métodos
**Meu Prompt:** Como posso acessar os métodos de um objeto em Dart?

**Resposta da IA:**
Você acessa os métodos usando a **notação de ponto (`.`)**. Depois de criar a instância do objeto na memória, basta digitar o nome da variável, colocar um ponto e chamar a ação desejada com parênteses. Exemplo: se você tem um objeto chamado `meuCarro`, você usa `meuCarro.acelerar()` para acessar o método.

**Minhas Observações:**
Para usar uma ação do objeto, basta usar o ponto (`.`) logo após o nome da variável.



## Interação 2: Tipos de Construtores
**Meu Prompt:** Qual a diferença entre um construtor padrão e um construtor nomeado?

**Resposta da IA:**
* **Construtor Padrão:** Tem exatamente o mesmo nome da classe e é a forma principal de criar o objeto (ex: `Usuario(this.nome)`). 
* **Construtores Nomeados:** Permitem dar um nome extra ao construtor para criar o objeto a partir de situações ou dados diferentes, usando um ponto (ex: `Usuario.visitante()` ou `Usuario.doBancoDeDados()`). Isso deixa o código muito mais claro.

**Minhas Observações:**
Construtor padrão é a porta principal. Construtores nomeados são portas alternativas com nomes claros para criar o mesmo objeto de jeitos diferentes.



## Interação 3: O poder das Factories
**Meu Prompt:** O que são 'factories' em Dart e quando devo usá-las?

**Resposta da IA:**
Uma `factory` (fábrica) é um construtor com inteligência extra. Enquanto um construtor normal é obrigado a sempre criar um objeto novo do zero na memória, a `factory` pode tomar decisões: ela pode criar um objeto novo, ou pode retornar um objeto que já estava salvo antes (cache). Você deve usá-las quando quiser ter controle total se deve gerar uma nova instância ou reaproveitar uma existente.

**Minhas Observações:**
Construtor normal sempre gera um objeto novo. A factory é um construtor inteligente que analisa a situação e decide se cria um novo ou se devolve um já existente.