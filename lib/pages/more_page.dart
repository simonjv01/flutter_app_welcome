import 'package:flutter/material.dart';

class TileInformation {
  TileInformation({
    required this.title,
    required this.icon,
  });
  final String title;
  final Widget icon;
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

  List<TileInformation> theList = [
    TileInformation(
      title: 'Item',
      icon: const Icon(Icons.radar_outlined),
    )
  ];
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
                      title: 'Item',
                      icon: const Icon(Icons.radio_button_checked),
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
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
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
