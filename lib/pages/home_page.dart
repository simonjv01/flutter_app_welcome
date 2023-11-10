import 'package:flutter/material.dart';
import 'package:flutter_app_welcome/pages/home/get_local.dart';
import 'package:flutter_app_welcome/pages/home/profile.dart';
import 'package:flutter_app_welcome/pages/home/set_local.dart';
import 'home/home.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [Home(), Profile(), SetLocal(), GetLocal()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome App'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: pages.elementAt(currentPage),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.amber),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/flutterCircle.png'),
                  ),
                  title: Text('Flutter Map'),
                  textColor: Colors.white,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  'logout';
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
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
