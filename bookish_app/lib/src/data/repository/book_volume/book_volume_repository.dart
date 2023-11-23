import 'package:bookish_app/src/data/datasources/api/book_volume_api.dart';
import 'package:bookish_app/src/data/datasources/connectivity/adapter/connectivity_status_adapter.dart';
import 'package:bookish_app/src/domain/entities/book_volume/book_volume_entity.dart';
import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';
import 'package:flutter/foundation.dart';

import '../../datasources/db/book_volume_db.dart';

@immutable
class BookVolumeRepository {
  final BookVolumeApi bookVolumeApi;
  final BookVolumeDB bookVolumeDB;
  final ConnectivityStatusAdapter connectivityStatus;

  const BookVolumeRepository({
    required this.bookVolumeApi,
    required this.bookVolumeDB,
    required this.connectivityStatus,
  });

  Future<BookVolumeEntity?> getBookVolumeDetail(
      String bookVolumeIdentifier) async {
    if (await connectivityStatus.hasInternetConnection()) {
      return await _getFromApi(bookVolumeIdentifier);
    }

    return _getFromDb(bookVolumeIdentifier);
  }

  Future<BookVolumeEntity?> _getFromApi(String bookVolumeIdentifier) async {
    final (error, bookVolumeEntity, _) =
        await bookVolumeApi.getBookVolumeDetail(bookVolumeIdentifier);

    if (error != null) {
      throw ErrorDescription("searchList couldn't get from api");
    }

    return bookVolumeEntity;
  }

  Future<BookVolumeEntity?> _getFromDb(String bookVolumeIdentifier) async {
    final (error, bookVolumeEntity) =
        await bookVolumeDB.getBookVolumeDetail(bookVolumeIdentifier);

    if (error != null) {
      throw ErrorDescription("searchList couldn't get from api");
    }

    return bookVolumeEntity;
  }

  Future<bool> hasInternetConnection() {
    return connectivityStatus.hasInternetConnection();
  }

  Future<BookVolumeEntity?> saveBookVolume(BookVolumeEntity bookVolume) async {
    final (error, bookVolumeEntity) =
        await bookVolumeDB.saveBookVolume(bookVolume);

    if (error != null) {
      throw ErrorDescription("couldn't save BookVolume on the database");
    }

    return bookVolumeEntity;
  }

  Future<bool?> removeBookVolume(
    BookVolumePartialEntity bookVolume,
  ) async {
    final (error, result) = await bookVolumeDB.removeBookVolume(
      bookVolume.id,
    );

    if (error != null) {
      throw ErrorDescription("couldn't save BookVolume on the database");
    }

    return result;
  }
}
