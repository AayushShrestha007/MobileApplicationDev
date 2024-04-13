//Q1 Create a class named person with properties fname, lname, age, address, phonenumber and person id;

class Person {
  String? fName;
  String? lName;
  int? age;
  String? address;
  String? phoneNumber;
  int? personId;

  Person({
    this.fName,
    this.lName,
    this.age,
    this.address,
    this.phoneNumber,
    this.personId,
  });

  Person copyWith(
      {int? personId,
      String? fName,
      String? lName,
      String? address,
      String? phoneNumber,
      int? age}) {
    return Person(
      personId: personId ?? personId,
      fName: fName ?? this.fName,
      lName: lName ?? this.lName,
      address: address ?? this.address,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      age: age ?? this.age,
    );
  }
}

void main(List<String> args) {
  Person p1 = Person(
    fName: "Ayush",
    lName: "Shrestha",
    age: 12,
    address: "Dholahiti",
    phoneNumber: "34",
    personId: 12,
  );

  Person p2 = p1.copyWith(personId: 2, fName: "Ayush");

  Person p3 = p1.copyWith(personId: 3, fName: "Pramesh");

  Person p4 = p1.copyWith(personId: 4, fName: "Kehar");

  List<Person> listPerson = [];
  listPerson.add(p1);
  listPerson.add(p2);
  listPerson.add(p3);

  for (int i = 0; i < listPerson.length; i++) {
    print(
        'personId:${listPerson[i].personId} and fname: ${listPerson[i].fName}');
  }
}
