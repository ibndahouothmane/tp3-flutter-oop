import 'package:tp3_flutter_oop/model/circle.model.dart';
import 'package:tp3_flutter_oop/model/geometric.model.dart';
import 'package:tp3_flutter_oop/model/point.model.dart';
import 'package:tp3_flutter_oop/model/rectangle.model.dart';
import 'package:tp3_flutter_oop/model/shape.model.dart';

void main() {
  Point p1 = new Point(y: 45, x: 80);
  Point p2 = new Point(x: 6, y: 0);

  final Shape c1 = Circle(p1: p1,p2: p2);

  Point p3 = new Point(y: 45, x: 80);
  Point p4 = new Point(x: 6, y: 0);

  final Shape r1 = Rectangle(p1: p3,p2: p4);

  final GeometricDesign g1 = GeometricDesign();
  
  g1.addShape(c1);
  
  g1.addShape(r1);
  
  g1.show();
  g1.save("Test File");
  
}
