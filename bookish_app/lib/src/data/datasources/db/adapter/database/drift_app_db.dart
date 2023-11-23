import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../models/book_volume_db_table.dart';

part 'drift_app_db.g.dart';

@DriftDatabase(tables: [BookVolumeDBTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  AppDatabase.forTesting(DatabaseConnection connection) : super(connection);

  @override
  int get schemaVersion => 1;

  Future<void> clearDatabase() async {
    await close();

    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    // Delete the database file
    if (await file.exists()) {
      await file.delete();
    }
  }

  Future<List<BookVolumeDBTableData>> searchBookVolumeByTitle(
    String? searchValue,
  ) async {
    if (searchValue == null) return <BookVolumeDBTableData>[];

    final buildQuery = select(bookVolumeDBTable)
      ..where((tbl) => tbl.title.contains(searchValue));
    final result = await buildQuery.get();

    return result;
  }

  Future<BookVolumeDBTableData?> getByIdentifier(
      String bookVolumeIdentifier) async {
    final buildQuery = select(bookVolumeDBTable)
      ..where(
        (tbl) => tbl.id.equals(bookVolumeIdentifier),
      );
    final result = await buildQuery.getSingle();

    return result;
  }

  Future<BookVolumeDBTableData?> upsertBookVolume(
    BookVolumeDBTableData bookVolume,
  ) async {
    await into(bookVolumeDBTable).insertOnConflictUpdate(bookVolume);

    final buildQuery = select(bookVolumeDBTable)
      ..where(
        (tbl) => tbl.id.equals(bookVolume.id),
      );

    final result = await buildQuery.getSingleOrNull();

    return result;
  }

  Future<List<BookVolumeDBTableData>> searchListByPrimaryKeys(
    Iterable<String> primaryKeyValues,
  ) async {
    final buildQuery = select(bookVolumeDBTable)
      ..where(
        (tbl) => tbl.id.isIn(primaryKeyValues),
      );

    final result = await buildQuery.get();

    return result;
  }

  Future<bool?> removeByID(String bookVolumePrimaryKey) async {
    final buildQuery = delete(bookVolumeDBTable)
      ..where((tbl) => tbl.id.equals(bookVolumePrimaryKey));

    final result = await buildQuery.go();

    return result == 1;
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
