import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ritmos_de_violao_premium/pages/termos_e_politicas/models/abrir_link_webview_model.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:url_launcher/url_launcher.dart';

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
              colorLeadingIcon: Colors.green,
              backgroundColor: Colors.white,
              onTapLeading: (){
                Navigator.pop(context);
              }, title: "Voltar", onActionClicked: () {  }),
          SliverToBoxAdapter(
            child: ListTileMenuCustom(title: 'Avaliar app', iconLeading: Icons.star,
              onTap: (){
                rateThisApp();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: getReferenceHeight(context) * 0.22,),
          ),
          SliverToBoxAdapter(
            child: ListTileMenuCustom(title: 'Enviar email para suporte', iconLeading: Icons.email,
              onTap: (){
                enviarEmailParaEquipe();

              },
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: getReferenceHeight(context) * 0.22,),
          ),
          SliverToBoxAdapter(
            child: ListTileMenuCustom(title: 'Termos de uso', iconLeading: Icons.import_contacts,
              onTap: (){

                launchUrl(Uri.parse("https://sites.google.com/view/aprenderritmosviolaotermos/"),
                   mode: LaunchMode.externalApplication);

                AbrirLinkWebViewModel abrirLinkWebViewModel = AbrirLinkWebViewModel(
                    title: "Termos de uso", link: "https://sites.google.com/view/aprenderritmosviolaotermos/");
                Navigator.pushNamed(context, AppRoutes.PAGE_OPEN_LINK_WEBVIEW,
                    arguments: abrirLinkWebViewModel);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: getReferenceHeight(context) * 0.22,),
          ),
          SliverToBoxAdapter(
            child: ListTileMenuCustom(title: 'Políticas de privacidade', iconLeading: Icons.lock,
              onTap: (){
                launchUrl(Uri.parse("https://sites.google.com/view/politicaprivacidadedevfullapps/"),
                    mode: LaunchMode.externalApplication);


              },
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: getReferenceHeight(context) * 0.22,),
          ),
          SliverToBoxAdapter(
            child: ListTileMenuCustom(title: 'Assinatura', iconLeading: Icons.workspace_premium,
              onTap: (){
                 Navigator.pushNamed(context, AppRoutes.PAGE_ASSINATURA);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: getReferenceHeight(context) * 0.22,),
          ),

        ],
      ),
    );
  }
}

 _showDialogExitApp(BuildContext context, {required String title,
  required String subtitle, required VoidCallback onTapPositiveButton}) {
  return showDialog(context: context,
      builder: (context){
        return AlertDialog(
          title: Text(title),
          content: Text(subtitle),
          actions: [
            OutlinedButton(
                onPressed: (){
                  onTapPositiveButton();
                }, child: Text("Ok", style: TextStyle(
                color: Colors.red
            ),)),
            OutlinedButton(

                onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancelar", style: TextStyle(
                color: Colors.blue
            ),)),
          ],
        );
      });
}

class ListTileMenuCustom extends StatelessWidget {

  final String title;
  final IconData iconLeading;
  final VoidCallback onTap;

  const ListTileMenuCustom({
    Key? key,
    required this.title,
    required this.iconLeading,
    required this.onTap
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 0.3),
        borderRadius: BorderRadius.circular(getReferenceHeight(context) * 0.1)
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(
          fontSize: getReferenceHeight(context) * 0.28
        ),),
        onTap: (){
          onTap();
        },
        leading: Icon(iconLeading,
          color: Colors.green,
          size: getReferenceHeight(context) * 0.45,
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded,
          color: Colors.green,
          size: getReferenceHeight(context) * 0.45,
        ),
      ),
    );
  }
}
