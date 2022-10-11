import 'package:flutter/cupertino.dart';

class Posicao{
  final double casa;
  final double corda;
  final String? text;
  Posicao({required this.casa, required this.corda, this.text});

  Map<String, dynamic> toMap(){
    return {
      'casa' : this.casa,
      'corda' : this.corda,
      'text' : this.text
    };
  }
}