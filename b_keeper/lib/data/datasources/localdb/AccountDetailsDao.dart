import 'package:b_keeper/data/datasources/localdb/LocalDatabase.dart';
import 'package:b_keeper/data/datasources/models/AccountDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'AccountDetailsDao.g.dart';

@UseDao(tables: [AccountDetails])
class AccountDetailsDao extends DatabaseAccessor<LocalDatabase> with _$AccountDetailsDaoMixin{
  AccountDetailsDao(LocalDatabase db) : super(db);

  Future<List<AccountDetail>> getAllAccountDetais() => select(accountDetails).get();
}