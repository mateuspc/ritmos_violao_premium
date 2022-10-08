
import 'package:flutter/material.dart';

class Arrow{
  bool down;
  bool mascada;
  Color color;
  Color mascadaColor;
  Color borderColor;
  double borderStrokeWidthFraction;
  Color backgroundColor;

  Arrow.down(
      {this.down = true,
      this.mascada = false,
      this.color = Colors.white,
      this.mascadaColor = Colors.green,
      this.borderColor = Colors.grey,
      this.borderStrokeWidthFraction = 0.04,
      this.backgroundColor = Colors.transparent});

  Arrow.up(
      {this.down = false,
        this.mascada = false,
        this.color = Colors.white,
        this.mascadaColor = Colors.green,
        this.borderColor = Colors.grey,
        this.borderStrokeWidthFraction = 0.04,
        this.backgroundColor = Colors.transparent});

  Arrow({this.down = true,
    this.mascada = false,
    this.color = Colors.white,
    this.mascadaColor = Colors.green,
    this.borderColor = Colors.grey,
    this.borderStrokeWidthFraction = 0.025,
    this.backgroundColor = Colors.blue});

}