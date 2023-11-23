import 'package:bookish_app/src/domain/use_cases/book_download/set_book_to_delete_use_case.dart';
import 'package:bookish_app/src/domain/use_cases/book_search/search_book_list_use_case.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../../domain/use_cases/book_download/set_book_to_download_use_case.dart';
import 'view_model/book_volume_partial_view_model.dart';

class BookSearchController {
  final SearchBookListUseCase searchBookListUseCase;
  final SetBookToDownloadUseCase setBookToDownloadUseCase;
  final SetBookToDeleteUseCase setBookToDeleteUseCase;

  final searchInputTEC = TextEditingController();
  final books = RxList<BookVolumePartialVM>();

  BookSearchController({
    required this.searchBookListUseCase,
    required this.setBookToDownloadUseCase,
    required this.setBookToDeleteUseCase,
  });

  Future<void> searchList() async {
    final searchValue = searchInputTEC.text;

    if (searchValue.isEmpty) {
      books.clear();
      return;
    }

    final list = await searchBookListUseCase(searchValue: searchValue);

    final viewModels = list
        .map(
          (entity) => BookVolumePartialVM(entity: entity),
        )
        .toList();

    books.clear();
    books.addAll(viewModels);
  }

  Future<void> downloadBook({
    required BookVolumePartialVM book,
  }) async {
    book.downloadStatus.value = BookVolumeDownloadStatus.downloading;

    try {
      if (book.entity.localProperties.downloaded) {
        await setBookToDeleteUseCase(book.entity);
        book.downloadStatus.value = BookVolumeDownloadStatus.notDownloaded;
        book.entity.localProperties.downloaded = false;
      } else {
        await setBookToDownloadUseCase(book.entity);
        book.downloadStatus.value = BookVolumeDownloadStatus.downloaded;
        book.entity.localProperties.downloaded = true;
      }
    } catch (e) {
      book.downloadStatus.value = BookVolumeDownloadStatus.error;
    }
  }
}
