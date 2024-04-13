class Animal {
  int age = 12;
  int heigt = 13;
}

class Monkey extends Animal {}

void main(List<String> args) {
  Monkey m = new Monkey();
  print(m.heigt);
}
