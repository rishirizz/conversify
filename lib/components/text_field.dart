import 'package:flutter/material.dart';

class ConversifyTextField extends StatelessWidget {
  final Widget suffixWidget;
  final String hintText;
  final TextInputType textInputType;
  const ConversifyTextField({
    required this.suffixWidget,
    required this.hintText,
    required this.textInputType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      child: TextField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          suffix: suffixWidget,
          hintText: hintText,
          filled: true,
          fillColor: Theme.of(context).colorScheme.secondary,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
      ),
    );
  }
}
