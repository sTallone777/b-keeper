import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("Deposit")
class Deposits extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get currentBalance => integer()();
}