import 'package:bookish_app/src/domain/entities/book_volume/book_volume_links.dart';

class BookVolumeLinksDBModel extends BookVolumeLinksEntity {
  const BookVolumeLinksDBModel({
    required super.previewLink,
    required super.infoLink,
    required super.smallThumbnail,
    required super.thumbnail,
    required super.ePubDownloadLink,
    required super.pdfDownloadLink,
  });
}
