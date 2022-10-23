
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ritmos_de_violao_premium/pages/termos_e_politicas/models/abrir_link_webview_model.dart';
import 'package:ritmos_de_violao_premium/styles/app_colors.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PageOpenLinkWebView extends StatefulWidget {
  const PageOpenLinkWebView({Key? key}) : super(key: key);

  @override
  State<PageOpenLinkWebView> createState() => _PageOpenLinkWebViewState();
}

class _PageOpenLinkWebViewState extends State<PageOpenLinkWebView> {

  bool firstAccess = true;
  int _stackIndex = 1;
  late AbrirLinkWebViewModel abrirLinkWebViewModel;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if(firstAccess){
      firstAccess = false;

      abrirLinkWebViewModel = ModalRoute.of(context)!
          .settings.arguments as AbrirLinkWebViewModel;
    }
  }


  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
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
        title: Text(abrirLinkWebViewModel.title, style: TextStyle(
            color: Colors.blue,
            fontSize: getReferenceHeight(context) * 0.27,
            fontFamily: FontsApp.mulishRegular
        ),),
        leading: Container(
          color: Colors.transparent,
          child: LeadingCustom(
            color: Colors.blue,
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ) ,
      ),
      body: IndexedStack(
        index: _stackIndex,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  height: size.height * 2,
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: abrirLinkWebViewModel.link,
                    onPageFinished: (value){
                      setState((){
                        _stackIndex = 0;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          Scaffold(
            body: Container(
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
                    SizedBox(height: getReferenceHeight(context) * 0.6,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                      child: FittedBox(
                        child: Text("Carregando...", style: TextStyle(
                            fontSize: getReferenceHeight(context) * 0.4,
                            color: Colors.blue
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
