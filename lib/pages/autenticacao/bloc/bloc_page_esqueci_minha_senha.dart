
import 'dart:async';

import 'package:ritmos_de_violao_premium/bloc_common/bloc_common.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/repository/auth_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:validators/validators.dart';

class BlocEsqueciMinhaSenha with BlocCommon{
  final _isLoading = BehaviorSubject<bool>.seeded(true);
  Stream<bool> get streamLoading => _isLoading.stream;
  Sink<bool> get sinkLoading => _isLoading.sink;

  final _response = BehaviorSubject<ApiResponse>();
  Stream<ApiResponse> get streamResponse => _response.stream;
  Sink<ApiResponse> get sinkResponse => _response.sink;

  final _email = BehaviorSubject<String>.seeded("");
  Stream<String> get email => _email.stream.transform(validateEmail);
  Sink<String> get sinkEmail => _email.sink;

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (value, sink){

        var isValid = isEmail(value);
        if(isValid || value.isEmpty){
          sink.add(value);
        }else{
          sink.addError("E-mail inválido!");
        }
      }
  );

  sendPasswordResetEmail(String email) async {
    AuthRespository().sendPasswordResetEmail(email);
  }
  void dispose(){
    _response.close();
    _isLoading.close();
  }

}