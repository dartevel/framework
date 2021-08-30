class CanNotCreateLogFileException implements Exception {
  String _message = 'Can not create log file.';

  CanNotCreateLogFileException(this._message);

  @override
  String toString() => this._message;
}
