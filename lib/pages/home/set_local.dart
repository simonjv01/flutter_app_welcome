import 'package:flutter/material.dart';

class SetLocal extends StatefulWidget {
  const SetLocal({super.key});

  @override
  State<SetLocal> createState() => _SetLocalState();
}

class _SetLocalState extends State<SetLocal> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerAge = TextEditingController();
  bool isAgree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('images/bag.png'),
              TextFormField(
                controller: controllerName,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: controllerAge,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Age',
                ),
              ),
              const SizedBox(height: 20.0),
              CheckboxListTile(
                title: const Text('Do you agree the terms?'),
                value: isAgree,
                onChanged: (bool? newBool) {
                  setState(
                    () {
                      if (newBool != null) {
                        isAgree = newBool;
                      }
                    },
                  );
                },
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Get data local'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
