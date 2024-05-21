import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/page_splash/bloc/bloc_page_splash.dart';
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

  late BlocPageSplash _blocPageSplash;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _blocPageSplash = Provider.of<BlocPageSplash>(context);

  }
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
              decoration:  const BoxDecoration(
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
              child:  const SizedBox(
                width: double.infinity,
                child: Text(
                  'RITMOS DE VIOLÃO PREMIUM',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: widget.offering.availablePackages.length,
              itemBuilder: (BuildContext context, int index) {
                var myProductList = widget.offering.availablePackages;
                return Card(
                  color: myProductList[index].packageType == PackageType.monthly ? const Color(0xFF00AEEF) : const Color(0xFF304FFE),
                  child: ListTile(
                      onTap: () async {
                        try {
                          CustomerInfo customerInfo =
                          await Purchases.purchasePackage(
                              myProductList[index]);
                          appData.entitlementIsActive = customerInfo.entitlements.all[entitlementID]!.isActive;
                          if(appData.entitlementIsActive){
                            _blocPageSplash.sinkResponse.add(ApiResponse.ok(result: "",
                                codeEnum: TypeReturnPurchase.TEM_DIREITO));
                          }else{
                            _blocPageSplash.sinkResponse.add(ApiResponse.ok(result: "",
                                codeEnum: TypeReturnPurchase.NAO_TEM_DIREITO_E_TEM_OFERTA));
                          }

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
             Center(
               child: OutlinedButtonTheme(
                 data: OutlinedButtonThemeData(
                   style: ButtonStyle(
                     surfaceTintColor: WidgetStateProperty.all(Colors.blue),
                   )
                 ),
                 child: OutlinedButton(
                     onPressed: () async {
                       try {
                        await Purchases.restorePurchases();
                         appData.appUserID = await Purchases.appUserID;

                       } on PlatformException catch (e) {

                       }
                     },
                     child: const Text("Restaurar compras", style: TextStyle(
                       color: Colors.blueGrey
                     ),)),
               ),
             ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 16, left: 16.0, right: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: Theme.of(context).platform == TargetPlatform.iOS
                    ? Text(
                    "   Ao assinar, você concorda com os Termos de Uso do App Ritmos de violão e sua assinatura Acontinuará ativa até ser cancelada. Se não desejar continuar com a sua assinatura, você pode cancelara qualquer momento acessando suas assinaturas na sua conta Apple em Ajustes > ID Apple > Assinaturas .Se você cancelar sua assinatura Premium 24 horas antes de terminar o período de teste de 7 dias gratuito, você não será cobrado."
                )
                    : Text(
                  "   Ao assinar, você concorda com os Termos de Uso do Ritmos de violão e sua assinatura  continuará ativa até ser cancelada. Se não desejar continuar com a sua assinatura, você pode cancela a qualquer momento acessando menu da Google Play Store uma sessão chamada Pagamentos e assinaturas. Se você cancelar sua assinatura Premium 24 horas antes de terminar o período de teste de 7 dias gratuito, você não será cobrado.",
                ),
              ),
            ),
             Padding(
              padding:
              const EdgeInsets.only(top: 10, bottom: 16, left: 16.0, right: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: RichText(
                  text: TextSpan(
                    text: "",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),
                    children: [
                      TextSpan(
                        text: "termos de uso",
                        style: const TextStyle(
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
                      const TextSpan(
                        text: ' e '
                      ),
                      TextSpan(
                          text: 'politícas de privacidade.',
                          style: const TextStyle(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
