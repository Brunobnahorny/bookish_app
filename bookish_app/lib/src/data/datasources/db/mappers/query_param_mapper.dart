import 'package:bookish_app/src/domain/entities/query_param/query_param_entity.dart';

import '../adapter/models/query_param_db_model.dart';

class QueryParamMapper {
  QueryParamDBModel toDB(QueryParamEntity entity) {
    return QueryParamDBModel(
      uniqueFieldIdentifier: entity.uniqueFieldIdentifier,
      includeInPartial: entity.includeInPartial,
      searchValue: entity.searchValue,
    );
  }

  QueryParamEntity toEntity(QueryParamDBModel model) {
    return QueryParamEntity(
      uniqueFieldIdentifier: model.uniqueFieldIdentifier,
      includeInPartial: model.includeInPartial,
      searchValue: model.searchValue,
    );
  }
}
