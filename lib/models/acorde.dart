import 'package:flutter/foundation.dart';
import 'package:ritmos_de_violao_premium/models/pestana.dart';
import 'package:ritmos_de_violao_premium/models/posicao.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';


class Acorde {
  final String nome;
  final List<Posicao> posicoes;
  final Pestana? pestana;
  final String? textNumeroCasa;
  final List<String>? labels; // para ukulele 4 labels
  final List<String>? labelsSimbolsViolao; // para violao 6 simbolos
  final String? familia;
  final bool isCanhoto;
  final String? videoId;
  bool isLocked;
  final TypeAcorde type;

  Acorde(
      {required this.posicoes,
        required this.nome,
        this.pestana,
        this.textNumeroCasa,
        this.familia,
        this.labels,
        this.labelsSimbolsViolao,
        this.videoId,
        this.type = TypeAcorde.VIOLA,
        this.isLocked = false,
        this.isCanhoto = false});
}



