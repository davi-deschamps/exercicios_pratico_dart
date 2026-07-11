import 'dart:math';

void main() {
  // nivel inicial de calorias aleatorias 
  final pessoa = Pessoa();
  
  final random = Random();
  final todosFornecedores = <Fornecedor>[
    FornecedorDeBebidas(),
    FornecedorDeSanduiches(),
    FornecedorDeBolos(),
    FornecedorDeSaladas(),
    FornecedorDePetiscos(),
    FornecedorDeUltraCaloricos(),
  ];

  print('Simulação');
  
  //loop baseado no nivel de calorias para definir se precisa comer
  while (pessoa.precisaComer()) {
    // escolha de um fornecedor aleatorio para cada refeicao
    final fornecedorSorteado = todosFornecedores[random.nextInt(todosFornecedores.length)];
    pessoa.refeicao(fornecedorSorteado);
  }

  print('\nIMFORMAÇÕES');
  pessoa.informacoes();
}

// Enum contendo os status de niveis de calorias exigidos
enum StatusCalorico {
  deficitExtremo('Deficit extremo de calorias'),
  deficit('Deficit de calorias'),
  satisfeito('Pessoa está satisfeita'),
  excesso('Excesso de calorias');

  final String descricao;
  const StatusCalorico(this.descricao);
}

class Produto {
  Produto(this.nome, this.calorias);
  final String nome;
  final int calorias;
}

// Interface base para unificar todos os tipos de fornecedores 
abstract class Fornecedor {
  Produto fornecer();
}

class FornecedorDeBebidas implements Fornecedor {
  final _random = Random();
  final _produtos = [
    Produto('Agua', 0), Produto('Refrigerante', 200), Produto('Suco de fruta', 100),
    Produto('Energetico', 135), Produto('Cafe', 60), Produto('Cha', 35),
  ];

// sobreescrita
  @override
  Produto fornecer() => _produtos[_random.nextInt(_produtos.length)];
}

// criando novos fornecedores especificos
class FornecedorDeSanduiches implements Fornecedor {
  final _random = Random();
  final _produtos = [Produto('X-Burguer', 450), Produto('Sanduiche Natural', 250), Produto('Misto Quente', 310)];

// sobreescrita
  @override
  Produto fornecer() => _produtos[_random.nextInt(_produtos.length)];
}

class FornecedorDeBolos implements Fornecedor {
  final _random = Random();
  final _produtos = [Produto('Bolo de Chocolate', 380), Produto('Bolo de Cenoura', 320), Produto('Bolo de Fuba', 210)];

// sobreescrita
  @override
  Produto fornecer() => _produtos[_random.nextInt(_produtos.length)];
}

class FornecedorDeSaladas implements Fornecedor {
  final _random = Random();
  final _produtos = [Produto('Salada Caesar', 180), Produto('Salada Verde', 45), Produto('Salada de Frutas', 120)];

// sobreescrita
  @override
  Produto fornecer() => _produtos[_random.nextInt(_produtos.length)];
}

class FornecedorDePetiscos implements Fornecedor {
  final _random = Random();
  final _produtos = [Produto('Batata Frita', 290), Produto('Coxinha', 220), Produto('Pastel', 190)];

// sobreescrita
  @override
  Produto fornecer() => _produtos[_random.nextInt(_produtos.length)];
}

class FornecedorDeUltraCaloricos implements Fornecedor {
  final _random = Random();
  final _produtos = [Produto('Pizza Inteira', 1200), Produto('Hamburguer Triplo', 950), Produto('Balde de Sorvete', 800)];

// sobreescrita
  @override
  Produto fornecer() => _produtos[_random.nextInt(_produtos.length)];
}

class Pessoa {
  int _caloriasAtuais;
  int _totalRefeicoes = 0;

  // construtor que define um nivel inicial de calorias aleatoria
  Pessoa() : _caloriasAtuais = Random().nextInt(3001) {
    print('Pessoa iniciou o dia com $_caloriasAtuais calorias.');
  }

  // valida se o corpo ainda necessita de comida
  bool precisaComer() {
    final status = obterStatus();
    return status == StatusCalorico.deficitExtremo || status == StatusCalorico.deficit;
  }

  // classifica o status de calorias
  StatusCalorico obterStatus() {
    if (_caloriasAtuais <= 500) return StatusCalorico.deficitExtremo;
    if (_caloriasAtuais <= 1800) return StatusCalorico.deficit;
    if (_caloriasAtuais <= 2500) return StatusCalorico.satisfeito;
    return StatusCalorico.excesso;
  }

  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasAtuais += produto.calorias;
    _totalRefeicoes++; 
  }

  void informacoes() {
    print('Calorias finais: $_caloriasAtuais');
    print('Status calórico: ${obterStatus().descricao}');
    print('Número de refeições realizadas: $_totalRefeicoes'); 
  }
}