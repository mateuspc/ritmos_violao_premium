import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categoria{
  String nome;
  Color backgroundColor;
  Color borderColor;
  Color textColor;

  Categoria({required this.nome,
    required this.backgroundColor,
    this.borderColor = Colors.black,
    this.textColor = Colors.white});

}