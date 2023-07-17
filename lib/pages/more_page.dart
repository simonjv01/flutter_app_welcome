import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  bool isBlue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isBlue ? Colors.blueAccent : null,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).clearMaterialBanners();
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  content: const Text('This is a Material Banner'),
                  actions: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isBlue = !isBlue;
                        });
                      },
                      child: const Text('Change color'),
                    ),
                    TextButton(
                      onPressed: () => ScaffoldMessenger.of(context)
                          .hideCurrentMaterialBanner(),
                      child: const Text('DISMISS'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .removeCurrentMaterialBanner();
                      },
                      child: const Text('REMOVE'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: const ListTile(
        title: Text('Item'),
        tileColor: Colors.blueGrey,
        leading: Icon(Icons.radio_button_checked),
        trailing: Icon(Icons.radio_button_checked),
        ),
    );
  }
}
