import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(meiosDeComunicacao.length)];
}

// Classe abstrata 
abstract class MeioDeComunicacao {
  void fazerLigacao(String numero);
}

// Subclasse Telefone que estende a base comum
class Telefone extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[TELEFONE] Ligando para $numero...');
  }
}

// Subclasse Celular que estende a base comum
class Celular extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[CELULAR] Ligando para $numero...');
  }
}

// Subclasse Orelhao que estende a base comum
class Orelhao extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[ORELHÃO] Ligando para $numero...');
  }
}
