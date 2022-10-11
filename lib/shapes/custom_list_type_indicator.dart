import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_enums.dart';


class ListTypeCustom extends CustomPainter{

  final Color startGradient;
  final Color endGradient;
  final TypeIndicatorList type;
  final String text;

  const ListTypeCustom({
    this.startGradient = ColorsApp.primary,
    this.endGradient = ColorsApp.primaryLight,
    this.type = TypeIndicatorList.CHAT,
    this.text = ""
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.shader = ui.Gradient
        .linear(Offset.zero, Offset(size.width, size.height), [
      startGradient,
      endGradient
    ]);

    var rrect = RRect.fromLTRBAndCorners(
        0, 0,
        size.width, size.height,
        topRight: Radius.circular(size.width * 0.5),
        topLeft: Radius.circular(size.width * 0.5),
        bottomLeft: Radius.circular(size.width * 0.5),
        bottomRight: Radius.circular(type == TypeIndicatorList.CHAT ? size.width * 0.1 : size.width * 0.5));

    Path path = Path();
    path.addRRect(rrect);
    canvas.drawPath(path, paint);

    final textStyle = TextStyle(
        color: Colors.white,
        fontSize: size.width * 0.5,
        fontFamily: FontsApp.mulishBold
    );
    final textSpan = TextSpan(
      text: text,
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final offset = Offset((size.width / 2) - textPainter.width / 2,
        (size.height / 2) - textPainter.height / 2);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}