import 'package:flutter/material.dart';

import '../pages/login_page.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return const LoginPage();
          }),
        );
      },
      child: const Text('Login'),
    );
  }
}
