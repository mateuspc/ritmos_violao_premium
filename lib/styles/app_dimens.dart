
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// UI Colors
const kColorBar = Colors.black;
const kColorText = Colors.white;
const kColorAccent = Color.fromRGBO(10, 115, 217, 1.0);
const kColorError = Colors.red;
const kColorSuccess = Colors.green;
const kColorNavIcon = Color.fromRGBO(131, 136, 139, 1.0);
const kColorBackground = Color.fromRGBO(30, 28, 33, 1.0);

// Weather Colors
const kWeatherReallyCold = Color.fromRGBO(3, 75, 132, 1);
const kWeatherCold = Color.fromRGBO(0, 39, 96, 1);
const kWeatherCloudy = Color.fromRGBO(51, 0, 58, 1);
const kWeatherSunny = Color.fromRGBO(212, 70, 62, 1);
const kWeatherHot = Color.fromRGBO(181, 0, 58, 1);
const kWeatherReallyHot = Color.fromRGBO(204, 0, 58, 1);

// Text Styles
const kFontSizeSuperSmall = 10.0;
const kFontSizeNormal = 16.0;
const kFontSizeMedium = 18.0;
const kFontSizeLarge = 96.0;

const kDescriptionTextStyle = TextStyle(
  color: kColorText,
  fontWeight: FontWeight.normal,
  fontSize: kFontSizeNormal,
);

const kTitleTextStyle = TextStyle(
  color: kColorText,
  fontWeight: FontWeight.bold,
  fontSize: kFontSizeMedium,
);

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