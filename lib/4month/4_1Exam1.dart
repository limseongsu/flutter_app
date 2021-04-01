import 'dart:io';
void main() {
  List<int> inputs = [];
  for (int i = 0; i < 5; i++) {
    int input = int.parse(stdin.readLineSync());
    inputs.add(input);
  }
  inputs.sort();
  print(inputs[4]);
  print(inputs[0]);
}


// void main() {
//   // 입력 1 ~ 99
//   int max = 1;
//   int min = 99;
//   for (int i = 0; i < 5; i++) {
//     int input = int.parse(stdin.readLineSync());
//     if (input > max) {
//       max = input;
//     } else if (input < min) {
//       min = input;
//     }
//   }
//   print(max);
//   print(min);
// }


// import 'dart:io';
// import 'dart:math' as math;
// void main() {
//   // 입력 1 ~ 99
//   Exam exam = Exam();
//   for (int i = 0; i < 5; i++) {
//     int input = int.parse(stdin.readLineSync());
//     exam.numbers.add(input);
//   }
//   print(exam.max());
//   print(exam.min());
// }
// class Exam {
//   List<int> numbers = [];
//   int max() {
//     int result = 0;
//     for (int i = 0; i < numbers.length; i++) {
//       // if (result < numbers[i]) {
//       //   result = numbers[i];
//       // }
//       result = math.max(result, numbers[i]);
//     }
//     return result;
//   }
//   int min() {
//     int result = 99;
//     for (int i = 0; i < numbers.length; i++) {
//       // if (result > numbers[i]) {
//       //   result = numbers[i];
//       // }
//       result = math.min(result, numbers[i]);
//     }
//     return result;
//   }
// }