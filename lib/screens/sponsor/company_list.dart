import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/clients/sponsor/sponsor_response.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/screens/sponsor/company_card.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({super.key, required this.companies});
  final List<Company> companies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: companies.length,
      itemBuilder: (context, index) {
        final company = companies[index];
        return Padding(
          key: ValueKey(company.id),
          padding: const EdgeInsets.symmetric(vertical: Dimensions.xs),
          child: CompanyCard(
            name: company.name,
            city: company.city,
            county: company.county,
            type: company.type,
            rate: company.rate,
            onTap: () {
              debugPrint(company.id);
            },
          ),
        );
      },
    );
  }
}
