import 'package:conversify/components/text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/app_logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConversifyLogo(),
            ConversifyTextField(
              suffixWidget: Icon(
                Icons.email,
                color: Theme.of(context).colorScheme.primary,
              ),
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}
