import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
// import 'package:lucide_icons/lucide_icons.dart';

class Moneytransfer extends StatelessWidget {
  const Moneytransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 14),
        height: 210,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Colors.white,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Money Transfer",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(3.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _transferOption(
                    icon: Icons.person_outline,
                    label: "To Mobile\nNumber",
                  ),
                  _transferOption(
                    icon: Icons.account_balance_outlined,
                    label: "To Bank/\nUPI ID",
                  ),
                  _transferOption(
                    icon: Icons.refresh_outlined,
                    label: "To Self\nAccount",
                  ),
                  _transferOption(
                    icon: Icons.account_balance_outlined,
                    label: "Check Bank\nBalance",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 182, 204, 223),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "UPI ID: narsimba.rajuvaripet@ybl",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.black54,
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

Widget _transferOption({required IconData icon, required String label}) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(icon, color: Colors.white, size: 28),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
      ),
    ],
  );
}
