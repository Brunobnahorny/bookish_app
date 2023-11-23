import 'package:bookish_app/src/domain/entities/book_volume/book_volume_entity.dart';

class BookVolumeDBModel extends BookVolumeEntity {
  const BookVolumeDBModel({
    required super.publisher,
    required super.description,
    required super.isEbook,
    required super.isFree,
    required super.country,
    required super.viewability,
    required super.publicDomain,
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
