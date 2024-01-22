import 'package:flutter/material.dart';

import '../utilities/get_theme.dart';

class LoginAndRegisterFooter extends StatelessWidget {
  final String footerText;
  final String intentText;
  final VoidCallback onTap;

  const LoginAndRegisterFooter({
    required this.footerText,
    required this.intentText,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          footerText,
          style: TextStyle(
            fontSize: 14,
            height: 1.5,
            color: getTheme(context).inversePrimary,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            intentText,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: getTheme(context).inversePrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
