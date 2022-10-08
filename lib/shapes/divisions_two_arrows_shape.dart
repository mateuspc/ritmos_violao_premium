
import 'package:flutter/material.dart';

class DivisionsTwoArrowsShape extends CustomPainter {
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

  DivisionsTwoArrowsShape(
      {this.textPasso = '1',
        this.arrowOneDown = true,
        this.arrowTwoDown = true,
        this.arrowOneMascada = false,
        this.arrowTwoMascada = false,
        this.lineBaseColor = Colors.grey,
        this.mascadaColor = Colors.black,
        this.arrowColor = Colors.white,
        this.textPassoColor = Colors.white,
        this.backgroundColor = Colors.transparent});

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4
      ..color = backgroundColor;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
    paint
      ..color = arrowColor
      ..style = PaintingStyle.fill;

    if (arrowOneDown) {
      //  Arrow 1 down
      var arrow1 = Path()
        ..moveTo((size.width / 2) * 0.33, 0)
        ..lineTo((size.width / 2) * 0.33, size.height * 0.40)
        ..lineTo(0, size.height * 0.40)
        ..lineTo((size.width / 2) * 0.5, size.height * 0.6)
        ..lineTo((size.width / 2), size.height * 0.40)
        ..lineTo((size.width / 2) * 0.66, size.height * 0.40)
        ..lineTo((size.width / 2) * 0.66, 0)
        ..close();
      canvas.drawPath(arrow1, paint);
      if (arrowOneMascada) {
        // Desenhar asterisco arrow down
        paint.strokeWidth = size.height * 0.02;
        paint.strokeCap = StrokeCap.round;
        paint.style = PaintingStyle.stroke;
        paint.color = mascadaColor;
        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.2),
            Offset((size.width / 2) * 0.5, size.height * 0.15), paint);

        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.2),
            Offset((size.width / 2) * 0.40, size.height * 0.18), paint);

        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.2),
            Offset((size.width / 2) * 0.43, size.height * 0.23), paint);

        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.2),
            Offset((size.width / 2) * 0.57, size.height * 0.23), paint);

        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.2),
            Offset((size.width / 2) * 0.59, size.height * 0.17), paint);
      }
    } else {
      // Arrow 1 up
      var arrow1 = Path()
        ..moveTo((size.width / 2) * 0.5, 0)
        ..lineTo(0, size.height * 0.20)
        ..lineTo((size.width / 2) * 0.33, size.height * 0.20)
        ..lineTo((size.width / 2) * 0.33, size.height * 0.60)
        ..lineTo((size.width / 2) * 0.66, size.height * 0.60)
        ..lineTo((size.width / 2) * 0.66, size.height * 0.20)
        ..lineTo((size.width / 2), size.height * 0.2)
        ..close();
      canvas.drawPath(arrow1, paint);

      if (arrowOneMascada) {
        // Desenhar asterisco arrow up
        paint.strokeWidth = size.height * 0.02;
        paint.strokeCap = StrokeCap.round;
        paint.style = PaintingStyle.stroke;
        paint.color = mascadaColor;
        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.4),
            Offset((size.width / 2) * 0.5, size.height * 0.35), paint);

        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.4),
            Offset((size.width / 2) * 0.40, size.height * 0.38), paint);

        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.4),
            Offset((size.width / 2) * 0.43, size.height * 0.43), paint);

        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.4),
            Offset((size.width / 2) * 0.57, size.height * 0.43), paint);

        canvas.drawLine(Offset((size.width / 2) * 0.5, size.height * 0.4),
            Offset((size.width / 2) * 0.59, size.height * 0.37), paint);
      }
    }

    paint.style = PaintingStyle.fill;
    paint.color = Colors.white;

    if (arrowTwoDown) {
      // Arrow two down
      var arrow2 = Path()
        ..moveTo((size.width / 2) * 1.33, 0) // A
        ..lineTo((size.width / 2) * 1.33, size.height * 0.40) // B
        ..lineTo(size.width, size.height * 0.40) // C
        ..lineTo((size.width / 2) * 1.5, size.height * 0.6)
        ..lineTo((size.width / 2), size.height * 0.40)
        ..lineTo((size.width / 2) * 1.66, size.height * 0.40)
        ..lineTo((size.width / 2) * 1.66, 0)
        ..close();
      canvas.drawPath(arrow2, paint);

      if (arrowTwoMascada) {
        // Desenhar asterisco arrow down
        paint.strokeWidth = size.height * 0.02;
        paint.strokeCap = StrokeCap.round;
        paint.style = PaintingStyle.stroke;
        paint.color = mascadaColor;
        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.2),
            Offset((size.width / 2) * 1.5, size.height * 0.15), paint);

        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.2),
            Offset((size.width / 2) * 1.40, size.height * 0.18), paint);

        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.2),
            Offset((size.width / 2) * 1.43, size.height * 0.23), paint);

        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.2),
            Offset((size.width / 2) * 1.57, size.height * 0.23), paint);

        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.2),
            Offset((size.width / 2) * 1.59, size.height * 0.17), paint);
      }
    } else {
      // Arrow two up
      var arrow2 = Path()
        ..moveTo(size.width * 0.75, 0)
        ..lineTo(size.width / 2, size.height * 0.20)
        ..lineTo((size.width / 2) * 1.33, size.height * 0.20)
        ..lineTo((size.width / 2) * 1.33, size.height * 0.60)
        ..lineTo((size.width / 2) * 1.66, size.height * 0.60)
        ..lineTo((size.width / 2) * 1.66, size.height * 0.20)
        ..lineTo(size.width, size.height * 0.2)
        ..close();
      canvas.drawPath(arrow2, paint);

      if (arrowTwoMascada) {
        // Desenhar asterisco arrow up
        paint.strokeWidth = size.height * 0.02;
        paint.strokeCap = StrokeCap.round;
        paint.style = PaintingStyle.stroke;
        paint.color = mascadaColor;
        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.4),
            Offset((size.width / 2) * 1.5, size.height * 0.35), paint);

        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.4),
            Offset((size.width / 2) * 1.40, size.height * 0.38), paint);

        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.4),
            Offset((size.width / 2) * 1.43, size.height * 0.43), paint);

        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.4),
            Offset((size.width / 2) * 1.57, size.height * 0.43), paint);

        canvas.drawLine(Offset((size.width / 2) * 1.5, size.height * 0.4),
            Offset((size.width / 2) * 1.59, size.height * 0.37), paint);
      }
    }

    // Linha base
    paint.strokeWidth = size.height * 0.1;
    paint.color = lineBaseColor;
    canvas.drawLine(Offset(0, size.height * 0.66),
        Offset(size.width, size.height * 0.66), paint);

    // Texto passo
    final textPainter = TextPainter(
        textDirection: TextDirection.ltr,
        text: TextSpan(
            text: this.textPasso,
            style: TextStyle(
                fontSize: size.height * 0.3,
                color: textPassoColor,
                fontWeight: FontWeight.bold)));
    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter.paint(canvas,
        Offset((size.width - textPainter.width) / 2, size.height * 0.66));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
