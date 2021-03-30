import 'dart:math';

void main() {
  Exam exam = Exam();
  print(exam.solution(5, 3));
}

class Exam {
  String solution(int m, int n) {
    String result = m.toString();

    int a = m;

    for (int i = 0; i < 10; i++) {
      a += n;

      result += '$a';
    }
    return result;
  }
}
