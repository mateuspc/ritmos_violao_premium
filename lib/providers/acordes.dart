import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/models/acorde.dart';

class Acordes extends ChangeNotifier{

  late Acorde _acorde;
  bool _visible = false;

  Acordes(){
    _acorde = Acorde(posicoes: [], nome: '', labels: [ ], videoId: '');
  }
  void newAcorde(Acorde acorde){
    this._acorde = acorde;
    _visible = true;
    notifyListeners();
  }

  void setVisibility(bool visivel){
    _visible = visivel;
    notifyListeners();
  }

  Acorde get acorde {
    return _acorde;
  }

  bool get visible => _visible;
}