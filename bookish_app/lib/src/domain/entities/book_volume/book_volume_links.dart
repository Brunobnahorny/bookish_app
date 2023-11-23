import 'package:flutter/foundation.dart';

/// Book volume link information
///
///{@category Domain}
///{@subcategory Entity}
@immutable
abstract class BookVolumeLinksEntity {
  /// Link for partial book preview.
  final String? previewLink;

  /// Link for more detailed information.
  final String? infoLink;

  /// Preview thumbnail small.
  final String? smallThumbnail;

  /// Preview big thumbnail.
  final String? thumbnail;

  /// Link for volume ePub format download.
  final String? ePubDownloadLink;

  /// Link for volume PDF format download.
  final String? pdfDownloadLink;

  const BookVolumeLinksEntity({
    required this.previewLink,
    required this.infoLink,
    required this.smallThumbnail,
    required this.thumbnail,
    required this.ePubDownloadLink,
    required this.pdfDownloadLink,
  });
}
