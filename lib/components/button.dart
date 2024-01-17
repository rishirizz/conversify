import 'package:conversify/components/get_theme.dart';
import 'package:flutter/material.dart';

class ConversifyButton extends StatelessWidget {
  final String buttonText;
  final FontWeight fontWeight;
  const ConversifyButton({
    required this.buttonText,
    required this.fontWeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            buttonText,
            style: TextStyle(
              color: getTheme(context).inversePrimary,
              fontWeight: fontWeight,
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
