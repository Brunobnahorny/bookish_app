// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_app_db.dart';

// ignore_for_file: type=lint
class $BookVolumeDBTableTable extends BookVolumeDBTable
    with TableInfo<$BookVolumeDBTableTable, BookVolumeDBTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookVolumeDBTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _authorsMeta =
      const VerificationMeta('authors');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> authors =
      GeneratedColumn<String>('authors', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>(
              $BookVolumeDBTableTable.$converterauthors);
  static const VerificationMeta _categoriesMeta =
      const VerificationMeta('categories');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> categories =
      GeneratedColumn<String>('categories', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>(
              $BookVolumeDBTableTable.$convertercategories);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isEbookMeta =
      const VerificationMeta('isEbook');
  @override
  late final GeneratedColumn<bool> isEbook = GeneratedColumn<bool>(
      'is_ebook', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_ebook" IN (0, 1))'));
  static const VerificationMeta _isForSaleMeta =
      const VerificationMeta('isForSale');
  @override
  late final GeneratedColumn<String> isForSale = GeneratedColumn<String>(
      'is_for_sale', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isFreeMeta = const VerificationMeta('isFree');
  @override
  late final GeneratedColumn<bool> isFree = GeneratedColumn<bool>(
      'is_free', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_free" IN (0, 1))'));
  static const VerificationMeta _isMaturityRatingMeta =
      const VerificationMeta('isMaturityRating');
  @override
  late final GeneratedColumn<bool> isMaturityRating = GeneratedColumn<bool>(
      'is_maturity_rating', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_maturity_rating" IN (0, 1))'));
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pageCountMeta =
      const VerificationMeta('pageCount');
  @override
  late final GeneratedColumn<int> pageCount = GeneratedColumn<int>(
      'page_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _publicDomainMeta =
      const VerificationMeta('publicDomain');
  @override
  late final GeneratedColumn<bool> publicDomain = GeneratedColumn<bool>(
      'public_domain', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("public_domain" IN (0, 1))'));
  static const VerificationMeta _publishedDateMeta =
      const VerificationMeta('publishedDate');
  @override
  late final GeneratedColumn<String> publishedDate = GeneratedColumn<String>(
      'published_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _publisherMeta =
      const VerificationMeta('publisher');
  @override
  late final GeneratedColumn<String> publisher = GeneratedColumn<String>(
      'publisher', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _retailPriceMeta =
      const VerificationMeta('retailPrice');
  @override
  late final GeneratedColumn<double> retailPrice = GeneratedColumn<double>(
      'retail_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _subtitleMeta =
      const VerificationMeta('subtitle');
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
      'subtitle', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _viewabilityMeta =
      const VerificationMeta('viewability');
  @override
  late final GeneratedColumn<String> viewability = GeneratedColumn<String>(
      'viewability', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _previewLinkMeta =
      const VerificationMeta('previewLink');
  @override
  late final GeneratedColumn<String> previewLink = GeneratedColumn<String>(
      'preview_link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _infoLinkMeta =
      const VerificationMeta('infoLink');
  @override
  late final GeneratedColumn<String> infoLink = GeneratedColumn<String>(
      'info_link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _smallThumbnailMeta =
      const VerificationMeta('smallThumbnail');
  @override
  late final GeneratedColumn<String> smallThumbnail = GeneratedColumn<String>(
      'small_thumbnail', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _thumbnailMeta =
      const VerificationMeta('thumbnail');
  @override
  late final GeneratedColumn<String> thumbnail = GeneratedColumn<String>(
      'thumbnail', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ePubDownloadLinkMeta =
      const VerificationMeta('ePubDownloadLink');
  @override
  late final GeneratedColumn<String> ePubDownloadLink = GeneratedColumn<String>(
      'e_pub_download_link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pdfDownloadLinkMeta =
      const VerificationMeta('pdfDownloadLink');
  @override
  late final GeneratedColumn<String> pdfDownloadLink = GeneratedColumn<String>(
      'pdf_download_link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        authors,
        categories,
        country,
        currencyCode,
        description,
        id,
        isEbook,
        isForSale,
        isFree,
        isMaturityRating,
        language,
        pageCount,
        publicDomain,
        publishedDate,
        publisher,
        retailPrice,
        subtitle,
        title,
        viewability,
        previewLink,
        infoLink,
        smallThumbnail,
        thumbnail,
        ePubDownloadLink,
        pdfDownloadLink
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'book_volume_d_b_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<BookVolumeDBTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_authorsMeta, const VerificationResult.success());
    context.handle(_categoriesMeta, const VerificationResult.success());
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('is_ebook')) {
      context.handle(_isEbookMeta,
          isEbook.isAcceptableOrUnknown(data['is_ebook']!, _isEbookMeta));
    } else if (isInserting) {
      context.missing(_isEbookMeta);
    }
    if (data.containsKey('is_for_sale')) {
      context.handle(
          _isForSaleMeta,
          isForSale.isAcceptableOrUnknown(
              data['is_for_sale']!, _isForSaleMeta));
    }
    if (data.containsKey('is_free')) {
      context.handle(_isFreeMeta,
          isFree.isAcceptableOrUnknown(data['is_free']!, _isFreeMeta));
    } else if (isInserting) {
      context.missing(_isFreeMeta);
    }
    if (data.containsKey('is_maturity_rating')) {
      context.handle(
          _isMaturityRatingMeta,
          isMaturityRating.isAcceptableOrUnknown(
              data['is_maturity_rating']!, _isMaturityRatingMeta));
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('page_count')) {
      context.handle(_pageCountMeta,
          pageCount.isAcceptableOrUnknown(data['page_count']!, _pageCountMeta));
    } else if (isInserting) {
      context.missing(_pageCountMeta);
    }
    if (data.containsKey('public_domain')) {
      context.handle(
          _publicDomainMeta,
          publicDomain.isAcceptableOrUnknown(
              data['public_domain']!, _publicDomainMeta));
    } else if (isInserting) {
      context.missing(_publicDomainMeta);
    }
    if (data.containsKey('published_date')) {
      context.handle(
          _publishedDateMeta,
          publishedDate.isAcceptableOrUnknown(
              data['published_date']!, _publishedDateMeta));
    }
    if (data.containsKey('publisher')) {
      context.handle(_publisherMeta,
          publisher.isAcceptableOrUnknown(data['publisher']!, _publisherMeta));
    }
    if (data.containsKey('retail_price')) {
      context.handle(
          _retailPriceMeta,
          retailPrice.isAcceptableOrUnknown(
              data['retail_price']!, _retailPriceMeta));
    } else if (isInserting) {
      context.missing(_retailPriceMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(_subtitleMeta,
          subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('viewability')) {
      context.handle(
          _viewabilityMeta,
          viewability.isAcceptableOrUnknown(
              data['viewability']!, _viewabilityMeta));
    }
    if (data.containsKey('preview_link')) {
      context.handle(
          _previewLinkMeta,
          previewLink.isAcceptableOrUnknown(
              data['preview_link']!, _previewLinkMeta));
    }
    if (data.containsKey('info_link')) {
      context.handle(_infoLinkMeta,
          infoLink.isAcceptableOrUnknown(data['info_link']!, _infoLinkMeta));
    }
    if (data.containsKey('small_thumbnail')) {
      context.handle(
          _smallThumbnailMeta,
          smallThumbnail.isAcceptableOrUnknown(
              data['small_thumbnail']!, _smallThumbnailMeta));
    }
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta,
          thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta));
    }
    if (data.containsKey('e_pub_download_link')) {
      context.handle(
          _ePubDownloadLinkMeta,
          ePubDownloadLink.isAcceptableOrUnknown(
              data['e_pub_download_link']!, _ePubDownloadLinkMeta));
    }
    if (data.containsKey('pdf_download_link')) {
      context.handle(
          _pdfDownloadLinkMeta,
          pdfDownloadLink.isAcceptableOrUnknown(
              data['pdf_download_link']!, _pdfDownloadLinkMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BookVolumeDBTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookVolumeDBTableData(
      authors: $BookVolumeDBTableTable.$converterauthors.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}authors'])!),
      categories: $BookVolumeDBTableTable.$convertercategories.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}categories'])!),
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country']),
      currencyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      isEbook: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_ebook'])!,
      isForSale: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}is_for_sale']),
      isFree: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_free'])!,
      isMaturityRating: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_maturity_rating']),
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language'])!,
      pageCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_count'])!,
      publicDomain: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}public_domain'])!,
      publishedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}published_date']),
      publisher: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}publisher']),
      retailPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}retail_price'])!,
      subtitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subtitle']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      viewability: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}viewability']),
      previewLink: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preview_link']),
      infoLink: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}info_link']),
      smallThumbnail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}small_thumbnail']),
      thumbnail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thumbnail']),
      ePubDownloadLink: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}e_pub_download_link']),
      pdfDownloadLink: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}pdf_download_link']),
    );
  }

  @override
  $BookVolumeDBTableTable createAlias(String alias) {
    return $BookVolumeDBTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converterauthors =
      const ListStringConverter();
  static TypeConverter<List<String>, String> $convertercategories =
      const ListStringConverter();
}

class BookVolumeDBTableData extends DataClass
    implements Insertable<BookVolumeDBTableData> {
  final List<String> authors;
  final List<String> categories;
  final String? country;
  final String? currencyCode;
  final String? description;
  final String id;
  final bool isEbook;
  final String? isForSale;
  final bool isFree;
  final bool? isMaturityRating;
  final String language;
  final int pageCount;
  final bool publicDomain;
  final String? publishedDate;
  final String? publisher;
  final double retailPrice;
  final String? subtitle;
  final String title;
  final String? viewability;
  final String? previewLink;
  final String? infoLink;
  final String? smallThumbnail;
  final String? thumbnail;
  final String? ePubDownloadLink;
  final String? pdfDownloadLink;
  const BookVolumeDBTableData(
      {required this.authors,
      required this.categories,
      this.country,
      this.currencyCode,
      this.description,
      required this.id,
      required this.isEbook,
      this.isForSale,
      required this.isFree,
      this.isMaturityRating,
      required this.language,
      required this.pageCount,
      required this.publicDomain,
      this.publishedDate,
      this.publisher,
      required this.retailPrice,
      this.subtitle,
      required this.title,
      this.viewability,
      this.previewLink,
      this.infoLink,
      this.smallThumbnail,
      this.thumbnail,
      this.ePubDownloadLink,
      this.pdfDownloadLink});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      final converter = $BookVolumeDBTableTable.$converterauthors;
      map['authors'] = Variable<String>(converter.toSql(authors));
    }
    {
      final converter = $BookVolumeDBTableTable.$convertercategories;
      map['categories'] = Variable<String>(converter.toSql(categories));
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || currencyCode != null) {
      map['currency_code'] = Variable<String>(currencyCode);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['id'] = Variable<String>(id);
    map['is_ebook'] = Variable<bool>(isEbook);
    if (!nullToAbsent || isForSale != null) {
      map['is_for_sale'] = Variable<String>(isForSale);
    }
    map['is_free'] = Variable<bool>(isFree);
    if (!nullToAbsent || isMaturityRating != null) {
      map['is_maturity_rating'] = Variable<bool>(isMaturityRating);
    }
    map['language'] = Variable<String>(language);
    map['page_count'] = Variable<int>(pageCount);
    map['public_domain'] = Variable<bool>(publicDomain);
    if (!nullToAbsent || publishedDate != null) {
      map['published_date'] = Variable<String>(publishedDate);
    }
    if (!nullToAbsent || publisher != null) {
      map['publisher'] = Variable<String>(publisher);
    }
    map['retail_price'] = Variable<double>(retailPrice);
    if (!nullToAbsent || subtitle != null) {
      map['subtitle'] = Variable<String>(subtitle);
    }
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || viewability != null) {
      map['viewability'] = Variable<String>(viewability);
    }
    if (!nullToAbsent || previewLink != null) {
      map['preview_link'] = Variable<String>(previewLink);
    }
    if (!nullToAbsent || infoLink != null) {
      map['info_link'] = Variable<String>(infoLink);
    }
    if (!nullToAbsent || smallThumbnail != null) {
      map['small_thumbnail'] = Variable<String>(smallThumbnail);
    }
    if (!nullToAbsent || thumbnail != null) {
      map['thumbnail'] = Variable<String>(thumbnail);
    }
    if (!nullToAbsent || ePubDownloadLink != null) {
      map['e_pub_download_link'] = Variable<String>(ePubDownloadLink);
    }
    if (!nullToAbsent || pdfDownloadLink != null) {
      map['pdf_download_link'] = Variable<String>(pdfDownloadLink);
    }
    return map;
  }

  BookVolumeDBTableCompanion toCompanion(bool nullToAbsent) {
    return BookVolumeDBTableCompanion(
      authors: Value(authors),
      categories: Value(categories),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      currencyCode: currencyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(currencyCode),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      id: Value(id),
      isEbook: Value(isEbook),
      isForSale: isForSale == null && nullToAbsent
          ? const Value.absent()
          : Value(isForSale),
      isFree: Value(isFree),
      isMaturityRating: isMaturityRating == null && nullToAbsent
          ? const Value.absent()
          : Value(isMaturityRating),
      language: Value(language),
      pageCount: Value(pageCount),
      publicDomain: Value(publicDomain),
      publishedDate: publishedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(publishedDate),
      publisher: publisher == null && nullToAbsent
          ? const Value.absent()
          : Value(publisher),
      retailPrice: Value(retailPrice),
      subtitle: subtitle == null && nullToAbsent
          ? const Value.absent()
          : Value(subtitle),
      title: Value(title),
      viewability: viewability == null && nullToAbsent
          ? const Value.absent()
          : Value(viewability),
      previewLink: previewLink == null && nullToAbsent
          ? const Value.absent()
          : Value(previewLink),
      infoLink: infoLink == null && nullToAbsent
          ? const Value.absent()
          : Value(infoLink),
      smallThumbnail: smallThumbnail == null && nullToAbsent
          ? const Value.absent()
          : Value(smallThumbnail),
      thumbnail: thumbnail == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnail),
      ePubDownloadLink: ePubDownloadLink == null && nullToAbsent
          ? const Value.absent()
          : Value(ePubDownloadLink),
      pdfDownloadLink: pdfDownloadLink == null && nullToAbsent
          ? const Value.absent()
          : Value(pdfDownloadLink),
    );
  }

  factory BookVolumeDBTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookVolumeDBTableData(
      authors: serializer.fromJson<List<String>>(json['authors']),
      categories: serializer.fromJson<List<String>>(json['categories']),
      country: serializer.fromJson<String?>(json['country']),
      currencyCode: serializer.fromJson<String?>(json['currencyCode']),
      description: serializer.fromJson<String?>(json['description']),
      id: serializer.fromJson<String>(json['id']),
      isEbook: serializer.fromJson<bool>(json['isEbook']),
      isForSale: serializer.fromJson<String?>(json['isForSale']),
      isFree: serializer.fromJson<bool>(json['isFree']),
      isMaturityRating: serializer.fromJson<bool?>(json['isMaturityRating']),
      language: serializer.fromJson<String>(json['language']),
      pageCount: serializer.fromJson<int>(json['pageCount']),
      publicDomain: serializer.fromJson<bool>(json['publicDomain']),
      publishedDate: serializer.fromJson<String?>(json['publishedDate']),
      publisher: serializer.fromJson<String?>(json['publisher']),
      retailPrice: serializer.fromJson<double>(json['retailPrice']),
      subtitle: serializer.fromJson<String?>(json['subtitle']),
      title: serializer.fromJson<String>(json['title']),
      viewability: serializer.fromJson<String?>(json['viewability']),
      previewLink: serializer.fromJson<String?>(json['previewLink']),
      infoLink: serializer.fromJson<String?>(json['infoLink']),
      smallThumbnail: serializer.fromJson<String?>(json['smallThumbnail']),
      thumbnail: serializer.fromJson<String?>(json['thumbnail']),
      ePubDownloadLink: serializer.fromJson<String?>(json['ePubDownloadLink']),
      pdfDownloadLink: serializer.fromJson<String?>(json['pdfDownloadLink']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'authors': serializer.toJson<List<String>>(authors),
      'categories': serializer.toJson<List<String>>(categories),
      'country': serializer.toJson<String?>(country),
      'currencyCode': serializer.toJson<String?>(currencyCode),
      'description': serializer.toJson<String?>(description),
      'id': serializer.toJson<String>(id),
      'isEbook': serializer.toJson<bool>(isEbook),
      'isForSale': serializer.toJson<String?>(isForSale),
      'isFree': serializer.toJson<bool>(isFree),
      'isMaturityRating': serializer.toJson<bool?>(isMaturityRating),
      'language': serializer.toJson<String>(language),
      'pageCount': serializer.toJson<int>(pageCount),
      'publicDomain': serializer.toJson<bool>(publicDomain),
      'publishedDate': serializer.toJson<String?>(publishedDate),
      'publisher': serializer.toJson<String?>(publisher),
      'retailPrice': serializer.toJson<double>(retailPrice),
      'subtitle': serializer.toJson<String?>(subtitle),
      'title': serializer.toJson<String>(title),
      'viewability': serializer.toJson<String?>(viewability),
      'previewLink': serializer.toJson<String?>(previewLink),
      'infoLink': serializer.toJson<String?>(infoLink),
      'smallThumbnail': serializer.toJson<String?>(smallThumbnail),
      'thumbnail': serializer.toJson<String?>(thumbnail),
      'ePubDownloadLink': serializer.toJson<String?>(ePubDownloadLink),
      'pdfDownloadLink': serializer.toJson<String?>(pdfDownloadLink),
    };
  }

  BookVolumeDBTableData copyWith(
          {List<String>? authors,
          List<String>? categories,
          Value<String?> country = const Value.absent(),
          Value<String?> currencyCode = const Value.absent(),
          Value<String?> description = const Value.absent(),
          String? id,
          bool? isEbook,
          Value<String?> isForSale = const Value.absent(),
          bool? isFree,
          Value<bool?> isMaturityRating = const Value.absent(),
          String? language,
          int? pageCount,
          bool? publicDomain,
          Value<String?> publishedDate = const Value.absent(),
          Value<String?> publisher = const Value.absent(),
          double? retailPrice,
          Value<String?> subtitle = const Value.absent(),
          String? title,
          Value<String?> viewability = const Value.absent(),
          Value<String?> previewLink = const Value.absent(),
          Value<String?> infoLink = const Value.absent(),
          Value<String?> smallThumbnail = const Value.absent(),
          Value<String?> thumbnail = const Value.absent(),
          Value<String?> ePubDownloadLink = const Value.absent(),
          Value<String?> pdfDownloadLink = const Value.absent()}) =>
      BookVolumeDBTableData(
        authors: authors ?? this.authors,
        categories: categories ?? this.categories,
        country: country.present ? country.value : this.country,
        currencyCode:
            currencyCode.present ? currencyCode.value : this.currencyCode,
        description: description.present ? description.value : this.description,
        id: id ?? this.id,
        isEbook: isEbook ?? this.isEbook,
        isForSale: isForSale.present ? isForSale.value : this.isForSale,
        isFree: isFree ?? this.isFree,
        isMaturityRating: isMaturityRating.present
            ? isMaturityRating.value
            : this.isMaturityRating,
        language: language ?? this.language,
        pageCount: pageCount ?? this.pageCount,
        publicDomain: publicDomain ?? this.publicDomain,
        publishedDate:
            publishedDate.present ? publishedDate.value : this.publishedDate,
        publisher: publisher.present ? publisher.value : this.publisher,
        retailPrice: retailPrice ?? this.retailPrice,
        subtitle: subtitle.present ? subtitle.value : this.subtitle,
        title: title ?? this.title,
        viewability: viewability.present ? viewability.value : this.viewability,
        previewLink: previewLink.present ? previewLink.value : this.previewLink,
        infoLink: infoLink.present ? infoLink.value : this.infoLink,
        smallThumbnail:
            smallThumbnail.present ? smallThumbnail.value : this.smallThumbnail,
        thumbnail: thumbnail.present ? thumbnail.value : this.thumbnail,
        ePubDownloadLink: ePubDownloadLink.present
            ? ePubDownloadLink.value
            : this.ePubDownloadLink,
        pdfDownloadLink: pdfDownloadLink.present
            ? pdfDownloadLink.value
            : this.pdfDownloadLink,
      );
  @override
  String toString() {
    return (StringBuffer('BookVolumeDBTableData(')
          ..write('authors: $authors, ')
          ..write('categories: $categories, ')
          ..write('country: $country, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('description: $description, ')
          ..write('id: $id, ')
          ..write('isEbook: $isEbook, ')
          ..write('isForSale: $isForSale, ')
          ..write('isFree: $isFree, ')
          ..write('isMaturityRating: $isMaturityRating, ')
          ..write('language: $language, ')
          ..write('pageCount: $pageCount, ')
          ..write('publicDomain: $publicDomain, ')
          ..write('publishedDate: $publishedDate, ')
          ..write('publisher: $publisher, ')
          ..write('retailPrice: $retailPrice, ')
          ..write('subtitle: $subtitle, ')
          ..write('title: $title, ')
          ..write('viewability: $viewability, ')
          ..write('previewLink: $previewLink, ')
          ..write('infoLink: $infoLink, ')
          ..write('smallThumbnail: $smallThumbnail, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('ePubDownloadLink: $ePubDownloadLink, ')
          ..write('pdfDownloadLink: $pdfDownloadLink')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        authors,
        categories,
        country,
        currencyCode,
        description,
        id,
        isEbook,
        isForSale,
        isFree,
        isMaturityRating,
        language,
        pageCount,
        publicDomain,
        publishedDate,
        publisher,
        retailPrice,
        subtitle,
        title,
        viewability,
        previewLink,
        infoLink,
        smallThumbnail,
        thumbnail,
        ePubDownloadLink,
        pdfDownloadLink
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookVolumeDBTableData &&
          other.authors == this.authors &&
          other.categories == this.categories &&
          other.country == this.country &&
          other.currencyCode == this.currencyCode &&
          other.description == this.description &&
          other.id == this.id &&
          other.isEbook == this.isEbook &&
          other.isForSale == this.isForSale &&
          other.isFree == this.isFree &&
          other.isMaturityRating == this.isMaturityRating &&
          other.language == this.language &&
          other.pageCount == this.pageCount &&
          other.publicDomain == this.publicDomain &&
          other.publishedDate == this.publishedDate &&
          other.publisher == this.publisher &&
          other.retailPrice == this.retailPrice &&
          other.subtitle == this.subtitle &&
          other.title == this.title &&
          other.viewability == this.viewability &&
          other.previewLink == this.previewLink &&
          other.infoLink == this.infoLink &&
          other.smallThumbnail == this.smallThumbnail &&
          other.thumbnail == this.thumbnail &&
          other.ePubDownloadLink == this.ePubDownloadLink &&
          other.pdfDownloadLink == this.pdfDownloadLink);
}

class BookVolumeDBTableCompanion
    extends UpdateCompanion<BookVolumeDBTableData> {
  final Value<List<String>> authors;
  final Value<List<String>> categories;
  final Value<String?> country;
  final Value<String?> currencyCode;
  final Value<String?> description;
  final Value<String> id;
  final Value<bool> isEbook;
  final Value<String?> isForSale;
  final Value<bool> isFree;
  final Value<bool?> isMaturityRating;
  final Value<String> language;
  final Value<int> pageCount;
  final Value<bool> publicDomain;
  final Value<String?> publishedDate;
  final Value<String?> publisher;
  final Value<double> retailPrice;
  final Value<String?> subtitle;
  final Value<String> title;
  final Value<String?> viewability;
  final Value<String?> previewLink;
  final Value<String?> infoLink;
  final Value<String?> smallThumbnail;
  final Value<String?> thumbnail;
  final Value<String?> ePubDownloadLink;
  final Value<String?> pdfDownloadLink;
  final Value<int> rowid;
  const BookVolumeDBTableCompanion({
    this.authors = const Value.absent(),
    this.categories = const Value.absent(),
    this.country = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.description = const Value.absent(),
    this.id = const Value.absent(),
    this.isEbook = const Value.absent(),
    this.isForSale = const Value.absent(),
    this.isFree = const Value.absent(),
    this.isMaturityRating = const Value.absent(),
    this.language = const Value.absent(),
    this.pageCount = const Value.absent(),
    this.publicDomain = const Value.absent(),
    this.publishedDate = const Value.absent(),
    this.publisher = const Value.absent(),
    this.retailPrice = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.title = const Value.absent(),
    this.viewability = const Value.absent(),
    this.previewLink = const Value.absent(),
    this.infoLink = const Value.absent(),
    this.smallThumbnail = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.ePubDownloadLink = const Value.absent(),
    this.pdfDownloadLink = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BookVolumeDBTableCompanion.insert({
    required List<String> authors,
    required List<String> categories,
    this.country = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.description = const Value.absent(),
    required String id,
    required bool isEbook,
    this.isForSale = const Value.absent(),
    required bool isFree,
    this.isMaturityRating = const Value.absent(),
    required String language,
    required int pageCount,
    required bool publicDomain,
    this.publishedDate = const Value.absent(),
    this.publisher = const Value.absent(),
    required double retailPrice,
    this.subtitle = const Value.absent(),
    required String title,
    this.viewability = const Value.absent(),
    this.previewLink = const Value.absent(),
    this.infoLink = const Value.absent(),
    this.smallThumbnail = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.ePubDownloadLink = const Value.absent(),
    this.pdfDownloadLink = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : authors = Value(authors),
        categories = Value(categories),
        id = Value(id),
        isEbook = Value(isEbook),
        isFree = Value(isFree),
        language = Value(language),
        pageCount = Value(pageCount),
        publicDomain = Value(publicDomain),
        retailPrice = Value(retailPrice),
        title = Value(title);
  static Insertable<BookVolumeDBTableData> custom({
    Expression<String>? authors,
    Expression<String>? categories,
    Expression<String>? country,
    Expression<String>? currencyCode,
    Expression<String>? description,
    Expression<String>? id,
    Expression<bool>? isEbook,
    Expression<String>? isForSale,
    Expression<bool>? isFree,
    Expression<bool>? isMaturityRating,
    Expression<String>? language,
    Expression<int>? pageCount,
    Expression<bool>? publicDomain,
    Expression<String>? publishedDate,
    Expression<String>? publisher,
    Expression<double>? retailPrice,
    Expression<String>? subtitle,
    Expression<String>? title,
    Expression<String>? viewability,
    Expression<String>? previewLink,
    Expression<String>? infoLink,
    Expression<String>? smallThumbnail,
    Expression<String>? thumbnail,
    Expression<String>? ePubDownloadLink,
    Expression<String>? pdfDownloadLink,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (authors != null) 'authors': authors,
      if (categories != null) 'categories': categories,
      if (country != null) 'country': country,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (isEbook != null) 'is_ebook': isEbook,
      if (isForSale != null) 'is_for_sale': isForSale,
      if (isFree != null) 'is_free': isFree,
      if (isMaturityRating != null) 'is_maturity_rating': isMaturityRating,
      if (language != null) 'language': language,
      if (pageCount != null) 'page_count': pageCount,
      if (publicDomain != null) 'public_domain': publicDomain,
      if (publishedDate != null) 'published_date': publishedDate,
      if (publisher != null) 'publisher': publisher,
      if (retailPrice != null) 'retail_price': retailPrice,
      if (subtitle != null) 'subtitle': subtitle,
      if (title != null) 'title': title,
      if (viewability != null) 'viewability': viewability,
      if (previewLink != null) 'preview_link': previewLink,
      if (infoLink != null) 'info_link': infoLink,
      if (smallThumbnail != null) 'small_thumbnail': smallThumbnail,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (ePubDownloadLink != null) 'e_pub_download_link': ePubDownloadLink,
      if (pdfDownloadLink != null) 'pdf_download_link': pdfDownloadLink,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BookVolumeDBTableCompanion copyWith(
      {Value<List<String>>? authors,
      Value<List<String>>? categories,
      Value<String?>? country,
      Value<String?>? currencyCode,
      Value<String?>? description,
      Value<String>? id,
      Value<bool>? isEbook,
      Value<String?>? isForSale,
      Value<bool>? isFree,
      Value<bool?>? isMaturityRating,
      Value<String>? language,
      Value<int>? pageCount,
      Value<bool>? publicDomain,
      Value<String?>? publishedDate,
      Value<String?>? publisher,
      Value<double>? retailPrice,
      Value<String?>? subtitle,
      Value<String>? title,
      Value<String?>? viewability,
      Value<String?>? previewLink,
      Value<String?>? infoLink,
      Value<String?>? smallThumbnail,
      Value<String?>? thumbnail,
      Value<String?>? ePubDownloadLink,
      Value<String?>? pdfDownloadLink,
      Value<int>? rowid}) {
    return BookVolumeDBTableCompanion(
      authors: authors ?? this.authors,
      categories: categories ?? this.categories,
      country: country ?? this.country,
      currencyCode: currencyCode ?? this.currencyCode,
      description: description ?? this.description,
      id: id ?? this.id,
      isEbook: isEbook ?? this.isEbook,
      isForSale: isForSale ?? this.isForSale,
      isFree: isFree ?? this.isFree,
      isMaturityRating: isMaturityRating ?? this.isMaturityRating,
      language: language ?? this.language,
      pageCount: pageCount ?? this.pageCount,
      publicDomain: publicDomain ?? this.publicDomain,
      publishedDate: publishedDate ?? this.publishedDate,
      publisher: publisher ?? this.publisher,
      retailPrice: retailPrice ?? this.retailPrice,
      subtitle: subtitle ?? this.subtitle,
      title: title ?? this.title,
      viewability: viewability ?? this.viewability,
      previewLink: previewLink ?? this.previewLink,
      infoLink: infoLink ?? this.infoLink,
      smallThumbnail: smallThumbnail ?? this.smallThumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
      ePubDownloadLink: ePubDownloadLink ?? this.ePubDownloadLink,
      pdfDownloadLink: pdfDownloadLink ?? this.pdfDownloadLink,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (authors.present) {
      final converter = $BookVolumeDBTableTable.$converterauthors;

      map['authors'] = Variable<String>(converter.toSql(authors.value));
    }
    if (categories.present) {
      final converter = $BookVolumeDBTableTable.$convertercategories;

      map['categories'] = Variable<String>(converter.toSql(categories.value));
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (isEbook.present) {
      map['is_ebook'] = Variable<bool>(isEbook.value);
    }
    if (isForSale.present) {
      map['is_for_sale'] = Variable<String>(isForSale.value);
    }
    if (isFree.present) {
      map['is_free'] = Variable<bool>(isFree.value);
    }
    if (isMaturityRating.present) {
      map['is_maturity_rating'] = Variable<bool>(isMaturityRating.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (pageCount.present) {
      map['page_count'] = Variable<int>(pageCount.value);
    }
    if (publicDomain.present) {
      map['public_domain'] = Variable<bool>(publicDomain.value);
    }
    if (publishedDate.present) {
      map['published_date'] = Variable<String>(publishedDate.value);
    }
    if (publisher.present) {
      map['publisher'] = Variable<String>(publisher.value);
    }
    if (retailPrice.present) {
      map['retail_price'] = Variable<double>(retailPrice.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (viewability.present) {
      map['viewability'] = Variable<String>(viewability.value);
    }
    if (previewLink.present) {
      map['preview_link'] = Variable<String>(previewLink.value);
    }
    if (infoLink.present) {
      map['info_link'] = Variable<String>(infoLink.value);
    }
    if (smallThumbnail.present) {
      map['small_thumbnail'] = Variable<String>(smallThumbnail.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (ePubDownloadLink.present) {
      map['e_pub_download_link'] = Variable<String>(ePubDownloadLink.value);
    }
    if (pdfDownloadLink.present) {
      map['pdf_download_link'] = Variable<String>(pdfDownloadLink.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookVolumeDBTableCompanion(')
          ..write('authors: $authors, ')
          ..write('categories: $categories, ')
          ..write('country: $country, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('description: $description, ')
          ..write('id: $id, ')
          ..write('isEbook: $isEbook, ')
          ..write('isForSale: $isForSale, ')
          ..write('isFree: $isFree, ')
          ..write('isMaturityRating: $isMaturityRating, ')
          ..write('language: $language, ')
          ..write('pageCount: $pageCount, ')
          ..write('publicDomain: $publicDomain, ')
          ..write('publishedDate: $publishedDate, ')
          ..write('publisher: $publisher, ')
          ..write('retailPrice: $retailPrice, ')
          ..write('subtitle: $subtitle, ')
          ..write('title: $title, ')
          ..write('viewability: $viewability, ')
          ..write('previewLink: $previewLink, ')
          ..write('infoLink: $infoLink, ')
          ..write('smallThumbnail: $smallThumbnail, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('ePubDownloadLink: $ePubDownloadLink, ')
          ..write('pdfDownloadLink: $pdfDownloadLink, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $BookVolumeDBTableTable bookVolumeDBTable =
      $BookVolumeDBTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [bookVolumeDBTable];
}
