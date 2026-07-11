import 'dart:async';

Future<void> main() async {
  print('Iniciando lançamento');

  // Define o ponto de partida do nosso cronometro regressivo
  var segundosRestantes = 5;

  // Executa o laco de repeticao enquanto o cronometro nao zerar
  while (segundosRestantes > 0) {
    
    // Aguarda a exibicao e a pausa de 1 segundo antes de ir para o proximo numero
    await executarContagem(segundosRestantes);

    // Subtrai um segundo a cada volta do loop
    segundosRestantes--;
  }

  print('Foguete lançado!');
}

// Função assincrona encarregada de exibir o numero e simular o tempo de 1 segundo
Future<void> executarContagem(int valorAtual) async {
  print('$valorAtual');
  
  // Cria a pausa real de exatamente 1 segundo no console
  await Future.delayed(Duration(seconds: 1));
}