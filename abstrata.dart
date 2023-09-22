class alimento {
  String nome;
  double peso;
  String sabor;

  alimento(this.nome, this.peso, this.sabor);
}

class fruta extends alimento implements descascar{
  fruta(String nome, double peso, String sabor):super(nome,peso,sabor);
  bool ismadura = false;
  void frutaMadura(ismadura)
  {
    if(ismadura==true)
    {
      print("a fruta $nome está madura");
    }else {
      print("a fruta $nome não está madura");
    }
  }
  @override
  void separarTalheres(){
    print("separando talheres");
  }
  @override
  void pegarVasilha(){
    print("pegando vasilha para colocar a fruta $nome");
  }
  @override
  void comerFruta(){
    print("pronto a fruta $nome está pronta para comer");
  }
}

class legumes extends alimento implements descascar{
  bool? precisacozinhar;
  legumes(String nome,double peso, String sabor):super(nome,peso,sabor);
  void cozinhar(precisacozinhar) {
    if(precisacozinhar==true) {
      print("o legume $nome precisa cozinhar");
    } else {
      print("o legume $nome não precisa cozinhar");
    }
  }
  @override
  void separarTalheres(){
    print("pegando a faca para descascar o legume $nome");
  }
  @override
  void pegarVasilha(){
    print("pegando vasilha para colocar o legume $nome");
  }
  @override
  void comerFruta(){
    print("o legume $nome está pronto para comer");
  }
}

abstract class descascar{
  void separarTalheres();
  void pegarVasilha();
  void comerFruta();
}

void main() {
  fruta laranja = fruta("laranja",100,"doce");
  laranja.frutaMadura(true);
  laranja.separarTalheres();
  laranja.pegarVasilha();
  laranja.comerFruta();
  legumes beterraba = legumes("beterraba", 200, "doce");
  beterraba.cozinhar(true);
  beterraba.separarTalheres();
}