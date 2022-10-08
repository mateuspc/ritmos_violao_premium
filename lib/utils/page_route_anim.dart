
import 'package:flutter/material.dart';

class PageRouteAnim extends PageRouteBuilder {

  final Widget widget;
  final int durationSeconds;
  final Curve curve;
  final Alignment alignment;
  final bool scaleTransition;
  final bool fadeTransition;
  final Offset begin;
  final Offset end;
  final Object arguments;

  PageRouteAnim({required this.widget, this.durationSeconds = 1,
    this.curve = Curves.elasticOut,
    this.alignment = Alignment.center,
    this.scaleTransition = false,
    required this.arguments,
    this.fadeTransition = false,
    this.begin = const Offset(0, 1),
    this.end = const Offset(0, 0)}) : super(
      transitionDuration: Duration(seconds: durationSeconds),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        if(scaleTransition){
          animation = CurvedAnimation(parent: animation, curve: curve);
          return ScaleTransition(
              alignment: alignment,
              scale: animation,
              child: child);
        }if(fadeTransition) {
          return FadeTransition(
              opacity: animation,
              child: child);
        } else { // detault
          var curveTween = CurveTween(curve: curve);
          var tween = Tween(begin: begin, end: end).chain(curveTween);
          var offsetAnim = animation.drive(tween);
          return SlideTransition(position: offsetAnim,
             child: child);
        }
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return widget;
      },
    settings: RouteSettings(
       arguments: arguments
    )
  );
}