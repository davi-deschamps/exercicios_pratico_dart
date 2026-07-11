void main() {
  // Paragrafo 
  final texto = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
      'Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';

  // Numero de palavras dividindo o texto por espacos em branco
  final palavras = texto.split(' ').where((p) => p.isNotEmpty).toList();
  final numeroPalavras = palavras.length;

  // tamanho do texto completo
  final tamanhoTexto = texto.length;

  // numero de frases contando quantos pontos finais dividem o texto
  final numeroFrases = texto.split('.').where((f) => f.trim().isNotEmpty).length;

  // Listas de referencia para busca (convertidas para minusculo)
  final vogaisRef = ['a', 'e', 'i', 'o', 'u'];
  
  int totalVogais = 0;
  final consoantesEncontradas = <String>{};

  // Convertendo todo o texto para minusculo 
  final textoMinusculo = texto.toLowerCase();

  // Percorrendo caractere por caractere do texto
  for (int i = 0; i < textoMinusculo.length; i++) {
    final letra = textoMinusculo[i];

    // Verifica se e uma letra valida do alfabeto 
    if (letra.codeUnitAt(0) >= 97 && letra.codeUnitAt(0) <= 122) {
      if (vogaisRef.contains(letra)) {
        totalVogais++;
      } else {
        consoantesEncontradas.add(letra);
      }
    }
  }

  // Ordenando as consoantes encontradas em ordem alfabetica
  final listaConsoantes = consoantesEncontradas.toList()..sort();

  // Exibindo os resultados formatados no console
  print('parágrafo: $texto');
  print('Numero de palavras: $numeroPalavras');
  print('Tamanho do texto: $tamanhoTexto');
  print('Numero de frases: $numeroFrases');
  print('Numero de vogais: $totalVogais');
  print('Consoantes encontradas: ${listaConsoantes.join(', ')}');
}