class Cliente {
  String? nome;
  double _saldoEmConta = 0.0;

Cliente({required String nome, required double saldoEmConta});

double get saldoEmConta{
  return _saldoEmConta;
}

set saldoEmConta(double valorDepositado){
 _saldoEmConta += valorDepositado;
}


}