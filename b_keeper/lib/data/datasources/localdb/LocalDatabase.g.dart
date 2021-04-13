// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalDatabase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class AccountDetail extends DataClass implements Insertable<AccountDetail> {
  final int id;
  final String categoryId;
  final int amount;
  final int recodeType;
  final DateTime modifyDate;
  AccountDetail(
      {@required this.id,
      @required this.categoryId,
      @required this.amount,
      @required this.recodeType,
      @required this.modifyDate});
  factory AccountDetail.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return AccountDetail(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      categoryId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category_id']),
      amount: intType.mapFromDatabaseResponse(data['${effectivePrefix}amount']),
      recodeType: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}recode_type']),
      modifyDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}modify_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<int>(amount);
    }
    if (!nullToAbsent || recodeType != null) {
      map['recode_type'] = Variable<int>(recodeType);
    }
    if (!nullToAbsent || modifyDate != null) {
      map['modify_date'] = Variable<DateTime>(modifyDate);
    }
    return map;
  }

  AccountDetailsCompanion toCompanion(bool nullToAbsent) {
    return AccountDetailsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      recodeType: recodeType == null && nullToAbsent
          ? const Value.absent()
          : Value(recodeType),
      modifyDate: modifyDate == null && nullToAbsent
          ? const Value.absent()
          : Value(modifyDate),
    );
  }

  factory AccountDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AccountDetail(
      id: serializer.fromJson<int>(json['id']),
      categoryId: serializer.fromJson<String>(json['categoryId']),
      amount: serializer.fromJson<int>(json['amount']),
      recodeType: serializer.fromJson<int>(json['recodeType']),
      modifyDate: serializer.fromJson<DateTime>(json['modifyDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryId': serializer.toJson<String>(categoryId),
      'amount': serializer.toJson<int>(amount),
      'recodeType': serializer.toJson<int>(recodeType),
      'modifyDate': serializer.toJson<DateTime>(modifyDate),
    };
  }

  AccountDetail copyWith(
          {int id,
          String categoryId,
          int amount,
          int recodeType,
          DateTime modifyDate}) =>
      AccountDetail(
        id: id ?? this.id,
        categoryId: categoryId ?? this.categoryId,
        amount: amount ?? this.amount,
        recodeType: recodeType ?? this.recodeType,
        modifyDate: modifyDate ?? this.modifyDate,
      );
  @override
  String toString() {
    return (StringBuffer('AccountDetail(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('amount: $amount, ')
          ..write('recodeType: $recodeType, ')
          ..write('modifyDate: $modifyDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          categoryId.hashCode,
          $mrjc(amount.hashCode,
              $mrjc(recodeType.hashCode, modifyDate.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AccountDetail &&
          other.id == this.id &&
          other.categoryId == this.categoryId &&
          other.amount == this.amount &&
          other.recodeType == this.recodeType &&
          other.modifyDate == this.modifyDate);
}

class AccountDetailsCompanion extends UpdateCompanion<AccountDetail> {
  final Value<int> id;
  final Value<String> categoryId;
  final Value<int> amount;
  final Value<int> recodeType;
  final Value<DateTime> modifyDate;
  const AccountDetailsCompanion({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.amount = const Value.absent(),
    this.recodeType = const Value.absent(),
    this.modifyDate = const Value.absent(),
  });
  AccountDetailsCompanion.insert({
    this.id = const Value.absent(),
    @required String categoryId,
    @required int amount,
    @required int recodeType,
    @required DateTime modifyDate,
  })  : categoryId = Value(categoryId),
        amount = Value(amount),
        recodeType = Value(recodeType),
        modifyDate = Value(modifyDate);
  static Insertable<AccountDetail> custom({
    Expression<int> id,
    Expression<String> categoryId,
    Expression<int> amount,
    Expression<int> recodeType,
    Expression<DateTime> modifyDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (amount != null) 'amount': amount,
      if (recodeType != null) 'recode_type': recodeType,
      if (modifyDate != null) 'modify_date': modifyDate,
    });
  }

  AccountDetailsCompanion copyWith(
      {Value<int> id,
      Value<String> categoryId,
      Value<int> amount,
      Value<int> recodeType,
      Value<DateTime> modifyDate}) {
    return AccountDetailsCompanion(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      amount: amount ?? this.amount,
      recodeType: recodeType ?? this.recodeType,
      modifyDate: modifyDate ?? this.modifyDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (recodeType.present) {
      map['recode_type'] = Variable<int>(recodeType.value);
    }
    if (modifyDate.present) {
      map['modify_date'] = Variable<DateTime>(modifyDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountDetailsCompanion(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('amount: $amount, ')
          ..write('recodeType: $recodeType, ')
          ..write('modifyDate: $modifyDate')
          ..write(')'))
        .toString();
  }
}

class $AccountDetailsTable extends AccountDetails
    with TableInfo<$AccountDetailsTable, AccountDetail> {
  final GeneratedDatabase _db;
  final String _alias;
  $AccountDetailsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _categoryIdMeta = const VerificationMeta('categoryId');
  GeneratedTextColumn _categoryId;
  @override
  GeneratedTextColumn get categoryId => _categoryId ??= _constructCategoryId();
  GeneratedTextColumn _constructCategoryId() {
    return GeneratedTextColumn(
      'category_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  GeneratedIntColumn _amount;
  @override
  GeneratedIntColumn get amount => _amount ??= _constructAmount();
  GeneratedIntColumn _constructAmount() {
    return GeneratedIntColumn(
      'amount',
      $tableName,
      false,
    );
  }

  final VerificationMeta _recodeTypeMeta = const VerificationMeta('recodeType');
  GeneratedIntColumn _recodeType;
  @override
  GeneratedIntColumn get recodeType => _recodeType ??= _constructRecodeType();
  GeneratedIntColumn _constructRecodeType() {
    return GeneratedIntColumn(
      'recode_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _modifyDateMeta = const VerificationMeta('modifyDate');
  GeneratedDateTimeColumn _modifyDate;
  @override
  GeneratedDateTimeColumn get modifyDate =>
      _modifyDate ??= _constructModifyDate();
  GeneratedDateTimeColumn _constructModifyDate() {
    return GeneratedDateTimeColumn(
      'modify_date',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, categoryId, amount, recodeType, modifyDate];
  @override
  $AccountDetailsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'account_details';
  @override
  final String actualTableName = 'account_details';
  @override
  VerificationContext validateIntegrity(Insertable<AccountDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id'], _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount'], _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('recode_type')) {
      context.handle(
          _recodeTypeMeta,
          recodeType.isAcceptableOrUnknown(
              data['recode_type'], _recodeTypeMeta));
    } else if (isInserting) {
      context.missing(_recodeTypeMeta);
    }
    if (data.containsKey('modify_date')) {
      context.handle(
          _modifyDateMeta,
          modifyDate.isAcceptableOrUnknown(
              data['modify_date'], _modifyDateMeta));
    } else if (isInserting) {
      context.missing(_modifyDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AccountDetail map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AccountDetail.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AccountDetailsTable createAlias(String alias) {
    return $AccountDetailsTable(_db, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String categoryName;
  final String categoryId;
  final String subCategoryName;
  final String subCategoryId;
  Category(
      {@required this.id,
      @required this.categoryName,
      @required this.categoryId,
      @required this.subCategoryName,
      @required this.subCategoryId});
  factory Category.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Category(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      categoryName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category_name']),
      categoryId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}category_id']),
      subCategoryName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sub_category_name']),
      subCategoryId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sub_category_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || categoryName != null) {
      map['category_name'] = Variable<String>(categoryName);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    if (!nullToAbsent || subCategoryName != null) {
      map['sub_category_name'] = Variable<String>(subCategoryName);
    }
    if (!nullToAbsent || subCategoryId != null) {
      map['sub_category_id'] = Variable<String>(subCategoryId);
    }
    return map;
  }

  CategorysCompanion toCompanion(bool nullToAbsent) {
    return CategorysCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      categoryName: categoryName == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryName),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      subCategoryName: subCategoryName == null && nullToAbsent
          ? const Value.absent()
          : Value(subCategoryName),
      subCategoryId: subCategoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(subCategoryId),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
      categoryId: serializer.fromJson<String>(json['categoryId']),
      subCategoryName: serializer.fromJson<String>(json['subCategoryName']),
      subCategoryId: serializer.fromJson<String>(json['subCategoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryName': serializer.toJson<String>(categoryName),
      'categoryId': serializer.toJson<String>(categoryId),
      'subCategoryName': serializer.toJson<String>(subCategoryName),
      'subCategoryId': serializer.toJson<String>(subCategoryId),
    };
  }

  Category copyWith(
          {int id,
          String categoryName,
          String categoryId,
          String subCategoryName,
          String subCategoryId}) =>
      Category(
        id: id ?? this.id,
        categoryName: categoryName ?? this.categoryName,
        categoryId: categoryId ?? this.categoryId,
        subCategoryName: subCategoryName ?? this.subCategoryName,
        subCategoryId: subCategoryId ?? this.subCategoryId,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('categoryName: $categoryName, ')
          ..write('categoryId: $categoryId, ')
          ..write('subCategoryName: $subCategoryName, ')
          ..write('subCategoryId: $subCategoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          categoryName.hashCode,
          $mrjc(categoryId.hashCode,
              $mrjc(subCategoryName.hashCode, subCategoryId.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.categoryName == this.categoryName &&
          other.categoryId == this.categoryId &&
          other.subCategoryName == this.subCategoryName &&
          other.subCategoryId == this.subCategoryId);
}

class CategorysCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String> categoryName;
  final Value<String> categoryId;
  final Value<String> subCategoryName;
  final Value<String> subCategoryId;
  const CategorysCompanion({
    this.id = const Value.absent(),
    this.categoryName = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.subCategoryName = const Value.absent(),
    this.subCategoryId = const Value.absent(),
  });
  CategorysCompanion.insert({
    this.id = const Value.absent(),
    @required String categoryName,
    @required String categoryId,
    @required String subCategoryName,
    @required String subCategoryId,
  })  : categoryName = Value(categoryName),
        categoryId = Value(categoryId),
        subCategoryName = Value(subCategoryName),
        subCategoryId = Value(subCategoryId);
  static Insertable<Category> custom({
    Expression<int> id,
    Expression<String> categoryName,
    Expression<String> categoryId,
    Expression<String> subCategoryName,
    Expression<String> subCategoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryName != null) 'category_name': categoryName,
      if (categoryId != null) 'category_id': categoryId,
      if (subCategoryName != null) 'sub_category_name': subCategoryName,
      if (subCategoryId != null) 'sub_category_id': subCategoryId,
    });
  }

  CategorysCompanion copyWith(
      {Value<int> id,
      Value<String> categoryName,
      Value<String> categoryId,
      Value<String> subCategoryName,
      Value<String> subCategoryId}) {
    return CategorysCompanion(
      id: id ?? this.id,
      categoryName: categoryName ?? this.categoryName,
      categoryId: categoryId ?? this.categoryId,
      subCategoryName: subCategoryName ?? this.subCategoryName,
      subCategoryId: subCategoryId ?? this.subCategoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (subCategoryName.present) {
      map['sub_category_name'] = Variable<String>(subCategoryName.value);
    }
    if (subCategoryId.present) {
      map['sub_category_id'] = Variable<String>(subCategoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategorysCompanion(')
          ..write('id: $id, ')
          ..write('categoryName: $categoryName, ')
          ..write('categoryId: $categoryId, ')
          ..write('subCategoryName: $subCategoryName, ')
          ..write('subCategoryId: $subCategoryId')
          ..write(')'))
        .toString();
  }
}

class $CategorysTable extends Categorys
    with TableInfo<$CategorysTable, Category> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategorysTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _categoryNameMeta =
      const VerificationMeta('categoryName');
  GeneratedTextColumn _categoryName;
  @override
  GeneratedTextColumn get categoryName =>
      _categoryName ??= _constructCategoryName();
  GeneratedTextColumn _constructCategoryName() {
    return GeneratedTextColumn(
      'category_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _categoryIdMeta = const VerificationMeta('categoryId');
  GeneratedTextColumn _categoryId;
  @override
  GeneratedTextColumn get categoryId => _categoryId ??= _constructCategoryId();
  GeneratedTextColumn _constructCategoryId() {
    return GeneratedTextColumn(
      'category_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _subCategoryNameMeta =
      const VerificationMeta('subCategoryName');
  GeneratedTextColumn _subCategoryName;
  @override
  GeneratedTextColumn get subCategoryName =>
      _subCategoryName ??= _constructSubCategoryName();
  GeneratedTextColumn _constructSubCategoryName() {
    return GeneratedTextColumn(
      'sub_category_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _subCategoryIdMeta =
      const VerificationMeta('subCategoryId');
  GeneratedTextColumn _subCategoryId;
  @override
  GeneratedTextColumn get subCategoryId =>
      _subCategoryId ??= _constructSubCategoryId();
  GeneratedTextColumn _constructSubCategoryId() {
    return GeneratedTextColumn(
      'sub_category_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, categoryName, categoryId, subCategoryName, subCategoryId];
  @override
  $CategorysTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categorys';
  @override
  final String actualTableName = 'categorys';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('category_name')) {
      context.handle(
          _categoryNameMeta,
          categoryName.isAcceptableOrUnknown(
              data['category_name'], _categoryNameMeta));
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id'], _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('sub_category_name')) {
      context.handle(
          _subCategoryNameMeta,
          subCategoryName.isAcceptableOrUnknown(
              data['sub_category_name'], _subCategoryNameMeta));
    } else if (isInserting) {
      context.missing(_subCategoryNameMeta);
    }
    if (data.containsKey('sub_category_id')) {
      context.handle(
          _subCategoryIdMeta,
          subCategoryId.isAcceptableOrUnknown(
              data['sub_category_id'], _subCategoryIdMeta));
    } else if (isInserting) {
      context.missing(_subCategoryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Category.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CategorysTable createAlias(String alias) {
    return $CategorysTable(_db, alias);
  }
}

class Deposits extends DataClass implements Insertable<Deposits> {
  final int id;
  final int currentBalance;
  Deposits({@required this.id, @required this.currentBalance});
  factory Deposits.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return Deposits(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      currentBalance: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}current_balance']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || currentBalance != null) {
      map['current_balance'] = Variable<int>(currentBalance);
    }
    return map;
  }

  DepositsCompanion toCompanion(bool nullToAbsent) {
    return DepositsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      currentBalance: currentBalance == null && nullToAbsent
          ? const Value.absent()
          : Value(currentBalance),
    );
  }

  factory Deposits.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Deposits(
      id: serializer.fromJson<int>(json['id']),
      currentBalance: serializer.fromJson<int>(json['currentBalance']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'currentBalance': serializer.toJson<int>(currentBalance),
    };
  }

  Deposits copyWith({int id, int currentBalance}) => Deposits(
        id: id ?? this.id,
        currentBalance: currentBalance ?? this.currentBalance,
      );
  @override
  String toString() {
    return (StringBuffer('Deposits(')
          ..write('id: $id, ')
          ..write('currentBalance: $currentBalance')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, currentBalance.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Deposits &&
          other.id == this.id &&
          other.currentBalance == this.currentBalance);
}

class DepositsCompanion extends UpdateCompanion<Deposits> {
  final Value<int> id;
  final Value<int> currentBalance;
  const DepositsCompanion({
    this.id = const Value.absent(),
    this.currentBalance = const Value.absent(),
  });
  DepositsCompanion.insert({
    this.id = const Value.absent(),
    @required int currentBalance,
  }) : currentBalance = Value(currentBalance);
  static Insertable<Deposits> custom({
    Expression<int> id,
    Expression<int> currentBalance,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (currentBalance != null) 'current_balance': currentBalance,
    });
  }

  DepositsCompanion copyWith({Value<int> id, Value<int> currentBalance}) {
    return DepositsCompanion(
      id: id ?? this.id,
      currentBalance: currentBalance ?? this.currentBalance,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (currentBalance.present) {
      map['current_balance'] = Variable<int>(currentBalance.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DepositsCompanion(')
          ..write('id: $id, ')
          ..write('currentBalance: $currentBalance')
          ..write(')'))
        .toString();
  }
}

class $DepositsTable extends Deposits with TableInfo<$DepositsTable, Deposits> {
  final GeneratedDatabase _db;
  final String _alias;
  $DepositsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _currentBalanceMeta =
      const VerificationMeta('currentBalance');
  GeneratedIntColumn _currentBalance;
  @override
  GeneratedIntColumn get currentBalance =>
      _currentBalance ??= _constructCurrentBalance();
  GeneratedIntColumn _constructCurrentBalance() {
    return GeneratedIntColumn(
      'current_balance',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, currentBalance];
  @override
  $DepositsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'deposits';
  @override
  final String actualTableName = 'deposits';
  @override
  VerificationContext validateIntegrity(Insertable<Deposits> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('current_balance')) {
      context.handle(
          _currentBalanceMeta,
          currentBalance.isAcceptableOrUnknown(
              data['current_balance'], _currentBalanceMeta));
    } else if (isInserting) {
      context.missing(_currentBalanceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Deposits map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Deposits.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DepositsTable createAlias(String alias) {
    return $DepositsTable(_db, alias);
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $AccountDetailsTable _accountDetails;
  $AccountDetailsTable get accountDetails =>
      _accountDetails ??= $AccountDetailsTable(this);
  $CategorysTable _categorys;
  $CategorysTable get categorys => _categorys ??= $CategorysTable(this);
  $DepositsTable _deposits;
  $DepositsTable get deposits => _deposits ??= $DepositsTable(this);
  AccountDetailsDao _accountDetailsDao;
  AccountDetailsDao get accountDetailsDao =>
      _accountDetailsDao ??= AccountDetailsDao(this as LocalDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [accountDetails, categorys, deposits];
}
