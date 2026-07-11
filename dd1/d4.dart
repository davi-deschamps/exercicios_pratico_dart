void main() {
  // Definindo a data base 
  final dataAtual = DateTime(2022, 9, 5);
  
  var dataCalculada = dataAtual;
  int diasUteisRestantes = 18;

  // loop usando while continua ate adicionarmos todos os 18 dias uteis
  while (diasUteisRestantes > 0) {
    // Avanca um dia no calendario
    dataCalculada = dataCalculada.add(Duration(days: 1));
    
    // Se o dia nao for sabado e nem domingo, decrementa o contador
    if (dataCalculada.weekday != DateTime.saturday && 
        dataCalculada.weekday != DateTime.sunday) {
      diasUteisRestantes--;
    }
  }

  // Função interna para formatar a data no padrao dd/mm/yyyy
  String formatarData(DateTime data) {
    final dia = data.day.toString().padLeft(2, '0');
    final mes = data.month.toString().padLeft(2, '0');
    final ano = data.year;
    return '$dia/$mes/$ano';
  }

  // Exibindo os resultados formatados no console
  print('Data atual: ${formatarData(dataAtual)}');
  print('Data calculada: ${formatarData(dataCalculada)}');
}