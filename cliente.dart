class Cliente {
  String? nome;
  double? saldoEmConta = 0.0;

Cliente({String? this.nome});

/* /double get saldoEmConta{
  return _saldoEmConta;
}

set saldoEmConta(double valorDepositado){
 _saldoEmConta += valorDepositado;
}*/
double? printarSaldo(){
  return saldoEmConta;
}

}