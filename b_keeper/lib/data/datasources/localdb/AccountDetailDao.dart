import 'package:b_keeper/data/datasources/localdb/localDatabase.dart';
import 'package:b_keeper/data/datasources/models/AccountDetail.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'AccountDetailDao.g.dart';

@UseDao(tables: [AccountDetail])
class AccountDetailDao extends DatabaseAccessor<LocalDatabase> with _$AccountDetailDaoMixin{
  LocalDatabase _database;

  AccountDetailDao(LocalDatabase attachedDatabase) : super(attachedDatabase) {
    this._database = attachedDatabase;
  }
}