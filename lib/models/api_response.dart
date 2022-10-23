
class ApiResponse<T> {
  late bool ok = false;
  late String title;
  late String msg;
  late int code;
  late T result;
  late T codeEnum;

  ApiResponse.ok({ this.title = "",required this.result, this.msg = "", this.code = 0, required this.codeEnum}) {
    ok = true;
  }

  ApiResponse.error({this.title = "", required this.result,  this.msg = "", this.code = 0, required this.codeEnum}) {
    ok = false;
  }

}