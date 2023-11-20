import 'package:bookish_app/src/data/datasources/api/book_volume_api.dart';
import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';
import 'package:bookish_app/src/domain/entities/query_param/query_param_entity.dart';
import 'package:flutter/foundation.dart';

@immutable
class BookSearchRepository {
  final BookVolumeApi bookVolumeApi;

  const BookSearchRepository({
    required this.bookVolumeApi,
  });

  Future<List<BookVolumePartialEntity>> searchList({
    required List<QueryParamEntity> searchParams,
  }) async {
    final queryParams = searchParams.asMap().map(
          (_, searchParam) => MapEntry(
            searchParam.uniqueFieldIdentifier,
            searchParam.searchValue!,
          ),
        );

    final (error, list, _) = await bookVolumeApi.searchList(queryParams);

    if (error != null) {
      throw ErrorDescription("searchList couldn't get from api");
    }

    return list ?? <BookVolumePartialEntity>[];
  }
}
