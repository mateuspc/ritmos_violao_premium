import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawArrow extends CustomPainter{
  final Color color;
  final bool down;
  final bool mascada;
   Color mascadaColor;
   Color backgroundColor;
   Color borderColor;
   double borderStrokeWidthFraction;
  late double height;
  late double width;

  DrawArrow({this.color = Colors.blueGrey, this.borderColor = Colors.black,
    this.backgroundColor = Colors.transparent, this.borderStrokeWidthFraction = 0.025, this.mascadaColor = Colors.green,
    required this.down, this.mascada = false});

  @override
  void paint(Canvas canvas, Size size) {

    if(size.height < size.width){
      this.height = size.width;
      this.width = size.height;
    }else{
      this.height = size.height;
      this.width = size.width;
    }

    var paint = Paint()
       ..strokeCap = StrokeCap.round
       ..color = backgroundColor;

    var background = Rect.fromLTWH(0, 0, width, height);
    canvas.drawRect(background, paint);

    down ? drawArrowDown(canvas) : drawArrowUp( canvas);
  }

  void drawArrowUp(Canvas canvas) {
    var paint = Paint()
      ..color = this.borderColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = this.height * borderStrokeWidthFraction;

    var bordaArrow = Path();
    bordaArrow.moveTo(this.width / 2, this.height * 0.02);
    bordaArrow.lineTo(this.width * 0.05, this.height * 0.3);
    bordaArrow.lineTo(this.width * 0.33,  this.height * 0.3);
    bordaArrow.lineTo(this.width * 0.33, this.height * 0.8);
    bordaArrow.lineTo(this.width * 0.66, this.height * 0.8);
    bordaArrow.lineTo(this.width * 0.66,  this.height * 0.3);
    bordaArrow.lineTo(this.width * 0.95,  this.height * 0.3);
    bordaArrow.lineTo(this.width / 2, this.height * 0.02);
    bordaArrow.close();
    canvas.drawPath(bordaArrow, paint);

    paint.color = this.color;
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(this.width / 2, this.height * 0.02);
    path.lineTo(this.width * 0.05, this.height * 0.3);
    path.lineTo(this.width * 0.33,  this.height * 0.3);
    path.lineTo(this.width * 0.33, this.height * 0.8);
    path.lineTo(this.width * 0.66, this.height * 0.8);
    path.lineTo(this.width * 0.66,  this.height * 0.3);
    path.lineTo(this.width * 0.95,  this.height * 0.3);
    path.lineTo(this.width / 2, this.height * 0.02);
    path.close();
    canvas.drawPath(path, paint);

    if(mascada){
      paint..color = mascadaColor
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeWidth = this.height * 0.04;

      var p8 = Offset(this.width / 2, this.height * 0.50);
      var p9 = Offset(this.width * 0.58, this.height * 0.44);
      var p10 = Offset(this.width * 0.40, this.height * 0.44);
      var p11 = Offset(this.width / 2, this.height * 0.58);
      var p12 = Offset(this.width * 0.38, this.height * 0.54);
      var p13 = Offset(this.width * 0.60, this.height * 0.53);
      canvas.drawLine(p9, p8, paint);
      canvas.drawLine(p10, p8, paint);
      canvas.drawLine(p11, p8, paint);
      canvas.drawLine(p12, p8, paint);
      canvas.drawLine(p13, p8, paint);
    }
  }

  void drawArrowDown(Canvas canvas) {
    var paint = Paint()
      ..color = borderColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = this.height * borderStrokeWidthFraction;

    var arrowBorda = Path();
    arrowBorda.moveTo(this.width * 0.33, this.height * 0.02);
    arrowBorda.lineTo(this.width * 0.33, this.height * 0.5);
    arrowBorda.lineTo(this.width * 0.05, this.height * 0.5);
    arrowBorda.lineTo(this.width / 2, this.height * 0.8);
    arrowBorda.lineTo(this.width * 0.95, this.height * 0.5);
    arrowBorda.lineTo(this.width * 0.66, this.height * 0.5);
    arrowBorda.lineTo(this.width * 0.66, this.height * 0.02);
    arrowBorda.close();
    canvas.drawPath(arrowBorda, paint);

    paint.style = PaintingStyle.fill;
    paint.color = this.color;

    var path = Path();
    path.moveTo(this.width * 0.33, this.height * 0.02);
    path.lineTo(this.width * 0.33, this.height * 0.5);
    path.lineTo(this.width * 0.05, this.height * 0.5);
    path.lineTo(this.width / 2, this.height * 0.8);
    path.lineTo(this.width * 0.95, this.height * 0.5);
    path.lineTo(this.width * 0.66, this.height * 0.5);
    path.lineTo(this.width * 0.66, this.height * 0.02);
    path.close();
    canvas.drawPath(path, paint);

    if(this.mascada){
      // Asterisco
      paint..color = mascadaColor;
      paint..strokeCap = StrokeCap.round;
      paint..strokeWidth = this.height * 0.04;
      var p8 = Offset(this.width / 2, this.height * 0.25);
      var p9 = Offset(this.width / 2, this.height * 0.18);
      var p10 = Offset(this.width * 0.62,  this.height * 0.23);
      var p11 = Offset(this.width * 0.60, this.height * 0.32);
      var p12 = Offset(this.width * 0.42, this.height * 0.33);
      var p13 = Offset(this.width * 0.37, this.height * 0.25);

      canvas.drawLine(p9, p8, paint);
      canvas.drawLine(p10, p8, paint);
      canvas.drawLine(p11, p8, paint);
      canvas.drawLine(p12, p8, paint);
      canvas.drawLine(p13, p8, paint);
    }
  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}