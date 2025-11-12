import 'package:flutter/material.dart';
import 'package:phonepay/Containers/RechargeBills.dart';
import 'package:phonepay/Containers/TopBar.dart';
import 'package:phonepay/Containers/WalletOptions.dart';
import 'package:phonepay/Containers/moneyTransfer.dart';
import 'package:phonepay/Containers/shareMarket.dart';
import 'package:phonepay/Containers/slidingBanner.dart';
import 'package:phonepay/Containers/upiLite.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: TopBar(),
      
      body: SingleChildScrollView( // 👈 makes whole body scrollable
        physics: const BouncingScrollPhysics(), // nice iOS-style scroll effect
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16), // space at bottom
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SlidingBanner(),
              SizedBox(height: 8),
              Moneytransfer(),
              SizedBox(height: 8),
              Walletoptions(),
              SizedBox(height: 8),
              Upilite(),
              SizedBox(height: 8),
              Rechargebills(),
              SizedBox(height: 10,),
              StockMarket(),
            ],
          ),
        ),
      ),
    );
  }
}
