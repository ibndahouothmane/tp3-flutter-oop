import 'dart:math';

import 'package:tp3_flutter_oop/model/shape.model.dart';

class Circle extends Shape {
  Circle({required super.p1, required super.p2});



  @override
  double getArea() {
    double radius = getRadius();

    return pi * radius * radius;
  }

  @override
  double getPerimeter() {
    double radius = getRadius();

    return pi * radius * 2;
  }

  double getRadius(){
    return p1.distance(p2);
  }

  
}