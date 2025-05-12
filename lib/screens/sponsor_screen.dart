import 'package:flutter/material.dart';

class SponsorScreen extends StatelessWidget {
  const SponsorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Sponsor Me'),
      ),
      body: const Center(
        child: Text('Sponsor Screen - Coming Soon'),
      ),
    );
  }
}
