import 'package:flutter/material.dart';
import 'package:flutter_app_welcome/pages/home/profile.dart';
import 'home/home.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
   HomePage({super.key});

  int currentPage = 0;
  List<Widget> pages = const [
    Home(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: pages.elementAt(currentPage),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            ),
        ]),
    
    );
  }
}
