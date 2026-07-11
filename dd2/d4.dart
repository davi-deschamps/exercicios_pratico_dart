import 'dart:math' as math;

void main() {
  // instanciando o comparador 
  final comparador = ComparadorFormasGeometricas();

  // Criando lista com as formas para comparação
  final formas = <FormaGeometrica>[
    Circulo('Circulo A', 3),
    Circulo('Circulo B', 8),
    Retangulo('Retângulo A', 4, 3),
    Retangulo('Retângulo B', 19, 11),
    Quadrado('Quadrado A', 5),
    // incluindo as novas formas geometricas 
    TrianguloEquilatero('Triângulo Equilátero A', 6),
    TrianguloRetangulo('Triângulo Retângulo A', 3, 4, 5),
    PentagonoRegular('Pentágono Regular A', 5),
    HexagonoRegular('Hexágono Regular A', 4),
  ];

  // encontrando a forma de maior area e maior perimetro da lista 
  final maiorArea = comparador.maiorArea(formas);
  final maiorPerimetro = comparador.maiorPerimetro(formas);

  print('Resultados da comparação');
  print('A maior área é ${maiorArea.area.toStringAsFixed(2)} e pertence a ${maiorArea.nome}');
  print('O maior perímetro é ${maiorPerimetro.perimetro.toStringAsFixed(2)} e pertence a ${maiorPerimetro.nome}');
}

// classe abstrata molde para todas as formas
abstract class FormaGeometrica {
  final String nome;
  FormaGeometrica(this.nome);

  // Getters abstratos que forcam as subclasses a calcularem seus dados
  double get area;
  double get perimetro;
}

// polimorfismo
class Circulo extends FormaGeometrica {
  final double raio;
  Circulo(String nome, this.raio) : super(nome);

  @override
  double get area => math.pi * math.pow(raio, 2);

  @override
  double get perimetro => 2 * math.pi * raio;
}

class Retangulo extends FormaGeometrica {
  final double largura;
  final double altura;
  Retangulo(String nome, this.altura, this.largura) : super(nome);

  @override
  double get area => altura * largura;

  @override
  double get perimetro => (altura * 2) + (largura * 2);
}

class Quadrado extends FormaGeometrica {
  final double lado;
  Quadrado(String nome, this.lado) : super(nome);

  @override
  double get area => lado * lado;

  @override
  double get perimetro => lado * 4;
}

// nova forma triangulo equilatero 
class TrianguloEquilatero extends FormaGeometrica {
  final double lado;
  TrianguloEquilatero(String nome, this.lado) : super(nome);

  // Area do triangulo equilatero
  @override
  double get area => (math.pow(lado, 2) * math.sqrt(3)) / 4;

  @override
  double get perimetro => lado * 3;
}

// npva forma triangulo retangulo
class TrianguloRetangulo extends FormaGeometrica {
  final double base;
  final double altura;
  final double hipotenusa;
  TrianguloRetangulo(String nome, this.base, this.altura, this.hipotenusa) : super(nome);

  @override
  double get area => (base * altura) / 2;

  @override
  double get perimetro => base + altura + hipotenusa;
}

// nova forma pentagono regular
class PentagonoRegular extends FormaGeometrica {
  final double lado;
  PentagonoRegular(String nome, this.lado) : super(nome);

  // Area de um pentagono regular
  @override
  double get area => (1 / 4) * math.sqrt(5 * (5 + 2 * math.sqrt(5))) * math.pow(lado, 2);

  @override
  double get perimetro => lado * 5;
}

// nova forma hexagono regular
class HexagonoRegular extends FormaGeometrica {
  final double lado;
  HexagonoRegular(String nome, this.lado) : super(nome);

  // Area do hexagono regular
  @override
  double get area => (3 * math.sqrt(3) * math.pow(lado, 2)) / 2;

  @override
  double get perimetro => lado * 6;
}

// alteração da classe ComparadorFormasGeometricas
class ComparadorFormasGeometricas {
  
  // Encontra a forma com maior area de uma lista
  FormaGeometrica maiorArea(List<FormaGeometrica> formas) {
    if (formas.isEmpty) throw ArgumentError('A lista de formas não pode estar vazia.');
    
    var maior = formas.first;
    for (var forma in formas) {
      if (forma.area > maior.area) {
        maior = forma;
      }
    }
    return maior;
  }

  // Encontra a forma com maior perimetro de uma lista
  FormaGeometrica maiorPerimetro(List<FormaGeometrica> formas) {
    if (formas.isEmpty) throw ArgumentError('A lista de formas não pode estar vazia.');
    
    var maior = formas.first;
    for (var forma in formas) {
      if (forma.perimetro > maior.perimetro) {
        maior = forma;
      }
    }
    return maior;
  }
}