import 'package:conversify/pages/register_page.dart';
import 'package:conversify/themes/theme.dart';
import 'package:flutter/material.dart';

import 'components/app_routes.dart';

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
      debugShowCheckedModeBanner: false,
      home: const RegisterPage(),
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder = AppPageRouter().getPageRoute(settings);
        return MaterialPageRoute(builder: (ctx) {
          return builder(ctx);
        });
      },
    );
  }
}
