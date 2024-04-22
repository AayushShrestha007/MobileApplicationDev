import 'package:class_work_1/batch.dart';
import 'package:class_work_1/student.dart';

void main(List<String> args) {
  Batch b1 = Batch(batchName: "32-A", batchId: "1");
  Batch b2 = Batch(batchName: "32-B", batchId: "2");
  Batch b3 = Batch(batchName: "32-C", batchId: "3");

  Student s1 = Student(studentName: "Kiran", studentId: "1", batch: b1);
  Student s2 = Student(studentName: "Nitya", studentId: "2", batch: b1);
  Student s3 = Student(studentName: "Manoj", studentId: "3", batch: b2);

  // print("${s3.studentName} is in batch ${s3.batch?.batchName}");

  //creating student list
  List<Student> studentList = [];
  studentList.add(s1);
  studentList.add(s2);
  studentList.add(s3);

  //using for loop to loop through student id
  for (Student s in studentList) {
    if (s.batch!.batchName == "32-A") {
      print(
          "student name is ${s.studentName} and batch id is ${s.batch!.batchId}");
    }
  }
}
