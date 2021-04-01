import 'dart:io';

void main() {
  Exam exam = Exam();
  List<String> input = stdin.readLineSync().split(' ');
  print(exam.solution(input));
}

class Exam {
  String solution(List<String> input) {
    String result = '';
    result = '${input[0][0]}.${input[1][0]}';
    return result;
  }
}
