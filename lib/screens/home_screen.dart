import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/constants/navigation_items.dart';
import 'package:suica_no_toy_box_flutter/widgets/navigation_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.lg),
            child: Column(
              spacing: Dimensions.xxl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    spacing: Dimensions.sm,
                    children: [
                      const CircleAvatar(
                        radius: Dimensions.xxl,
                        backgroundImage: NetworkImage(
                          'https://suica.dev/_next/image?url=%2Favatar.jpeg&w=256&q=75',
                        ),
                      ),
                      Text(
                        'Suica\'s Toy Box',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'A collection of simple yet useful tools for daily use. All tools run entirely in your browser or use lightweight serverless functions - no data is stored on any servers.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),

                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: Dimensions.sm,
                  crossAxisSpacing: Dimensions.sm,
                  childAspectRatio: 1,
                  children: navigationItems
                      .map((item) => NavigationCard(
                            title: item.title,
                            description: item.description,
                            icon: item.icon,
                            route: item.route,
                          ))
                      .toList(),
                ),

                // Privacy Section
                Container(
                  padding: const EdgeInsets.all(Dimensions.lg),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(Dimensions.lg),
                  ),
                  child: Column(
                    spacing: Dimensions.sm,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Privacy First',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      Text(
                        "All tools in Suica's Toy Box run entirely in your browser. We don't store any data, don't use cookies, and don't track your usage.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "The entire source code is available on GitHub for transparency and verification.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
