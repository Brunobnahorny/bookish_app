import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';
import 'package:bookish_app/src/domain/use_cases/book_search/search_book_list_use_case.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

class BookSearchController {
  final SearchBookListUseCase searchBookListUseCase;
  final searchInputTEC = TextEditingController();
  final books = RxList<BookVolumePartialEntity>();

  BookSearchController({
    required this.searchBookListUseCase,
  });

  Future<void> searchList() async {
    final searchValue = searchInputTEC.text;

    if (searchValue.isEmpty) {
      books.clear();
      return;
    }

    final list = await searchBookListUseCase(searchValue: searchValue);

    books.clear();
    books.addAll(list);
  }

  downloadBook({required BookVolumePartialEntity book}) {}
}
