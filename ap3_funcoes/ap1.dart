import 'dart:math';

void main() {
  // gerador de números aleatórios
  const int maximo = 101;
  final gerador = Random();

  // criando as duas listas 
  final primeiraLista = List.generate(5, (_) => gerador.nextInt(maximo));
  final segundaLista = List.generate(5, (_) => gerador.nextInt(maximo));

  // imprimindo as Listas
  exibirLista(primeiraLista);
  exibirLista(segundaLista);

  // chamando a função para somar as duas listas
  final listaSomada = juntarESomarListas(primeiraLista, segundaLista);
  
  // imprimindo o resultado final
  exibirLista(listaSomada);
}

// Função que imprime as Listas 
void exibirLista(List<int> valores) {
  // validação
  if (valores.isEmpty) {
    print('Lista vazia');
  } else {
    // O .join(', ') coloca uma vírgula e um espaço entre cada número
    print('Lista: ${valores.join(', ')}');
  }
}

// Função que junta e soma as Listas
List<int> juntarESomarListas(List<int> listaA, List<int> listaB) {
  // Validação se o tamanho das listas for diferente 
  if (listaA.length != listaB.length) {
    return []; 
  }


  final listaResultado = <int>[];

  // Laço for para percorrer cada posição das listas
  for (var i = 0; i < listaA.length; i++) {
    final valorA = listaA[i];
    final valorB = listaB[i];
    
    // imprimindo o valor 
    print('$valorA+$valorB');
    
    // somando e guardando na nova Lista 
    listaResultado.add(valorA + valorB);
  }

  // retornando o Lista final 
  return listaResultado;
}