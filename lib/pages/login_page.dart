import 'package:flutter/material.dart';

TextEditingController controllerEmail = TextEditingController();


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                  children: [
            const SizedBox(height: 50.0),
            Image.asset('images/rocket.png'),
            TextFormField(
              controller: controllerEmail,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
                  ],
                ),
          )),
    );
  }
}
