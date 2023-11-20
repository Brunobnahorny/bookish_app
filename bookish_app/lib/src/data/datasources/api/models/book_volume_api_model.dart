import 'package:bookish_app/src/domain/entities/book_volume/book_volume_download_status_entity.dart';

import '../../../../domain/entities/book_volume/book_volume_entity.dart';
import 'book_volume_link_api_model.dart';

class BookVolumeApiModel extends BookVolumeEntity {
  const BookVolumeApiModel({
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
    required super.publisher,
    required super.description,
    required super.isEbook,
    required super.isFree,
    required super.country,
    required super.viewability,
    required super.publicDomain,
    required super.downloadStatus,
  });

  factory BookVolumeApiModel.fromMap(Map<String, dynamic> map) {
    return BookVolumeApiModel(
      id: map['id'] as String,
      title: map['volumeInfo']['title'] as String,
      subtitle: map['volumeInfo']?['subtitle'] as String?,
      authors:
          map['volumeInfo']?['authors']?.cast<String>().toList() ?? <String>[],
      publishedDate: map['volumeInfo']['publishedDate'] as String,
      pageCount: map['volumeInfo']['pageCount'] as int,
      categories: map['volumeInfo']['categories'],
      isMaturityRating: map['volumeInfo']['maturityRating'] == "MATURE",
      language: map['volumeInfo']['language'] as String,
      links: BookVolumeLinkApiModel.fromMap(
        map,
      ),
      isForSale: map['saleInfo']?['saleability'],
      retailPrice: map['saleInfo']?['retailPrice']?['amount'] as double? ?? 0.0,
      currencyCode: map['saleInfo']?['retailPrice']?['currencyCode'],
      publisher: map['volumeInfo']['publisher'],
      description: map['volumeInfo']['description'],
      isEbook: map['saleInfo']['isEbook'],
      isFree: map['saleInfo']?['retailPrice']?['amount'] == null ||
          map['saleInfo']['retailPrice']['amount']! == 0,
      country: map['saleInfo']['country'],
      viewability: map['accessInfo']['viewability'],
      publicDomain: map['accessInfo']['publicDomain'],
      /// from api download status always starts false
      downloadStatus: BookVolumeDownloadStatus(downloaded: false),
    );
  }
}
