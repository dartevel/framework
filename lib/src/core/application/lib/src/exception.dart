class DartevelException implements Exception {
  final String message;

  DartevelException(this.message);

  @override
  String toString() => message;
}