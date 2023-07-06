import 'package:flutter/material.dart';
import 'package:flutter_app_welcome/widgets/login_button_widget.dart';
import 'package:flutter_app_welcome/widgets/register_button_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginButtonWidget(),
                  SizedBox(
                    width: 50.0,
                  ),
                  RegisterButtonWidget(),
                ],
              ),
              const SizedBox(height: 50.0),
              Image.asset('images/welcome.png'),
              const SizedBox(height: 50.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.black45,
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
