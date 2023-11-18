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
    this.previewLink,
    this.infoLink,
    this.smallThumbnail,
    this.thumbnail,
    this.ePubDownloadLink,
    this.pdfDownloadLink,
  });
}
