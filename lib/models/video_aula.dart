
import 'package:ritmos_de_violao_premium/models/arrow.dart';
import 'package:ritmos_de_violao_premium/models/categoria.dart';

class VideoAula {
  String titulo;
  String subtitulo;
  String videoId;
  String thumbnail;
  List<Categoria> categorias;
  bool isLocked;
  List<String> destaques;
  List<Arrow> arrows;
  bool emBreve;

  VideoAula({
    required this.titulo,
    required this.subtitulo,
    required this.videoId,
    required this.thumbnail,
    required this.arrows,
    this.isLocked = false,
    this.emBreve = false,
    required this.destaques,
    required this.categorias});

}