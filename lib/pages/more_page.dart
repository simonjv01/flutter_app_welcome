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
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                    content: const Text('This is a Material Banner'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner(),
                        child: const Text('DISMISS'),
                      ),
                    ]),
              );
            },
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
