class Animal {
  void makesSound() {
    print("bark");
  }
}

class Cat extends Animal {
  void makesSound() {
    print("meow");
  }
}

void main(List<String> args) {
  Animal cat = new Cat();
  Animal animal = new Animal();
  cat.makesSound();
  animal.makesSound();
}
