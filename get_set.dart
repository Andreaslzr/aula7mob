class conta{
  double _saque=0;
  double _saldo=500;

  double get saque{
    return this._saque;
  }

  double get saldo{
    return (this._saldo-this.saque);
  }

  set saque(double valor){
    if(valor >0 && valor <500){
      this._saque = valor;
    }
  }
}

void main(){
  conta contaRocky = conta();
  contaRocky.saque = 100;
  print("valor do saque R\$ ${contaRocky.saque}");
  print("valor do saldo R\$ ${contaRocky.saldo}");
}