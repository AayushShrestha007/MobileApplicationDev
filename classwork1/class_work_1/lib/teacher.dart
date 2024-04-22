//creating teacher class
class Teacher {
  final String? teacherId;
  final String? teacherFname;
  Country? country;
  Teacher({this.teacherId, this.teacherFname, this.country});
}

//creating student class
class Student {
  final String? studentId;
  final String? studentFname;
  List<Teacher>? listTeacher;
  Country? country;
  Student({this.studentId, this.studentFname, this.listTeacher});
}

//creating country class
class Country {
  final String? cid;
  final String? cName;

  Country({this.cName, this.cid});
}

void main(List<String> args) {
  Country c1 = Country(cName: "Nepal", cid: "1");

  Teacher t1 = Teacher(teacherId: "1", teacherFname: "Kiran", country: c1);
  Teacher t2 = Teacher(teacherId: "2", teacherFname: "Bimal", country: c1);
  Teacher t3 = Teacher(teacherId: "3", teacherFname: "Sumit", country: c1);

  List<Teacher> teacherList = [];
  teacherList.add(t1);
  teacherList.add(t2);
  teacherList.add(t3);

  Student s1 =
      Student(studentId: "1", studentFname: "Ayush", listTeacher: teacherList);
  Student s2 = Student(
      studentId: "2", studentFname: "Pramesh", listTeacher: teacherList);
  Student s3 =
      Student(studentId: "3", studentFname: "Kehar", listTeacher: teacherList);

  List<Student> studentList = [];
  studentList.add(s1);
  studentList.add(s2);
  studentList.add(s3);

  //printing the student details
  for (int i = 0; i < studentList.length; i++) {
    print(
        "The student id is ${studentList[i].studentId},student fname is ${studentList[i].studentFname} and the teachers are ${studentList[i].listTeacher?[0].teacherFname}, ${studentList[i].listTeacher?[1].teacherFname}, ${studentList[i].listTeacher?[2].teacherFname}");
  }
}
