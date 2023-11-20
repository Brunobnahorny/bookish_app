import 'package:flutter/foundation.dart';

/// Query Search params.
///
///{@category Domain}
///{@subcategory Entity}
@immutable
class QueryParamEntity {
  /// Search field identifier.
  ///
  /// Must be unique by entity.
  final String uniqueFieldIdentifier;

  /// Tells if should pass parameter to partialize
  /// the datasource response.
  final bool includeInPartial;

  /// When querying by specific field must create with a value.
  final String? searchValue;

  const QueryParamEntity({
    required this.uniqueFieldIdentifier,
    required this.includeInPartial,
    required this.searchValue,
  });
}
