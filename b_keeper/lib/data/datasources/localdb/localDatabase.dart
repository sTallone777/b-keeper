import 'package:b_keeper/data/datasources/localdb/AccountDetailsDao.dart';
import 'package:b_keeper/data/datasources/models/AccountDetails.dart';
import 'package:b_keeper/data/datasources/models/Categorys.dart';
import 'package:b_keeper/data/datasources/models/Deposits.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'LocalDatabase.g.dart';

@UseMoor(
  tables: [AccountDetails, Categorys, Deposits],
  daos: [AccountDetailsDao]
)
class LocalDatabase extends _$LocalDatabase{
  
  LocalDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));
  
  @override
  int get schemaVersion => 1;
}