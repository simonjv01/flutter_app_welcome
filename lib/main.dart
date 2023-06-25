import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const WelcomePage(),
    );
  }
}

String imagePath1 = 'images/welcome.png';
String imagePath2 = 'images/yeah.png';
String currentPath = imagePath1;

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int numberOfImage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent),
                    onPressed: () {
                      setState(() {
                        if (currentPath == imagePath1) {
                          currentPath = imagePath2;
                        } else {
                          currentPath = imagePath1;
                        }
                      });
                    },
                    child: const Text('Click'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),
                    onPressed: () {
                      setState(() {
                        numberOfImage = numberOfImage + 1;
                      });
                    },
                    child: const Text('Add an image'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          numberOfImage = 0;
                        });
                      },
                      child: const Text('Reset Images')),
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Column(
                children: List.generate(
                  numberOfImage,
                  (index) => Image.asset(currentPath),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
