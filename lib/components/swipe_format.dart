/*
This contains the style of text for the swipe gesture.
Only really seen in the onboarding screen.
*/

import 'package:flutter/material.dart';

class SwipeWidget extends StatelessWidget {
  final String swipeText;

  const SwipeWidget({super.key, required this.swipeText});

  @override
  Widget build(BuildContext context) {
    return Text(
      swipeText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: 'SFProDisplay',
        fontSize: 30,
        fontWeight: FontWeight.w200,
        color: Colors.white,
        letterSpacing: -1.4,
      ),
    );
  }
}
