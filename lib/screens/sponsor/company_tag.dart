import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';

class CompanyTag extends StatelessWidget {
  const CompanyTag({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.sm,
        vertical: Dimensions.xs,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(Dimensions.md),
      ),
      child: Text(
        text,
        style: bodyMedium?.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
