class alimento{
  String sabor;
  String nome;
  String cor;
  double peso;

  alimento(this.sabor, this.nome, this.cor, this.peso);
}

class fruta extends alimento{
  int diasdesdecolheita;

  fruta(String sabor, String nome, String cor, double peso, this.diasdesdecolheita):super(sabor,nome,cor,peso);

  void estaMadura(int qtde_dias) {
    if(qtde_dias>=diasdesdecolheita) {
      print("a fruta $nome está madura");
    } else {
      print("a fruta $nome não está madura");
    }
  }
}

class legumes{
  String sabor;
  String nome;
  String cor;
  double peso;
  bool? precisacozinhar;

  legumes(this.sabor, this.nome, this.cor, this.peso,{this.precisacozinhar});

  void precisaCozinhar(bool cozinhar) {
    if(cozinhar==true) {
      print("o $nome precisa cozinhar");
    } else {
      print("o $nome não precisa cozinhar");
    }
  }
  
}

void main() {
  fruta pera = fruta("doce","pera","verde",100,20);
  pera.estaMadura(10);

  legumes beterraba = legumes("amargo","beterraba","roxo",50,precisacozinhar:true);
  beterraba.precisaCozinhar(false);

  fruta uva = fruta("doce","uva","roxa",100,20);
  uva.estaMadura(20);
}