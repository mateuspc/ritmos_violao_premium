
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ritmos_de_violao_premium/firebase_options.dart';
import 'package:ritmos_de_violao_premium/pages/page_aula_detalhes/page_detalhes_aula.dart';
import 'package:ritmos_de_violao_premium/pages/page_campo_harmonico.dart';
import 'package:ritmos_de_violao_premium/pages/page_details_ritmo.dart';
import 'package:ritmos_de_violao_premium/pages/page_home.dart';
import 'package:ritmos_de_violao_premium/pages/page_menu.dart';
import 'package:ritmos_de_violao_premium/pages/page_splash.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if(Platform.isWindows){
    runApp(
        MaterialApp(
          initialRoute: AppRoutes.PAGE_SPLASH_SCREEN,
          debugShowCheckedModeBanner: false,
          routes: {
            AppRoutes.PAGE_SPLASH_SCREEN : (_) => PageSplashScreen(),
            AppRoutes.PAGE_HOME : (_) => PageHome(),
            AppRoutes.PAGE_DETAILS : (_) => PageDetails(),
            AppRoutes.PAGE_CAMPO_HARMONICO : (_) => PageCampoHarmonico(),
            AppRoutes.PAGE_MENU : (_) => PageMenu(),
            AppRoutes.PAGE_DETALHES_AULA : (_) => PageDetalhesAula()
          },
        )
    );
  }else{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
            (v) {
          runApp(
              MaterialApp(
                initialRoute: AppRoutes.PAGE_SPLASH_SCREEN,
                debugShowCheckedModeBanner: false,
                routes: {
                  AppRoutes.PAGE_SPLASH_SCREEN : (_) => PageSplashScreen(),
                  AppRoutes.PAGE_HOME : (_) => PageHome(),
                  AppRoutes.PAGE_DETAILS : (_) => PageDetails(),
                  AppRoutes.PAGE_CAMPO_HARMONICO : (_) => PageCampoHarmonico(),
                  AppRoutes.PAGE_MENU : (_) => PageMenu(),
                  AppRoutes.PAGE_DETALHES_AULA : (_) => PageDetalhesAula()
                },
              )
          );
        }
    );
  }


}