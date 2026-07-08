import 'dart:math';

void main() {

  // O valor máximo é fixo desde antes de rodar, então é const
  // Maximo 16 pois usaremos nextInt(16) que gera números de 0 a 15
  const int maximo = 16;
  final Random gerador = Random();

  // criando a lista com 50 números 
  // aqui não usamos 'final' porque a lista vai ser alterada vamos remover itens
  List lista = List.generate(50, (_) => gerador.nextInt(maximo));

  // imprimindo a lista original
  // O método .join(' ; ') pega todos os itens da lista e transforma em um texto só,
  // colocando " ; " entre cada número. Isso poupa o trabalho de fazer um laço 'for'.
  print("Lista original: ${lista.join(' ; ')}");

  // tirando os numeros pares usando o removeWhere
  lista.removeWhere((numero) => numero % 2 == 0);

  // imprimindo a lista atualizada
  print("Lista atualizada: ${lista.join(' ; ')}");
}