import 'database_driver_contract.dart';

abstract class SQLDatabaseDriverContract implements DatabaseDriverContract {
  late final String database;

  late final String table;

  late final String tablePrefix;
}
