import 'package:flutter/material.dart';

class Walletoptions extends StatelessWidget {
  const Walletoptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _option(icon: Icons.card_travel_sharp, label: "PhonePe Wallet"),
          _option(icon: Icons.wallet_giftcard, label: "Rewards"),
          _option(icon: Icons.equalizer_rounded, label: "Refer & Earn"),
        ],
      ),
    );
  }
}

Widget _option({required IconData icon, required String label}) {
  return Expanded( 
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 4), // adds little space between items
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(height: 6),
          Text(
            label,                                        
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
