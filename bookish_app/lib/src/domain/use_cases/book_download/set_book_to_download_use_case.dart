import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';

import '../../../data/repository/book_volume/book_volume_list_repository.dart';
import '../../../data/repository/book_volume/book_volume_repository.dart';
import '../../entities/book_download/book_download_typedef.dart';

/// [DownloadBookStream] should be used to verify current download data.
///
///{@category Domain}
///{@subcategory UseCases}
class SetBookToDownloadUseCase {
  final BookVolumeListRepository bookVolumeListRepository;
  final BookVolumeRepository bookVolumeRepository;

  SetBookToDownloadUseCase({
    required this.bookVolumeListRepository,
    required this.bookVolumeRepository,
  });

  Future<DownloadBookStream?> call(BookVolumePartialEntity partial) async {
    final hasInternetConnection =
        await bookVolumeRepository.hasInternetConnection();

    if (!hasInternetConnection) {
      //TODO! snackbar
      return null;
    }

    final bookVolume = await bookVolumeRepository.getBookVolumeDetail(
      partial.id,
    );

    if (bookVolume == null) {
      //TODO! snackbar
      return null;
    }

    // ignore: unused_local_variable
    final savedBookVolume = bookVolumeRepository.saveBookVolume(
      bookVolume,
    );

    //TODO! set pdf to download

    return null;
  }
}
