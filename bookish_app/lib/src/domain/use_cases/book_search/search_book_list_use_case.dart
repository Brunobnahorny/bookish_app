import 'package:bookish_app/src/data/repository/book_search/book_search_repository.dart';
import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';
import 'package:bookish_app/src/domain/entities/query_param/query_param_entity.dart';

class SearchBookListUseCase {
  final BookSearchRepository repository;

  SearchBookListUseCase({
    required this.repository,
  });

  Future<List<BookVolumePartialEntity>> call({
    required String searchValue,
  }) {
    final queryParam = QueryParamEntity(
      uniqueFieldIdentifier: 'q',
      includeInPartial: false,
      searchValue: searchValue,
    );

    return repository.searchList(
      searchParams: [queryParam],
    );
  }
}
