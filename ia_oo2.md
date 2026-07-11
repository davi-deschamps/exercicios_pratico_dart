## Interação 1: Controle de Acesso (Getters e Setters)
**Meu Prompt:** Em quais situações é melhor usar getters e setters em vez de acessar atributos diretamente?

**Resposta da IA:**
Você deve usar getters e setters quando precisa ter **controle** sobre a variável. As principais situações são:
1. **Validação:** Impedir que um dado inválido seja salvo (ex: não permitir idade negativa no setter).
2. **Somente leitura:** Criar um getter sem um setter, impedindo que o valor seja alterado de fora.
3. **Cálculos automáticos:** Retornar um valor que precisa ser calculado na hora do acesso (ex: um getter `nomeCompleto` que junta `nome` e `sobrenome`).

**Minhas Observações:**
Usar quando precisar aplicar regras, criar validações de segurança ou transformar o dado antes de ler/gravar na variável.



## Interação 2: Classes Abstratas na Prática
**Meu Prompt:** O que é uma 'classe abstrata' e como ela difere de uma classe normal? Quando devo usar classes abstratas em vez de classes concretas?

**Resposta da IA:**
A diferença principal é que uma classe abstrata **não pode gerar objetos** (não pode ser instanciada com `new` ou `NomeDaClasse()`). Ela é estritamente um molde base. Você deve usá-la quando quiser criar uma estrutura geral (ex: `Animal`) que agrupe características comuns, mas forçando as classes filhas (ex: `Cachorro`, `Gato`) a criarem as suas próprias versões de certas ações (ex: o método `emitirSom()`).

**Minhas Observações:**
É um "super molde" que não gera objetos na memória. Use quando precisar obrigar as classes filhas a seguirem uma estrutura padrão, mas com comportamentos diferentes.



## Interação 3: Dart vs Java (Interfaces Implícitas)
**Meu Prompt:** Porque em dart pode usar extend e implement em uma classe abstrata e ja em java não?

**Resposta da IA:**
Isso acontece por causa de um conceito do Dart chamado **Interfaces Implícitas**. No Dart, toda classe (seja ela normal ou abstrata) gera uma "interface invisível" automaticamente por trás dos panos. Por isso, você pode dar `implements` em qualquer classe. No Java, as regras são rígidas e separadas: você só dá `extends` em classes (abstratas ou normais) e só dá `implements` em arquivos criados especificamente com a palavra-chave `interface`. 

**Minhas Observações:**
No Dart, toda classe já vira uma interface automaticamente, permitindo usar o `implements` nela. No Java, classes e interfaces são entidades separadas e com regras rígidas.