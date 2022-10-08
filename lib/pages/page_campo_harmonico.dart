import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/data/data_acordes_violao.dart';
import 'package:ritmos_de_violao_premium/models/acorde.dart';
import 'package:ritmos_de_violao_premium/pages/page_details_acorde.dart';
import 'package:ritmos_de_violao_premium/shapes/acorde_violao_shape.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fontsize.dart';
import 'package:ritmos_de_violao_premium/utils/campo_harmonico_utils.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';
import 'package:ritmos_de_violao_premium/utils/page_route_anim.dart';
import 'package:ritmos_de_violao_premium/widgets/leading_app_bar.dart';
import 'package:ritmos_de_violao_premium/widgets/title_app_bar.dart';



class PageCampoHarmonico extends StatefulWidget {

  @override
  _PageCampoHarmonicoState createState() => _PageCampoHarmonicoState();
}

class _PageCampoHarmonicoState extends State<PageCampoHarmonico> with SingleTickerProviderStateMixin{
  int state = 0;
  late Acorde acorde;
  late List<Acorde> _acordesMaiores;
  late List<Acorde> _acordesMenores;
  late TabCampoHarmonico _tabSelected;
  late TabController _controller;
  int _currentIndex = 0;

  Widget _getShape(double width, double height, Acorde acorde){

      return  Card(
        child: CustomPaint(
          painter: DesenharAcordeViolao(acorde: acorde),
          child: Container(),
        ),
      );

  }

  List<Acorde> getAcordesCampoHamornicoFromType(TypeAcorde typeAcorde, String nome) {
        return DicionarioAcordesViolao.getCampoHarmonico(nome);
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    acorde = ModalRoute.of(context)!.settings.arguments as Acorde;
    _acordesMenores = getAcordesCampoHamornicoFromType(acorde.type, nomeMaiorToMenor(acorde.nome));
    _acordesMaiores = getAcordesCampoHamornicoFromType(acorde.type, acorde.nome);

  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
    _controller.addListener(_handleTabSelection);

  }

  _handleTabSelection() {
    setState(() {
      _currentIndex = _controller.index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(() => {});
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: getToolbarHeight(context),
          title: TitleAppBar(title: 'Campo harmônico'),
          leading: LeadingAppBar(onPressed: (){
             Navigator.pop(context);
           },
          ),
          bottom: TabBar(
            labelStyle: TextStyle(
               fontSize: getFontSizeTabs(context)
            ),
            onTap: (index){
              print(index);

            },
            tabs: [
            Tab(text: acorde.nome ),
            Tab(text: nomeMaiorToMenor(acorde.nome),)
          ],

          ),
        ),
        body: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 0.9,
              children:  _acordesMaiores.toSet().map((acorde) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        PageRouteAnim(
                            widget: PageDetailsAcorde(typeBanner: true),
                            arguments: acorde,
                            curve: Curves.elasticInOut
                        ));
                  },
                  child: _getShape(width, height, acorde),
                );
              }).toList(),
            ),
            GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 0.9,
              children:  _acordesMenores.toSet().map((acorde) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        PageRouteAnim(
                            widget: PageDetailsAcorde(typeBanner: true),
                            arguments: acorde,
                            curve: Curves.elasticInOut
                        ));
                  },
                  child: _getShape(width, height, acorde),
                );
              }).toList(),
            )
          ],
        ),
        // body: SafeArea(
        //   child: Scaffold(
        //     body: Column(
        //       crossAxisAlignment: CrossAxisAlignment.stretch,
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        //           child: CupertinoSlidingSegmentedControl(
        //             groupValue: state,
        //             backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //             onValueChanged: (value) {
        //               setState(() {
        //                 this.state = value as int;
        //                 if(state == 0){
        //                   _tabSelected = TabCampoHarmonico.MAIORES;
        //                   _acordes = getAcordesCampoHamornicoFromType(acorde.type, acorde.nome);
        //                 }else{
        //                   _tabSelected = TabCampoHarmonico.MENORES;
        //                   _acordes = getAcordesCampoHamornicoFromType(acorde.type, nomeMaiorToMenor(acorde.nome));
        //                 }
        //               });
        //             },
        //             children: {
        //               0 : Text(acorde.nome, style: TextStyle(
        //                 fontSize: getFontSizeTabs(context),
        //               ),),
        //               1 : Text(nomeMaiorToMenor(acorde.nome),
        //                   style: TextStyle(
        //                     fontSize: getFontSizeTabs(context),
        //                   )
        //               )
        //             },
        //           ),
        //         ),
        //         Expanded(
        //           child: GridView.count(
        //              crossAxisCount: 3,
        //             childAspectRatio: 0.9,
        //             children:  _acordes.toSet().map((acorde) {
        //               return GestureDetector(
        //                 onTap: (){
        //                   Navigator.push(context,
        //                       PageRouteAnim(
        //                           widget: PageDetailsAcorde(typeBanner: true),
        //                           arguments: acorde,
        //                           curve: Curves.elasticInOut
        //                       ));
        //                 },
        //                 child: _getShape(width, height, acorde),
        //               );
        //             }).toList(),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
