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
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Form(
              child: Column(
                children: [
                  const SizedBox(height: 50.0),
                  Image.asset('images/rock.png'),
                  const SizedBox(height: 50.0),
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
                      return 'Password cannot be empty';
                    }
                    return null;
                    
                  },
                  )
                ],
              ))
        ),
      ),

    );
  }
}
