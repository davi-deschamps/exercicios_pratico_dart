import 'dart:math';

// Definindo os generos musicais 
enum GenerosMusicais {
  trap,
  pagode,
  samba,
  rock,
  pop,
  rap,
}

void main() {
  
  // Criando o gerador de numeros aleatorios
  final random = Random();
  
  // Sorteando um numero de 0 ate o tamanho maximo da nossa lista de enums
  final numeroAleatorio = random.nextInt(GenerosMusicais.values.length);

  // Pegando o genero correspondente ao indice que foi sorteado
  final generoFavorito = GenerosMusicais.values[numeroAleatorio];
  
  // Verificando qual genero foi escolhido para imprimir a mensagem certa
  switch (generoFavorito) {
    case GenerosMusicais.trap:
      print('Meu gênero musical preferido e o trap');
      break;
    case GenerosMusicais.pagode:
      print('Meu gênero musical preferido e o pagode');
      break;
    case GenerosMusicais.samba:
      print('Meu gênero musical preferido e o samba');
      break;
    case GenerosMusicais.rock:
      print('Meu gênero musical preferido e o rock');
      break;
    case GenerosMusicais.pop:
      print('Meu gênero musical preferido e o pop');
      break;
    case GenerosMusicais.rap:
      print('Meu gênero musical preferido e o rap');
      break;
  }
}