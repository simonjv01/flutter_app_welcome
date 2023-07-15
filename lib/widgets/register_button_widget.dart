import 'package:flutter/material.dart';

import '../pages/register_page.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return const RegisterPage();
          }),
        );
      },
      child: const Text('Register'),
    );
  }
}
