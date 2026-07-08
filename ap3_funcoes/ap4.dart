import 'dart:math';

void main() {
  const int maximo = 5001;
  final gerador = Random();

  // gerando a lista com 15 números inteiros
  final numerosSorteados = List.generate(15, (_) => gerador.nextInt(maximo));

  // chamando a função que vai ordenar e imprimir
  processarEImprimirBases(numerosSorteados);
}

// Função que vai processar
void processarEImprimirBases(List<int> numeros) {
  // Ordena a lista do menor para o maior (ordem crescente)
  numeros.sort();

  // Percorre cada número da lista já ordenada
  for (final numero in numeros) {
    // Chama as funções de conversão para cada base e imprime formatado
    print(
      'decimal: ${converterParaDecimal(numero)}, '
      'binário: ${converterParaBinario(numero)}, '
      'octal: ${converterParaOctal(numero)}, '
      'hexadecimal: ${converterParaHexadecimal(numero)}',
    );
  }
}

// função para converter a base utilizamos Arrow Functions (=>) para manter o código limpo
// O método .toRadixString() converte qualquer número para a base matemática que você passar nos parênteses

String converterParaDecimal(int numero) => numero.toString();

String converterParaBinario(int numero) => numero.toRadixString(2);

String converterParaOctal(int numero) => numero.toRadixString(8);

String converterParaHexadecimal(int numero) => numero.toRadixString(16);
