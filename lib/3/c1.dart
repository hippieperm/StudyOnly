// ignore_for_file: avoid_print

typedef WordDefinition = Map<String, String>;

class Dictionary {
  final WordDefinition _words = {};

  void add(String term, String definition) {
    _words[term] = definition;
  }

  String? get(String term) {
    return _words[term];
  }

  void delete(String term) {
    _words.remove(term);
  }

  void update(String term, String definition) {
    if (_words.containsKey(term)) {
      _words[term] = definition;
    } else {
      print("입력한 '$term' 단어가 존재하지 않습니다.");
    }
  }

  void showAll() {
    _words.forEach((term, definition) {
      print("$term: $definition");
    });
  }

  int count() {
    return _words.length;
  }

  void upsert(String term, String definition) {
    _words[term] = definition;
  }

  bool exists(String term) {
    return _words.containsKey(term);
  }

  void bulkAdd(List<Map<String, String>> words) {
    for (var word in words) {
      _words[word['term']!] = word['definition']!;
    }
  }

  void bulkDelete(List<String> terms) {
    for (var term in terms) {
      _words.remove(term);
    }
  }
}

void main() {
  var dictionary = Dictionary();

  dictionary.add('사과', '과일');
  dictionary.add('바나나', '얘도 과일');

  print(dictionary.get('사과'));
  print('\n');

  dictionary.delete('바나나');

  dictionary.update('사과', '과일이다');

  dictionary.showAll();
  print('\n');

  print(dictionary.count());
  print('\n');
  print(dictionary.exists('김치'));
  print(dictionary.exists('바나나'));
  print('\n');

  dictionary.upsert('바나나', '노란색 과일!');
  dictionary.showAll();
  print('\n');

  dictionary.bulkAdd([
    {'term': '김치', 'definition': '한국음식'},
    {'term': '아파트', 'definition': '주거 공간'}
  ]);
  dictionary.showAll();
  print('\n');

  dictionary.bulkDelete(['사과', '김치']);
  dictionary.showAll();
}
