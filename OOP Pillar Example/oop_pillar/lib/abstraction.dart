abstract class Vehicle {
  void run() {}
}

class Car extends Vehicle {
  void run() {
    print("car is running");
  }
}

void main(List<String> args) {
  Vehicle car = new Car();
  car.run();
}
