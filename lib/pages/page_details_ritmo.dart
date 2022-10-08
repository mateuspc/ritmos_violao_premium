import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pod_player/pod_player.dart';
import 'package:ritmos_de_violao_premium/models/division.dart';
import 'package:ritmos_de_violao_premium/models/ritmo.dart';
import 'package:ritmos_de_violao_premium/shapes/custom_list_type_indicator.dart';
import 'package:ritmos_de_violao_premium/shapes/divisions_one_arrow_shape.dart';
import 'package:ritmos_de_violao_premium/shapes/divisions_two_arrows_shape.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/widgets/leading_app_bar.dart';
import 'package:ritmos_de_violao_premium/widgets/title_app_bar.dart';


class PageDetails extends StatefulWidget {

  PageDetails();

  @override
  _PageDetailsState createState() => _PageDetailsState();
}


class _PageDetailsState extends State<PageDetails> with WidgetsBindingObserver{

   bool isPlaying = false;
  late Ritmo _ritmo;
  int positionAnterior = -2;
  late PodPlayerController controller;
  bool firstAccess = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();


      _ritmo = ModalRoute.of(context)!.settings.arguments as Ritmo;

      controller = PodPlayerController(
        playVideoFrom: PlayVideoFrom.youtube(_ritmo.videoViolaoId.isEmpty ? _ritmo.videoId : _ritmo.videoViolaoId),
      )..initialise();

  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {

    print(state);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
   }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var appBarSize = (size.height > 900 ? size.height * 0.06
        : size.height * 0.07) + MediaQuery.of(context).viewPadding.top;
    return _layout(size, appBarSize);
  }

  _layout(Size size, double appBarSize) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
          appBar: AppBar(
            toolbarHeight: getToolbarHeight(context),
            leading: LeadingAppBar(onPressed: (){
             // showAd();
              controller.pause();
              Navigator.pop(context);
            }),
            title: TitleAppBar(title: _ritmo.apelido),
          ),
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: Card(
                    elevation: 0,
                    color: Colors.grey[300],
                    child: Container(
                      padding:  EdgeInsets.zero,
                      child: ListView(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: [
                              PodVideoPlayer(controller: controller),
                            ],
                          ),
                          SizedBox(height: size.height * 0.04),
                          Wrap(
                            children: [
                              if(!_ritmo.isDedilhado)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    _getDivisionsWithSpace(_ritmo.divisionsRitmo as List<Division>, size),
                                  ),
                                ],)
                          else Container(
                          height: getReferenceHeight(context),
                            child: Center(
                            child: FittedBox(
                             child: Text(_ritmo.sequenciaDedilhado, style: TextStyle(
                                fontSize: getReferenceHeight(context) * 0.5
                            ),),
                          ),
                        ),
                      ),
                              if(_ritmo.musicas.isNotEmpty)
                              CupertinoButton(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                                  child: Row(
                                    children: [
                                      FittedBox(
                                        child: Text('Dicas de músicas:',
                                          style: TextStyle(
                                              fontSize: getToolbarHeight(context) * 0.4,
                                              fontFamily: FontsApp.mulishBold,
                                              color: Colors.black
                                          ),),
                                      ),
                                    ],
                                  ), onPressed: (){}),
                            ],
                          ),
                          Container(
                            child: SingleChildScrollView(
                               physics: NeverScrollableScrollPhysics(),
                               child: Column(
                                  children: [
                                    ..._ritmo.musicas.map((e) => Container(
                                      child: Container(
                                        height: getToolbarHeight(context) * 1.1,
                                        child: LayoutBuilder(
                                          builder: (context, constraints){
                                            return Row(
                                              children: [
                                                CustomPaint(
                                                  size: Size(constraints.maxHeight * 0.5,
                                                      constraints.maxHeight * 0.5),
                                                  painter: ListTypeCustom(text: '♫'),
                                                ),
                                                SizedBox(width: constraints.maxHeight * 0.1),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: constraints.maxWidth * 0.9,
                                                      height: constraints.maxHeight * 0.6,
                                                      alignment: Alignment.centerLeft,
                                                      child: Text(e.nome, style: TextStyle(
                                                          fontSize: constraints.maxHeight * 0.3,
                                                          fontWeight: FontWeight.w600
                                                      ),
                                                        overflow: TextOverflow.ellipsis,),
                                                    ),
                                                    Container(
                                                        height: constraints.maxHeight * 0.3,
                                                        child: Text("(${e.autor})", style: TextStyle(
                                                          fontSize: constraints.maxHeight * 0.25
                                                        ),)
                                                    ),
                                                    Divider(height: constraints.maxHeight * 0.1)
                                                  ],
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ))
                                  ],
                                )

                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),

            ],
          )
        );
  }


  buildOneArrow(Division d2, Size size) {
    return CustomPaint(
      size: Size((size.height * 0.16865) * 0.2, (size.height * 0.4) * 0.2),
      painter: DivisiosOneArrow(
          textPasso: d2.textPasso,
          arrowOneMascada: d2.arrowOneMascada,
          arrowOneDown: d2.arrowOneDown,
          textPassoColor: d2.textPassoColor,
          backgroundColor: d2.backgroundColor,
          mascadaColor: d2.mascadaColor,
          lineBaseColor: d2.lineBaseColor),
    );
  }

  buildTwoArrow(Division d1, Size size) {
    return CustomPaint(
      size: Size((size.height * 0.33733) * 0.2, (size.height * 0.4) * 0.2),
      painter: DivisionsTwoArrowsShape(
          textPasso: d1.textPasso,
          textPassoColor: d1.textPassoColor,
          arrowOneDown: d1.arrowOneDown,
          arrowTwoDown: d1.arrowTwoDown,
          arrowOneMascada: d1.arrowOneMascada,
          arrowTwoMascada: d1.arrowTwoMascada,
          mascadaColor: d1.mascadaColor,
          backgroundColor: d1.backgroundColor,
          lineBaseColor: d1.lineBaseColor),
    );
  }

  List<Widget> _getDivisionsWidgets(List<Division> divisions, Size size) {
    return divisions.map<Widget>((e) {
      if (e.quantidadeArrows == 2) {
        return buildTwoArrow(e, size);
      } else {
        return buildOneArrow(e, size);
      }
    }).toList();
  }

  List<Widget> _getDivisionsWithSpace(List<Division> divisions, Size size) {
    List<Widget> list = _getDivisionsWidgets(divisions, size);
    for (int i = 0; i < list.length; i++) {
      if (i % 2 == 1) {
        list.insert(i, SizedBox(width: (size.height * 0.02999) * 0.5));
      }
    }
    return list;
  }


}
