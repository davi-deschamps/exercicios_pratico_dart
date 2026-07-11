import 'dart:math';

void main() {
  final random = Random();

  // O bloco try TENTAR
  // Colocamos aqui a criação do objeto que pode falhar
  try {
    
    // Sorteando números fracionados (double) entre 0 e 99
    double baseSorteada = random.nextDouble() * 99;
    double alturaSorteada = random.nextDouble() * 99;

    // Criando o retângulo com os valores sorteados
    final retangulo = Retangulo(baseSorteada, alturaSorteada);

    // Se as dimensões forem válidas, ele calcula e imprime a área
    // O toStringAsFixed(2) formata o número para ter apenas 2 casas decimais
    double area = retangulo.calcularArea();
    print("Area do retângulo: ${area.toStringAsFixed(2)}");
    
  } catch (e) {
    // o bloco catch
    // se o construtor der erro, o catch exibe a mensagem no console
    print(e);
  }
}

// Interface que define o contrato Forma
abstract class Forma {
  double calcularArea();
}

// Classe Retangulo que assina o contrato Forma
class Retangulo implements Forma {
  
  // Atributos privados em Dart, o '_' antes do nome torna a variável privada
  final double _base;
  final double _altura;

  // Construtor da classe
  Retangulo(this._base, this._altura) {
    
    // Checamos se a base ou altura são inválidas
    if (_base <= 0 || _altura <= 0) {
      
      // O comando throw lançar
      // Cria um erro intencionalmente para não deixar criar um retângulo negativo
      throw Exception('Dimensões inválidas, informe apenas valores positivos maiores que zero');
    }
  }

  // Implementação obrigatória do método da interface
  @override
  double calcularArea() {
    return _base * _altura;
  }
}