import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';

class SearchBookListUseCase {
  final repository;

  SearchBookListUseCase({
    required this.repository,
  });

  Future<List<BookVolumePartialEntity>> call() {
    throw UnimplementedError();
  }
}
