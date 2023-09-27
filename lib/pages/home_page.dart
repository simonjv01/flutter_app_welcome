import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  int currentPage = 0;
  List<Widget> pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: pages.elementAt(currentPage),
    
    );
  }
}
