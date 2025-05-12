import 'package:flutter/material.dart';

class TranslateScreen extends StatelessWidget {
  const TranslateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Translate'),
      ),
      body: const Center(
        child: Text('Translate Screen - Coming Soon'),
      ),
    );
  }
}
