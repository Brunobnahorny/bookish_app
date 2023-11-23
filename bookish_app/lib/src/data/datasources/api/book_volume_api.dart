import 'dart:developer';

import 'package:bookish_app/src/core/adapters/http_client/http_client_response.dart';
import 'package:bookish_app/src/data/datasources/api/models/book_volume_partial_api_model.dart';
import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';

import '../../../core/adapters/http_client/http_client_adapter.dart';
import '../../../domain/entities/book_volume/book_volume_entity.dart';
import 'models/book_volume_api_model.dart';

class UrlConstansts {
  static const kSearchBookVolume =
      'https://www.googleapis.com/books/v1/volumes/';
  static const kGetBookVolumeDetail =
      'https://www.googleapis.com/books/v1/volumes/';
  static const kPingGoogleApi = 'www.googleapis.com';
}

class ApiResponseMeta {}

typedef ApiResponseData<T> = (
  Exception? error,
  T? data,
  ApiResponseMeta? meta,
);

typedef BookVolumeListResponseData
    = ApiResponseData<List<BookVolumePartialEntity>>;
typedef BookVolumeResponseData = ApiResponseData<BookVolumeEntity?>;

class BookVolumeApi {
  final IHttpClientAdapter httpClient;

  const BookVolumeApi({
    required this.httpClient,
  });

  Future<BookVolumeListResponseData> searchList(
    Map<String, String>? queryParams,
  ) async {
    try {
      const path = UrlConstansts.kSearchBookVolume;
      final HttpClientResponse response = await httpClient.get(
        path,
        queryParameters: queryParams,
      );

      final result = (
        null,
        await _mapBookVolumeList(response.data),
        _mapBookVolumeMeta(response.data),
      );

      return result;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<BookVolumeResponseData> getBookVolumeDetail(
    String bookVolumeIdentifier,
  ) async {
    try {
      const path = UrlConstansts.kGetBookVolumeDetail;
      final HttpClientResponse response = await httpClient.get(
        path + bookVolumeIdentifier,
      );

      final result = (
        null,
        response.data != null
            ? BookVolumeApiModel.fromMap(response.data!)
            : null,
        _mapBookVolumeMeta(response.data),
      );

      return result;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

Future<List<BookVolumePartialEntity>> _mapBookVolumeList(
  Map<String, dynamic>? mappedData,
) async {
  if (mappedData == null) {
    return <BookVolumePartialEntity>[];
  }

  final data = mappedData['items'];
  final bookVolumes = data
      ?.map((map) => BookVolumePartialApiModel.fromMap(map))
      .cast<BookVolumePartialApiModel>()
      .toList();

  return bookVolumes ?? <BookVolumePartialEntity>[];
}

ApiResponseMeta _mapBookVolumeMeta(data) {
  return ApiResponseMeta();
}
