import 'package:poo_dart/poo_dart.dart' as poo_dart;

void main(List<String> arguments) {
  Programador prog = Programador('Jonas', 18);
  prog.printProgramador();

  SistemaMobile sistMob = SistemaMobile(prog.nome, prog.idade);
  sistMob.escolherIDE('Android Studio');
  sistMob.escolherLinguagem('Kotlin');
  sistMob.escreverCodigo();

}

abstract class Programar{
  void escolherIDE(String ide);
  void escolherLinguagem(String linguagem);
}

class Programador{
  String nome;
  int idade;

  Programador(this.nome, this.idade);

  void printProgramador(){
    print('Nome do programador: $nome\nIdade: $idade');
  }
}

class Sistema extends Programador implements Programar{
  Sistema(String nome, int idade):
      super(nome, idade);

  @override
  void escolherIDE(String ide){
    print('IDE Escolhida: $ide');
  }

  @override
  void escolherLinguagem(String linguagem){
    print('IDE Escolhida: $linguagem');
  }

}

class SistemaWeb extends Sistema{
  SistemaWeb(String nome, int idade):
        super(nome, idade);

  @override
  void escolherIDE(String ide){
    super.escolherIDE(ide);
  }

  @override
  void escolherLinguagem(String linguagem){
    super.escolherLinguagem(linguagem);
  }
  
  void escreverCodigo(){
    print('--- Escrevendo código para aplicativo Web ---\n Autor: $nome');
  }
}

class SistemaMobile extends Sistema{
  SistemaMobile(String nome, int idade):
        super(nome, idade);

  @override
  void escolherIDE(String ide){
    super.escolherIDE(ide);
  }

  @override
  void escolherLinguagem(String linguagem){
    super.escolherLinguagem(linguagem);
  }

  void escreverCodigo(){
    print('--- Escrevendo código para aplicativo Mobile ---\n Autor: $nome');
  }
}