/// Задача 4: Определение количества вхождений слова в коллекцию
class NumbersInCollection {
  late List<String> _collection;

  NumbersInCollection(List<String> listCollection) {
    _collection = listCollection;
  }

  Set<int> createSetNumbers() {
    Set<int> numberCollection = {};
    Map<String, int> numbers = {
      "zero": 0,
      "one": 1,
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9
    };
    for (var element in _collection) {
      if (numbers.containsKey(element)) {
        int isNumbers = numbers[element]!;
        numberCollection.add(isNumbers);
      }
    }

    return numberCollection;
  }

  void displayNumbrs() {
    if (_collection.length > 0) {
      print("В коллекции есть цифры: ${createSetNumbers()}");
    } else {
      print("В коллекции нет цифр.");
    }
  }
}
