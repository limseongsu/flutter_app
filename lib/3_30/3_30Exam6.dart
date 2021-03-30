import 'dart:math';

// void main(){
//
//   Exam exam = Exam();
//   print(exam.solution(20, 10));
//
// }
//
// class Exam {
//
//   int solution(int a, int b){
//     int result;
//     for (int a = 0; a > b; a){
//     if (a > b) {
//      return result = a;
//     }
//     else if (a == b) {
//       print('eq');
//     }
//     return result;
//   }
//  }
// }

void main() {
  Exam exam = Exam();
  print(exam.solution(30, 30));
}
class Exam {
  String solution(int a, int b) {
    String result = 'eq';
    if (a != b) {
      result = max(a, b).toString();
    }
    return result;
  }
}