class HttpRequest {
  final String method;
  final String path;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? headers;
  final dynamic payload;

  HttpRequest({
    required this.method,
    required this.path,
    this.payload,
    this.queryParameters,
    this.headers,
  });

  HttpRequest addHeaders(
    Map<String, dynamic> headers,
  ) =>
      HttpRequest(
        method: method,
        path: path,
        payload: payload,
        queryParameters: queryParameters,
        headers: headers,
      );
}
