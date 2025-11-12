import 'package:flutter/material.dart';
import 'package:phonepay/Containers/bottomNavBar.dart';
import 'package:phonepay/Screens/History.dart';
import 'package:phonepay/Screens/Scan.dart';
import 'package:phonepay/Screens/SearchPage.dart';
import 'package:phonepay/Screens/alerts.dart';
import 'package:phonepay/Screens/homePage.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int index = 0;

  final List<Widget> _pages = [
    Homepage(),
    SearchPage(),
    Scanpage(),
    AlertPage(),
    Historypage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // keeps curved bar floating
      body: _pages[index],
      bottomNavigationBar: AbottomBar(
        currentIndex: index,
        onTap: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
      ),
    );
  }
}
