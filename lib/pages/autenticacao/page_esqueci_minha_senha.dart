import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/bloc/bloc_page_esqueci_minha_senha.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_text_field_responsive.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:ritmos_de_violao_premium/widgets/elevated_button_custom.dart';

class PageEsqueciMinhaSenha extends StatefulWidget {
  const PageEsqueciMinhaSenha({Key? key}) : super(key: key);

  @override
  State<PageEsqueciMinhaSenha> createState() => _PageEsqueciMinhaSenhaState();
}

class _PageEsqueciMinhaSenhaState extends State<PageEsqueciMinhaSenha> {

  final _emailController = TextEditingController();
  final _focusNodeEmail = FocusNode();
  final _blocEsqueciMinhaSenha = BlocEsqueciMinhaSenha();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _focusNodeEmail.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
         body: CustomScrollView(
           slivers: [
             CustomToolbar(
                 context: context,
                 colorLeadingIcon: Colors.blue,
                 backgroundColor: Colors.white,
                 onTapLeading: (){
                   Navigator.pop(context);
                 }, title: "Login", onActionClicked: () {  }),
             SliverToBoxAdapter(
               child: SizedBox(height: getReferenceHeight(context) * 0.3,),
             ),
             SliverToBoxAdapter(
                 child: StreamBuilder<String>(
                     stream: _blocEsqueciMinhaSenha.email,
                     initialData: "",
                     builder: (context, snapshot) {
                       return CustomTextFieldReponsive(
                         controller: _emailController,
                         hintText: 'Email', labelText: 'Email',
                         onSubmmited: () {  },
                         validator: _blocEsqueciMinhaSenha.validatorStr(snapshot),
                         errorText: _blocEsqueciMinhaSenha.errorTextStr(snapshot),
                         changeText: (String text) {
                           _blocEsqueciMinhaSenha.sinkEmail.add(text);
                         },
                         focusNode: _focusNodeEmail,
                         onFocus: (bool onFocus) {  },
                         onTap: () {  },
                         onTapTrealing: () {  },
                         textInputType: TextInputType.emailAddress,
                       );
                     }
                 )
             ),
             SliverToBoxAdapter(
               child: SizedBox(height: getReferenceHeight(context) * 0.3,),
             ),
             SliverToBoxAdapter(
               child: ElevatedButtonCustom(
                 text: "Redefinir senha",
                 onPressed: () {
                   print(_emailController.text);
                   if(_emailController.text.isNotEmpty){
                     _blocEsqueciMinhaSenha.sendPasswordResetEmail(_emailController.text);
                     _showDefaultDialog(context,
                         title: "Sucesso!",
                         subtitle: "Instruções de redefinição de senha enviado para o email cadastrado").then((value) => Navigator.pop(context));
                   }

                 },
               ),
             )
           ],
         ),
      ),
    );
  }
  Future<dynamic> _showDefaultDialog(BuildContext context, {required String title,
    required String subtitle}) {
    return showDialog(context: context,
        builder: (context){
          return AlertDialog(
            title: Text(title),
            content: Text(subtitle),
            actions: [
              OutlinedButton(

                  onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Ok, entendi", style: TextStyle(
                  color: Colors.blue
              ),))
            ],
          );
        });
  }
}
