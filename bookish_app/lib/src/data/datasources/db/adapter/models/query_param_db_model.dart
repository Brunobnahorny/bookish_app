import 'package:bookish_app/src/domain/entities/query_param/query_param_entity.dart';

class QueryParamDBModel extends QueryParamEntity {
  const QueryParamDBModel({
    required super.uniqueFieldIdentifier,
    required super.includeInPartial,
    required super.searchValue,
  });
}
