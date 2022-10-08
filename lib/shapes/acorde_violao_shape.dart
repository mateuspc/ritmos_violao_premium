import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/models/acorde.dart';

class DesenharAcordeViolao extends CustomPainter{

  final Acorde acorde;
  final Color backgroundShapeColor;

  DesenharAcordeViolao({required this.acorde, this.backgroundShapeColor = Colors.transparent});

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
        ..style = PaintingStyle.fill
        ..color = backgroundShapeColor;

    final background = Rect.fromLTRB(0, 0, size.width, size.height);
    canvas.drawRect(background, paint);

    paint.strokeWidth = size.height * 0.01;
    paint.style = PaintingStyle.stroke;
    paint.color = Colors.black;

    // Desenhar o nome do acorde
    final nomeAcorde = TextPainter();
    nomeAcorde.text = TextSpan(
      text: this.acorde.nome,
      style: TextStyle(
        fontSize: size.height * 0.10,
        color: Colors.black,
        fontWeight: FontWeight.w700
      )
    );
    nomeAcorde.textDirection = TextDirection.ltr;
    nomeAcorde.layout(minWidth: 0, maxWidth: size.width);
    nomeAcorde.paint(canvas, Offset(
      (size.width / 2) - nomeAcorde.width / 2,
      size.height * 0.026
    ));

    final bordasAcorde = Rect.fromLTRB(size.width * 0.15, size.height * 0.15, size.width * 0.85, size.height * 0.90);
    canvas.drawRect(bordasAcorde, paint);

    // Desenhar numero da casa se tiver
    if(acorde.textNumeroCasa != null){
      var qualCasa = 1;
      var tamanhoAcorde = size.height - (size.height * 0.15 + size.height * 0.1);
      var tamanhoCasa = tamanhoAcorde / 10;
      var distanciaDy = ((tamanhoCasa * qualCasa) + (size.height * 0.15)) / size.height;

      final numeroCasa = TextPainter();
      numeroCasa.text = TextSpan(
          text: acorde.textNumeroCasa,
          style: TextStyle(
              fontSize: size.height * 0.07,
              fontWeight: FontWeight.w700,
              color: Colors.black
          )
      );
      numeroCasa.textDirection = TextDirection.ltr;
      numeroCasa.layout(minWidth: 0, maxWidth: size.width);
      numeroCasa.paint(canvas, Offset(size.width * 0.9, (size.height * distanciaDy) - numeroCasa.height / 2));

    }
    // Desenhar linhas horizontais
    int cont = 1;
    while(cont < 5){
      var qualCasa = cont;
      var tamanhoAcorde = size.height - (size.height * 0.15 + size.height * 0.1);
      var tamanhoCasa = tamanhoAcorde / 5;
      var distanciaDy = ((tamanhoCasa * qualCasa) + (size.height * 0.15)) / size.height;

      paint.strokeWidth = size.height * 0.010;
     // paint.color = Colors.black;
      paint.style = PaintingStyle.stroke;
      canvas.drawLine(Offset(size.width * 0.15, size.height * distanciaDy), Offset(size.width * 0.85, size.height * distanciaDy), paint);
      cont++;
    }

   for(int i = 1; i < 5; i++){
     // Desenhar linhas verticais
     var qualCorda = i;
     var larguraAcorde = size.width - (size.width * 0.15 + size.width * 0.15);
     var distanciaEntreAsCordas = larguraAcorde / 5;
     var distanciaDx = ((distanciaEntreAsCordas * qualCorda) + (size.width * 0.15)) / size.width;

     paint.strokeWidth = size.height * 0.010;
     paint.style = PaintingStyle.stroke;
     canvas.drawLine(Offset(size.width * distanciaDx, size.height * 0.15), Offset(size.width * distanciaDx, size.height * 0.9), paint);
   }

   // Desenhar linha mais grossa pestana fixa
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = size.height * 0.016;
    canvas.drawLine(Offset(size.width * 0.15, size.height * 0.15), Offset(size.width * 0.85, size.height * 0.15), paint);

