import 'package:flutter/material.dart';
import 'package:flutter_app_welcome/pages/home_page.dart';
import 'package:flutter_app_welcome/pages/welcome_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        } else {
          return const WelcomePage();
        }
      },
      stream: null,
    );
  }
}
