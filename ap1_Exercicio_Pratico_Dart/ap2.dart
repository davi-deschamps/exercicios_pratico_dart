void main() {
  // valores de entrada usamos const 
   const double valor1 = 9.0;
  const double valor2 = 10.0;
  const double valor3 = 9.0;
  const double valor4 = 7.7;
  const double valor5 = 10.0;

  // calculo da média usamos final 
  final double media = (valor1 + valor2 + valor3 + valor4 + valor5) / 5;

  // impressão usando .toStringAsFixed(1) para garantir que sempre exiba uma casa decimal 
  print(
    "A media entre [ ${valor1.toStringAsFixed(1)} , ${valor2.toStringAsFixed(1)} , ${valor3.toStringAsFixed(1)} , ${valor4.toStringAsFixed(1)} , ${valor5.toStringAsFixed(1)} ] = ${media.toStringAsFixed(1)}"
  );
}