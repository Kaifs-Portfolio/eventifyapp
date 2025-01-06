import 'package:flutter/material.dart';

class EventifyTextWidget extends StatelessWidget {
  const EventifyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.42),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'eventify ',
              style: TextStyle(
                fontFamily: 'SFProDisplay',
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: const Color(0xFFFFEB04),
                letterSpacing: -1.4,
                shadows: [
                  Shadow(
                    offset: const Offset(2, 2),
                    blurRadius: 4.0,
                    color: Colors.black45,
                  ),
                ],
              ),
            ),
            TextSpan(
              text:
                  'helps you plan memorable events with ease, from weddings to birthdays.',
              style: TextStyle(
                fontFamily: 'SFProDisplay',
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: -0.5,
                shadows: [
                  Shadow(
                    offset: const Offset(2, 2),
                    blurRadius: 4.0,
                    color: Colors.black45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
