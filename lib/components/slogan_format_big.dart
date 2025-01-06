/*
This contains the style for slogan widgets.
Particularly used in the onboarding screen.
*/

import 'package:flutter/material.dart';

class SloganWidgetBig extends StatelessWidget {
  final String sloganText;

  const SloganWidgetBig({super.key, required this.sloganText});

  @override
  Widget build(BuildContext context) {
    return Text(
      sloganText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: 'SFProDisplay',
        fontSize: 31,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        letterSpacing: -1.4,
        shadows: [
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 4.0,
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}
