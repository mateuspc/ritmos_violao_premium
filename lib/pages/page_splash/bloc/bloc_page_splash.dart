
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/constants/constants.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/models/singleton_data.dart';
import 'package:rxdart/rxdart.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

enum TypeReturnPurchase {TEM_DIREITO, NAO_TEM_OFERTA_DISPONIVEL, NAO_TEM_DIREITO_E_TEM_OFERTA}

class BlocPageSplash {

  Future<void> initPlatformState() async {
    await Purchases.setDebugLogsEnabled(true);

    late PurchasesConfiguration configuration;
    if (Platform.isAndroid) {
      configuration = PurchasesConfiguration(googleApiKey);
    } else if (Platform.isIOS) {
      configuration = PurchasesConfiguration(appleApiKey);
    }
    await Purchases.configure(configuration);
  }
  Future<ApiResponse> initPurchaseInApp() async {

    initPlatformState();
    CustomerInfo customerInfo = await Purchases.getCustomerInfo();

    if (customerInfo.entitlements.all[entitlementID] != null &&
        customerInfo.entitlements.all[entitlementID]!.isActive == true) {
       // Possui direito

      return ApiResponse.ok(result: "", codeEnum: TypeReturnPurchase.TEM_DIREITO);
    } else {
      Offerings? offerings;
      try {
        offerings = await Purchases.getOfferings();
      } on PlatformException catch (e) {

      }


      if (offerings == null || offerings.current == null) {
        // offerings are empty, show a message to your user
        return ApiResponse.ok(result: "", codeEnum: TypeReturnPurchase.NAO_TEM_OFERTA_DISPONIVEL);

      } else {
        // current offering is available, show paywall
        return ApiResponse.ok(result: "", codeEnum: TypeReturnPurchase.NAO_TEM_DIREITO_E_TEM_OFERTA);

      }
    }
  }
}