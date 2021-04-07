import 'package:moor_flutter/moor_flutter.dart';

@DataClassName("Category")
class Category extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get categoryName => text()();
  TextColumn get categoryId => text()();
  TextColumn get subCategoryName => text()();
  TextColumn get subCategoryId => text()();
}