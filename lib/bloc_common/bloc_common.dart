
import 'package:flutter/material.dart';

class BlocCommon {
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
}