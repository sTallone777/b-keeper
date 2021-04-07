// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalDatabase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  AccountDetailDao _accountDetailDao;
  AccountDetailDao get accountDetailDao =>
      _accountDetailDao ??= AccountDetailDao(this as LocalDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [];
}
