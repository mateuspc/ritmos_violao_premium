import 'dart:io';
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/models/acorde.dart';
import 'package:ritmos_de_violao_premium/shapes/acorde_violao_shape.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fontsize.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:ritmos_de_violao_premium/widgets/leading_app_bar.dart';
import 'package:ritmos_de_violao_premium/widgets/title_app_bar.dart';

class PageDetailsAcorde extends StatefulWidget {
  bool typeBanner;
  List<Acorde>? acordes;

  PageDetailsAcorde({this.typeBanner = false, this.acordes});

  @override
  _PageDetailsAcordeState createState() => _PageDetailsAcordeState();
}

class _PageDetailsAcordeState extends State<PageDetailsAcorde> {
  late Acorde _acorde;

  Widget getShape(Acorde acorde){
        return Hero(
          tag: 'acorde',
          child: CustomPaint(
            painter: DesenharAcordeViolao(
                backgroundShapeColor: Colors.transparent,
                acorde: acorde),
            child: Container(),
          ),
        );

  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _acorde = ModalRoute.of(context)!.settings.arguments as Acorde;

    double height = MediaQuery.of(context).size.height;

  }

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomToolbarNotSliver(
          context: context,
          colorLeadingIcon: Colors.orange,
          backgroundColor: Colors.white,
          onTapLeading: (){
            Navigator.pop(context);
          }, title: _acorde.nome, onActionClicked: () {  }),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: size.width * 0.9,
                  width: size.width * 0.7,
                  child: AspectRatio(
                    aspectRatio: 0.8,
                    child: getShape(_acorde),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }



}
