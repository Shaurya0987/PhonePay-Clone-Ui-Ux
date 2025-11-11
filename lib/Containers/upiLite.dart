import 'package:flutter/material.dart';

class Upilite extends StatelessWidget {
  const Upilite({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // small image
                Image.asset(
                  "assets/upi.jpg",
                  height: 40,
                  width: 70,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                const Text(
                   "UPI Id: narsimba.rajuvaripet@ybl *",
                  style: TextStyle(
                    fontSize: 14,
                    // fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 25,),
                Text("No failures")
              ],
            ),

            // Arrow on right
            const Icon(
              Icons.chevron_right,
              size: 22,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
