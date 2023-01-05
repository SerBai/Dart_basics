/// Задача 1: вычисление НОД и НОК целых чисел, определение множителей числа
class NodAndNok {
  late int _first;
  late int _second;

  NodAndNok(int num1, int num2) {
    _first = num1;
    _second = num2;
  }

  int calcNod() {
    int d1 = _first;
    int d2 = _second;
    if (_first > 0 && _second > 0) {
      while (d1 != 0 && d2 != 0) {
        (d1 >= d2) ? d1 %= d2 : d2 %= d1;
      }
      return (d1 > d2) ? d1 : d2;
    } else {
      throw Exception("Используйте натуральные числа");
    }
  }

  int calcNok() {
    return _first * _second ~/ calcNod();
  }

  void displayNod() {
    print("НОД чисел $_first и $_second равен: ${calcNod()}");
  }

  void displayNok() {
    print("НОК чисел $_first и $_second равен:${calcNok()}");
  }
}
