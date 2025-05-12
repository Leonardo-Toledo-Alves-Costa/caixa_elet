import 'cliente.dart';
import 'deposito.dart';
import 'historico.dart';
import 'saque.dart';
import 'dart:io';

main() {
  Deposito deposito;
  Saque saque;
  Cliente cliente = Cliente(nome: "Asimov",);
  Historico historico = Historico();

  var escolha;
  while (escolha != 4) {
    print("Bem vindo ao AsiBanco!");
    print("Escolha uma das opções abaixo!");
    print("1 - Depositar");
    print("2 - Sacar");
    print("3 - Ver o histórico");
    print("4 - Sair do aplicativo");
    escolha = int.tryParse(stdin.readLineSync() ?? '');
    if (escolha == 1) {
      print("Diga o valor que deseja depositar");
      String? valorInput = stdin.readLineSync();
      double? valor = double.tryParse(valorInput ?? '');
      if (valor != null) {
        deposito = Deposito(valorDepositado: valor, cliente: cliente);
        print("O valor em conta atual é: ${deposito.depositar()}");
        historico.registrarDeposito(valor);
      } else {
        print("Valor inválido. Tente novamente.");
      }
    }else if(escolha == 2){
      print("Diga o valor que você deseja sacar");
      String? valorInput = stdin.readLineSync();
      double? valor = double.tryParse(valorInput ?? '');
       if (valor != null) {
        saque = Saque(valorDeSaque: valor, cliente: cliente);
        print("O valor em conta atual é: ${saque.sacarDinheiro()}");
        historico.registrarSaque(valor);
      } else {
        print("Valor inválido. Tente novamente.");
      }
    }
    else if(escolha == 3){
      print("Aqui está o histórico de transações da sua conta!");
      historico.exibirHistorico();
    }
  else if (escolha == 4){
    print("Fim da aplicação!");
    }else{
      print("Digite um valor válido!");
    }
  }
}