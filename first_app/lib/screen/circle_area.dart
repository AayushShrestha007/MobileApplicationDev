import 'package:first_app/model/area_circle_model.dart';
import 'package:flutter/material.dart';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key});

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  double? radius;
  double? area;

  AreaCircleModel? areaCircleModel;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: const Text("Area of a circle"),
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
                  radius = double.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  hintText: "Enter radius of the circle",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter the radius";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    //only execute code if validated
                    setState(() {
                      // arithmeticModel = ArithmeticModel(
                      //   first: first!,
                      //   second: second!,
                      // );
                      // result = arithmeticModel!.add();

                      areaCircleModel = AreaCircleModel(radius: radius!);
                      area = areaCircleModel?.areaCalculate();
                    });
                  }
                },
                child: const Text("Calculate"),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "the area of the circle is $area",
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.red,
                child: RichText(
                  text: TextSpan(
                    text: "A",
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: "rea of the circle is ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: "$area",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
