import 'package:dartevel_contracts/contracts.dart';

import 'package:mysql1/mysql1.dart';

class MysqlDriver implements SQLDatabaseDriverContract {


  MysqlDriver({this.table});

  @override
  var table;
}

final s = MysqlDriver();
