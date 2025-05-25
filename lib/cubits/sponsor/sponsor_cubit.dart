import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suica_no_toy_box_flutter/clients/sponsor/sponsor_client.dart';
import 'package:suica_no_toy_box_flutter/cubits/sponsor/sponsor_state.dart';

class SponsorCubit extends Cubit<SponsorState> {
  SponsorCubit({SponsorClient? sponsorClient})
      : _sponsorClient = sponsorClient ?? SponsorClient(),
        super(const SponsorState.initial());

  final SponsorClient _sponsorClient;

  Future<void> searchCompany(String companyName) async {
    try {
      emit(SponsorState.fetchCompaniesLoading(
        companyName: companyName,
        companies: state.companies,
      ));

      final companies = await _sponsorClient.searchCompanies(companyName);

      if (companies.isNotEmpty) {
        emit(SponsorState.fetchCompaniesSuccess(
          companyName: companyName,
          companies: companies,
        ));
      } else {
        emit(const SponsorState.initial());
      }
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
      emit(SponsorState.fetchCompaniesError(
        error: e.toString(),
        companyName: companyName,
        companies: state.companies,
      ));
    }
  }
}
