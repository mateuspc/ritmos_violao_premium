import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ritmos_de_violao_premium/models/division.dart';
import 'package:ritmos_de_violao_premium/models/ritmo.dart';
import 'package:ritmos_de_violao_premium/shapes/custom_list_type_indicator.dart';
import 'package:ritmos_de_violao_premium/shapes/divisions_one_arrow_shape.dart';
import 'package:ritmos_de_violao_premium/shapes/divisions_two_arrows_shape.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/leading_app_bar.dart';
import 'package:ritmos_de_violao_premium/widgets/title_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PageDetails extends StatefulWidget {

  PageDetails();

  @override
  _PageDetailsState createState() => _PageDetailsState();
}


class _PageDetailsState extends State<PageDetails> with WidgetsBindingObserver{

   bool isPlaying = false;
  late Ritmo _ritmo;
  int positionAnterior = -2;
  bool firstAccess = true;
  InAppWebViewController? webViewController;
  final Completer<WebViewController> _webViewController = Completer<WebViewController>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

      _ritmo = ModalRoute.of(context)!.settings.arguments as Ritmo;

  }
   // in app webview
   final GlobalKey webViewKey = GlobalKey();


   PullToRefreshController? pullToRefreshController;
   late ContextMenu contextMenu;
   String url = "";
   double progress = 0;
   final urlController = TextEditingController();

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
                          Container(
                            height: 220,
                            child: InAppWebView(
                              key: webViewKey,
                              initialData: InAppWebViewInitialData(
                                  data: """
                                  <iframe width="100%" height="100%" src="https://www.youtube.com/embed/${_ritmo.videoViolaoId.isEmpty ? _ritmo.videoId : _ritmo.videoViolaoId}" 
                                  title="YouTube video player" 
                                  frameborder="0"
                                   allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                  """
                              ),
                              pullToRefreshController: pullToRefreshController,
                              onEnterFullscreen: (value){
                                SystemChrome.setPreferredOrientations([
                                  DeviceOrientation.landscapeRight,
                                  DeviceOrientation.landscapeLeft,
                                ]);
                              },
                              onExitFullscreen: (value){
                                SystemChrome.setPreferredOrientations([
                                  DeviceOrientation.portraitUp,
                                  DeviceOrientation.portraitDown,
                                ]);
                              },
                              onWebViewCreated: (controller) async {
                                webViewController = controller;

                                print(await controller.getUrl());
                              },
                              onLoadStart: (controller, url) async {
                                setState(() {
                                  this.url = url.toString();
                                  urlController.text = this.url;
                                });
                              },
                              shouldOverrideUrlLoading:
                                  (controller, navigationAction) async {
                                var uri = navigationAction.request.url!;


                                return NavigationActionPolicy.ALLOW;
                              },
                              onLoadStop: (controller, url) async {
                                pullToRefreshController?.endRefreshing();
                                setState(() {
                                  this.url = url.toString();
                                  urlController.text = this.url;
                                });
                              },
                              onProgressChanged: (controller, progress) {
                                if (progress == 100) {
                                  pullToRefreshController?.endRefreshing();
                                }
                                setState(() {
                                  this.progress = progress / 100;
                                  urlController.text = this.url;
                                });
                              },
                              onUpdateVisitedHistory: (controller, url, isReload) {
                                setState(() {
                                  this.url = url.toString();
                                  urlController.text = this.url;
                                });
                              },
                              onConsoleMessage: (controller, consoleMessage) {
                                print(consoleMessage);
                              },
                            ),
                          ),
                     TextButton.icon(onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.PAGE_PREVIEW_MOCK_OPEN_URL_ONLY, (_) => false,
                                arguments : {
                                  'url' : _ritmo.videoViolaoId.isEmpty ? _ritmo.videoId : _ritmo.videoViolaoId,
                                  'route' : 'PAGE_DETALHES_LEVADA_LIST',
                                  'ritmo' : _ritmo
                                });
                          },
                            icon: const Icon(Icons.play_circle_outline_rounded,
                                color: Colors.blue),
                            label: const Text('Assistir com play auternativo',
                              style: TextStyle(
                                color: Colors.blue
                              ),),),
                          const SizedBox(height: 10),
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
                                    _getDivisionsWithSpace(_ritmo.divisionsRitmo, size),
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
