import 'dart:math'; // import 문 : 수학관련된 패키지를 사용 선언

// main 메서드 또는 함수라고 부름
void main() {
  // 잘못된 이름

  int a = 10;
  int b = 20;

  // 잘 된 이름 (camel case(낙타형)
  int myAge = 10; //나이
  int brotherAge = 20; //  형 나이

  // nake case (뱀형)
  int my_age = 10;
  int brother_age = 20; // 형 나이

  // 어
  // 숫자 (int-정수,double-소숫점)
  // int d = 5.5;
// [문자열]
  String name = '홍길동';
  var name2 = '한석봉';

// [진위 (참, 거짓)]
  bool isMarried = true; //결혼했다
  isMarried = false; //결혼 안 했다

  // 숫자 목록
  List<int> ageList = [10, 20, 30];
  var ageList2 = [10, 20, 30];
  // 문자열 목록
  List<String> nameList = ['홍길동', '한석봉'];
  var nameList2 = ['홍길동', '한석봉'];

// null (값이 없다)
//   int g; //null
//   int g = 10; //null 이 아니고 10

  String name3 = ''; //아무것도 없는 0개의 문자
  String name4; // null

  final double tax = 1.1; //세금   // final을 붙히면 변경을 불가하게됨 = 상수
  int fax = 5; //팩스 가격 (5.5)
  print('5만원짜리를 4만원으로 할인합니다.');
  fax = 4;
  print('팩스의 새로운 가격은(세금포함) ${fax * tax}만원!');
  //4.4

  // main을 분리하여 사용할 수 있다.

  //https://yujin-dev.tistory.com/53



  var names = [
    '한석봉',
    '심사임당',
    '이순신',
  ];

  //반복문 for 문 : 목록이 있으면
  for (var name in names) {
    print('내 이름은 $name입니다');
  }

  // 1~12까지 출력
  // ++ : 1증가
  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  // 100번 실행
  for (int i = 0; i < 100; i++) {
    print('내 이름은 오준석');
  }

  //조건문
  int y = 6;
  // == : 같은지 비교
  // >, <, >=, <=
  if (y > 5) {
    print('5보다 크다');
  } else if (y > 3) {
    print('3보다 크다');
  } else {
    print('3보다 작다');
  }
  // shift + F6를 누르면 같은글자 ex)a가 6개있으면(같은 void안) 다 같이 편집이
  // 가능하게 바뀐다.
  dice();
}

// 주사위
void dice() {
 // 1~6
  var random = new Random();
  print(random.nextInt(6) + 1);
  // 랜덤한 숫자를 사용할 때 int randomNumber = random.nextInt(100); // from 0 up to 99 included
  //                       int randomNumber = random.nextInt(90) + 10; // from 10 up to 99 included
  //new OOO(); : OOO();를 사용하는 코드 앞에 new 를 붙여야하지만, dart 에서 생략이 가능하다.
}