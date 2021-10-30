import 'package:dartevel_framework/src/core/contracts/lib/src/database/database_driver_contract.dart';

abstract class NoSQLDatabaseDriverContract implements DatabaseDriverContract {
  late final connection;
}
