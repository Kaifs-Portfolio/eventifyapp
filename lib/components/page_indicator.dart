/*
Page indicator widget mainly used on the onboarding screen.
Might implement later idk tbh we'll see.
*/

import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage; // Current active page
  final int pageCount; // Total number of pages

  const PageIndicator({
    super.key,
    required this.currentPage,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(pageCount, (index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            height: 12.0,
            width: currentPage == index ? 12.0 : 8.0,
            decoration: BoxDecoration(
              color: currentPage == index ? Colors.white : Colors.grey,
              borderRadius: BorderRadius.circular(6.0),
            ),
          );
        }),
      ),
    );
  }
}
