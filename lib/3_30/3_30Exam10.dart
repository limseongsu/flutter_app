void main() {
  Exam exam = Exam();
  print(exam.solution('C'));
  print(exam.solution('X'));
}

class Exam {
  int solution(String eng) {
    int answer = 0;
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
      if (eng == list[i]) {
        answer = i + 1;
      }

    }
    return answer;
  }
}
