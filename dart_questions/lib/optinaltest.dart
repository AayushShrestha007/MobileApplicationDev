void main(List<String> args) {
  int result = subtract(2, 4);
  print(result);

  result = subtract(2, 4, 5);
  print(result);

  result = subtract(2, 4, 5, 6);
  print(result);
}

int subtract(int first, int second, [int third = 0, int fourth = 0]) {
  return first - second - third - fourth;
}
