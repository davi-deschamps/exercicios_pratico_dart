## Interação 1: Chamando a função dentro dela mesma
**Meu Prompt:** Posso chamar minha função dentro dela mesma?

**Resposta da IA:**
Sim, você pode! Na programação, isso é chamado de **Recursividade** (ou função recursiva). É uma técnica muito poderosa, especialmente para resolver problemas matemáticos, explorar pastas de arquivos ou navegar em árvores de dados.

**O Grande Cuidado:** Se você criar uma função que chama a si mesma, você **precisa** definir uma condição de parada (um `if` que encerra a execução). Se você esquecer isso, a função vai ficar chamando a si mesma infinitamente até a memória do computador estourar, causando o famoso erro *Stack Overflow*.

Exemplo de uma contagem regressiva recursiva:
```dart
void contagemRegressiva(int numero) {
  if (numero == 0) { // Condição de parada!
    print('Fogo!');
    return;
  }
  print(numero);
  contagemRegressiva(numero - 1); // A função chamando ela mesma
}

**Minhas Observações:**
Entendi que uma função pode chamar a si mesma, mas é obrigatório criar uma condição de parada (um if). Sem isso, o código entra em loop infinito e trava o computador (Stack Overflow).





## Interação 2: Limite de parâmetros
**Meu Prompt:** Existe limite de parâmetros a serem recebidos em uma função?

**Resposta da IA:**
Na teoria e na especificação oficial do Dart, **não existe um limite numérico rígido** (como "só pode até 10"). O limite real é apenas a memória disponível no sistema.

No entanto, na **prática e nas boas práticas de código (Clean Code)**, existe um limite moral:
* O ideal é que uma função receba de **0 a 3 parâmetros**.
* Se a sua função está recebendo 5, 8 ou 10 parâmetros, isso é um forte indício de que ela está fazendo coisas demais (violando o princípio da responsabilidade única) ou que os parâmetros estão mal organizados.
* **A solução:** Quando você precisa passar muitos dados, em vez de criar 10 parâmetros soltos, você deve agrupar esses dados em uma Classe (Objeto) e passar apenas 1 parâmetro (o objeto inteiro).

**Minhas Observações:**
O Dart não tem um limite técnico, mas por boas práticas (Clean Code), devemos usar no máximo 3. Se a função precisar de muitos dados, o ideal é agrupar tudo em um Objeto/Classe para manter o código limpo.


## Interação 3: Opcionais vs Requeridos
**Meu Prompt:** Quando usar os operadores de valores opcionais e valores requeridos em uma função dart?

**Resposta da IA:**
Isso tem tudo a ver com a modelagem do seu problema. No Dart, você controla isso muito bem usando chaves `{}` para criar parâmetros nomeados.

* **Use o `required` (Obrigatório) quando:** A função simplesmente não consegue fazer o trabalho dela sem aquela informação. 
  * *Exemplo:* Uma função `calcularImposto`. Ela **precisa** do `required double valorProduto`. Não tem como calcular sem o valor.
* **Use os Opcionais (Sem o required) quando:** A informação é um "extra", um filtro, ou tem um comportamento padrão lógico caso o usuário não envie nada. Para ser opcional, a variável precisa aceitar nulo (`?`) ou ter um valor padrão (`=`).
  * *Exemplo:* Uma função `buscarUsuarios`. O nome para pesquisar pode ser opcional. Se o usuário não passar o nome, a função traz todos.

```dart
// 'cpf' é vital (required). 'apelido' é opcional (pode ser nulo).
void cadastrarPessoa({required String cpf, String? apelido}) { ... }

**Minhas Observações:**
O required é essencial para dar segurança e obrigar o envio de um dado vital. Já os parâmetros opcionais são ótimos para filtros ou informações extras que, se não enviadas, não quebram o funcionamento do programa.



## Interação 4: olaMundo vs olaMundo()
**Meu Prompt:** Qual a diferença entre chamar minha função chamado olaMundo das seguintes formas “olaMundo” e “olaMundo()”?

**Resposta da IA:**
Essa é uma das dúvidas mais clássicas do Dart (e de linguagens modernas em geral), e a diferença entre elas é gigantesca:

* **`olaMundo()` (Com parênteses):** Significa **EXECUÇÃO**. Você está mandando o Dart ir lá, rodar o código que está dentro da função imediatamente, e te devolver o resultado.
* **`olaMundo` (Sem parênteses):** Significa **REFERÊNCIA**. Você **não** está executando a função. Você está pegando a função "em si" (como se fosse um objeto) e passando ela para outro lugar. 

Isso é exatamente o que vimos na atividade anterior sobre *Callbacks*! Quando você quer que um botão execute uma função só quando for clicado, você passa a referência (`olaMundo`), pois se você colocar `olaMundo()`, ela vai rodar na mesma hora antes mesmo do botão ser desenhado na tela.

**Minhas Observações:**
A diferença é total: usar () executa a função imediatamente. Usar apenas o nome (sem parênteses) guarda a função como uma referência para ser executada só no futuro, o que é perfeito para botões e callbacks.