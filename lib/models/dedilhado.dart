
import 'package:ritmos_de_violao_premium/models/categoria.dart';
import 'package:ritmos_de_violao_premium/models/divisao.dart';
import 'package:ritmos_de_violao_premium/models/musica.dart';

class Dedilhado {
  final String? nome;
  final String padrao;
  final String videoId;
  final List<Divisao> divisoes;
  final List<Musica> musicas;
  final List<Categoria> categorias;
  final String feitoPor;
  bool isLocked;

  Dedilhado( {
    required this.nome,
    required this.padrao,
    required this.videoId,
    required this.divisoes,
    required this.feitoPor,
    required this.musicas,
    required this.categorias,
    this.isLocked = false});

}