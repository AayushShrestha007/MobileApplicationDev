import 'package:dart_questions/dart_questions.dart' as dart_questions;

void main(List<String> arguments) {
  print('Hello world');

// Question2, checking autmorpic number:
  if (dart_questions.automorphicnum(3)) {
    print("Is automorphic num");
  } else {
    print("Isn't autmorphic number");
  }

//Question3, checking if palindrome or not:
  if (dart_questions.isPalindrome("eye")) {
    print("Is a palindrome");
  } else {
    print("Isn't a palindrome");
  }
//Question4, calculating BMI ( insert height in meters and weight in kgs)
  print("Your BMI is ${dart_questions.calculateBMI(56, 2.3)}");

//Question, checking if a number is prime or not
  int testNum = 15;
  if (dart_questions.checkPrime(testNum)) {
    print("${testNum} is a prime number");
  } else {
    print("${testNum} is not a prime number");
  }
//Question6, calculating SI ( insert time in years)
  print("The SI will be ${dart_questions.calculateSI(10000, 1, 8)}");

//Question7, finding a number through linear search:
  int indexNum = dart_questions.linearSearch([5, 3, 6, 7], 3);
  if (indexNum == -1) {
    print("Number doesn't exist in this list");
  } else {
    print("Number exists in this list in index number ${indexNum}");
  }

//Question8, finding a number through binary search:
  int indexNumForBinary = dart_questions.binarySearch([4, 5, 6, 7, 8], 6);
  if (indexNumForBinary == -1) {
    print("Number doesn't exist in this list");
  } else {
    print("Number exists in this list in index number ${indexNumForBinary}");
  }

//Question9, removing element in an array using index number
  dart_questions.removeElement([4, 5, 6, 7, 8], 7);

//Question10, using switch case to find if an alphabet is vowel or not
  dart_questions.vowelOrNoT("a");
}
