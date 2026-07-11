void main() {
  
  // Criando a instancia do nosso cachorro na memoria
  final cachorro = Cachorro();

  // Chamando os metodos que foram herdados da classe pai
  cachorro.beber();
  cachorro.comer();

  // Chamando o metodo especifico da classe filha
  cachorro.latir();
}

// Definindo a classe abstrata que serve de molde base para os animais
abstract class Animal {
  
  // Metodo padrao para todos os animais comerem
  void comer() {
    print('O animal esta comendo.');
  }

  // Metodo padrao para todos os animais beberem
  void beber() {
    print('O animal esta bebendo.');
  }
}

// Definindo a classe concreta que herda as acoes do Animal
class Cachorro extends Animal {
  
  // Metodo especifico que so o cachorro tem
  void latir() {
    print('O cachorro esta latindo.');
  }
}