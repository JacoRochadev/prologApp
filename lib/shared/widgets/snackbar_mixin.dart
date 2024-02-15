import 'package:flutter/material.dart';

mixin SnackbarMixin {
  void showSnackBarError(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Theme.of(context).colorScheme.error,
        content: Text(
          message,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void showSnackBarSucessfully(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Theme.of(context).primaryColor,
        content: Text(
          message,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
