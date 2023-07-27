import 'dart:math';

import 'package:flutter/material.dart';

class TileInformation {
  TileInformation({
    required this.title,
    required this.icon,
    required this.id,
  });
  final String title;
  final Widget icon;
  final String id;
}

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

  List<TileInformation> theList = [];
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
                setState(() {
                  theList.add(
                    TileInformation(
                      title: 'Item ${theList.length + 1}',
                      icon: const IconRandomized(),
                      id: (theList.length + 1).toString(),
                    ),
                  );
                });
              },
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    content: const Text('This Banner is Material'),
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
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OtherPage(
                      tileInformation: theList.elementAt(index),
                    ),
                  ),
                );
              },
              title: Text(theList.elementAt(index).title),
              leading: theList.elementAt(index).icon,
            );
          },
          itemCount: theList.length,
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 2,
            );
          },
        ));
  }
}

class IconRandomized extends StatelessWidget {
  const IconRandomized({super.key});

  @override
  Widget build(BuildContext context) {
    bool randomBool = Random().nextBool();
    return randomBool
        ? const Icon(Icons.radio_button_checked)
        : const Icon(Icons.radio_button_unchecked);
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key, required this.tileInformation});

  final TileInformation tileInformation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ListTile(
          title: Text(
            tileInformation.title,
            style: const TextStyle(color: Colors.white),
          ),
          tileColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
