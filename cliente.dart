class Cliente {
  String? nome;
  double _saldoEmConta = 0.0;

Cliente(this.nome);

double get saldoEmConta{
  return _saldoEmConta;
}

set saldoEmConta(double valorDepositado){
 _saldoEmConta += valorDepositado;
}


}