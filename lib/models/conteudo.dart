
class Conteudo {
  String? uuid;
  String? url;
  String? titulo;
  String? descricao;
  List<String>? tags;
  String? thumbnail;
  String? conteudoRelacionado;

  Conteudo(
      {this.uuid,
        this.url,
        this.titulo,
        this.thumbnail,
        this.descricao,
        this.tags,
        this.conteudoRelacionado});

  Conteudo.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    thumbnail = "https://img.youtube.com/vi/$uuid/hqdefault.jpg";
    url = "https://youtu.be/$uuid";
    titulo = json['titulo'];
    descricao = json['descricao'];
    conteudoRelacionado = json["conteudo_relacionado"];

  }

  Conteudo.fromJsonFull(Map<String, dynamic> json) {
    print("Json: $json");
    uuid = json['uuid'];
    thumbnail = "https://img.youtube.com/vi/$uuid/hqdefault.jpg";
    url = "https://youtu.be/$uuid";
    titulo = json['titulo'];
    descricao = json['descricao'];
    conteudoRelacionado = json["conteudo_relacionado"];


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['titulo'] = this.titulo;
    return data;
  }

  Map<String, dynamic> toJsonFull() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['titulo'] = this.titulo;
    data["descricao"] = this.descricao;
    return data;
  }
}
