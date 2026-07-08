import 'dart:math';

void main() {

  // O valor máximo é fixo desde antes de rodar, então é const
  // Maximo 101 pois usaremos nextInt(100) que gera números de 0 a 100
  const int maximo = 101;
  
  // O gerador de números aleatórios é criado em tempo de execução, então é final
  final Random gerador = Random();

  // declaração das variáveis aleatórias 1 a 100
  // elas não podem ser final nem const pois ainda vamos inverter esses numeros 
  int valorA = gerador.nextInt(maximo);
  int valorB = gerador.nextInt(maximo);

  // imprimindo os valores originais
  print("Números gerados aleatoriamente");
  print("Variável A: $valorA");
  print("Variável B: $valorB");

  // invertendo os valores
  // para não perder o valor da variavel A criamos a temp que como será usada somente uma vez usamos final
  final int temp = valorA; 
  valorA = valorB;
  valorB = temp;

  // imprimindo os valores invertidos
  print("\nVariáveis invertidas"); 
  print("Variável A: $valorA");
  print("Variável B: $valorB");
}