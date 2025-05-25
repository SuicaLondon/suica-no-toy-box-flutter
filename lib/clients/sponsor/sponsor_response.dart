import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_response.freezed.dart';
part 'sponsor_response.g.dart';

// TODO: Move it to swagger
@freezed
class SponsorResponse with _$SponsorResponse {
  const factory SponsorResponse({
    required List<Company> data,
  }) = _SponsorResponse;

  factory SponsorResponse.fromJson(Map<String, dynamic> json) =>
      _$SponsorResponseFromJson(json);
}

@freezed
class CompanyDetailResponse with _$CompanyDetailResponse {
  const factory CompanyDetailResponse({
    required CompanyDetail data,
  }) = _CompanyDetailResponse;

  factory CompanyDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailResponseFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    required String city,
    required String county,
    required String type,
    required String rate,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}

@freezed
class CompanyDetail with _$CompanyDetail {
  const factory CompanyDetail({
    required String id,
    required String name,
    required String city,
    required String county,
    required String rate,
    bool? hasUrl,
    String? url,
    required String description,
    required String values,
    required String businessModel,
    required String createdAt,
    required String updatedAt,
  }) = _CompanyDetail;

  factory CompanyDetail.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailFromJson(json);
}