    // Desenhar bolinha posicao dedo
    this.acorde.posicoes.forEach((posicao) {
      var qualCorda = posicao.corda;
      var larguraAcorde = size.width - (size.width * 0.15 + size.width * 0.15);
      var distanciaEntreAsCordas = larguraAcorde / 5;
      var distanciaDx = ((distanciaEntreAsCordas * qualCorda) + (size.width * 0.15)) / size.width;


      var qualCasa = posicao.casa;
      var tamanhoAcorde = size.height - (size.height * 0.15 + size.height * 0.1);
      var tamanhoCasa = tamanhoAcorde / 10;
      var distanciaDy = ((tamanhoCasa * qualCasa) + (size.height * 0.15)) / size.height;

      paint.style = PaintingStyle.fill;

      canvas.drawCircle(Offset(size.width * distanciaDx, size.height * distanciaDy), size.height * 0.040, paint);

      // Desenhar texto no centro da bolinha
      final textPosicao = TextPainter();
      textPosicao.text = TextSpan(
          text: posicao.text,
          style: TextStyle(
              fontSize: size.height * 0.06,
              color: Colors.white,
              fontWeight: FontWeight.w800
          )
      );
      textPosicao.textDirection = TextDirection.ltr;
      textPosicao.layout(minWidth: 0, maxWidth: size.width);
      textPosicao.paint(canvas, Offset(
          (size.width * distanciaDx) - (textPosicao.width / 2),
          (size.height * distanciaDy) - (textPosicao.height / 2)
      ));

    });

    // Desenhar pestana
    if(acorde.pestana != null){
      var qualCasa = acorde.pestana!.casa;
      var tamanhoAcorde = size.height - (size.height * 0.15 + size.height * 0.1);
      var tamanhoCasa = tamanhoAcorde / 10;
      var distanciaDy = ((tamanhoCasa * qualCasa) + (size.height * 0.15)) / size.height;

      paint.strokeWidth = size.height * 0.02;
      canvas.drawLine(Offset(size.width * acorde.pestana!.tamanho, size.height * distanciaDy), Offset(
        size.width * 0.87, size.height * distanciaDy
      ), paint);
    }


    paint.style = PaintingStyle.fill;
    paint.strokeWidth = size.height * 0.008;
    if(acorde.labelsSimbolsViolao != null){
      for(int i = 0; i <= 5; i++){
        double distanciadX = _calculoDx(size, i);
        switch(this.acorde.labelsSimbolsViolao![i]){
          case 'X':
            _desenharUmX(size, canvas, distanciadX);
            break;
          case '0':
            paint.style = PaintingStyle.fill;
            canvas.drawCircle(Offset(
                size.width * distanciadX,
                size.height * 0.95
            ), size.height * 0.025, paint);
            break;
          case 'O':
            paint.style = PaintingStyle.stroke;
            canvas.drawCircle(Offset(
                size.width * distanciadX,
                size.height * 0.95
            ), size.height * 0.02, paint);
        }
      }

    }
  }

  void _desenharUmX(Size size, Canvas canvas, double dx) {
       final desenharX = TextPainter();
    desenharX.text = TextSpan(
      text: 'X',
      style: TextStyle(
        fontSize: size.height * 0.06,
        color: Colors.black,
        fontWeight: FontWeight.w900
      )
    );
    desenharX.textDirection = TextDirection.ltr;
    desenharX.layout(minWidth: 0, maxWidth: size.width);
    desenharX.paint(canvas, Offset(
      (size.width * dx) - desenharX.width / 2,
      (size.height * 0.95) - desenharX.height / 2
    ));
  }

  double _calculoDx(Size size, int casa){
    var larguraDoAcorde = size.width - (size.width * 0.15 * 2);
    var distanciaEntreAsCordas = larguraDoAcorde / 5;
    var distanciaDx = ((distanciaEntreAsCordas * casa) + (size.width * 0.15)) / size.width;
    return distanciaDx;
  }

  @override
  bool shouldRepaint(DesenharAcordeViolao oldDelegate) {
    return true;
  }


}