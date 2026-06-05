// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tp3_flutter_oop/model/point.model.dart';

abstract class Shape {
  final Point p1;
  final Point p2;

  Shape({required this.p1,required this.p2});

  double getPerimeter();
  double getArea();
  

  @override
  String toString() => 'Shape(p1: $p1, p2: $p2)';
}
