import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
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
      body: CustomScrollView(
        slivers: [
          CustomToolbar(
              context: context,
              colorLeadingIcon: Colors.blue,
              backgroundColor: Colors.white,
              onTapLeading: (){
                Navigator.pop(context);
              }, title: "Voltar", onActionClicked: () {  }),
          SliverToBoxAdapter(
            child: GestureDetector(
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
                              color: Colors.blue,)
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
          ),
          SliverToBoxAdapter(
            child: Container(height: 1, color: Colors.grey[300],),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
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
                              color: Colors.blue,)
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
          ),
          SliverToBoxAdapter(
            child: Container(height: 1, color: Colors.grey[300],),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: (){
                FirebaseAuth.instance.signOut();
                Navigator.pushNamedAndRemoveUntil(context, AppRoutes.PAGE_LOGIN, (route) => false);
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
                            child: Icon(Icons.exit_to_app, size: getReferenceHeight(context),
                              color: Colors.blue,)
                        ),
                        Expanded(
                          child: Center(
                            child: Text('Sair do app',
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
          ),
          SliverToBoxAdapter(
            child: Container(height: 1, color: Colors.grey[300],),
          ),

        ],
      ),
    );
  }
}
