import 'dart:async';
import 'package:flutter/material.dart';
import 'package:phonepay/Screens/root.dart'; // change if your main screen is Homepage()

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to main screen after 3 seconds
    Timer(Duration(seconds:2),(){
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>Root()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/logo.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "PhonePe",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 38,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
