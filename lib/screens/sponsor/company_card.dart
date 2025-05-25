import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/screens/sponsor/company_tag.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    super.key,
    required this.name,
    required this.city,
    required this.county,
    required this.type,
    required this.rate,
    required this.onTap,
  });
  final String name;
  final String city;
  final String county;
  final String type;
  final String rate;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headlineSmall = theme.textTheme.headlineSmall;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.md),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.md),
          child: Column(
            spacing: Dimensions.md,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                spacing: Dimensions.sm,
                children: [
                  CompanyTag(text: city),
                  if (county.isNotEmpty) CompanyTag(text: county),
                ],
              ),
              Text(
                'Type: $type',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
              ),
              Text(
                'Rate: $rate',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
