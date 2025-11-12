import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class AbottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AbottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      backgroundColor: Colors.transparent,
      color: Colors.deepPurple,
      buttonBackgroundColor: Colors.deepPurpleAccent,
      animationDuration: const Duration(milliseconds: 300),
      items: const [
        Icon(Icons.home_outlined, size: 30, color: Colors.white),
        Icon(Icons.search, size: 30, color: Colors.white),
        Icon(Icons.qr_code_scanner_rounded, size: 30, color: Colors.white),
        Icon(Icons.add_alert, size: 30, color: Colors.white),
        Icon(Icons.history, size: 30, color: Colors.white),
      ],
      onTap: onTap, // just call parent function
    );
  }
}
