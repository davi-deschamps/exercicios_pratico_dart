void main() {
  // 1. Declaração de variáveis
  String nome = "Davi";
  String sobrenome = "Deschamps";
  int idade = 21;
  bool ativo = true;
  double peso = 81.5;

  // O ponto de interrogação (?) indica que a variável é Opcional (pode ser null) por isso ja é inicializada como null
  String? nacionalidade = null;

  // Impressão no console
  print("Nome completo: $nome $sobrenome");

  // Impressão no console verificando se é maior ou menor
  String statusIdade;
  if (idade >= 18) {
    statusIdade = "maior de idade";
    print("Idade: $idade ($statusIdade) ");
  } else {
    statusIdade = "menor de idade";
    print("Idade: $idade ($statusIdade) ");
  }

  // Impressão no console verificando se é ativo ou inativo
  String statusAtivo;
  if (ativo == true) {
  
    statusAtivo = "Ativo";
    print("Situação: $statusAtivo ");
  } else {
    statusAtivo = "Inativo";
    print("Situação: $statusAtivo ");
  }

  // Impressão no console do Peso
  print("Peso: $peso");

  // Impressão no console da Nacionalidade que informa se tem a nacionalidade ou não pois é opcional
  String textoNacionalidade;
  if (nacionalidade != null) {
    textoNacionalidade = nacionalidade;
    print("Nacionalidade: $textoNacionalidade ");
  } else {
    textoNacionalidade = "Nao informada";
    print("Nacionalidade: $textoNacionalidade ");
  }
}
