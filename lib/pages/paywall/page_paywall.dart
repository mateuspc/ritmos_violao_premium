import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/constants/constants.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/models/singleton_data.dart';
import 'package:ritmos_de_violao_premium/pages/termos_e_politicas/models/abrir_link_webview_model.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/styles/app_fonts.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';

class Paywall extends StatefulWidget {
  final Offering offering;

  const Paywall({Key? key, required this.offering}) : super(key: key);

  @override
  _PaywallState createState() => _PaywallState();
}

class _PaywallState extends State<Paywall> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SafeArea(
        child: Wrap(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  width: size.width,
                  color: Colors.blue,
                  child: Image.asset("assets/capa_ofertas/capa_anuncio_premium.png"),
                ),
                Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close,
                        color: Colors.grey,
                        size: getReferenceHeight(context) * 0.55,),
                    )
                )
              ],
            ),
            Container(
              height: 70.0,
              width: double.infinity,
              decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(0))),
              child: Center(
                  child:
                  Text('✨ RITMOS DE VIOLÃO PREMIUM', style: TextStyle(
                    color: Colors.black,
                    fontFamily: FontsApp.mulishBold,
                    fontSize: getReferenceHeight(context) * 0.33
                  ))),
            ),
             Padding(
              padding:
              EdgeInsets.only(top: getReferenceHeight(context) * 0.2,
                  bottom: 16, left: 16.0, right: 16.0),
              child: SizedBox(
                child: Text(
                  'RITMOS DE VIOLÃO PREMIUM',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                width: double.infinity,
              ),
            ),
            ListView.builder(
              itemCount: widget.offering.availablePackages.length,
              itemBuilder: (BuildContext context, int index) {
                var myProductList = widget.offering.availablePackages;
                print("myProductList: ${myProductList}");
                return Card(
                  color: myProductList[index].packageType == PackageType.monthly ? Color(0xFF00AEEF) : Color(0xFF304FFE),
                  child: ListTile(
                      onTap: () async {
                        try {
                          CustomerInfo customerInfo =
                          await Purchases.purchasePackage(
                              myProductList[index]);
                          appData.entitlementIsActive = customerInfo
                              .entitlements.all[entitlementID]!.isActive;
                        } catch (e) {
                          print(e);
                        }

                        setState(() {});
                        Navigator.pop(context);
                      },
                      title: Text(
                        myProductList[index].packageType == PackageType.monthly ? "Plano mensal" : myProductList[index].packageType == PackageType.annual ? "Plano anual(recomendado)" :myProductList[index].storeProduct.title,
                        style: kTitleTextStyle,
                      ),
                      subtitle: Text(
                        myProductList[index].storeProduct.description,
                        style: kDescriptionTextStyle.copyWith(
                            fontSize: kFontSizeSuperSmall),
                      ),
                      trailing: Text(
                          myProductList[index].storeProduct.priceString,
                          style: kTitleTextStyle)),
                );
              },
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
            ),
             Padding(
              padding:
              EdgeInsets.only(top: 32, bottom: 16, left: 16.0, right: 16.0),
              child: SizedBox(
                child: RichText(
                  text: TextSpan(
                    text: "Ao concluir a compra você concorda com os nossos ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getReferenceHeight(context) * 0.33
                    ),
                    children: [
                      TextSpan(
                        text: "termos de uso",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,

                        ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          AbrirLinkWebViewModel abrirLinkWebViewModel = AbrirLinkWebViewModel(
                              title: "Termos de uso", link: "https://sites.google.com/view/aprenderritmosviolaotermos/");
                          Navigator.pushNamed(context, AppRoutes.PAGE_OPEN_LINK_WEBVIEW,
                              arguments: abrirLinkWebViewModel);
                        },
                      ),
                      TextSpan(
                        text: ' e '
                      ),
                      TextSpan(
                          text: 'politícas de privacidade.',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline
                          ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            AbrirLinkWebViewModel abrirLinkWebViewModel = AbrirLinkWebViewModel(
                                title: "Políticas de privacidade", link: "https://sites.google.com/view/politicaprivacidadedevfullapps/");
                            Navigator.pushNamed(context, AppRoutes.PAGE_OPEN_LINK_WEBVIEW,
                                arguments: abrirLinkWebViewModel);
                          },
                      ),
                    ]
                  ),
                ),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
