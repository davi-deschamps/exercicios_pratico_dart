void main() {
  
  // Criando uma lista vazia para guardar os produtos
  final listaProdutos = <Produto>[];
  
  // Criando listas com os dados dos produtos
  final listaNomes = ['Teclado', 'Mouse', 'Monitor', 'Fone', 'Cadeira'];
  final listaPrecos = [150.0, 80.0, 1200.0, 250.0, 850.0];

  // Passando pelos dados das listas 5 vezes
  for (int i = 0; i < 5; i++) {
    
    // Criando um novo produto vazio
    final produto = Produto();
    
    // Preenchendo os dados do produto com os valores das listas
    produto.nome = listaNomes[i];
    produto.preco = listaPrecos[i];

    // Incluindo o produto pronto na nossa lista principal
    listaProdutos.add(produto);

    // Calculando o novo preco com 10% de desconto
    final precoComDesconto = produto.desconto(10.0);

    // Imprimindo o resultado final na tela
    print('Novo preco do produto ${listaProdutos[i].nome} (com desconto): $precoComDesconto');
  }
}

// Definição da classe o molde do nosso produto
class Produto {
  
  // Atributos do produto com valores iniciais vazios
  String nome = '';
  double preco = 0.0;

  // Metodo que recebe o percentual e calcula o preco com desconto
  double desconto(double percentual) {
    return preco - (preco * (percentual / 100));
  }
}