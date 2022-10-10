import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/bloc/bloc_page_login.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/models/request_login_model.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/repository/auth_repository.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_text_field_responsive.dart';
import 'package:ritmos_de_violao_premium/widgets/elevated_button_custom.dart';
import 'package:ritmos_de_violao_premium/widgets/loading_default.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {

  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  final _focusNodeEmail = FocusNode();
  final _focusNodeSenha = FocusNode();

  final _auth = FirebaseAuth.instance;

  final _blocPageLogin = BlocPageLogin();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _focusNodeEmail.dispose();
    _focusNodeSenha.dispose();
    _blocPageLogin.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
             SliverToBoxAdapter(
               child: SizedBox(height: getReferenceHeight(context),),
             ),
             SliverToBoxAdapter(
               child: Container(
                   height: getReferenceHeight(context) * 2.5,
                   child: Image.asset("assets/icone/icone_sf.png")
               ),
             ),
            SliverToBoxAdapter(
              child: StreamBuilder<String>(
                stream: _blocPageLogin.email,
                initialData: "",
                builder: (context, snapshot) {
                  return CustomTextFieldReponsive(
                    controller: _emailController,
                    hintText: 'Email', labelText: 'Email',
                    onSubmmited: () {  },
                    validator: _blocPageLogin.validatorStr(snapshot),
                    errorText: _blocPageLogin.errorTextStr(snapshot),
                    changeText: (String text) {
                      _blocPageLogin.sinkEmail.add(text);
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
              child: SizedBox(height: getReferenceHeight(context) * 0.2,),
            ),
            SliverToBoxAdapter(
                child: StreamBuilder<String>(
                  stream: _blocPageLogin.senha,
                  initialData: "",
                  builder: (context, snapshot) {
                    return CustomTextFieldReponsive(
                      controller: _senhaController,
                      hintText: 'Senha',
                      labelText: 'Senha',
                      obscureText: true,
                      onSubmmited: () {  },
                      validator: _blocPageLogin.validatorStr(snapshot),
                      errorText: _blocPageLogin.errorTextStr(snapshot),
                      changeText: (String text) {
                        _blocPageLogin.validateEmailOnly();
                        _blocPageLogin.sinkSenha.add(text);
                      },
                      focusNode: _focusNodeSenha,
                      onFocus: (bool value) {  },
                      onTap: () {  },
                      onTapTrealing: () {  },
                      textInputType: TextInputType.visiblePassword,
                    );
                  }
                )
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: getReferenceHeight(context) * 0.3,),
            ),
            SliverToBoxAdapter(
              child: ElevatedButtonCustom(
                onPressed: () async {
                  _blocPageLogin.validateFields();
                   Stream<bool> lastDateValidator = _blocPageLogin.submitValidForm;

                   bool validate = await lastDateValidator.first;

                   if(validate){
                     showLoading(context);
                     var requestModel = RequestLoginModel(_emailController.text, _senhaController.text);
                     ApiResponse apiResponse = await _blocPageLogin.signInWithEmailAndPassword(
                         requestModel
                     );
                     TypeReturnLoginEmailAnPassword typeReturn =
                     apiResponse.codeEnum as TypeReturnLoginEmailAnPassword;

                     print(typeReturn);
                     Navigator.pop(context);
                     switch(typeReturn){

                       case TypeReturnLoginEmailAnPassword.SUCCESS:
                         Navigator.pushNamedAndRemoveUntil(context, AppRoutes.PAGE_HOME, (route) => false);
                         break;
                       case TypeReturnLoginEmailAnPassword.FAIL:
                         _showDefaultDialog(context, title: "Falha",
                             subtitle: "Aconteceu um problema desconhecido");
                         break;
                       case TypeReturnLoginEmailAnPassword.USER_NOT_FOUND:
                         _showDefaultDialog(context, title: "Usuário não encotrado!",
                             subtitle: "Usuário não possui cadastro na nossa base de dados");
                         break;
                       case TypeReturnLoginEmailAnPassword.WRONG_PASSWORD:
                         _showDefaultDialog(context, title: "Senha incorreta!",
                             subtitle: "A senha informada esta incorreta");
                         break;
                     }
                   }

                },
                text: 'Entrar',
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, AppRoutes.PAGE_ESQUECI_MINHA_SENHA);
                },
                    child: Text("Esqueci minha senha", style: TextStyle(
                      color: Colors.blue
                    ),)),
              ),
            ),
            SliverToBoxAdapter(
              child: ElevatedButtonCustom(
                onPressed: () {
                 Navigator.pushNamed(context, AppRoutes.PAGE_CADASTRO);
                },
                themeLight: true,
                text: 'Fazer cadastro',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDefaultDialog(BuildContext context, {required String title,
    required String subtitle}) {
                 showDialog(context: context,
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
