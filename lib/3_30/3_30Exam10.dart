void main() {

  Exam exam = Exam();
  print(exam.solution('S'));
  print(exam.solution('W'));
}

class Exam {
  int solution(String s) {
    int result = 0;
    List<String> list = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z'
    ];
    for (int i = 0; i < list.length; i++) {
      if (s == list[i]) {
        result = i + 1;
      }
    }
    return result;
  }
}
// class Exam {
//   int solution(String alphabet) {
//     return 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.indexOf(alphabet) + 1;
//   }
// }
