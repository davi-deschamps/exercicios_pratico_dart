void main() {
  
  // Criando a conta bancária da Maria já com 1000 de saldo inicial
  final minhaConta = ContaBancaria(1000.0, 'Maria');
  
  // adicionando dinheiro usando o método depositar
  minhaConta.depositar(500.0);
  
  // retirando dinheiro usando o método sacar
  minhaConta.sacar(200.0);

  // Imprimindo o saldo final na tela
  print('Saldo atual: ${minhaConta.saldo}');
}

// Definição da classe o molde da nossa conta
class ContaBancaria {
  
  // Construtor padrão que define o que é obrigatório para a conta nascer
  ContaBancaria(this.saldo, this.titular);

  // Atributos 
  double saldo;
  String titular;

  // Metodo que somar um valor ao saldo
  void depositar(double valor) {
    saldo += valor;
  }

  // Metodo para subtrair um valor do saldo com regra de segurança
  void sacar(double valor) {
    
    // Checa se o valor que quer sacar é menor ou igual ao dinheiro que tem
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print('Saldo insuficiente para o saque.');
    }
  }
}