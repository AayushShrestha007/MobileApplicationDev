import 'package:flutter/material.dart';


class HelloWorldScreen extends StatefulWidget {
  const HelloWorldScreen({super.key});

  @override
  State<HelloWorldScreen> createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<HelloWorldScreen> {
  int? first;

  int? second;

  int? result;

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
                  result = first! + second!;
                });
              },
              child: const Text("add"),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "the sum of two number is $result",
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
