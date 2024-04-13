//Question 2
bool automorphicnum(int num) {
  int squarednum = num * num;

  while (num > 0) {
    if (num % 10 != squarednum % 10) {
      return false; //return false if last digits don't match
    }
    num = num ~/
        10; //doing integer division so in next loop another digit can be checked
    squarednum = squarednum ~/
        10; //doing integer division so in next loop another digit can be checked
  }

  return true;
}

//Question 3
bool isPalindrome(String str) {
  String lowerStr = str.toLowerCase();
  int i = 0;
  int j = lowerStr.length - 1;

  while (i < j) {
    // Compare characters from beginning and end, moving towards the center
    if (lowerStr[i] != lowerStr[j]) {
      return false; // Not a palindrome if any characters don't match
    }
    i++;
    j--;
  }

  return true; // String is a palindrome if all characters match
}

//Question 4
double calculateBMI(double weight, double height) {
  //taking weight in kg and heigh in meter as function parameters
  return weight / (height * height);
}

//Question 5
bool checkPrime(int num) {
  if (num <= 1) {
    return false; // return false since 0 and 1 are not prime numbers
  }
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false; // return false if a factor other than 1 and the number itself is found
    }
  }
  return true; // return true if no factor found- it's a prime number
}

//Question 6
double calculateSI(double principal, double time, double rate) {
  //taking time in years
  return (principal * time * rate) / 100;
}

//Question 7
int linearSearch(List<int> searchList, int num) {
  for (int i = 0; i < searchList.length; i++) {
    if (searchList[i] == num) {
      return i; // if number is found, return index number
    }
  }
  return -1; // Return -1 if the number is not found
}

//Question 8
int binarySearch(List<int> list, int num) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    // Check if the target is present at mid
    if (list[mid] == num) {
      return mid; // Target found
    }

    // If the number we are searching for is greater, ignore left half
    if (list[mid] < num) {
      left = mid + 1;
    }
    // If the number we are searching for is, ignore right half
    else {
      right = mid - 1;
    }
  }

  return -1; // return -1 if the element doesn't exist
}

//Question 9
removeElement(List<int> list, int index) {
  if (index >= 0 && index < list.length) {
    //checking if the index is within the range or not
    list.removeAt(index);
    print("Here's the array after removing the number at index ${list}");
  } else {
    print("Index is out of range");
  }
}

//Question 10
void vowelOrNoT(String alphabet) {
  switch (alphabet.toLowerCase()) {
    // Converting to lowercase to simplify the cases
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print("Is a vowel");
      break;
    default:
      print("Is not a vowel");
      break;
  }
}
