import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ritmos_de_violao_premium/pages/page_acordes.dart';
import 'package:ritmos_de_violao_premium/pages/page_modulos_curso/view/acessar_conteudo_page.dart';
import 'package:ritmos_de_violao_premium/pages/page_ritmos.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Ritmos de violão',
             style: TextStyle(
               fontSize: getReferenceHeight(context) * 0.4,
               color: Colors.blue
             ),),
          bottom: TabBar(
            labelColor: Colors.blue,
            labelStyle: TextStyle(
              fontSize: getReferenceHeight(context) * 0.30,
            ),
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                  icon: Icon(FontAwesomeIcons.guitar,
                   color: Colors.blue,
                   size: getReferenceHeight(context) * 0.5,),
                  text: 'Levadas'

              ),
              Tab(
                icon: Icon(FontAwesomeIcons.video,
                  color: Colors.blue,
                  size: getReferenceHeight(context) * 0.5,),
                text: 'Curso',

              ),
              Tab(icon: Icon(FontAwesomeIcons.music,
                 color: Colors.blue,
                 size: getReferenceHeight(context) * 0.5,),
                 text: 'Campo harmônico'),
            ],
          ),
          actions: [
            IconButton(onPressed: () {
                Navigator.pushNamed(context, AppRoutes.PAGE_MENU);
              }, icon: Icon(Icons.settings,
                 color: Colors.blue,
                 size: getReferenceHeight(context) * 0.48,),

            )
          ],
        ),
        body: TabBarView(
          children: [
            PageRitmos(),
            PageAcessarConteudo(),
            PageAcordes()
          ],
        ),
      ),
    );
  }
}
