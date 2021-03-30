//다음과 같이 A~Z 까지 알파벳 대문자 중에서 한 문자 s를 입력받습니다.
//ABCDEFGHIJKLMNOPQRSTUVWXYZ
//
//A를 1번째로 하면 C는 3번째입니다.
//입력받은 문자가 몇 번째 문자인지 출력하시오
//
//입력
//출력
//
//C
//3
//
//X
//24
import 'dart:math';
import 'dart:io';


void main() {

  Exam exam = Exam();
  print(exam.solution('S'));
}

class Exam {
  int solution(String s) {
    int result = 0;
    List<String> list = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V,',
      'W',
      'X',
      'Y',
      'Z'
    ];
    for (int i = 0; i < s.length; i++) {

     if (list[i] == s) {
        result = i + 1;
      }
      return result;
    }
  }

