// import 'dart:io';
// import 'package:batidasdeukulele/models/dedilhado.dart';
// import 'package:batidasdeukulele/models/divisao.dart';
// import 'package:batidasdeukulele/shapes/custom_item_mao.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:batidasdeukulele/models/division.dart';
// import 'package:batidasdeukulele/pages/page_details_acorde.dart';
// import 'package:batidasdeukulele/provider/acordes.dart';
// import 'package:batidasdeukulele/shapes/acorde_ukulele_shape.dart';
// import 'package:batidasdeukulele/shapes/custom_list_type_indicator.dart';
// import 'package:batidasdeukulele/shapes/divisions_one_arrow_shape.dart';
// import 'package:batidasdeukulele/shapes/divisions_two_arrows_shape.dart';
// import 'package:batidasdeukulele/styles/app_dimens.dart';
// import 'package:batidasdeukulele/styles/app_fonts.dart';
// import 'package:batidasdeukulele/utils/app_ads.dart';
// import 'package:batidasdeukulele/utils/app_routes.dart';
// import 'package:batidasdeukulele/utils/page_route_anim.dart';
// import 'package:batidasdeukulele/widgets/leading_app_bar.dart';
// import 'package:batidasdeukulele/widgets/title_app_bar.dart';
// import 'package:provider/provider.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// class PageDetailsDedilhados extends StatefulWidget {
//
//   PageDetailsDedilhados();
//
//   @override
//   _PageDetailsDedilhadosState createState() => _PageDetailsDedilhadosState();
// }
//
//
// class _PageDetailsDedilhadosState extends State<PageDetailsDedilhados> with WidgetsBindingObserver{
//
//    bool isPlaying = false;
//   late YoutubePlayerController _controller;
//   late Dedilhado _dedilhado;
//   int positionAnterior = -2;
//
//    Duration youtubePlayerValue = YoutubePlayerValue().position;
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//
//     _dedilhado= ModalRoute.of(context)!.settings.arguments as Dedilhado;
//
//     _controller = YoutubePlayerController(
//         initialVideoId: this._dedilhado.videoId,
//         flags: YoutubePlayerFlags(
//         autoPlay: false,
//         mute: false,
//         loop: true,
//     ),);
//
//
//   }
//
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//
//     switch(state){
//       case AppLifecycleState.paused:
//         _controller.pause();
//         break;
//       case AppLifecycleState.inactive:
//         break;
//       case AppLifecycleState.resumed:
//         if(_controller.value.position.inSeconds > 0 && isPlaying){
//           _controller.play();
//           isPlaying = true;
//         }
//         break;
//       case AppLifecycleState.inactive:
//         break;
//       default:
//         break;
//     }
//     print(state);
//   }
//   @override
//   void initState() {
//     super.initState();
//
//     WidgetsBinding.instance.addObserver(this);
//
//   }
//     @override
//     void dispose() {
//       super.dispose();
//       WidgetsBinding.instance.removeObserver(this);
//
//       _controller.dispose();
//     }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     var appBarSize = (size.height > 900 ? size.height * 0.06
//         : size.height * 0.07) + MediaQuery.of(context).viewPadding.top;
//
//     final providerAcordes = Provider.of<Acordes>(context, listen: false);
//
//     return _layout(size, providerAcordes, appBarSize);
//   }
//
//   _layout(Size size, Acordes providerAcordes, double appBarSize) {
//
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//           appBar: AppBar(
//             toolbarHeight: getToolbarHeight(context),
//             leading: LeadingAppBar(onPressed: (){
//                //showAd();
//               Navigator.pushReplacementNamed(context, AppRoutes.PAGE_HOME);
//
//             }),
//             title: TitleAppBar(title: _dedilhado.nome ?? "Padrão"),
//           ),
//           body: Stack(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Expanded(
//                     child: Card(
//                     elevation: 0,
//                     color: Colors.grey[300],
//                     child: Container(
//                       padding:  EdgeInsets.zero,
//                       child: ListView(
//                         //physics: NeverScrollableScrollPhysics(),
//                         children: [
//                           Stack(
//                             alignment: AlignmentDirectional.topStart,
//                             children: [
//                               YoutubePlayer(
//                                 controller: _controller,
//                                 bottomActions: [
//                                   CurrentPosition(),
//                                   ProgressBar(isExpanded: true, colors: ProgressBarColors(
//                                       playedColor: Colors.amber,
//                                       handleColor: Colors.amberAccent
//                                   ),),
//                                 ],
//                                 onReady: (){
//
//
//                                 },
//                               ),
//                               if(_dedilhado.feitoPor.startsWith('Mateus'))
//                               Consumer<Acordes>(
//                                 builder: (context, acordes, _) => GestureDetector(
//                                   onTap: (){
//                                     if(acordes.visible){
//                                       Navigator.push(context,
//                                           PageRouteAnim(
//                                               widget: PageDetailsAcorde(typeBanner: false),
//                                               arguments: acordes.acorde,
//                                               curve: Curves.elasticInOut
//                                           ));
//                                     }
//                                   },
//                                   child:  Hero(
//                                     tag: 'acorde',
//                                     child:  CustomPaint(
//                                       size: Size(size.height * 0.12, size.height * 0.14),
//                                       painter: DesenharAcordeUkulele(
//                                           acordeUkulele: acordes.acorde,
//                                           backgroundShapeColor: Colors.white,
//                                           visible: acordes.visible),
//                                     ),
//                                   ),
//                                 ),
//
//                               ),
//
//                             ],
//                           ),
//                           SizedBox(height: size.height * 0.04),
//                           Wrap(
//                             children: [
//                               Center(
//                                 child: Text(_dedilhado.padrao, style: TextStyle(
//                                     fontSize: getToolbarHeight(context) * 0.7
//                                 ))
//                               ),
//                               if(_dedilhado.musicas.length > 0)
//                               CupertinoButton(
//                                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
//                                   child: Row(
//                                     children: [
//                                       FittedBox(
//                                         child: Text('Dicas de músicas:',
//                                           style: TextStyle(
//                                               fontSize: getToolbarHeight(context) * 0.4,
//                                               fontFamily: FontsApp.mulishBold,
//                                               color: Colors.black
//                                           ),),
//                                       ),
//                                     ],
//                                   ), onPressed: (){}),
//                               if(_dedilhado.musicas.length > 0)
//                                 Container(
//                                 height: getSizeContainerListMusic(context, _dedilhado.musicas.length),
//                                 child: SingleChildScrollView(
//                                     physics: NeverScrollableScrollPhysics(),
//                                     child: Column(
//                                       children: [
//                                         ..._dedilhado.musicas.map((e) => Container(
//                                           child: Container(
//                                             height: getToolbarHeight(context) * 1.1,
//                                             child: LayoutBuilder(
//                                               builder: (context, constraints){
//                                                 return Row(
//                                                   children: [
//                                                     CustomPaint(
//                                                       size: Size(constraints.maxHeight * 0.5,
//                                                           constraints.maxHeight * 0.5),
//                                                       painter: ListTypeCustom(text: '♫'),
//                                                     ),
//                                                     SizedBox(width: constraints.maxHeight * 0.1),
//                                                     Column(
//                                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                                       children: [
//                                                         Container(
//                                                           width: constraints.maxWidth * 0.9,
//                                                           height: constraints.maxHeight * 0.6,
//                                                           alignment: Alignment.centerLeft,
//                                                           child: Text(e.nome, style: TextStyle(
//                                                               fontSize: constraints.maxHeight * 0.3,
//                                                               fontWeight: FontWeight.w600
//                                                           ),
//                                                             overflow: TextOverflow.ellipsis,),
//                                                         ),
//                                                         Container(
//                                                             height: constraints.maxHeight * 0.3,
//                                                             child: Text("(${e.autor})", style: TextStyle(
//                                                                 fontSize: constraints.maxHeight * 0.25
//                                                             ),)
//                                                         ),
//                                                         Divider(height: constraints.maxHeight * 0.1)
//                                                       ],
//                                                     ),
//                                                   ],
//                                                 );
//                                               },
//                                             ),
//                                           ),
//                                         ))
//                                       ],
//                                     )
//
//                                 ),
//                               ),
//                               Container(
//                                 height: getSizeContainerGridMao(context, _dedilhado.divisoes.length),
//                                 child: GridView.builder(
//                                   itemCount: _dedilhado.divisoes.length,
//                                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                                       crossAxisCount: 3
//                                   ),
//                                   physics: NeverScrollableScrollPhysics(),
//                                   itemBuilder: (BuildContext context, int index) {
//
//                                     Divisao divisao = _dedilhado.divisoes[index];
//
//                                      return Stack(
//                                        children: [
//                                          CustomItemMao(
//                                              polegarColor: divisao.polegarColor,
//                                              indicadorColor: divisao.indicadorColor,
//                                              medioColor: divisao.medioColor,
//                                              anelarColor: divisao.anelarColor),
//                                          Positioned(
//                                            left: 10,
//                                            top: 10,
//                                            child: Container(
//                                              width: getToolbarHeight(context) * 0.5,
//                                              height: getToolbarHeight(context) * 0.5,
//                                              decoration: BoxDecoration(
//                                                borderRadius: BorderRadius.circular(getToolbarHeight(context) * 0.1)
//                                              ),
//                                              child: Center(
//                                                child: Text(
//                                                  "${index + 1}",
//                                                  style: TextStyle(
//                                                    fontSize: getToolbarHeight(context) * 0.4,
//                                                    fontFamily: FontsApp.mulishBold
//                                                  ),
//                                                ),
//                                              ),
//                                            ),
//                                          )
//                                        ],
//                                      );
//                                   },
//                                   ),
//                               ),
//                             ],
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   )),
//                 ],
//               ),
//             ],
//           )
//         );
//   }
//
//
//   buildOneArrow(Division d2, Size size) {
//     return CustomPaint(
//       size: Size((size.height * 0.16865) * 0.2, (size.height * 0.4) * 0.2),
//       painter: DivisiosOneArrow(
//           textPasso: d2.textPasso,
//           arrowOneMascada: d2.arrowOneMascada,
//           arrowOneDown: d2.arrowOneDown,
//           textPassoColor: d2.textPassoColor,
//           backgroundColor: d2.backgroundColor,
//           mascadaColor: d2.mascadaColor,
//           lineBaseColor: d2.lineBaseColor),
//     );
//   }
//
//   buildTwoArrow(Division d1, Size size) {
//     return CustomPaint(
//       size: Size((size.height * 0.33733) * 0.2, (size.height * 0.4) * 0.2),
//       painter: DivisionsTwoArrowsShape(
//           textPasso: d1.textPasso,
//           textPassoColor: d1.textPassoColor,
//           arrowOneDown: d1.arrowOneDown,
//           arrowTwoDown: d1.arrowTwoDown,
//           arrowOneMascada: d1.arrowOneMascada,
//           arrowTwoMascada: d1.arrowTwoMascada,
//           mascadaColor: d1.mascadaColor,
//           backgroundColor: d1.backgroundColor,
//           lineBaseColor: d1.lineBaseColor),
//     );
//   }
//
//   List<Widget> _getDivisionsWidgets(List<Division> divisions, Size size) {
//     return divisions.map<Widget>((e) {
//       if (e.quantidadeArrows == 2) {
//         return buildTwoArrow(e, size);
//       } else {
//         return buildOneArrow(e, size);
//       }
//     }).toList();
//   }
//
//   List<Widget> _getDivisionsWithSpace(List<Division> divisions, Size size) {
//     List<Widget> list = _getDivisionsWidgets(divisions, size);
//     for (int i = 0; i < list.length; i++) {
//       if (i % 2 == 1) {
//         list.insert(i, SizedBox(width: (size.height * 0.02999) * 0.5));
//       }
//     }
//     return list;
//   }
//
//
// }
