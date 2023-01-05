import 'package:dart_basics/dart_basics.dart';

void main() {
  print("Задача 1");
  final nodAndNok = NodAndNok(8, 36);
  nodAndNok.displayNod();
  nodAndNok.displayNok();
  final primeFactors = PrimeFactors(2023);
  primeFactors.displayPF();

  print("Задача 2");
  final convertToBinary = ConvertToBinary(321);
  convertToBinary.displayToBinary();
  final convertToDecimal = ConvertToDecimal(convertToBinary.methodToBinary());
  convertToDecimal.displayToDecimal();

  print("Задача 3");
  final findNum = FindNumInStr("Сергей 23 0,75 321,2 0xFF 0.2312 pffs 2a");
  findNum.displayNumInStr();

  print("Задача 4");
  List<String> someCollection = [
    "one",
    "dark",
    "zero",
    "one",
    "tree",
    "two",
    "select",
    "one",
    "two",
    "dog",
    "five",
    "three",
    "seven",
    "four",
    "nine",
    "one",
    "three",
    "cat",
    "dog",
  ];
  final wordInCollection = WordInCollection(someCollection);
  wordInCollection.displayMapCollection();

  print("Задача 5");
  final numbersInCollection = NumbersInCollection(someCollection);
  numbersInCollection.displayNumbrs();

  print("Задача 6");
  Point firstPoint = Point(2, 5, -2);
  Point secondPoint = Point(1, 0, 6);
  Point thirdPoint = Point.factoryPoint(3, 1, 2);
  firstPoint.displayDistance(secondPoint);
  Point.basePoint.displaySquare(firstPoint, secondPoint, thirdPoint);
  firstPoint.displayPoint(Point.basePoint);

  print("Задача 7");

  print("Задача 8");

  print("Задача 9");

  print("Задача 10");
}
