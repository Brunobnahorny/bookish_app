import 'dart:convert';
import 'package:bookish_app/src/domain/entities/book_volume/book_volume_links.dart';

class BookVolumeLinkApiModel extends BookVolumeLinksEntity {
  const BookVolumeLinkApiModel({
    required super.previewLink,
    required super.infoLink,
    required super.smallThumbnail,
    required super.thumbnail,
    required super.ePubDownloadLink,
    required super.pdfDownloadLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'previewLink': previewLink,
      'infoLink': infoLink,
      'smallThumbnail': smallThumbnail,
      'thumbnail': thumbnail,
      'ePubDownloadLink': ePubDownloadLink,
      'pdfDownloadLink': pdfDownloadLink,
    };
  }

  factory BookVolumeLinkApiModel.fromMap(Map<String, dynamic> map) {
    return BookVolumeLinkApiModel(
      previewLink: map['volumeInfo']?['previewLink'] as String?,
      infoLink: map['volumeInfo']?['infoLink'] as String?,
      smallThumbnail:
          map['volumeInfo']?['imageLinks']?['smallThumbnail'] as String?,
      thumbnail: map['volumeInfo']?['imageLinks']?['thumbnail'] as String?,
      ePubDownloadLink: map['accessInfo']?['epub']?['acsTokenLink'] as String?,
      pdfDownloadLink: map['accessInfo']?['pdf']?['acsTokenLink'] as String?,
    );
  }

  factory BookVolumeLinkApiModel.fromEntity(
    BookVolumeLinksEntity entity,
  ) {
    return BookVolumeLinkApiModel(
      previewLink: entity.previewLink,
      infoLink: entity.infoLink,
      smallThumbnail: entity.smallThumbnail,
      thumbnail: entity.thumbnail,
      ePubDownloadLink: entity.ePubDownloadLink,
      pdfDownloadLink: entity.pdfDownloadLink,
    );
  }

  String toJson() => json.encode(toMap());

  factory BookVolumeLinkApiModel.fromJson(String source) =>
      BookVolumeLinkApiModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
