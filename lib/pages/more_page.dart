import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
