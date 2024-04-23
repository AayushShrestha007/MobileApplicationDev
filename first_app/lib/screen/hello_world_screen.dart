import 'package:first_app/model/arithmetic_model.dart';
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

  ArithmeticModel? arithmeticModel;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Addition of two numbers"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  first = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter first no",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter the first number";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  second = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter second number",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter the second number";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    //only execute code if validated
                    setState(() {
                      arithmeticModel = ArithmeticModel(
                        first: first!,
                        second: second!,
                      );
                      result = arithmeticModel!.add();
                    });
                  }
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
      ),
    );
  }
}
