import 'dart:math';

/// Задача 1: разложение числа на простые множители
class PrimeFactors {
  late int _digit;

  PrimeFactors(int num1) {
    _digit = num1;
  }

  List<int> calcPF() {
    int pf1 = _digit;
    double sqrtdigit = sqrt(_digit);
    int divider = 3;
    List<int> lpf = [];
    if (_digit > 1) {
      while (pf1 % 2 == 0) {
        lpf.add(2);
        pf1 ~/= 2;
      }
      while (pf1 >= divider && divider <= sqrtdigit) {
        if (pf1 % divider == 0) {
          lpf.add(divider);
          pf1 ~/= divider;
        } else {
          divider += 2;
        }
      }
      if (pf1 > 1) {
        lpf.add(pf1);
      }
      return lpf;
    } else {
      throw Exception("Используйте число больше 1");
    }
  }

  void displayPF() {
    print("Простые множители числа $_digit: ${calcPF()}");
  }
}
