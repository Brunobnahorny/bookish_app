import 'package:flutter/foundation.dart';

/// Used to pass list information across the app.
///
///{@category Domain}
///{@subcategory Entity}
@immutable
abstract class ListParamsEntity {
  /// Used to order the list
  /// datasource may not have the ability
  final String orderByField;

  const ListParamsEntity({
    required this.orderByField,
  });
}
