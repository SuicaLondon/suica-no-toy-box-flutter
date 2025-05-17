import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:suica_no_toy_box_flutter/clients/api_client.dart';
import 'package:suica_no_toy_box_flutter/clients/translate/translate_request.dart';

class TranslateClient extends ApiClient {
  TranslateClient()
      : super(
          dio: Dio(BaseOptions(
            baseUrl: 'https://suica-no-toy-box.vercel.app/api',
            responseType: ResponseType.stream,
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
          )),
        );

  Future<Stream<String>> translate({
    required String sourceLang,
    required String sourceText,
    required String targetLang,
  }) async {
    try {
      final response = await dio.post(
        '/translate',
        data: TranslateRequest(
          sourceLang: sourceLang,
          sourceText: sourceText,
          targetLang: targetLang,
        ).toJson(),
      );

      if (response.statusCode == 200) {
        final responseStream = response.data.stream as Stream<List<int>>;
        return responseStream.map((chunk) {
          return utf8.decode(chunk);
        });
      } else {
        throw Exception(
            'Failed to translate text, code: ${response.statusCode}, error: ${response.statusMessage}');
      }
    } catch (e) {
      rethrow;
    }
  }
}
