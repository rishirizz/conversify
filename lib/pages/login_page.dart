import 'package:conversify/components/text_field.dart';
import 'package:conversify/pages/register_page.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/get_theme.dart';
import '../widgets/app_logo.dart';
import '../widgets/login_and_register_footer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscured = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ConversifyLogo(),
            const SizedBox(
              height: 20,
            ),
            ConversifyTextField(
              suffixWidget: Icon(
                Icons.email,
                color: Theme.of(context).colorScheme.primary,
              ),
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
              isObscured: false,
              textEditingController: _emailController,
            ),
            ConversifyTextField(
              suffixWidget: IconButton(
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                icon: Icon(
                  (_isObscured == true)
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: getTheme(context).primary,
                ),
              ),
              hintText: 'Password',
              textInputType: TextInputType.text,
              isObscured: _isObscured,
              textEditingController: _pwdController,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: double.infinity,
              child: ConversifyButton(
                buttonText: 'L O G I N',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LoginAndRegisterFooter(
              footerText: 'Not a Conversifier? ',
              intentText: 'Register Now',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RegisterPage.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
