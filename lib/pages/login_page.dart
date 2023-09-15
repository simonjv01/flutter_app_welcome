import 'package:flutter/material.dart';

TextEditingController controllerEmail = TextEditingController();
TextEditingController controllerPassword = TextEditingController();
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
        reverse: true,
        child: Form(
          key: formKey,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                Image.asset('images/rocket.png'),
                 const SizedBox(height: 30.0),
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
                      return 'Email cannot be empty';
                    }
                    return null;
                    
                  },
                ),
                const SizedBox(height: 20.0,),
                TextFormField(
                  controller: controllerPassword,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
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
                ),
                const SizedBox(height: 10.0,),
                ElevatedButton(
                 onPressed: (){
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Success'),
                        duration: Duration(milliseconds: 500),
                        ),
                      );
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Failure'),
                        duration: Duration(milliseconds: 500),
                        ),
                      
                    );
                    }
                 },
                 child: const Text('Login'),
                 ),
                      ],
                    ),
              )
              ),
        ),
      ),
    );
  }
}
