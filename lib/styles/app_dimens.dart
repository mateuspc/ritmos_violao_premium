
import 'package:flutter/cupertino.dart';

isTableOrIpad(BuildContext context){
  Size size = MediaQuery.of(context).size;
  bool isIpadOrTablet = size.height > 1000 || size.width > 700;
  return isIpadOrTablet;
}

isWidthSmaller450(Size size) => size.width < 450;

getToolbarHeight(BuildContext context){
  Size size = MediaQuery.of(context).size;

  double toolbarHeight = size.width * 0.16;
  if(isTableOrIpad(context)){
    toolbarHeight = size.width * 0.10;
  }
  if(isWidthSmaller450(size)){
    toolbarHeight = size.width * 0.145;
  }
  return toolbarHeight;
}

getReferenceHeight(BuildContext context){
  Size size = MediaQuery.of(context).size;

  double toolbarHeight = size.width * 0.16;
  if(isTableOrIpad(context)){
    toolbarHeight = size.width * 0.10;
  }
  if(isWidthSmaller450(size)){
    toolbarHeight = size.width * 0.145;
  }
  return toolbarHeight;
}
getHeightButton(BuildContext context){
  double toolbarHeight = getToolbarHeight(context);
  return toolbarHeight * 0.8;
}
getListTileHeight(BuildContext context){
  double toolbarHeight = getToolbarHeight(context);
  return toolbarHeight;
}

getListTileRitmoHeight(BuildContext context){
  double toolbarHeight = getToolbarHeight(context) * 3;
  return toolbarHeight;
}