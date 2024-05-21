import 'dart:io';

import 'package:flutter/material.dart';

import '../../styles/app_dimens.dart';
import '../../widgets/leading_app_bar.dart';
import '../../widgets/title_app_bar.dart';

class PageAssinatura extends StatefulWidget {
  const PageAssinatura({super.key});

  @override
  State<PageAssinatura> createState() => _PageAssinaturaState();
}

class _PageAssinaturaState extends State<PageAssinatura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getToolbarHeight(context),
        leading: LeadingAppBar(onPressed: (){
          // showAd();
          Navigator.pop(context);
        }),
        title: TitleAppBar(title: 'Sobre assinatura'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Gerenciando Sua PageAssinatura',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            if(Platform.isAndroid)
              _buildSectionTitle('Para Assinantes do Android:'),
            if(Platform.isAndroid)
              _buildSectionText('1. Abra o app Google Play Store em seu dispositivo Android.\n2. Toque no ícone do Menu ☰ e selecione "PageAssinaturas".\n3. Encontre a assinatura que deseja gerenciar e toque nela.\n4. Aqui, você pode escolher "Renovar", "Cancelar" ou modificar sua assinatura.'),
            if(Platform.isIOS)
              SizedBox(height: 16),
            if(Platform.isIOS)
              _buildSectionTitle('Para Assinantes do iOS:'),
            if(Platform.isIOS)
              _buildSectionText('1. Acesse as "Configurações" em seu dispositivo iOS e toque no seu nome.\n2. Toque em "PageAssinaturas".\n3. Selecione a assinatura que deseja modificar.\n4. Aqui, você tem a opção de alterar ou cancelar sua assinatura.'),
            SizedBox(height: 16),
            Text(
              'Perguntas Frequentes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildSectionText('- Como cancelo minha assinatura? Siga as instruções acima baseadas na plataforma pela qual você adquiriu sua assinatura. O cancelamento se tornará efetivo no final do período de faturamento atual.\n\n- Posso obter um reembolso? Nossa política de reembolso varia dependendo da plataforma de compra. Por favor, consulte os termos e condições específicos no momento da compra ou entre em contato com nosso suporte ao cliente para mais informações.\n\n- Como posso atualizar minha forma de pagamento? Para assinaturas adquiridas através de Android ou iOS, atualize sua forma de pagamento diretamente através da Google Play Store ou App Store, respectivamente.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16,
          fontWeight: FontWeight.bold),
    );
  }

  Widget _buildSectionText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 14),
    );
  }
}