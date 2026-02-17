void main() {
  List<Shape> shapes = [Circle(5), Rectangle(10, 5), Square(4)];
  double totalArea = 0;
  for (var s in shapes) 
  totalArea += s.area();

  double cost = 0;
  if (totalArea <= 50) {
    cost = totalArea * 1.50;
  } else if (totalArea <= 150) {
    cost = (50 * 1.50) + (totalArea - 50) * 1.25;
  } else {
    cost = (50 * 1.50) + (100 * 1.25) + (totalArea - 150) * 1.00;
  }

  print("Total Area: ${totalArea.toStringAsFixed(2)}");
  print("Total Cost: ${cost.toStringAsFixed(2)}");
}

class Shape {
  double area() => 0;
}

class Circle extends Shape {
  double _r = 0;
  Circle(double r) {
    if (r > 0) {
      _r = r;
    }
  }
  @override
  double area() => 3.14 * _r * _r;
}

class Rectangle extends Shape {
  double _w = 0, _h = 0;
  Rectangle(double w, double h) {
    if (w > 0 && h > 0) {
      _w = w;
      _h = h;
    }
  }
  @override
  double area() => _w * _h;
}

class Square extends Shape {
  double _s = 0;
  Square(double s) {
    if (s > 0)
     _s = s;
  }
  @override
  double area() => _s * _s;
}