import 'package:flutter_app/3_30/3_30.dart';

void main() {
  Exam exam = Exam();
  print(exam.solution(1, 2));
}

class Exam {
  int solution(int a, int b){
  int result = 0;

  if (a == b) {
    result = a;
  }
  else if (a != b) {
    print('No');
  }
      return result;
  }
  }






