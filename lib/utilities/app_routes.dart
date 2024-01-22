import 'package:conversify/pages/login/view/login_page.dart';
import 'package:conversify/pages/register/view/register_page.dart';
import 'package:flutter/material.dart';

class AppPageRouter {
  getPageRoute(RouteSettings settings) {
    var routes = <String, WidgetBuilder>{
      LoginPage.routeName: (BuildContext context) => const LoginPage(),
      RegisterPage.routeName: (BuildContext context) => const RegisterPage(),
    };
    return routes[settings.name];
  }
}
