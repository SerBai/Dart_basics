import 'dart:math';

/// Задача 6: класс Point описывает точку в трёхмерном пространстве.

/// метод distanceTo(Point another), который возвращает расстояние
/// от данной точки до точки в параметре.

/// метод, принимающий три точки в трёхмерном пространстве
/// и возвращающий площадь треугольника

/// factory-конструкторы: возвращающие начало координат,
/// и конструктор, возвращающий точку с координатами [1,1,1],

class Point {
  int _x;
  int _y;
  int _z;

  Point(int posX, int posY, int posZ)
      : _x = posX,
        _y = posY,
        _z = posZ;

  factory Point.zeroPoint() {
    return Point(0, 0, 0);
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

  double squareCalc(Point secondPoint, Point thirdPoint) {
    double segmentA = this.distanceTo(secondPoint);
    double segmentB = secondPoint.distanceTo(thirdPoint);
    double segmentC = thirdPoint.distanceTo(this);
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

  void displaySquare(pointTwo, pointThree) {
    print(
        "Площадь треугольника: ${squareCalc(pointTwo, pointThree).toStringAsFixed(3)}");
  }
}
