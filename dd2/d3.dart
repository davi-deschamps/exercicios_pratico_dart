void main() {
  // Instanciando a biblioteca de musicas
  final biblioteca = BibliotecaDeMusicas();

  // Cadastrando as musicas 
  biblioteca.adicionarMusica(Musica('musica1', 'artista1', 'album1', 200));
  biblioteca.adicionarMusica(Musica('musica2', 'artista2', 'album2', 300));
  biblioteca.adicionarMusica(Musica('musica3', 'artista1', 'album3', 150));
  biblioteca.adicionarMusica(Musica('musica4', 'artista3', 'album4', 400));

  // exibindo o relatorio geral da biblioteca
  biblioteca.exibirBiblioteca();

  print('\n ouvindo musica');

  // testando a busca por Titulo
  biblioteca.buscarPorTitulo('musica2');

  // testando a busca por artista
  biblioteca.buscarPorArtista('artista1');

  // testando a busca por album
  biblioteca.buscarPorAlbum('album4');
}

// Classe que representa o modelo de uma Musica
class Musica {
  final String titulo;
  final String artista;
  final String album;
  final int duracaoEmSegundos;

  Musica(this.titulo, this.artista, this.album, this.duracaoEmSegundos);
}

// Classe gerencia o acervo e as buscas
class BibliotecaDeMusicas {
  // Lista privada para armazenar as musicas
  final List<Musica> _musicas = [];

  // Metodo para adicionar novas musicas a colecao
  void adicionarMusica(Musica musica) {
    _musicas.add(musica);
  }

  // Calcula o tempo total em horas e imprime 
  void exibirBiblioteca() {
    print('--- Músicas Cadastradas ---');
    int totalSegundos = 0;

    for (var musica in _musicas) {
      print('• "${musica.titulo}" - ${musica.artista} (Álbum: ${musica.album})');
      totalSegundos += musica.duracaoEmSegundos;
    }

    // Convertendo segundos totais para horas
    double totalHoras = totalSegundos / 3600;

    print('\nNúmero total de músicas: ${_musicas.length}');
    print('Tempo total da biblioteca: ${totalHoras.toStringAsFixed(2)} horas');
  }

  // Filtra e imprime os resultados da busca por Titulo
  void buscarPorTitulo(String termo) {
    print('\n[Busca por Título: "$termo"]');
    final resultados = _musicas.where(
      (m) => m.titulo.toLowerCase().contains(termo.toLowerCase())
    ).toList();
    _imprimirResultados(resultados);
  }

  // Filtra e imprime os resultados da busca por artista
  void buscarPorArtista(String termo) {
    print('\n[Busca por Artista: "$termo"]');
    final resultados = _musicas.where(
      (m) => m.artista.toLowerCase().contains(termo.toLowerCase())
    ).toList();
    _imprimirResultados(resultados);
  }

  // Filtra e imprime os resultados da busca por album
  void buscarPorAlbum(String termo) {
    print('\n[Busca por Álbum: "$termo"]');
    final resultados = _musicas.where(
      (m) => m.album.toLowerCase().contains(termo.toLowerCase())
    ).toList();
    _imprimirResultados(resultados);
  }

  // metodo para padronizar a impressao dos resultados 
  void _imprimirResultados(List<Musica> resultados) {
    if (resultados.isEmpty) {
      print('Nenhuma música encontrada para este critério.');
    } else {
      for (var musica in resultados) {
        print('-> Encontrada: "${musica.titulo}" de ${musica.artista}');
      }
    }
  }
}