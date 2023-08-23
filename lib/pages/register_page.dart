import 'package:flutter/material.dart';

TextEditingController controllerEmail = TextEditingController();
TextEditingController controllerPassword = TextEditingController();
final formKey = GlobalKey<FormState>();

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(padding: EdgeInsets.all(50.0)),
        ),
      ),

    );
  }
}
