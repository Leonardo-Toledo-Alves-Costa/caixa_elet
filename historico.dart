import 'cliente.dart';
import 'saque.dart';
import 'deposito.dart';

class Historico {
  Cliente? cliente;
  Saque? saque;
  Deposito? deposito;

  List<String> eventos = [];

  // Método para registrar um depósito
  void registrarDeposito(double valor) {
    double valorAnterior = cliente?.saldoEmConta ?? 0.0;
    cliente?.saldoEmConta = valorAnterior + valor; // Atualiza o saldo do cliente

    // Cria uma instância de Deposito usando o cliente atual
    deposito = Deposito(
      valor: valor,
      cliente: cliente ?? Cliente(nome: "Desconhecido", saldoEmConta: 0.0),
    );

    // Adiciona o evento ao histórico
    String evento = 'Depósito realizado: Cliente ${cliente?.nome ?? "Desconhecido"}, '
        'Valor anterior: $valorAnterior, Valor depositado: $valor, '
        'Saldo atualizado: ${cliente?.saldoEmConta}';
    eventos.add(evento);
  }

  // Método para registrar um saque
  void registrarSaque(double valor) {
    double valorAnterior = cliente?.saldoEmConta ?? 0.0;

    // Verifica se há saldo suficiente para o saque
    if (valorAnterior >= valor) {
      cliente?.saldoEmConta = valorAnterior - valor; // Atualiza o saldo do cliente

      // Cria uma instância de Saque usando o cliente atual
      saque = Saque(
        valor: valor,
        cliente: cliente ?? Cliente(nome: "Desconhecido", saldoEmConta: 0.0),
      );

      // Adiciona o evento ao histórico
      String evento = 'Saque realizado: Cliente ${cliente?.nome ?? "Desconhecido"}, '
          'Valor anterior: $valorAnterior, Valor sacado: $valor, '
          'Saldo atualizado: ${cliente?.saldoEmConta}';
      eventos.add(evento);
    } else {
      // Adiciona um evento de falha ao histórico
      eventos.add('Tentativa de saque falhou: Saldo insuficiente.');
    }
  }

  // Método para exibir o histórico de eventos
  void exibirHistorico() {
    if (eventos.isEmpty) {
      print('Nenhum evento registrado no histórico.');
    } else {
      print('Histórico de eventos:');
      for (var evento in eventos) {
        print(evento);
      }
    }
  }
}