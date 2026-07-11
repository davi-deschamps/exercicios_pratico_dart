import 'dart:math';

void main() {
  // criando listas 
  final nomes = [
    'Ana', 'Francisco', 'Joao', 'Pedro', 'Gabriel', 'Rafaela', 'Marcio', 'Jose', 
    'Carlos', 'Patricia', 'Helena', 'Camila', 'Mateus', 'Gabriel', 'Maria', 
    'Samuel', 'Karina', 'Antonio', 'Daniel', 'Joel', 'Cristiana', 'Sebastião', 'Paula'
  ];

  final sobrenomes = [
    'Silva', 'Ferreira', 'Almeida', 'Azevedo', 'Braga', 'Barros', 'Campos', 
    'Cardoso', 'Teixeira', 'Costa', 'Santos', 'Rodrigues', 'Souza', 'Alves', 
    'Pereira', 'Lima', 'Gomes', 'Ribeiro', 'Carvalho', 'Lopes', 'Barbosa'
  ];

  final random = Random();

  // Sorteando um indice aleatorio do tamanho de cada lista
  final indiceNome = random.nextInt(nomes.length);
  final indiceSobrenome = random.nextInt(sobrenomes.length);

  // Combinando o nome e o sobrenome sorteados
  final nomeSugerido = nomes[indiceNome];
  final sobrenomeSugerido = sobrenomes[indiceSobrenome];

  print('Nome: $nomeSugerido $sobrenomeSugerido');
}