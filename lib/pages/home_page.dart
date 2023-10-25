import 'package:flutter/material.dart';
import 'package:flutter_app_welcome/pages/home/profile.dart';
import 'home/home.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [
    Home(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome App'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: pages.elementAt(currentPage),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: ListTile(
                title: Text('Flutter Map'),
              ),
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                'logout';
              },
            )
          ],
        ),
      ),
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
        ],
        currentIndex: currentPage,
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
