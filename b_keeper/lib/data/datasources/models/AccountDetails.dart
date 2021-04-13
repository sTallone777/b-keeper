

import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("accountDetail")
class AccountDetails extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get categoryId => text()();
  IntColumn get amount => integer()();
  IntColumn get recodeType => integer()();
  DateTimeColumn get modifyDate => dateTime()();
}