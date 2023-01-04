import 'package:dart_basics/dart_basics.dart';

void main() {
  // Задача 1
  final nodAndNok = NodAndNok(8, 36);
  nodAndNok.displayNod();
  nodAndNok.displayNok();
  final primeFactors = PrimeFactors(2023);
  primeFactors.displayPF();

  // Задача 2
  final convertToBinary = ConvertToBinary(321);
  convertToBinary.displayToBinary();
  final convertToDecimal = ConvertToDecimal(convertToBinary.methodToBinary());
  convertToDecimal.displayToDecimal();

  // Задача 3
  final findNum = FindNumInStr("Сергей 23 0,75 321,2 0xFF 0.2312 pffs 2a");
  findNum.displayNumInStr();
}
