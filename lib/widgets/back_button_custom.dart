import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {

  final String text;
  final double height;

  const MyBackButton(
      {this.text = 'Voltar',
        required this.height});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(CupertinoIcons.back, color: Colors.blue, size: height < 1000 ? height * 0.04: height * 0.03),
          Text(text, style: TextStyle(
              fontSize: height < 1000 ? height * 0.023 :height * 0.017,
              color: Colors.blue
          ),)
        ],
      ),
    );
  }
}
