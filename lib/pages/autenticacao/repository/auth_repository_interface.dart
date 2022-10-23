import 'package:ritmos_de_violao_premium/models/api_response.dart';
import 'package:ritmos_de_violao_premium/pages/autenticacao/models/request_login_model.dart';

abstract class AuthRepositoryInterface {
  Future<void> sendPasswordResetEmail(String email);
  Future<ApiResponse> createUserWithEmailAndPassword({required RequestLoginModel userData});
  Future<ApiResponse> signInWithEmailAndPassword({required RequestLoginModel userData});
  // Future<void> changePassword(int? userId, String? password);
  // Future<ApiResponse> loginWithGoogle();
  // Future<ApiResponse> loginWithFacebook();
  // Future<ApiResponse> loginWithApple();
}
