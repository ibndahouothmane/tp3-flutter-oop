import 'dart:convert';
import 'dart:io';

import 'package:tp3_flutter_oop/model/circle.model.dart';
import 'package:tp3_flutter_oop/model/rectangle.model.dart';
import 'package:tp3_flutter_oop/model/shape.model.dart';

class GeometricDesign {
  List<Shape> shapes = [];

  GeometricDesign();

  void addShape(Shape shape) {
    shapes.add(shape);
  }

  String toJson() {
    JsonEncoder jsonEncoder = JsonEncoder.withIndent(" ");
    return jsonEncoder.convert({"shapes": shapes});
  }

  void save(String fileName){
    File file = File(fileName);
    file.writeAsStringSync(toJson());
  }

  void show() {
    print("Geometric design start...");

    for (Shape shape in shapes) {
      print("-" * 70);
      print(shape.toString());
      print("Area : ${shape.getArea()}");
      print("Perimeter : ${shape.getPerimeter()}");
      if (shape is Circle) {
        print("Radius = ${shape.getRadius()}");
      } else if (shape is Rectangle) {
        print("Width = ${shape.getWidth()}");
        print("Height = ${shape.getHeight()}");
      }
    }
  }
}