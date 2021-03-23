import 'dart:math';

void main() {
  print('주사위 : ${dice2(start :5, end: 7)}');
  print('주사위 : ${dice2(start: 5)}');
}

// 정수 num 하나를 받아서 정수 1 ~ num 까지를 반환한다.
int dice(int num) {
  // 1~10 주사위
  var random = Random();
  return Random().nextInt(num) + 1; //print(random.nextInt(6) + 1);를 삭제해줌

  //int dice(int num) => Random().nextInt(nom) + 1; 이랑 같다.
  // 함수의 내용이 한 줄일 경우에는 다음과 같이 줄여서 쓸 수 있다. (람다식 lambda expression)
  // num : 파라미터, parameter, 매개변수
}

//int dice(int nim) {         위에랑 같은 코드이다.
//return Random().nextInt(num) + 1;
//}

int dice2({int start, int end}) {
// && = 그리고, || = 또는
// 매개변수를 {}로 감싸면 선택적으로 매개변수를 선택할 수 있게 된다. (선택적 파라미터)
var random = Random();
if (start != null && end == null) {
  end = 6;
} else if (start == null && end != null) {
  start = 0;
}
return Random().nextInt(end - start + 1) + start;
}