import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/shapes/custom_paint_clip_rect.dart';
import 'package:ritmos_de_violao_premium/shapes/custom_painter.dart';

class CustomItemMao extends StatelessWidget {

  final bool polegarColor;
  final bool indicadorColor;
  final bool medioColor;
  final bool anelarColor;

  const CustomItemMao({
    required this.polegarColor,
    required this.indicadorColor,
    required this.medioColor,
    required this.anelarColor,
    Key? key}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      child: ClipRect(
        clipBehavior: Clip.hardEdge,
        clipper: CustomClipRectRemovePadding(),
        child: CustomPaint(
          size: Size(size.width * 0.85, size.height * 0.6),
          painter: DedilhadoCustomPainter(
              polegarColor: polegarColor ? Colors.red : Color(0xFF99702e),
              indicadorColor: indicadorColor ? Colors.red : Color(0xFF99702e),
              medioColor: medioColor ? Colors.red : Color(0xFF99702e),
              anelarColor: anelarColor ? Colors.red : Color(0xFF99702e)
          ),
        ),
      ),
    );
  }
}