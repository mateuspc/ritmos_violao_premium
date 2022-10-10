// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
//
// import 'package:dio/dio.dart';
//
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
//
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:worsky/app/shared/auth/repositories/auth_repository_interface.dart';
// import 'package:worsky/app/shared/custom_dio.dart';
// import 'package:worsky/app/shared/errors/auth_errors.dart';
// import 'package:worsky/app/shared/models/api_response_model.dart';
// import 'package:worsky/app/shared/models/request_login_model.dart';
// import 'package:worsky/app/shared/models/login_response_model.dart';
// import 'package:worsky/app/shared/models/report_media_upload_response_model.dart';
// import 'package:worsky/app/shared/models/signup_model.dart';
// import 'package:worsky/app/shared/models/user_response_model.dart';
// import 'package:worsky/app/shared/models/user_update_model.dart';
//
// class AuthRepositoryApi implements AuthRepositoryInterface {
//   CustomDio _dio = Modular.get();
//   final _auth = FirebaseAuth.instance;
//
//   @override
//   Future<LoginResponseModel> login({required LoginRequestModel userData}) async {
//     try {
//       var resp = await _dio.client.post(
//         '/oauth/token',
//         data: userData.toMap(),
//         options: Options(headers: {
//           'Content-Type': 'application/x-www-form-urlencoded',
//         }),
//       );
//       if (resp.statusCode == 200) {
//         return LoginResponseModel.fromMap(resp.data);
//       } else {
//         switch (resp.statusCode) {
//           case 400:
//             throw Exception(resp.data['data']['error'] ?? "");
//           case 401:
//             throw Exception('Invalid e-mail or username. Please verify and try again.');
//           case 403:
//             throw Exception('Confirm your email before logging in.');
//           case 500:
//             throw Exception('An error has occurred on the server.');
//           default:
//             throw Exception('');
//         }
//       }
//     } on DioError catch (error) {
//       log(error.response?.data);
//       if (error.response == null) {
//         throw Exception('Check your connection.');
//       }
//       switch (error.response!.statusCode) {
//         case 401:
//           throw Exception('Invalid e-mail or username. Please verify and try again.');
//         case 403:
//           print('entrou aqui');
//           throw Exception('Confirm your email before logging in.');
//         case 500:
//           throw Exception('An error has occurred on the server.');
//         default:
//           throw Exception(error.response!.statusMessage);
//       }
//     } catch (ex) {
//       throw ex;
//     }
//   }
//
//   @override
//   Future<ApiResponseModel?> updateUser({
//     required UserUpdateModel data,
//   }) async {
//     try {
//       if (data.avatar != null) {
//         File file = File(data.avatar!);
//         if (await file.exists()) {
//           String? url = await uploadUserPhoto(File(data.avatar!));
//           data.avatar = url;
//         }
//       }
//       var resp = await _dio.client.put(
//         '/api/user',
//         data: data.toMap(),
//       );
//       log(data.toMap().toString());
//       if (resp.statusCode == 200) {
//         return ApiResponseModel.fromMap(resp.data);
//       }
//     } on DioError catch (err) {
//       print(err);
//       print(err.response!.statusCode);
//     } catch (ex) {
//       print(ex);
//       throw ex;
//     }
//
//     return null;
//   }
//
//   Future<String?> uploadUserPhoto(File photoFile) async {
//     String fileName = photoFile.path.split('/').last;
//     String? remotePath = '';
//
//     FormData formData = FormData.fromMap({
//       "media_type": "avatar",
//       "media": await MultipartFile.fromFile(photoFile.path, filename: fileName),
//     });
//     var resp = await _dio.client.post('/api/media', data: formData);
//     if (resp.statusCode == 200) {
//       var uploadResponse = MediaUploadResponseModel.fromMap(resp.data);
//       if (uploadResponse.success!) {
//         remotePath = MediaUploadResponseModel.fromMap(resp.data).data!.path;
//       }
//     }
//
//     return remotePath;
//   }
//
//   @override
//   Future<ApiResponseModel?> passwordReset({String? email}) async {
//     try {
//       String resetField = '';
//       if (email!.contains('@')) {
//         // Is e-mail
//         resetField = 'email';
//       } else {
//         resetField = 'username';
//       }
//       var data = {'$resetField': email};
//
//       var resp = await _dio.client.post(
//         '/api/password/store',
//         data: data,
//         options: Options(
//           headers: {
//             'Content-Type': 'application/x-www-form-urlencoded',
//           },
//         ),
//       );
//       if (resp.statusCode == 200) {
//         return ApiResponseModel(
//           success: true,
//           data: ApiResponseData(message: ''),
//         );
//       }
//     } catch (ex) {
//       print(ex);
//       throw ex;
//     }
//
//     return null;
//   }
//
//   @override
//   Future<ApiResponseModel> signup({required SignupModel data}) async {
//     try {
//       var resp = await _dio.client.post(
//         '/api/register',
//         data: data.toMap(),
//         options: Options(
//           headers: {
//             'Content-Type': 'application/x-www-form-urlencoded',
//           },
//         ),
//       );
//       if (resp.statusCode == 200 && resp.data['success']) {
//         return ApiResponseModel.fromMap(resp.data);
//       } else {
//         Map<String, dynamic> error = resp.data['data']['errors'];
//         String message = error.values.map((e) => e[0]).join('\n');
//         throw Exception(message);
//       }
//     } catch (ex) {
//       print(ex);
//       throw ex;
//     }
//   }
//
//   @override
//   Future<UserResponseModel> getUser() async {
//     final sp = await SharedPreferences.getInstance();
//
//     try {
//       var resp = await _dio.client.get('/api/user');
//
//       if (resp.statusCode == 200) {
//         final user = UserResponseModel.fromMap(resp.data);
//         await sp.setString(
//           "userModel",
//           json.encode(user.toMap()),
//         );
//         return user;
//       }
//     } on DioError catch (err) {
//       final userMap = sp.getString("userModel");
//       if (userMap != null) {
//         return UserResponseModel.fromMap(json.decode(userMap));
//       }
//     } catch (ex) {
//       print(ex);
//       throw ex;
//     }
//
//     return UserResponseModel(data: null, success: false);
//   }
//
//   @override
//   Future<UserResponseModel> getUserByEmail({String? email}) async {
//     try {
//       var resp = await _dio.client.get('/api/user');
//
//       if (resp.statusCode == 200) {
//         print("Json" + resp.data.toString());
//         return UserResponseModel.fromMap(resp.data);
//       }
//     } on DioError catch (err) {
//       print(err);
//     } catch (ex) {
//       print(ex);
//       throw ex;
//     }
//
//     return UserResponseModel(data: null, success: false);
//   }
//
//   @override
//   Future<List<String>?> getFollowingAirports() async {
//     try {
//       var resp = await _dio.client.get('/api/user/following');
//
//       if (resp.statusCode == 200) {
//         return List.from(resp.data).map((e) {
//           return '${e['id']}_${e['icao']}';
//         }).toList();
//       }
//     } on DioError catch (err) {
//       print(err);
//     } catch (ex) {
//       print(ex);
//       throw ex;
//     }
//
//     return null;
//   }
//
//   @override
//   Future<void> changePassword(int? userId, String? password) async {
//     try {
//       var resp = await _dio.client.post(
//         '/api/password/change/$userId',
//         data: {
//           'password': password,
//           'password_confirmation': password,
//         },
//       );
//
//       if (resp.statusCode == 200 && resp.data['success'] == true) {
//         return;
//       } else {
//         throw Exception('An error has occurred');
//       }
//     } on DioError catch (err) {
//       print(err);
//     } catch (ex) {
//       print(ex);
//       throw ex;
//     }
//   }
//
//   @override
//   Future<User> loginWithGoogle() async {
//     GoogleSignIn _googleSignIn = GoogleSignIn(
//       clientId: Platform.isAndroid
//           ? "595608658228-h3h9h7evegjica7dejtbu0t0qgd0vibd.apps.googleusercontent.com"
//           : '595608658228-gr03kgd2ab7kbae5k5r6e30bf89o9geu.apps.googleusercontent.com',
//       scopes: [
//         'email',
//         'https://www.googleapis.com/auth/contacts.readonly',
//       ],
//     );
//     if (await _googleSignIn.isSignedIn()) {
//       await _googleSignIn.disconnect();
//     }
//     try {
//       final account = await _googleSignIn.signIn();
//       if (account == null) {
//         throw FirebaseUserNotSignIn("User not completed the sign in.");
//       }
//       final authentication = await account.authentication;
//       final crendential = GoogleAuthProvider.credential(
//         accessToken: authentication.accessToken,
//         idToken: authentication.idToken,
//       );
//       return _tryLoginWithCredential(crendential);
//     } catch (e) {
//       rethrow;
//     }
//   }
//
//   @override
//   Future<User> loginWithApple() async {
//     final appleResult = await SignInWithApple.getAppleIDCredential(
//       scopes: [
//         AppleIDAuthorizationScopes.email,
//         AppleIDAuthorizationScopes.fullName,
//       ],
//     );
//
//     final oAuth = OAuthProvider('apple.com');
//     final credential = oAuth.credential(
//       idToken: appleResult.identityToken,
//       accessToken: appleResult.authorizationCode,
//     );
//     return _tryLoginWithCredential(credential);
//   }
//
//   @override
//   Future<User> loginWithFacebook() async {
//     await FacebookAuth.i.logOut();
//     final result = await FacebookAuth.instance.login();
//
//     switch (result.status) {
//       case LoginStatus.success:
//         final credential = FacebookAuthProvider.credential(result.accessToken!.token);
//         return _tryLoginWithCredential(credential);
//
//       case LoginStatus.cancelled:
//         throw FirebaseUserNotSignIn("User not completed the sign in.");
//       case LoginStatus.failed:
//         throw FacebookException("User login fail.");
//       case LoginStatus.operationInProgress:
//         throw FacebookException("User login in progress");
//     }
//   }
//
//   @override
//   Future<LoginResponseModel> loginWithTokenSocial({required String token}) async {
//     try {
//       final response = await _dio.client.post(
//         "/api/oauth/google-authorize",
//         data: {"credential": token},
//       );
//       log(response.data.toString());
//       if (response.data['message'] == "Email already taken") {
//         throw UserExistsYet("Email already taken");
//       }
//       return LoginResponseModel.fromMap(response.data);
//     } on DioError catch (e) {
//       if (e.response?.data['message'] == "Email already taken") {
//         throw UserExistsYet("Email already taken");
//       }
//       rethrow;
//     }
//   }
//
//   Future<User> _tryLoginWithCredential(AuthCredential credential) async {
//     try {
//       final userCredential = await _auth.signInWithCredential(credential);
//       if (userCredential.user == null) {
//         throw FirebaseUserNotFound("User not found.");
//       }
//       return userCredential.user!;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == "email-already-in-use") {
//         throw UserExistsYet("Email already taken");
//       }
//       rethrow;
//     }
//   }
// }
