import 'package:flutter/material.dart';
import 'package:flutter_app_welcome/pages/register_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: controllerEmail,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            )
          ],
        ),
      ),
    );
  }
}
