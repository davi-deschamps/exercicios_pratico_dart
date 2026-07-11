import 'dart:math';

void main() {
  
  // Criando o gerador de numeros aleatorios
  final random = Random();
  
  // Sorteando um numero aleatorio
  final numeroSorteado = random.nextInt(2000);

  // Chamando o metodo estatico pelo nome da classe
  final resultado = Calculadora.dobro(numeroSorteado);

  // Imprimindo o resultado do calculo na tela
  print('O dobro do número $numeroSorteado e: $resultado');
}

// Definindo a classe abstrata da nossa calculadora
abstract class Calculadora {
  
  // Metodo estatico que recebe um numero e retorna ele multiplicado por dois
  static int dobro(int numero) {
    return numero * 2;
  }
}