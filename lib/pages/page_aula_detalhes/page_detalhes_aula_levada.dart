import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:pod_player/pod_player.dart';
import 'package:ritmos_de_violao_premium/models/video_aula.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:ritmos_de_violao_premium/widgets/leading_app_bar.dart';
import 'package:ritmos_de_violao_premium/widgets/title_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageDetalhesAulaLevada extends StatefulWidget {

  PageDetalhesAulaLevada();

  @override
  _PageDetalhesAulaLevadaState createState() => _PageDetalhesAulaLevadaState();
}


class _PageDetalhesAulaLevadaState extends State<PageDetalhesAulaLevada> with WidgetsBindingObserver{

  bool isPlaying = false;
  late VideoAula _ritmo;
  int positionAnterior = -2;
  bool firstAccess = true;
  InAppWebViewController? webViewController;
  final Completer<WebViewController> _webViewController = Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _ritmo = ModalRoute.of(context)!.settings.arguments as VideoAula;

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
          title: TitleAppBar(title: _ritmo.titulo),
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
                                  <iframe width="100%" height="100%" src="https://www.youtube.com/embed/${_ritmo.videoId}" 
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
                            // Stack(
                            //   alignment: AlignmentDirectional.topStart,
                            //   children: [
                            //     PodVideoPlayer(controller: controller),
                            //   ],
                            // ),
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



}