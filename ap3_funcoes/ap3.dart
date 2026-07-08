import 'dart:math';

void main() {
  const int maximo = 101;
  final gerador = Random();

  // gerando 10 raios aleatórios
  // O nextDouble() gera de 0.0 até 1.0.
  final listaDeRaios = List.generate(10, (_) => gerador.nextDouble() * maximo);

  // chamando a função principal
  processarCirculos(listaDeRaios);
}

//  atalho da Arrow Function (=>), que substitui as chaves {} e a palavra "return".
// Calcula a área
double calcularArea(double raio) => pi * pow(raio, 2);

// Calcula o perímetro
double calcularPerimetro(double raio) => 2 * pi * raio;

// função de impressão 
void processarCirculos(List<double> raios) {
  // for pra passar por cada raio dentro da nossa lista
  for (final raio in raios) {
    // Para cada raio, chamamos as nossas funções matemáticas
    final area = calcularArea(raio);
    final perimetro = calcularPerimetro(raio);

    // Imprimindo formatado usando o .toStringAsFixed(2) para deixar apenas 2 casas decimais
    print(
      'Raio: ${raio.toStringAsFixed(2)}, '
      'area: ${area.toStringAsFixed(2)}, '
      'perímetro: ${perimetro.toStringAsFixed(2)}',
    );
  }
}
