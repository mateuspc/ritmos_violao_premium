import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ritmos_de_violao_premium/data/data_acordes_violao.dart';
import 'package:ritmos_de_violao_premium/models/acorde.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/page_splash/bloc/bloc_page_splash.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/models/singleton_data.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/page_paywall.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/utils/enums.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:ritmos_de_violao_premium/widgets/nota_list_tile.dart';
import 'package:shimmer/shimmer.dart';

class PageAcordes extends StatefulWidget {
  @override
  _PageAcordesState createState() => _PageAcordesState();
}

class _PageAcordesState extends State<PageAcordes> {
  late List<Acorde> _acordes;
  bool firstAccess = true;
  late BlocPageSplash _blocPageSplash;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (firstAccess) {
      firstAccess = false;
      _blocPageSplash = Provider.of<BlocPageSplash>(context);
      if(!AppData().entitlementIsActive){
        _blocPageSplash.initPurchaseInApp();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _acordes = DicionarioAcordesViolao.getAcordesPreviewHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomToolbarNotSliver(
          context: context,
          colorLeadingIcon: Colors.orange,
          backgroundColor: Colors.white,
          onTapLeading: (){
            Navigator.pop(context);
          }, title: "Campo harmônico", onActionClicked: () {  }),
      body: StreamBuilder<bool>(
          stream: _blocPageSplash.streamLoading,
          builder: (context, snapshot) {
            bool loading = snapshot.data ?? true;

            if (loading) {
              return _loadingAcordes();
            }


            return StreamBuilder<ApiResponse>(
              stream: _blocPageSplash.streamResponse,
              builder: (context, snapshot) {

                if(snapshot.data == null){
                  return _loadingAcordes();
                }
                ApiResponse response = (snapshot.data as ApiResponse);
                TypeReturnPurchase typeReturnPurchase = response.codeEnum as TypeReturnPurchase;
                print(typeReturnPurchase);

                switch(typeReturnPurchase){

                  case TypeReturnPurchase.TEM_DIREITO:
                    for (int i = 0; i < _acordes.length; i++) {
                      _acordes[i].isLocked = false;
                    }
                    return ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Divider(height: 1);
                        },
                        itemCount: _acordes.length,
                        itemBuilder: (context, index) {
                          return NotaListTile(
                              acorde: _acordes[index],
                              onTap: () async {
                                if (_acordes[index].isLocked) {
                                  // current offering is available, show paywall
                                  var res = await showModalBottomSheet(
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
                                            height: MediaQuery.of(context).size.height * 0.90,
                                            child: Paywall(
                                              // offering: _blocPageSplash.offerings!.all.entries.first.value,
                                              offering:
                                              _blocPageSplash.offerings!.current!,
                                            ),
                                          ),
                                        );
                                      });
                                    },
                                  );

                                  if(res != null){
                                    print("Resposta da tela de compra: $res");
                                  }
                                } else {
                                  Navigator.of(context).pushNamed(
                                      AppRoutes.PAGE_CAMPO_HARMONICO,
                                      arguments: _acordes[index]);
                                }

                              },
                              tabMode: TabMode.ACORDES);
                        });
                  case TypeReturnPurchase.NAO_TEM_OFERTA_DISPONIVEL:
                    break;
                  case TypeReturnPurchase.NAO_TEM_DIREITO_E_TEM_OFERTA:
                      for (int i = 0; i < _acordes.length; i++) {
                        if (i > 6) {
                          _acordes[i].isLocked = true;
                        }
                      }
                    return ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Divider(height: 1);
                        },
                        itemCount: _acordes.length,
                        itemBuilder: (context, index) {
                          return NotaListTile(
                              acorde: _acordes[index],
                              onTap: () async {
                                if (_acordes[index].isLocked) {
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
                                            height: MediaQuery.of(context).size.height * 0.90,
                                            child: Paywall(
                                              // offering: _blocPageSplash.offerings!.all.entries.first.value,
                                              offering:
                                              _blocPageSplash.offerings!.current!,
                                            ),
                                          ),
                                        );
                                      });
                                    },
                                  );
                                } else {
                                  Navigator.of(context).pushNamed(
                                      AppRoutes.PAGE_CAMPO_HARMONICO,
                                      arguments: _acordes[index]);
                                }

                              },
                              tabMode: TabMode.ACORDES);
                        });
                  case TypeReturnPurchase.FAIL:
                    return showCustomMessage(context,
                        title: "Internet não disponivel",
                        subtitle: "Verifique sua conexão com a internet e tente novamente",
                        emojiPathImage: Icons.info_outline,
                        onPressed: (){
                          _blocPageSplash.initPurchaseInApp();
                        });
                    case TypeReturnPurchase.SOCKET_EXCEPTION:
                    return showCustomMessage(context,
                        title: "Internet não disponivel",
                        subtitle: "Verifique sua conexão com a internet e tente novamente",
                        emojiPathImage: Icons.info_outline,
                        onPressed: (){
                          _blocPageSplash.initPurchaseInApp();
                        });
                    case TypeReturnPurchase.TIMEOUT_EXCEPTION:
                      return showCustomMessage(context,
                          title: "Internet não disponivel",
                          subtitle: "Verifique sua conexão com a internet e tente novamente",
                          emojiPathImage: Icons.info_outline,
                          onPressed: (){
                            _blocPageSplash.initPurchaseInApp();
                          });
                }
                return Container();
              }
            );
          }),
    );
  }

  _loadingAcordes() {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: Colors.grey[300] as Color,
        highlightColor: Colors.grey[100] as Color,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
            SizedBox(height: getReferenceHeight(context) * 0.2),
            Row(
              children: [
                Container(
                  width: getReferenceHeight(context) ,
                  height: getReferenceHeight(context) ,
                  margin: EdgeInsets.only(
                      left: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(getReferenceHeight(context) * 0.2),
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.6,
                      height: getReferenceHeight(context) * 0.3,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(getReferenceHeight(context) * 0.2),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getReferenceHeight(context) * 0.3,),
                    Container(
                      width: size.width * 0.4,
                      height: getReferenceHeight(context) * 0.3 ,
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
              ],

            ),
          ],

        ),
      ),
    );
  }
}

showCustomMessage(BuildContext context, {required String title, required String subtitle,
  required IconData emojiPathImage, required VoidCallback onPressed}){
  return Column(
    children: [
      Expanded(child: Container(
        child: Center(
          child: PageFeedbackDefault(title: title,
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
      margin:  EdgeInsets.only(top: size.height * 0.03),
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
                      padding: EdgeInsets.all(getReferenceHeight(context) * 0.5),
                      child: Icon(emojiPathImage, size: getReferenceHeight(context),),
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
                      style: TextStyle(color: Colors.black, fontSize: getReferenceHeight(context) * 0.3),
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
                    child: Text("Tentar novamente",
                      style: TextStyle(
                          fontSize: getReferenceHeight(context) * 0.33,
                          color: Colors.blue
                      ),),
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
