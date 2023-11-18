import '../../entities/book_download/book_download_typedef.dart';

/// [DownloadBookStream] should be used to verify current download data.
///
///{@category Domain}
///{@subcategory UseCases}
class SetBookToDownloadUseCase {
  final repository;

  SetBookToDownloadUseCase({
    required this.repository,
  });

  Future<DownloadBookStream> call() {
    throw UnimplementedError();
  }
}
