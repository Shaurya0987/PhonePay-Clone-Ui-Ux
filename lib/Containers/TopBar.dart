import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF673AB7),
      elevation: 0,
      toolbarHeight: 70, // 👈 increased AppBar height
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 8.0), // centers content vertically
        child: Row(
          children: [
            // 👇 Profile image
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: CircleAvatar(
                radius: 26, // increased radius for larger avatar
                backgroundImage: AssetImage('assets/hanuman.jpg'),
              ),
            ),

            const SizedBox(width: 12),

            // 👇 Location + Flag
            Row(
              children: [
                Image.asset(
                  "assets/indian_flag.png",
                  height: 24,
                  width: 32,
                ),
                const SizedBox(width: 6),
                const Text(
                  "Bengaluru",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20, // increased text size
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.white,
                  size: 28, // increased icon size
                ),
              ],
            ),
          ],
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 6),
          child: Row(
            children: [
              Icon(Icons.qr_code_scanner_rounded,
                  color: Colors.white, size: 28), // bigger icons
              SizedBox(width: 8),
              Icon(Icons.notifications_none,
                  color: Colors.white, size: 28),
              SizedBox(width: 8),
              Icon(Icons.help_outline, color: Colors.white, size: 28),
              SizedBox(width: 8),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70); // same as toolbarHeight
}
