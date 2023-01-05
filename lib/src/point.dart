import 'dart:math';

/// Задача 6: класс Point описывает точку в трёхмерном пространстве.

/// метод distanceTo(Point another), который возвращает расстояние
/// от данной точки до точки в параметре.

/// метод, принимающий три точки в трёхмерном пространстве
/// и возвращающий площадь треугольника

/// factory-конструкторы: возвращающие начало координат,
/// и конструктор, возвращающий точку с координатами [1,1,1],

class Point {
  late int _x;
  late int _y;
  late int _z;

  Point(int posX, int posY, int posZ) {
    _x = posX;
    _y = posY;
    _z = posZ;
  }

  static Point basePoint = Point(1, 1, 1);
  static Point startPoint = Point(0, 0, 0);

  factory Point.factoryPoint(int fX, int fY, int fZ) {
    startPoint.displayPoint(startPoint);
    return Point(fX, fY, fZ);
  }

  void displayPoint(Point pointForPrint) {
    print(
        "x: ${pointForPrint._x} y: ${pointForPrint._y} z: ${pointForPrint._z}");
  }

  double distanceTo(Point another) {
    int posX2 = another._x;
    int posY2 = another._y;
    int posZ2 = another._z;
    double distanceToPoint =
        sqrt(pow(posX2 - _x, 2) + pow(posY2 - _y, 2) + pow(posZ2 - _z, 2) * 1);
    return distanceToPoint;
  }

  double squareCalc(Point firstPoint, Point secondPoint, Point thirdPoint) {
    double segmentA = firstPoint.distanceTo(secondPoint);
    double segmentB = secondPoint.distanceTo(thirdPoint);
    double segmentC = thirdPoint.distanceTo(firstPoint);
    double perimeter = (segmentA * segmentB * segmentC) / 2;
    double squareByPoints = sqrt(perimeter *
        (perimeter - segmentA) *
        (perimeter - segmentB) *
        (perimeter - segmentC));
    return squareByPoints;
  }

  void displayDistance(argument) {
    print(
        "Расстояние между точками: ${distanceTo(argument).toStringAsFixed(3)}");
  }

  void displaySquare(pointOne, pointTwo, pointThree) {
    print(
        "Площадь треугольника: ${squareCalc(pointOne, pointTwo, pointThree).toStringAsFixed(3)}");
  }
}

// TODO: exeption
