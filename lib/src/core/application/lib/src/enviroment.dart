class Enviroment {

  String currentEnviroment = '';

  Enviroment() {}

  /// Get an environment variable from a `.env` file in the root of
  /// you application. Optionally provide a fallback default value.
  String get(String key, [String? defaultValue]) {
    return '';
  }


  Future<void> loadEnviroments() async{
    //
  }
}


// class EnviromentException extends BaseException  {
//     EnviromentException([String message]) : super(message);
// }