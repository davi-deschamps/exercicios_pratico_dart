import 'dart:math';

void main() {

  // O valor máximo é fixo desde antes de rodar, então é const
  // Maximo 101 pois usaremos nextInt(100) que gera números de 0 a 100
  const int maximo = 101;
  
  // O gerador de números aleatórios é criado em tempo de execução, então é final
  final Random gerador = Random();

  // declaração das variáveis aleatórias 1 a 100 
  final int valorA = gerador.nextInt(maximo);
  final int valorB = gerador.nextInt(maximo);
  final double resultado = valorA / valorB;

  // parte inteira do resultado
  // O método .toInt() ignora tudo o que vem depois da virgula
  final int parteInteira = resultado.toInt();

  // parte decimal
  final double parteDecimal = resultado - parteInteira;

  // imprimindo variáveis
  print("Números gerados aleatoriamente");
  print("Primeiro valor: $valorA");
  print("Segundo valor: $valorB");
  
  print("\n");
  print("Resultado da Divisão: $resultado");
  print("Parte Inteira: $parteInteira");
  
  // usamos toStringAsFixed(4) para ficar apenas 4 casas decimais 
  print("Parte Decimal: ${parteDecimal.toStringAsFixed(4)}"); 
}