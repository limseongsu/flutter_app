void main() {
  // Sort
  List<int> numbers = [3, 5, 1, 2, 6, 9, 8];

  // 리턴을 안 한다. : 객체 자체가 변경될 것이다
  numbers.sort(); // 오름차순으로 정렬
  print(numbers);

  // 리턴을 하고 있다 : 객체의 상태가 불편
  // 반복되는 타입 => Iterable
  List<int> reveredNumbers = numbers.reversed.toList();
  print(reveredNumbers);

  // 문자열 잘라내기
  String str = 'abcdefg';
  print(str == 'abc'); // true
  print(str.substring(1)); // bc
  print(str.substring(1, 2)); // end - start : 갯수 b
  print(str.substring(2, 6)); // cdef

  print(str + 'hijk');
  print('${str}hijk');

  String str2 = 'abcd';
  print(str2.isEmpty);
  print(str2.length == 0);

  print(str.contains('de')); // 포함
  print(str.toLowerCase()); // 소문자로
  print(str.toUpperCase()); // 대문자로

  print(str); // 소? 대?

  String temp = str2.replaceAll('a', 'A');

  print(str2.replaceAll('a', 'A')); // Abcd
  print(str2.replaceAll('ab', 'ZZ')); // ZZcd

  print(str2.startsWith('ab')); // 앞에 ab로 시작하면 true
  print(str2.startsWith('bb')); // 앞에 bb로 시작하면 false

  print(str2.endsWith('d')); // 끝에 d로 끝나면 true

  print(str2.indexOf('c')); // 2 : 몇 번째 인덱스인지
  print('   abcd    '.trim()); // 좌우 공백 제거

  Word clock = Word('clock');
  print(clock.toPlural()); // clocks

  Word tax = Word('tax');
  print(tax.toPlural()); // taxes

  Word bench = Word('bench');
  print(bench.toPlural()); // benches

  Word tomato = Word('tomato');
  print(tomato.toPlural()); // tomatoes

  Word baby = Word('baby');
  print(baby.toPlural()); // babies

  Word leaf = Word('leaf');
  print(leaf.toPlural()); // leaves

  Word live = Word('live');
  print(live.toPlural()); // lives


}

class Word {
  String letters;

  Word(this.letters);

  // i번째 글자가 모음이면 true  // a, i, u, e, o
  bool isVowel(int i) =>
  'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());

  // 자음
  bool isConsonant(int i) => !isVowel(i);

  // 복수형으로 변환
  String toPlural() {
    // s, x, ch, sh : -es
    if (letters.endsWith('s') ||
        letters.endsWith('x') ||
        letters.endsWith('ch') ||
        letters.endsWith('sh') ||
        letters.endsWith('o')) {
      return '${letters}es';
    } else if (letters.endsWith('f')) {
      // f -> ves
      return '${letters.substring(0, letters.length - 1)}ves';
    } else if (letters.endsWith('fe')) {
      // fe -> ves
      return '${letters.substring(0, letters.length - 2)}ves';
    } else if (isConsonant(letters.length - 2) && letters.endsWith('y')) {
      // 자음 + y : y -> ies
      return '${letters.substring(0, letters.length - 1)}ies';
    }

    return '${letters}s';
  }
}


