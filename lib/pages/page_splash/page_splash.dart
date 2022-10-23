import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ritmos_de_violao_premium/pages/page_splash/bloc/bloc_page_splash.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';

const String testDevice = 'YOUR_DEVICE_ID';
const int maxFailedLoadAttempts = 3;

class PageSplashScreen extends StatefulWidget {
  const PageSplashScreen({Key? key}) : super(key: key);

  @override
  State<PageSplashScreen> createState() => _PageSplashScreenState();
}

class _PageSplashScreenState extends State<PageSplashScreen> {

  late Timer timer;
  late BlocPageSplash _blocPageSplash;

  @override
  void initState() {
    super.initState();

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _blocPageSplash = Provider.of<BlocPageSplash>(context);
    _blocPageSplash.initPurchaseInApp().then((value) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.PAGE_HOME, (route) => false);
    }).catchError((e){
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.PAGE_HOME, (route) => false);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: getReferenceHeight(context) * 2.2,
            width: getReferenceHeight(context) * 2.4,
            child: Image.asset('assets/icone/icone_sf.png')
        ),
      ),
    );
  }

}
