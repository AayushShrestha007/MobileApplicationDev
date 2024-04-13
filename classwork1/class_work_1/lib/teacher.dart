class Teacher {
  final String? teacherId;
  final String? teacherFname;
  Country? country;
  Teacher({this.teacherId, this.teacherFname, this.country});
}

class Student {
  final String? studentId;
  final String? studentFname;
  List<Teacher>? listTeacher;
  Country? country;
  Student({this.studentId, this.studentFname, this.listTeacher});
}

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
      Student(studentId: "2", studentFname: "Kehar", listTeacher: teacherList);

  print(
      "The student id is ${s1.studentId},student fname is ${s1.studentFname} and the teachers are ${s1.listTeacher?[0].teacherFname}, ${s1.listTeacher?[1].teacherFname}, ${s1.listTeacher?[2].teacherFname}");

  print(
      "The student id is ${s1.studentId},student fname is ${s2.studentFname}  and the teachers are ${s1.listTeacher?[0].teacherFname}, ${s1.listTeacher?[1].teacherFname}, ${s1.listTeacher?[2].teacherFname}");

  print(
      "The student id is ${s1.studentId},student fname is ${s3.studentFname} and the teachers are ${s1.listTeacher?[0].teacherFname}, ${s1.listTeacher?[1].teacherFname}, ${s1.listTeacher?[2].teacherFname}");
}
