import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Center(
            child: Text(
          "Sign in",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: -1.4,
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 4.0,
                color: Color(0xFFE7532B),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
