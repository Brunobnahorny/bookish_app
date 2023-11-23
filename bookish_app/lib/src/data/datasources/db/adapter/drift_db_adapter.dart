import 'package:bookish_app/src/data/datasources/db/adapter/models/query_param_db_model.dart';

import 'database/drift_app_db.dart';

class DriftDBAdapter {
  AppDatabase database;

  DriftDBAdapter({
    required this.database,
  });

  Future<void> clearDatabase() async {
    await database.clearDatabase();

    database = AppDatabase();
  }

  Future<List<BookVolumeDBTableData>> searchList(
    List<QueryParamDBModel> searchParams,
  ) async {
    //guard empty search param
    if (searchParams.isEmpty) {
      return <BookVolumeDBTableData>[];
    }

    //TODO make use of all the search params
    final firstSearchParam = searchParams.first;
    //TODO! implement dynamic search param
    // final whereColumn = getTableColumnWhereExpression(firstSearchParam);

    // if (whereColumn == null) {
    //   throw Exception('Column not mapped yet');
    // }

    return database.searchBookVolumeByTitle(firstSearchParam.searchValue);
  }

  Future<BookVolumeDBTableData?> getDetail(String bookVolumeIdentifier) {
    return database.getByIdentifier(bookVolumeIdentifier);
  }

  Future<BookVolumeDBTableData?> upsertBookVolume(
    BookVolumeDBTableData bookVolume,
  ) {
    return database.upsertBookVolume(bookVolume);
  }

  Future<List<BookVolumeDBTableData>> searchListByID(
    Iterable<String> primaryKeyValues,
  ) {
    return database.searchListByPrimaryKeys(primaryKeyValues);
  }

  Future<bool?> removeBookVolume(String bookVolumePrimaryKey) {
    return database.removeByID(bookVolumePrimaryKey);
  }
}
