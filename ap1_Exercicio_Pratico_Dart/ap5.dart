void main() {
  // criando o objeto (Instanciando a classe)
  final pessoa = Pessoa(
    nome: "Davi",
    sobrenome: "Deschamps",
    idade: 21,
    ativo: true,
    peso: 81.5,
    nacionalidade: null, 
  );

  // impressão no console
  print(pessoa);
}

// definição da Classe
class Pessoa {
  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String? nacionalidade; // O ponto de interrogação indica que é opcional

  // construtor da Classe
  // O construtor serve para obrigar quem for criar uma Pessoa a passar esses dados.
  const Pessoa({
    required this.nome,
    required this.sobrenome,
    required this.idade,
    required this.ativo,
    required this.peso,
    this.nacionalidade, // Não tem 'required' porque é opcional (pode ser null)
  });

  // customização do método toString()
  @override
  String toString() {
    // Aplicando as lógicas de formatação usando as variáveis da própria classe
    final String statusIdade = idade >= 18 ? "maior de idade" : "menor de idade";
    final String statusAtivo = ativo ? "Ativo" : "Inativo";
    final String textoNacionalidade = nacionalidade ?? "Nao informada";

    return """
Nome completo: $nome $sobrenome
Idade: $idade ($statusIdade)
Situação: $statusAtivo
Peso: ${peso.toStringAsFixed(2)}
Nacionalidade: $textoNacionalidade""";
  }
} 