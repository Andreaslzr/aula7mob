class animal{
  String nome;
  String cor;
  String altura;
  double peso;
 
  animal(this.nome,this.cor,this.altura,this.peso);

  void animalComeu(bool st_al) {
    if(st_al==true) {
      print("o $nome comeu");
    } else {
      print("o $nome não comeu");    
      }
  }
  void animalDormiu(bool st_d) {
    if(st_d==true) {
      print("o $nome dormiu");
    } else {
      print("o $nome não dormiu");
    }
  }
}

class cachorro extends animal{
  cachorro(String nome, String cor, String altura, double peso):super(nome,cor,altura,peso);
}

class gato extends animal{
  gato(String nome, String cor, String altura, double peso):super(nome,cor,altura,peso);
}

class tigre extends animal{
  bool? estamanso;

  tigre(String nome, String cor, String altura, double peso, this.estamanso):super(nome,cor,altura,peso);
  void estaManso(bool manso) {
    if(manso==true) {
      print("o tigre $nome está manso hoje");
    } else {
      print("o tigre $nome não está manso hoje");
    }
  }
} 