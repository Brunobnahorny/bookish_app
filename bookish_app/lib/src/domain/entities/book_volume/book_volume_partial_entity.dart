import 'package:flutter/foundation.dart';

import 'book_volume_download_status_entity.dart';
import 'book_volume_links.dart';

/// Partial book volume description
///
///{@category Domain}
///{@subcategory Entity}
@immutable
abstract class BookVolumePartialEntity {
  /// Google book api unique identification.
  final String id;

  /// Book title.
  final String title;

  /// Book subtitle.
  final String? subtitle;

  /// Authors from this book.
  final List<String> authors;

  /// Date of the publication of this volume \
  /// it's not the same as the first edition.
  ///
  /// Could be in the formats \
  /// YYYY \
  /// YYYY-MM-DD
  /// null
  final String? publishedDate;

  /// Total number of pages.
  final int pageCount;

  /// Category classification.
  final List<String> categories;

  /// Maturity classification.
  ///
  /// true means its 18+ rating.
  final bool? isMaturityRating;

  /// Language of this book edition.
  final String language;

  /// Book volume image, download, detail links.
  final BookVolumeLinksEntity links;

  /// Is sale in the google books store.
  final String? isForSale;

  /// Is sale in the google books store.
  final double retailPrice;

  /// Currency which is listed to sale.
  final String? currencyCode;

  /// mutable download status
  final BookVolumeDownloadStatus downloadStatus;

  const BookVolumePartialEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.publishedDate,
    required this.pageCount,
    required this.categories,
    required this.isMaturityRating,
    required this.language,
    required this.links,
    required this.isForSale,
    required this.retailPrice,
    required this.currencyCode,
    required this.downloadStatus,
  });
}
