import 'cliente.dart';

class Deposito{
  double? valorDepositado;
  Cliente? cliente;

  Deposito({this.valorDepositado, required this.cliente});
   
  double? depositar() {
    var novoSaldo = cliente!.saldoEmConta + valorDepositado!;
    return novoSaldo;
  }
}