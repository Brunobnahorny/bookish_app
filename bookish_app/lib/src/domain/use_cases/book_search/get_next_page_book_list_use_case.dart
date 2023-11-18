import '../../entities/book_volume/book_volume_partial_entity.dart';

class GetNextPageBookListUseCase {
  final repository;

  GetNextPageBookListUseCase({
    required this.repository,
  });

  Future<List<BookVolumePartialEntity>> call() {
    throw UnimplementedError();
  }
}
