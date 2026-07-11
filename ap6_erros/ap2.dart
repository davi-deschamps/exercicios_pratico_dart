void main() {
  print('Teste do numero impar');
  // O bloco try TENTAR 
  try {
    validarNumeroPar(1);
    
    // Se a linha de cima der erro a execução pula para fora do try
    print("Entrada correta, você inseriu um número par.");
    
  } catch (erro) {
    // o bloco catch 
    // se o código do try der erro o catch faz o programa n quebrar
    // e exibe a nossa mensagem de erro no console
    print(erro);
  }

  print('\n Teste do numero par');
  try {
    validarNumeroPar(4); 
    
    // Se der tudo certo ele continua e imprime a mensagem
    print("Entrada correta, você inseriu um número par.");
    
  } catch (erro) {
    print(erro);
  }
}

// Função que valida os números
void validarNumeroPar(int numero) {
  
  // Checamos se o número é ímpar usando isOdd
  if (numero.isOdd) {
    
    // O comando throw (lançar)
    // Cria um erro intencionalmente para avisar que a regra foi violada
    throw Exception('Entrada inválida. Insira apenas números pares.');
  }
}