

import 'package:flutter/material.dart';

class CustomClipRectRemovePadding extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(size.width * 0.2, size.height * 0.2, size.width * 0.77, size.height * 0.7);

  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }

}