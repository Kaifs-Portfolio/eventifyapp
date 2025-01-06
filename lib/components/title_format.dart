/* 
This contains the style of title widgets, specifically for eventify.
Mainly seen in the onbiarding screen.
*/

import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String titleText;

  const TitleWidget({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: const TextStyle(
        fontFamily: 'SFProDisplay',
        fontSize: 64,
        fontWeight: FontWeight.w800,
        color: Color(0xFFFFEB04),
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
