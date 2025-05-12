import 'package:go_router/go_router.dart';
import 'package:suica_no_toy_box_flutter/screens/dinner_screen.dart';
import 'package:suica_no_toy_box_flutter/screens/duration_board_screen.dart';
import 'package:suica_no_toy_box_flutter/screens/home_screen.dart';
import 'package:suica_no_toy_box_flutter/screens/sponsor_screen.dart';
import 'package:suica_no_toy_box_flutter/screens/translate_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/translate',
      builder: (context, state) => const TranslateScreen(),
    ),
    GoRoute(
      path: '/sponsor',
      builder: (context, state) => const SponsorScreen(),
    ),
    GoRoute(
      path: '/dinner',
      builder: (context, state) => const DinnerScreen(),
    ),
    GoRoute(
      path: '/duration-board',
      builder: (context, state) => const DurationBoardScreen(),
    ),
  ],
);
