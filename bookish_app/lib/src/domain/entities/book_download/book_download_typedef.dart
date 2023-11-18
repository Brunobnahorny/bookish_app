import 'package:flutter/foundation.dart';

/// Stream containing the current cancelation callback,
/// and download progress from the api client.
///
/// Calling the [cancelCallback] should be naive.
/// [conclusionPercentage] must be updated by the stream.
///
///{@category Domain}
///{@subcategory UseCases}
typedef DownloadBookStream
    = Stream<(double conclusionPercentage, VoidCallback cancelCallback)>;
