import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:suica_no_toy_box_flutter/cubits/sponsor/sponsor_cubit.dart';
import 'package:suica_no_toy_box_flutter/cubits/sponsor/sponsor_state.dart';
import 'package:suica_no_toy_box_flutter/screens/sponsor/company_list.dart';

class SponsorScreen extends StatefulWidget {
  const SponsorScreen({super.key});

  @override
  State<SponsorScreen> createState() => _SponsorScreenState();
}

class _SponsorScreenState extends State<SponsorScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  void _onSearchSubmitted(String? value) {
    if (value != null && value.isNotEmpty) {
      context.read<SponsorCubit>().searchCompany(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Sponsor Me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormBuilder(
              key: _formKey,
              child: FormBuilderTextField(
                name: 'company_search',
                decoration: InputDecoration(
                  hintText:
                      'Search for company sponsorship information in the UK',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _formKey.currentState?.fields['company_search']?.reset();
                      context.read<SponsorCubit>().searchCompany('');
                    },
                  ),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(2),
                ]),
                onSubmitted: _onSearchSubmitted,
              ),
            ),
            Expanded(
              child: BlocBuilder<SponsorCubit, SponsorState>(
                builder: (context, state) {
                  if (state is FetchCompaniesLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is FetchCompaniesError) {
                    return Center(
                      child: Text(state.error),
                    );
                  }
                  if (state is FetchCompaniesSuccess) {
                    return CompanyList(companies: state.companies);
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
