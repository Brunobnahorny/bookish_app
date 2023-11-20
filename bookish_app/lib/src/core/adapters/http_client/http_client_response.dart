class HttpClientResponse {
  final int responseCode;
  final Map<String, dynamic>? data;

  HttpClientResponse({
    this.data,
    required this.responseCode,
  });
}
