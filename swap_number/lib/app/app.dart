import 'package:flutter/material.dart';
import 'package:swap_number/screen/swap_number.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SwapNumber(),
    );
  }
}
