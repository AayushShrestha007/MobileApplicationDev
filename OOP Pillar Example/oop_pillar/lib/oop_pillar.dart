import 'package:oop_pillar/encapsulation.dart';

void main(List<String> args) {
  Human h1 = new Human();
  h1.setHeight(5);
  print(h1.getHeight());

  // print(h1._height); this will cause error
}
