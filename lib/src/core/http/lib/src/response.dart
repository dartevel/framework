import 'dart:io';
import 'package:shelf/shelf.dart' as shelf;

class Response extends shelf.Response {
  Response(int statusCode) : super(statusCode);
}
