import 'dart:math';

void main() {
  // Executando A passando a função B
  final resultadoAB = funcaoA(funcaoB);
  
  // Executando A passando a função C
  final resultadoAC = funcaoA(funcaoC);

  // Imprimindo resultados 
  print('A(B) = $resultadoAB');
  print('A(C) = $resultadoAC');
}

// Função A sorteando 2 numeros aleatorios 
int funcaoA(int Function(int) operacaoMatematica) {
   const int maximo = 101;
  final gerador = Random();
  
  final numeroSorteado1 = gerador.nextInt(maximo);
  final numeroSorteado2 = gerador.nextInt(maximo);
  


  // Executando a função recebida por parâmetro passando os números sorteados
  final primeiraExecucao = operacaoMatematica(numeroSorteado1);
  final segundaExecucao = operacaoMatematica(numeroSorteado2);
  
  // Retornando a soma total
  return primeiraExecucao + segundaExecucao;
}

// Função B que subtrai 100
int funcaoB(int valor) {
  return valor - 100;
}

// Função C que soma + 100
int funcaoC(int valor) {
  return valor + 100;
}