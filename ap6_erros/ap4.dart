void main() {
  
  // O bloco try TENTAR 
  // Colocamos aqui os código podem quebrar ou falhar 
  try {
    
    // Definindo um nome arbitrário para o arquivo
    final nomeArquivo = 'documento.txt';

    // Se der tudo certo ele continua e tenta abrir o arquivo
    final arquivoTexto = ArquivoTexto(nomeArquivo);
    arquivoTexto.abrir();
    
  } catch (e) {
    // o bloco catch 
    // se o código do try der erro o catch faz o tratamento
    print('Entrada invalida. Digite um nome valido.');
    
    // O comando rethrow relança a mesma exceção para frente
    // Isso fará o erro estourar no console final, mas o finally ainda será lido
    rethrow;
    
  } finally {
    // o bloco finally
    // Diferente do try/catch, este bloco sempre é executado no final com erro ou não
    print('Fim do programa');
  }
}

// Interface que define o contrato Arquivo
abstract class Arquivo {
  void abrir();
}

// Classe ArquivoTexto que assina o contrato Arquivo
class ArquivoTexto implements Arquivo {
  
  // Atributo privado
  final String _nome;

  // Construtor
  ArquivoTexto(this._nome);

  // Implementação do método abrir
  @override
  void abrir() {
    
    // O bloco try TENTAR interno
    try {
      // Simula um erro ao tentar abrir o arquivo
      throw Exception('Erro ao abrir o arquivo $_nome');
      
    } catch (e) {
      // o bloco catch interno
      // Captura o erro simulado acima e exibe no console
      print(e);
      
      // Relança o erro para o try/catch do programa principal no main
      rethrow;
    }
  }
}