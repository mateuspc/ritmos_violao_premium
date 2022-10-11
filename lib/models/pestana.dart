import 'package:flutter/cupertino.dart';

class Pestana {
  double casa;
  double tamanho;


  Pestana({required this.casa, required this.tamanho});

  Pestana.primeiraCasaViola({ this.casa = 1, this.tamanho = 0.13});
  Pestana.segundaCasaViola({ this.casa = 3, this.tamanho = 0.13});


  Map<String, dynamic> toMap(){
    return {
      'casa' : this.casa,
      'tamanho' : this.tamanho
    };
  }
}