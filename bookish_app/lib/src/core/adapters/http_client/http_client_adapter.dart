import 'package:bookish_app/src/core/adapters/http_client/http_client_response.dart';

abstract class IHttpClientAdapter {
  Future<HttpClientResponse> post(
    String path, {
    dynamic payload,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  });

  Future<HttpClientResponse> get(
    String path, {
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  });

  Future<HttpClientResponse> put(
    String path, {
    dynamic payload,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  });

  Future<HttpClientResponse> delete(
    String path, {
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  });
}
