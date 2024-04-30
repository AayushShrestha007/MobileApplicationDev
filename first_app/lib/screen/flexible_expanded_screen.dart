import 'package:first_app/common_widget/my_button.dart';
import 'package:first_app/common_widget/my_snackbar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flexible expanded screen"),
        ),
        body: Column(
          children: [
            Flexible(
              // flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Center(
                  child: MyButton(
                      onPressed: () {
                        showSnackBar(
                          context: context,
                          message: "Hello world 1",
                          color: Colors.red,
                        );
                      },
                      text: "Click me"),
                ),
              ),
            ),
            Expanded(
              // flex: 2,
              child: Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  child: Center(
                    child: MyButton(
                      onPressed: () {
                        showSnackBar(
                          context: context,
                          message: "Hello world 2",
                        );
                      },
                      text: "Click me",
                    ),
                  )),
            ),
          ],
        ));
  }
}
