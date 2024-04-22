swapper(int first, int second) {
  print(first);
  print(second);

  if (first > second) {
    first = first - (first - second);
    second = second + first - second;
  } else {
    int diff = second - first;
    first = first + diff;
    second = second - diff;
  }

  print(first);
  print(second);
}

void main(List<String> args) {
  swapper(6, 5);
}
