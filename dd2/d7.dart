import 'dart:collection';
import 'dart:math';

void main() {
  final filaMercado = FilaMercado();
  final gerador = GeradorNomes();

  print('1 pessoa a entrar na fila: ');
  // Gerando a fila com 10 pessoas aleatorias
  for (var i = 0; i < 10; i++) {
    final nomeCompleto = gerador.gerarNomeAleatorio();
    filaMercado.entrarNaFila(Pessoa(nomeCompleto));
  }

  print('\nAtendimento iniciado: ');
  // Loop while para atender as pessoas até que a fila seja totalmente esgotada
  while (filaMercado.possuiPessoas) {
    filaMercado.atenderProximo();
  }
}

// Classe que representa uma Pessoa da fila
class Pessoa {
  final String nomeCompleto;
  Pessoa(this.nomeCompleto);
}

// Classe especializada em gerar nomes aleatorios
class GeradorNomes {
  final _random = Random();
  
  // Listas com nomes e sobrenomes 
  final _nomes = ['Nome1', 'Nome2', 'Nome3', 'Nome4', 'Nome5', 'Nome6', 'Nome7', 'Nome8', 'Nome9', 'Nome10'];
  final _sobrenomes = ['Sobrenome1', 'Sobrenome2', 'Sobrenome3', 'Sobrenome4', 'Sobrenome5', 'Sobrenome6', 'Sobrenome7', 'Sobrenome8', 'Sobrenome9', 'Sobrenome10'];

  // Método encarregado de sortear e combinar um nome e sobrenome
  String gerarNomeAleatorio() {
    final nome = _nomes[_random.nextInt(_nomes.length)];
    final sobrenome = _sobrenomes[_random.nextInt(_sobrenomes.length)];
    return '$nome $sobrenome';
  }
}

// Classe para controle da Fila do Mercado usando Queue
class FilaMercado {
  // Utilizando Queue ListQueue para manipular 
  final Queue<Pessoa> _fila = ListQueue<Pessoa>();

  // Getter para validar se ainda existem pessoas na fila
  bool get possuiPessoas => _fila.isNotEmpty;

  // Insere a pessoa no fim da fila
  void entrarNaFila(Pessoa pessoa) {
    _fila.addLast(pessoa);
    print('${pessoa.nomeCompleto} entrou na fila');
  }

  // Remove a pessoa do inicio da fila
  void atenderProximo() {
    if (_fila.isEmpty) {
      print('A fila está vazia.');
      return;
    }
    final pessoaAtendida = _fila.removeFirst();
    print('${pessoaAtendida.nomeCompleto} foi atendido(a)');
  }
}