import 'package:conversify/components/text_field.dart';
import 'package:conversify/pages/login_page.dart';
import 'package:conversify/pages/register/controller/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/button.dart';
import '../../../components/get_theme.dart';
import '../../../components/text_scale_factor.dart';
import '../../../constants/constants.dart';
import '../../../widgets/login_and_register_footer.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscured = false;
  bool _isObscuredTwo = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _confirmPwdController = TextEditingController();
  final GlobalKey<FormState> _signUpFormKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Form(
          key: _signUpFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kRegistrationText,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: getTheme(context).inversePrimary,
                ),
                textAlign: TextAlign.center,
                textScaleFactor: getTextScaleFactor(context),
              ),
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the email to proceed.';
                  } else {
                    return null;
                  }
                },
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password.';
                  } else if (value.length < 6) {
                    return 'Password is too short';
                  } else {
                    return null;
                  }
                },
              ),
              ConversifyTextField(
                suffixWidget: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscuredTwo = !_isObscuredTwo;
                    });
                  },
                  icon: Icon(
                    (_isObscuredTwo == true)
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: getTheme(context).primary,
                  ),
                ),
                hintText: 'Confirm Password',
                textInputType: TextInputType.text,
                isObscured: _isObscuredTwo,
                textEditingController: _confirmPwdController,
                validator: (value) {
                  if (_confirmPwdController.text != _pwdController.text) {
                    return 'The passwords don\'t match.';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Consumer<RegisterModuleProvider>(
                  builder: (context,
                          RegisterModuleProvider registerModuleProvider, _) =>
                      ConversifyButton(
                    buttonText: 'R E G I S T E R',
                    fontWeight: FontWeight.bold,
                    onPressed: () {
                      Provider.of<RegisterModuleProvider>(context,
                              listen: false)
                          .signUp(
                        context,
                        _signUpFormKey,
                        _scaffoldKey,
                        _emailController.text.trim(),
                        _pwdController.text.trim(),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LoginAndRegisterFooter(
                footerText: 'Already a Conversifier? ',
                intentText: 'Login',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    LoginPage.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
