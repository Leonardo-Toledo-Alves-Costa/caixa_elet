import 'cliente.dart';

class Deposito{
  double? valorDepositado;
  Cliente? cliente;

  Deposito({this.valorDepositado, required this.cliente});
   
  double? depositar() {
      cliente?.saldoEmConta = (cliente!.saldoEmConta! + valorDepositado!)!;
    return cliente!.saldoEmConta;
  }
}