import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/bloc/bloc_page_cadastro.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/models/request_login_model.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/repository/auth_repository.dart';
import 'package:ritmos_de_violao_premium/styles/app_dimens.dart';
import 'package:ritmos_de_violao_premium/utils/app_routes.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_text_field_responsive.dart';
import 'package:ritmos_de_violao_premium/widgets/custom_toolbar.dart';
import 'package:ritmos_de_violao_premium/widgets/elevated_button_custom.dart';
import 'package:ritmos_de_violao_premium/widgets/loading_default.dart';

class PageCadastro extends StatefulWidget {
  const PageCadastro({Key? key}) : super(key: key);

  @override
  State<PageCadastro> createState() => _PageCadastroState();
}

class _PageCadastroState extends State<PageCadastro> {

  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  final _focusNodeEmail = FocusNode();
  final _focusNodeSenha = FocusNode();

  final _blocPageCadastro = BlocPageCadastro();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _focusNodeEmail.dispose();
    _focusNodeSenha.dispose();
    _blocPageCadastro.dispose();
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
                    stream: _blocPageCadastro.email,
                    initialData: "",
                    builder: (context, snapshot) {
                      return CustomTextFieldReponsive(
                        controller: _emailController,
                        hintText: 'Email', labelText: 'Email',
                        onSubmmited: () {  },
                        validator: _blocPageCadastro.validatorStr(snapshot),
                        errorText: _blocPageCadastro.errorTextStr(snapshot),
                        changeText: (String text) {
                          _blocPageCadastro.validateSenhaOnly();
                          _blocPageCadastro.sinkEmail.add(text);
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
                  stream: _blocPageCadastro.senha,
                  builder: (context, snapshot) {
                    return CustomTextFieldReponsive(
                      controller: _senhaController,
                      hintText: 'Senha',
                      labelText: 'Senha',
                      obscureText: true,
                      onSubmmited: () {  },
                      validator: _blocPageCadastro.validatorStr(snapshot), 
                      errorText: _blocPageCadastro.errorTextStr(snapshot),
                      changeText: (String text) {
                        _blocPageCadastro.validateEmailOnly();
                        _blocPageCadastro.sinkSenha.add(text);
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
                  _blocPageCadastro.validateFields();

                  Stream<bool> lastDateValidator = _blocPageCadastro.submitValidForm;

                  bool validate = await lastDateValidator.first;

                  if(validate){
                    showLoading(context);
                    var requestModel = RequestLoginModel(_emailController.text, _senhaController.text);
                    ApiResponse apiResponse = await _blocPageCadastro.createUserWithEmailAndPassword(
                        requestModel
                    );
                    TypeReturnCreateUserEmailAndPassword typeReturn =
                    apiResponse.codeEnum as TypeReturnCreateUserEmailAndPassword;

                    print(typeReturn);
                    Navigator.pop(context);
                    switch(typeReturn){
                      case TypeReturnCreateUserEmailAndPassword.SUCCESS:
                        _showDefaultDialog(context, title: "Sucesso",
                            subtitle: "Novo usuário criado com sucesso!").then((value) {
                              Navigator.pushNamedAndRemoveUntil(context, AppRoutes.PAGE_HOME, (route) => false);
                        });

                        break;
                      case TypeReturnCreateUserEmailAndPassword.FAIL:
                        _showDefaultDialog(context, title: "Falha",
                            subtitle: "Aconteceu um problema desconhecido");
                        break;
                      case TypeReturnCreateUserEmailAndPassword.WEAK_PASSWORD:
                        _showDefaultDialog(context, title: "Senha fraca",
                            subtitle: "Digite uma senha mais forte e tente novamente");
                        break;
                      case TypeReturnCreateUserEmailAndPassword.EMAIL_ALREADY_IN_USE:
                        _showDefaultDialog(context, title: "Email já existe cadastrado",
                            subtitle: "O email informado já esta cadastrado na nossa base de dados");
                        break;
                    }
                  }
                },
                text: 'Cadastrar',
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: getReferenceHeight(context) * 0.2,),
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