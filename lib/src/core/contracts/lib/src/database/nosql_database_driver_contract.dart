import 'database_driver_contract.dart';

abstract class NoSQLDatabaseDriverContract implements DatabaseDriverContract {
  late final connection;
}
