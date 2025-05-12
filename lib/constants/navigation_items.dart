import 'package:flutter/material.dart';

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
