import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';

getFontTitleToolbar(BuildContext context){
  double toolbarHeight = getToolbarHeight(context);
  return toolbarHeight * 0.35;
}

getFontListTile(BuildContext context){
  double toolbarHeight = getToolbarHeight(context);
  return toolbarHeight * 0.3;
}
double fontSizeButton(double tamanhoBotao){
  return tamanhoBotao * 0.32;
}

double getFontSizeTabs(BuildContext context){
  double toolbarHeight = getToolbarHeight(context);
  return toolbarHeight * 0.35;
}