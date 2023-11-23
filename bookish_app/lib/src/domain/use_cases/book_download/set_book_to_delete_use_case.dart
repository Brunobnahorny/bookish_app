import 'package:bookish_app/src/domain/entities/book_volume/book_volume_partial_entity.dart';

import '../../../data/repository/book_volume/book_volume_repository.dart';
import '../../entities/book_download/book_download_typedef.dart';

/// [DownloadBookStream] should be used to verify current download data.
///
///{@category Domain}
///{@subcategory UseCases}
class SetBookToDeleteUseCase {
  final BookVolumeRepository bookVolumeRepository;

  SetBookToDeleteUseCase({
    required this.bookVolumeRepository,
  });

  Future<bool?> call(BookVolumePartialEntity partial) async {
    final hasInternetConnection =
        await bookVolumeRepository.hasInternetConnection();

    if (!hasInternetConnection) {
      //TODO! snackbar q tá sem internet
      return null;
    }

    final result = await bookVolumeRepository.removeBookVolume(
      partial,
    );

    return result;
  }
}
