import 'dart:io';

void main() {
//  Exam();
 Exam2();
}

void Exam() {
  List<int> numbers = [3, 4, 9];
  print('숫자1개를 입력해주세요');
  stdout.write('Enter the number: ');
  String num = stdin.readLineSync();

  int input = int.parse(num);
  for (int i = 0; i < numbers.length; i++) {
    if (input == numbers[i]) {
      print('정답 !');
      break;
    } else if (input != numbers[i]) {
      print('실패 !');
      break;
    // input i check[i] 세개를 사용
    }
  }
}

void Exam2() {
  List<int> numbers = [3, 4, 9];
  print('숫자1개를 입력해주세요');
  stdout.write('Enter the number: ');
  String num = stdin.readLineSync();

  int input = int.parse(num);
  for (int i = 0; i < numbers.length; i++) {
    if (input == numbers[i]) {
      print('정답 !');
      break;
      }
    }
  }

// List<int> numbers = [3, 4, 9];
//
// bool asd = numbers.contains(input);
//
// if (asd == true) {
// print('정답');
// } else {
// print('오답!);
// }
//   //////////////////////
// if (조건) {
// //참
// } else {
//   //거짓
// }
// 조건 ? //참 : // 거짓
// // 3항 연산
//   print(numbers.contains(input) ? '정답' : '오답');