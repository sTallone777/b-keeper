import 'package:b_keeper/data/datasources/localdb/localDatabase.dart';
import 'package:b_keeper/data/datasources/models/AccountDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'AccountDetailDao.g.dart';

@UseDao(tables: [AccountDetail])
class AccountDetailDao extends DatabaseAccessor<LocalDatabase> with _$AccountDetailDaoMixin{
  AccountDetailDao(LocalDatabase db) : super(db);

  Future<List<AccountDetai>> getAllAccountDetai() => select(detail).get();
}