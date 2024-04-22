import 'package:flutter/material.dart';

//function to categorize the BMI
String categorizeBmi(double bmi) {
  if (bmi < 18.5) {
    return "Underweight";
  } else if (bmi < 25) {
    return "Normal weight";
  } else if (bmi < 30) {
    return "Overweight";
  } else {
    return "Obese";
  }
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double? height;
  double? weight;
  double? age;
  double? result;
  String? bmiCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                height = double.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter height in meters",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                weight = double.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter weight in kilograms",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = weight! / (height! * height!);
                  bmiCategory = categorizeBmi(
                      result!); //calling the bmi categorizing function on button click
                });
              },
              child: const Text("Calculate BMI"),
            ),
            const SizedBox(
              height: 30,
            ),
            Text("The BMI is $result"),
            const SizedBox(
              height: 30,
            ),
            Text("Your BMI category is $bmiCategory"),
          ],
        ),
      ),
    );
  }
}
