import 'package:conversify/pages/register/controller/register_provider.dart';
import 'package:conversify/pages/register/view/register_page.dart';
import 'package:conversify/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => RegisterModuleProvider(),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
