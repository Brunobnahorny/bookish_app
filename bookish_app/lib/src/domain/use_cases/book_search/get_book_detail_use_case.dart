import '../../entities/book_volume/book_volume_entity.dart';

class GetBookDetailUseCase {
  final repository;

  GetBookDetailUseCase({
    required this.repository,
  });

  Future<BookVolumeEntity> call() {
    throw UnimplementedError();
  }
}
