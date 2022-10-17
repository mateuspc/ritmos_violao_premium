import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    return Scaffold(
      body: GridView(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, AppRoutes.PAGE_RITMOS);
            },
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.guitar,
                      size: getReferenceHeight(context) * 0.5,
                      color: Colors.white,
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.2,),
                    Text("Levadas", style: TextStyle(
                      fontSize: getReferenceHeight(context) * 0.33,
                      color: Colors.white
                    ),),
                  ],
                )),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, AppRoutes.PAGE_ACORDES);
            },
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.orange,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.music,
                      size: getReferenceHeight(context) * 0.5,
                      color: Colors.white,),
                    SizedBox(height: getReferenceHeight(context) * 0.2,),
                    Text("Campo harmônico", style: TextStyle(
                        fontSize: getReferenceHeight(context) * 0.33,
                        color: Colors.white
                    ),),
                  ],
                )),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, AppRoutes.PAGE_CURSO_LEVADAS);
            },
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.purple,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.linesLeaning,
                      size: getReferenceHeight(context) * 0.5,
                      color: Colors.white,),
                    SizedBox(height: getReferenceHeight(context) * 0.2,),
                    Text("Curso de levadas", style: TextStyle(
                        fontSize: getReferenceHeight(context) * 0.33,
                        color: Colors.white
                    ),),
                  ],
                )),
          ),
          // GestureDetector(
          //   onTap: (){
          //     Navigator.pushNamed(context, AppRoutes.PAGE_DEDILHADOS);
          //   },
          //   child: Container(
          //       decoration: BoxDecoration(
          //         border: Border.all(color: Colors.black, width: 1),
          //         color: Colors.blueGrey,
          //       ),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Icon(FontAwesomeIcons.guitar,
          //             size: getReferenceHeight(context) * 0.5,
          //             color: Colors.white,),
          //           SizedBox(height: getReferenceHeight(context) * 0.2,),
          //           Text("Dedilhados de ukulele", style: TextStyle(
          //               fontSize: getReferenceHeight(context) * 0.33,
          //               color: Colors.white
          //           ),),
          //         ],
          //       )),
          // ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, AppRoutes.PAGE_MENU);
            },
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.green,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.question,
                      size: getReferenceHeight(context) * 0.5,
                      color: Colors.white,),
                    SizedBox(height: getReferenceHeight(context) * 0.2,),
                    Text("Ajuda", style: TextStyle(
                        fontSize: getReferenceHeight(context) * 0.33,
                        color: Colors.white
                    ),),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
