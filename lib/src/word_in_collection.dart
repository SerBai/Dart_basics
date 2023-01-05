/// Задача 4: Определение количества вхождений слова в коллекцию
class WordInCollection {
  late List _collection;

  WordInCollection(List<String> listCollection) {
    _collection = listCollection;
  }

  Map<String, int> createMapCollection() {
    Map<String, int> wordCollection = {};
    _collection.forEach((i) {
      if (wordCollection.containsKey(i)) {
        wordCollection.update(i, (value) => value + 1);
      } else {
        wordCollection[i] = 1;
      }
    });
    return wordCollection;
  }

  String presentCollection() {
    String resCollection = "В коллекции: ";
    for (var item in createMapCollection().entries) {
      resCollection += "${item.key}: ${item.value}, ";
    }
    return resCollection;
  }

  void displayMapCollection() {
    print(presentCollection());
  }
}
// TODO: exeption

