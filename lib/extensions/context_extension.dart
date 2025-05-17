import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Theme.of(this).colorScheme.primary,
    ));
  }

  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Theme.of(this).colorScheme.error,
    ));
  }
}
