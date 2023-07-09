
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/bloc_common/bloc_common.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/models/request_login_model.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/repository/auth_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:validators/validators.dart';

class BlocPageLogin{

  bool validatorStr(AsyncSnapshot<String> snapshot, { bool enabled = true}) {
    if(enabled){
      return snapshot.hasError ? true : false;
    }
    return false;
  }
  String errorTextStr(AsyncSnapshot<String> snapshot, { bool enabled = true}) {
    if(enabled){
      return snapshot.hasError ? snapshot.error.toString() : "";
    }
    return '';
  }

  final _isLoading = BehaviorSubject<bool>.seeded(true);
  Stream<bool> get streamLoading => _isLoading.stream;
  Sink<bool> get sinkLoading => _isLoading.sink;


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

  final _senha= BehaviorSubject<String>.seeded("");
  Stream<String> get senha => _senha.stream.transform(validaSenha);
  Sink<String> get sinkSenha => _senha.sink;

  final validaSenha = StreamTransformer<String, String>.fromHandlers(
      handleData: (value, sink){
        sink.add(value);
      }
  );

  final _isObscureText = BehaviorSubject<bool>.seeded(true);
  Stream<bool> get streamObscureText => _isLoading.stream;
  Sink<bool> get sinkObscureText => _isLoading.sink;

  validateEmailOnly(){
    _email.add(_email.value);
  }
  validateSenhaOnly(){
    _senha.add(_senha.value);
  }
  bool validateFields(){
    if(_email.value.isEmpty){
      _email.addError("Obrigatório!");
    }

    if(_senha.value.isEmpty){
      _senha.addError("Obrigatório!");
    }

    if(_email.hasError || _senha.hasError){
      return false;
    }
    return true;
  }
  Stream<bool> get submitValidForm => Rx.combineLatest2(
    _email,
    _senha,
        (a, b){
      return true;
    },
  );

  Future<ApiResponse> signInWithEmailAndPassword(RequestLoginModel request) async {
    _isLoading.add(true);
    ApiResponse response =  await AuthRespository().signInWithEmailAndPassword(userData: request);
    _isLoading.add(false);
    return response;
  }

  dispose(){
    _isLoading.close();
    _email.close();
    _senha.close();
  }

}