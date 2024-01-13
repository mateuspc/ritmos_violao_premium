import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ritmos_de_violao_premium/data/ritmos_data.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/models/categoria.dart';
import 'package:ritmos_de_violao_premium/models/ritmo.dart';
import 'package:ritmos_de_violao_premium/pages/page_splash/bloc/bloc_page_splash.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/models/singleton_data.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/page_paywall.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:shimmer/shimmer.dart';
import '../shapes/draw_arrow.dart';

class PageRitmos extends StatefulWidget {
  PageRitmos();

  @override
  _PageRitmosState createState() => _PageRitmosState();
}

class _PageRitmosState extends State<PageRitmos> {
  late List<Ritmo> _ritmos;
  late BlocPageSplash _blocPageSplash;
  bool isFirstAccess = true;
  @override
  void initState() {
    super.initState();
    _ritmos = RitmosData.getAllRitmos();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _blocPageSplash = Provider.of<BlocPageSplash>(context);
    if(!AppData().entitlementIsActive){
      _blocPageSplash.initPurchaseInApp().then((value) async {
        var res = ((value).codeEnum) as TypeReturnPurchase;
        switch (res) {
          case TypeReturnPurchase.TEM_DIREITO:
            break;
          case TypeReturnPurchase.NAO_TEM_OFERTA_DISPONIVEL:
            break;
          case TypeReturnPurchase.NAO_TEM_DIREITO_E_TEM_OFERTA:
            var screenHeight = (window.physicalSize.longestSide / window.devicePixelRatio);
            await showModalBottomSheet(
              useRootNavigator: true,
              isDismissible: false,
              isScrollControlled: true,
              backgroundColor: Colors.white,
              enableDrag: false,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
              ),
              context: context,
              builder: (BuildContext context) {
                return StatefulBuilder(
                    builder: (BuildContext context, StateSetter setModalState) {
                      return ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: SizedBox(
                          height: screenHeight * 0.90,
                          child: Paywall(
                            // offering: _blocPageSplash.offerings!.all.entries.first.value,
                            offering: _blocPageSplash.offerings!.current!,
                          ),
                        ),
                      );
                    });
              },
            );
            break;
          case TypeReturnPurchase.FAIL:
            break;
          case TypeReturnPurchase.SOCKET_EXCEPTION:
            break;
          case TypeReturnPurchase.TIMEOUT_EXCEPTION:
            break;
        }
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomToolbarNotSliver(
          context: context,
          colorLeadingIcon: Colors.blue,
          backgroundColor: Colors.white,
          onTapLeading: (){
            Navigator.pushReplacementNamed(context, AppRoutes.PAGE_HOME);
          }, title: "Levadas", onActionClicked: () {  }),
      body: StreamBuilder<bool>(
          initialData: true,
          stream: _blocPageSplash.streamLoading,
          builder: (context, snapshot) {
            bool loading = snapshot.data ?? true;

            if (loading) {
              return _loadingDefaultRitmos();
            }
            return StreamBuilder<ApiResponse>(
                stream: _blocPageSplash.streamResponse,
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return _loadingDefaultRitmos();
                  }
                  ApiResponse response = (snapshot.data as ApiResponse);
                  TypeReturnPurchase typeReturnPurchase =
                  response.codeEnum as TypeReturnPurchase;
                  print(typeReturnPurchase);

                  switch (typeReturnPurchase) {
                    case TypeReturnPurchase.TEM_DIREITO:
                      for (int i = 0; i < _ritmos.length; i++) {
                        _ritmos[i].isLocked = false;
                      }
                      return ListView.separated(
                          itemCount: _ritmos.length,
                          separatorBuilder: (context, index) {
                            return Divider(height: 1);
                          },
                          itemBuilder: (context, index) {
                            double heightListTileRitmo =
                            getListTileRitmoHeight(context);
                            double paddingHorizontal = heightListTileRitmo * 0.05;
                            double paddingVertical = heightListTileRitmo * 0;

                            return GestureDetector(
                              onTap: () async {
                                if (_ritmos[index].isLocked) {
                                  // current offering is available, show paywall
                                  await showModalBottomSheet(
                                    useRootNavigator: true,
                                    isDismissible: false,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.white,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25.0)),
                                    ),
                                    context: context,
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(builder:
                                          (BuildContext context,
                                          StateSetter setModalState) {
                                        return Paywall(
                                          // offering: _blocPageSplash.offerings!.all.entries.first.value,
                                          offering:
                                          _blocPageSplash.offerings!.current!,
                                        );
                                      });
                                    },
                                  );
                                } else {
                                  Navigator.pushNamed(
                                      context, AppRoutes.PAGE_DETAILS,
                                      arguments: _ritmos[index]);
                                }
                              },
                              child: Container(
                                height: heightListTileRitmo,
                                color: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    vertical: paddingVertical,
                                    horizontal: paddingHorizontal),
                                child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Levada #${index + 1}',
                                                  style: TextStyle(
                                                      fontSize:
                                                      constraints.maxHeight * 0.1,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Spacer(),
                                                if (_ritmos[index].isLocked)
                                                  Icon(FontAwesomeIcons.lock,
                                                      size: getReferenceHeight(
                                                          context) *
                                                          0.33)
                                              ],
                                            ),
                                          ),
                                          if (_ritmos[index].arrows.isNotEmpty)
                                            Center(
                                              child: Container(
                                                child: FittedBox(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: _ritmos[index]
                                                        .arrows
                                                        .map(
                                                          (e) => CustomPaint(
                                                        painter: DrawArrow(
                                                            mascada: e.mascada,
                                                            down: e.down,
                                                            color: e.color,
                                                            mascadaColor:
                                                            e.mascadaColor,
                                                            borderColor:
                                                            e.borderColor,
                                                            borderStrokeWidthFraction: e
                                                                .borderStrokeWidthFraction,
                                                            backgroundColor: e
                                                                .backgroundColor),
                                                        child: Container(
                                                          width: constraints
                                                              .maxHeight *
                                                              0.2,
                                                          height: constraints
                                                              .maxHeight *
                                                              0.35,
                                                        ),
                                                      ),
                                                    )
                                                        .toList(),
                                                  ),
                                                ),
                                              ),
                                            )
                                          else
                                            Container(
                                              height: getReferenceHeight(context),
                                              child: Center(
                                                child: FittedBox(
                                                  child: Text(
                                                    _ritmos[index].sequenciaDedilhado,
                                                    style: TextStyle(
                                                        fontSize: getReferenceHeight(
                                                            context) *
                                                            0.5),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Wrap(
                                              spacing: 10,
                                              runSpacing: 10,
                                              crossAxisAlignment:
                                              WrapCrossAlignment.end,
                                              alignment: WrapAlignment.end,
                                              children: buildCategoriaRitmo(
                                                  _ritmos[index].categorias, height),
                                            ),
                                          ),
                                          Container(
                                              height: constraints.maxHeight * 0.01
                                            // child: SizedBox(height: constraints.maxHeight * 0.01)
                                          ),
                                          Container(
                                            height: constraints.maxHeight * 0.13,
                                            width: constraints.maxWidth,
                                            alignment: Alignment.centerLeft,
                                            child: FittedBox(
                                              child: Text(
                                                '${_ritmos[index].feitoPor.contains('Thayna') ? 'Professora:' : 'Instrutor:'} ${_ritmos[index].feitoPor}',
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontSize:
                                                    constraints.maxHeight * 0.1,
                                                    color: Colors.grey[400]),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    }),
                              ),
                            );
                          });
                    case TypeReturnPurchase.NAO_TEM_OFERTA_DISPONIVEL:
                      showCustomMessage(context,
                          title: "Nenhuma oferta dísponivel",
                          subtitle: "Entre em contato com o suporte",
                          emojiPathImage: Icons.info_outline, onPressed: () {
                            _blocPageSplash.initPurchaseInApp();
                          });
                      break;
                    case TypeReturnPurchase.NAO_TEM_DIREITO_E_TEM_OFERTA:
                      for (int i = 0; i < _ritmos.length; i++) {
                        if (i > 4) {
                          _ritmos[i].isLocked = true;
                        }
                      }
                      return ListView.separated(
                          itemCount: _ritmos.length,
                          separatorBuilder: (context, index) {
                            return Divider(height: 1);
                          },
                          itemBuilder: (context, index) {
                            double heightListTileRitmo =
                            getListTileRitmoHeight(context);
                            double paddingHorizontal = heightListTileRitmo * 0.05;
                            double paddingVertical = heightListTileRitmo * 0;

                            return GestureDetector(
                              onTap: () async {
                                if (_ritmos[index].isLocked) {
                                  // current offering is available, show paywall
                                  await showModalBottomSheet(
                                    useRootNavigator: true,
                                    isDismissible: false,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.white,
                                    enableDrag: false,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25.0)),
                                    ),
                                    context: context,
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(builder:
                                          (BuildContext context,
                                          StateSetter setModalState) {
                                        return ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          child: SizedBox(
                                            height: height * 0.90,
                                            child: Paywall(
                                              // offering: _blocPageSplash.offerings!.all.entries.first.value,
                                              offering: _blocPageSplash
                                                  .offerings!.current!,
                                            ),
                                          ),
                                        );
                                      });
                                    },
                                  );
                                } else {
                                  Navigator.pushNamed(
                                      context, AppRoutes.PAGE_DETAILS,
                                      arguments: _ritmos[index]);
                                }
                              },
                              child: Container(
                                height: heightListTileRitmo,
                                color: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    vertical: paddingVertical,
                                    horizontal: paddingHorizontal),
                                child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Levada #${index + 1}',
                                                  style: TextStyle(
                                                      fontSize:
                                                      constraints.maxHeight * 0.1,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Spacer(),
                                                if (_ritmos[index].isLocked)
                                                  Icon(FontAwesomeIcons.lock,
                                                      size: getReferenceHeight(
                                                          context) *
                                                          0.33)
                                              ],
                                            ),
                                          ),
                                          if (_ritmos[index].arrows.isNotEmpty)
                                            Center(
                                              child: Container(
                                                child: FittedBox(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: _ritmos[index]
                                                        .arrows
                                                        .map(
                                                          (e) => CustomPaint(
                                                        painter: DrawArrow(
                                                            mascada: e.mascada,
                                                            down: e.down,
                                                            color: e.color,
                                                            mascadaColor:
                                                            e.mascadaColor,
                                                            borderColor:
                                                            e.borderColor,
                                                            borderStrokeWidthFraction: e
                                                                .borderStrokeWidthFraction,
                                                            backgroundColor: e
                                                                .backgroundColor),
                                                        child: Container(
                                                          width: constraints
                                                              .maxHeight *
                                                              0.2,
                                                          height: constraints
                                                              .maxHeight *
                                                              0.35,
                                                        ),
                                                      ),
                                                    )
                                                        .toList(),
                                                  ),
                                                ),
                                              ),
                                            )
                                          else
                                            Container(
                                              height: getReferenceHeight(context),
                                              child: Center(
                                                child: FittedBox(
                                                  child: Text(
                                                    _ritmos[index].sequenciaDedilhado,
                                                    style: TextStyle(
                                                        fontSize: getReferenceHeight(
                                                            context) *
                                                            0.5),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Wrap(
                                              spacing: 10,
                                              runSpacing: 10,
                                              crossAxisAlignment:
                                              WrapCrossAlignment.end,
                                              alignment: WrapAlignment.end,
                                              children: buildCategoriaRitmo(
                                                  _ritmos[index].categorias, height),
                                            ),
                                          ),
                                          Container(
                                              height: constraints.maxHeight * 0.01
                                            // child: SizedBox(height: constraints.maxHeight * 0.01)
                                          ),
                                          Container(
                                            height: constraints.maxHeight * 0.13,
                                            width: constraints.maxWidth,
                                            alignment: Alignment.centerLeft,
                                            child: FittedBox(
                                              child: Text(
                                                '${_ritmos[index].feitoPor.contains('Thayna') ? 'Professora:' : 'Instrutor:'} ${_ritmos[index].feitoPor}',
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontSize:
                                                    constraints.maxHeight * 0.1,
                                                    color: Colors.grey[400]),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    }),
                              ),
                            );
                          });
                    case TypeReturnPurchase.FAIL:
                      return showCustomMessage(context,
                          title: "Internet não disponivel",
                          subtitle:
                          "Verifique sua conexão com a internet e tente novamente",
                          emojiPathImage: Icons.info_outline, onPressed: () {
                            _blocPageSplash.initPurchaseInApp();
                          });
                    case TypeReturnPurchase.SOCKET_EXCEPTION:
                      return showCustomMessage(context,
                          title: "Internet não disponivel",
                          subtitle:
                          "Verifique sua conexão com a internet e tente novamente",
                          emojiPathImage: Icons.info_outline, onPressed: () {
                            _blocPageSplash.initPurchaseInApp();
                          });
                    case TypeReturnPurchase.TIMEOUT_EXCEPTION:
                      return showCustomMessage(context,
                          title: "Internet não disponivel",
                          subtitle:
                          "Verifique sua conexão com a internet e tente novamente",
                          emojiPathImage: Icons.info_outline, onPressed: () {
                            _blocPageSplash.initPurchaseInApp();
                          });
                  }
                  return showCustomMessage(context,
                      title: "Internet não disponivel",
                      subtitle:
                      "Verifique sua conexão com a internet e tente novamente",
                      emojiPathImage: Icons.info_outline, onPressed: () {
                        _blocPageSplash.initPurchaseInApp();
                      });
                });
          })
    );
  }


  List<Widget> buildCategoriaRitmo(List<Categoria> categorias, double height) {
    return categorias
        .map((e) => Container(
              decoration: BoxDecoration(
                  color: e.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: e.borderColor, width: 1)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  e.nome,
                  style: TextStyle(
                      color: e.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: height > 800 ? height * 0.02 : height * 0.022),
                ),
              ),
            ))
        .toList();
  }

  _loadingDefaultRitmos() {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: Colors.grey[300] as Color,
        highlightColor: Colors.grey[100] as Color,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Container(
              height: getReferenceHeight(context) * 0.3,
              width: size.width,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.35),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.1),
            Container(
              width: double.infinity,
              height: getReferenceHeight(context) * 3,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Container(
              height: getReferenceHeight(context) * 0.3,
              width: size.width,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.35),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.1),
            Container(
              width: double.infinity,
              height: getReferenceHeight(context) * 3,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Container(
              height: getReferenceHeight(context) * 0.3,
              width: size.width,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.35),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.1),
            Container(
              width: double.infinity,
              height: getReferenceHeight(context) * 3,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Container(
              height: getReferenceHeight(context) * 0.3,
              width: size.width,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.35),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
            SizedBox(height: getReferenceHeight(context) * 0.1),
            Container(
              width: double.infinity,
              height: getReferenceHeight(context) * 3,
              margin: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showCustomMessage(BuildContext context,
    {required String title,
    required String subtitle,
    required IconData emojiPathImage,
    required VoidCallback onPressed}) {
  return Column(
    children: [
      Expanded(
          child: Container(
        child: Center(
          child: PageFeedbackDefault(
            title: title,
            subtitle: subtitle,
            emojiPathImage: emojiPathImage,
            margin: EdgeInsets.zero,
            onPressedTryAgain: () {
              onPressed();
            },
          ),
        ),
      )),
      SizedBox(height: getReferenceHeight(context))
    ],
  );
}

class PageFeedbackDefault extends StatelessWidget {
  final IconData emojiPathImage;
  final String title;
  final String subtitle;
  final EdgeInsets margin;
  bool isTextSubtitleWithSpan;
  VoidCallback onPressedTryAgain;
  var splitPattern;

  PageFeedbackDefault({
    required this.emojiPathImage,
    required this.title,
    required this.margin,
    required this.onPressedTryAgain,
    this.isTextSubtitleWithSpan = false,
    this.splitPattern,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> subtitleSplit = [];
    if (isTextSubtitleWithSpan) {
      subtitleSplit = subtitle.split(splitPattern);
    }
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.03),
      height: size.height * 0.62,
      width: size.width * 0.9,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    height: getReferenceHeight(context) * 2,
                    width: getReferenceHeight(context) * 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1.3, 1.3),
                            blurRadius: 3,
                            color: Colors.grey[500] as Color)
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.all(getReferenceHeight(context) * 0.5),
                      child: Icon(
                        emojiPathImage,
                        size: getReferenceHeight(context),
                      ),
                    )),
              ),
              SizedBox(
                height: getReferenceHeight(context) * 0.4,
              ),
              Container(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getReferenceHeight(context) * 0.4,
                    fontFamily: FontsApp.mulishRegular,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: getReferenceHeight(context) * 0.4,
              ),
              if (!isTextSubtitleWithSpan)
                Text(
                  subtitle,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: getReferenceHeight(context) * 0.3,
                    fontFamily: FontsApp.mulishRegular,
                    color: Color(0xFF313131),
                  ),
                )
              else
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getReferenceHeight(context) * 0.3),
                      children: <TextSpan>[
                        TextSpan(
                          text: subtitleSplit[0],
                          style: TextStyle(
                              color: Color(0xFF313131),
                              fontFamily: FontsApp.mulishRegular),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                            text: '',
                            style: TextStyle(
                              color: Color(0xFF050072),
                              decoration: TextDecoration.underline,
                              fontFamily: FontsApp.mulishRegular,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                print('');
                              }),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: subtitleSplit[1],
                          style: TextStyle(
                              color: Color(0xFF313131),
                              fontFamily: FontsApp.mulishRegular),
                        ),
                      ]),
                ),
              SizedBox(
                height: getReferenceHeight(context) * 0.3,
              ),
              Center(
                child: SizedBox(
                  height: getReferenceHeight(context) * 0.9,
                  child: OutlinedButton(
                    onPressed: () {
                      onPressedTryAgain();
                    },
                    child: Text(
                      "Tentar novamente",
                      style: TextStyle(
                          fontSize: getReferenceHeight(context) * 0.33,
                          color: Colors.blue),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
