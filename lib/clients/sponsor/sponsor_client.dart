import 'package:dio/dio.dart';
import 'package:suica_no_toy_box_flutter/clients/api_client.dart';
import 'package:suica_no_toy_box_flutter/clients/sponsor/sponsor_response.dart';
import 'package:suica_no_toy_box_flutter/constants/urls.dart';

class SponsorClient extends ApiClient {
  SponsorClient()
      : super(
          dio: Dio(BaseOptions(
            baseUrl: domain,
            responseType: ResponseType.json,
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
          )),
        );

  Future<List<Company>> searchCompanies(String companyName) async {
    final queryParameters = {
      'name': companyName,
    };
    try {
      final response = await dio.get(
        '/api/sponsorship',
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200) {
        final data = SponsorResponse.fromJson(response.data);
        return data.data;
      } else {
        throw Exception('Failed to search company ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<CompanyDetail?> getCompanyDetails(String companyId) async {
    try {
      final response = await dio.get('/api/sponsorship/$companyId');
      if (response.statusCode == 200) {
        return CompanyDetailResponse.fromJson(response.data).data;
      }
    } catch (e) {
      throw Exception('Error getting company details: $e');
    }
    return null;
  }
}
