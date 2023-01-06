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
  Point thirdPoint = Point(3, 1, 2);
  Point.zeroPoint();
  firstPoint.displayDistance(secondPoint);
  firstPoint.displaySquare(secondPoint, thirdPoint);
  firstPoint.displayPoint(Point.zeroPoint());

  print("Задача 7");
  num digit = 625;
  int degree = 4;
  num result = digit.rootInNumber(degree);
  print(
      "Корень числа $digit в степени $degree равен: ${result.toStringAsFixed(3)}");

  print("Задача 8");
  UserManager userManager = UserManager();
  userManager.addUser(User("abc@cloun.ru"));
  userManager.addUser(AdminUser("xyz@black.ru"));
  userManager.addUser(GeneralUser("xyz@slim.org"));
  userManager.displayUserBase();
  userManager.deleteUser(AdminUser("xyz@black.ru"));
  userManager.displayUserBase();

  print("Задача 9");

  print("Задача 10");
}
