import 'dart:math';

void main() {
  final Random gerador = Random();

  // criando a lista com 50 números entre 10 e 21
  final lista = List.generate(50, (_) => gerador.nextInt(12) + 10);

  // imprimindo a lista original usando join
  print("Lista original: ${lista.join(' ; ')}");

  // extraindo apenas os valores únicos
  // Aqui usamos o método .toSet() para matar todas as repetições
  final valoresUnicos = lista.toSet();

  // imprimindo a lista atualizada
  print("Itens únicos: ${valoresUnicos.join(' ; ')}");
}