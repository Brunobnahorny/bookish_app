import 'dart:convert';

import 'package:bookish_app/src/core/adapters/http_client/http_client_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/adapters/http_client/http_client_adapter.dart';
import '../../../../core/errors/http_client_error.dart';

class DioAdapter implements IHttpClientAdapter {
  final Dio dio;
  final List<InterceptorsWrapper>? interceptors;

  DioAdapter({
    required this.dio,
    this.interceptors,
  }) {
    if (interceptors != null) dio.interceptors.addAll(interceptors!);
  }

  @override
  Future<HttpClientResponse> get(
    String path, {
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final result = await dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      final mappedData = await _mapResponseData(result.data);

      final response = HttpClientResponse(
        data: mappedData,
        responseCode: result.statusCode ?? 200,
      );

      return response;
    } on DioException catch (e) {
      throw HttpClientError.fromException(
        payload: null,
        message: e.response?.statusMessage,
        responseCode: e.response?.statusCode,
        exception: e,
      );
    }
  }

  @override
  Future<HttpClientResponse> post(
    String path, {
    dynamic payload,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final result = await dio.post(
        path,
        queryParameters: queryParameters,
        data: payload,
        options: Options(headers: headers),
      );

      final mappedData = await _mapResponseData(result.data);

      final response = HttpClientResponse(
        data: mappedData,
        responseCode: result.statusCode ?? 200,
      );

      return response;
    } on DioException catch (e) {
      throw HttpClientError.fromException(
        payload: null,
        message: e.response?.statusMessage,
        responseCode: e.response?.statusCode,
        exception: e,
      );
    }
  }

  @override
  Future<HttpClientResponse> put(
    String path, {
    dynamic payload,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final result = await dio.put(
        path,
        queryParameters: queryParameters,
        data: payload,
        options: Options(headers: headers),
      );

      final mappedData = await _mapResponseData(result.data);

      final response = HttpClientResponse(
        data: mappedData,
        responseCode: result.statusCode ?? 200,
      );

      return response;
    } on DioException catch (e) {
      throw HttpClientError.fromException(
        payload: null,
        message: e.response?.statusMessage,
        responseCode: e.response?.statusCode,
        exception: e,
      );
    }
  }

  @override
  Future<HttpClientResponse> delete(
    String path, {
    dynamic payload,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final result = await dio.delete(
        path,
        queryParameters: queryParameters,
        data: payload,
        options: Options(headers: headers),
      );

      final mappedData = await _mapResponseData(result.data);

      final response = HttpClientResponse(
        data: mappedData,
        responseCode: result.statusCode ?? 200,
      );

      return response;
    } on DioException catch (e) {
      throw HttpClientError.fromException(
        payload: null,
        message: e.response?.statusMessage,
        responseCode: e.response?.statusCode,
        exception: e,
      );
    }
  }

  Future<Map<String, dynamic>?> _mapResponseData(dynamic data) async {
    if (data is String) {
      final computedData = await compute(jsonDecode, data);

      return computedData as Future<Map<String, dynamic>>;
    }

    return data!;
  }
}
