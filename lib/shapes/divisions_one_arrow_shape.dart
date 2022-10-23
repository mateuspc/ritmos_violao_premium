import 'package:flutter/material.dart';

class DivisiosOneArrow extends CustomPainter {
  String textPasso;
  bool arrowOneDown;
  bool arrowOneMascada;
  Color lineBaseColor;
  Color mascadaColor;
  Color textPassoColor;
  Color arrowColor;
  Color backgroundColor;

  DivisiosOneArrow(
      {this.textPasso = '1',
        this.arrowOneDown = true,
        this.arrowOneMascada = false,
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

    // Arrow down
    if (arrowOneDown) {
      var arrowDown = Path()
        ..moveTo(size.width * 0.33, 0)
        ..lineTo(size.width * 0.33, size.height * 0.40)
        ..lineTo(0, size.height * 0.40)
        ..lineTo(size.width * 0.5, size.height * 0.6)
        ..lineTo(size.width, size.height * 0.40)
        ..lineTo(size.width * 0.66, size.height * 0.40)
        ..lineTo(size.width * 0.66, 0)
        ..close();
      canvas.drawPath(arrowDown, paint);
      if (arrowOneMascada) {
        // Desenhar asterisco arrow down
        paint.strokeWidth = size.height * 0.02;
        paint.strokeCap = StrokeCap.round;
        paint.style = PaintingStyle.stroke;
        paint.color = Colors.green;
        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.2),
            Offset(size.width * 0.5, size.height * 0.15), paint);

        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.2),
            Offset(size.width * 0.40, size.height * 0.18), paint);

        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.2),
            Offset(size.width * 0.43, size.height * 0.23), paint);

        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.2),
            Offset(size.width * 0.57, size.height * 0.23), paint);

        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.2),
            Offset(size.width * 0.59, size.height * 0.17), paint);
      }
    } else {
      // Arrow up
      paint
        ..color = Colors.white
        ..style = PaintingStyle.fill;
      var path = Path()
        ..moveTo(size.width * 0.5, 0)
        ..lineTo(0, size.height * 0.2)
        ..lineTo(size.width * 0.33, size.height * 0.2)
        ..lineTo(size.width * 0.33, size.height * 0.6)
        ..lineTo(size.width * 0.66, size.height * 0.6)
        ..lineTo(size.width * 0.66, size.height * 0.2)
        ..lineTo(size.width, size.height * 0.2)
        ..close();
      canvas.drawPath(path, paint);
      if (arrowOneMascada) {
        // Desenhar asterisco arrow up
        paint.strokeWidth = size.height * 0.02;
        paint.strokeCap = StrokeCap.round;
        paint.style = PaintingStyle.stroke;
        paint.color = Colors.green;
        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.4),
            Offset(size.width * 0.5, size.height * 0.35), paint);

        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.4),
            Offset(size.width * 0.40, size.height * 0.38), paint);

        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.4),
            Offset(size.width * 0.43, size.height * 0.43), paint);

        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.4),
            Offset(size.width * 0.57, size.height * 0.43), paint);

        canvas.drawLine(Offset(size.width * 0.5, size.height * 0.4),
            Offset(size.width * 0.59, size.height * 0.37), paint);
      }
    }

    // Line base
    paint.strokeWidth = size.height * 0.1;
    paint.color = lineBaseColor;
    paint.strokeCap = StrokeCap.round;
    canvas.drawLine(Offset(size.width * 0.12, size.height * 0.66),
        Offset(size.width * 0.88, size.height * 0.66), paint);

    // Text step
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
