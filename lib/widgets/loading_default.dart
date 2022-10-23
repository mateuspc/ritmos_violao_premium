
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';


void showLoading(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  showModalBottomSheet(context: context,
    isDismissible: false,
    isScrollControlled: true,
    enableDrag: false,
    builder: (BuildContext context) {
      return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoActivityIndicator(
                radius: getReferenceHeight(context) * 0.6,
                color: Colors.blue,
              ),
              SizedBox(height: getReferenceHeight(context) * 0.4,),
              Text("Carregando...", style: TextStyle(
                  fontSize: getReferenceHeight(context) * 0.4,
                  color: Colors.blue
              ),)
            ],
          ),
        ),
      );
    },
  );
}