import 'package:conversify/pages/login_page.dart';
import 'package:conversify/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: conversifyLightMode,
      home: const LoginPage(),
    );
  }
}
