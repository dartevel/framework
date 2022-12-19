import 'dart:io';

import 'package:shelf/shelf.dart' as shelf;

class Request extends shelf.Request {
  Request(String method, Uri requestedUri) : super(method, requestedUri);

}
