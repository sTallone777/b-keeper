import 'package:b_keeper/data/datasources/models/AccountDetail.dart';
import 'package:b_keeper/data/datasources/models/Category.dart';
import 'package:b_keeper/data/datasources/models/Deposits.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'LocalDatabase.g.dart';

@UseMoor(
  tables: [AccountDetail, Category, Deposits]
)
class LocalDatabase extends _$LocalDatabase{
  LocalDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatements: true));
  
  @override
  int get schemaVersion => 1;
}