
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:ritmos_de_violao_premium/firebase_options.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/page_cadastro.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/page_esqueci_minha_senha.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/page_login.dart';
import 'package:ritmos_de_violao_premium/pages/page_aula_detalhes/page_detalhes_aula.dart';
import 'package:ritmos_de_violao_premium/pages/page_campo_harmonico.dart';
import 'package:ritmos_de_violao_premium/pages/page_details_ritmo.dart';
import 'package:ritmos_de_violao_premium/pages/page_home.dart';
import 'package:ritmos_de_violao_premium/pages/page_menu.dart';
import 'package:ritmos_de_violao_premium/pages/page_splash/bloc/bloc_page_splash.dart';
import 'package:ritmos_de_violao_premium/pages/page_splash/page_splash.dart';
import 'package:ritmos_de_violao_premium/pages/termos_e_politicas/page_abrir_link.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
final temaPadrao = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(TextStyle(
        color: Colors.blue
      ))
    )
  )
);


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
      (v) {
        runApp(
            MultiProvider(
              providers: [
                Provider(create: (_) => BlocPageSplash())
              ],
              child: MaterialApp(
                initialRoute: AppRoutes.PAGE_SPLASH_SCREEN,
                debugShowCheckedModeBanner: false,
                theme: temaPadrao.copyWith(
                    colorScheme: temaPadrao.colorScheme.copyWith(
                        primary: Colors.white)),
                routes: {
                  AppRoutes.PAGE_SPLASH_SCREEN : (_) => PageSplashScreen(),
                  AppRoutes.PAGE_HOME : (_) => PageHome(),
                  AppRoutes.PAGE_DETAILS : (_) => PageDetails(),
                  AppRoutes.PAGE_CAMPO_HARMONICO : (_) => PageCampoHarmonico(),
                  AppRoutes.PAGE_MENU : (_) => PageMenu(),
                  AppRoutes.PAGE_DETALHES_AULA : (_) => PageDetalhesAula(),
                  AppRoutes.PAGE_LOGIN : (_) => PageLogin(),
                  AppRoutes.PAGE_CADASTRO : (_) => PageCadastro(),
                  AppRoutes.PAGE_ESQUECI_MINHA_SENHA : (_) => PageEsqueciMinhaSenha(),
                  AppRoutes.PAGE_OPEN_LINK_WEBVIEW : (_) => PageOpenLinkWebView()
                },
              ),
            )
        );
      }
  );

}