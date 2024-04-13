void main(List<String> args) {
  print("the simple interest is ${simpleInterest(principle: 30000, rate: 6)}");
  print(
      "the simple interest 2 is ${simpleInterest2(principle: 30000, year: 3, rate: 6)}");
  print("the simple interest 3 is ${simpleInterest3(30000, 3, 6)}");
}

//simple interest function using named parameters without the required keyword
double simpleInterest({
  double? principle,
  double? year,
  double? rate,
}) {
  return ((principle ?? 0) * (year ?? 0) * (rate ?? 0)) / 100;
}

//simple interest function using named parameters with the required keyword
double simpleInterest2({
  required double principle,
  required double year,
  required double rate,
}) {
  return ((principle) * (year) * (rate)) / 100;
}

//simple interest function using normal function
double simpleInterest3(
  double principle,
  double year,
  double rate,
) {
  return ((principle) * (year) * (rate)) / 100;
}
