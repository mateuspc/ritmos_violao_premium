
import 'package:flutter/material.dart';

class Division{
  String textPasso;
  bool arrowOneDown;
  bool arrowTwoDown;
  bool arrowOneMascada;
   bool arrowTwoMascada;
  Color lineBaseColor;
  Color mascadaColor;
  Color textPassoColor;
  Color arrowColor;
  Color backgroundColor;
  int quantidadeArrows;

  Division.downAndDown(
      {this.textPasso = '1',
      this.arrowOneDown = true,
      this.arrowOneMascada = false,
      this.arrowTwoDown = true,
      this.arrowTwoMascada = false,
      this.arrowColor = Colors.green,
      this.backgroundColor = Colors.transparent,
      this.lineBaseColor = const Color(0xFF757575),
      this.textPassoColor = Colors.black,
      this.mascadaColor = Colors.green,
      this.quantidadeArrows = 2});

  Division.downAndUp(
      {this.textPasso = '1',
        this.arrowOneDown = true,
        this.arrowOneMascada = false,
        this.arrowTwoDown = false,
        this.arrowTwoMascada = false,
        this.arrowColor = Colors.green,
        this.backgroundColor = Colors.transparent,
        this.lineBaseColor = const Color(0xFF757575),
        this.textPassoColor = Colors.black,
        this.mascadaColor = Colors.green,
        this.quantidadeArrows = 2});
  Division.upAndUp(
      {this.textPasso = '1',
        this.arrowOneDown = false,
        this.arrowOneMascada = false,
        this.arrowTwoDown = false,
        this.arrowTwoMascada = false,
        this.arrowColor = Colors.green,
        this.backgroundColor = Colors.transparent,
        this.lineBaseColor = const Color(0xFF757575),
        this.textPassoColor = Colors.black,
        this.mascadaColor = Colors.green,
        this.quantidadeArrows = 2});

  Division.upAndDown(
      {this.textPasso = '1',
        this.arrowOneDown = false,
        this.arrowOneMascada = false,
        this.arrowTwoDown = true,
        this.arrowTwoMascada = false,
        this.arrowColor = Colors.green,
        this.backgroundColor = Colors.transparent,
        this.lineBaseColor = const Color(0xFF757575),
        this.textPassoColor = Colors.black,
        this.mascadaColor = Colors.green,
        this.quantidadeArrows = 2});
  Division.up(
      {this.textPasso = '1',
        this.arrowOneDown = false,
        this.arrowOneMascada = false,
        this.arrowTwoDown = true,
        this.arrowTwoMascada = false,
        this.arrowColor = Colors.green,
        this.backgroundColor = Colors.transparent,
        this.lineBaseColor = const Color(0xFF757575),
        this.textPassoColor = Colors.black,
        this.mascadaColor = Colors.green,
        this.quantidadeArrows = 1});

  Division.down(
      {this.textPasso = '1',
        this.arrowOneDown = true,
        this.arrowOneMascada = false,
        this.arrowTwoMascada = false,
        this.arrowTwoDown = true,
        this.arrowColor = Colors.green,
        this.backgroundColor = Colors.transparent,
        this.lineBaseColor = const Color(0xFF757575),
        this.textPassoColor = Colors.black,
        this.mascadaColor = Colors.green,
        this.quantidadeArrows = 1});
  Division(
      {required this.textPasso,
      required this.arrowOneDown,
      required this.arrowTwoDown,
      required this.arrowOneMascada,
      required this.arrowTwoMascada,
      required this.lineBaseColor,
      required this.mascadaColor,
      required this.textPassoColor,
      required this.arrowColor,
      required this.backgroundColor,
      required this.quantidadeArrows});

}