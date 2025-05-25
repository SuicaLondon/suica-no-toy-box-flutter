import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/clients/sponsor/sponsor_response.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyDetailCard extends StatelessWidget {
  const CompanyDetailCard({super.key, required this.companyDetail});
  final CompanyDetail companyDetail;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final onSurfaceVariant = theme.colorScheme.onSurfaceVariant;
    return Padding(
      padding: const EdgeInsets.all(Dimensions.md),
      child: Column(
        spacing: Dimensions.xs,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            companyDetail.name,
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ),
          ),
          Text(
            '${companyDetail.city} ${companyDetail.county}',
            style: textTheme.bodyMedium?.copyWith(
              color: onSurfaceVariant,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                companyDetail.rate,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                companyDetail.type,
                style: textTheme.bodyMedium?.copyWith(color: onSurfaceVariant),
              ),
            ],
          ),
          Text(
            'Website',
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () async {
              final url = companyDetail.url;
              if (url != null && await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
            child: Text(
              companyDetail.url ?? '-',
              style: textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.primary,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Description',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            companyDetail.description,
            style: textTheme.bodyMedium?.copyWith(color: onSurfaceVariant),
          ),
          const SizedBox(height: 24),
          Text(
            'Core Values',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            companyDetail.values,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: onSurfaceVariant),
          ),
          const SizedBox(height: 24),
          Text(
            'Business Model',
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            companyDetail.businessModel,
            style: textTheme.bodyMedium?.copyWith(color: onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}
