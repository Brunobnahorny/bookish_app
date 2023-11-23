import 'package:drift/drift.dart';

class BookVolumeDBTable extends Table {
  TextColumn get authors => text().map(const ListStringConverter())();
  TextColumn get categories => text().map(const ListStringConverter())();
  TextColumn get country => text().nullable()();
  TextColumn get currencyCode => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get id => text()();
  BoolColumn get isEbook => boolean()();
  TextColumn get isForSale => text().nullable()();
  BoolColumn get isFree => boolean()();
  BoolColumn get isMaturityRating => boolean().nullable()();
  TextColumn get language => text()();
  IntColumn get pageCount => integer()();
  BoolColumn get publicDomain => boolean()();
  TextColumn get publishedDate => text().nullable()();
  TextColumn get publisher => text().nullable()();
  RealColumn get retailPrice => real()();
  TextColumn get subtitle => text().nullable()();
  TextColumn get title => text()();
  TextColumn get viewability => text().nullable()();
  TextColumn get previewLink => text().nullable()();
  TextColumn get infoLink => text().nullable()();
  TextColumn get smallThumbnail => text().nullable()();
  TextColumn get thumbnail => text().nullable()();
  TextColumn get ePubDownloadLink => text().nullable()();
  TextColumn get pdfDownloadLink => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class ListStringConverter extends TypeConverter<List<String>, String> {
  const ListStringConverter();

  static const _splitPattern = r'\\\';

  @override
  List<String> fromSql(String fromDb) {
    return fromDb.split(_splitPattern);
  }

  @override
  String toSql(List<String> value) {
    return value.join(_splitPattern);
  }
}
