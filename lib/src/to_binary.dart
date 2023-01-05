/// Задача 2: преобразование целых чисел -
/// из десятичной системы в двоичную
class ConvertToBinary {
  late int _decimal;

  ConvertToBinary(int num1) {
    _decimal = num1;
  }

  String methodToBinary() {
    String radix = _decimal.toRadixString(2);
    return radix;
  }

  void displayToBinary() {
    print("$_decimal в двоичной системе: ${methodToBinary()}");
  }
}
// TODO: exeption
