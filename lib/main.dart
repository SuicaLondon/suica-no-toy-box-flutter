import 'package:flutter/material.dart';
import 'package:suica_no_toy_box_flutter/router/router.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Suica\'s Toy Box',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E2123),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      routerConfig: routers,
    );
  }
}
