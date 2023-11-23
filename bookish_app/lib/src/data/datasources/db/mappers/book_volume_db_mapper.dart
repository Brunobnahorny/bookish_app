import 'package:bookish_app/src/data/datasources/db/adapter/models/book_volume_db_model.dart';
import 'package:bookish_app/src/data/datasources/db/adapter/models/book_volume_links_db_model.dart';
import 'package:bookish_app/src/data/datasources/db/adapter/models/book_volume_local_properties_db_model.dart';
import 'package:bookish_app/src/domain/entities/book_volume/book_volume_entity.dart';

import '../adapter/database/drift_app_db.dart';

class BookVolumeDBMapper {
  BookVolumeDBTableData toDB(BookVolumeEntity entity) {
    return BookVolumeDBTableData(
      authors: entity.authors,
      categories: entity.categories,
      country: entity.country,
      currencyCode: entity.currencyCode,
      description: entity.description,
      id: entity.id,
      isEbook: entity.isEbook,
      isForSale: entity.isForSale,
      isFree: entity.isFree,
      isMaturityRating: entity.isMaturityRating,
      language: entity.language,
      pageCount: entity.pageCount,
      publicDomain: entity.publicDomain,
      publishedDate: entity.publishedDate,
      publisher: entity.publisher,
      retailPrice: entity.retailPrice,
      subtitle: entity.subtitle,
      title: entity.title,
      viewability: entity.viewability,
      previewLink: entity.links.previewLink,
      infoLink: entity.links.infoLink,
      smallThumbnail: entity.links.smallThumbnail,
      thumbnail: entity.links.thumbnail,
      ePubDownloadLink: entity.links.ePubDownloadLink,
      pdfDownloadLink: entity.links.pdfDownloadLink,
    );
  }

  BookVolumeDBModel toEntity(BookVolumeDBTableData model) {
    return BookVolumeDBModel(
      publisher: model.publisher,
      description: model.description,
      isEbook: model.isEbook,
      isFree: model.isFree,
      country: model.country,
      viewability: model.viewability,
      publicDomain: model.publicDomain,
      id: model.id,
      title: model.title,
      subtitle: model.subtitle,
      authors: model.authors,
      publishedDate: model.publishedDate,
      pageCount: model.pageCount,
      categories: model.categories,
      isMaturityRating: model.isMaturityRating,
      language: model.language,
      links: BookVolumeLinksDBModel(
        previewLink: model.previewLink,
        infoLink: model.infoLink,
        smallThumbnail: model.smallThumbnail,
        thumbnail: model.thumbnail,
        ePubDownloadLink: model.ePubDownloadLink,
        pdfDownloadLink: model.pdfDownloadLink,
      ),
      isForSale: model.isForSale,
      retailPrice: model.retailPrice,
      currencyCode: model.currencyCode,
      localProperties: BookVolumeLocalPropertiesDBModel(
        downloaded: true,
      ),
    );
  }
}
