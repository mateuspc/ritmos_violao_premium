import 'package:ritmos_de_violao_premium/models/conteudo.dart';
import 'package:ritmos_de_violao_premium/models/modulo.dart';

class CursoData {

  static List<Modulo> getModulosCurso(){

    List<Modulo> modulos = [];

   var m1 = Modulo(
      uuid: "001",
      nome: "Aprendendo a dedilhar",
      descricao: "Esse modulo vai ensinar você a como dedilhar",
      quantidadeConteudos: 3,
      conteudos: [
        Conteudo(
          uuid: "NM8dIo5AT0g",
          titulo: "TUTORIAL: DEDILHADOS NO VIOLÃO PARA INICIANTE",
        ),
        Conteudo(
            uuid: "Nyr3rN1pkqI",
            titulo: "PASSO A PASSO - APRENDA SUA 1ª MÚSICA DEDILHADA FÁCIL",
        ),
        Conteudo(
            uuid: "J-wiJvZRhw4",
            titulo: "APRENDA A TÉCNICA DE MÃO DIREITA E PARE DE DEPENDER DA PALHETA",
        ),
      ]
    );
   modulos.add(m1);

   var m2 = Modulo(
     uuid: "002",
     nome: "Mini curso de acordes",
     descricao: "Apreda sobre acordes com a professora Thayna Brito",
     quantidadeConteudos: 0,
     conteudos: [
       Conteudo(
           uuid: "Q9jHrikY4ps",
           titulo: "AULA 01 - MONTE ACORDES MAIORES NO BRAÇO TODO - TUTORIAL COMPLETO",

       ),
       Conteudo(
           uuid: "8wP7uu9kzSE",
           titulo: "AULA 02 - DOMINE OS ACORDES MENORES DE UMA VEZ POR TODAS!",
       ),
       Conteudo(
           uuid: "YxcpPCdiwDM",
           titulo: "AULA 03 - ACORDES MAIORES COM SÉTIMA EM TODAS AS REGIÕES",
       ),
       Conteudo(
           uuid: "kmKIljUZ5lo",
           titulo: "AULA 04 - APRENDA A MONTAR ACORDES MENORES COM SÉTIMA",
       ),
       Conteudo(
           uuid: "Dqtg70Luk1Y",
           titulo: "AULA 05 - ACORDES DIMINUTOS E MEIO DIMINUTOS ( DIFERENÇA ENTRE ELES E COMO TOCAR NO BRAÇO TODO)",
       ),
       Conteudo(
           uuid: "u0OIUKlaFYQ",
           titulo: "COMO TROCAR DE ACORDES MAIS RÁPIDO",
       ),
     ]
   );
    modulos.add(m2);

   var m3 = Modulo(
     uuid: "3zPPF6Zo4eM",
     nome: "Dicas de técnica e estudo",
     conteudos: [
       Conteudo(
           uuid: "3zPPF6Zo4eM",
           titulo: "COMO CRIAR UMA ROTINA DE ESTUDO NO VIOLÃO",
       ),
       Conteudo(
           uuid: "P5t5yJrGwLI",
           titulo: "SAIBA O MELHOR VIOLÃO PARA COMEÇAR",
       ),
       Conteudo(
           uuid: "agrjSXJRMnw",
           titulo: "COMO LER TABLATURA - TUTORIAL COMPLETO EXPLICANDO OS SÍMBOLOS",

       ),
       Conteudo(
           uuid: "6-49l3GGros",
           titulo: "MELHORE A ABERTURA DOS SEUS DEDOS COM ESSAS DICAS!",
       ),
       Conteudo(
           uuid: "MEZDJ85d8zA",
           titulo: "5 MINUTOS DE DICAS PARA VOCÊ MELHORAR SEU SOM E LIBERAR TODAS AS NOTAS",
       ),
       Conteudo(
           uuid: "jvrMZCqd9Ew",
           titulo: "COMO FAZER PESTANA SEM DOR",
       ),
     ]
   );
   modulos.add(m3);
    return modulos;
  }
}