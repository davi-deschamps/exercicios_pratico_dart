import 'dart:math';

void main() {
  
  // Criando o gerador de numeros aleatorios
  final random = Random();

  // Criando um novo objeto pessoa vazio
  final pessoa = Pessoa();

  // Atribuindo os valores usando os setters
  pessoa.nome = 'Carlos';
  
  // Sorteando idade entre 1 e 100
  pessoa.idade = random.nextInt(100) + 1;
  
  // Sorteando altura decimal entre 1.0 e 2.3
  pessoa.altura = (random.nextDouble() * 1.3) + 1.0;

  // Imprimindo os valores na tela usando os getters
  print('Nome: ${pessoa.nome}');
  print('Idade: ${pessoa.idade}');
  print('Altura: ${pessoa.altura.toStringAsFixed(2)}');
}

// Definição da classe o molde da nossa pessoa
class Pessoa {
  
  // Atributos privados protegidos com o underline
  String _nome = '';
  int _idade = 0;
  double _altura = 0.0;

  // Getter e Setter para o nome
  String get nome => _nome;

  set nome(String valor) {
    _nome = valor;
  }

  // Getter para a idade
  int get idade => _idade;

  // Setter para a idade com regra de validacao
  set idade(int valor) {
    
    // Checa se o valor passado e maior ou igual a zero
    if (valor >= 0) {
      _idade = valor;
    } else {
      print('A idade deve ser um valor maior ou igual a zero.');
    }
  }

  // Getter e Setter para a altura
  double get altura => _altura;

  set altura(double valor) {
    _altura = valor;
  }
}