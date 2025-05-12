import 'package:flutter/material.dart';

class DinnerScreen extends StatelessWidget {
  const DinnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(
          'What for dinner?',
        ),
      ),
      body: const Center(
        child: Text('Dinner Screen - Coming Soon'),
      ),
    );
  }
}
