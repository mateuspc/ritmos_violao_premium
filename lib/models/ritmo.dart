import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ritmos_de_violao_premium/models/acorde.dart';
import 'package:ritmos_de_violao_premium/models/arrow.dart';
import 'package:ritmos_de_violao_premium/models/categoria.dart';
import 'package:ritmos_de_violao_premium/models/division.dart';
import 'package:ritmos_de_violao_premium/models/musica.dart';

class Ritmo{
  String? titulo;
  String apelido;
  Color colorRitmo;
  List<Arrow> arrows;
  List<Division> divisionsRitmo;
  List<Musica> musicas;
  List<Categoria> categorias;
  String? acordesUtilizadosGravacao;
  List<int> timesShowAcordeInVideoInSeconds;
  List<Acorde> acordesToShowSobreVideoOrderTime;
  String videoId;
  String? pathAudio;
  int? prioridade;
  bool isLocked;
  String videoViolaoId;
  String feitoPor;
  bool isDedilhado;
  String sequenciaDedilhado;

  Ritmo({
    this.titulo,
    this.pathAudio,
    required this.colorRitmo,
    required this.apelido,
    required this.arrows,
    required this.divisionsRitmo,
    required this.musicas,
    this.isDedilhado = false,
    this.sequenciaDedilhado = '',
    required this.categorias,
    this.acordesUtilizadosGravacao,
    required this.timesShowAcordeInVideoInSeconds,
    required this.acordesToShowSobreVideoOrderTime,
    required this.videoId,
    this.videoViolaoId = '',
    this.prioridade,
    required this.feitoPor,
    this.isLocked = false});

}