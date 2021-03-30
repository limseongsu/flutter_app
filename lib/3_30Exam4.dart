import 'package:flutter_app/3_30/3_30.dart';

void main() {
  Exam exam = Exam();
 print(exam.solution(1));

}

class Exam{
  int solution(int i) {
    int result = 0;
    result = 7 - i;
    return result;
  }
}
