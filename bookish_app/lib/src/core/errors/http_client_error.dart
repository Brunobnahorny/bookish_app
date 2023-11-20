class HttpClientError {
  final dynamic payload;
  final String? message;
  final int? responseCode;
  final Exception exception;

  const HttpClientError.fromException({
    required this.payload,
    required this.message,
    required this.responseCode,
    required this.exception,
  });
}
