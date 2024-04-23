class AreaCircleModel {
  final double radius;

  AreaCircleModel({required this.radius});

//logic to calculate area
  double areaCalculate() {
    return 3.14 * radius * radius;
  }
}
