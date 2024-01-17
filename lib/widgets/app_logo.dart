import 'package:flutter/material.dart';

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
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            kTagLine,
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            textAlign: TextAlign.center,
            textScaleFactor: getTextScaleFactor(context),
          ),
        ],
      ),
    );
  }
}
