import 'package:flutter/material.dart';

import '../components/get_theme.dart';
import '../components/text_scale_factor.dart';
import '../constants/constants.dart';

class ConversifyLogo extends StatelessWidget {
  const ConversifyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Icon(
            Icons.message_outlined,
            size: 100,
            color: getTheme(context).primary,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            kTagLine,
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: getTheme(context).inversePrimary,
            ),
            textAlign: TextAlign.center,
            textScaleFactor: getTextScaleFactor(context),
          ),
        ],
      ),
    );
  }
}
