import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/widgets/leading_app_bar.dart';
import 'package:ritmos_de_violao_premium/widgets/title_app_bar.dart';

import '../utils/funcoes_menu.dart';

class PageMenu extends StatefulWidget {
  const PageMenu({Key? key}) : super(key: key);

  @override
  State<PageMenu> createState() => _PageMenuState();
}

class _PageMenuState extends State<PageMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getToolbarHeight(context),
        title: const TitleAppBar(title: 'Opções'),
        leading: LeadingAppBar(onPressed: (){
          Navigator.of(context).pop();
        },),
      ),
      body: Column(
         children: [
          GestureDetector(
          onTap: (){
        rateThisApp();
    },
      child: Container(
        height: getReferenceHeight(context) * 3,
        width: width,
        padding: EdgeInsets.only(right: width * 0.1),
        child: LayoutBuilder(
          builder: (context, constraints){
            return Row(
              children: [
                Container(
                  height: constraints.maxHeight,
                  width: constraints.maxHeight / 1.2,
                  padding: EdgeInsets.all(getReferenceHeight(context) * 0.5),
                  child: Icon(Icons.star, size: getReferenceHeight(context),
                   color: Colors.grey,)
                ),
                Expanded(
                  child: Center(
                    child: Text('Avaliar o app/deixar um comentário',
                      style: TextStyle(
                          fontSize: getReferenceHeight(context) * 0.43
                      ),),
                  ),
                )
              ],
            );
          },
        ),
      ),
    ),
          Container(height: 0.3, color: Colors.grey,),
          GestureDetector(
             onTap: (){
               enviarEmailParaEquipe();
             },
             child: Container(
               height: getReferenceHeight(context) * 3,
               width: width,
               padding: EdgeInsets.only(right: width * 0.1),
               child: LayoutBuilder(
                 builder: (context, constraints){
                   return Row(
                     children: [
                       Container(
                           height: constraints.maxHeight,
                           width: constraints.maxHeight / 1.2,
                           padding: EdgeInsets.all(getReferenceHeight(context) * 0.5),
                           child: Icon(Icons.email, size: getReferenceHeight(context),
                             color: Colors.grey,)
                       ),
                       Expanded(
                         child: Center(
                           child: Text('Enviar email para equipe de suporte',
                             style: TextStyle(
                                 fontSize: getReferenceHeight(context) * 0.43
                             ),),
                         ),
                       )
                     ],
                   );
                 },
               ),
             ),
           ),
           Container(height: 0.3, color: Colors.grey,),

         ],
      ),
    );
  }
}
