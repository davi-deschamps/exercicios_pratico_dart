import 'dart:math';

void main() {
  
  // Lista de raios 
  final listaRaios = [5, 8, 12, 7.3, 18, 2, 25];

  // Percorrendo cada raio da lista para calcular e exibir os dados
  for (var raio in listaRaios) {
    
    // Formula da area
    final area = pi * pow(raio, 2);
    
    // Formula do perimetro
    final perimetro = 2 * pi * raio;

    // Formatando os valores para exibir apenas 2 casas decimais
    final areaFormatada = area.toStringAsFixed(2);
    final perimetroFormatado = perimetro.toStringAsFixed(2);

    print('Raio: $raio, area: $areaFormatada, perímetro: $perimetroFormatado.');
  }
}