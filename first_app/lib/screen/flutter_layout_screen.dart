import 'package:flutter/material.dart';

class FlutterLayout extends StatefulWidget {
  const FlutterLayout({super.key});

  @override
  State<FlutterLayout> createState() => _FlutterLayoutState();
}

class _FlutterLayoutState extends State<FlutterLayout> {
  var gap = const SizedBox(
    width: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout"),
      ),
      body: Container(
        color: Colors.amber,
        height: 100,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.call,
                ),
                Text("Call")
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.route,
                ),
                Text("Route")
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                ),
                Text("share")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
