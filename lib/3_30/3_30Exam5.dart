import 'package:flutter_app/3_30/3_30.dart';

// void main() {
//   Exam exam = Exam();
//   print(exam.solution(1, 2));
// }
//
// class Exam {
//   int solution(int a, int b){
//   int result = 0;
//
//   if (a == b) {
//     result = a;
//   }
//   else if (a != b) {
//     print('No');
//   }
//       return result;
//   }
//   }

void main() {
  Exam exam = Exam();
  print(exam.solution(4444));
  print(exam.solution(3353));
  // print(exam.solution(49000));
  // print(exam.solution(00000));
}
class Exam {
  String solution(int n) {
    String result = n.toString(); // 4444
    // 0 ~ 3
    for (int i = 0; i < result.length - 1; i++) {
      if (result[i] != result[i + 1]) {
        result = 'No';
        break;
      }
    }
    return result;
  }
}




