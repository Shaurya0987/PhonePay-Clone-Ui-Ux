import 'package:flutter/material.dart';
import 'package:phonepay/Containers/news.dart';
import 'package:phonepay/Containers/searchTab.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final TextEditingController _controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Search",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.help_outline),
            )
        ],
      ),
      body: Column(
        children: [
          searchBar(),
          SizedBox(height: 30,),
          NewsBanner()
        ],
      ),
    );
  }
}
