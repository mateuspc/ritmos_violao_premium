
import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/constants/constants.dart';
import 'package:ritmos_de_violao_premium/pages/paywall/models/singleton_data.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:rxdart/rxdart.dart';

enum TypeReturnPurchase {TEM_DIREITO, NAO_TEM_OFERTA_DISPONIVEL,
  NAO_TEM_DIREITO_E_TEM_OFERTA, FAIL, SOCKET_EXCEPTION,
  TIMEOUT_EXCEPTION}

class BlocPageSplash {

  Offerings? offerings;


  final _isLoading = BehaviorSubject<bool>.seeded(true);
  Stream<bool> get streamLoading => _isLoading.stream;
  Sink<bool> get sinkLoading => _isLoading.sink;

  final _response = BehaviorSubject<ApiResponse>();
  Stream<ApiResponse> get streamResponse => _response.stream;
  Sink<ApiResponse> get sinkResponse => _response.sink;

  Future<ApiResponse> initPurchaseInApp() async {
    sinkLoading.add(true);
    try{

      await Purchases.setDebugLogsEnabled(true);

      late PurchasesConfiguration configuration;
      if (Platform.isAndroid) {
        configuration = PurchasesConfiguration(googleApiKey);
      } else if (Platform.isIOS) {
        configuration = PurchasesConfiguration(appleApiKey);
      }
      await Purchases.configure(configuration);

      CustomerInfo customerInfo = await Purchases.getCustomerInfo();
      print("customerInfo: ${customerInfo.activeSubscriptions}");
      print("customerInfo: ${customerInfo.entitlements.all}");
      if (customerInfo.entitlements.all[entitlementID] != null &&
          customerInfo.entitlements.all[entitlementID]!.isActive == true) {
        // Possui direito
        print("Usuario ja tem direito: true");
        sinkLoading.add(false);
        ApiResponse response = ApiResponse.ok(result: "", codeEnum: TypeReturnPurchase.TEM_DIREITO);
        sinkResponse.add(response);
        return response;
      } else {
        try {
          offerings = await Purchases.getOfferings();
          sinkLoading.add(false);
          ApiResponse response =  ApiResponse.ok(result: "", codeEnum: TypeReturnPurchase.NAO_TEM_DIREITO_E_TEM_OFERTA);
          sinkResponse.add(response);
          return response;
          print("Conseguiu recuperar as ofertas: ${offerings}");
        } on PlatformException catch (e) {
          sinkLoading.add(false);
        }



        sinkLoading.add(false);
        if (offerings == null || offerings!.current == null) {
          // offerings are empty, show a message to your user
          ApiResponse response = ApiResponse.ok(result: "", codeEnum: TypeReturnPurchase.NAO_TEM_OFERTA_DISPONIVEL);
          sinkResponse.add(response);
          return response;
        } else {
          // current offering is available, show paywall
          ApiResponse response = ApiResponse.ok(result: "", codeEnum: TypeReturnPurchase.NAO_TEM_DIREITO_E_TEM_OFERTA);
          sinkResponse.add(response);
          return response;
        }
    }

    } on TimeoutException catch(e){
      ApiResponse response = ApiResponse.error(result: "", codeEnum: TypeReturnPurchase.TIMEOUT_EXCEPTION);
      sinkResponse.add(response);
      return response;
    }
    on SocketException catch(e){
      ApiResponse response = ApiResponse.error(result: "", codeEnum: TypeReturnPurchase.SOCKET_EXCEPTION);
      sinkResponse.add(response);
      return response;
    }
    catch(e){
      sinkLoading.add(false);
      print("Script why deu falha: ${e}");
      ApiResponse response = ApiResponse.error(result: "", codeEnum: TypeReturnPurchase.FAIL);
      sinkResponse.add(response);
      return response;

    }
  }
}