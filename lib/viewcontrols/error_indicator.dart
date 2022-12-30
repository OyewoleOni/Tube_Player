import 'package:flutter/material.dart';

import '../app_styles.dart';

class ErrorIndicator extends StatelessWidget {
  final String ErrorText;

  const ErrorIndicator({required this.ErrorText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: Image.asset("assets/images/error.png"),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Uh-ho",
            style: kMediumLightText18,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            ErrorText,
            style: kRegularLightText14,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
