import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';

class NavigationCard extends StatelessWidget {
  const NavigationCard({
    super.key,
    required this.route,
    required this.icon,
    required this.title,
    required this.description,
  });
  final String route;
  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.lg),
      ),
      child: InkWell(
        onTap: () => context.go(route),
        borderRadius: BorderRadius.circular(Dimensions.lg),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: Dimensions.lg),
              const SizedBox(height: Dimensions.sm),
              Text(
                title,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: Dimensions.sm),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
