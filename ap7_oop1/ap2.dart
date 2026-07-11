void main() {
  
  // Criando o retangulo com as medidas de largura e altura
  final meuRetangulo = Retangulo(8.5, 4.2);

  // Calculando a area e guardando na variavel
  double areaTotal = meuRetangulo.calcularArea();

  // Imprimindo o resultado final na tela
  print('Area do retângulo: $areaTotal');
}

// Definição da classe o molde do nosso retangulo
class Retangulo {
  
  // Construtor padrão que define as medidas obrigatorias
  Retangulo(this.largura, this.altura);

  // Atributos definidos como final pois não vão mudar depois de criados
  final double largura;
  final double altura;

  // Metodo que calcula a area multiplicando largura por altura
  double calcularArea() {
    return largura * altura;
  }
}