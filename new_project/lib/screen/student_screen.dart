import 'package:flutter/material.dart';
import 'package:new_project/common/card_widget.dart';
import 'package:new_project/model/student_model.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  late TextEditingController _fnameController;
  late TextEditingController _lnameController;
  late TextEditingController _cityController;

  List<DropdownMenuItem> cities = [];
  @override
  void initState() {
    _fnameController = TextEditingController(text: 'Kiran');
    _lnameController = TextEditingController(text: 'Rana');
    _cityController = TextEditingController();

    cities = [
      const DropdownMenuItem(value: "Bhaktapur", child: Text("Bhaktapur")),
      const DropdownMenuItem(value: "Kathmandu", child: Text("Kathmandu")),
      const DropdownMenuItem(value: "Lalitpur", child: Text("Lalitpur")),
    ];
  }

  @override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    _cityController.dispose();
  }

  // final _fnameController = TextEditingController();
  // final _lnameController = TextEditingController();
  // final _cityController = TextEditingController();

  // final cities = [
  //   const DropdownMenuItem(value: "Bhaktapur", child: Text("Bhaktapur")),
  //   const DropdownMenuItem(value: "Kathmandu", child: Text("Kathmandu")),
  //   const DropdownMenuItem(value: "Lalitpur", child: Text("Lalitpur")),
  // ];

  final _key = GlobalKey<FormState>();
  List<Student> students = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Student Screen"),
        ),
        body: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter first name";
                  }
                  return null;
                },
                controller: _fnameController,
                decoration: const InputDecoration(
                  hintText: "Enter name",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter last name";
                  }
                  return null;
                },
                controller: _lnameController,
                decoration: const InputDecoration(
                  hintText: "Enter last name",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField(
                items: cities,
                onChanged: (value) {
                  _cityController.text = value.toString();
                },
                decoration: const InputDecoration(
                  hintText: "Enter city",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null) {
                    return "enter the city";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      final student = Student(
                        fname: _fnameController.text,
                        lname: _lnameController.text,
                        city: _cityController.text,
                      );
                      setState(
                        () {
                          students.add(student);
                        },
                      );
                    }
                  },
                  child: const Text('Add Student'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 200,
                      width: double.infinity,

                      child: MyCardWidget(
                        cardText:
                            "${students[index].fname}\n${students[index].lname}",
                      ),

                      // child: Card(
                      //   color: Colors.green,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: Center(
                      //     child: Text(
                      //         "${students[index].fname}\n${students[index].lname} "),
                      //   ),
                      // ),
                    );
                    // return ListTile(
                    //   title: Text(students[index].fname),
                    //   subtitle: Text(students[index].city),
                    //   trailing: IconButton(
                    //     icon: const Icon(Icons.delete),
                    //     onPressed: () {
                    //       setState(() {
                    //         students.removeAt(index);
                    //       });
                    //     },
                    //   ),
                    // );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
