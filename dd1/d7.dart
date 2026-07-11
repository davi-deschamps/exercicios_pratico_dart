void main() {
  // Lista de numeros
  final numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  //  laço for
  int somaFor = 0;
  for (int i = 0; i < numeros.length; i++) {
    somaFor += numeros[i];
  }

  // loop while 
  int somaWhile = 0;
  int indice = 0;
  while (indice < numeros.length) {
    somaWhile += numeros[indice];
    indice++;
  }

  // metodo recursivo 
  final somaRecursiva = somarRecursivo(numeros, numeros.length);

  // metodo de colecao
  final somaColecao = numeros.reduce((acumulador, atual) => acumulador + atual);

  // Exibindo resultados 
  print('for: $somaFor  while: $somaWhile  recursão: $somaRecursiva  lista: $somaColecao');
}

// função para o calculo recursivo 
int somarRecursivo(List<int> lista, int tamanho) {
  // caso chegue a 0 interompe a recursão
  if (tamanho <= 0) return 0;
  
  // Soma o ultimo elemento atual com o resultado da funcao chamando a mesma
  return somarRecursivo(lista, tamanho - 1) + lista[tamanho - 1];
}