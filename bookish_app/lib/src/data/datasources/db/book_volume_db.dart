import 'dart:developer';

import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';
import 'package:bookish_app/src/domain/entities/query_param/query_param_entity.dart';

import '../../../domain/entities/book_volume/book_volume_entity.dart';
import 'adapter/drift_db_adapter.dart';
import 'db_response_data.dart';
import 'mappers/book_volume_db_mapper.dart';
import 'mappers/query_param_mapper.dart';

typedef BookVolumeQueryData = List<BookVolumeEntity>;
typedef BookVolumeDetailData = (Error? error, BookVolumeEntity? result);
typedef BookVolumeRemoveData = (Error? error, bool? result);

class BookVolumeDB {
  final BookVolumeDBMapper mapper;
  final QueryParamMapper queryParamMapper;
  final DriftDBAdapter database;

  const BookVolumeDB({
    required this.mapper,
    required this.queryParamMapper,
    required this.database,
  });

  Future<DBResponseData<BookVolumeEntity>> searchList(
    List<QueryParamEntity> searchParams,
    dynamic meta,
  ) async {
    try {
      final dbQueryParams = searchParams
          .map(
            (searchParam) => queryParamMapper.toDB(
              searchParam,
            ),
          )
          .toList();

      final result = await database.searchList(dbQueryParams);

      return (
        null,
        result.map((model) => mapper.toEntity(model)).toList(),
        meta,
      );
    } catch (e) {
      return (
        e as Exception,
        null,
        null,
      );
    }
  }

  Future<BookVolumeDetailData> getBookVolumeDetail(
    String bookVolumeIdentifier,
  ) async {
    try {
      final result = await database.getDetail(bookVolumeIdentifier);

      if (result == null) return (null, null);

      return (null, mapper.toEntity(result));
    } catch (e) {
      return (e as Error, null);
    }
  }

  Future<BookVolumeDetailData> saveBookVolume(
    BookVolumeEntity bookVolume,
  ) async {
    try {
      final model = mapper.toDB(bookVolume);
      final result = await database.upsertBookVolume(model);

      if (result == null) return (null, null);

      return (null, mapper.toEntity(result));
    } catch (e) {
      return (e as Error, null);
    }
  }

  Future<List<BookVolumePartialEntity>> setApiResultDependencies(
    List<BookVolumePartialEntity> apiBookVolumes,
  ) async {
    try {
      // <ID, Record>
      final apiBookVolumesMap = apiBookVolumes.asMap().map(
            (_, bookVolume) => MapEntry(
              bookVolume.id,
              bookVolume,
            ),
          );

      final primaryKeyValues = apiBookVolumesMap.keys;

      final searchedDBBookVolumes =
          await database.searchListByID(primaryKeyValues);

      for (final dbBookVolume in searchedDBBookVolumes) {
        apiBookVolumesMap[dbBookVolume.id] = mapper.toEntity(dbBookVolume);
      }

      return apiBookVolumesMap.values.toList();
    } catch (e) {
      //DO NOTHING
      log('could not get properties saved in database');
      return apiBookVolumes;
    }
  }

  removeBookVolume(
    String bookVolumePrimaryKey,
  ) async {
    try {
      final result = await database.removeBookVolume(bookVolumePrimaryKey);
      return (null, result);
    } catch (e) {
      return (e as Error, false);
    }
  }
}
