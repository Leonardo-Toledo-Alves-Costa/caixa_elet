import 'cliente.dart';

class Deposito{
  double? valorDepositado;
  Cliente cliente;

  Deposito(double valor, this.cliente) {
    valorDepositado = valor;
  }

  double? depositar(){
    return cliente.saldoEmConta + valorDepositado!;
  }
}