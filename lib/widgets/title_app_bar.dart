import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(
        fontFamily: FontsApp.mulishBold,
        fontSize: getReferenceHeight(context) * 0.3,
        color: Colors.blue
    ),);
  }
}
