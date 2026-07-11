import 'dart:async';

Future<void> main() async {
  
  // Lista com os caminhos das imagens que precisam ser baixadas
  List<String> linksImagens = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  // Dispara a funcao principal de download passando a lista de links
  await baixarImagens(linksImagens);
}

// Função assincrona que simula o download individual de cada arquivo
Future<void> baixarImagem(String urlUnica) async {
  
  // Simula o tempo de espera do download de 2 segundos por imagem
  await Future.delayed(Duration(seconds: 2));

  print('Imagem $urlUnica baixada com sucesso!');
}

// Função que gerencia o fluxo completo e passa por toda a lista de links
Future<void> baixarImagens(List<String> listaUrls) async {
  print('Baixando imagens...');

  // Passa de link em link esperando um terminar antes de começar o proximo
  for (String url in listaUrls) {
    await baixarImagem(url);
  }

  print('Download concluído!');
}