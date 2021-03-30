import 'dart:math';

void main() {
  List<String> input = ['Alice', 'Bob', 'Carol', 'Dave', 'Ellen'];
  Exam exam = Exam();
  print(exam.solution(input));
}

class Exam {
  String solution(List<String> list) {
    String result = 'Hello';

    for (int i = 0; i < list.length; i++) {
      if (i < list.length - 1) {
        result += list[i] + ',';
      } else {
        result += list[i] + '.';
      }
    }
    return result;
  }
}
