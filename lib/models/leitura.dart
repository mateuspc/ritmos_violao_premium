
class Leitura {
  String? titulo;
  String? subtitulo;
  String? link;

  Leitura({this.titulo, this.subtitulo, this.link});

  Leitura.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    subtitulo = json['subtitulo'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    data['subtitulo'] = this.subtitulo;
    data['link'] = this.link;
    return data;
  }
}