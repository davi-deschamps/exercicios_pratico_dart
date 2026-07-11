void main() {
  // teste de falha e correto
  print('Exemplo de saida com erro:');
  converterParaInteiro('abc');

  print('\n Exemplo de saida bem sucedida:');
  converterParaInteiro('444');
}

// Função que trata os erros
void converterParaInteiro(String entradaTexto) {
  
  // O bloco try TENTAR 
  // Colocamos aqui os código podem quebrar ou falhar 
  try {
    
    // O comando int.parse tenta transformar um texto ('444') num número de verdade (444).
    // Se o texto tiver letras ('abc'), o int.parse gera um ERRO.
    int numeroConvertido = int.parse(entradaTexto);
    
    // Se der erro a execução pula para fora do try
    // Se der tudo certo ele continua e imprime a mensagem
    print('Numero digitado: $numeroConvertido');
    
  } catch (e) {
    // o bloco catch 
    // se o código do try der erro o catch faz o programa n quebrar
    // e exibi uma mensagem  no lugar da tela vermelha de erro
    print('Entrada invalida. Insira apenas números inteiros.');
  }
}