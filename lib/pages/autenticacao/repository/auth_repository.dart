
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/models/request_login_model.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/repository/auth_repository_interface.dart';

enum TypeReturnLoginEmailAnPassword{ SUCCESS, FAIL, USER_NOT_FOUND, WRONG_PASSWORD }
enum TypeReturnCreateUserEmailAndPassword{ SUCCESS, FAIL, WEAK_PASSWORD, EMAIL_ALREADY_IN_USE }
class AuthRespository implements AuthRepositoryInterface{

  final _auth = FirebaseAuth.instance;

  @override
  Future<void> sendPasswordResetEmail(String email) async {
      _auth.sendPasswordResetEmail(email: email);
    }

  @override
  Future<ApiResponse> createUserWithEmailAndPassword({required RequestLoginModel userData}) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userData.email,
        password: userData.senha,
      );
      if(credential.user != null){
        return ApiResponse.ok(result: credential.user,
            codeEnum: TypeReturnCreateUserEmailAndPassword.SUCCESS);
      }
      return ApiResponse.ok(result: "",
          codeEnum: TypeReturnCreateUserEmailAndPassword.FAIL);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return ApiResponse.ok(result: "",
            codeEnum: TypeReturnCreateUserEmailAndPassword.WEAK_PASSWORD);
      } else if (e.code == 'email-already-in-use') {
        return ApiResponse.ok(result: "",
            codeEnum: TypeReturnCreateUserEmailAndPassword.EMAIL_ALREADY_IN_USE);
      }
      return ApiResponse.ok(result: "",
          codeEnum: TypeReturnCreateUserEmailAndPassword.FAIL);
    } catch (e) {
      return ApiResponse.ok(result: "",
          codeEnum: TypeReturnCreateUserEmailAndPassword.FAIL);
    }
  }


  @override
  Future<ApiResponse> signInWithEmailAndPassword({required RequestLoginModel userData}) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: userData.email,
          password: userData.senha
      );

      User? user = credential.user;
      if(user != null){
        return ApiResponse.ok(result: user, msg: "Sucesso ao fazer login",
            codeEnum: TypeReturnLoginEmailAnPassword.SUCCESS);
      }
      return ApiResponse.error(result: "", msg: "Falha ao fazer login!",
          codeEnum: TypeReturnLoginEmailAnPassword.FAIL);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return ApiResponse.error(result: "", msg: "Usuário não encontrado!",
            codeEnum: TypeReturnLoginEmailAnPassword.USER_NOT_FOUND);
      } else if (e.code == 'wrong-password') {
        return ApiResponse.error(result: "", msg: "Email ou senha esta incorreto!",
            codeEnum: TypeReturnLoginEmailAnPassword.WRONG_PASSWORD);
      }
      return ApiResponse.error(result: "", msg: "Falha ao fazer login!",
          codeEnum: TypeReturnLoginEmailAnPassword.FAIL);
    }catch(e){
      return ApiResponse.error(result: "", msg: "Falha ao fazer login!",
          codeEnum: TypeReturnLoginEmailAnPassword.FAIL);
    }
  }


  @override
  Future<ApiResponse> loginWithApple() {
    // TODO: implement loginWithApple
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse> loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse> loginWithGoogle() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      clientId: Platform.isAndroid
          ? "595608658228-h3h9h7evegjica7dejtbu0t0qgd0vibd.apps.googleusercontent.com"
          : '595608658228-gr03kgd2ab7kbae5k5r6e30bf89o9geu.apps.googleusercontent.com',
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
    if (await _googleSignIn.isSignedIn()) {
      await _googleSignIn.disconnect();
    }

    return ApiResponse.ok(result: "", msg: "", codeEnum: "");
    // try {
    // final account = await _googleSignIn.signIn();
    // if (account == null) {
    // throw FirebaseUserNotSignIn("User not completed the sign in.");
    // }
    // final authentication = await account.authentication;
    // final crendential = GoogleAuthProvider.credential(
    // accessToken: authentication.accessToken,
    // idToken: authentication.idToken,
    // );
    // return _tryLoginWithCredential(crendential);
    // } catch (e) {
    // rethrow;
    // }
  }

  @override
  Future<void> changePassword(int? userId, String? password) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }


}