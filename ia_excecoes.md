## Interação 1: Erro vs Exceção
**Meu Prompt:** Qual a diferença entre um erro e uma exceção em Dart?

**Resposta da IA:**
* **Erro (`Error`):** Representa falhas críticas no sistema ou hardware (ex: falta de memória RAM). O programa não consegue se recuperar e, em geral, você não deve tentar tratá-los.
* **Exceção (`Exception`):** Representa problemas previstos na lógica do programa ou fluxo de dados (ex: arquivo não encontrado, falha ao converter texto). Você deve tratá-los com `try/catch` para manter o aplicativo funcionando.

**Minhas Observações:**
Erros são falhas graves do sistema (não trato). Exceções são problemas de lógica e dados esperados no código (trato com try/catch).



## Interação 2: Quando esperar Erros ou Exceções
**Meu Prompt:** Em quais situações devo esperar encontrar um erro, e em quais devo esperar uma exceção?

**Resposta da IA:**
* **Espere um Erro:** Em problemas de infraestrutura ou loops infinitos muito pesados (ex: `OutOfMemoryError` quando a memória acaba, ou `StackOverflowError` quando uma função chama a si mesma para sempre).
* **Espere uma Exceção:** Em falhas de interação externa (ex: queda de internet, tentar ler um arquivo que foi apagado, usuário digitando letras em campos de número).

**Minhas Observações:**
Erros = problemas na máquina ou sistema operacional estourando o limite. Exceções = problemas com dados do usuário ou conexões externas falhando.



## Interação 3: O uso prático do finally
**Meu Prompt:** Em quais situações é útil usar o bloco 'finally'?

**Resposta da IA:**
Como o `finally` sempre é executado (havendo erro ou não), ele é ideal para **liberação de recursos e limpeza**. Exemplos práticos:
* Fechar um arquivo de texto que foi aberto no `try`.
* Encerrar a conexão com o banco de dados.
* Desligar o ícone de "carregando" (loading) na tela do usuário após uma requisição.

**Minhas Observações:**
Uso o `finally` para "limpar a bagunça" (fechar arquivos, conexões ou loadings), garantindo que essa limpeza aconteça independentemente de sucesso ou falha.



## Interação 4: assert vs Lançar Exceção
**Meu Prompt:** Qual a diferença entre usar 'assert' e lançar uma exceção para verificar condições?

**Resposta da IA:**
* **`assert` (Afirmação):** Funciona apenas em modo de **desenvolvimento**. Se a condição falhar, ele quebra o app para o programador ver o bug na hora. Quando o app vai para as lojas (produção), o Dart ignora os asserts.
* **Lançar Exceção (`throw`):** Funciona em **produção**. Serve para proteger regras de negócio reais contra as entradas inválidas dos usuários finais (ex: sacar dinheiro sem saldo), sendo capturado pelo `catch`.

**Minhas Observações:**
`assert` é meu alarme de bugs interno, só roda enquanto estou programando. `throw exception` é a proteção real para as regras do negócio do cliente na versão final.



## Interação 5: Quando usar o assert
**Meu Prompt:** Em quais situações o 'assert' é mais útil durante o desenvolvimento?

**Resposta da IA:**
O `assert` é muito útil para validar as **premissas internas** do seu código antes que ele cause um estrago maior. Exemplos:
* Garantir que uma função crítica nunca receba uma lista vazia.
* Confirmar que um cálculo de imposto não retornou um valor negativo por engano.
Ele atua como uma "documentação viva" que te avisa imediatamente se você mesmo usar a sua função do jeito errado.

**Minhas Observações:**
Uso asserts para garantir que as funções estão recebendo os dados corretos de outras partes do código antes de processá-los. Ajuda a achar o erro na raiz.