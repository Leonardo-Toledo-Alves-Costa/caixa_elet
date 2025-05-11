import 'cliente.dart';

class Saque{
double? valorDeSaque;
Cliente? cliente;

Saque(this.valorDeSaque, this.cliente);

double? sacarDinheiro(){
if(cliente!.saldoEmConta - valorDeSaque! > 0){
 cliente!.saldoEmConta -= valorDeSaque!;
}else{
  cliente!.saldoEmConta = 0;
}

  return cliente!.saldoEmConta;
}

}