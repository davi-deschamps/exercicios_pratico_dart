## Interação 1: switch vs if/else
**Meu Prompt:** Quando devo usar 'switch' em vez de uma série de 'if else'?

**Resposta da IA:**
A regra prática é:
* **`switch`:** Ideal quando você precisa testar a **mesma variável** contra vários **valores exatos** (ex: um menu com opções 1, 2, 3 ou status de pedido como "pago", "pendente"). Deixa o código mais legível e rápido.
* **`if/else`:** Ideal para condições complexas, comparações de grandeza (maior/menor que) ou quando precisa testar várias variáveis diferentes ao mesmo tempo.

**Minhas Observações:**
Uso `switch` para bater valores exatos de uma única variável (como menus). Para contas matemáticas, ranges (maior/menor) ou múltiplas condições misturadas, uso o `if/else`.



## Interação 2: for tradicional vs for...in
**Meu Prompt:** Qual a diferença entre um loop 'for' tradicional e um loop 'for...in'?

**Resposta da IA:**
Ambos servem para repetir código, mas a aplicação muda:
* **`for` tradicional:** Dá controle absoluto. Você usa um contador numérico (`i`), decide onde ele começa, onde termina e de quanto em quanto pula. Perfeito para quando você precisa saber a posição (índice) exata de algo.
* **`for...in`:** É um atalho limpo e moderno. Serve exclusivamente para percorrer coleções (como listas). Ele pega cada item do primeiro ao último automaticamente, sem que você precise gerenciar números de índice.

**Minhas Observações:**
O `for` tradicional usa um contador numérico e me dá controle total dos passos. O `for...in` é um atalho direto e sem contador para ler todos os itens de uma lista facilmente.



## Interação 3: for vs while
**Meu Prompt:** Quando é adequado usar for e usar while?

**Resposta da IA:**
A escolha depende se você sabe ou não a quantidade de repetições:
* **Use `for`:** Quando você **sabe exatamente** quantas vezes o código deve rodar antes de começar (ex: repetir 10 vezes, ou percorrer uma lista que tem 5 itens).
* **Use `while`:** Quando você **não sabe** quantas vezes vai repetir, pois depende de uma condição externa acontecer para parar (ex: "continue rodando enquanto o usuário não digitar 'sair'", ou "enquanto houver conexão com a internet").

**Minhas Observações:**
Uso `for` para repetições com quantidade certa ou conhecida. Uso `while` quando não sei a quantidade de repetições e dependo de algum evento acontecer para o laço parar.



## Interação 4: switch com Strings
**Meu Prompt:** Como posso usar 'switch' com tipos de dados diferentes, como strings?

**Resposta da IA:**
No Dart, o `switch` é muito flexível e aceita comparações com `Strings` de forma nativa e direta, assim como faz com números inteiros ou Enums. Basta colocar o texto exato entre aspas dentro dos seus `cases`.
*Atenção:* A comparação de Strings no switch diferencia letras maiúsculas de minúsculas (Case Sensitive).

**Exemplo:**
```dart
String perfil = "admin";
switch (perfil) {
  case "admin":
    print("Acesso total");
    break;
  case "usuario":
    print("Acesso restrito");
    break;
}

**Minhas Observações:**
O Dart suporta switch com textos (String) naturalmente. É só colocar o texto exato entre aspas no case, lembrando que ele diferencia letras maiúsculas de minúsculas.