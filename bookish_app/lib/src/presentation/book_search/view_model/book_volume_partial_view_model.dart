import 'package:rx_notifier/rx_notifier.dart';

import '../../../domain/entities/book_volume/book_volume_partial_entity.dart';

enum BookVolumeDownloadStatus {
  notDownloaded,
  downloading,
  downloaded,
  error,
}

class BookVolumePartialVM {
  final BookVolumePartialEntity entity;

  late final downloadStatus = RxNotifier(entity.localProperties.downloaded
      ? BookVolumeDownloadStatus.downloaded
      : BookVolumeDownloadStatus.notDownloaded);

  BookVolumePartialVM({
    required this.entity,
  });
}
