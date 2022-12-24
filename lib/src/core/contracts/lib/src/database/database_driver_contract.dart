abstract class DatabaseDriverContract {

  late final instance;

  Future connect();

  Future close();
}
