import 'cliente.dart';
import 'saque.dart';
import 'deposito.dart';

class Historico {
  Cliente? cliente = new Cliente(nome:"Asimov");
  Saque? saque;
  Deposito? deposito;

  List<String> eventos = [];

  void registrarDeposito(double valor) {
    double valorAnterior = cliente?.saldoEmConta ?? 0.0;

    deposito = Deposito(
      valorDepositado: valor,
      cliente: cliente ?? Cliente(nome: "Asimov"),
    );

    String evento = 'Depósito realizado: Cliente ${cliente?.nome ?? "Asimov"}, '
        'Valor anterior: $valorAnterior, Valor depositado: $valor, '
        'Saldo atualizado: ${cliente?.saldoEmConta}';
    eventos.add(evento);
  }

  void registrarSaque(double valor) {
    double valorAnterior = cliente?.saldoEmConta ?? 0.0;

    try {
      saque = Saque(
        valorDeSaque: valor,
        cliente: cliente ?? Cliente(nome: ''),
      );

      String evento = 'Saque realizado: Cliente ${cliente?.nome ?? 'Asimov'}, '
          'Valor anterior: $valorAnterior, Valor sacado: $valor, '
          'Saldo atualizado: ${cliente?.saldoEmConta}';
      eventos.add(evento);
    } catch (e) {
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