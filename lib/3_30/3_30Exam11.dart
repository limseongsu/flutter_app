


void main() {

  Exam exam = Exam();
  print(exam.solution(-10));
  print(exam.solution(10));
}

class Exam{

  int solution(int a) {
    int result = 0;
    if (a < 0){
      result = a * -1;
    } else if (a > 0) {
      result = a;
    }
    return result;
  }
}



// class Exam {
//   int solution(int number) {
//     int answer = 0;
//     for (int i = 0; i < 10; i ++)
//       if (number < 0) {
//         answer = number * -1;
//       } else if (number > 0){
//         answer = number;
//       }
//     return answer;
//   }
// }
// abs();  를 사용하면 절대값으로 치환