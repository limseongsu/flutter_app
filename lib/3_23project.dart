import 'dart:math';
import 'dart:io';
// main <- 메인 함수
void main() {
  q1();
  q2();
  q3();
  q4();
}
  //q1,2,3,4 <- 함수
void q1() {
  int weight = 60;
  int age1 = 20;
  int age2 = 30;
  int age;

  if (weight == 60) {
    print('weight는 60입니다.');
  }

  if ((age1 + age2) * 2 > 60) {
    print('age1 과 age2 의 합계를 2배 한 것이 60을 넘는다.');
  }
  if (age % 2 != 0) { //(age.isOdd)=홀수, (age.isEven)=짝수
    print('age는 홀수이다.');

  }

  var name = true;
  if (name == "스마트") {
    print('name 에 저장된 문자열이 “스마트"와 같다');
  }
}
//int weight = 50; // 정수 weight를 50으로 선언
// int age1 = 1; // 정수 age1을 1로 선언
// int age2 = 4; // 정수 age2를 4로 선언
// int age = 1; // 정수 age를 1로 선언
// String name = '서마트'; // 문자열 name을 서마트로 선언
// if (weight == 60) // weight가 60과 같은가
// if ((age1 + age2) * 2 > 60) // age1과 age2의 합의 2배가 60보다 큰가
// if (age % 2 != 0); // age가 홀수있가
// if (name == '스마트'); // name이 스마트 인가?

void q2() {
  int age = 1;

  print('cost = 300 * if에 사용할 수 없다.');

  print('3이라는 정수는 if에 사용할 수 없다.');

  if (age != 30) {
    print('age != 30은 사용할 수 있다.');
  }
  print('ture는 if에 사용할 수 없다.');

  int b = 16;

  if (b + 5 < 20) {
    print('b + 5 < 20은 사용할 수 있다.');
  }
  var gender = true;

  if (gender = true) {
    print('geder = ture는 사용할 수 있다.');
  }
}

void q3() {
  int gender = 1;
  int age = 3;
  print('"안녕하세요"');

  Object o;

  if (gender == 0) {
    print('"나는 남자입니다."');
  } else {
    print('"나는 여자입니다."');
  }
  if (gender == 0) {
    print('나는 $age살입니다.');
  }
  print('"잘부탁드립니다."');
}

void q4() {
  print('[메뉴] 1: 검색, 2: 등록, 3: 삭제, 4: 변경');
  String selected = stdin.readLineSync();
  if (selected == '1') {
    print('"검색합니다"');
  } else if (selected == '2') {
    print('"등록합니다"');
  } else if (selected == '3') {
    print('"삭제합니다"');
  } else if (selected == '4') {
    print('"변경합니다"');
  }
}
//(age.isOdd) =홀수
//(age.iseven)= 홀수

  void dice() {
    // 1~6
    var random = new Random();
    print(random.nextInt(6) + 1);
}
