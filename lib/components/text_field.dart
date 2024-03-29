import 'package:conversify/utilities/get_theme.dart';
import 'package:flutter/material.dart';

class ConversifyTextField extends StatelessWidget {
  final Widget suffixWidget;
  final String hintText;
  final TextInputType textInputType;
  final bool isObscured;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  const ConversifyTextField({
    required this.suffixWidget,
    required this.hintText,
    required this.textInputType,
    required this.isObscured,
    required this.textEditingController,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: TextFormField(
        controller: textEditingController,
        obscureText: isObscured,
        keyboardType: textInputType,
        decoration: InputDecoration(
          suffixIcon: suffixWidget,
          hintText: hintText,
          filled: true,
          fillColor: getTheme(context).secondary,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: getTheme(context).primary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: getTheme(context).tertiary,
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
