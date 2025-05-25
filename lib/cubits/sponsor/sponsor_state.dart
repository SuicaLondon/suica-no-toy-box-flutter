import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suica_no_toy_box_flutter/clients/sponsor/sponsor_response.dart';

part 'sponsor_state.freezed.dart';

@freezed
class SponsorState with _$SponsorState {
  const factory SponsorState.initial({
    @Default('') String companyName,
    @Default([]) List<Company> companies,
    @Default(null) CompanyDetail? selectedCompanyDetail,
  }) = SponsorInitial;

  const factory SponsorState.fetchCompaniesLoading({
    required String companyName,
    required List<Company> companies,
    @Default(null) CompanyDetail? selectedCompanyDetail,
  }) = FetchCompaniesLoading;

  const factory SponsorState.fetchCompaniesSuccess({
    required String companyName,
    required List<Company> companies,
    @Default(null) CompanyDetail? selectedCompanyDetail,
  }) = FetchCompaniesSuccess;

  const factory SponsorState.fetchCompaniesError({
    required String error,
    @Default('') String companyName,
    @Default([]) List<Company> companies,
    @Default(null) CompanyDetail? selectedCompanyDetail,
  }) = FetchCompaniesError;

  const factory SponsorState.fetchCompanyDetailsLoading({
    required String companyName,
    required List<Company> companies,
    @Default(null) CompanyDetail? selectedCompanyDetail,
  }) = FetchCompanyDetailsLoading;

  const factory SponsorState.fetchCompanyDetailsSuccess({
    required String companyName,
    required List<Company> companies,
    required CompanyDetail selectedCompanyDetail,
  }) = FetchCompanyDetailsSuccess;

  const factory SponsorState.fetchCompanyDetailsError({
    required String error,
    required String companyName,
    @Default([]) List<Company> companies,
    @Default(null) CompanyDetail? selectedCompanyDetail,
  }) = FetchCompanyDetailsError;
}
