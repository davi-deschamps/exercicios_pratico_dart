void main() {
  
  // Lista de temperaturas em Celsius 
  final temperaturasCelsius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  // Percorrendo a lista para calcular as conversoes e exibir os dados
  for (var celsius in temperaturasCelsius) {
    
    // Convertendo para Fahrenheit e Kelvin
    final fahrenheit = (celsius * 1.8) + 32;
    final kelvin = celsius + 273.15;

    // Formatando todos os valores para exibir exatamente 2 casas decimais
    final cFormatado = celsius.toStringAsFixed(2);
    final fFormatado = fahrenheit.toStringAsFixed(2);
    final kFormatado = kelvin.toStringAsFixed(2);

    print('Celcius: $cFormatado, fahrenheit: $fFormatado, kelvin: $kFormatado');
  }
}