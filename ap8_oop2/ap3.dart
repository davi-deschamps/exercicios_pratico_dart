void main() {
  
  // Criando a instancia 
  final camelo = Camelo();

  // Executando os metodos implementados a partir dos contratos
  camelo.comer();
  camelo.dormir();
}

// Definindo o primeiro contrato abstrato
abstract class Animal {
  
  // Metodo sem corpo obriga a classe filha a criar a logica
  void comer();
}

// Definindo o segundo contrato abstrato
abstract class Descansavel {
  
  // Metodo sem corpo obriga a classe filha a criar a logica
  void dormir();
}

// Definindo a classe concreta que assina os dois contratos usando implements
class Camelo implements Animal, Descansavel {
  
  // Escrevendo obrigatoriamente a 1 regra 
  @override
  void comer() {
    print('O camelo esta comendo.');
  }

  // Escrevendo obrigatoriamente a 2 regra 
  @override
  void dormir() {
    print('O camelo esta dormindo.');
  }
}