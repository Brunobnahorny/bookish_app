import '../../../../domain/entities/book_volume/book_volume_partial_entity.dart';
import 'book_volume_link_api_model.dart';

class BookVolumePartialApiModel extends BookVolumePartialEntity {
  const BookVolumePartialApiModel({
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
  });

  factory BookVolumePartialApiModel.fromMap(Map<String, dynamic> map) {
    return BookVolumePartialApiModel(
      id: map['id'] as String,
      title: map['volumeInfo']['title'] as String,
      subtitle: map['volumeInfo']?['subtitle'] as String?,
      authors:
          map['volumeInfo']?['authors']?.cast<String>().toList() ?? <String>[],
      publishedDate: map['volumeInfo']['publishedDate'] as String?,
      pageCount: (map['volumeInfo']['pageCount'] ?? 0) as int,
      categories: map['volumeInfo']['categories']?.cast<String>().toList() ??
          <String>[],
      isMaturityRating: map['volumeInfo']['maturityRating'] == "MATURE",
      language: map['volumeInfo']['language'] as String,
      links: BookVolumeLinkApiModel.fromMap(
        map,
      ),
      isForSale: map['saleInfo']?['saleability'],
      retailPrice: map['saleInfo']?['retailPrice']?['amount'] is int
          ? (map['saleInfo']?['retailPrice']?['amount'] as int).toDouble()
          : map['saleInfo']?['retailPrice']?['amount'] ?? 0.0,
      currencyCode: map['saleInfo']?['retailPrice']?['currencyCode'],
    );
  }
}
