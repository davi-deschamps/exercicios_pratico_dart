import 'dart:collection';

void main() {
  // Instanciando o baralho usando a colecao Queue do pacote dart:collection
  final baralho = Baralho();

  print('Empilhando Cartas');
  // Incluindo as cartas no baralho na ordem especificada
  baralho.empilhar(Carta('A', Naipe.paus));
  baralho.empilhar(Carta('A', Naipe.copas));
  baralho.empilhar(Carta('A', Naipe.espadas));
  baralho.empilhar(Carta('A', Naipe.ouros));

  print('\nDesempilhadno Cartas');
  // Estrutura de repeticao para remover todas as cartas do baralho, uma por vez
  while (baralho.possuiCartas) {
    final cartaRemovida = baralho.removerDoTopo();
    print('Removida do topo: ${cartaRemovida.nome} de ${cartaRemovida.naipe.simbolo}');
  }
}

// Enum para garantir apenas os naipes validos e associar seus respectivos codigos unicode
enum Naipe {
  paus('\u2663'),
  copas('\u2665'),
  espadas('\u2660'),
  ouros('\u2666');

  final String simbolo;
  const Naipe(this.simbolo);
}

// Classe que representa o modelo de uma Carta
class Carta {
  final String nome;
  final Naipe naipe;

  Carta(this.nome, this.naipe);
}

// Classe que gerencia o baralho utilizando Queue
class Baralho {
  // Utilizando Queue ListQueue 
  final Queue<Carta> _cartas = ListQueue<Carta>();

  // Getter para verificar se a pilha ainda tem cartas
  bool get possuiCartas => _cartas.isNotEmpty;

  // Empilha uma carta por vez 
  void empilhar(Carta carta) {
    _cartas.addLast(carta);
    print('Carta empilhada: ${carta.nome} de ${carta.naipe.simbolo}');
  }

  // Remove uma carta por vez sempre retirando do topo o ultimo item inserido
  Carta removerDoTopo() {
    if (_cartas.isEmpty) {
      throw StateError('O baralho está vazio.');
    }
    return _cartas.removeLast();
  }
}