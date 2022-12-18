part of dartevel.framework.http;

import 'dart:io';

class Request {
  final HttpRequest _request;

  Request(this._request);

  bool get isForwarded => _request.headers['x-forwarded-host'] != null;
  
  String get method => _request.method;
}
