import 'package:flutter/material.dart';

class SwapNumber extends StatefulWidget {
  const SwapNumber({super.key});

  @override
  State<SwapNumber> createState() => _SwapNumberState();
}

class _SwapNumberState extends State<SwapNumber> {
  int? first;
  int? second;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Addition of two numbers"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter first no",
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter second number",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  first = first! + second!;
                  second = first! - second!;
                  first = first! - second!;
                });
              },
              child: const Text("add"),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "the first number is $first and the second number is $second",
              style: const TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
