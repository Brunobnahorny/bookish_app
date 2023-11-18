import '../../entities/book_download/book_download_typedef.dart';

/// [DownloadBookStream] should be used to verify current download data.
///
///{@category Domain}
///{@subcategory UseCases}
class ListCurrentActiveDownloadsUseCase {
  final repository;

  ListCurrentActiveDownloadsUseCase({
    required this.repository,
  });

  Future<List<DownloadBookStream>> call() {
    throw UnimplementedError();
  }
}
