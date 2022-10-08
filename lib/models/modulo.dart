import 'package:ritmos_de_violao_premium/models/conteudo.dart';

class Modulo {
  String? uuid;
  String? nome;
  String? descricao;
  int? quantidadeConteudos;
  List<Conteudo>? conteudos;

  Modulo(
      {this.uuid,
        this.nome,
        this.descricao,
        this.quantidadeConteudos,
        this.conteudos});

  List<Conteudo> sortNextContentList(Conteudo currentVideoContent, List<Conteudo> list){
    List<Conteudo> listAux = list;
    int index = list.indexOf(currentVideoContent);
    listAux.add(list[index]);
    listAux.removeAt(index);
    return listAux;
  }

  Modulo.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    nome = json['nome'];
    descricao = json['descricao'];
    quantidadeConteudos = json["quantidade_conteudos"];
    conteudos = (json["conteudos"] as List<dynamic>).map((e) =>
        Conteudo.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data["conteudos"] = conteudos!.map((e) => e.toJson()).toList();
    return data;
  }

}
