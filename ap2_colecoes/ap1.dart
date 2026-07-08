import 'dart:math';

void main() {
  // O valor máximo é fixo desde antes de rodar, então é const
  // Maximo 101 pois usaremos nextInt(100) que gera números de 0 a 100
  const int maximo = 101;

  // O gerador de números aleatórios é criado em tempo de execução, então é final
  final Random gerador = Random();

  // criando a lista com 10 posições
  // O List.generate é a forma mais eficiente de criar e preencher listas no Dart.
  final lista = List.generate(10, (_) => gerador.nextInt(maximo));

  // imprimindo os valores
  for (int i = 0; i < lista.length; i++) {
    print("Posição: $i, valor: ${lista[i]}");
  }
}
