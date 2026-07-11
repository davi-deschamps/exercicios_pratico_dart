import 'dart:math';

void main() {
  // Instanciando o gerenciador da lista de compras
  final listaDeMercado = ListaDeCompras();

  print('Lista de Compra');
  // Simular a criacao de uma lista 
  listaDeMercado.incluirItem('item1', 1);
  listaDeMercado.incluirItem('item2', 2);
  listaDeMercado.incluirItem('item3', 6);
  listaDeMercado.incluirItem('item4', 3);

  // Exibir no console os itens desejados com suas quantidades
  listaDeMercado.exibirItensDesejados();
  listaDeMercado.exibirProgresso();

  print('\nAções no Mercado');
  // Demonstrar o funcionamento marcando 2 itens como comprados e 1 sem estoque
  listaDeMercado.marcarComoComprado('item1');
  listaDeMercado.marcarComoComprado('item3');
  listaDeMercado.marcarComoSemEstoque('item4');

  print('\nRelatorio');
  // Separar os itens ja comprados dos outros itens
  listaDeMercado.exibirPorStatus(StatusItem.comprado, 'Itens Comprados');

  // Separando os itens que nao havia estoque dos outros itens
  listaDeMercado.exibirPorStatus(StatusItem.semEstoque, 'Itens Sem Estoque');
  
  // Exibição dos itens restantes pendentes
  listaDeMercado.exibirPorStatus(StatusItem.pendente, 'Itens Restantes/Pendentes');

  listaDeMercado.exibirProgresso();

  print('\nSorteando itens Pendentes');
  // Escolhendo um item pendente aleatoriamente
  listaDeMercado.escolherItemPendenteAleatorio();
}

// Enum para controlar os estados de cada item
enum StatusItem { pendente, comprado, semEstoque }

// Modelo para representar um item da lista
class ItemCompra {
  final String nome;
  final int quantidade;
  StatusItem status;

  ItemCompra(this.nome, this.quantidade) : status = StatusItem.pendente;
}

// Classe principal para gerenciar o fluxo da lista de compras
class ListaDeCompras {
  // Lista tipada para armazenar os itens
  final List<ItemCompra> _itens = [];

  // Incluir novos itens desejados
  void incluirItem(String nome, int quantidade) {
    _itens.add(ItemCompra(nome, quantidade));
    print('Adicionado: $quantidade x $nome');
  }

  // Exibir no console os itens desejados, com as suas quantidades
  void exibirItensDesejados() {
    print('\nLista de Itens Desejados:');
    for (var item in _itens) {
      print('  ${item.nome} Qtd: ${item.quantidade}');
    }
  }

  // Altera o status do item para comprado
  void marcarComoComprado(String nome) {
    final item = _encontrarItem(nome);
    if (item != null) {
      item.status = StatusItem.comprado;
      print('Item comprado: $nome');
    }
  }

  // Altera o status do item para sem estoque
  void marcarComoSemEstoque(String nome) {
    final item = _encontrarItem(nome);
    if (item != null) {
      item.status = StatusItem.semEstoque;
      print('Item sem estoque: $nome');
    }
  }

  // Mostrar um indicador de progresso
  void exibirProgresso() {
    final totalDesejado = _itens.length;
    final totalComprados = _itens.where((i) => i.status == StatusItem.comprado).length;
    print('Progresso: $totalComprados/$totalDesejado');
  }

  // Separar os itens com base no status passado
  void exibirPorStatus(StatusItem statusAlvo, String tituloRelatorio) {
    final filtrados = _itens.where((i) => i.status == statusAlvo).toList();
    print('\n $tituloRelatorio ');
    if (filtrados.isEmpty) {
      print('Nenhum item nesta categoria.');
    } else {
      for (var item in filtrados) {
        print('  ${item.nome} Qtd: ${item.quantidade}');
      }
    }
  }

  // Escolher um item pendente aleatoriamente
  void escolherItemPendenteAleatorio() {
    final pendentes = _itens.where((i) => i.status == StatusItem.pendente).toList();
    if (pendentes.isEmpty) {
      print('Não há itens pendentes para sortear');
      return;
    }
    final random = Random();
    final itemSorteado = pendentes[random.nextInt(pendentes.length)];
    print('Sugestão para compra: "${itemSorteado.nome}"');
  }

  // Encontra um item na lista de compras
  ItemCompra? _encontrarItem(String nome) {
    for (var item in _itens) {
      if (item.nome.toLowerCase() == nome.toLowerCase()) return item;
    }
    return null;
  }
}