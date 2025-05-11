import 'cliente.dart';

class Deposito{
  double? valorDepositado;
  Cliente cliente;

  Deposito(this.valorDepositado, this.cliente);

  double? depositar(){
    return cliente.saldoEmConta + valorDepositado!;
  }
}