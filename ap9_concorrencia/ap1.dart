import 'dart:async';

// Função assincrona que simula a resposta de um servidor externo
Future<String> consultarAPI(String codigoRastreamento) async {
  
  // Simula uma espera de 2 segundos de carregamento da rede
  await Future.delayed(Duration(seconds: 2));

  // Checa o codigo recebido e retorna a resposta correspondente
  if (codigoRastreamento == 'ABC123') {
    return 'Em transito';
  } else if (codigoRastreamento == 'XYZ789') {
    return 'Entregue';
  } else if (codigoRastreamento == 'DEF456') {
    return 'Atrasado';
  } else {
    return 'Código de rastreamento invalido';
  }
}

// Função que aguarda a resposta do servidor e exibe na tela
Future<void> verificarStatusEntrega(String codigoRastreamento) async {
  
  // Aguarda a resposta final da API antes de continuar
  String statusAtual = await consultarAPI(codigoRastreamento);
  print('Status de entrega do pacote $codigoRastreamento: $statusAtual');
}

// Função principal configurada como assincrona para controlar o fluxo de tempo
Future<void> main() async {
  print('Inicio');
  
  // Executa e aguarda a finalizacao de cada verificação em ordem sequencial
  await verificarStatusEntrega('ABC123');
  await verificarStatusEntrega('XYZ789');
  await verificarStatusEntrega('DEF456');
  
  print('Fim');
}