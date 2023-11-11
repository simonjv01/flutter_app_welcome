import 'package:flutter/material.dart';

class GetLocal extends StatefulWidget {
  const GetLocal({super.key});

  @override
  State<GetLocal> createState() => _GetLocalState();
}

class _GetLocalState extends State<GetLocal> {
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
              Image.asset('images/cactus.png'),
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
