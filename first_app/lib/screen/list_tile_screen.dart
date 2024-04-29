import 'package:first_app/common_widget/list_tile_widget.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({super.key});

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i <= 100; i++) ...{
              if (i % 2 == 0) ...{
                ListTileWidget(
                  index: i,
                  assetURL: 'assets/images/image_1.jpeg',
                )
              } else ...{
                ListTileWidget(
                  index: i,
                  assetURL: 'assets/images/image_2.png',
                )
              }
            }
          ],
        ),
      ),
    );
  }
}
