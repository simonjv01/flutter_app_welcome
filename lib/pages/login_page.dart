import 'package:flutter/material.dart';

TextEditingController controllerEmail = TextEditingController();
final formKey = GlobalKey<FormState>();


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
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
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
                  validator: (String? value) {
                    if(value == null) {
                      return 'This cannot be null';
                    }
                    if(value.isEmpty){
                      return 'Enter email';
                    }
                    return null;
                    
                  },
                ),
                ElevatedButton(
                 onPressed: (){
                  formKey.currentState!.validate();
                 },
                 child: const Text('Login'),),
                      ],
                    ),
              )),
        ),
      ),
    );
  }
}
