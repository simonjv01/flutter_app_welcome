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
      body: Form(
        child: Center(
          child: Column(
            children: [
              Image.asset('images/cactus.png'),
              TextFormField(
                controller: controllerEmail,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              )
            ]),
        ),
      ),
    );
  }
}
