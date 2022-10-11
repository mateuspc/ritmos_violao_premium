import 'dart:io';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

rateThisApp() async {
  await PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
    String d = packageInfo.packageName;
    if(Platform.isIOS){
      _launch('https://apps.apple.com/app/$d?action=write-review');
    }else{
      var url = 'https://play.google.com/store/apps/details?id=$d';
      _launch(url);
    }
  });
}

shareThisAppWithFriends() async{
  await PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
    String d = packageInfo.packageName;

    var message = '';
    if(Platform.isIOS){
      message = 'https://apps.apple.com/app/$d';
      _share(message);
    } else{
      message = 'Aprender a fazer ritmos no violão: https://play.google.com/store/apps/details?id=$d';
      _share(message);
    }

  });
}

showTermosUso(){
  _launch('https://sites.google.com/view/aprenderritmosviolaotermos/');
}

showPoliticaPrivacidade(){
  _launch('https://sites.google.com/view/politicaprivacidadedevfullapps/');
}

showAllAppsDevfull(){
  _launch('https://play.google.com/store/apps/dev?id=8327589753125275908');
}

showSobreDialog(context) async {
  await PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
    String appName = packageInfo.appName;
    String version = packageInfo.version;
    showAboutDialog(context: context,
      applicationIcon: Container(
        width: 50,
          height: 50,
          child: Image.asset('assets/icon/icone.png')),
      applicationName: appName,
      children: [
        Text('Criado por Devfull Apps')
      ],
      applicationVersion: version);
  });
}


enviarEmailParaEquipe(){

  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'mateusfabric@gmail.com',
      queryParameters: {
        'subject': ''
      }
  );
  _launch(_emailLaunchUri.toString());
}

abrirLink(String link){
  _launch(link);
}

_share(String message){
  Share.share(message);
}

_launch(String url) async{
  if (await canLaunchUrl(Uri.parse(url))) {
  await launchUrl(Uri.parse(url));
  } else {
  throw 'Could not launch $url';
  }
}