import 'package:first_app/common_widget/my_button.dart';
import 'package:first_app/common_widget/my_textformfield.dart';
import 'package:flutter/material.dart';

class CustomWidgetScreen extends StatefulWidget {
  const CustomWidgetScreen({
    super.key,
  });

  @override
  State<CustomWidgetScreen> createState() => _CustomWidgetScreenState();
}

class _CustomWidgetScreenState extends State<CustomWidgetScreen> {
  int? firstNumber;
  int? secondNumber;
  int? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custom widget screen"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    firstNumber = int.parse(value);
                  });
                },
                text: "Enter First Number",
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    secondNumber = int.parse(value);
                  });
                },
                text: "Enter Second Number",
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onPressed: () {
                  result = firstNumber! + secondNumber!;
                },
                text: "Hello world",
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Result is $result",
              ),
            ],
          ),
        ));
  }
}
