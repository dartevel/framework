import 'package:shelf_router/shelf_router.dart' as shelf_router;

class Router {
  late final router;

  Router(){
    router = shelf_router.Router();
  }

  m() {
    router.get();;
  }


}
