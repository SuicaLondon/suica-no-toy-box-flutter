import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:suica_no_toy_box_flutter/cubits/sponsor/sponsor_cubit.dart';
import 'package:suica_no_toy_box_flutter/cubits/sponsor/sponsor_state.dart';

class CompanySearchField extends StatefulWidget {
  const CompanySearchField({super.key});

  @override
  State<CompanySearchField> createState() => _CompanySearchFieldState();
}

class _CompanySearchFieldState extends State<CompanySearchField> {
  final ValueNotifier<bool> _isEmpty = ValueNotifier(true);
  final _formKey = GlobalKey<FormBuilderState>();

  void _onSearchSubmitted(String? value) {
    if (value != null && value.isNotEmpty) {
      context.read<SponsorCubit>().searchCompany(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: FormBuilderTextField(
        name: 'company_search',
        decoration: InputDecoration(
          hintText: 'Please enter company name in the UK',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surfaceContainer,
          suffixIcon: ValueListenableBuilder(
              valueListenable: _isEmpty,
              builder: (context, isEmpty, child) {
                if (isEmpty) {
                  return const SizedBox.shrink();
                }
                return BlocBuilder<SponsorCubit, SponsorState>(
                  builder: (context, state) {
                    if (state is FetchCompaniesLoading) {
                      return const SizedBox.shrink();
                    }
                    return IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _formKey.currentState?.fields['company_search']
                            ?.reset();
                        context.read<SponsorCubit>().searchCompany('');
                      },
                    );
                  },
                );
              }),
        ),
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.minLength(2),
        ]),
        onChanged: (value) {
          _isEmpty.value = value == null || value.isEmpty;
        },
        onSubmitted: _onSearchSubmitted,
      ),
    );
  }
}
