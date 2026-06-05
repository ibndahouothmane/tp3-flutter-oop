// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

class Point {
  final double x;
  final double y;

  const Point({required this.x, required this.y});

  double distance(Point p) {
    double width = p.x - x;

    double height = p.y - y;

    return sqrt(width * width + height * height);
  }

  @override
  String toString() => 'Point(x: $x, y: $y)';

  Point copyWith({double? x, double? y}) {
    return Point(x: x ?? this.x, y: y ?? this.y);
  }

  factory Point.fromList(List<double> data) {
    return Point(x: data[0], y: data[1]);
  }

  factory Point.fromMap(Map<String, dynamic> json) {
    return Point(x: json["x"], y: json["y"]);
  }

  Map<String, dynamic> toJson() {
    return {"x": x, "y": y};
  }
}
