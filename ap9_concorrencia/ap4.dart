import 'dart:async';

Future<void> main() async {
  print('Iniciando busca de dados');

  // Dispara a busca e aguarda os 5 segundos de processamento antes de prosseguir
  await realizarBusca();

  print('Busca finalizada');
}

// Função assincrona que simula o carregamento e exibe o progresso do processo
Future<void> realizarBusca() async {
  print('Buscando dados...');
  
  // Simula uma espera pesada de 5 segundos para trazer as informações
  await Future.delayed(Duration(seconds: 5));
}