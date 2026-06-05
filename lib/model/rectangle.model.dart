import 'package:tp3_flutter_oop/model/shape.model.dart';

class Rectangle extends Shape {
  Rectangle({required super.p1, required super.p2});



  @override
  double getArea() {
    return getHeight() * getWidth();
  }

  @override
  double getPerimeter() {
    return 2 * (getHeight() + getWidth());
  }

  double getHeight(){
    return (p1.y - p2.y).abs();
  }

  double getWidth(){
    return (p1.x - p2.x).abs();
  }

  
}