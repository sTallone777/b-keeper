

import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("account_detail")
class AccountDetail extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get categoryId => text()();
  IntColumn get amount => integer()();
  IntColumn get recodeType => integer()();
  DateTimeColumn get modifyDate => dateTime()();
}