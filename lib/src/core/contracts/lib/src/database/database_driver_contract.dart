abstract class DatabaseDriverContract {

  late final instanse;

  Future connect();

  Future close();
}
