import 'dart:collection';
import 'dart:math';

void main() {
  // Inicializando a lista com 20 figuras
  final todasFiguras = <Figura>[];
  for (var i = 1; i <= 20; i++) {
    todasFiguras.add(Figura(i, 'item$i'));
  }

  final album = Album(totalFigurasNecessarias: todasFiguras.length);
  final repetidas = <Figura>[];
  int pacotesAbertos = 0;

  print('Abrindo os pacotes até completar o Album:');
  // Loop para abrir até estar com o album completo
  while (!album.estaCompleto) {
    final pacote = PacoteDeFiguras(todasFiguras);
    pacotesAbertos++;

   for (var figura in pacote.figuras) {
      final colou = album.colarFigura(figura);
      if (!colou) {
        repetidas.add(figura);
      }
    }
  }

  print('\nRelatorio:');
  print('Album completado');
  print('Total de pacotes abertos: $pacotesAbertos');
  print('Numero de figuras repetidas: ${repetidas.length}');

  print('\nFiguras coladas no Album: ');
  album.imprimirAlbum();
}

// Classe que representa uma Figura do album
class Figura implements Comparable<Figura> {
  final int codigo;
  final String nome;

  Figura(this.codigo, this.nome);

  // Implementacao para permitir a ordenacao automatica no SplayTreeSet
  @override
  int compareTo(Figura other) => codigo.compareTo(other.codigo);
}

// Classe que gera um pacote com 4 figuras aleatorias
class PacoteDeFiguras {
  final List<Figura> figuras = [];

  PacoteDeFiguras(List<Figura> todasFiguras) {
    final random = Random();
    // Inicializado 
    for (var i = 0; i < 4; i++) {
      final indiceAleatorio = random.nextInt(todasFiguras.length);
      figuras.add(todasFiguras[indiceAleatorio]);
    }
  }
}

// Classe principal que gerencia o Album
class Album {
  final int totalFigurasNecessarias;
  
  // SplayTreeSet remove repeticoes e mantem os elementos ordenados pelo compareTo automaticamente
  final Set<Figura> _figurasColadas = SplayTreeSet<Figura>();

  Album({required this.totalFigurasNecessarias});

  // Valida se o album ja possui todas as figuras necessarias
  bool get estaCompleto => _figurasColadas.length == totalFigurasNecessarias;

  // Tenta colar a figura e retorna true ou false 
  bool colarFigura(Figura figura) {
    return _figurasColadas.add(figura);
  }

  // Imprime no console as figuras coladas em ordem crescente
  void imprimirAlbum() {
    for (var figura in _figurasColadas) {
      print('Espaço: ${figura.codigo.toString().padLeft(2, '0')} = ${figura.nome}');
    }
  }
}