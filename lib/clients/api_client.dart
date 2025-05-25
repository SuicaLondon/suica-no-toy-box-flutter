import 'package:dio/dio.dart';
import 'package:suica_no_toy_box_flutter/constants/urls.dart';

/// Base API client for making HTTP requests
class ApiClient {
  ApiClient({
    Dio? dio,
  }) : _dio = dio ??
            Dio(BaseOptions(
              baseUrl: domain,
              connectTimeout: const Duration(seconds: 5),
              receiveTimeout: const Duration(seconds: 3),
            ));
  final Dio _dio;

  /// Get the Dio instance
  Dio get dio => _dio;
}
