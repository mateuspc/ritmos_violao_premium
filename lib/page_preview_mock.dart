
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PagePreviewMockOpenUrlOnly extends StatefulWidget {
  const PagePreviewMockOpenUrlOnly({Key? key}) : super(key: key);

  @override
  State<PagePreviewMockOpenUrlOnly> createState() => _PagePreviewMockOpenUrlOnlyState();
}

class _PagePreviewMockOpenUrlOnlyState extends State<PagePreviewMockOpenUrlOnly> {

  bool firstAccess = true;
  int _stackIndex = 0;
  late String url;
  late String route;
  late WebViewController _webViewController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if(firstAccess){
      firstAccess = false;
      var map = ModalRoute.of(context)!
          .settings.arguments as Map;
      route = map["route"] ?? "PAGE_HOME";
      url = map["url"] ?? "";

      _webViewController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
            },
            onPageStarted: (String url) {},
            onPageFinished: (String url) {},
            onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse('https://www.youtube.com/embed/$url'));
    }
  }


  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    Orientation orientation = MediaQuery.of(context).orientation;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      appBar: orientation == Orientation.portrait ? AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: getToolbarHeight(context) * 1.3,
        leadingWidth: isTableOrIpad(context) ? size.width * 0.12 : size.width * 0.15,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.transparent,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        title: Text('Vídeo', style: TextStyle(
            color: ColorsApp.primary,
            fontSize: getReferenceHeight(context) * 0.27,
            fontFamily: FontsApp.mulishBold
        ),),
        leading: Container(
          color: Colors.transparent,
          child: LeadingCustom(
            color: ColorsApp.primary,
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(context, AppRoutes.PAGE_HOME, (_) => false);
            },
          ),
        ) ,
      ) : null,
      body: IndexedStack(
        index: _stackIndex,
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                        height: size.height * 2,
                        child: WebViewWidget(controller: _webViewController)

                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

                          },
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}