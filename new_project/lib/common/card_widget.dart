import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  String cardText;

  MyCardWidget({super.key, required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(cardText),
      ),
    );
  }
}
