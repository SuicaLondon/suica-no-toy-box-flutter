import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/widgets/navigation_card.dart';

class NavigationItem {
  const NavigationItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.route,
  });
  final String title;
  final String description;
  final IconData icon;
  final String route;
}

const navigationItems = [
  NavigationItem(
    title: 'Translate',
    description: 'A Google Translate-like interface for quick translations',
    icon: Icons.translate,
    route: '/translate',
  ),
  NavigationItem(
    title: 'Sponsor Me',
    description:
        'Search for sponsorships for the company you want to apply to in the UK',
    icon: Icons.work,
    route: '/sponsor',
  ),
  NavigationItem(
    title: 'What for dinner?',
    description: 'Decide what to eat for dinner',
    icon: Icons.restaurant,
    route: '/dinner',
  ),
  NavigationItem(
    title: 'Duration Board',
    description:
        'A board for tracking important dates to make your life have hope',
    icon: Icons.calendar_today,
    route: '/duration-board',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: Dimensions.xxl,
                        backgroundImage: NetworkImage(
                          'https://suica.dev/_next/image?url=%2Favatar.jpeg&w=256&q=75',
                        ),
                      ),
                      SizedBox(height: Dimensions.sm),
                      Text(
                        'Suica\'s Toy Box',
                      ),
                      SizedBox(height: Dimensions.sm),
                      Text(
                        'A collection of simple yet useful tools for daily use. All tools run entirely in your browser or use lightweight serverless functions - no data is stored on any servers.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: Dimensions.xxl),

                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: Dimensions.sm,
                  crossAxisSpacing: Dimensions.sm,
                  childAspectRatio: 1.1,
                  children: navigationItems
                      .map((item) => NavigationCard(
                            title: item.title,
                            description: item.description,
                            icon: item.icon,
                            route: item.route,
                          ))
                      .toList(),
                ),

                const SizedBox(height: Dimensions.xxl),

                // Privacy Section
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Privacy First'),
                      SizedBox(height: Dimensions.sm),
                      Text(
                        'All tools in Suica\'s Toy Box run entirely in your browser. We don\'t store any data, don\'t use cookies, and don\'t track your usage.',
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
