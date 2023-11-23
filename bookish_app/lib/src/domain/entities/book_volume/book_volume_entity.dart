import 'package:flutter/foundation.dart';

import 'book_volume_partial_entity.dart';

/// Book volume detailed description
///
///{@category Domain}
///{@subcategory Entity}
@immutable
abstract class BookVolumeEntity extends BookVolumePartialEntity {
  /// Edition publisher name.
  final String? publisher;

  /// Volume description.
  ///
  /// Usually contains at least 3 descriptions \
  /// and the respective ratings from the publishers. \
  ///
  /// Ex:
  /// ```md
  /// The classic novel about a daring experiment in human intelligence  \
  /// 'A masterpiece of poignant brilliance . . . heartbreaking, and utterly,\
  ///  completely brilliant' Guardian \
  /// 'A timeless tearjerker' Independent Charlie Gordon, \
  /// IQ 68, is a floor sweeper and the gentle butt of \
  /// everyone's jokes - ...
  /// ```
  final String? description;

  /// ... what?
  final bool isEbook;

  /// it's downloadable without a price.
  final bool isFree;

  /// Country of publication.
  final String? country;

  /// Is it available without account OAuth2 authentication.
  final String? viewability;

  /// It's allowed public distribution.
  final bool publicDomain;

  const BookVolumeEntity({
    required this.publisher,
    required this.description,
    required this.isEbook,
    required this.isFree,
    required this.country,
    required this.viewability,
    required this.publicDomain,
    required super.id,
    required super.title,
    required super.subtitle,
    required super.authors,
    required super.publishedDate,
    required super.pageCount,
    required super.categories,
    required super.isMaturityRating,
    required super.language,
    required super.links,
    required super.isForSale,
    required super.retailPrice,
    required super.currencyCode,
    required super.localProperties,
  });
}
