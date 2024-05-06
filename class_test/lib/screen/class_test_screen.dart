import 'package:class_test/common/button_widget.dart';
import 'package:flutter/material.dart';

class ClassTestScreen extends StatelessWidget {
  const ClassTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Ayush";
    List<String> characters = [];

    // Extract individual characters from the inputString and insert them into the characters list
    for (int i = 0; i < name.length; i++) {
      characters.add(name[i]);
    }

    return Scaffold(
        body: GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        for (int i = 0; i < characters.length; i++) ...{
          MyButtonWidget(
            text: characters[i],
          )
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text(characters[i]),
          // ),
        },
      ],
    ));
  }
}
