/// Задача 2: преобразование целых чисел -
/// из двоичной системы в десятичную
class ConvertToDecimal {
  late String _binary;

  ConvertToDecimal(String bin1) {
    _binary = bin1;
  }

  int methodToDecimal() {
    int decimal = int.parse(_binary, radix: 2);
    return decimal;
  }

  void displayToDecimal() {
    print("$_binary в десятичной системе: ${methodToDecimal()}");
  }
}
// TODO: exeption

