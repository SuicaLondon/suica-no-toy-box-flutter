import 'package:dio/dio.dart';

/// Base API client for making HTTP requests
class ApiClient {
  ApiClient({
    Dio? dio,
  }) : _dio = dio ??
            Dio(BaseOptions(
              baseUrl: 'https://suica-no-toy-box.vercel.app/api',
              connectTimeout: const Duration(seconds: 5),
              receiveTimeout: const Duration(seconds: 3),
            ));
  final Dio _dio;

  /// Get the Dio instance
  Dio get dio => _dio;
}
