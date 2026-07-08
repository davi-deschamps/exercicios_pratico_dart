void main() {
  // mapa de estados
  // é final porque a variável estados não receberá um mapa com valores novo depois
  final estados = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'],
  };

  // lista de siglas dos estados usando .keys
  // e .join(' ; ') costura essas siglas em um único texto contínuo.
  print('Estados: ${estados.keys.join(' ; ')}');

  // lista das cidades de Santa Catarina colocando o ! no final para dizer que não é nulo
  final santaCatarina = estados['SC']!;

  // odenando as cidades em ordem alfabética
  // O método .sort() modifica a lista original, colocando os itens de A a Z.
  santaCatarina.sort();

  // cidades de Santa Catarina já ordenadas
  print('Cidades de SC: ${santaCatarina.join(' ; ')}');

  // organizar os dados para imprimir
  final List<String> cidadesComSigla = [];

  // Passando por todos os estados cadastrados
  // O laço for-in vai pegar uma sigla de cada vez para analisar
  for (var siglaEstado in estados.keys) {
    // Coletando a lista de cidades pertencentes ao estado da vez
    final cidadesDoEstado = estados[siglaEstado]!;

    // passando por todas as cidades desse estado
    for (var cidade in cidadesDoEstado) {
      // Interpolação de Strings: montamos a frase desejada e guardamos na lista final
      cidadesComSigla.add('$cidade - $siglaEstado');
    }
  }

  // Ordenar em ordem alfabética utilizando o .sort novamnete para organizar
  cidadesComSigla.sort();

  // imprimindo
  for (var item in cidadesComSigla) {
    print(item);
  }
}
