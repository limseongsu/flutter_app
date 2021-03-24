
import 'dart:io';

void main() {
  Exam()
}

  void Exam() {
    List<int> numbers = [3, 4, 9];
    print('숫자1개를 입력해주세요');
    String num = stdin.readLineSync();

    int input = int.parse(num);
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] == input) {
        print('정답 !');
      } else {
        print(

            '실패 !');
        break;
      }
    }
  }



