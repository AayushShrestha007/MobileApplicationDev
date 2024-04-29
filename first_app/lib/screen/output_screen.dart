import 'package:flutter/material.dart';

class OutPutScreen extends StatelessWidget {
  final int currentIndex;
  const OutPutScreen({required this.currentIndex, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Current index is $currentIndex",
        ),
      ),
    );
  }
}
