void main() {
  // Lista de numeros
  final numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];

  // Ordenando a lista em ordem crescente antes de converter
  numeros.sort();

  // Passando por cada numero ja ordenado para transformar e exibir as bases
  for (var num in numeros) {
    
    // Convertendo para String usando as bases numericas radix correspondentes
    final binario = num.toRadixString(2);
    final octal = num.toRadixString(8);
    final hexadecimal = num.toRadixString(16);

    print('decimal: $num, binário: $binario, octal: $octal, hexadecimal: $hexadecimal');
  }
}

// obs: como ja havia um exercicio parecido foi tranquilo fazer