/// Задача 3: Найти числа в сроке и вернуть коллекцию num
class FindNumInStr {
  late String _givenStr;

  FindNumInStr(String str) {
    _givenStr = str;
  }

  List<num> methodFindNumInStr() {
    List<num> numbers = [];
    List<String> listStr = _givenStr.split(" ");
    listStr.forEach((i) {
      if (num.tryParse(i) != null) {
        numbers.add(num.parse(i));
      }
    });
    return numbers;
  }

  void displayNumInStr() {
    List<num> resFindNum = methodFindNumInStr();
    if (resFindNum.length >= 1) {
      print("В строке \"$_givenStr\" есть следующие num: $resFindNum");
    } else {
      print("В строке \"$_givenStr\" нет num.");
    }
  }
}
