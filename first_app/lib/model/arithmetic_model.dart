class ArithmeticModel {
  final int first;
  final int second;

  ArithmeticModel({required this.first, required this.second});

  int add() {
    return first + second;
  }

  int subtract() {
    return first - second;
  }

  int divide() {
    return first ~/ second;
  }

  int multiply() {
    return first * second;
  }

  int calculate(String operation) {
    if (operation == "add") {
      return add();
    } else if (operation == "subtract") {
      return subtract();
    } else if (operation == "multiply") {
      return multiply();
    } else if (operation == "divide") {
      return divide();
    }

    return 0;
  }
}
