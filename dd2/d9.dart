void main() {
  final controleDePessoas = ControleDePessoas();

  // Cadastrando pessoas 
  controleDePessoas
    ..cadastrarPessoa(Pessoa('Jose', Mes.abril))
    ..cadastrarPessoa(Pessoa('Arthur', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Joao', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jesse', Mes.dezembro))
    ..cadastrarPessoa(Pessoa('Roberta', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Carla', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Thania', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Rafaela', Mes.marco))
    ..cadastrarPessoa(Pessoa('Yuri', Mes.junho))
    ..cadastrarPessoa(Pessoa('Jonas', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Elias', Mes.outubro))
    ..cadastrarPessoa(Pessoa('Abel', Mes.maio))
    ..cadastrarPessoa(Pessoa('Danilo', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jonathan', Mes.abril))
    ..cadastrarPessoa(Pessoa('Joseph', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Abdul', Mes.janeiro))
    ..cadastrarPessoa(Pessoa('Jean', Mes.abril));

  // Passar por todos os meses com pessoas e imprimir os nomes das pessoas
  for (final mes in controleDePessoas.mesesComPessoas) {
    print('\n${mes.name}');

    for (final pessoa in controleDePessoas.pessoasPorMes(mes)) {
      print(' ${pessoa.nome}');
    }
  }
}

enum Mes {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}

class Pessoa {
  Pessoa(this.nome, this.mesDeNascimento);

  final String nome;
  final Mes mesDeNascimento;
}

class ControleDePessoas {
  // utilizando Map para agrupar as pessoas por mes 
  final Map<Mes, List<Pessoa>> _pessoasAgrupadasPorMes = {};

  // Cadastra uma pessoa vinculando diretamente ao seu mes chave no Map
  void cadastrarPessoa(Pessoa pessoa) {
    _pessoasAgrupadasPorMes.putIfAbsent(pessoa.mesDeNascimento, () => []).add(pessoa);
  }

  // Retorna a lista ordenada dos meses que possuem pessoas cadastradas
  List<Mes> get mesesComPessoas {
    final meses = _pessoasAgrupadasPorMes.keys.toList();
    return meses..sort((a, b) => a.index.compareTo(b.index));
  }

  // Retorna diretamente as pessoas do mes sem precisar iterar por toda a colecao
  List<Pessoa> pessoasPorMes(Mes mes) {
    return _pessoasAgrupadasPorMes[mes] ?? [];
  }
}